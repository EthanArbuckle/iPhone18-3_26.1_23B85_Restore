@interface MCSkipSetupKeysUtilities
+ (id)allSkipKeys;
@end

@implementation MCSkipSetupKeysUtilities

+ (id)allSkipKeys
{
  if (allSkipKeys_onceToken != -1)
  {
    +[MCSkipSetupKeysUtilities allSkipKeys];
  }

  v3 = allSkipKeys_allSkipKeys;

  return v3;
}

void __39__MCSkipSetupKeysUtilities_allSkipKeys__block_invoke()
{
  v3[43] = *MEMORY[0x1E69E9840];
  v3[0] = @"AppStore";
  v3[1] = @"SIMSetup";
  v3[2] = @"ScreenTime";
  v3[3] = @"AccessibilityAppearance";
  v3[4] = @"Android";
  v3[5] = @"Appearance";
  v3[6] = @"AppleID";
  v3[7] = @"N/A";
  v3[8] = @"Biometric";
  v3[9] = @"CloudStorage";
  v3[10] = @"DeviceProtection";
  v3[11] = @"DeviceToDeviceMigration";
  v3[12] = @"Diagnostics";
  v3[13] = @"DisplayTone";
  v3[14] = @"ExpressLanguage";
  v3[15] = @"HomeButtonSensitivity";
  v3[16] = @"Keyboard";
  v3[17] = @"Language";
  v3[18] = @"Location";
  v3[19] = @"EnableLockdownMode";
  v3[20] = @"MessagingActivationUsingPhoneNumber";
  v3[21] = @"OnBoarding";
  v3[22] = @"Passcode";
  v3[23] = @"Payment";
  v3[24] = @"PreferredLanguage";
  v3[25] = @"Privacy";
  v3[26] = @"Region";
  v3[27] = @"Restore";
  v3[28] = @"RestoreCompleted";
  v3[29] = @"Siri";
  v3[30] = @"SpokenLanguage";
  v3[31] = @"TOS";
  v3[32] = @"TapToSetup";
  v3[33] = @"UpdateCompleted";
  v3[34] = @"WatchMigration";
  v3[35] = @"Welcome";
  v3[36] = @"iMessageAndFaceTime";
  v3[37] = @"SoftwareUpdate";
  v3[38] = @"TermsOfAddress";
  v3[39] = @"WiFi";
  v3[40] = @"IntendedUser";
  v3[41] = @"Safety";
  v3[42] = @"ActionButton";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:43];
  v1 = allSkipKeys_allSkipKeys;
  allSkipKeys_allSkipKeys = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end