@interface HDCountryMonitorControlServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)requiredEntitlements;
- (void)remote_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)completion;
@end

@implementation HDCountryMonitorControlServer

- (void)remote_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)completion
{
  completionCopy = completion;
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
    [(HDPeriodicCountryMonitor *)countryMonitor fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:completionCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Country monitoring not available"];
    (*(completionCopy + 2))(completionCopy, 0, 0, v7);
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

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  clientCopy = client;
  configurationCopy = configuration;
  dCopy = d;
  profile = [clientCopy profile];
  periodicCountryMonitor = [profile periodicCountryMonitor];

  v16 = [(HDStandardTaskServer *)[HDCountryMonitorControlServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
  countryMonitor = v16->_countryMonitor;
  v16->_countryMonitor = periodicCountryMonitor;
  v18 = periodicCountryMonitor;

  profile2 = [clientCopy profile];

  daemon = [profile2 daemon];
  oTAFeatureAvailabilityManager = [daemon OTAFeatureAvailabilityManager];
  OTAFeatureAvailabilityManager = v16->_OTAFeatureAvailabilityManager;
  v16->_OTAFeatureAvailabilityManager = oTAFeatureAvailabilityManager;

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