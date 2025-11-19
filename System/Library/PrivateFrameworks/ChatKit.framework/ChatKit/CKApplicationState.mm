@interface CKApplicationState
+ (BOOL)isApplicationActive;
+ (BOOL)isBackground;
+ (BOOL)isViewControllerForegroundActive:(id)a3;
+ (void)setMainWindowForegroundActive:(BOOL)a3;
@end

@implementation CKApplicationState

+ (BOOL)isApplicationActive
{
  if ([a1 _isUIExtension])
  {
    v2 = _isForegroundActive;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v2 = [v3 applicationState] == 0;
  }

  return v2 & 1;
}

+ (BOOL)isBackground
{
  if ([a1 _isUIExtension])
  {
    v2 = _isForegroundActive ^ 1;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v2 = [v3 applicationState] == 2;
  }

  return v2 & 1;
}

+ (void)setMainWindowForegroundActive:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (_isForegroundActive != a3)
  {
    v3 = a3;
    _isForegroundActive = a3;
    if (!a3 && !CKIsRunningInMacCatalyst())
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
        if (v3)
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

+ (BOOL)isViewControllerForegroundActive:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 view];
  v5 = [v4 window];

  v6 = [v5 windowScene];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 activationState] == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 traitCollection];
  v10 = [v9 activeAppearance];

  v11 = v10 == 1 && v8;
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
      v19 = v10 == 1;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "isForegroundActive: %ld - isActivationStateForegroundActive %ld, viewControllerHasActiveAppearance %ld", &v14, 0x20u);
    }
  }

  return v11;
}

@end