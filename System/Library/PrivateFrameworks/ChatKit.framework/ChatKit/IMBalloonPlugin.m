@interface IMBalloonPlugin
@end

@implementation IMBalloonPlugin

void __72__IMBalloonPlugin_ImageLoading____ck_placeholderImageForInterfaceStyle___block_invoke()
{
  v0 = [MEMORY[0x1E69DCAB8] placeholderExtensionIcon];
  v1 = __ck_placeholderImageForInterfaceStyle__placeholderImage;
  __ck_placeholderImageForInterfaceStyle__placeholderImage = v0;
}

void __72__IMBalloonPlugin_ImageLoading____ck_iconServicesIconForInterfaceStyle___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  objc_copyWeak(&to, (a1 + 40));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 __ck_iconServicesDescriptor];

  if (v3)
  {
    v4 = *(a1 + 32);
    v7[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v4 prepareImagesForImageDescriptors:v5];
  }

  objc_destroyWeak(&to);
}

void __99__IMBalloonPlugin_ImageLoading____ckImageForInterfaceStyle_generateSynchronously_allowPlaceholder___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained __ck_generateIconForInterfaceStyle:*(a1 + 40) notify:1];
}

void __76__IMBalloonPlugin_ImageLoading____ck_prefetchBrowserImageForInterfaceStyle___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) identifier];
  v4 = [*v2 __ck_generateIconForInterfaceStyle:*(a1 + 48) notify:0];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      *buf = 138412546;
      v11 = v3;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Create icon image for app with identifier %@ interface style %ld", buf, 0x16u);
    }
  }

  if (!v4 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Failed to generate icon for app with identifier %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__IMBalloonPlugin_ImageLoading____ck_prefetchBrowserImageForInterfaceStyle___block_invoke_276;
  block[3] = &unk_1E72EBA18;
  v9 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__IMBalloonPlugin_ImageLoading____ck_prefetchBrowserImageForInterfaceStyle___block_invoke_276(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Finished prefetching browser icon for key - %@", &v6, 0xCu);
    }
  }

  v4 = +[CKBalloonPluginManager sharedInstance];
  v5 = [v4 prefetchIconKeys];
  [v5 removeObject:*(a1 + 32)];
}

void __50__IMBalloonPlugin_ImageLoading__appStoreBadgeIcon__block_invoke()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AppStoreIcon-%f", 0x4040000000000000];
  v1 = MEMORY[0x1E69DCAB8];
  v2 = CKFrameworkBundle();
  v3 = [v1 badgeIconForImageNamed:v0 inBundle:v2];

  v4 = appStoreBadgeIcon_sBehavior;
  appStoreBadgeIcon_sBehavior = v3;
}

void __49__IMBalloonPlugin_ImageLoading__recentsBadgeIcon__block_invoke()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RecentsIcon-%f", 0x4040000000000000];
  v1 = MEMORY[0x1E69DCAB8];
  v2 = CKFrameworkBundle();
  v3 = [v1 badgeIconForImageNamed:v0 inBundle:v2];

  v4 = recentsBadgeIcon_sBehavior;
  recentsBadgeIcon_sBehavior = v3;
}

@end