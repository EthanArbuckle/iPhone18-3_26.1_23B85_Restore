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
    v4 = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_adminPasscodeRecoveryAppleID);
    [v4 setObject:@"AdminPasscodeRecoveryAppleID" forKeyedSubscript:v5];

    v6 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_allowAccessibilityShortcut);
    [v6 setObject:@"AllowAccessibilityShortcut" forKeyedSubscript:v7];

    v8 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_allowSiri);
    [v8 setObject:@"AllowSiri" forKeyedSubscript:v9];

    v10 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v11 = NSStringFromSelector(sel_applicationBundleIdentifiers);
    [v10 setObject:@"ApplicationBundleIdentifiers" forKeyedSubscript:v11];

    v12 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v13 = NSStringFromSelector(sel_batteryMonitoringEnabled);
    [v12 setObject:@"BatteryMonitoringEnabled" forKeyedSubscript:v13];

    v14 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v15 = NSStringFromSelector(sel_emergencyKeypadEnabled);
    [v14 setObject:@"EmergencyKeypadEnabled" forKeyedSubscript:v15];

    v16 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v17 = NSStringFromSelector(sel_fullScreenCompatibilityMode);
    [v16 setObject:@"FullScreenCompatibilityMode" forKeyedSubscript:v17];

    v18 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v19 = NSStringFromSelector(sel_hasMigratedFileProtections);
    [v18 setObject:@"HasMigratedFileProtections" forKeyedSubscript:v19];

    v20 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v21 = NSStringFromSelector(sel_listLayout);
    [v20 setObject:@"ListLayout" forKeyedSubscript:v21];

    v22 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v23 = NSStringFromSelector(sel_lockScreenClockEnabled);
    [v22 setObject:@"LockScreenClockEnabled" forKeyedSubscript:v23];

    v24 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v25 = NSStringFromSelector(sel_lockScreenDateEnabled);
    [v24 setObject:@"LockScreenDateEnabled" forKeyedSubscript:v25];

    v26 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v27 = NSStringFromSelector(sel_notificationsEnabled);
    [v26 setObject:@"NotificationsEnabled" forKeyedSubscript:v27];

    v28 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v29 = NSStringFromSelector(sel_oneTapUnlock);
    [v28 setObject:@"OneTapUnlock" forKeyedSubscript:v29];

    v30 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v31 = NSStringFromSelector(sel_overrideNonClarityApplicationBundleIdentifiers);
    [v30 setObject:@"OverrideNonClarityApplicationBundleIdentifiers" forKeyedSubscript:v31];

    v32 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v33 = NSStringFromSelector(sel_restartReason);
    [v32 setObject:@"RestartReason" forKeyedSubscript:v33];

    v34 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v35 = NSStringFromSelector(sel_restrictPhoneCall);
    [v34 setObject:@"RestrictPhoneCall" forKeyedSubscript:v35];

    v36 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v37 = NSStringFromSelector(sel_shouldShowTripleClickInstructions);
    [v36 setObject:@"ShouldShowTripleClickInstructions" forKeyedSubscript:v37];

    v38 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v39 = NSStringFromSelector(sel_showTimeInStatusBar);
    [v38 setObject:@"ShowTimeInStatusBar" forKeyedSubscript:v39];

    v40 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v41 = NSStringFromSelector(sel_silentModeToggleEnabled);
    [v40 setObject:@"SilentModeToggleEnabled" forKeyedSubscript:v41];

    v42 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v43 = NSStringFromSelector(sel_volumeButtonsEnabled);
    [v42 setObject:@"VolumeButtonsEnabled" forKeyedSubscript:v43];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v28[20] = *MEMORY[0x1E69E9840];
  v27.receiver = a1;
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