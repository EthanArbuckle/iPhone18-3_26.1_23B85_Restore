@interface CKApplicationState
+ (BOOL)isApplicationActive;
+ (BOOL)isBackground;
+ (BOOL)isViewControllerForegroundActive:(id)active;
+ (void)setMainWindowForegroundActive:(BOOL)active;
@end

@implementation CKApplicationState

+ (BOOL)isApplicationActive
{
  if ([self _isUIExtension])
  {
    v2 = _isForegroundActive;
  }

  else
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v2 = [mEMORY[0x1E69DC668] applicationState] == 0;
  }

  return v2 & 1;
}

+ (BOOL)isBackground
{
  if ([self _isUIExtension])
  {
    v2 = _isForegroundActive ^ 1;
  }

  else
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v2 = [mEMORY[0x1E69DC668] applicationState] == 2;
  }

  return v2 & 1;
}

+ (void)setMainWindowForegroundActive:(BOOL)active
{
  v10 = *MEMORY[0x1E69E9840];
  if (_isForegroundActive != active)
  {
    activeCopy = active;
    _isForegroundActive = active;
    if (!active && !CKIsRunningInMacCatalyst())
    {
      v4 = +[CKBalloonPluginManager sharedInstance];
      [v4 invalidateAllActivePlugins];

      v5 = +[CKBalloonPluginManager sharedInstance];
      [v5 forceKillRemoteExtensionsWithDelay:0];
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = @"NO";
        if (activeCopy)
        {
          v7 = @"YES";
        }

        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "isMainWindowForegroundActive: %@", &v8, 0xCu);
      }
    }
  }
}

+ (BOOL)isViewControllerForegroundActive:(id)active
{
  v20 = *MEMORY[0x1E69E9840];
  activeCopy = active;
  view = [activeCopy view];
  window = [view window];

  windowScene = [window windowScene];
  v7 = windowScene;
  if (windowScene)
  {
    v8 = [windowScene activationState] == 0;
  }

  else
  {
    v8 = 0;
  }

  traitCollection = [activeCopy traitCollection];
  activeAppearance = [traitCollection activeAppearance];

  v11 = activeAppearance == 1 && v8;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 134218496;
      v15 = v11;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = activeAppearance == 1;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "isForegroundActive: %ld - isActivationStateForegroundActive %ld, viewControllerHasActiveAppearance %ld", &v14, 0x20u);
    }
  }

  return v11;
}

@end