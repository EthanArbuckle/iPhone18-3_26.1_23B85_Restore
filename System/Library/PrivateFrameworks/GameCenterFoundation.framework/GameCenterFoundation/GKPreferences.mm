@interface GKPreferences
+ (GKPreferences)shared;
+ (id)displayNameForEnvironment:(int64_t)environment;
+ (id)hostNameForEnvironment:(int64_t)environment;
+ (id)sharedWithSupport:(id)support;
+ (int64_t)environmentForString:(id)string;
- (BOOL)BOOLeanValueForKey:(id)key defaultValue:(BOOL)value;
- (BOOL)HTTPShouldUsePipelining;
- (BOOL)forceDeadlockFetchingUserRecordID;
- (BOOL)inboxContactsOnly;
- (BOOL)isAppInstallationRestricted;
- (BOOL)isFriendRequestsRestricted;
- (BOOL)isGameCenterDisabled;
- (BOOL)isInternalBuild;
- (BOOL)isStoreDemoModeEnabled;
- (BOOL)lockedDown;
- (BOOL)multiplayerHealthCheckEnabled;
- (BOOL)shouldAllowCustomCommunication;
- (BOOL)shouldAllowNearbyMultiplayer;
- (GKPreferences)initWithNotificationsAndSupport:(id)support;
- (GKPreferences)initWithoutNotificationsWithSupport:(id)support;
- (NSArray)forceDisabledTransportVersions;
- (NSArray)forceEnabledTransportVersions;
- (NSDictionary)overrideValues;
- (const)lookupRestrictionLimitsForEachAgeCategory:(int)category;
- (double)timeIntervalForKey:(id)key defaultValue:(double)value;
- (id)dictionaryValueForKey:(id)key;
- (id)effectiveValueForSetting:(id)setting;
- (id)overrideValueForKey:(id)key;
- (id)preferencesValueForKey:(id)key;
- (id)stringValueForKey:(id)key defaultValue:(id)value;
- (int)clampNumericRestriction:(id)restriction tableEntry:(const RestrictionsLimitsForEachAgeCategory *)entry;
- (int)effectiveBoolValueForSetting:(id)setting;
- (int)forceAgeCategory;
- (int)getRestrictionLimitForLocalPlayer:(const RestrictionsLimitsForEachAgeCategory *)player;
- (int)localPlayerAgeCategory;
- (int64_t)environment;
- (int64_t)integerValueForKey:(id)key defaultValue:(int64_t)value;
- (int64_t)recentPlayerPickerSortPreferenceForBundleID:(id)d;
- (int64_t)unsignedIntegerValueForKey:(id)key defaultValue:(int64_t)value;
- (unint64_t)exchangeDataDefaultMaximumSize;
- (unint64_t)exchangeDataMaximumSize;
- (unint64_t)exchangeDefaultMaxInitiatedExchangesPerPlayer;
- (unint64_t)exchangeMaxInitiatedExchangesPerPlayer;
- (unint64_t)maxDefaultGameStateSizeTurnBased;
- (unint64_t)maxDefaultPlayersHosted;
- (unint64_t)maxDefaultPlayersP2P;
- (unint64_t)maxDefaultPlayersTurnBased;
- (unint64_t)maxGameStateSizeTurnBased;
- (unint64_t)maxPlayersHosted;
- (unint64_t)maxPlayersP2P;
- (unint64_t)maxPlayersTurnBased;
- (unint64_t)multiplayerAllowedPlayerType;
- (unint64_t)recentNumberOfPlayersForBundleID:(id)d;
- (void)_didWriteKey:(id)key;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)removeOverrideForKey:(id)key;
- (void)setBooleanValue:(BOOL)value forKey:(id)key;
- (void)setEnvironment:(int64_t)environment;
- (void)setForceAgeCategory:(int)category;
- (void)setForceUnderage:(BOOL)underage;
- (void)setIntegerValue:(int64_t)value forKey:(id)key;
- (void)setOverrideValues:(id)values;
- (void)setPreferencesDelegate:(id)delegate;
- (void)setRecentNumberOfPlayers:(unint64_t)players forBundleID:(id)d;
- (void)setRecentPlayerPickerSortPreference:(int64_t)preference forBundleID:(id)d;
- (void)setStoreBagURL:(id)l;
- (void)setTimeInterval:(double)interval forKey:(id)key;
- (void)setUnsignedIntegerValue:(int64_t)value forKey:(id)key;
@end

@implementation GKPreferences

+ (GKPreferences)shared
{
  v2 = [self sharedWithSupport:0];
  if ([v2 _shouldSynchronizeOnNextRead])
  {
    [v2 synchronize];
    [v2 set_shouldSynchronizeOnNextRead:0];
  }

  return v2;
}

- (GKPreferences)initWithNotificationsAndSupport:(id)support
{
  supportCopy = support;
  v5 = [(GKPreferences *)self initWithoutNotificationsWithSupport:supportCopy];
  shouldRefreshPreferencesAfterBackgrounding = [supportCopy shouldRefreshPreferencesAfterBackgrounding];

  if (shouldRefreshPreferencesAfterBackgrounding)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = +[GKApplicationNotificationNames didEnterBackground];
    [defaultCenter addObserver:v5 selector:sel_applicationWillEnterBackground_ name:v8 object:0];
  }

  return v5;
}

- (GKPreferences)initWithoutNotificationsWithSupport:(id)support
{
  supportCopy = support;
  v10.receiver = self;
  v10.super_class = GKPreferences;
  v6 = [(GKPreferences *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_support, support);
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults addSuiteNamed:@"com.apple.demo-settings"];
    [(GKPreferences *)v7 synchronize];
  }

  return v7;
}

+ (id)sharedWithSupport:(id)support
{
  supportCopy = support;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__GKPreferences_sharedWithSupport___block_invoke;
  block[3] = &unk_2785DD760;
  v10 = supportCopy;
  v4 = sharedWithSupport__sDispatchOnceToken;
  v5 = supportCopy;
  if (v4 != -1)
  {
    dispatch_once(&sharedWithSupport__sDispatchOnceToken, block);
  }

  v6 = sharedWithSupport__sSharedPreferences;
  v7 = sharedWithSupport__sSharedPreferences;

  return v6;
}

void __35__GKPreferences_sharedWithSupport___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = objc_alloc_init(GKClientPreferencesSupport);
  }

  v3 = v2;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__GKPreferences_sharedWithSupport___block_invoke_cold_1(v3, v4);
  }

  v6 = [[GKPreferences alloc] initWithSupport:v3];
  v7 = sharedWithSupport__sSharedPreferences;
  sharedWithSupport__sSharedPreferences = v6;
}

- (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    [GKPreferences isInternalBuild];
  }

  return isInternalBuild_isInternalInstall;
}

uint64_t __32__GKPreferences_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_ui();
  isInternalBuild_isInternalInstall = result;
  return result;
}

- (void)_didWriteKey:(id)key
{
  [(GKPreferences *)self removeOverrideForKey:key];

  CFPreferencesAppSynchronize(@"com.apple.gamecenter");
}

- (id)preferencesValueForKey:(id)key
{
  keyCopy = key;
  v5 = [(GKPreferences *)self overrideValueForKey:keyCopy];
  if (!v5)
  {
    v5 = CFPreferencesCopyAppValue(keyCopy, @"com.apple.gamecenter");
  }

  return v5;
}

- (void)setOverrideValues:(id)values
{
  valuesCopy = values;
  obj = self;
  objc_sync_enter(obj);
  overrideValues = obj->_overrideValues;
  obj->_overrideValues = valuesCopy;

  objc_sync_exit(obj);
}

- (NSDictionary)overrideValues
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_overrideValues;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)overrideValueForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSDictionary *)selfCopy->_overrideValues objectForKey:keyCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)BOOLeanValueForKey:(id)key defaultValue:(BOOL)value
{
  v5 = [(GKPreferences *)self preferencesValueForKey:key];
  v6 = v5;
  if (v5)
  {
    value = [v5 BOOLValue];
  }

  return value;
}

- (void)setBooleanValue:(BOOL)value forKey:(id)key
{
  v5 = MEMORY[0x277CBED28];
  if (!value)
  {
    v5 = MEMORY[0x277CBED10];
  }

  v6 = *v5;
  keyCopy = key;
  CFPreferencesSetAppValue(keyCopy, v6, @"com.apple.gamecenter");
  [(GKPreferences *)self _didWriteKey:keyCopy];
}

- (int64_t)integerValueForKey:(id)key defaultValue:(int64_t)value
{
  v5 = [(GKPreferences *)self preferencesValueForKey:key];
  v6 = v5;
  if (v5)
  {
    value = [v5 integerValue];
  }

  return value;
}

- (void)setIntegerValue:(int64_t)value forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  key = key;
  v7 = [v6 numberWithInteger:value];
  CFPreferencesSetAppValue(key, v7, @"com.apple.gamecenter");

  [(GKPreferences *)self _didWriteKey:key];
}

- (int64_t)unsignedIntegerValueForKey:(id)key defaultValue:(int64_t)value
{
  v5 = [(GKPreferences *)self preferencesValueForKey:key];
  v6 = v5;
  if (v5)
  {
    value = [v5 unsignedIntegerValue];
  }

  return value;
}

- (void)setUnsignedIntegerValue:(int64_t)value forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  key = key;
  v7 = [v6 numberWithUnsignedInteger:value];
  CFPreferencesSetAppValue(key, v7, @"com.apple.gamecenter");

  [(GKPreferences *)self _didWriteKey:key];
}

- (id)dictionaryValueForKey:(id)key
{
  v3 = CFPreferencesCopyAppValue(key, @"com.apple.gamecenter");
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)timeIntervalForKey:(id)key defaultValue:(double)value
{
  v5 = [(GKPreferences *)self preferencesValueForKey:key];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    value = v7;
  }

  return value;
}

- (void)setTimeInterval:(double)interval forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  key = key;
  v7 = [v6 numberWithDouble:interval];
  CFPreferencesSetAppValue(key, v7, @"com.apple.gamecenter");

  [(GKPreferences *)self _didWriteKey:key];
}

- (id)stringValueForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(GKPreferences *)self preferencesValueForKey:key];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v10;
}

- (void)removeOverrideForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:selfCopy->_overrideValues];
  [v5 removeObjectForKey:keyCopy];
  [(GKPreferences *)selfCopy setOverrideValues:v5];

  objc_sync_exit(selfCopy);
}

- (BOOL)lockedDown
{
  supportLockdownMode = [(GKPreferences *)self supportLockdownMode];
  if (supportLockdownMode)
  {
    mEMORY[0x277D243A8] = [MEMORY[0x277D243A8] shared];
    enabled = [mEMORY[0x277D243A8] enabled];

    LOBYTE(supportLockdownMode) = enabled;
  }

  return supportLockdownMode;
}

- (int64_t)environment
{
  if ([(GKPreferences *)self isStoreDemoModeEnabled])
  {
    return 5;
  }

  return [(GKPreferences *)self integerValueForKey:@"GKStoreBagEnvironment" defaultValue:5];
}

- (void)setEnvironment:(int64_t)environment
{
  if (environment && environment <= 11)
  {
    [GKPreferences setIntegerValue:"setIntegerValue:forKey:" forKey:?];
    support = [(GKPreferences *)self support];
    [support didSetEnvironment];
  }
}

- (void)setStoreBagURL:(id)l
{
  CFPreferencesSetAppValue(@"GKCustomStoreBagURL", l, @"com.apple.gamecenter");
  [(GKPreferences *)self _didWriteKey:@"GKCustomStoreBagURL"];
  support = [(GKPreferences *)self support];
  [support didSetStoreBagUrl];
}

- (void)setForceUnderage:(BOOL)underage
{
  if (underage)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  [(GKPreferences *)self setForceAgeCategory:v3];
}

- (int)forceAgeCategory
{
  if ([(GKPreferences *)self BOOLeanValueForKey:@"GKForceUnderage"])
  {
    result = 3;
  }

  else
  {
    result = [(GKPreferences *)self integerValueForKey:@"GKForceAgeCategory" defaultValue:0];
  }

  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

- (void)setForceAgeCategory:(int)category
{
  if ((category - 1) >= 3)
  {
    categoryCopy = 0;
  }

  else
  {
    categoryCopy = category;
  }

  [(GKPreferences *)self setIntegerValue:categoryCopy forKey:@"GKForceAgeCategory"];

  [(GKPreferences *)self setBooleanValue:categoryCopy == 3 forKey:@"GKForceUnderage"];
}

- (NSArray)forceEnabledTransportVersions
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(GKPreferences *)self multiplayerTransportOverrideV1Enabled])
  {
    [array addObject:&unk_283B331C0];
  }

  if ([(GKPreferences *)self multiplayerTransportOverrideV2Enabled])
  {
    [array addObject:&unk_283B331D8];
  }

  return array;
}

- (NSArray)forceDisabledTransportVersions
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(GKPreferences *)self multiplayerTransportOverrideV1Disabled])
  {
    [array addObject:&unk_283B331C0];
  }

  if ([(GKPreferences *)self multiplayerTransportOverrideV2Disabled])
  {
    [array addObject:&unk_283B331D8];
  }

  return array;
}

- (unint64_t)recentNumberOfPlayersForBundleID:(id)d
{
  dCopy = d;
  recentNumberOfPlayersPerGame = [(GKPreferences *)self recentNumberOfPlayersPerGame];
  v6 = [recentNumberOfPlayersPerGame objectForKeyedSubscript:dCopy];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [(GKPreferences *)self recentNumberOfPlayers];
  }

  v8 = unsignedIntegerValue;

  return v8;
}

- (void)setRecentNumberOfPlayers:(unint64_t)players forBundleID:(id)d
{
  v6 = MEMORY[0x277CBEB38];
  dCopy = d;
  v8 = [v6 alloc];
  recentNumberOfPlayersPerGame = [(GKPreferences *)self recentNumberOfPlayersPerGame];
  v11 = [v8 initWithDictionary:recentNumberOfPlayersPerGame];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:players];
  [v11 setObject:v10 forKeyedSubscript:dCopy];

  [(GKPreferences *)self setRecentNumberOfPlayersPerGame:v11];
}

- (int64_t)recentPlayerPickerSortPreferenceForBundleID:(id)d
{
  dCopy = d;
  recentPickerSortPreferencePerGame = [(GKPreferences *)self recentPickerSortPreferencePerGame];
  v6 = [recentPickerSortPreferencePerGame objectForKeyedSubscript:dCopy];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)setRecentPlayerPickerSortPreference:(int64_t)preference forBundleID:(id)d
{
  v6 = MEMORY[0x277CBEB38];
  dCopy = d;
  v8 = [v6 alloc];
  recentPickerSortPreferencePerGame = [(GKPreferences *)self recentPickerSortPreferencePerGame];
  v11 = [v8 initWithDictionary:recentPickerSortPreferencePerGame];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:preference];
  [v11 setObject:v10 forKeyedSubscript:dCopy];

  [(GKPreferences *)self setRecentPickerSortPreferencePerGame:v11];
}

- (unint64_t)maxPlayersP2P
{
  maxDefaultPlayersP2P = [(GKPreferences *)self maxDefaultPlayersP2P];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKMaxPlayersP2P" defaultValue:maxDefaultPlayersP2P];
}

- (unint64_t)maxPlayersHosted
{
  maxDefaultPlayersHosted = [(GKPreferences *)self maxDefaultPlayersHosted];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKMaxPlayersHosted" defaultValue:maxDefaultPlayersHosted];
}

- (unint64_t)maxPlayersTurnBased
{
  maxDefaultPlayersTurnBased = [(GKPreferences *)self maxDefaultPlayersTurnBased];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKMaxPlayersTurnBased" defaultValue:maxDefaultPlayersTurnBased];
}

- (unint64_t)maxGameStateSizeTurnBased
{
  maxDefaultGameStateSizeTurnBased = [(GKPreferences *)self maxDefaultGameStateSizeTurnBased];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKMaxGameStateSizeTurnBased" defaultValue:maxDefaultGameStateSizeTurnBased];
}

- (unint64_t)exchangeDataMaximumSize
{
  exchangeDataDefaultMaximumSize = [(GKPreferences *)self exchangeDataDefaultMaximumSize];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKExchangeDataMaximumSize" defaultValue:exchangeDataDefaultMaximumSize];
}

- (unint64_t)exchangeMaxInitiatedExchangesPerPlayer
{
  exchangeDefaultMaxInitiatedExchangesPerPlayer = [(GKPreferences *)self exchangeDefaultMaxInitiatedExchangesPerPlayer];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKExchangeMaxPerPlayer" defaultValue:exchangeDefaultMaxInitiatedExchangesPerPlayer];
}

+ (id)hostNameForEnvironment:(int64_t)environment
{
  if ((environment - 3) > 7)
  {
    v3 = GKURLComponentHostProduction;
  }

  else
  {
    v3 = off_2785DDD68[environment - 3];
  }

  return *v3;
}

+ (id)displayNameForEnvironment:(int64_t)environment
{
  v4 = environment - 3;
  if (environment - 3) < 8 && ((0xA7u >> v4))
  {
    environment = off_2785DDDA8[v4];
  }

  else
  {
    environment = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown (%d)", environment];
  }

  return environment;
}

+ (int64_t)environmentForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"TD2"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"TD3"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (BOOL)shouldAllowNearbyMultiplayer
{
  selfCopy = self;
  isNearbyMultiplayerRestricted = [(GKPreferences *)self isNearbyMultiplayerRestricted];
  v4 = MEMORY[0x277CCACA8];
  support = [(GKPreferences *)selfCopy support];
  localPlayerID = [support localPlayerID];
  v7 = [v4 stringWithFormat:@"%@-%@", @"GKAllowNearbyMultiplayer", localPlayerID];

  v8 = !isNearbyMultiplayerRestricted;
  LOBYTE(selfCopy) = [(GKPreferences *)selfCopy BOOLeanValueForKey:v7 defaultValue:v8];

  return v8 & selfCopy;
}

- (BOOL)shouldAllowCustomCommunication
{
  support = [(GKPreferences *)self support];
  if ([support localPlayerIsUnderage])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(GKPreferences *)self isCustomizedCommunicationRestricted];
  }

  return v4;
}

- (unint64_t)maxDefaultPlayersP2P
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"maxDefaultPlayersP2P"];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 16;
  }

  return unsignedIntegerValue;
}

- (unint64_t)maxDefaultPlayersHosted
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"maxDefaultPlayersHosted"];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 16;
  }

  return unsignedIntegerValue;
}

- (unint64_t)maxDefaultPlayersTurnBased
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"maxDefaultPlayersTurnBased"];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 16;
  }

  return unsignedIntegerValue;
}

- (unint64_t)maxDefaultGameStateSizeTurnBased
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"maxDefaultGameStateSizeTurnBased"];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x10000;
  }

  return unsignedIntegerValue;
}

- (unint64_t)exchangeDataDefaultMaximumSize
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"exchangeDataDefaultMaximumSize"];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1024;
  }

  return unsignedIntegerValue;
}

- (unint64_t)exchangeDefaultMaxInitiatedExchangesPerPlayer
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"exchangeDefaultMaxInitiatedExchangesPerPlayer"];
  v3 = v2;
  if (v2)
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 30;
  }

  return unsignedIntegerValue;
}

- (BOOL)HTTPShouldUsePipelining
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"exchangeDefaultMaxInitiatedExchangesPerPlayer"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)multiplayerHealthCheckEnabled
{
  v3 = [(GKPreferences *)self BOOLeanValueForKey:@"GKMultiplayerHealthCheckEnabled" defaultValue:0];
  if (v3)
  {

    LOBYTE(v3) = [(GKPreferences *)self isInternalBuild];
  }

  return v3;
}

- (BOOL)inboxContactsOnly
{
  v3 = +[GKLocalPlayer localPlayer];
  v4 = v3;
  if (v3)
  {
    isUnderage = [v3 isUnderage];
  }

  else
  {
    isUnderage = 1;
  }

  v6 = [(GKPreferences *)self BOOLeanValueForKey:@"GKFriendRequestsInboxContactsOnly" defaultValue:isUnderage];

  return v6;
}

- (BOOL)forceDeadlockFetchingUserRecordID
{
  isInternalBuild = [(GKPreferences *)self isInternalBuild];
  if (isInternalBuild)
  {

    LOBYTE(isInternalBuild) = [(GKPreferences *)self BOOLeanValueForKey:@"GKForceDeadlockFetchingUserRecordID" defaultValue:0];
  }

  return isInternalBuild;
}

- (const)lookupRestrictionLimitsForEachAgeCategory:(int)category
{
  if (category >= 0xD)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown RestrictionCategory" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return *(&off_2785E02B0 + category);
}

- (int)localPlayerAgeCategory
{
  v3 = +[GKPreferences shared];
  forceAgeCategory = [v3 forceAgeCategory];

  if (forceAgeCategory)
  {
    v5 = +[GKPreferences shared];
    forceAgeCategory2 = [v5 forceAgeCategory];

    v7 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(GKPreferences(AgeCategoryRestrictions) *)v7 localPlayerAgeCategory];
    }
  }

  else
  {
    support = [(GKPreferences *)self support];
    localPlayerIsUnderage = [support localPlayerIsUnderage];

    if (localPlayerIsUnderage)
    {
      v11 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
        v11 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(GKPreferences(AgeCategoryRestrictions) *)v11 localPlayerAgeCategory];
      }

      LODWORD(forceAgeCategory2) = 3;
    }

    else
    {
      support2 = [(GKPreferences *)self support];
      forceAgeCategory2 = [support2 localPlayerAgeCategory];

      v14 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
        v14 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [(GKPreferences(AgeCategoryRestrictions) *)v14 localPlayerAgeCategory];
      }
    }
  }

  return forceAgeCategory2;
}

- (int)getRestrictionLimitForLocalPlayer:(const RestrictionsLimitsForEachAgeCategory *)player
{
  localPlayerAgeCategory = [(GKPreferences *)self localPlayerAgeCategory];
  switch(localPlayerAgeCategory)
  {
    case 3:
      player = (player + 4);
      break;
    case 2:
      player = (player + 8);
      break;
    case 1:
      player = (player + 12);
      break;
    default:
      v5 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v6 = GKOSLoggers();
        v5 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [GKPreferences(AgeCategoryRestrictions) getRestrictionLimitForLocalPlayer:v5];
      }

      break;
  }

  return player->var0;
}

- (int)clampNumericRestriction:(id)restriction tableEntry:(const RestrictionsLimitsForEachAgeCategory *)entry
{
  restrictionCopy = restriction;
  v7 = [(GKPreferences *)self getRestrictionLimitForLocalPlayer:entry];
  if (restrictionCopy)
  {
    intValue = [restrictionCopy intValue];
    if (intValue < v7)
    {
      v7 = intValue;
    }
  }

  return v7;
}

- (void)setPreferencesDelegate:(id)delegate
{
  value = delegate;
  preferencesDelegate = [(GKPreferences *)self preferencesDelegate];

  v5 = value;
  if (preferencesDelegate != value)
  {
    preferencesDelegate2 = [(GKPreferences *)self preferencesDelegate];

    if (preferencesDelegate2)
    {
      if (value)
      {
LABEL_7:
        objc_setAssociatedObject(self, "GKPreferencesDelegate", value, 0);
        v5 = value;
        goto LABEL_8;
      }

      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      [mEMORY[0x277D262A0] removeObserver:self];
    }

    else
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      [mEMORY[0x277D262A0] addObserver:self];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)isStoreDemoModeEnabled
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"storeDemoModeEnabled"];
  v3 = v2;
  if (v2)
  {
    LOBYTE(v4) = [v2 BOOLValue];
  }

  else
  {
    v4 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v4)
    {
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", v4, &keyExistsAndHasValidFormat);
      CFRelease(v4);
      if (AppBooleanValue)
      {
        v6 = keyExistsAndHasValidFormat == 0;
      }

      else
      {
        v6 = 1;
      }

      LOBYTE(v4) = !v6;
    }
  }

  return v4;
}

- (unint64_t)multiplayerAllowedPlayerType
{
  v3 = [(GKPreferences *)self effectiveValueForSetting:*MEMORY[0x277D25ED0]];
  v4 = [(GKPreferences *)self clampNumericRestriction:v3 category:4];

  return v4;
}

- (BOOL)isAppInstallationRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  if ([mEMORY[0x277D262A0] isUIAppInstallationAllowed])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return [(GKPreferences *)self isBoolValueRestricted:v4 category:9];
}

- (BOOL)isGameCenterDisabled
{
  if ([(GKPreferences *)self lockedDown]|| [(GKPreferences *)self isGameCenterRestricted])
  {
    return 1;
  }

  return [(GKPreferences *)self isStoreDemoModeEnabled];
}

- (BOOL)isFriendRequestsRestricted
{
  if ([(GKPreferences *)self isAccountModificationRestricted]|| [(GKPreferences *)self isAddingFriendsRestricted])
  {
    return 1;
  }

  return [(GKPreferences *)self isGameCenterRestricted];
}

- (int)effectiveBoolValueForSetting:(id)setting
{
  settingCopy = setting;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:settingCopy];

  v6 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
    v6 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(GKPreferences(Restrictions) *)settingCopy effectiveBoolValueForSetting:v5, v6];
  }

  return v5;
}

- (id)effectiveValueForSetting:(id)setting
{
  v3 = MEMORY[0x277D262A0];
  settingCopy = setting;
  sharedConnection = [v3 sharedConnection];
  v6 = [sharedConnection effectiveValueForSetting:settingCopy];

  return v6;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  if ([(GKPreferences *)self isGameCenterRestricted:notification])
  {
    preferencesDelegate = [(GKPreferences *)self preferencesDelegate];
    [preferencesDelegate gameCenterDidBecomeRestricted];
  }

  else
  {
    if (![(GKPreferences *)self isNearbyMultiplayerRestricted])
    {
      return;
    }

    preferencesDelegate = +[GKPreferences shared];
    [preferencesDelegate setShouldAllowNearbyMultiplayer:0];
  }
}

void __35__GKPreferences_sharedWithSupport___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_227904000, a2, OS_LOG_TYPE_DEBUG, "Initializing GKPreferences with support: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end