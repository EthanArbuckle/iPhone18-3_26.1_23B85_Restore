@interface CNACTStewieFacade
+ (BOOL)isMessagesApp;
+ (double)ageOfMemo:(id)memo;
+ (id)localizedAvocetPhrases;
+ (id)localizedEmergencyPhrases;
- (BOOL)isAvocetEnabled;
- (BOOL)isEmergencyEnabled;
- (BOOL)withLock_isAvocetEnabled;
- (BOOL)withLock_isEmergencyEnabled;
- (CNACTStewieFacade)init;
- (CNACTStewieFacade)initWithCoreTelephonyClient:(id)client stateMonitor:(id)monitor;
- (NSArray)avocetTerms;
- (NSArray)emergencyTerms;
- (NSString)description;
- (id)numbers;
- (void)avocetTerms;
- (void)emergencyTerms;
- (void)numbers;
- (void)startMonitoring;
- (void)stateChanged:(id)changed;
@end

@implementation CNACTStewieFacade

- (CNACTStewieFacade)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.contacts.autocomplete.core-telephony", v3);

  v5 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v4];
  v6 = [objc_alloc(MEMORY[0x277CC3768]) initWithDelegate:self queue:v4];
  v7 = [(CNACTStewieFacade *)self initWithCoreTelephonyClient:v5 stateMonitor:v6];

  return v7;
}

- (CNACTStewieFacade)initWithCoreTelephonyClient:(id)client stateMonitor:(id)monitor
{
  clientCopy = client;
  monitorCopy = monitor;
  if (!monitorCopy)
  {
    if (CNGuardOSLog_cn_once_token_0 != -1)
    {
      [CNACTStewieFacade initWithCoreTelephonyClient:stateMonitor:];
    }

    v9 = CNGuardOSLog_cn_once_object_0;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0, OS_LOG_TYPE_FAULT))
    {
      [CNACTStewieFacade initWithCoreTelephonyClient:v9 stateMonitor:?];
    }
  }

  v14.receiver = self;
  v14.super_class = CNACTStewieFacade;
  v10 = [(CNACTStewieFacade *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_coreTelephonyClient, client);
    objc_storeStrong(&v11->_stateMonitor, monitor);
    v12 = v11;
  }

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"Stewie terms" object:self->_emergencyMemo];
  v5 = [v3 appendName:@"Avocet terms" object:self->_avocetMemo];
  build = [v3 build];

  return build;
}

- (void)startMonitoring
{
  start = [(CTStewieStateMonitor *)self->_stateMonitor start];
  v3 = contactSearchLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (start)
  {
    if (v4)
    {
      [CNACTStewieFacade startMonitoring];
    }
  }

  else if (v4)
  {
    [CNACTStewieFacade startMonitoring];
  }
}

+ (double)ageOfMemo:(id)memo
{
  if (!memo)
  {
    return 978307200.0;
  }

  v3 = MEMORY[0x277CFBE10];
  memoCopy = memo;
  currentEnvironment = [v3 currentEnvironment];
  timeProvider = [currentEnvironment timeProvider];
  [timeProvider timestamp];
  v8 = v7;
  [memoCopy timestamp];
  v10 = v9;

  v11 = v8 - v10;
  return v11;
}

- (NSArray)emergencyTerms
{
  v17[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CNACTStewieFacade *)selfCopy withLock_isEmergencyEnabled])
  {
    if ([objc_opt_class() isMemoValid:selfCopy->_emergencyMemo])
    {
      value = [(CNTimestamped *)selfCopy->_emergencyMemo value];
    }

    else
    {
      localizedEmergencyPhrases = [objc_opt_class() localizedEmergencyPhrases];
      numbers = [(CNACTStewieFacade *)selfCopy numbers];
      v17[0] = localizedEmergencyPhrases;
      v17[1] = numbers;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      _cn_flatten = [v6 _cn_flatten];
      _cn_distinctObjects = [_cn_flatten _cn_distinctObjects];

      v9 = contactSearchLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [CNACTStewieFacade emergencyTerms];
      }

      v10 = MEMORY[0x277CFBED8];
      currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
      timeProvider = [currentEnvironment timeProvider];
      [timeProvider timestamp];
      v13 = [v10 timestampedWithValue:_cn_distinctObjects timestamp:?];
      emergencyMemo = selfCopy->_emergencyMemo;
      selfCopy->_emergencyMemo = v13;

      value = [(CNTimestamped *)selfCopy->_emergencyMemo value];
    }
  }

  else
  {
    value = MEMORY[0x277CBEBF8];
  }

  objc_sync_exit(selfCopy);

  v15 = *MEMORY[0x277D85DE8];

  return value;
}

- (BOOL)isEmergencyEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  withLock_isEmergencyEnabled = [(CNACTStewieFacade *)selfCopy withLock_isEmergencyEnabled];
  objc_sync_exit(selfCopy);

  return withLock_isEmergencyEnabled;
}

- (BOOL)withLock_isEmergencyEnabled
{
  isMessagesApp = [objc_opt_class() isMessagesApp];
  if (isMessagesApp)
  {
    getState = [(CTStewieStateMonitor *)self->_stateMonitor getState];
    v5 = [getState isAllowedService:1];

    LOBYTE(isMessagesApp) = v5;
  }

  return isMessagesApp;
}

- (NSArray)avocetTerms
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CNACTStewieFacade *)selfCopy withLock_isAvocetEnabled])
  {
    if ([objc_opt_class() isMemoValid:selfCopy->_avocetMemo])
    {
      value = [(CNTimestamped *)selfCopy->_avocetMemo value];
    }

    else
    {
      localizedAvocetPhrases = [objc_opt_class() localizedAvocetPhrases];
      _cn_distinctObjects = [localizedAvocetPhrases _cn_distinctObjects];
      v6 = contactSearchLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [CNACTStewieFacade avocetTerms];
      }

      v7 = MEMORY[0x277CFBED8];
      currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
      timeProvider = [currentEnvironment timeProvider];
      [timeProvider timestamp];
      v10 = [v7 timestampedWithValue:_cn_distinctObjects timestamp:?];
      avocetMemo = selfCopy->_avocetMemo;
      selfCopy->_avocetMemo = v10;

      value = [(CNTimestamped *)selfCopy->_avocetMemo value];
    }
  }

  else
  {
    value = MEMORY[0x277CBEBF8];
  }

  objc_sync_exit(selfCopy);

  return value;
}

- (BOOL)isAvocetEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  withLock_isAvocetEnabled = [(CNACTStewieFacade *)selfCopy withLock_isAvocetEnabled];
  objc_sync_exit(selfCopy);

  return withLock_isAvocetEnabled;
}

- (BOOL)withLock_isAvocetEnabled
{
  isMessagesApp = [objc_opt_class() isMessagesApp];
  if (isMessagesApp)
  {
    getState = [(CTStewieStateMonitor *)self->_stateMonitor getState];
    v5 = [getState isAllowedService:8];

    LOBYTE(isMessagesApp) = v5;
  }

  return isMessagesApp;
}

+ (BOOL)isMessagesApp
{
  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  mainBundleIdentifier = [currentEnvironment mainBundleIdentifier];
  v4 = [mainBundleIdentifier isEqualToString:*MEMORY[0x277CBCF60]];

  return v4;
}

+ (id)localizedEmergencyPhrases
{
  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  localizationServices = [currentEnvironment localizationServices];
  v4 = [localizationServices localizedStringForKey:@"STEWIE_SEARCH_PHRASES" value:&stru_282787720 table:@"Localized-Stewie" bundleForClass:objc_opt_class() comment:0];
  v5 = [v4 componentsSeparatedByString:@"|"];

  return v5;
}

+ (id)localizedAvocetPhrases
{
  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  localizationServices = [currentEnvironment localizationServices];
  v4 = [localizationServices localizedStringForKey:@"AVOCET_SEARCH_PHRASES" value:&stru_282787720 table:@"Localized-Avocet" bundleForClass:objc_opt_class() comment:0];
  v5 = [v4 componentsSeparatedByString:@"|"];

  return v5;
}

- (id)numbers
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v9 = 0;
  v3 = [(CoreTelephonyClient *)coreTelephonyClient getAllEmergencyNumbersWithError:&v9];
  v4 = v9;
  v5 = v3;
  v6 = v5;
  if (!v5)
  {
    v7 = contactSearchLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CNACTStewieFacade numbers];
    }

    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (void)stateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = contactSearchLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CNACTStewieFacade stateChanged:];
  }

  emergencyMemo = selfCopy->_emergencyMemo;
  selfCopy->_emergencyMemo = 0;

  avocetMemo = selfCopy->_avocetMemo;
  selfCopy->_avocetMemo = 0;

  objc_sync_exit(selfCopy);
}

- (void)emergencyTerms
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)avocetTerms
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)numbers
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stateChanged:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end