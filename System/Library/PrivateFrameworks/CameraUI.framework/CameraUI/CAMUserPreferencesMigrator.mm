@interface CAMUserPreferencesMigrator
+ (int64_t)_captureModeForLegacyCameraMode:(int64_t)mode;
+ (int64_t)_flashModeForLegacyFlashMode:(int64_t)mode;
+ (void)migrateLegacyPreferences;
@end

@implementation CAMUserPreferencesMigrator

+ (void)migrateLegacyPreferences
{
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  v3 = CFPreferencesCopyAppValue(@"CameraConfiguration", @"com.apple.mobileslideshow");
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"HDRKeepOriginalPhoto", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    [standardUserDefaults setBool:AppBooleanValue != 0 forKey:@"CAMUserPreferenceHDREV0"];
  }

  v19 = 0;
  v6 = CFPreferencesGetAppBooleanValue(@"CAMUse60FPSVideo", @"com.apple.mobileslideshow", &v19);
  if (v19)
  {
    [standardUserDefaults setInteger:v6 != 0 forKey:*MEMORY[0x1E69C0630]];
  }

  v7 = [v3 objectForKeyedSubscript:@"EnableGridLines"];
  v8 = v7;
  if (v7)
  {
    [standardUserDefaults setBool:objc_msgSend(v7 forKey:{"BOOLValue"), @"CAMUserPreferenceShowGridOverlay"}];
  }

  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69DE8F8]];
  v10 = v9;
  if (v9)
  {
    [standardUserDefaults setInteger:objc_msgSend(self forKey:{"_flashModeForLegacyFlashMode:", objc_msgSend(v9, "integerValue")), @"CAMUserPreferenceDesiredFlashMode"}];
  }

  v11 = [v3 objectForKeyedSubscript:@"VideoFlashMode"];
  v12 = v11;
  if (v11)
  {
    [standardUserDefaults setInteger:objc_msgSend(self forKey:{"_flashModeForLegacyFlashMode:", objc_msgSend(v11, "integerValue")), @"CAMUserPreferenceTorchMode"}];
  }

  v13 = [v3 objectForKeyedSubscript:@"HDRMode"];
  v14 = v13;
  if (v13)
  {
    [standardUserDefaults setInteger:objc_msgSend(self forKey:{"_HDRModeForLegacyHDRMode:", objc_msgSend(v13, "integerValue")), @"CAMUserPreferenceDesiredHDRMode"}];
  }

  v15 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69DE8E8]];
  v16 = v15;
  if (v15)
  {
    [standardUserDefaults setInteger:objc_msgSend(self forKey:{"_captureModeForLegacyCameraMode:", objc_msgSend(v15, "integerValue")), @"CAMUserPreferenceCaptureMode"}];
  }

  v17 = [v3 objectForKeyedSubscript:@"PreviewZoomMode"];
  v18 = v17;
  if (v17)
  {
    [standardUserDefaults setInteger:objc_msgSend(self forKey:{"_previewViewAspectModeForLegacyAspectMode:", objc_msgSend(v17, "integerValue")), @"CAMUserPreferencePreviewViewAspectMode"}];
  }

  [standardUserDefaults setBool:1 forKey:@"CAMUserPreferenceDidMigrate"];
  [standardUserDefaults synchronize];
}

+ (int64_t)_flashModeForLegacyFlashMode:(int64_t)mode
{
  if (mode)
  {
    return mode == 1;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)_captureModeForLegacyCameraMode:(int64_t)mode
{
  if ((mode - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1A3A6A558[mode - 1];
  }
}

@end