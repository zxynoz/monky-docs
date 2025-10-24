@echo off
echo ========================================
echo   M.O.N.K.Y Documentation Deployment
echo ========================================
echo.

REM Check if npm is installed
npm --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: npm is not installed or not in PATH
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

echo Step 1: Installing Mintlify CLI...
npm install -g mintlify

echo.
echo Step 2: Testing documentation locally...
echo Opening documentation at http://localhost:3000
echo Press Ctrl+C to stop the local server when you're ready to deploy
echo.
pause
mintlify dev

echo.
echo Step 3: Ready for deployment!
echo.
echo To deploy your documentation:
echo 1. Create a GitHub repository for your docs
echo 2. Push this docs folder to GitHub:
echo    git init
echo    git add .
echo    git commit -m "M.O.N.K.Y documentation"
echo    git remote add origin [YOUR-REPO-URL]
echo    git push -u origin main
echo.
echo 3. Go to mintlify.com and connect your repository
echo.
echo Your docs will be live at: [your-org].mintlify.app
echo.
pause