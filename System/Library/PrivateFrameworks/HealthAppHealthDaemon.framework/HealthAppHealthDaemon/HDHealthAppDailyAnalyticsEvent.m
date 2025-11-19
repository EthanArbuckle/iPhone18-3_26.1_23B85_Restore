@interface HDHealthAppDailyAnalyticsEvent
- (BOOL)_areHealthAppNotificationsAuthorized;
- (BOOL)_areTrendNotificationsEnabled;
- (BOOL)_isTimeInDaylightEnabledForDataSource:(id)a3;
- (HDCloudSyncManager)unitTest_cloudSyncManager;
- (HDDeviceContextStoreManager)unitTest_deviceContextStoreManager;
- (HDHealthAppDailyAnalyticsEvent)initWithProfile:(id)a3;
- (HDHealthAppDailyAnalyticsEvent)initWithProfile:(id)a3 userDefaults:(id)a4;
- (UNUserNotificationCenter)unitTest_userNotificationCenter;
- (id)_cloudSyncManager;
- (id)_deviceContextStoreManager;
- (id)_isHealthAppOnboardedString;
- (id)_supportsSecureContainer;
- (id)_userNotificationCenter;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (int64_t)_approximateDaysSinceLastAppOpen;
- (int64_t)_floorInteger:(int)a3 toSignificantFigures:(int)a4;
- (void)_supportsSecureContainer;
@end

@implementation HDHealthAppDailyAnalyticsEvent

- (HDHealthAppDailyAnalyticsEvent)initWithProfile:(id)a3
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CCE378]];
  v8 = [(HDHealthAppDailyAnalyticsEvent *)self initWithProfile:v5 userDefaults:v7];

  return v8;
}

- (HDHealthAppDailyAnalyticsEvent)initWithProfile:(id)a3 userDefaults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HDHealthAppDailyAnalyticsEvent;
  v8 = [(HDHealthAppDailyAnalyticsEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeStrong(&v9->_userDefaults, a4);
  }

  return v9;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHealthAppDailyAnalyticsEvent _approximateDaysSinceLastAppOpen](self, "_approximateDaysSinceLastAppOpen")}];
  [v8 setObject:v9 forKeyedSubscript:@"daysSinceLastAppOpen"];

  v10 = [(HDHealthAppDailyAnalyticsEvent *)self _isHealthAppOnboardedString];
  [v8 setObject:v10 forKeyedSubscript:@"isOnboarded"];

  v11 = [(HDHealthAppDailyAnalyticsEvent *)self _welcomeFlowCompletedDate];
  v43 = v11;
  if (v11)
  {
    [v11 timeIntervalSinceNow];
    LODWORD(v13) = vcvtmd_s64_f64(v12 / -604800.0);
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHealthAppDailyAnalyticsEvent _floorInteger:toSignificantFigures:](self, "_floorInteger:toSignificantFigures:", v13, 2)}];
    [v8 setObject:v14 forKeyedSubscript:@"weeksSinceOnboarded"];
  }

  else
  {
    [v8 setObject:&unk_283CB86A8 forKeyedSubscript:@"weeksSinceOnboarded"];
  }

  v15 = [(HDHealthAppDailyAnalyticsEvent *)self _supportsSecureContainer];
  if (v15)
  {
    [v8 setObject:v15 forKeyedSubscript:@"supportsSecureContainer"];
  }

  v16 = [v7 environmentDataSource];
  v17 = [v16 activePairedDeviceProductType];
  [v8 setObject:v17 forKeyedSubscript:*MEMORY[0x277CCB7B8]];

  v18 = [v7 environmentDataSource];
  v19 = [v18 activePairedDeviceOSBuildNumber];
  [v8 setObject:v19 forKeyedSubscript:*MEMORY[0x277CCB7B0]];

  v20 = [(HDHealthAppDailyAnalyticsEvent *)self _deviceContextStoreManager];
  v21 = [v20 numberOfDeviceContextsPerDeviceType:a4];

  v42 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v22 = [v21 objectForKeyedSubscript:v42];
  [v8 setObject:v22 forKeyedSubscript:*MEMORY[0x277CCB7D8]];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v24 = [v21 objectForKeyedSubscript:v23];
  [v8 setObject:v24 forKeyedSubscript:*MEMORY[0x277CCB7E8]];

  v25 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v26 = [v21 objectForKeyedSubscript:v25];
  [v8 setObject:v26 forKeyedSubscript:*MEMORY[0x277CCB7F0]];

  v27 = [MEMORY[0x277CCABB0] numberWithInt:3];
  [v21 objectForKeyedSubscript:v27];
  v28 = v41 = v15;
  [v8 setObject:v28 forKeyedSubscript:*MEMORY[0x277CCB7E0]];

  v29 = MEMORY[0x277CCABB0];
  v30 = [v7 environmentDataSource];
  v31 = [v29 numberWithBool:{objc_msgSend(v30, "isImproveHealthAndActivityEnabled")}];
  [v8 setObject:v31 forKeyedSubscript:*MEMORY[0x277CCB7F8]];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDHealthAppDailyAnalyticsEvent _areHealthAppNotificationsAuthorized](self, "_areHealthAppNotificationsAuthorized")}];
  [v8 setObject:v32 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDHealthAppDailyAnalyticsEvent _areTrendNotificationsEnabled](self, "_areTrendNotificationsEnabled")}];
  [v8 setObject:v33 forKeyedSubscript:@"hasTrendsNotification"];

  v34 = MEMORY[0x277CCABB0];
  v35 = [(HDHealthAppDailyAnalyticsEvent *)self _cloudSyncManager];
  v36 = [v34 numberWithBool:{objc_msgSend(v35, "canPerformCloudSyncWithError:", 0)}];
  [v8 setObject:v36 forKeyedSubscript:@"cloudSyncEnabled"];

  v37 = MEMORY[0x277CCABB0];
  v38 = [(HDHealthAppDailyAnalyticsEvent *)self _isTimeInDaylightEnabledForDataSource:v7];

  v39 = [v37 numberWithBool:v38];
  [v8 setObject:v39 forKeyedSubscript:@"timeInDaylightEnabled"];

  return v8;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [v6 healthDataSource];
  v9 = [v8 biologicalSexWithError:a4];

  v10 = HKAnalyticsPropertyValueForBiologicalSex();
  [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCB7D0]];

  v11 = [v6 environmentDataSource];
  v12 = [v11 currentDate];

  v13 = [v6 healthDataSource];

  v14 = [v13 ageWithCurrentDate:v12 error:a4];
  [v7 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCB7C0]];

  return v7;
}

- (int64_t)_approximateDaysSinceLastAppOpen
{
  v2 = [(NSUserDefaults *)self->_userDefaults hk_dateForKey:*MEMORY[0x277CCE380]];
  v3 = v2;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    v5 = vcvtmd_s64_f64(v4 / -86400.0);
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (id)_supportsSecureContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  if (WeakRetained)
  {
    v4 = dispatch_semaphore_create(0);
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__0;
    v18 = __Block_byref_object_dispose__0;
    v19 = 0;
    v5 = [(HDHealthAppDailyAnalyticsEvent *)self _cloudSyncManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__HDHealthAppDailyAnalyticsEvent__supportsSecureContainer__block_invoke;
    v11[3] = &unk_278658600;
    v11[4] = self;
    v6 = v4;
    v12 = v6;
    v13 = &v14;
    [v5 accountDeviceToDeviceEncryptionAvailabilityStatusWithCompletion:v11];

    v7 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v6, v7))
    {
      _HKInitializeLogging();
      v8 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(HDHealthAppDailyAnalyticsEvent *)self _supportsSecureContainer];
      }

      v9 = 0;
    }

    else
    {
      v9 = v15[5];
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HDHealthAppDailyAnalyticsEvent *)self _supportsSecureContainer];
    }

    v9 = 0;
  }

  return v9;
}

void __58__HDHealthAppDailyAnalyticsEvent__supportsSecureContainer__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__HDHealthAppDailyAnalyticsEvent__supportsSecureContainer__block_invoke_cold_1(a1, v5, v6);
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_isHealthAppOnboardedString
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isiPad];
  v5 = MEMORY[0x277CCE350];
  if (!v4)
  {
    v5 = MEMORY[0x277CCE358];
  }

  v6 = *v5;

  v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:v6];

  if (v7)
  {
    v8 = [v7 integerValue];
    v9 = @"false";
    if (v8 > 0)
    {
      v9 = @"true";
    }

    v10 = v9;
  }

  else
  {
    v10 = @"nil";
  }

  return v10;
}

- (BOOL)_areHealthAppNotificationsAuthorized
{
  v2 = [(HDHealthAppDailyAnalyticsEvent *)self _userNotificationCenter];
  v3 = [v2 notificationSettings];

  LOBYTE(v2) = [v3 authorizationStatus] == 2;
  return v2;
}

- (BOOL)_areTrendNotificationsEnabled
{
  v3 = [MEMORY[0x277CCD7C8] primaryProfile];
  v4 = [v3 identifier];
  v5 = [v4 UUIDString];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"HealthSharingPreferences_%@_Notifications_%@", v5, @"significantChanges"];
  LOBYTE(self) = [(NSUserDefaults *)self->_userDefaults BOOLForKey:v6];

  return self;
}

- (int64_t)_floorInteger:(int)a3 toSignificantFigures:(int)a4
{
  if (!a3)
  {
    return 0;
  }

  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  v7 = log10(v6);
  v8 = __exp10((a4 - vcvtpd_s64_f64(v7)));
  return (floor(v8 * a3) / v8);
}

- (BOOL)_isTimeInDaylightEnabledForDataSource:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x277CCE500]];
  v6 = [v5 objectForKey:*MEMORY[0x277CCE508]];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v9 = [v3 environmentDataSource];
    v10 = [v9 activePairedDeviceProductType];
    v8 = v10 != 0;
  }

  return v8;
}

- (id)_cloudSyncManager
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTest_cloudSyncManager);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_unitTest_cloudSyncManager);
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_profile);
    v4 = [v5 cloudSyncManager];
  }

  return v4;
}

- (id)_deviceContextStoreManager
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTest_deviceContextStoreManager);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_unitTest_deviceContextStoreManager);
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_profile);
    v4 = [v5 deviceContextManager];
  }

  return v4;
}

- (id)_userNotificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTest_userNotificationCenter);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_unitTest_userNotificationCenter);
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CE2028]);
    v4 = [v5 initWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
  }

  return v4;
}

- (HDCloudSyncManager)unitTest_cloudSyncManager
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTest_cloudSyncManager);

  return WeakRetained;
}

- (HDDeviceContextStoreManager)unitTest_deviceContextStoreManager
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTest_deviceContextStoreManager);

  return WeakRetained;
}

- (UNUserNotificationCenter)unitTest_userNotificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTest_userNotificationCenter);

  return WeakRetained;
}

- (void)_supportsSecureContainer
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_22939E000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Profile is nil.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __58__HDHealthAppDailyAnalyticsEvent__supportsSecureContainer__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_22939E000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get secure container status with error %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end