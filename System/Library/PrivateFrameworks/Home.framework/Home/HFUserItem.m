@interface HFUserItem
+ (NSMutableDictionary)_fakeHMSettings;
- (BOOL)_hasDismissalExpired:(id)a3;
- (BOOL)_hasValidPrivateSettings;
- (BOOL)_isSettingsValueForKeyPath:(id)a3 atMaximumValue:(int64_t)a4 settingsType:(unint64_t)a5;
- (BOOL)hasDismissedAudioAnalysisOnboardingOnThisDevice;
- (BOOL)hasDismissedCameraUpgradeBanner;
- (BOOL)hasDismissedHomeHubMigrationBanner;
- (BOOL)hasDismissedWelcomeUIBanner;
- (BOOL)hasValidSettings;
- (BOOL)isAnnounceEnabled;
- (HFHomeKitSettingsAdapterManager)hf_settingsAdapterManager;
- (HFHomeKitSettingsValueManager)hf_settingsValueManager;
- (HFUserItem)init;
- (HFUserItem)initWithHome:(id)a3 user:(id)a4 nameStyle:(unint64_t)a5;
- (HFUserItem)initWithHome:(id)a3 user:(id)a4 nameStyle:(unint64_t)a5 userDefaults:(id)a6;
- (HMSettings)settings;
- (NSSet)hf_dependentHomeKitObjectsForDownstreamItems;
- (NSSet)homekitObjectIdentifiers;
- (NSString)description;
- (id)_accessDescription;
- (id)_getSettingsValueForKeyPath:(id)a3 defaultValue:(id)a4 settingsType:(unint64_t)a5 block:(id)a6;
- (id)_hasDismissedWalletKeyFeatureOnboardingForKeyPath:(id)a3 onThisDeviceKeyPath:(id)a4;
- (id)_incrementSettingsValueForKeyPath:(id)a3 stepValue:(int64_t)a4 maximumValue:(int64_t)a5 settingsType:(unint64_t)a6;
- (id)_privateSettings;
- (id)_privateSettingsValueManager;
- (id)_setSettingsValueForKeyPath:(id)a3 settingsType:(unint64_t)a4 usingBlock:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)setDismissedHomeHubMigrationBanner:(BOOL)a3;
- (id)setEnableAnnounce:(BOOL)a3;
- (unint64_t)nameStyle;
@end

@implementation HFUserItem

- (HFUserItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_user_nameStyle_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFUserItem.m" lineNumber:60 description:{@"%s is unavailable; use %@ instead", "-[HFUserItem init]", v5}];

  return 0;
}

- (HFUserItem)initWithHome:(id)a3 user:(id)a4 nameStyle:(unint64_t)a5
{
  v8 = MEMORY[0x277CBEBD0];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithSuiteName:@"com.apple.Home.group"];
  v12 = [(HFUserItem *)self initWithHome:v10 user:v9 nameStyle:a5 userDefaults:v11];

  return v12;
}

- (HFUserItem)initWithHome:(id)a3 user:(id)a4 nameStyle:(unint64_t)a5 userDefaults:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = HFUserItem;
  v14 = [(HFUserItem *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_home, a3);
    objc_storeStrong(&v15->_hf_home, v15->_home);
    objc_storeStrong(&v15->_user, a4);
    v16 = [[HFUserNameFormatter alloc] initWithHome:v11];
    userNameFormatter = v15->_userNameFormatter;
    v15->_userNameFormatter = v16;

    [(HFUserNameFormatter *)v15->_userNameFormatter setStyle:a5];
    objc_storeStrong(&v15->_userDefaults, a6);
    v18 = [MEMORY[0x277CCAD78] UUID];
    uniqueIdentifier = v15->_uniqueIdentifier;
    v15->_uniqueIdentifier = v18;

    v15->_isItemGroup = 0;
    v15->_isContainedWithinItemGroup = 0;
    v15->_numberOfItemsContainedWithinGroup = 0;
  }

  return v15;
}

+ (NSMutableDictionary)_fakeHMSettings
{
  if (_MergedGlobals_4_2 != -1)
  {
    dispatch_once(&_MergedGlobals_4_2, &__block_literal_global_33_2);
  }

  v3 = qword_27C84C510;

  return v3;
}

void __29__HFUserItem__fakeHMSettings__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = qword_27C84C510;
  qword_27C84C510 = v0;
}

- (unint64_t)nameStyle
{
  v2 = [(HFUserItem *)self userNameFormatter];
  v3 = [v2 style];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HFUserItem allocWithZone:a3];
  v5 = [(HFUserItem *)self home];
  v6 = [(HFUserItem *)self user];
  v7 = [(HFUserItem *)v4 initWithHome:v5 user:v6 nameStyle:[(HFUserItem *)self nameStyle]];

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v5 = [(HFUserItem *)self home];
  v6 = [(HFUserItem *)self user];
  v7 = [v5 hf_handleForUser:v6];

  if (v7)
  {
    v8 = [(HFUserItem *)self userNameFormatter];
    [v8 stringForObjectValue:v7];
  }

  else
  {
    v8 = [(HFUserItem *)self user];
    [v8 name];
  }
  v9 = ;

  [(HFMutableItemUpdateOutcome *)v4 setObject:v7 forKeyedSubscript:@"userID"];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v9 forKeyedSubscript:@"title"];
  v10 = [(HFUserItem *)self _accessDescription];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v10 forKeyedSubscript:@"userAccessDescription"];

  [(HFMutableItemUpdateOutcome *)v4 setObject:@"Home.HomeSettings.UserHandle" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  v11 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v11;
}

- (NSString)description
{
  v3 = [(HFUserItem *)self home];
  v4 = [v3 currentUser];
  v5 = [(HFUserItem *)self user];

  if (v4 == v5)
  {
    v11.receiver = self;
    v11.super_class = HFUserItem;
    v9 = [(HFItem *)&v11 description];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(HFItem *)self latestResults];
    v8 = [v7 objectForKeyedSubscript:@"title"];
    v9 = [v6 stringWithFormat:@"<HFUserItem: %p> %{sensitive}@ (non-current user)", self, v8];
  }

  return v9;
}

- (id)_accessDescription
{
  v3 = _HFLocalizedStringWithDefaultValue(@"HFUserAccessDescription", @"HFUserAccessDescription", 1);
  v4 = [(HFUserItem *)self home];
  v5 = [(HFUserItem *)self user];
  v6 = [v4 hf_userIsOwner:v5];

  if (v6)
  {
    v7 = @"HFUserOwnerAccessSuffix";
LABEL_5:
    v11 = _HFLocalizedStringWithDefaultValue(v7, v7, 1);
    v12 = [v3 stringByAppendingFormat:@" %@", v11];
LABEL_6:

    v3 = v12;
    goto LABEL_7;
  }

  v8 = [(HFUserItem *)self home];
  v9 = [(HFUserItem *)self user];
  v10 = [v8 hf_userIsAdministrator:v9];

  if (v10)
  {
    v7 = @"HFUserAdminAccessSuffix";
    goto LABEL_5;
  }

  v14 = [(HFUserItem *)self home];
  v15 = [(HFUserItem *)self user];
  v16 = [v14 hf_userIsRestrictedGuest:v15];

  if (v16)
  {
    v17 = [(HFUserItem *)self home];
    v18 = [(HFUserItem *)self user];
    v11 = [v17 homeAccessControlForUser:v18];

    v19 = [v11 restrictedGuestAccessSettings];
    v20 = [v19 guestAccessSchedule];
    v21 = [HFScheduleBuilder scheduleBuilderFromHomeAccessSchedule:v20];
    v22 = [v21 build];

    v12 = [HFScheduleUtilities localizedStringForSchedule:v22];

    v3 = v19;
    goto LABEL_6;
  }

LABEL_7:

  return v3;
}

- (NSSet)hf_dependentHomeKitObjectsForDownstreamItems
{
  v3 = objc_opt_new();
  [v3 addObject:self];
  v4 = [(HFUserItem *)self settings];
  [v3 na_safeAddObject:v4];

  v5 = [(HFUserItem *)self _privateSettings];
  [v3 na_safeAddObject:v5];

  return v3;
}

- (HFHomeKitSettingsAdapterManager)hf_settingsAdapterManager
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = [[HFHomeKitSettingsAdapterManager alloc] initWithHomeKitSettingsVendor:self];
    objc_setAssociatedObject(self, a2, v4, 1);
  }

  return v4;
}

- (HFHomeKitSettingsValueManager)hf_settingsValueManager
{
  v4 = [(HFUserItem *)self settings];

  if (v4)
  {
    v4 = objc_getAssociatedObject(self, a2);
    if (!v4)
    {
      v5 = [HFHomeKitSettingsValueManager alloc];
      v6 = [(HFUserItem *)self settings];
      v7 = [(HFUserItem *)self homekitObjectIdentifiers];
      v4 = [(HFHomeKitSettingsValueManager *)v5 initWithSettings:v6 homeKitObjectIdentifiers:v7];

      objc_setAssociatedObject(self, a2, v4, 1);
    }
  }

  return v4;
}

- (HMSettings)settings
{
  v3 = [(HFUserItem *)self user];
  v4 = [(HFUserItem *)self home];
  v5 = [v3 userSettingsForHome:v4];

  v6 = [v5 settings];

  return v6;
}

- (BOOL)hasValidSettings
{
  v2 = [(HFUserItem *)self settings];
  v3 = [v2 rootGroup];
  v4 = v3 != 0;

  return v4;
}

- (id)_privateSettingsValueManager
{
  v4 = [(HFUserItem *)self _privateSettings];

  if (v4)
  {
    v4 = objc_getAssociatedObject(self, a2);
    if (!v4)
    {
      v5 = [HFHomeKitSettingsValueManager alloc];
      v6 = [(HFUserItem *)self _privateSettings];
      v7 = [(HFUserItem *)self homekitObjectIdentifiers];
      v4 = [(HFHomeKitSettingsValueManager *)v5 initWithSettings:v6 homeKitObjectIdentifiers:v7];

      objc_setAssociatedObject(self, a2, v4, 1);
    }
  }

  return v4;
}

- (id)_privateSettings
{
  v3 = [(HFUserItem *)self user];
  v4 = [(HFUserItem *)self home];
  v5 = [v3 userSettingsForHome:v4];

  v6 = [v5 privateSettings];

  return v6;
}

- (BOOL)_hasValidPrivateSettings
{
  v2 = [(HFUserItem *)self _privateSettings];
  v3 = [v2 rootGroup];
  v4 = v3 != 0;

  return v4;
}

- (id)_getSettingsValueForKeyPath:(id)a3 defaultValue:(id)a4 settingsType:(unint64_t)a5 block:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a5)
  {
    v13 = [(HFUserItem *)self _privateSettings];
    v14 = [(HFUserItem *)self _privateSettingsValueManager];
    if (![(HFUserItem *)self _hasValidPrivateSettings])
    {
      v15 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412802;
        v27 = self;
        v28 = 2112;
        v29 = v10;
        v30 = 2112;
        v31 = v11;
        v16 = "%@ Read setting %@ failed - invalid private settings, returning default value %@";
LABEL_19:
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, v16, &v26, 0x20u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

LABEL_6:
    if (!v14)
    {
      NSLog(&cfstr_ValueManagerWa.isa);
    }

    v17 = [v13 hf_accessorySettingAtKeyPath:v10];
    objc_opt_class();
    v18 = [v14 valueForSetting:v17];
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = HFLogForCategory(0x3EuLL);
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138413058;
        v27 = self;
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = v20;
        _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Read setting item '%@/%@/%@' : value: %@", &v26, 0x2Au);
      }

      v23 = v20;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v26 = 138413058;
        v27 = self;
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = v11;
        _os_log_error_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_ERROR, "READ HMSETTING FAILED '%@/%@/%@' - returning default value: %@", &v26, 0x2Au);
      }

      v18 = v11;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    v12[2](v12, v17, v14);
LABEL_16:

    goto LABEL_21;
  }

  v13 = [(HFUserItem *)self settings];
  v14 = [(HFUserItem *)self hf_settingsValueManager];
  if ([(HFUserItem *)self hasValidSettings])
  {
    goto LABEL_6;
  }

  v15 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412802;
    v27 = self;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    v16 = "%@ Read setting %@ failed - invalid settings, returning default value %@";
    goto LABEL_19;
  }

LABEL_20:

  v18 = v11;
LABEL_21:

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_setSettingsValueForKeyPath:(id)a3 settingsType:(unint64_t)a4 usingBlock:(id)a5
{
  *&v33[11] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (a4)
  {
    v11 = [(HFUserItem *)self _privateSettings];
    v12 = [(HFUserItem *)self _privateSettingsValueManager];
    v13 = [(HFUserItem *)self _hasValidPrivateSettings];
  }

  else
  {
    v11 = [(HFUserItem *)self settings];
    v12 = [(HFUserItem *)self hf_settingsValueManager];
    v13 = [(HFUserItem *)self hasValidSettings];
  }

  v14 = v13;
  if (v13 && v12)
  {
    v15 = [v11 hf_accessorySettingAtKeyPath:v9];
    v16 = v10[2](v10, v15, v12);
    v17 = HFLogForCategory(0x3EuLL);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v26 = 138413058;
        v27 = self;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v9;
        v32 = 2112;
        *v33 = v16;
        _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Updating setting item '%@/%@/%@' to value: %@", &v26, 0x2Au);
      }

      v19 = [v12 changeValueForSetting:v15 toValue:v16];
    }

    else
    {
      if (v18)
      {
        v26 = 138412802;
        v27 = self;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Setting item '%@/%@/%@' not updated", &v26, 0x20u);
      }

      v19 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v21 = v19;
  }

  else
  {
    v20 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v26 = 138413314;
      v25 = @"private";
      v27 = v24;
      v28 = 2112;
      if (!a4)
      {
        v25 = @"public";
      }

      v29 = v25;
      v30 = 2112;
      v31 = self;
      v32 = 1024;
      *v33 = v14;
      v33[2] = 2112;
      *&v33[3] = v12;
      _os_log_error_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_ERROR, "%@: No valid %@ settings or value manager found on user: %@ - valid settings %{BOOL}d, value manager %@", &v26, 0x30u);
    }

    v21 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)_isSettingsValueForKeyPath:(id)a3 atMaximumValue:(int64_t)a4 settingsType:(unint64_t)a5
{
  v6 = [(HFUserItem *)self _getSettingsValueForKeyPath:a3 defaultValue:&unk_282524240 settingsType:a5 block:0];
  v7 = [v6 integerValue];

  return v7 >= a4;
}

- (id)_incrementSettingsValueForKeyPath:(id)a3 stepValue:(int64_t)a4 maximumValue:(int64_t)a5 settingsType:(unint64_t)a6
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HFUserItem__incrementSettingsValueForKeyPath_stepValue_maximumValue_settingsType___block_invoke;
  v8[3] = &__block_descriptor_48_e63___NSNumber_24__0__HMSetting_8__HFHomeKitSettingsValueManager_16l;
  v8[4] = a5;
  v8[5] = a4;
  v6 = [(HFUserItem *)self _setSettingsValueForKeyPath:a3 settingsType:a6 usingBlock:v8];

  return v6;
}

id __84__HFUserItem__incrementSettingsValueForKeyPath_stepValue_maximumValue_settingsType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  v7 = [v6 valueForSetting:v5];
  v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
  v9 = v8;
  v10 = [v9 integerValue];

  if (v10 < *(a1 + 32))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40) + v10];
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

  return v11;
}

- (BOOL)hasDismissedCameraUpgradeBanner
{
  if (+[HFCameraUtilities forceDisplayOfDismissedCameraUpgradeBanner])
  {
    return 0;
  }

  return [(HFUserItem *)self _getBoolSettingsValueForKeyPath:@"root.home.dismissedCameraUpgradeOfferBanner" defaultValue:1 settingsType:1];
}

- (BOOL)hasDismissedWelcomeUIBanner
{
  v3 = +[HFLocalSettingCachingUtility sharedInstance];
  v4 = [(HFUserItem *)self hf_home];
  v5 = [v3 getWelcomeBannerDismissedLocalCachedValue:v4];

  if (v5)
  {
    return 1;
  }

  return [(HFUserItem *)self _getBoolSettingsValueForKeyPath:@"root.home.dismissedWelcomeUI" defaultValue:0 settingsType:1];
}

- (id)setEnableAnnounce:(BOOL)a3
{
  v5 = [(HFUserItem *)self home];
  v6 = [(HFUserItem *)self user];
  v7 = [v5 homeAccessControlForUser:v6];

  v8 = MEMORY[0x277D2C900];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__HFUserItem_setEnableAnnounce___block_invoke;
  v12[3] = &unk_277DF4EF0;
  v13 = v7;
  v14 = a3;
  v9 = v7;
  v10 = [v8 futureWithBlock:v12];

  return v10;
}

void __32__HFUserItem_setEnableAnnounce___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__HFUserItem_setEnableAnnounce___block_invoke_2;
  v7[3] = &unk_277DF2D08;
  v8 = v3;
  v6 = v3;
  [v4 updateAnnounceAccess:v5 completionHandler:v7];
}

uint64_t __32__HFUserItem_setEnableAnnounce___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) finishWithError:a2];
  }

  v3 = *(a1 + 32);

  return [v3 finishWithNoResult];
}

- (BOOL)isAnnounceEnabled
{
  v3 = [(HFUserItem *)self home];
  v4 = [(HFUserItem *)self user];
  v5 = [v3 homeAccessControlForUser:v4];

  LOBYTE(v4) = [v5 isAnnounceAccessAllowed];
  return v4;
}

- (id)_hasDismissedWalletKeyFeatureOnboardingForKeyPath:(id)a3 onThisDeviceKeyPath:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(HFUserItem *)self _getBoolSettingsValueForKeyPath:a3 defaultValue:1 settingsType:1])
  {
    v7 = [(HFUserItem *)self home];
    v8 = [v7 hf_walletKeyUUID];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __84__HFUserItem__hasDismissedWalletKeyFeatureOnboardingForKeyPath_onThisDeviceKeyPath___block_invoke;
    v13[3] = &unk_277DFCB20;
    v13[4] = self;
    v14 = v6;
    v15 = 1;
    v9 = [v8 flatMap:v13];
  }

  else
  {
    v10 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[HFUserItem _hasDismissedWalletKeyFeatureOnboardingForKeyPath:onThisDeviceKeyPath:]";
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "(%s) home level flag is not onboarded. Returning NO since user can't onboard if home isn't onboarded.", buf, 0xCu);
    }

    v9 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

id __84__HFUserItem__hasDismissedWalletKeyFeatureOnboardingForKeyPath_onThisDeviceKeyPath___block_invoke(uint64_t a1, void *a2)
{
  *&v44[5] = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [*(a1 + 32) userDefaults];
    if (!v7)
    {
      v8 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v36 = 136315138;
        v37 = "[HFUserItem _hasDismissedWalletKeyFeatureOnboardingForKeyPath:onThisDeviceKeyPath:]_block_invoke";
        _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "(%s) Failed to fetch shared app suite user defaults!", &v36, 0xCu);
      }
    }

    v9 = [v7 dictionaryForKey:*(a1 + 40)];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 allKeys];
      v12 = [v6 UUIDString];
      v13 = [v11 containsObject:v12];

      if ((v13 & 1) == 0)
      {
        v14 = HFLogForCategory(0x3EuLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v10 allKeys];
          v16 = [v15 count];
          v36 = 136316418;
          v37 = "[HFUserItem _hasDismissedWalletKeyFeatureOnboardingForKeyPath:onThisDeviceKeyPath:]_block_invoke";
          v38 = 2112;
          *v39 = v10;
          *&v39[8] = 2048;
          v40 = v16;
          *v41 = 2112;
          *&v41[2] = v6;
          strcpy(&v42, "p\bhash");
          HIBYTE(v42) = 0;
          v43 = 0;
          LOWORD(v44[0]) = 2112;
          *(v44 + 2) = v6;
          _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "(%s) dict does NOT contain wallet key uuid. dict = %@ | keys.count = %ld | walletKeyUUID = %@ (Hashed walletKeyUUID = %{mask.hash}@)", &v36, 0x3Eu);
        }
      }

      v17 = [v6 UUIDString];
      v18 = [v10 objectForKey:v17];

      if (!v18)
      {
        v19 = HFLogForCategory(0x3EuLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v10 allKeys];
          v21 = [v20 count];
          v36 = 136316418;
          v37 = "[HFUserItem _hasDismissedWalletKeyFeatureOnboardingForKeyPath:onThisDeviceKeyPath:]_block_invoke";
          v38 = 2112;
          *v39 = v10;
          *&v39[8] = 2048;
          v40 = v21;
          *v41 = 2112;
          *&v41[2] = v6;
          strcpy(&v42, "p\bhash");
          HIBYTE(v42) = 0;
          v43 = 0;
          LOWORD(v44[0]) = 2112;
          *(v44 + 2) = v6;
          _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "(%s) hasDismissedOnThisDeviceObj is NOT found among dict %@ (count = %ld | walletKeyUUID = %@ (uuid hashed = %{mask.hash}@)", &v36, 0x3Eu);
        }
      }

      objc_opt_class();
      v22 = v18;
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      if (v22 && !v24)
      {
        v25 = HFLogForCategory(0x3EuLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 136315394;
          v37 = "[HFUserItem _hasDismissedWalletKeyFeatureOnboardingForKeyPath:onThisDeviceKeyPath:]_block_invoke";
          v38 = 2112;
          *v39 = v22;
          _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_DEFAULT, "(%s) hasDismissedOnThisDeviceObj is NOT an NSNumber. hasDismissedOnThisDeviceObj = %@", &v36, 0x16u);
        }
      }
    }

    else
    {
      v22 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 136315394;
        v37 = "[HFUserItem _hasDismissedWalletKeyFeatureOnboardingForKeyPath:onThisDeviceKeyPath:]_block_invoke";
        v38 = 2112;
        *v39 = v7;
        _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "(%s) dictionary is nil for 'onThisDevice' key. defaults = %@", &v36, 0x16u);
      }
    }

    v27 = [v6 UUIDString];
    v26 = [v10 hmf_BOOLForKey:v27];
  }

  else
  {
    v26 = 1;
  }

  v28 = *(a1 + 48) & v26;
  v29 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 48);
    v36 = 136316674;
    v37 = "[HFUserItem _hasDismissedWalletKeyFeatureOnboardingForKeyPath:onThisDeviceKeyPath:]_block_invoke";
    v38 = 1024;
    *v39 = v30;
    *&v39[4] = 1024;
    *&v39[6] = v26;
    LOWORD(v40) = 1024;
    *(&v40 + 2) = v28 & 1;
    HIWORD(v40) = 2112;
    *v41 = v6;
    *&v41[8] = 2160;
    v42 = 1752392040;
    v43 = 2112;
    *v44 = v6;
    _os_log_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEFAULT, "(%s) hasDismissedForHome = %{BOOL}d. hasDismissedOnThisDevice = %{BOOL}d. result = %{BOOL}d | walletKeyUUID = %@ (uuid hashed = %{mask.hash}@)", &v36, 0x3Cu);
  }

  v31 = MEMORY[0x277D2C900];
  v32 = [MEMORY[0x277CCABB0] numberWithBool:v28 & 1];
  v33 = [v31 futureWithResult:v32];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

void __112__HFUserItem__setDismissWalletKeyFeatureOnboarding_forWalletKeyUUID_featureDescription_keyPath_keyOnThisDevice___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    v20 = 138413826;
    v21 = v5;
    v22 = 2080;
    v23 = "[HFUserItem _setDismissWalletKeyFeatureOnboarding:forWalletKeyUUID:featureDescription:keyPath:keyOnThisDevice:]_block_invoke";
    v24 = 2112;
    v25 = v6;
    v26 = 1024;
    v27 = v7;
    v28 = 2112;
    v29 = v3;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "(%@:%s) Setting Wallet Key %@ Onboarding value: %{BOOL}d for walletKeyUUID: %@ (uuid hashed = %{mask.hash}@)", &v20, 0x44u);
  }

  v8 = [*(a1 + 32) userDefaults];
  if (!v8)
  {
    v9 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = 138412802;
      v21 = v18;
      v22 = 2080;
      v23 = "[HFUserItem _setDismissWalletKeyFeatureOnboarding:forWalletKeyUUID:featureDescription:keyPath:keyOnThisDevice:]_block_invoke";
      v24 = 2112;
      v25 = v19;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "(%@:%s) Failed to fetch shared app suite user defaults for %@", &v20, 0x20u);
    }
  }

  v10 = [v8 dictionaryForKey:*(a1 + 48)];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[HFUserItem _setDismissWalletKeyFeatureOnboarding:forWalletKeyUUID:featureDescription:keyPath:keyOnThisDevice:]_block_invoke";
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "(%s) Dictionary for 'keyOnThisDevice' doesn't exist.", &v20, 0xCu);
    }
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v14 = [v3 UUIDString];
  [v11 setObject:v13 forKey:v14];

  [v8 setObject:v11 forKey:*(a1 + 48)];
  v15 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v11 count];
    v20 = 136315650;
    v21 = "[HFUserItem _setDismissWalletKeyFeatureOnboarding:forWalletKeyUUID:featureDescription:keyPath:keyOnThisDevice:]_block_invoke";
    v22 = 2112;
    v23 = v11;
    v24 = 2048;
    v25 = v16;
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "(%s) Updating wallet key feature onboarding | dict = %@ (count = %lu) ", &v20, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __112__HFUserItem__setDismissWalletKeyFeatureOnboarding_forWalletKeyUUID_featureDescription_keyPath_keyOnThisDevice___block_invoke_92(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 16);
  v5 = a2;
  v4(v2, v3);
  [v5 finishWithNoResult];
}

id __112__HFUserItem__setDismissWalletKeyFeatureOnboarding_forWalletKeyUUID_featureDescription_keyPath_keyOnThisDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 walletKey];
  v4 = [v3 UUID];

  v5 = HFLogForCategory(0x3EuLL);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315906;
      v14 = "[HFUserItem _setDismissWalletKeyFeatureOnboarding:forWalletKeyUUID:featureDescription:keyPath:keyOnThisDevice:]_block_invoke_2";
      v15 = 2112;
      v16 = v4;
      v17 = 2160;
      v18 = 1752392040;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "(%s) Fetched wallet key UUID %@ (hashed uuid = %{mask.hash}@)", &v13, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 56);
      v13 = 138413058;
      v14 = v10;
      v15 = 2080;
      v16 = "[HFUserItem _setDismissWalletKeyFeatureOnboarding:forWalletKeyUUID:featureDescription:keyPath:keyOnThisDevice:]_block_invoke";
      v17 = 2112;
      v18 = v11;
      v19 = 1024;
      LODWORD(v20) = v12;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "(%@:%s) Attempting to set wallet key %@ onboarding value: %{BOOL}d but it looks like Wallet Key doesn't exist!", &v13, 0x26u);
    }
  }

  v7 = [MEMORY[0x277D2C900] futureWithNoResult];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSSet)homekitObjectIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFUserItem *)self user];
  v4 = [v3 uniqueIdentifier];
  v5 = [v2 na_setWithSafeObject:v4];

  return v5;
}

- (BOOL)hasDismissedAudioAnalysisOnboardingOnThisDevice
{
  v3 = [(HFUserItem *)self userDefaults];
  if (!v3)
  {
    v4 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch shared app suite user defaults!", v11, 2u);
    }
  }

  v5 = [v3 dictionaryForKey:@"HFUserHasDismissedAudioAnalysisOnboarding"];
  v6 = [(HFUserItem *)self home];
  v7 = [v6 uniqueIdentifier];
  v8 = [v7 UUIDString];
  v9 = [v5 hmf_BOOLForKey:v8];

  return v9;
}

- (BOOL)hasDismissedHomeHubMigrationBanner
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [(HFUserItem *)self userDefaults];
  if (!v3)
  {
    v4 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch shared app suite user defaults!", buf, 2u);
    }
  }

  v5 = [v3 dictionaryForKey:@"HFUserHasDismissedHomeHubMigrationBannerForThisDevice"];
  v6 = v5;
  if (v5)
  {
    v29 = 0;
    v7 = [v5 hmf_integerForKey:@"majorVersion" error:&v29];
    v8 = v29;
    if (v8)
    {
      v9 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v8;
        _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Failed to decode major OS version for when home hub migration banner was dismissed! Error: %@", buf, 0xCu);
      }

LABEL_16:
      v10 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v28 = 0;
    v11 = [v6 hmf_integerForKey:@"minorVersion" error:&v28];
    v12 = v28;
    if (v12)
    {
      v9 = v12;
      v13 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v9;
        _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Failed to decode minor OS version for when home hub migration banner was dismissed! Error: %@", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v16 = [MEMORY[0x277CCAC38] processInfo];
    v17 = v16;
    if (v16)
    {
      [v16 operatingSystemVersion];
    }

    v18 = v11 < 0 && v7 == 0;
    if (v7 < 0 || v18)
    {
      v21 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        v31 = v7;
        v32 = 2048;
        v33 = v11;
        v34 = 2048;
        v35 = 0;
        v36 = 2048;
        v37 = 0;
        _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring previous user dismissal for home hub migration banner due to updated system software. Previous OS version: %ld.%ld | Current OS version: %ld.%ld", buf, 0x2Au);
      }

      v10 = 0;
      goto LABEL_39;
    }

    objc_opt_class();
    v19 = [v3 valueForKey:@"HFUserHasDismissedHomeHubMigrationBannerDismissalDate"];
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v22 = [(HFUserItem *)self _hasDismissalExpired:v21];
    v23 = HFLogForCategory(0x3EuLL);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v24)
      {
        *buf = 138412546;
        v31 = v21;
        v32 = 1024;
        LODWORD(v33) = 1;
        v25 = "Ignoring previous user dismissal for home hub migration banner due to dismissal expired after 2 weeks | dismissalDate: %@ | hasExpired: %{BOOL}d ";
        v26 = v23;
        v27 = 18;
LABEL_37:
        _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }
    }

    else if (v24)
    {
      *buf = 134219266;
      v31 = v7;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = 0;
      v36 = 2048;
      v37 = 0;
      v38 = 2112;
      v39 = v21;
      v40 = 1024;
      v41 = 0;
      v25 = "User did previously dismiss home hub migration banner on OS version: %ld.%ld | Current OS version: %ld.%ld | dismissalDate: %@ | hasExpired: %{BOOL}d";
      v26 = v23;
      v27 = 58;
      goto LABEL_37;
    }

    v10 = !v22;
LABEL_39:

    v9 = 0;
    goto LABEL_17;
  }

  v8 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "User defaults for home hub migration banner dismissal with major/minor OS version does not exist!", buf, 2u);
  }

  v10 = 0;
LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)setDismissedHomeHubMigrationBanner:(BOOL)a3
{
  v3 = a3;
  v4 = [(HFUserItem *)self userDefaults];
  if (!v4)
  {
    v5 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch shared app suite user defaults!", &v15, 2u);
    }
  }

  v6 = [v4 dictionaryForKey:@"HFUserHasDismissedHomeHubMigrationBannerForThisDevice"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = 0;
  v17 = 0;
  v8 = [MEMORY[0x277CCAC38] processInfo];
  v9 = v8;
  if (v8)
  {
    [v8 operatingSystemVersion];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  [v7 setObject:v10 forKey:@"majorVersion"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
  [v7 setObject:v11 forKey:@"minorVersion"];

  [v4 setObject:v7 forKey:@"HFUserHasDismissedHomeHubMigrationBannerForThisDevice"];
  if (v3)
  {
    v12 = [MEMORY[0x277CBEAA8] date];
    [v4 setObject:v12 forKey:@"HFUserHasDismissedHomeHubMigrationBannerDismissalDate"];
  }

  v13 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v13;
}

- (BOOL)_hasDismissalExpired:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = [MEMORY[0x277CBEAA8] date];
    v3 = [v4 hf_dateByAddingDays:-20 toDate:v5];
  }

  v6 = MEMORY[0x277CBEAA8];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 hf_daysBetweenDates:v3 endDate:v7];

  return v8 > 13;
}

@end