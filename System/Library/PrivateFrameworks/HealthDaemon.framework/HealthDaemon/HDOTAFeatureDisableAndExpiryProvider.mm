@interface HDOTAFeatureDisableAndExpiryProvider
- (HDFeatureDisableAndExpiryProvidingDelegate)delegate;
- (HDOTAFeatureDisableAndExpiryProvider)initWithDaemon:(id)a3 featureIdentifier:(id)a4;
- (HDOTAFeatureDisableAndExpiryProvider)initWithDaemon:(id)a3 remoteDisableCondition:(id)a4 seedExpirationCondition:(id)a5;
- (id)rescindedStatusForCountryCode:(id)a3 device:(id)a4 error:(id *)a5;
- (id)rescindedStatusOnActivePairedDeviceForCountryCode:(id)a3 error:(id *)a4;
- (void)OTAFeatureAvailabilityManagerDidUpdateFeatureAvailabilityInfo:(id)a3;
@end

@implementation HDOTAFeatureDisableAndExpiryProvider

- (HDOTAFeatureDisableAndExpiryProvider)initWithDaemon:(id)a3 featureIdentifier:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v6;
    _os_log_debug_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEBUG, "[%{public}@] Initializing with a featureIdentifier: %{public}@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Disable%@", v6];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expire%@", v6];
  v11 = [(HDOTAFeatureDisableAndExpiryProvider *)self initWithDaemon:v7 remoteDisableCondition:v9 seedExpirationCondition:v10];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (HDOTAFeatureDisableAndExpiryProvider)initWithDaemon:(id)a3 remoteDisableCondition:(id)a4 seedExpirationCondition:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = HDOTAFeatureDisableAndExpiryProvider;
  v11 = [(HDOTAFeatureDisableAndExpiryProvider *)&v23 init];
  if (v11)
  {
    v12 = [v9 copy];
    remoteDisableCondition = v11->_remoteDisableCondition;
    v11->_remoteDisableCondition = v12;

    v14 = [v10 copy];
    seedExpirationCondition = v11->_seedExpirationCondition;
    v11->_seedExpirationCondition = v14;

    v16 = HKLogInfrastructure();
    loggingCategory = v11->_loggingCategory;
    v11->_loggingCategory = v16;

    v18 = [v8 OTAFeatureAvailabilityManager];
    OTAFeatureAvailabilityManager = v11->_OTAFeatureAvailabilityManager;
    v11->_OTAFeatureAvailabilityManager = v18;

    v20 = [v8 nanoRegistryDeviceCapabilityProvider];
    nanoRegistryDeviceCapabilityProvider = v11->_nanoRegistryDeviceCapabilityProvider;
    v11->_nanoRegistryDeviceCapabilityProvider = v20;

    [(HDOTAFeatureAvailabilityManager *)v11->_OTAFeatureAvailabilityManager registerObserver:v11 queue:0];
  }

  return v11;
}

- (id)rescindedStatusOnActivePairedDeviceForCountryCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self)
  {
    v7 = [(HDPairedDeviceCapabilityProviding *)self->_nanoRegistryDeviceCapabilityProvider activePairedDevice];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HDOTAFeatureDisableAndExpiryProvider *)self rescindedStatusForCountryCode:v6 device:v7 error:a4];

  return v8;
}

- (id)rescindedStatusForCountryCode:(id)a3 device:(id)a4 error:(id *)a5
{
  v46[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [[HDWatchRemoteFeatureAvailabilityDataSource alloc] initWithDevice:v9];

  [(HDWatchRemoteFeatureAvailabilityDataSource *)v10 setOnboardingCountryCode:v8];
  OTAFeatureAvailabilityManager = self->_OTAFeatureAvailabilityManager;
  v37 = 0;
  v12 = [(HDOTAFeatureAvailabilityManager *)OTAFeatureAvailabilityManager disableAndExpiryConditionsDictionaryWithError:&v37];
  v13 = v37;
  v14 = v13;
  if (v12)
  {
    v15 = objc_alloc(MEMORY[0x277CCD8A0]);
    v16 = MEMORY[0x277CBEB98];
    seedExpirationCondition = self->_seedExpirationCondition;
    v46[0] = self->_remoteDisableCondition;
    v46[1] = seedExpirationCondition;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v19 = [v16 setWithArray:v18];
    v20 = [v15 initWithRawValue:v12 dataSource:v10 supportedConditions:v19];

    v21 = [v20 evaluateAll];
    v22 = [v21 objectForKeyedSubscript:self->_remoteDisableCondition];
    v23 = [v22 BOOLValue];

    v24 = [v21 objectForKeyedSubscript:self->_seedExpirationCondition];
    v25 = [v24 BOOLValue];

    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEBUG))
    {
      v34 = MEMORY[0x277CCABB0];
      log = loggingCategory;
      v35 = [v34 numberWithBool:v23];
      v32 = [MEMORY[0x277CCABB0] numberWithBool:v25];
      *buf = 138544130;
      v39 = self;
      v40 = 2112;
      v41 = v8;
      v42 = 2112;
      v43 = v35;
      v44 = 2112;
      v45 = v32;
      v33 = v32;
      _os_log_debug_impl(&dword_228986000, log, OS_LOG_TYPE_DEBUG, "[%{public}@] rescindedStatusForCountryCode: %@ -> (isDisabled: %@, isExpired: %@)", buf, 0x2Au);
    }

    v27 = &unk_283CB3C30;
    if (v23)
    {
      v27 = &unk_283CB3C60;
    }

    if (v25)
    {
      v28 = &unk_283CB3C48;
    }

    else
    {
      v28 = v27;
    }

    goto LABEL_10;
  }

  if ([v13 hk_isHealthKitErrorWithCode:11])
  {
    v28 = &unk_283CB3C30;
    goto LABEL_11;
  }

  v20 = v14;
  if (!v20)
  {
    goto LABEL_18;
  }

  if (!a5)
  {
    _HKLogDroppedError();
LABEL_18:
    v28 = 0;
    goto LABEL_10;
  }

  v31 = v20;
  v28 = 0;
  *a5 = v20;
LABEL_10:

LABEL_11:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)OTAFeatureAvailabilityManagerDidUpdateFeatureAvailabilityInfo:(id)a3
{
  v4 = [(HDOTAFeatureDisableAndExpiryProvider *)self delegate];
  [v4 disableAndExpiryProviderDidUpdate:self];
}

- (HDFeatureDisableAndExpiryProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end