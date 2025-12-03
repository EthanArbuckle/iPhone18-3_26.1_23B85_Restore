@interface CARPrototypePref
+ (BOOL)confirmedSafe;
+ (BOOL)qaModeLockout;
+ (BOOL)showTrustedLockout;
+ (CARPrototypeBoolPref)allowAutomaticConnectionDurationTTR;
+ (CARPrototypeBoolPref)allowSessionDurationRecordingEvents;
+ (CARPrototypeBoolPref)allowUnlimitedConnectionEvents;
+ (CARPrototypeBoolPref)audioSharingEnabled;
+ (CARPrototypeBoolPref)disableLocationNightMode;
+ (CARPrototypeBoolPref)enableModelPolicyAssertion;
+ (CARPrototypeBoolPref)fakeNeatlineDashboardSupport;
+ (CARPrototypeBoolPref)flipDashboardLayout;
+ (CARPrototypeBoolPref)force3xCluster;
+ (CARPrototypeBoolPref)forceSplitStatusBar;
+ (CARPrototypeBoolPref)keynoteStatusBar;
+ (CARPrototypeBoolPref)liveActivitiesDisabled;
+ (CARPrototypeBoolPref)lowAlphaStatusBar;
+ (CARPrototypeBoolPref)shellCAFDisabled;
+ (CARPrototypeBoolPref)showCarPlayTemplateUIHostInCluster;
+ (CARPrototypeBoolPref)showDisclaimerLabel;
+ (CARPrototypeBoolPref)showInternalApps;
+ (CARPrototypeBoolPref)showInternalSettings;
+ (CARPrototypeBoolPref)showLoD;
+ (CARPrototypeBoolPref)showPrototypeApps;
+ (CARPrototypeBoolPref)showSerialNumber;
+ (CARPrototypeBoolPref)smartWidgetDebugGestures;
+ (CARPrototypeBoolPref)smartWidgetDebugShowScore;
+ (CARPrototypeBoolPref)smartWidgetRelaxHomeInRangeCheck;
+ (CARPrototypeBoolPref)useNightModeTester;
+ (CARPrototypeBoolPref)useSceneInterfaceStyle;
+ (CARPrototypeBoolPref)usesMetalNowPlayingArtwork;
+ (CARPrototypePref)contentSize;
+ (CARPrototypePref)interfaceStyle;
+ (CARPrototypePref)latestInterfaceStyle;
+ (CARPrototypePref)liveActivities;
+ (CARPrototypePref)lodWidgets;
+ (CARPrototypePref)nowPlayingAlbumArt;
+ (CARPrototypePref)prefWithDomain:(id)domain key:(id)key title:(id)title defaultValue:(id)value valueChangedBlock:(id)block;
+ (CARPrototypePref)statusBarEdgeOverride;
+ (CARPrototypePref)statusBarHorizontalThreshold;
+ (CARPrototypePref)wirelessConnectionDurationTTRThreshold;
+ (CARPrototypePref)zoomFactor;
+ (NSArray)prototypePrefs;
+ (NSDictionary)prototypePrefCache;
+ (id)_confirmedSafe;
+ (id)_qaModeLockout;
+ (void)setConfirmedSafe:(BOOL)safe;
+ (void)setPrototypePrefCache:(id)cache;
+ (void)setQaModeLockout:(BOOL)lockout;
- (BOOL)cachedState;
- (BOOL)internalSettingsState;
- (BOOL)state;
- (id)cachedValue;
- (id)cachedValueOrDefault;
- (id)description;
- (id)internalSettingsValue;
- (id)value;
- (id)valueOrDefault;
- (void)setCachedState:(BOOL)state;
- (void)setCachedValue:(id)value;
- (void)setInternalSettingsState:(BOOL)state;
- (void)setInternalSettingsValue:(id)value;
- (void)setState:(BOOL)state;
- (void)setValue:(id)value;
@end

@implementation CARPrototypePref

+ (CARPrototypeBoolPref)smartWidgetRelaxHomeInRangeCheck
{
  if (smartWidgetRelaxHomeInRangeCheck_onceToken != -1)
  {
    +[CARPrototypePref smartWidgetRelaxHomeInRangeCheck];
  }

  v3 = smartWidgetRelaxHomeInRangeCheck__smartWidgetRelaxHomeInRangeCheck;

  return v3;
}

- (id)valueOrDefault
{
  value = [(CARPrototypePref *)self value];

  if (value)
  {
    [(CARPrototypePref *)self value];
  }

  else
  {
    [(CARPrototypePref *)self defaultValue];
  }
  v4 = ;

  return v4;
}

- (id)value
{
  domain = [(CARPrototypePref *)self domain];
  CFPreferencesAppSynchronize(domain);

  v4 = [(CARPrototypePref *)self key];
  domain2 = [(CARPrototypePref *)self domain];
  v6 = CFPreferencesCopyAppValue(v4, domain2);

  return v6;
}

+ (CARPrototypeBoolPref)useNightModeTester
{
  if (useNightModeTester_onceToken != -1)
  {
    +[CARPrototypePref useNightModeTester];
  }

  v3 = useNightModeTester__useNightModeTester;

  return v3;
}

+ (NSArray)prototypePrefs
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CARPrototypePref_prototypePrefs__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (prototypePrefs_onceToken != -1)
  {
    dispatch_once(&prototypePrefs_onceToken, block);
  }

  v2 = prototypePrefs__prototypePrefs;

  return v2;
}

void __34__CARPrototypePref_prototypePrefs__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) contentSize];
  v6[0] = v2;
  v3 = [*(a1 + 32) showPrototypeApps];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v5 = prototypePrefs__prototypePrefs;
  prototypePrefs__prototypePrefs = v4;
}

+ (BOOL)showTrustedLockout
{
  if (showTrustedLockout_onceToken != -1)
  {
    +[CARPrototypePref showTrustedLockout];
  }

  v3 = showTrustedLockout__trustedLockoutPref;

  return [v3 state];
}

uint64_t __38__CARPrototypePref_showTrustedLockout__block_invoke()
{
  showTrustedLockout__trustedLockoutPref = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"ShowTrustedLockout" title:0 invertValueForState:0 valueChangedBlock:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_qaModeLockout
{
  if (_qaModeLockout_onceToken != -1)
  {
    +[CARPrototypePref _qaModeLockout];
  }

  v3 = _qaModeLockout__qaModeLockout;

  return v3;
}

uint64_t __34__CARPrototypePref__qaModeLockout__block_invoke()
{
  _qaModeLockout__qaModeLockout = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"QAModeLockout" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_76];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __34__CARPrototypePref__qaModeLockout__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 BOOLValue];
  if (result)
  {

    return [CARPrototypePref setConfirmedSafe:1];
  }

  return result;
}

+ (BOOL)qaModeLockout
{
  v2 = +[CARPrototypePref _qaModeLockout];
  valueOrDefault = [v2 valueOrDefault];
  bOOLValue = [valueOrDefault BOOLValue];

  return bOOLValue;
}

+ (void)setQaModeLockout:(BOOL)lockout
{
  lockoutCopy = lockout;
  v4 = +[CARPrototypePref _qaModeLockout];
  [v4 setState:lockoutCopy];
}

+ (id)_confirmedSafe
{
  if (_confirmedSafe_onceToken != -1)
  {
    +[CARPrototypePref _confirmedSafe];
  }

  v3 = _confirmedSafe__confirmedSafe;

  return v3;
}

uint64_t __34__CARPrototypePref__confirmedSafe__block_invoke()
{
  _confirmedSafe__confirmedSafe = [CARPrototypePref prefWithDomain:@"com.apple.carplay.internal" key:@"lockoutConfirmedSafe" title:0 defaultValue:MEMORY[0x1E695E118] valueChangedBlock:&__block_literal_global_84];

  return MEMORY[0x1EEE66BB8]();
}

void __34__CARPrototypePref__confirmedSafe__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  LODWORD(a2) = [a2 BOOLValue];
  if (a2 != [v4 BOOLValue])
  {
    if ([v4 BOOLValue])
    {
      v22 = 0uLL;
      v23 = 0uLL;
      *(&v20 + 1) = 0;
      v21 = 0uLL;
      v5 = +[CARPrototypePref prototypePrefs];
      v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v21;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v20 + 1) + 8 * i);
            v11 = [v10 cachedValue];

            if (v11)
            {
              v12 = [v10 cachedValue];
              [v10 setValue:v12];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v7);
      }
    }

    else
    {
      v26 = 0uLL;
      v27 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v13 = +[CARPrototypePref prototypePrefs];
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v24 + 1) + 8 * j);
            v19 = [v18 value];
            [v18 setCachedValue:v19];

            [v18 setState:0];
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v15);
      }

      v5 = +[CARPrototypePref _qaModeLockout];
      [v5 setState:0];
    }
  }
}

+ (BOOL)confirmedSafe
{
  v2 = +[CARPrototypePref _confirmedSafe];
  valueOrDefault = [v2 valueOrDefault];
  bOOLValue = [valueOrDefault BOOLValue];

  return bOOLValue;
}

+ (void)setConfirmedSafe:(BOOL)safe
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:safe];
  v3 = +[(CARPrototypePref *)CARPrototypeBoolPref];
  [v3 setValue:v4];
}

+ (CARPrototypeBoolPref)showInternalApps
{
  if (showInternalApps_onceToken != -1)
  {
    +[CARPrototypePref showInternalApps];
  }

  v3 = showInternalApps__showInternalApps;

  return v3;
}

void __36__CARPrototypePref_showInternalApps__block_invoke()
{
  v2 = CRLocalizedStringForKey(@"INTERNAL_APPS");
  v0 = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"showInternalApps" title:v2 invertValueForState:0 valueChangedBlock:&__block_literal_global_95];
  v1 = showInternalApps__showInternalApps;
  showInternalApps__showInternalApps = v0;
}

void __36__CARPrototypePref_showInternalApps__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.refreshApps", 0, 0, 1u);
}

+ (CARPrototypeBoolPref)showDisclaimerLabel
{
  if (showDisclaimerLabel_onceToken != -1)
  {
    +[CARPrototypePref showDisclaimerLabel];
  }

  v3 = showDisclaimerLabel__showDisclaimerLabel;

  return v3;
}

void __39__CARPrototypePref_showDisclaimerLabel__block_invoke()
{
  v2 = CRLocalizedStringForKey(@"DISCLAIMER_LABEL");
  v0 = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"showDisclaimerLabel" title:v2 invertValueForState:0 valueChangedBlock:&__block_literal_global_108];
  v1 = showDisclaimerLabel__showDisclaimerLabel;
  showDisclaimerLabel__showDisclaimerLabel = v0;
}

void __39__CARPrototypePref_showDisclaimerLabel__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.showDisclaimer", 0, 0, 1u);
}

+ (CARPrototypeBoolPref)showSerialNumber
{
  if (showSerialNumber_onceToken != -1)
  {
    +[CARPrototypePref showSerialNumber];
  }

  v3 = showSerialNumber__showSerialNumber;

  return v3;
}

void __36__CARPrototypePref_showSerialNumber__block_invoke()
{
  v2 = CRLocalizedStringForKey(@"SERIAL_LABEL");
  v0 = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"showSerialNumber" title:v2 invertValueForState:0 valueChangedBlock:&__block_literal_global_121];
  v1 = showSerialNumber__showSerialNumber;
  showSerialNumber__showSerialNumber = v0;
}

void __36__CARPrototypePref_showSerialNumber__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.showDisclaimer", 0, 0, 1u);
}

+ (CARPrototypeBoolPref)allowUnlimitedConnectionEvents
{
  if (allowUnlimitedConnectionEvents_onceToken != -1)
  {
    +[CARPrototypePref allowUnlimitedConnectionEvents];
  }

  v3 = allowUnlimitedConnectionEvents__allowUnlimitedConnectionEvents;

  return v3;
}

uint64_t __50__CARPrototypePref_allowUnlimitedConnectionEvents__block_invoke()
{
  allowUnlimitedConnectionEvents__allowUnlimitedConnectionEvents = [(CARPrototypePref *)CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"allowUnlimitedConnectionEvents" title:0 defaultValue:MEMORY[0x1E695E110] valueChangedBlock:&__block_literal_global_128];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)allowSessionDurationRecordingEvents
{
  if (allowSessionDurationRecordingEvents_onceToken != -1)
  {
    +[CARPrototypePref allowSessionDurationRecordingEvents];
  }

  v3 = allowSessionDurationRecordingEvents__allowSessionDurationRecordingEvents;

  return v3;
}

uint64_t __55__CARPrototypePref_allowSessionDurationRecordingEvents__block_invoke()
{
  allowSessionDurationRecordingEvents__allowSessionDurationRecordingEvents = [(CARPrototypePref *)CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"allowSessionDurationRecordingEvents" title:0 defaultValue:MEMORY[0x1E695E110] valueChangedBlock:&__block_literal_global_135];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)allowAutomaticConnectionDurationTTR
{
  if (allowAutomaticConnectionDurationTTR_onceToken != -1)
  {
    +[CARPrototypePref allowAutomaticConnectionDurationTTR];
  }

  v3 = allowAutomaticConnectionDurationTTR__allowAutomaticConnectionDurationTTR;

  return v3;
}

void __55__CARPrototypePref_allowAutomaticConnectionDurationTTR__block_invoke()
{
  v2 = CRLocalizedStringForKey(@"Detect Connection Time Issues");
  v0 = [CARPrototypeBoolPref prefWithDomain:@"com.apple.internal.carkitd" key:@"allowAutomaticConnectionDurationTTR" title:v2 invertValueForState:0 valueChangedBlock:&__block_literal_global_148];
  v1 = allowAutomaticConnectionDurationTTR__allowAutomaticConnectionDurationTTR;
  allowAutomaticConnectionDurationTTR__allowAutomaticConnectionDurationTTR = v0;
}

void __55__CARPrototypePref_allowAutomaticConnectionDurationTTR__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CarPlayAllowConnectionDurationTTRChangedNotification", 0, 0, 1u);
}

+ (CARPrototypePref)wirelessConnectionDurationTTRThreshold
{
  if (wirelessConnectionDurationTTRThreshold_onceToken != -1)
  {
    +[CARPrototypePref wirelessConnectionDurationTTRThreshold];
  }

  v3 = wirelessConnectionDurationTTRThreshold__wirelessConnectionDurationTTRThreshold;

  return v3;
}

uint64_t __58__CARPrototypePref_wirelessConnectionDurationTTRThreshold__block_invoke()
{
  wirelessConnectionDurationTTRThreshold__wirelessConnectionDurationTTRThreshold = [CARPrototypePref prefWithDomain:@"com.apple.internal.carkitd" key:@"wirelessConnectionDurationTTRThreshold" title:@"Automatic Connection TTR Threshold" defaultValue:&unk_1F47F25F8 valueChangedBlock:&__block_literal_global_163];

  return MEMORY[0x1EEE66BB8]();
}

void __58__CARPrototypePref_wirelessConnectionDurationTTRThreshold__block_invoke_161()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CarPlayAllowConnectionDurationTTRChangedNotification", 0, 0, 1u);
}

+ (CARPrototypeBoolPref)audioSharingEnabled
{
  if (audioSharingEnabled_onceToken != -1)
  {
    +[CARPrototypePref audioSharingEnabled];
  }

  v3 = audioSharingEnabled__audioSharingEnabled;

  return v3;
}

uint64_t __39__CARPrototypePref_audioSharingEnabled__block_invoke()
{
  audioSharingEnabled__audioSharingEnabled = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"CARAudioSharingEnabled" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_170];

  return MEMORY[0x1EEE66BB8]();
}

void __39__CARPrototypePref_audioSharingEnabled__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CarPlayAudioSharingEnabledDidChangeNotification", 0, 0, 1u);
}

+ (CARPrototypePref)contentSize
{
  if (contentSize_onceToken != -1)
  {
    +[CARPrototypePref contentSize];
  }

  v3 = contentSize__contentSize;

  return v3;
}

uint64_t __31__CARPrototypePref_contentSize__block_invoke()
{
  contentSize__contentSize = [CARPrototypePref prefWithDomain:@"com.apple.UIKit" key:@"UICarPlayPreferredContentSizeCategoryName" title:0 defaultValue:@"UICTContentSizeCategoryL" valueChangedBlock:&__block_literal_global_186];

  return MEMORY[0x1EEE66BB8]();
}

void __31__CARPrototypePref_contentSize__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleCarPlayPreferredContentSizeCategoryChangedNotification", 0, 0, 1u);
}

+ (CARPrototypePref)interfaceStyle
{
  if (interfaceStyle_onceToken != -1)
  {
    +[CARPrototypePref interfaceStyle];
  }

  v3 = interfaceStyle__interfaceStyle;

  return v3;
}

uint64_t __34__CARPrototypePref_interfaceStyle__block_invoke()
{
  interfaceStyle__interfaceStyle = [CARPrototypePref prefWithDomain:@"com.apple.UIKit" key:@"CarPlayUserInterfaceStyle" title:0 defaultValue:&unk_1F47F2610 valueChangedBlock:&__block_literal_global_200];

  return MEMORY[0x1EEE66BB8]();
}

void __34__CARPrototypePref_interfaceStyle__block_invoke_198()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carkit.capabilities-changed", 0, 0, 1u);
}

+ (CARPrototypePref)latestInterfaceStyle
{
  if (latestInterfaceStyle_onceToken != -1)
  {
    +[CARPrototypePref latestInterfaceStyle];
  }

  v3 = latestInterfaceStyle__interfaceStyle;

  return v3;
}

uint64_t __40__CARPrototypePref_latestInterfaceStyle__block_invoke()
{
  latestInterfaceStyle__interfaceStyle = [CARPrototypePref prefWithDomain:@"com.apple.CarPlayApp" key:@"CarPlayUserInterfaceStyle" title:0 defaultValue:&unk_1F47F2610 valueChangedBlock:&__block_literal_global_210];

  return MEMORY[0x1EEE66BB8]();
}

void __40__CARPrototypePref_latestInterfaceStyle__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carkit.capabilities-changed", 0, 0, 1u);
}

+ (CARPrototypeBoolPref)useSceneInterfaceStyle
{
  if (useSceneInterfaceStyle_onceToken != -1)
  {
    +[CARPrototypePref useSceneInterfaceStyle];
  }

  v3 = useSceneInterfaceStyle__useSceneInterfaceStyle;

  return v3;
}

uint64_t __42__CARPrototypePref_useSceneInterfaceStyle__block_invoke()
{
  useSceneInterfaceStyle__useSceneInterfaceStyle = [CARPrototypeBoolPref prefWithDomain:@"com.apple.UIKit" key:@"ApplySceneUserInterfaceStyleToCarScreen" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_217];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)disableLocationNightMode
{
  if (disableLocationNightMode_onceToken != -1)
  {
    +[CARPrototypePref disableLocationNightMode];
  }

  v3 = disableLocationNightMode__disableLocationNightMode;

  return v3;
}

uint64_t __44__CARPrototypePref_disableLocationNightMode__block_invoke()
{
  disableLocationNightMode__disableLocationNightMode = [CARPrototypeBoolPref prefWithDomain:@"com.apple.CarPlayApp" key:@"kCarPlayAppDisableLocationNightMode" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_224];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __38__CARPrototypePref_useNightModeTester__block_invoke()
{
  useNightModeTester__useNightModeTester = [CARPrototypeBoolPref prefWithDomain:@"com.apple.CarPlayApp" key:@"kCarPlayAppUseNightModeTester" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_231];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)showCarPlayTemplateUIHostInCluster
{
  if (showCarPlayTemplateUIHostInCluster_onceToken != -1)
  {
    +[CARPrototypePref showCarPlayTemplateUIHostInCluster];
  }

  v3 = showCarPlayTemplateUIHostInCluster__showCarPlayTemplateUIHostInCluster;

  return v3;
}

uint64_t __54__CARPrototypePref_showCarPlayTemplateUIHostInCluster__block_invoke()
{
  showCarPlayTemplateUIHostInCluster__showCarPlayTemplateUIHostInCluster = [CARPrototypeBoolPref prefWithDomain:@"com.apple.CarPlayApp" key:@"kCarPlayAppShowCarPlayTemplateUIHostInCluster" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_238];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)shellCAFDisabled
{
  if (shellCAFDisabled_onceToken != -1)
  {
    +[CARPrototypePref shellCAFDisabled];
  }

  v3 = shellCAFDisabled__shellCAFDisabled;

  return v3;
}

uint64_t __36__CARPrototypePref_shellCAFDisabled__block_invoke()
{
  shellCAFDisabled__shellCAFDisabled = [CARPrototypeBoolPref prefWithDomain:@"com.apple.CarPlayApp" key:@"CAFDisabled" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_245];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)force3xCluster
{
  if (force3xCluster_onceToken != -1)
  {
    +[CARPrototypePref force3xCluster];
  }

  v3 = force3xCluster__force3xCluster;

  return v3;
}

uint64_t __34__CARPrototypePref_force3xCluster__block_invoke()
{
  force3xCluster__force3xCluster = [CARPrototypeBoolPref prefWithDomain:@"com.apple.mediaexperience" key:@"kForce3xCluster" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_255];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypePref)zoomFactor
{
  if (zoomFactor_onceToken != -1)
  {
    +[CARPrototypePref zoomFactor];
  }

  v3 = zoomFactor__zoomFactor;

  return v3;
}

uint64_t __30__CARPrototypePref_zoomFactor__block_invoke()
{
  zoomFactor__zoomFactor = [CARPrototypePref prefWithDomain:@"com.apple.carplay.internal" key:@"kZoomFactor" title:@"Zoom Factor" defaultValue:0 valueChangedBlock:&__block_literal_global_265];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)forceSplitStatusBar
{
  if (forceSplitStatusBar_onceToken != -1)
  {
    +[CARPrototypePref forceSplitStatusBar];
  }

  v3 = forceSplitStatusBar__forceSplitStatusBar;

  return v3;
}

uint64_t __39__CARPrototypePref_forceSplitStatusBar__block_invoke()
{
  forceSplitStatusBar__forceSplitStatusBar = [CARPrototypeBoolPref prefWithDomain:@"com.apple.CarPlayApp" key:@"ForceSplitStatusBar" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_272];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)lowAlphaStatusBar
{
  if (lowAlphaStatusBar_onceToken != -1)
  {
    +[CARPrototypePref lowAlphaStatusBar];
  }

  v3 = lowAlphaStatusBar__lowAlphaStatusBar;

  return v3;
}

uint64_t __37__CARPrototypePref_lowAlphaStatusBar__block_invoke()
{
  lowAlphaStatusBar__lowAlphaStatusBar = [CARPrototypeBoolPref prefWithDomain:@"com.apple.CarPlayApp" key:@"LowAlphaStatusBar" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_279];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)keynoteStatusBar
{
  if (keynoteStatusBar_onceToken != -1)
  {
    +[CARPrototypePref keynoteStatusBar];
  }

  v3 = keynoteStatusBar__keynoteStatusBar;

  return v3;
}

void __36__CARPrototypePref_keynoteStatusBar__block_invoke()
{
  v2 = CRLocalizedStringForKey(@"STATUS_BAR_OVERRIDES");
  v0 = [CARPrototypeBoolPref prefWithDomain:@"com.apple.springboard" key:@"SBShowStatusBarOverridesForRecording" title:v2 invertValueForState:0 valueChangedBlock:&__block_literal_global_292];
  v1 = keynoteStatusBar__keynoteStatusBar;
  keynoteStatusBar__keynoteStatusBar = v0;
}

+ (CARPrototypeBoolPref)usesMetalNowPlayingArtwork
{
  if (usesMetalNowPlayingArtwork_onceToken != -1)
  {
    +[CARPrototypePref usesMetalNowPlayingArtwork];
  }

  v3 = usesMetalNowPlayingArtwork__usesMetalNowPlayingArtwork;

  return v3;
}

uint64_t __46__CARPrototypePref_usesMetalNowPlayingArtwork__block_invoke()
{
  usesMetalNowPlayingArtwork__usesMetalNowPlayingArtwork = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"UsesMetalNowPlayingArtwork" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_299];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)showPrototypeApps
{
  if (showPrototypeApps_onceToken != -1)
  {
    +[CARPrototypePref showPrototypeApps];
  }

  v3 = showPrototypeApps__showPrototypeApps;

  return v3;
}

uint64_t __37__CARPrototypePref_showPrototypeApps__block_invoke()
{
  showPrototypeApps__showPrototypeApps = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"showPrototypeApps" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_306];

  return MEMORY[0x1EEE66BB8]();
}

void __37__CARPrototypePref_showPrototypeApps__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.refreshApps", 0, 0, 1u);
}

+ (CARPrototypeBoolPref)liveActivitiesDisabled
{
  if (liveActivitiesDisabled_onceToken != -1)
  {
    +[CARPrototypePref liveActivitiesDisabled];
  }

  v3 = liveActivitiesDisabled__liveActivitiesDisabled;

  return v3;
}

uint64_t __42__CARPrototypePref_liveActivitiesDisabled__block_invoke()
{
  liveActivitiesDisabled__liveActivitiesDisabled = [(CARPrototypePref *)CARPrototypeBoolPref prefWithDomain:@"com.apple.CarPlayApp" key:@"liveActivitiesDisabled" title:0 defaultValue:MEMORY[0x1E695E110] valueChangedBlock:&__block_literal_global_313];

  return MEMORY[0x1EEE66BB8]();
}

void __42__CARPrototypePref_liveActivitiesDisabled__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.refreshLiveActivity", 0, 0, 1u);
}

+ (CARPrototypePref)nowPlayingAlbumArt
{
  if (nowPlayingAlbumArt_onceToken != -1)
  {
    +[CARPrototypePref nowPlayingAlbumArt];
  }

  v3 = nowPlayingAlbumArt__nowPlayingAlbumArt;

  return v3;
}

void __38__CARPrototypePref_nowPlayingAlbumArt__block_invoke()
{
  CFPreferencesSetAppValue(@"MusicUIServiceNowPlayingAlbumArt", 0, @"com.apple.internal.carkitd");
  CFPreferencesAppSynchronize(@"com.apple.internal.carkitd");
  v2 = CRLocalizedStringForKey(@"INTERNAL_NOW_PLAYING_ALBUM_ART");
  v0 = [CARPrototypePref prefWithDomain:@"com.apple.internal.carkitd" key:@"NowPlayingAlbumArtMode" title:v2 defaultValue:&unk_1F47F2610 valueChangedBlock:&__block_literal_global_329];
  v1 = nowPlayingAlbumArt__nowPlayingAlbumArt;
  nowPlayingAlbumArt__nowPlayingAlbumArt = v0;
}

void __38__CARPrototypePref_nowPlayingAlbumArt__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carkit.capabilities-changed", 0, 0, 1u);
}

+ (CARPrototypePref)liveActivities
{
  if (liveActivities_onceToken != -1)
  {
    +[CARPrototypePref liveActivities];
  }

  v3 = liveActivities__liveActivities;

  return v3;
}

void __34__CARPrototypePref_liveActivities__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.internal.carkitd");
  v2 = CRLocalizedStringForKey(@"INTERNAL_LIVE_ACTIVITIES");
  v0 = [CARPrototypePref prefWithDomain:@"com.apple.internal.carkitd" key:@"LiveActivitiesMode" title:v2 defaultValue:&unk_1F47F2610 valueChangedBlock:&__block_literal_global_339];
  v1 = liveActivities__liveActivities;
  liveActivities__liveActivities = v0;
}

void __34__CARPrototypePref_liveActivities__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carkit.capabilities-changed", 0, 0, 1u);
}

+ (CARPrototypePref)lodWidgets
{
  if (lodWidgets_onceToken != -1)
  {
    +[CARPrototypePref lodWidgets];
  }

  v3 = lodWidgets__lodWidgets;

  return v3;
}

void __30__CARPrototypePref_lodWidgets__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.internal.carkitd");
  v2 = CRLocalizedStringForKey(@"INTERNAL_LOD_WIDGETS");
  v0 = [CARPrototypePref prefWithDomain:@"com.apple.internal.carkitd" key:@"LodWidgetsMode" title:v2 defaultValue:&unk_1F47F2610 valueChangedBlock:&__block_literal_global_349];
  v1 = lodWidgets__lodWidgets;
  lodWidgets__lodWidgets = v0;
}

void __30__CARPrototypePref_lodWidgets__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carkit.capabilities-changed", 0, 0, 1u);
}

+ (CARPrototypeBoolPref)showInternalSettings
{
  if (showInternalSettings_onceToken != -1)
  {
    +[CARPrototypePref showInternalSettings];
  }

  v3 = showInternalSettings__showInternalSettings;

  return v3;
}

void __40__CARPrototypePref_showInternalSettings__block_invoke()
{
  v2 = CRLocalizedStringForKey(@"INTERNAL_SETTINGS");
  v0 = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"showInternalSettings" title:v2 invertValueForState:0 valueChangedBlock:&__block_literal_global_359];
  v1 = showInternalSettings__showInternalSettings;
  showInternalSettings__showInternalSettings = v0;
}

void __40__CARPrototypePref_showInternalSettings__block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.refreshApps", 0, 0, 1u);
}

+ (CARPrototypeBoolPref)smartWidgetDebugShowScore
{
  if (smartWidgetDebugShowScore_onceToken != -1)
  {
    +[CARPrototypePref smartWidgetDebugShowScore];
  }

  v3 = smartWidgetDebugShowScore__smartWidgetDebugShowScore;

  return v3;
}

void __45__CARPrototypePref_smartWidgetDebugShowScore__block_invoke()
{
  v2 = CRLocalizedStringForKey(@"INTERNAL_SMART_WIDGET_SHOW_SCORE");
  v0 = [CARPrototypeBoolPref prefWithDomain:@"com.apple.CarPlayApp" key:@"CARSmartWidgetDebugShowScore" title:v2 invertValueForState:0 valueChangedBlock:0];
  v1 = smartWidgetDebugShowScore__smartWidgetDebugShowScore;
  smartWidgetDebugShowScore__smartWidgetDebugShowScore = v0;
}

+ (CARPrototypeBoolPref)smartWidgetDebugGestures
{
  if (smartWidgetDebugGestures_onceToken != -1)
  {
    +[CARPrototypePref smartWidgetDebugGestures];
  }

  v3 = smartWidgetDebugGestures__smartWidgetDebugGestures;

  return v3;
}

void __44__CARPrototypePref_smartWidgetDebugGestures__block_invoke()
{
  v2 = CRLocalizedStringForKey(@"INTERNAL_SMART_WIDGET_GESTURES");
  v0 = [CARPrototypeBoolPref prefWithDomain:@"com.apple.CarPlayApp" key:@"CARSmartWidgetDebugGestures" title:v2 invertValueForState:0 valueChangedBlock:0];
  v1 = smartWidgetDebugGestures__smartWidgetDebugGestures;
  smartWidgetDebugGestures__smartWidgetDebugGestures = v0;
}

void __52__CARPrototypePref_smartWidgetRelaxHomeInRangeCheck__block_invoke()
{
  v2 = CRLocalizedStringForKey(@"INTERNAL_SMART_WIDGET_RELAXED_INRANGE");
  v0 = [CARPrototypeBoolPref prefWithDomain:@"com.apple.CarPlayApp" key:@"CARSmartWidgetDebugRelaxHomeInRangeCheck" title:v2 invertValueForState:0 valueChangedBlock:0];
  v1 = smartWidgetRelaxHomeInRangeCheck__smartWidgetRelaxHomeInRangeCheck;
  smartWidgetRelaxHomeInRangeCheck__smartWidgetRelaxHomeInRangeCheck = v0;
}

+ (CARPrototypeBoolPref)fakeNeatlineDashboardSupport
{
  if (fakeNeatlineDashboardSupport_onceToken != -1)
  {
    +[CARPrototypePref fakeNeatlineDashboardSupport];
  }

  v3 = fakeNeatlineDashboardSupport__fakeNeatlineDashboardEnabled;

  return v3;
}

uint64_t __48__CARPrototypePref_fakeNeatlineDashboardSupport__block_invoke()
{
  fakeNeatlineDashboardSupport__fakeNeatlineDashboardEnabled = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"kCarPlayFakeNeatlineDashboard" title:@"Fake Neatline Dashboard" invertValueForState:0 valueChangedBlock:&__block_literal_global_393];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypePref)statusBarEdgeOverride
{
  if (statusBarEdgeOverride_onceToken != -1)
  {
    +[CARPrototypePref statusBarEdgeOverride];
  }

  v3 = statusBarEdgeOverride__statusBarEdgeOverride;

  return v3;
}

uint64_t __41__CARPrototypePref_statusBarEdgeOverride__block_invoke()
{
  statusBarEdgeOverride__statusBarEdgeOverride = [CARPrototypePref prefWithDomain:@"com.apple.carplay.internal" key:@"CARStatusBarEdgeOverride" title:@"Status bar edge override" defaultValue:&unk_1F47F2628 valueChangedBlock:&__block_literal_global_406];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypePref)statusBarHorizontalThreshold
{
  if (statusBarHorizontalThreshold_onceToken != -1)
  {
    +[CARPrototypePref statusBarHorizontalThreshold];
  }

  v3 = statusBarHorizontalThreshold__statusBarHorizontalThreshold;

  return v3;
}

uint64_t __48__CARPrototypePref_statusBarHorizontalThreshold__block_invoke()
{
  statusBarHorizontalThreshold__statusBarHorizontalThreshold = [CARPrototypePref prefWithDomain:@"com.apple.carplay.internal" key:@"CARStatusBarHorizontalThreshold" title:@"Status bar horizontal threshold" defaultValue:&unk_1F47F2640 valueChangedBlock:&__block_literal_global_419];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)flipDashboardLayout
{
  if (flipDashboardLayout_onceToken != -1)
  {
    +[CARPrototypePref flipDashboardLayout];
  }

  v3 = flipDashboardLayout__flipDashboardLayout;

  return v3;
}

uint64_t __39__CARPrototypePref_flipDashboardLayout__block_invoke()
{
  flipDashboardLayout__flipDashboardLayout = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"CARFlipDashboardLayout" title:@"Flip Dashboard Layout" invertValueForState:0 valueChangedBlock:&__block_literal_global_429];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)showLoD
{
  if (showLoD_onceToken != -1)
  {
    +[CARPrototypePref showLoD];
  }

  v3 = showLoD__showLoD;

  return v3;
}

uint64_t __27__CARPrototypePref_showLoD__block_invoke()
{
  showLoD__showLoD = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"showLoD" title:0 invertValueForState:0 valueChangedBlock:&__block_literal_global_436];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypeBoolPref)enableModelPolicyAssertion
{
  if (enableModelPolicyAssertion_onceToken != -1)
  {
    +[CARPrototypePref enableModelPolicyAssertion];
  }

  v3 = enableModelPolicyAssertion__enableModelPolicyAssertion;

  return v3;
}

uint64_t __46__CARPrototypePref_enableModelPolicyAssertion__block_invoke()
{
  enableModelPolicyAssertion__enableModelPolicyAssertion = [CARPrototypeBoolPref prefWithDomain:@"com.apple.carplay.internal" key:@"kCarPlayEnableModelPolicyAssertion" title:@"Enable Model Policy Assertion" invertValueForState:0 valueChangedBlock:&__block_literal_global_446];

  return MEMORY[0x1EEE66BB8]();
}

+ (CARPrototypePref)prefWithDomain:(id)domain key:(id)key title:(id)title defaultValue:(id)value valueChangedBlock:(id)block
{
  blockCopy = block;
  valueCopy = value;
  titleCopy = title;
  keyCopy = key;
  domainCopy = domain;
  v17 = objc_alloc_init(self);
  [v17 setDomain:domainCopy];

  [v17 setKey:keyCopy];
  [v17 setTitle:titleCopy];

  [v17 setDefaultValue:valueCopy];
  [v17 setValueChangedBlock:blockCopy];

  return v17;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  value = [(CARPrototypePref *)self value];
  value = valueCopy;
  v6 = [(CARPrototypePref *)self key];
  domain = [(CARPrototypePref *)self domain];
  CFPreferencesSetAppValue(v6, value, domain);

  domain2 = [(CARPrototypePref *)self domain];
  CFPreferencesAppSynchronize(domain2);

  valueChangedBlock = [(CARPrototypePref *)self valueChangedBlock];

  if (valueChangedBlock)
  {
    valueChangedBlock2 = [(CARPrototypePref *)self valueChangedBlock];
    (valueChangedBlock2)[2](valueChangedBlock2, value, value);
  }
}

- (BOOL)state
{
  value = [(CARPrototypePref *)self value];
  v3 = value != 0;

  return v3;
}

- (void)setState:(BOOL)state
{
  if (state)
  {
    defaultValue = [(CARPrototypePref *)self defaultValue];
    [(CARPrototypePref *)self setValue:defaultValue];
  }

  else
  {

    [(CARPrototypePref *)self setValue:0];
  }
}

+ (NSDictionary)prototypePrefCache
{
  CFPreferencesAppSynchronize(@"com.apple.carplay.internal");
  v3 = CFPreferencesCopyAppValue(@"PrototypePrefCache", @"com.apple.carplay.internal");
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = objc_opt_new();

    [self setPrototypePrefCache:v4];
    v3 = v4;
  }

  return v3;
}

+ (void)setPrototypePrefCache:(id)cache
{
  CFPreferencesSetAppValue(@"PrototypePrefCache", cache, @"com.apple.carplay.internal");

  CFPreferencesAppSynchronize(@"com.apple.carplay.internal");
}

- (id)cachedValue
{
  prototypePrefCache = [objc_opt_class() prototypePrefCache];
  domain = [(CARPrototypePref *)self domain];
  v5 = [prototypePrefCache objectForKeyedSubscript:domain];
  v6 = [(CARPrototypePref *)self key];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)setCachedValue:(id)value
{
  valueCopy = value;
  prototypePrefCache = [objc_opt_class() prototypePrefCache];
  carMutableDeepCopy = [prototypePrefCache carMutableDeepCopy];

  domain = [(CARPrototypePref *)self domain];
  v7 = [carMutableDeepCopy objectForKeyedSubscript:domain];

  if (!v7)
  {
    v8 = objc_opt_new();
    domain2 = [(CARPrototypePref *)self domain];
    [carMutableDeepCopy setObject:v8 forKeyedSubscript:domain2];
  }

  domain3 = [(CARPrototypePref *)self domain];
  v11 = [carMutableDeepCopy objectForKeyedSubscript:domain3];
  v12 = [(CARPrototypePref *)self key];
  [v11 setObject:valueCopy forKeyedSubscript:v12];

  [objc_opt_class() setPrototypePrefCache:carMutableDeepCopy];
}

- (id)cachedValueOrDefault
{
  cachedValue = [(CARPrototypePref *)self cachedValue];

  if (cachedValue)
  {
    [(CARPrototypePref *)self cachedValue];
  }

  else
  {
    [(CARPrototypePref *)self defaultValue];
  }
  v4 = ;

  return v4;
}

- (BOOL)cachedState
{
  cachedValue = [(CARPrototypePref *)self cachedValue];
  v3 = cachedValue != 0;

  return v3;
}

- (void)setCachedState:(BOOL)state
{
  if (state)
  {
    defaultValue = [(CARPrototypePref *)self defaultValue];
    [(CARPrototypePref *)self setCachedValue:defaultValue];
  }

  else
  {

    [(CARPrototypePref *)self setCachedValue:0];
  }
}

- (id)internalSettingsValue
{
  if (+[CARPrototypePref confirmedSafe])
  {
    [(CARPrototypePref *)self value];
  }

  else
  {
    [(CARPrototypePref *)self cachedValue];
  }
  v3 = ;

  return v3;
}

- (void)setInternalSettingsValue:(id)value
{
  valueCopy = value;
  if (+[CARPrototypePref confirmedSafe])
  {
    [(CARPrototypePref *)self setValue:valueCopy];
  }

  else
  {
    [(CARPrototypePref *)self setCachedValue:valueCopy];
  }
}

- (BOOL)internalSettingsState
{
  if (+[CARPrototypePref confirmedSafe])
  {

    return [(CARPrototypePref *)self state];
  }

  else
  {

    return [(CARPrototypePref *)self cachedState];
  }
}

- (void)setInternalSettingsState:(BOOL)state
{
  stateCopy = state;
  if (+[CARPrototypePref confirmedSafe])
  {

    [(CARPrototypePref *)self setState:stateCopy];
  }

  else
  {

    [(CARPrototypePref *)self setCachedState:stateCopy];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  domain = [(CARPrototypePref *)self domain];
  v6 = [(CARPrototypePref *)self key];
  value = [(CARPrototypePref *)self value];
  v8 = [v3 stringWithFormat:@"<%@: %p %@-%@=%@>", v4, self, domain, v6, value];

  return v8;
}

@end