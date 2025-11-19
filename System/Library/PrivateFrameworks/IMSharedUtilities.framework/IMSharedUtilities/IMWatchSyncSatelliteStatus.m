@interface IMWatchSyncSatelliteStatus
+ (void)synchronizeSatelliteStatus:(BOOL)a3;
@end

@implementation IMWatchSyncSatelliteStatus

+ (void)synchronizeSatelliteStatus:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1AC570AA0](@"NPSManager", @"NanoPreferencesSync");
  if (v4)
  {
    v5 = objc_alloc_init(v4);
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    CFPreferencesSetAppValue(@"SatelliteStatusActive", v6, @"com.apple.MobileSMS");
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"NO";
        if (v3)
        {
          v8 = @"YES";
        }

        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Setting Satellite Active Status Nano Preference to: %@", &v11, 0xCu);
      }
    }

    CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v9 = [MEMORY[0x1E695DFD8] setWithObject:@"SatelliteStatusActive"];
    [v5 synchronizeUserDefaultsDomain:@"com.apple.MobileSMS" keys:v9];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Could not weak link ____NPSManagerClass in synchronizeSatelliteStatus", &v11, 2u);
    }
  }
}

@end