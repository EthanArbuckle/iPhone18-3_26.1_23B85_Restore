@interface GKPreferences
+ (GKPreferences)shared;
+ (id)displayNameForEnvironment:(int64_t)a3;
+ (id)hostNameForEnvironment:(int64_t)a3;
+ (id)sharedWithSupport:(id)a3;
+ (int64_t)environmentForString:(id)a3;
- (BOOL)BOOLeanValueForKey:(id)a3 defaultValue:(BOOL)a4;
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
- (GKPreferences)initWithNotificationsAndSupport:(id)a3;
- (GKPreferences)initWithoutNotificationsWithSupport:(id)a3;
- (NSArray)forceDisabledTransportVersions;
- (NSArray)forceEnabledTransportVersions;
- (NSDictionary)overrideValues;
- (const)lookupRestrictionLimitsForEachAgeCategory:(int)a3;
- (double)timeIntervalForKey:(id)a3 defaultValue:(double)a4;
- (id)dictionaryValueForKey:(id)a3;
- (id)effectiveValueForSetting:(id)a3;
- (id)overrideValueForKey:(id)a3;
- (id)preferencesValueForKey:(id)a3;
- (id)stringValueForKey:(id)a3 defaultValue:(id)a4;
- (int)clampNumericRestriction:(id)a3 tableEntry:(const RestrictionsLimitsForEachAgeCategory *)a4;
- (int)effectiveBoolValueForSetting:(id)a3;
- (int)forceAgeCategory;
- (int)getRestrictionLimitForLocalPlayer:(const RestrictionsLimitsForEachAgeCategory *)a3;
- (int)localPlayerAgeCategory;
- (int64_t)environment;
- (int64_t)integerValueForKey:(id)a3 defaultValue:(int64_t)a4;
- (int64_t)recentPlayerPickerSortPreferenceForBundleID:(id)a3;
- (int64_t)unsignedIntegerValueForKey:(id)a3 defaultValue:(int64_t)a4;
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
- (unint64_t)recentNumberOfPlayersForBundleID:(id)a3;
- (void)_didWriteKey:(id)a3;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)removeOverrideForKey:(id)a3;
- (void)setBooleanValue:(BOOL)a3 forKey:(id)a4;
- (void)setEnvironment:(int64_t)a3;
- (void)setForceAgeCategory:(int)a3;
- (void)setForceUnderage:(BOOL)a3;
- (void)setIntegerValue:(int64_t)a3 forKey:(id)a4;
- (void)setOverrideValues:(id)a3;
- (void)setPreferencesDelegate:(id)a3;
- (void)setRecentNumberOfPlayers:(unint64_t)a3 forBundleID:(id)a4;
- (void)setRecentPlayerPickerSortPreference:(int64_t)a3 forBundleID:(id)a4;
- (void)setStoreBagURL:(id)a3;
- (void)setTimeInterval:(double)a3 forKey:(id)a4;
- (void)setUnsignedIntegerValue:(int64_t)a3 forKey:(id)a4;
@end

@implementation GKPreferences

+ (GKPreferences)shared
{
  v2 = [a1 sharedWithSupport:0];
  if ([v2 _shouldSynchronizeOnNextRead])
  {
    [v2 synchronize];
    [v2 set_shouldSynchronizeOnNextRead:0];
  }

  return v2;
}

- (GKPreferences)initWithNotificationsAndSupport:(id)a3
{
  v4 = a3;
  v5 = [(GKPreferences *)self initWithoutNotificationsWithSupport:v4];
  v6 = [v4 shouldRefreshPreferencesAfterBackgrounding];

  if (v6)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = +[GKApplicationNotificationNames didEnterBackground];
    [v7 addObserver:v5 selector:sel_applicationWillEnterBackground_ name:v8 object:0];
  }

  return v5;
}

- (GKPreferences)initWithoutNotificationsWithSupport:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = GKPreferences;
  v6 = [(GKPreferences *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_support, a3);
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v8 addSuiteNamed:@"com.apple.demo-settings"];
    [(GKPreferences *)v7 synchronize];
  }

  return v7;
}

+ (id)sharedWithSupport:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__GKPreferences_sharedWithSupport___block_invoke;
  block[3] = &unk_2785DD760;
  v10 = v3;
  v4 = sharedWithSupport__sDispatchOnceToken;
  v5 = v3;
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

- (void)_didWriteKey:(id)a3
{
  [(GKPreferences *)self removeOverrideForKey:a3];

  CFPreferencesAppSynchronize(@"com.apple.gamecenter");
}

- (id)preferencesValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(GKPreferences *)self overrideValueForKey:v4];
  if (!v5)
  {
    v5 = CFPreferencesCopyAppValue(v4, @"com.apple.gamecenter");
  }

  return v5;
}

- (void)setOverrideValues:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  overrideValues = obj->_overrideValues;
  obj->_overrideValues = v4;

  objc_sync_exit(obj);
}

- (NSDictionary)overrideValues
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_overrideValues;
  objc_sync_exit(v2);

  return v3;
}

- (id)overrideValueForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSDictionary *)v5->_overrideValues objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (BOOL)BOOLeanValueForKey:(id)a3 defaultValue:(BOOL)a4
{
  v5 = [(GKPreferences *)self preferencesValueForKey:a3];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (void)setBooleanValue:(BOOL)a3 forKey:(id)a4
{
  v5 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v5 = MEMORY[0x277CBED10];
  }

  v6 = *v5;
  v7 = a4;
  CFPreferencesSetAppValue(v7, v6, @"com.apple.gamecenter");
  [(GKPreferences *)self _didWriteKey:v7];
}

- (int64_t)integerValueForKey:(id)a3 defaultValue:(int64_t)a4
{
  v5 = [(GKPreferences *)self preferencesValueForKey:a3];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 integerValue];
  }

  return a4;
}

- (void)setIntegerValue:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  key = a4;
  v7 = [v6 numberWithInteger:a3];
  CFPreferencesSetAppValue(key, v7, @"com.apple.gamecenter");

  [(GKPreferences *)self _didWriteKey:key];
}

- (int64_t)unsignedIntegerValueForKey:(id)a3 defaultValue:(int64_t)a4
{
  v5 = [(GKPreferences *)self preferencesValueForKey:a3];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 unsignedIntegerValue];
  }

  return a4;
}

- (void)setUnsignedIntegerValue:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  key = a4;
  v7 = [v6 numberWithUnsignedInteger:a3];
  CFPreferencesSetAppValue(key, v7, @"com.apple.gamecenter");

  [(GKPreferences *)self _didWriteKey:key];
}

- (id)dictionaryValueForKey:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.gamecenter");
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

- (double)timeIntervalForKey:(id)a3 defaultValue:(double)a4
{
  v5 = [(GKPreferences *)self preferencesValueForKey:a3];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    a4 = v7;
  }

  return a4;
}

- (void)setTimeInterval:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  key = a4;
  v7 = [v6 numberWithDouble:a3];
  CFPreferencesSetAppValue(key, v7, @"com.apple.gamecenter");

  [(GKPreferences *)self _didWriteKey:key];
}

- (id)stringValueForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(GKPreferences *)self preferencesValueForKey:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (void)removeOverrideForKey:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4->_overrideValues];
  [v5 removeObjectForKey:v6];
  [(GKPreferences *)v4 setOverrideValues:v5];

  objc_sync_exit(v4);
}

- (BOOL)lockedDown
{
  v2 = [(GKPreferences *)self supportLockdownMode];
  if (v2)
  {
    v3 = [MEMORY[0x277D243A8] shared];
    v4 = [v3 enabled];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (int64_t)environment
{
  if ([(GKPreferences *)self isStoreDemoModeEnabled])
  {
    return 5;
  }

  return [(GKPreferences *)self integerValueForKey:@"GKStoreBagEnvironment" defaultValue:5];
}

- (void)setEnvironment:(int64_t)a3
{
  if (a3 && a3 <= 11)
  {
    [GKPreferences setIntegerValue:"setIntegerValue:forKey:" forKey:?];
    v5 = [(GKPreferences *)self support];
    [v5 didSetEnvironment];
  }
}

- (void)setStoreBagURL:(id)a3
{
  CFPreferencesSetAppValue(@"GKCustomStoreBagURL", a3, @"com.apple.gamecenter");
  [(GKPreferences *)self _didWriteKey:@"GKCustomStoreBagURL"];
  v4 = [(GKPreferences *)self support];
  [v4 didSetStoreBagUrl];
}

- (void)setForceUnderage:(BOOL)a3
{
  if (a3)
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

- (void)setForceAgeCategory:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  [(GKPreferences *)self setIntegerValue:v4 forKey:@"GKForceAgeCategory"];

  [(GKPreferences *)self setBooleanValue:v4 == 3 forKey:@"GKForceUnderage"];
}

- (NSArray)forceEnabledTransportVersions
{
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(GKPreferences *)self multiplayerTransportOverrideV1Enabled])
  {
    [v3 addObject:&unk_283B331C0];
  }

  if ([(GKPreferences *)self multiplayerTransportOverrideV2Enabled])
  {
    [v3 addObject:&unk_283B331D8];
  }

  return v3;
}

- (NSArray)forceDisabledTransportVersions
{
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(GKPreferences *)self multiplayerTransportOverrideV1Disabled])
  {
    [v3 addObject:&unk_283B331C0];
  }

  if ([(GKPreferences *)self multiplayerTransportOverrideV2Disabled])
  {
    [v3 addObject:&unk_283B331D8];
  }

  return v3;
}

- (unint64_t)recentNumberOfPlayersForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(GKPreferences *)self recentNumberOfPlayersPerGame];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = [(GKPreferences *)self recentNumberOfPlayers];
  }

  v8 = v7;

  return v8;
}

- (void)setRecentNumberOfPlayers:(unint64_t)a3 forBundleID:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = [(GKPreferences *)self recentNumberOfPlayersPerGame];
  v11 = [v8 initWithDictionary:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v11 setObject:v10 forKeyedSubscript:v7];

  [(GKPreferences *)self setRecentNumberOfPlayersPerGame:v11];
}

- (int64_t)recentPlayerPickerSortPreferenceForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(GKPreferences *)self recentPickerSortPreferencePerGame];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)setRecentPlayerPickerSortPreference:(int64_t)a3 forBundleID:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = [(GKPreferences *)self recentPickerSortPreferencePerGame];
  v11 = [v8 initWithDictionary:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v11 setObject:v10 forKeyedSubscript:v7];

  [(GKPreferences *)self setRecentPickerSortPreferencePerGame:v11];
}

- (unint64_t)maxPlayersP2P
{
  v3 = [(GKPreferences *)self maxDefaultPlayersP2P];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKMaxPlayersP2P" defaultValue:v3];
}

- (unint64_t)maxPlayersHosted
{
  v3 = [(GKPreferences *)self maxDefaultPlayersHosted];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKMaxPlayersHosted" defaultValue:v3];
}

- (unint64_t)maxPlayersTurnBased
{
  v3 = [(GKPreferences *)self maxDefaultPlayersTurnBased];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKMaxPlayersTurnBased" defaultValue:v3];
}

- (unint64_t)maxGameStateSizeTurnBased
{
  v3 = [(GKPreferences *)self maxDefaultGameStateSizeTurnBased];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKMaxGameStateSizeTurnBased" defaultValue:v3];
}

- (unint64_t)exchangeDataMaximumSize
{
  v3 = [(GKPreferences *)self exchangeDataDefaultMaximumSize];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKExchangeDataMaximumSize" defaultValue:v3];
}

- (unint64_t)exchangeMaxInitiatedExchangesPerPlayer
{
  v3 = [(GKPreferences *)self exchangeDefaultMaxInitiatedExchangesPerPlayer];

  return [(GKPreferences *)self unsignedIntegerValueForKey:@"GKExchangeMaxPerPlayer" defaultValue:v3];
}

+ (id)hostNameForEnvironment:(int64_t)a3
{
  if ((a3 - 3) > 7)
  {
    v3 = GKURLComponentHostProduction;
  }

  else
  {
    v3 = off_2785DDD68[a3 - 3];
  }

  return *v3;
}

+ (id)displayNameForEnvironment:(int64_t)a3
{
  v4 = a3 - 3;
  if (a3 - 3) < 8 && ((0xA7u >> v4))
  {
    v5 = off_2785DDDA8[v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown (%d)", a3];
  }

  return v5;
}

+ (int64_t)environmentForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TD2"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TD3"])
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
  v2 = self;
  v3 = [(GKPreferences *)self isNearbyMultiplayerRestricted];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(GKPreferences *)v2 support];
  v6 = [v5 localPlayerID];
  v7 = [v4 stringWithFormat:@"%@-%@", @"GKAllowNearbyMultiplayer", v6];

  v8 = !v3;
  LOBYTE(v2) = [(GKPreferences *)v2 BOOLeanValueForKey:v7 defaultValue:v8];

  return v8 & v2;
}

- (BOOL)shouldAllowCustomCommunication
{
  v3 = [(GKPreferences *)self support];
  if ([v3 localPlayerIsUnderage])
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
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 16;
  }

  return v4;
}

- (unint64_t)maxDefaultPlayersHosted
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"maxDefaultPlayersHosted"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 16;
  }

  return v4;
}

- (unint64_t)maxDefaultPlayersTurnBased
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"maxDefaultPlayersTurnBased"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 16;
  }

  return v4;
}

- (unint64_t)maxDefaultGameStateSizeTurnBased
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"maxDefaultGameStateSizeTurnBased"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0x10000;
  }

  return v4;
}

- (unint64_t)exchangeDataDefaultMaximumSize
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"exchangeDataDefaultMaximumSize"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 1024;
  }

  return v4;
}

- (unint64_t)exchangeDefaultMaxInitiatedExchangesPerPlayer
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"exchangeDefaultMaxInitiatedExchangesPerPlayer"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (BOOL)HTTPShouldUsePipelining
{
  v2 = [(GKPreferences *)self overrideValueForKey:@"exchangeDefaultMaxInitiatedExchangesPerPlayer"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
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
    v5 = [v3 isUnderage];
  }

  else
  {
    v5 = 1;
  }

  v6 = [(GKPreferences *)self BOOLeanValueForKey:@"GKFriendRequestsInboxContactsOnly" defaultValue:v5];

  return v6;
}

- (BOOL)forceDeadlockFetchingUserRecordID
{
  v3 = [(GKPreferences *)self isInternalBuild];
  if (v3)
  {

    LOBYTE(v3) = [(GKPreferences *)self BOOLeanValueForKey:@"GKForceDeadlockFetchingUserRecordID" defaultValue:0];
  }

  return v3;
}

- (const)lookupRestrictionLimitsForEachAgeCategory:(int)a3
{
  if (a3 >= 0xD)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Unknown RestrictionCategory" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return *(&off_2785E02B0 + a3);
}

- (int)localPlayerAgeCategory
{
  v3 = +[GKPreferences shared];
  v4 = [v3 forceAgeCategory];

  if (v4)
  {
    v5 = +[GKPreferences shared];
    v6 = [v5 forceAgeCategory];

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
    v9 = [(GKPreferences *)self support];
    v10 = [v9 localPlayerIsUnderage];

    if (v10)
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

      LODWORD(v6) = 3;
    }

    else
    {
      v13 = [(GKPreferences *)self support];
      v6 = [v13 localPlayerAgeCategory];

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

  return v6;
}

- (int)getRestrictionLimitForLocalPlayer:(const RestrictionsLimitsForEachAgeCategory *)a3
{
  v4 = [(GKPreferences *)self localPlayerAgeCategory];
  switch(v4)
  {
    case 3:
      a3 = (a3 + 4);
      break;
    case 2:
      a3 = (a3 + 8);
      break;
    case 1:
      a3 = (a3 + 12);
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

  return a3->var0;
}

- (int)clampNumericRestriction:(id)a3 tableEntry:(const RestrictionsLimitsForEachAgeCategory *)a4
{
  v6 = a3;
  v7 = [(GKPreferences *)self getRestrictionLimitForLocalPlayer:a4];
  if (v6)
  {
    v8 = [v6 intValue];
    if (v8 < v7)
    {
      v7 = v8;
    }
  }

  return v7;
}

- (void)setPreferencesDelegate:(id)a3
{
  value = a3;
  v4 = [(GKPreferences *)self preferencesDelegate];

  v5 = value;
  if (v4 != value)
  {
    v6 = [(GKPreferences *)self preferencesDelegate];

    if (v6)
    {
      if (value)
      {
LABEL_7:
        objc_setAssociatedObject(self, "GKPreferencesDelegate", value, 0);
        v5 = value;
        goto LABEL_8;
      }

      v7 = [MEMORY[0x277D262A0] sharedConnection];
      [v7 removeObserver:self];
    }

    else
    {
      v7 = [MEMORY[0x277D262A0] sharedConnection];
      [v7 addObserver:self];
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
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  if ([v3 isUIAppInstallationAllowed])
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

- (int)effectiveBoolValueForSetting:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 effectiveBoolValueForSetting:v3];

  v6 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
    v6 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(GKPreferences(Restrictions) *)v3 effectiveBoolValueForSetting:v5, v6];
  }

  return v5;
}

- (id)effectiveValueForSetting:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  v6 = [v5 effectiveValueForSetting:v4];

  return v6;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  if ([(GKPreferences *)self isGameCenterRestricted:a3])
  {
    v5 = [(GKPreferences *)self preferencesDelegate];
    [v5 gameCenterDidBecomeRestricted];
  }

  else
  {
    if (![(GKPreferences *)self isNearbyMultiplayerRestricted])
    {
      return;
    }

    v5 = +[GKPreferences shared];
    [v5 setShouldAllowNearbyMultiplayer:0];
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