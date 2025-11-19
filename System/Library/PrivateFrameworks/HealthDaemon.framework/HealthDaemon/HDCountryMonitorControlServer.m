@interface HDCountryMonitorControlServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
- (void)remote_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)a3;
@end

@implementation HDCountryMonitorControlServer

- (void)remote_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)a3
{
  v4 = a3;
  OTAFeatureAvailabilityManager = self->_OTAFeatureAvailabilityManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__HDCountryMonitorControlServer_remote_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke;
  v8[3] = &unk_2786130B0;
  v8[4] = self;
  [(HDOTAFeatureAvailabilityManager *)OTAFeatureAvailabilityManager downloadWithCompletion:v8];
  countryMonitor = self->_countryMonitor;
  if (countryMonitor)
  {
    [(HDPeriodicCountryMonitor *)countryMonitor fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:v4];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Country monitoring not available"];
    (*(v4 + 2))(v4, 0, 0, v7);
  }
}

void __99__HDCountryMonitorControlServer_remote_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v5;
      v9 = v11;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Error performing immediate download: %{public}@", &v10, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v11 profile];
  v15 = [v14 periodicCountryMonitor];

  v16 = [(HDStandardTaskServer *)[HDCountryMonitorControlServer alloc] initWithUUID:v13 configuration:v12 client:v11 delegate:v10];
  countryMonitor = v16->_countryMonitor;
  v16->_countryMonitor = v15;
  v18 = v15;

  v19 = [v11 profile];

  v20 = [v19 daemon];
  v21 = [v20 OTAFeatureAvailabilityManager];
  OTAFeatureAvailabilityManager = v16->_OTAFeatureAvailabilityManager;
  v16->_OTAFeatureAvailabilityManager = v21;

  return v16;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end