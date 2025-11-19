@interface MODefaultsManager
+ (BOOL)isExtendedLogEnabled:(id)a3 forDetaultsManager:(id)a4;
+ (id)momentsDaemonDefaults;
+ (id)onboardingDateKey:(id)a3;
- (MODefaultsManager)initWithSuiteName:(id)a3;
- (MODefaultsManager)initWithUniverse:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKeyWithoutLog:(id)a3;
- (id)onboardingDateFor:(id)a3;
- (void)deleteObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObjectWithoutLog:(id)a3 forKey:(id)a4;
@end

@implementation MODefaultsManager

+ (id)onboardingDateKey:(id)a3
{
  v3 = onboardingDateKey__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[MODefaultsManager(MOEventBundleSourceType) onboardingDateKey:];
  }

  v5 = [onboardingDateKey__mapping objectForKeyedSubscript:v4];

  return v5;
}

void __64__MODefaultsManager_MOEventBundleSourceType__onboardingDateKey___block_invoke()
{
  v4[8] = *MEMORY[0x277D85DE8];
  v3[0] = MOEventBundleSourceTypeMedia;
  v3[1] = MOEventBundleSourceTypePhoto;
  v4[0] = @"OnboardingEarliestCollectDateMedia";
  v4[1] = @"OnboardingEarliestCollectDatePhoto";
  v3[2] = MOEventBundleSourceTypeContact;
  v3[3] = MOEventBundleSourceTypeActivity;
  v4[2] = @"OnboardingEarliestCollectDateCommunication";
  v4[3] = @"OnboardingEarliestCollectDateActivity";
  v3[4] = MOEventBundleSourceTypeVisitLocation;
  v3[5] = MOEventBundleSourceTypeThirdPartyMedia;
  v4[4] = @"OnboardingEarliestCollectDateLocation";
  v4[5] = @"OnboardingEarliestCollectDateMedia";
  v3[6] = MOEventBundleSourceTypePeopleContext;
  v3[7] = MOEventBundleSourceTypeStateOfMind;
  v4[6] = @"OnboardingEarliestCollectDatePeople";
  v4[7] = @"OnboardingEarliestCollectDateStateOfMind";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:8];
  v1 = onboardingDateKey__mapping;
  onboardingDateKey__mapping = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)onboardingDateFor:(id)a3
{
  v4 = [MODefaultsManager onboardingDateKey:a3];
  if (v4)
  {
    v5 = [(MODefaultsManager *)self objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MODefaultsManager)initWithUniverse:(id)a3
{
  v7.receiver = self;
  v7.super_class = MODefaultsManager;
  v3 = [(MODefaultsManager *)&v7 init];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    userDefaults = v3->_userDefaults;
    v3->_userDefaults = v4;
  }

  return v3;
}

- (id)objectForKey:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(NSUserDefaults *)self->_userDefaults objectForKey:v5];
    v7 = _mo_log_facility_get_os_log(MOLogFacilityDefaults);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(MODefaultsManager *)v5 objectForKey:v6, v7];
    }
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKey:];
    }

    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MODefaultsManager.m" lineNumber:32 description:{@"Invalid parameter not satisfying: key (in %s:%d)", "-[MODefaultsManager objectForKey:]", 32}];

    v7 = _mo_log_facility_get_os_log(MOLogFacilityDefaults);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKey:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (id)objectForKeyWithoutLog:(id)a3
{
  if (a3)
  {
    v4 = [(NSUserDefaults *)self->_userDefaults objectForKey:?];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKeyWithoutLog:];
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MODefaultsManager.m" lineNumber:52 description:{@"Invalid parameter not satisfying: key (in %s:%d)", "-[MODefaultsManager objectForKeyWithoutLog:]", 52}];

    v8 = _mo_log_facility_get_os_log(MOLogFacilityDefaults);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager objectForKeyWithoutLog:v8];
    }

    v4 = 0;
  }

  return v4;
}

- (void)deleteObjectForKey:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityDefaults);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[MODefaultsManager deleteObjectForKey:]";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_22D8C5000, v6, OS_LOG_TYPE_INFO, "%s, deleting key, %@", buf, 0x16u);
    }

    [(NSUserDefaults *)self->_userDefaults removeObjectForKey:v5];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager deleteObjectForKey:];
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MODefaultsManager.m" lineNumber:66 description:{@"Invalid parameter not satisfying: key (in %s:%d)", "-[MODefaultsManager deleteObjectForKey:]", 66}];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = _mo_log_facility_get_os_log(MOLogFacilityDefaults);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v14 = "[MODefaultsManager setObject:forKey:]";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_22D8C5000, v9, OS_LOG_TYPE_INFO, "%s, key, %@, value, %@", buf, 0x20u);
    }

    [(NSUserDefaults *)self->_userDefaults setObject:v7 forKey:v8];
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager setObject:forKey:];
    }

    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MODefaultsManager.m" lineNumber:80 description:{@"Invalid parameter not satisfying: key (in %s:%d)", "-[MODefaultsManager setObject:forKey:]", 80}];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setObjectWithoutLog:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    userDefaults = self->_userDefaults;

    [(NSUserDefaults *)userDefaults setObject:a3 forKey:?];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MODefaultsManager setObjectWithoutLog:forKey:];
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MODefaultsManager.m" lineNumber:97 description:{@"Invalid parameter not satisfying: key (in %s:%d)", "-[MODefaultsManager setObjectWithoutLog:forKey:]", 97}];
  }
}

- (MODefaultsManager)initWithSuiteName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MODefaultsManager;
  v5 = [(MODefaultsManager *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v4];
    userDefaults = v5->_userDefaults;
    v5->_userDefaults = v6;
  }

  return v5;
}

+ (id)momentsDaemonDefaults
{
  if (momentsDaemonDefaults_onceToken != -1)
  {
    +[MODefaultsManager momentsDaemonDefaults];
  }

  v3 = momentsDaemonDefaults_shared;

  return v3;
}

void __42__MODefaultsManager_momentsDaemonDefaults__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v0 bundleIdentifier];

  LODWORD(v0) = [v4 isEqualToString:@"com.apple.momentsd"];
  v1 = [MODefaultsManager alloc];
  if (v0)
  {
    v2 = [(MODefaultsManager *)v1 initWithUniverse:0];
  }

  else
  {
    v2 = [(MODefaultsManager *)v1 initWithSuiteName:@"com.apple.momentsd"];
  }

  v3 = momentsDaemonDefaults_shared;
  momentsDaemonDefaults_shared = v2;
}

+ (BOOL)isExtendedLogEnabled:(id)a3 forDetaultsManager:(id)a4
{
  v4 = [a4 objectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)objectForKey:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[MODefaultsManager objectForKey:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_22D8C5000, log, OS_LOG_TYPE_DEBUG, "%s, key, %@, value, %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)objectForKey:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22D8C5000, v0, v1, "Invalid parameter not satisfying: key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)objectForKey:(os_log_t)log .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[MODefaultsManager objectForKey:]";
  _os_log_error_impl(&dword_22D8C5000, log, OS_LOG_TYPE_ERROR, "%s, key cannot be nil!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)objectForKeyWithoutLog:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22D8C5000, v0, v1, "Invalid parameter not satisfying: key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)objectForKeyWithoutLog:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[MODefaultsManager objectForKeyWithoutLog:]";
  _os_log_error_impl(&dword_22D8C5000, log, OS_LOG_TYPE_ERROR, "%s, key cannot be nil!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)deleteObjectForKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22D8C5000, v0, v1, "Invalid parameter not satisfying: key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setObject:forKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22D8C5000, v0, v1, "Invalid parameter not satisfying: key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setObjectWithoutLog:forKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_22D8C5000, v0, v1, "Invalid parameter not satisfying: key (in %s:%d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end