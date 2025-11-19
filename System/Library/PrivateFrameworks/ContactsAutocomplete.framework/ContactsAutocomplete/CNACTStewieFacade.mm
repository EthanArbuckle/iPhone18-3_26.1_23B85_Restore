@interface CNACTStewieFacade
+ (BOOL)isMessagesApp;
+ (double)ageOfMemo:(id)a3;
+ (id)localizedAvocetPhrases;
+ (id)localizedEmergencyPhrases;
- (BOOL)isAvocetEnabled;
- (BOOL)isEmergencyEnabled;
- (BOOL)withLock_isAvocetEnabled;
- (BOOL)withLock_isEmergencyEnabled;
- (CNACTStewieFacade)init;
- (CNACTStewieFacade)initWithCoreTelephonyClient:(id)a3 stateMonitor:(id)a4;
- (NSArray)avocetTerms;
- (NSArray)emergencyTerms;
- (NSString)description;
- (id)numbers;
- (void)avocetTerms;
- (void)emergencyTerms;
- (void)numbers;
- (void)startMonitoring;
- (void)stateChanged:(id)a3;
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

- (CNACTStewieFacade)initWithCoreTelephonyClient:(id)a3 stateMonitor:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
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
    objc_storeStrong(&v10->_coreTelephonyClient, a3);
    objc_storeStrong(&v11->_stateMonitor, a4);
    v12 = v11;
  }

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"Stewie terms" object:self->_emergencyMemo];
  v5 = [v3 appendName:@"Avocet terms" object:self->_avocetMemo];
  v6 = [v3 build];

  return v6;
}

- (void)startMonitoring
{
  v2 = [(CTStewieStateMonitor *)self->_stateMonitor start];
  v3 = contactSearchLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
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

+ (double)ageOfMemo:(id)a3
{
  if (!a3)
  {
    return 978307200.0;
  }

  v3 = MEMORY[0x277CFBE10];
  v4 = a3;
  v5 = [v3 currentEnvironment];
  v6 = [v5 timeProvider];
  [v6 timestamp];
  v8 = v7;
  [v4 timestamp];
  v10 = v9;

  v11 = v8 - v10;
  return v11;
}

- (NSArray)emergencyTerms
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if ([(CNACTStewieFacade *)v2 withLock_isEmergencyEnabled])
  {
    if ([objc_opt_class() isMemoValid:v2->_emergencyMemo])
    {
      v3 = [(CNTimestamped *)v2->_emergencyMemo value];
    }

    else
    {
      v4 = [objc_opt_class() localizedEmergencyPhrases];
      v5 = [(CNACTStewieFacade *)v2 numbers];
      v17[0] = v4;
      v17[1] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      v7 = [v6 _cn_flatten];
      v8 = [v7 _cn_distinctObjects];

      v9 = contactSearchLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [CNACTStewieFacade emergencyTerms];
      }

      v10 = MEMORY[0x277CFBED8];
      v11 = [MEMORY[0x277CFBE10] currentEnvironment];
      v12 = [v11 timeProvider];
      [v12 timestamp];
      v13 = [v10 timestampedWithValue:v8 timestamp:?];
      emergencyMemo = v2->_emergencyMemo;
      v2->_emergencyMemo = v13;

      v3 = [(CNTimestamped *)v2->_emergencyMemo value];
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  objc_sync_exit(v2);

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isEmergencyEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CNACTStewieFacade *)v2 withLock_isEmergencyEnabled];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)withLock_isEmergencyEnabled
{
  v3 = [objc_opt_class() isMessagesApp];
  if (v3)
  {
    v4 = [(CTStewieStateMonitor *)self->_stateMonitor getState];
    v5 = [v4 isAllowedService:1];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (NSArray)avocetTerms
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(CNACTStewieFacade *)v2 withLock_isAvocetEnabled])
  {
    if ([objc_opt_class() isMemoValid:v2->_avocetMemo])
    {
      v3 = [(CNTimestamped *)v2->_avocetMemo value];
    }

    else
    {
      v4 = [objc_opt_class() localizedAvocetPhrases];
      v5 = [v4 _cn_distinctObjects];
      v6 = contactSearchLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [CNACTStewieFacade avocetTerms];
      }

      v7 = MEMORY[0x277CFBED8];
      v8 = [MEMORY[0x277CFBE10] currentEnvironment];
      v9 = [v8 timeProvider];
      [v9 timestamp];
      v10 = [v7 timestampedWithValue:v5 timestamp:?];
      avocetMemo = v2->_avocetMemo;
      v2->_avocetMemo = v10;

      v3 = [(CNTimestamped *)v2->_avocetMemo value];
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isAvocetEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CNACTStewieFacade *)v2 withLock_isAvocetEnabled];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)withLock_isAvocetEnabled
{
  v3 = [objc_opt_class() isMessagesApp];
  if (v3)
  {
    v4 = [(CTStewieStateMonitor *)self->_stateMonitor getState];
    v5 = [v4 isAllowedService:8];

    LOBYTE(v3) = v5;
  }

  return v3;
}

+ (BOOL)isMessagesApp
{
  v2 = [MEMORY[0x277CFBE10] currentEnvironment];
  v3 = [v2 mainBundleIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CBCF60]];

  return v4;
}

+ (id)localizedEmergencyPhrases
{
  v2 = [MEMORY[0x277CFBE10] currentEnvironment];
  v3 = [v2 localizationServices];
  v4 = [v3 localizedStringForKey:@"STEWIE_SEARCH_PHRASES" value:&stru_282787720 table:@"Localized-Stewie" bundleForClass:objc_opt_class() comment:0];
  v5 = [v4 componentsSeparatedByString:@"|"];

  return v5;
}

+ (id)localizedAvocetPhrases
{
  v2 = [MEMORY[0x277CFBE10] currentEnvironment];
  v3 = [v2 localizationServices];
  v4 = [v3 localizedStringForKey:@"AVOCET_SEARCH_PHRASES" value:&stru_282787720 table:@"Localized-Avocet" bundleForClass:objc_opt_class() comment:0];
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

- (void)stateChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = contactSearchLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CNACTStewieFacade stateChanged:];
  }

  emergencyMemo = v5->_emergencyMemo;
  v5->_emergencyMemo = 0;

  avocetMemo = v5->_avocetMemo;
  v5->_avocetMemo = 0;

  objc_sync_exit(v5);
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