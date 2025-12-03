@interface HFUserItem
+ (NSMutableDictionary)_fakeHMSettings;
- (BOOL)_hasDismissalExpired:(id)expired;
- (BOOL)_hasValidPrivateSettings;
- (BOOL)_isSettingsValueForKeyPath:(id)path atMaximumValue:(int64_t)value settingsType:(unint64_t)type;
- (BOOL)hasDismissedAudioAnalysisOnboardingOnThisDevice;
- (BOOL)hasDismissedCameraUpgradeBanner;
- (BOOL)hasDismissedHomeHubMigrationBanner;
- (BOOL)hasDismissedWelcomeUIBanner;
- (BOOL)hasValidSettings;
- (BOOL)isAnnounceEnabled;
- (HFHomeKitSettingsAdapterManager)hf_settingsAdapterManager;
- (HFHomeKitSettingsValueManager)hf_settingsValueManager;
- (HFUserItem)init;
- (HFUserItem)initWithHome:(id)home user:(id)user nameStyle:(unint64_t)style;
- (HFUserItem)initWithHome:(id)home user:(id)user nameStyle:(unint64_t)style userDefaults:(id)defaults;
- (HMSettings)settings;
- (NSSet)hf_dependentHomeKitObjectsForDownstreamItems;
- (NSSet)homekitObjectIdentifiers;
- (NSString)description;
- (id)_accessDescription;
- (id)_getSettingsValueForKeyPath:(id)path defaultValue:(id)value settingsType:(unint64_t)type block:(id)block;
- (id)_hasDismissedWalletKeyFeatureOnboardingForKeyPath:(id)path onThisDeviceKeyPath:(id)keyPath;
- (id)_incrementSettingsValueForKeyPath:(id)path stepValue:(int64_t)value maximumValue:(int64_t)maximumValue settingsType:(unint64_t)type;
- (id)_privateSettings;
- (id)_privateSettingsValueManager;
- (id)_setSettingsValueForKeyPath:(id)path settingsType:(unint64_t)type usingBlock:(id)block;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)setDismissedHomeHubMigrationBanner:(BOOL)banner;
- (id)setEnableAnnounce:(BOOL)announce;
- (unint64_t)nameStyle;
@end

@implementation HFUserItem

- (HFUserItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_user_nameStyle_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFUserItem.m" lineNumber:60 description:{@"%s is unavailable; use %@ instead", "-[HFUserItem init]", v5}];

  return 0;
}

- (HFUserItem)initWithHome:(id)home user:(id)user nameStyle:(unint64_t)style
{
  v8 = MEMORY[0x277CBEBD0];
  userCopy = user;
  homeCopy = home;
  v11 = [[v8 alloc] initWithSuiteName:@"com.apple.Home.group"];
  v12 = [(HFUserItem *)self initWithHome:homeCopy user:userCopy nameStyle:style userDefaults:v11];

  return v12;
}

- (HFUserItem)initWithHome:(id)home user:(id)user nameStyle:(unint64_t)style userDefaults:(id)defaults
{
  homeCopy = home;
  userCopy = user;
  defaultsCopy = defaults;
  v21.receiver = self;
  v21.super_class = HFUserItem;
  v14 = [(HFUserItem *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_home, home);
    objc_storeStrong(&v15->_hf_home, v15->_home);
    objc_storeStrong(&v15->_user, user);
    v16 = [[HFUserNameFormatter alloc] initWithHome:homeCopy];
    userNameFormatter = v15->_userNameFormatter;
    v15->_userNameFormatter = v16;

    [(HFUserNameFormatter *)v15->_userNameFormatter setStyle:style];
    objc_storeStrong(&v15->_userDefaults, defaults);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uniqueIdentifier = v15->_uniqueIdentifier;
    v15->_uniqueIdentifier = uUID;

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
  userNameFormatter = [(HFUserItem *)self userNameFormatter];
  style = [userNameFormatter style];

  return style;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFUserItem allocWithZone:zone];
  home = [(HFUserItem *)self home];
  user = [(HFUserItem *)self user];
  v7 = [(HFUserItem *)v4 initWithHome:home user:user nameStyle:[(HFUserItem *)self nameStyle]];

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  home = [(HFUserItem *)self home];
  user = [(HFUserItem *)self user];
  v7 = [home hf_handleForUser:user];

  if (v7)
  {
    userNameFormatter = [(HFUserItem *)self userNameFormatter];
    [userNameFormatter stringForObjectValue:v7];
  }

  else
  {
    userNameFormatter = [(HFUserItem *)self user];
    [userNameFormatter name];
  }
  v9 = ;

  [(HFMutableItemUpdateOutcome *)v4 setObject:v7 forKeyedSubscript:@"userID"];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v9 forKeyedSubscript:@"title"];
  _accessDescription = [(HFUserItem *)self _accessDescription];
  [(HFMutableItemUpdateOutcome *)v4 setObject:_accessDescription forKeyedSubscript:@"userAccessDescription"];

  [(HFMutableItemUpdateOutcome *)v4 setObject:@"Home.HomeSettings.UserHandle" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  v11 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v11;
}

- (NSString)description
{
  home = [(HFUserItem *)self home];
  currentUser = [home currentUser];
  user = [(HFUserItem *)self user];

  if (currentUser == user)
  {
    v11.receiver = self;
    v11.super_class = HFUserItem;
    v9 = [(HFItem *)&v11 description];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    latestResults = [(HFItem *)self latestResults];
    v8 = [latestResults objectForKeyedSubscript:@"title"];
    v9 = [v6 stringWithFormat:@"<HFUserItem: %p> %{sensitive}@ (non-current user)", self, v8];
  }

  return v9;
}

- (id)_accessDescription
{
  v3 = _HFLocalizedStringWithDefaultValue(@"HFUserAccessDescription", @"HFUserAccessDescription", 1);
  home = [(HFUserItem *)self home];
  user = [(HFUserItem *)self user];
  v6 = [home hf_userIsOwner:user];

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

  home2 = [(HFUserItem *)self home];
  user2 = [(HFUserItem *)self user];
  v10 = [home2 hf_userIsAdministrator:user2];

  if (v10)
  {
    v7 = @"HFUserAdminAccessSuffix";
    goto LABEL_5;
  }

  home3 = [(HFUserItem *)self home];
  user3 = [(HFUserItem *)self user];
  v16 = [home3 hf_userIsRestrictedGuest:user3];

  if (v16)
  {
    home4 = [(HFUserItem *)self home];
    user4 = [(HFUserItem *)self user];
    v11 = [home4 homeAccessControlForUser:user4];

    restrictedGuestAccessSettings = [v11 restrictedGuestAccessSettings];
    guestAccessSchedule = [restrictedGuestAccessSettings guestAccessSchedule];
    v21 = [HFScheduleBuilder scheduleBuilderFromHomeAccessSchedule:guestAccessSchedule];
    build = [v21 build];

    v12 = [HFScheduleUtilities localizedStringForSchedule:build];

    v3 = restrictedGuestAccessSettings;
    goto LABEL_6;
  }

LABEL_7:

  return v3;
}

- (NSSet)hf_dependentHomeKitObjectsForDownstreamItems
{
  v3 = objc_opt_new();
  [v3 addObject:self];
  settings = [(HFUserItem *)self settings];
  [v3 na_safeAddObject:settings];

  _privateSettings = [(HFUserItem *)self _privateSettings];
  [v3 na_safeAddObject:_privateSettings];

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
  settings = [(HFUserItem *)self settings];

  if (settings)
  {
    settings = objc_getAssociatedObject(self, a2);
    if (!settings)
    {
      v5 = [HFHomeKitSettingsValueManager alloc];
      settings2 = [(HFUserItem *)self settings];
      homekitObjectIdentifiers = [(HFUserItem *)self homekitObjectIdentifiers];
      settings = [(HFHomeKitSettingsValueManager *)v5 initWithSettings:settings2 homeKitObjectIdentifiers:homekitObjectIdentifiers];

      objc_setAssociatedObject(self, a2, settings, 1);
    }
  }

  return settings;
}

- (HMSettings)settings
{
  user = [(HFUserItem *)self user];
  home = [(HFUserItem *)self home];
  v5 = [user userSettingsForHome:home];

  settings = [v5 settings];

  return settings;
}

- (BOOL)hasValidSettings
{
  settings = [(HFUserItem *)self settings];
  rootGroup = [settings rootGroup];
  v4 = rootGroup != 0;

  return v4;
}

- (id)_privateSettingsValueManager
{
  _privateSettings = [(HFUserItem *)self _privateSettings];

  if (_privateSettings)
  {
    _privateSettings = objc_getAssociatedObject(self, a2);
    if (!_privateSettings)
    {
      v5 = [HFHomeKitSettingsValueManager alloc];
      _privateSettings2 = [(HFUserItem *)self _privateSettings];
      homekitObjectIdentifiers = [(HFUserItem *)self homekitObjectIdentifiers];
      _privateSettings = [(HFHomeKitSettingsValueManager *)v5 initWithSettings:_privateSettings2 homeKitObjectIdentifiers:homekitObjectIdentifiers];

      objc_setAssociatedObject(self, a2, _privateSettings, 1);
    }
  }

  return _privateSettings;
}

- (id)_privateSettings
{
  user = [(HFUserItem *)self user];
  home = [(HFUserItem *)self home];
  v5 = [user userSettingsForHome:home];

  privateSettings = [v5 privateSettings];

  return privateSettings;
}

- (BOOL)_hasValidPrivateSettings
{
  _privateSettings = [(HFUserItem *)self _privateSettings];
  rootGroup = [_privateSettings rootGroup];
  v4 = rootGroup != 0;

  return v4;
}

- (id)_getSettingsValueForKeyPath:(id)path defaultValue:(id)value settingsType:(unint64_t)type block:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  valueCopy = value;
  blockCopy = block;
  if (type)
  {
    _privateSettings = [(HFUserItem *)self _privateSettings];
    _privateSettingsValueManager = [(HFUserItem *)self _privateSettingsValueManager];
    if (![(HFUserItem *)self _hasValidPrivateSettings])
    {
      v15 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412802;
        selfCopy4 = self;
        v28 = 2112;
        v29 = pathCopy;
        v30 = 2112;
        v31 = valueCopy;
        v16 = "%@ Read setting %@ failed - invalid private settings, returning default value %@";
LABEL_19:
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, v16, &v26, 0x20u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

LABEL_6:
    if (!_privateSettingsValueManager)
    {
      NSLog(&cfstr_ValueManagerWa.isa);
    }

    v17 = [_privateSettings hf_accessorySettingAtKeyPath:pathCopy];
    objc_opt_class();
    v18 = [_privateSettingsValueManager valueForSetting:v17];
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
        selfCopy4 = self;
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = pathCopy;
        v32 = 2112;
        v33 = v20;
        _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Read setting item '%@/%@/%@' : value: %@", &v26, 0x2Au);
      }

      v23 = v20;
      if (!blockCopy)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v26 = 138413058;
        selfCopy4 = self;
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = pathCopy;
        v32 = 2112;
        v33 = valueCopy;
        _os_log_error_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_ERROR, "READ HMSETTING FAILED '%@/%@/%@' - returning default value: %@", &v26, 0x2Au);
      }

      v18 = valueCopy;
      if (!blockCopy)
      {
        goto LABEL_16;
      }
    }

    blockCopy[2](blockCopy, v17, _privateSettingsValueManager);
LABEL_16:

    goto LABEL_21;
  }

  _privateSettings = [(HFUserItem *)self settings];
  _privateSettingsValueManager = [(HFUserItem *)self hf_settingsValueManager];
  if ([(HFUserItem *)self hasValidSettings])
  {
    goto LABEL_6;
  }

  v15 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412802;
    selfCopy4 = self;
    v28 = 2112;
    v29 = pathCopy;
    v30 = 2112;
    v31 = valueCopy;
    v16 = "%@ Read setting %@ failed - invalid settings, returning default value %@";
    goto LABEL_19;
  }

LABEL_20:

  v18 = valueCopy;
LABEL_21:

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_setSettingsValueForKeyPath:(id)path settingsType:(unint64_t)type usingBlock:(id)block
{
  *&v33[11] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  blockCopy = block;
  if (type)
  {
    _privateSettings = [(HFUserItem *)self _privateSettings];
    _privateSettingsValueManager = [(HFUserItem *)self _privateSettingsValueManager];
    _hasValidPrivateSettings = [(HFUserItem *)self _hasValidPrivateSettings];
  }

  else
  {
    _privateSettings = [(HFUserItem *)self settings];
    _privateSettingsValueManager = [(HFUserItem *)self hf_settingsValueManager];
    _hasValidPrivateSettings = [(HFUserItem *)self hasValidSettings];
  }

  v14 = _hasValidPrivateSettings;
  if (_hasValidPrivateSettings && _privateSettingsValueManager)
  {
    v15 = [_privateSettings hf_accessorySettingAtKeyPath:pathCopy];
    v16 = blockCopy[2](blockCopy, v15, _privateSettingsValueManager);
    v17 = HFLogForCategory(0x3EuLL);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v26 = 138413058;
        selfCopy2 = self;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        selfCopy3 = pathCopy;
        v32 = 2112;
        *v33 = v16;
        _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Updating setting item '%@/%@/%@' to value: %@", &v26, 0x2Au);
      }

      futureWithNoResult = [_privateSettingsValueManager changeValueForSetting:v15 toValue:v16];
    }

    else
    {
      if (v18)
      {
        v26 = 138412802;
        selfCopy2 = self;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        selfCopy3 = pathCopy;
        _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Setting item '%@/%@/%@' not updated", &v26, 0x20u);
      }

      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    futureWithNoResult2 = futureWithNoResult;
  }

  else
  {
    v20 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v26 = 138413314;
      v25 = @"private";
      selfCopy2 = v24;
      v28 = 2112;
      if (!type)
      {
        v25 = @"public";
      }

      v29 = v25;
      v30 = 2112;
      selfCopy3 = self;
      v32 = 1024;
      *v33 = v14;
      v33[2] = 2112;
      *&v33[3] = _privateSettingsValueManager;
      _os_log_error_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_ERROR, "%@: No valid %@ settings or value manager found on user: %@ - valid settings %{BOOL}d, value manager %@", &v26, 0x30u);
    }

    futureWithNoResult2 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v22 = *MEMORY[0x277D85DE8];

  return futureWithNoResult2;
}

- (BOOL)_isSettingsValueForKeyPath:(id)path atMaximumValue:(int64_t)value settingsType:(unint64_t)type
{
  v6 = [(HFUserItem *)self _getSettingsValueForKeyPath:path defaultValue:&unk_282524240 settingsType:type block:0];
  integerValue = [v6 integerValue];

  return integerValue >= value;
}

- (id)_incrementSettingsValueForKeyPath:(id)path stepValue:(int64_t)value maximumValue:(int64_t)maximumValue settingsType:(unint64_t)type
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HFUserItem__incrementSettingsValueForKeyPath_stepValue_maximumValue_settingsType___block_invoke;
  v8[3] = &__block_descriptor_48_e63___NSNumber_24__0__HMSetting_8__HFHomeKitSettingsValueManager_16l;
  v8[4] = maximumValue;
  v8[5] = value;
  v6 = [(HFUserItem *)self _setSettingsValueForKeyPath:path settingsType:type usingBlock:v8];

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
  hf_home = [(HFUserItem *)self hf_home];
  v5 = [v3 getWelcomeBannerDismissedLocalCachedValue:hf_home];

  if (v5)
  {
    return 1;
  }

  return [(HFUserItem *)self _getBoolSettingsValueForKeyPath:@"root.home.dismissedWelcomeUI" defaultValue:0 settingsType:1];
}

- (id)setEnableAnnounce:(BOOL)announce
{
  home = [(HFUserItem *)self home];
  user = [(HFUserItem *)self user];
  v7 = [home homeAccessControlForUser:user];

  v8 = MEMORY[0x277D2C900];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__HFUserItem_setEnableAnnounce___block_invoke;
  v12[3] = &unk_277DF4EF0;
  v13 = v7;
  announceCopy = announce;
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
  home = [(HFUserItem *)self home];
  user = [(HFUserItem *)self user];
  v5 = [home homeAccessControlForUser:user];

  LOBYTE(user) = [v5 isAnnounceAccessAllowed];
  return user;
}

- (id)_hasDismissedWalletKeyFeatureOnboardingForKeyPath:(id)path onThisDeviceKeyPath:(id)keyPath
{
  v18 = *MEMORY[0x277D85DE8];
  keyPathCopy = keyPath;
  if ([(HFUserItem *)self _getBoolSettingsValueForKeyPath:path defaultValue:1 settingsType:1])
  {
    home = [(HFUserItem *)self home];
    hf_walletKeyUUID = [home hf_walletKeyUUID];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __84__HFUserItem__hasDismissedWalletKeyFeatureOnboardingForKeyPath_onThisDeviceKeyPath___block_invoke;
    v13[3] = &unk_277DFCB20;
    v13[4] = self;
    v14 = keyPathCopy;
    v15 = 1;
    v9 = [hf_walletKeyUUID flatMap:v13];
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
  user = [(HFUserItem *)self user];
  uniqueIdentifier = [user uniqueIdentifier];
  v5 = [v2 na_setWithSafeObject:uniqueIdentifier];

  return v5;
}

- (BOOL)hasDismissedAudioAnalysisOnboardingOnThisDevice
{
  userDefaults = [(HFUserItem *)self userDefaults];
  if (!userDefaults)
  {
    v4 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch shared app suite user defaults!", v11, 2u);
    }
  }

  v5 = [userDefaults dictionaryForKey:@"HFUserHasDismissedAudioAnalysisOnboarding"];
  home = [(HFUserItem *)self home];
  uniqueIdentifier = [home uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v9 = [v5 hmf_BOOLForKey:uUIDString];

  return v9;
}

- (BOOL)hasDismissedHomeHubMigrationBanner
{
  v42 = *MEMORY[0x277D85DE8];
  userDefaults = [(HFUserItem *)self userDefaults];
  if (!userDefaults)
  {
    v4 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch shared app suite user defaults!", buf, 2u);
    }
  }

  v5 = [userDefaults dictionaryForKey:@"HFUserHasDismissedHomeHubMigrationBannerForThisDevice"];
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

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v17 = processInfo;
    if (processInfo)
    {
      [processInfo operatingSystemVersion];
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
    v19 = [userDefaults valueForKey:@"HFUserHasDismissedHomeHubMigrationBannerDismissalDate"];
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

- (id)setDismissedHomeHubMigrationBanner:(BOOL)banner
{
  bannerCopy = banner;
  userDefaults = [(HFUserItem *)self userDefaults];
  if (!userDefaults)
  {
    v5 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch shared app suite user defaults!", &v15, 2u);
    }
  }

  v6 = [userDefaults dictionaryForKey:@"HFUserHasDismissedHomeHubMigrationBannerForThisDevice"];
  dictionary = [v6 mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = 0;
  v17 = 0;
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v9 = processInfo;
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  [dictionary setObject:v10 forKey:@"majorVersion"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
  [dictionary setObject:v11 forKey:@"minorVersion"];

  [userDefaults setObject:dictionary forKey:@"HFUserHasDismissedHomeHubMigrationBannerForThisDevice"];
  if (bannerCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [userDefaults setObject:date forKey:@"HFUserHasDismissedHomeHubMigrationBannerDismissalDate"];
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

- (BOOL)_hasDismissalExpired:(id)expired
{
  expiredCopy = expired;
  if (!expiredCopy)
  {
    v4 = MEMORY[0x277CBEAA8];
    date = [MEMORY[0x277CBEAA8] date];
    expiredCopy = [v4 hf_dateByAddingDays:-20 toDate:date];
  }

  v6 = MEMORY[0x277CBEAA8];
  date2 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 hf_daysBetweenDates:expiredCopy endDate:date2];

  return v8 > 13;
}

@end