@interface IPSettingsUtilities
+ (void)mirrorToWatchIfNecessary;
+ (void)runPostLanguageChangeOperationsWithNotifications:(BOOL)notifications;
+ (void)writeLanguageAndLocaleConfigurationIfNeededWithCompletion:(id)completion;
@end

@implementation IPSettingsUtilities

+ (void)runPostLanguageChangeOperationsWithNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];

  if ((v7 & 1) == 0)
  {
    [MEMORY[0x277CBEAF8] enableDefaultKeyboardForPreferredLanguages];
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v9 = [processInfo beginActivityWithOptions:0xFFFFFFLL reason:@"com.apple.InternationalSettings.setLanguagesToIdMS"];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__IPSettingsUtilities_runPostLanguageChangeOperationsWithNotifications___block_invoke;
  v19[3] = &unk_2787A8F28;
  v10 = v9;
  v20 = v10;
  [self writeLanguageAndLocaleConfigurationIfNeededWithCompletion:v19];
  [self mirrorToWatchIfNecessary];
  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  regionCode = [preferredLocale regionCode];

  if (![regionCode length])
  {
    v13 = @"001";

    regionCode = v13;
  }

  v14 = xpc_string_create([regionCode cStringUsingEncoding:1]);
  v15 = os_eligibility_set_input();

  if (v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [IPSettingsUtilities runPostLanguageChangeOperationsWithNotifications:v15];
    if (!notificationsCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (notificationsCopy)
  {
LABEL_8:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleLanguagePreferencesChangedNotification", 0, 0, 1u);
    v17 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v17, @"AppleKeyboardsPreferencesChangedNotification", 0, 0, 1u);
    v18 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v18, @"com.apple.language.changed", 0, 0, 1u);
  }

LABEL_9:
}

void __72__IPSettingsUtilities_runPostLanguageChangeOperationsWithNotifications___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  [v2 endActivity:*(a1 + 32)];
}

+ (void)writeLanguageAndLocaleConfigurationIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  sharedManager = [getUMUserManagerClass() sharedManager];
  isMultiUser = [sharedManager isMultiUser];

  if (isMultiUser)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__IPSettingsUtilities_writeLanguageAndLocaleConfigurationIfNeededWithCompletion___block_invoke;
    block[3] = &unk_2787A8F78;
    v8 = completionCopy;
    dispatch_async(v6, block);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __81__IPSettingsUtilities_writeLanguageAndLocaleConfigurationIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = [getUMUserManagerClass() sharedManager];
  v3 = [v2 currentUser];
  v4 = [v3 alternateDSID];

  if (v4)
  {
    v21[0] = @"AppleLanguages";
    v5 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v21[1] = @"AppleLocale";
    v22[0] = v5;
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = [v6 localeIdentifier];
    v22[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v9 = getAKAppleIDAuthenticationControllerClass_softClass;
    v20 = getAKAppleIDAuthenticationControllerClass_softClass;
    if (!getAKAppleIDAuthenticationControllerClass_softClass)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getAKAppleIDAuthenticationControllerClass_block_invoke;
      v16[3] = &unk_2787A8FA0;
      v16[4] = &v17;
      __getAKAppleIDAuthenticationControllerClass_block_invoke(v16);
      v9 = v18[3];
    }

    v10 = v9;
    _Block_object_dispose(&v17, 8);
    v11 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__IPSettingsUtilities_writeLanguageAndLocaleConfigurationIfNeededWithCompletion___block_invoke_2;
    v14[3] = &unk_2787A8F50;
    v15 = *(a1 + 32);
    [v11 setConfigurationInfo:v8 forIdentifier:@"com.apple.idms.config.Language" forAltDSID:v4 completion:v14];
  }

  else
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __81__IPSettingsUtilities_writeLanguageAndLocaleConfigurationIfNeededWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)mirrorToWatchIfNecessary
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  activePairedDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v4 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:activePairedDeviceSelectorBlock];
  firstObject = [v4 firstObject];

  v5 = [firstObject valueForProperty:*MEMORY[0x277D2BB28]];
  bOOLValue = [v5 BOOLValue];

  v7 = objc_alloc_init(IPWatchLocaleController);
  if ([(IPWatchLocaleController *)v7 isMirroringEnabled]&& (bOOLValue & 1) == 0)
  {
    [(IPWatchLocaleController *)v7 mirrorLanguagesAndLocaleToWatch];
  }
}

+ (void)runPostLanguageChangeOperationsWithNotifications:(int)a1 .cold.1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22DFB7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to set eligibility input: %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end