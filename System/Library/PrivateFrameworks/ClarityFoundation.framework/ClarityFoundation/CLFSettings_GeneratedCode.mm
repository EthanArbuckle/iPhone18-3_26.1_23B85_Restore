@interface CLFSettings_GeneratedCode
+ (CLFSettings)sharedInstance;
+ (id)allPreferenceSelectorsAsStrings;
- (CLFSettings_GeneratedCode)init;
- (NSArray)applicationBundleIdentifiers;
- (NSArray)overrideNonClarityApplicationBundleIdentifiers;
- (NSString)adminPasscodeRecoveryAppleID;
- (NSString)listLayout;
- (NSString)restartReason;
@end

@implementation CLFSettings_GeneratedCode

+ (CLFSettings)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CLFSettings_GeneratedCode sharedInstance];
  }

  v3 = sharedInstance_SharedSettings;

  return v3;
}

- (CLFSettings_GeneratedCode)init
{
  v45.receiver = self;
  v45.super_class = CLFSettings_GeneratedCode;
  v2 = [(CLFBaseSettings *)&v45 init];
  v3 = v2;
  if (v2)
  {
    preferenceKeysBySelectorName = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_adminPasscodeRecoveryAppleID);
    [preferenceKeysBySelectorName setObject:@"AdminPasscodeRecoveryAppleID" forKeyedSubscript:v5];

    preferenceKeysBySelectorName2 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_allowAccessibilityShortcut);
    [preferenceKeysBySelectorName2 setObject:@"AllowAccessibilityShortcut" forKeyedSubscript:v7];

    preferenceKeysBySelectorName3 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_allowSiri);
    [preferenceKeysBySelectorName3 setObject:@"AllowSiri" forKeyedSubscript:v9];

    preferenceKeysBySelectorName4 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v11 = NSStringFromSelector(sel_applicationBundleIdentifiers);
    [preferenceKeysBySelectorName4 setObject:@"ApplicationBundleIdentifiers" forKeyedSubscript:v11];

    preferenceKeysBySelectorName5 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v13 = NSStringFromSelector(sel_batteryMonitoringEnabled);
    [preferenceKeysBySelectorName5 setObject:@"BatteryMonitoringEnabled" forKeyedSubscript:v13];

    preferenceKeysBySelectorName6 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v15 = NSStringFromSelector(sel_emergencyKeypadEnabled);
    [preferenceKeysBySelectorName6 setObject:@"EmergencyKeypadEnabled" forKeyedSubscript:v15];

    preferenceKeysBySelectorName7 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v17 = NSStringFromSelector(sel_fullScreenCompatibilityMode);
    [preferenceKeysBySelectorName7 setObject:@"FullScreenCompatibilityMode" forKeyedSubscript:v17];

    preferenceKeysBySelectorName8 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v19 = NSStringFromSelector(sel_hasMigratedFileProtections);
    [preferenceKeysBySelectorName8 setObject:@"HasMigratedFileProtections" forKeyedSubscript:v19];

    preferenceKeysBySelectorName9 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v21 = NSStringFromSelector(sel_listLayout);
    [preferenceKeysBySelectorName9 setObject:@"ListLayout" forKeyedSubscript:v21];

    preferenceKeysBySelectorName10 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v23 = NSStringFromSelector(sel_lockScreenClockEnabled);
    [preferenceKeysBySelectorName10 setObject:@"LockScreenClockEnabled" forKeyedSubscript:v23];

    preferenceKeysBySelectorName11 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v25 = NSStringFromSelector(sel_lockScreenDateEnabled);
    [preferenceKeysBySelectorName11 setObject:@"LockScreenDateEnabled" forKeyedSubscript:v25];

    preferenceKeysBySelectorName12 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v27 = NSStringFromSelector(sel_notificationsEnabled);
    [preferenceKeysBySelectorName12 setObject:@"NotificationsEnabled" forKeyedSubscript:v27];

    preferenceKeysBySelectorName13 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v29 = NSStringFromSelector(sel_oneTapUnlock);
    [preferenceKeysBySelectorName13 setObject:@"OneTapUnlock" forKeyedSubscript:v29];

    preferenceKeysBySelectorName14 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v31 = NSStringFromSelector(sel_overrideNonClarityApplicationBundleIdentifiers);
    [preferenceKeysBySelectorName14 setObject:@"OverrideNonClarityApplicationBundleIdentifiers" forKeyedSubscript:v31];

    preferenceKeysBySelectorName15 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v33 = NSStringFromSelector(sel_restartReason);
    [preferenceKeysBySelectorName15 setObject:@"RestartReason" forKeyedSubscript:v33];

    preferenceKeysBySelectorName16 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v35 = NSStringFromSelector(sel_restrictPhoneCall);
    [preferenceKeysBySelectorName16 setObject:@"RestrictPhoneCall" forKeyedSubscript:v35];

    preferenceKeysBySelectorName17 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v37 = NSStringFromSelector(sel_shouldShowTripleClickInstructions);
    [preferenceKeysBySelectorName17 setObject:@"ShouldShowTripleClickInstructions" forKeyedSubscript:v37];

    preferenceKeysBySelectorName18 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v39 = NSStringFromSelector(sel_showTimeInStatusBar);
    [preferenceKeysBySelectorName18 setObject:@"ShowTimeInStatusBar" forKeyedSubscript:v39];

    preferenceKeysBySelectorName19 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v41 = NSStringFromSelector(sel_silentModeToggleEnabled);
    [preferenceKeysBySelectorName19 setObject:@"SilentModeToggleEnabled" forKeyedSubscript:v41];

    preferenceKeysBySelectorName20 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v43 = NSStringFromSelector(sel_volumeButtonsEnabled);
    [preferenceKeysBySelectorName20 setObject:@"VolumeButtonsEnabled" forKeyedSubscript:v43];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v28[20] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = &OBJC_METACLASS___CLFSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v27, sel_allPreferenceSelectorsAsStrings);
  v26 = NSStringFromSelector(sel_adminPasscodeRecoveryAppleID);
  v28[0] = v26;
  v25 = NSStringFromSelector(sel_allowAccessibilityShortcut);
  v28[1] = v25;
  v24 = NSStringFromSelector(sel_allowSiri);
  v28[2] = v24;
  v23 = NSStringFromSelector(sel_applicationBundleIdentifiers);
  v28[3] = v23;
  v22 = NSStringFromSelector(sel_batteryMonitoringEnabled);
  v28[4] = v22;
  v21 = NSStringFromSelector(sel_emergencyKeypadEnabled);
  v28[5] = v21;
  v20 = NSStringFromSelector(sel_fullScreenCompatibilityMode);
  v28[6] = v20;
  v19 = NSStringFromSelector(sel_hasMigratedFileProtections);
  v28[7] = v19;
  v18 = NSStringFromSelector(sel_listLayout);
  v28[8] = v18;
  v17 = NSStringFromSelector(sel_lockScreenClockEnabled);
  v28[9] = v17;
  v16 = NSStringFromSelector(sel_lockScreenDateEnabled);
  v28[10] = v16;
  v15 = NSStringFromSelector(sel_notificationsEnabled);
  v28[11] = v15;
  v3 = NSStringFromSelector(sel_oneTapUnlock);
  v28[12] = v3;
  v4 = NSStringFromSelector(sel_overrideNonClarityApplicationBundleIdentifiers);
  v28[13] = v4;
  v5 = NSStringFromSelector(sel_restartReason);
  v28[14] = v5;
  v6 = NSStringFromSelector(sel_restrictPhoneCall);
  v28[15] = v6;
  v7 = NSStringFromSelector(sel_shouldShowTripleClickInstructions);
  v28[16] = v7;
  v8 = NSStringFromSelector(sel_showTimeInStatusBar);
  v28[17] = v8;
  v9 = NSStringFromSelector(sel_silentModeToggleEnabled);
  v28[18] = v9;
  v10 = NSStringFromSelector(sel_volumeButtonsEnabled);
  v28[19] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:20];
  v14 = [v2 arrayByAddingObjectsFromArray:v11];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

- (NSString)adminPasscodeRecoveryAppleID
{
  v3 = objc_opt_class();

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"AdminPasscodeRecoveryAppleID" ofClass:v3 defaultValue:0];
}

- (NSArray)applicationBundleIdentifiers
{
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E695E0F0];

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"ApplicationBundleIdentifiers" ofClass:v3 defaultValue:v4];
}

- (NSString)listLayout
{
  v3 = objc_opt_class();

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"ListLayout" ofClass:v3 defaultValue:@"grid"];
}

- (NSArray)overrideNonClarityApplicationBundleIdentifiers
{
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E695E0F0];

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"OverrideNonClarityApplicationBundleIdentifiers" ofClass:v3 defaultValue:v4];
}

- (NSString)restartReason
{
  v3 = objc_opt_class();

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"RestartReason" ofClass:v3 defaultValue:@"unknown"];
}

@end