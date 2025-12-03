@interface HDOTAFeatureDisableAndExpiryProvider
- (HDFeatureDisableAndExpiryProvidingDelegate)delegate;
- (HDOTAFeatureDisableAndExpiryProvider)initWithDaemon:(id)daemon featureIdentifier:(id)identifier;
- (HDOTAFeatureDisableAndExpiryProvider)initWithDaemon:(id)daemon remoteDisableCondition:(id)condition seedExpirationCondition:(id)expirationCondition;
- (id)rescindedStatusForCountryCode:(id)code device:(id)device error:(id *)error;
- (id)rescindedStatusOnActivePairedDeviceForCountryCode:(id)code error:(id *)error;
- (void)OTAFeatureAvailabilityManagerDidUpdateFeatureAvailabilityInfo:(id)info;
@end

@implementation HDOTAFeatureDisableAndExpiryProvider

- (HDOTAFeatureDisableAndExpiryProvider)initWithDaemon:(id)daemon featureIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  daemonCopy = daemon;
  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    selfCopy = self;
    v16 = 2114;
    v17 = identifierCopy;
    _os_log_debug_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEBUG, "[%{public}@] Initializing with a featureIdentifier: %{public}@", buf, 0x16u);
  }

  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Disable%@", identifierCopy];
  identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expire%@", identifierCopy];
  v11 = [(HDOTAFeatureDisableAndExpiryProvider *)self initWithDaemon:daemonCopy remoteDisableCondition:identifierCopy seedExpirationCondition:identifierCopy2];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (HDOTAFeatureDisableAndExpiryProvider)initWithDaemon:(id)daemon remoteDisableCondition:(id)condition seedExpirationCondition:(id)expirationCondition
{
  daemonCopy = daemon;
  conditionCopy = condition;
  expirationConditionCopy = expirationCondition;
  v23.receiver = self;
  v23.super_class = HDOTAFeatureDisableAndExpiryProvider;
  v11 = [(HDOTAFeatureDisableAndExpiryProvider *)&v23 init];
  if (v11)
  {
    v12 = [conditionCopy copy];
    remoteDisableCondition = v11->_remoteDisableCondition;
    v11->_remoteDisableCondition = v12;

    v14 = [expirationConditionCopy copy];
    seedExpirationCondition = v11->_seedExpirationCondition;
    v11->_seedExpirationCondition = v14;

    v16 = HKLogInfrastructure();
    loggingCategory = v11->_loggingCategory;
    v11->_loggingCategory = v16;

    oTAFeatureAvailabilityManager = [daemonCopy OTAFeatureAvailabilityManager];
    OTAFeatureAvailabilityManager = v11->_OTAFeatureAvailabilityManager;
    v11->_OTAFeatureAvailabilityManager = oTAFeatureAvailabilityManager;

    nanoRegistryDeviceCapabilityProvider = [daemonCopy nanoRegistryDeviceCapabilityProvider];
    nanoRegistryDeviceCapabilityProvider = v11->_nanoRegistryDeviceCapabilityProvider;
    v11->_nanoRegistryDeviceCapabilityProvider = nanoRegistryDeviceCapabilityProvider;

    [(HDOTAFeatureAvailabilityManager *)v11->_OTAFeatureAvailabilityManager registerObserver:v11 queue:0];
  }

  return v11;
}

- (id)rescindedStatusOnActivePairedDeviceForCountryCode:(id)code error:(id *)error
{
  codeCopy = code;
  if (self)
  {
    activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_nanoRegistryDeviceCapabilityProvider activePairedDevice];
  }

  else
  {
    activePairedDevice = 0;
  }

  v8 = [(HDOTAFeatureDisableAndExpiryProvider *)self rescindedStatusForCountryCode:codeCopy device:activePairedDevice error:error];

  return v8;
}

- (id)rescindedStatusForCountryCode:(id)code device:(id)device error:(id *)error
{
  v46[2] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  deviceCopy = device;
  v10 = [[HDWatchRemoteFeatureAvailabilityDataSource alloc] initWithDevice:deviceCopy];

  [(HDWatchRemoteFeatureAvailabilityDataSource *)v10 setOnboardingCountryCode:codeCopy];
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

    evaluateAll = [v20 evaluateAll];
    v22 = [evaluateAll objectForKeyedSubscript:self->_remoteDisableCondition];
    bOOLValue = [v22 BOOLValue];

    v24 = [evaluateAll objectForKeyedSubscript:self->_seedExpirationCondition];
    bOOLValue2 = [v24 BOOLValue];

    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEBUG))
    {
      v34 = MEMORY[0x277CCABB0];
      log = loggingCategory;
      v35 = [v34 numberWithBool:bOOLValue];
      v32 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue2];
      *buf = 138544130;
      selfCopy = self;
      v40 = 2112;
      v41 = codeCopy;
      v42 = 2112;
      v43 = v35;
      v44 = 2112;
      v45 = v32;
      v33 = v32;
      _os_log_debug_impl(&dword_228986000, log, OS_LOG_TYPE_DEBUG, "[%{public}@] rescindedStatusForCountryCode: %@ -> (isDisabled: %@, isExpired: %@)", buf, 0x2Au);
    }

    v27 = &unk_283CB3C30;
    if (bOOLValue)
    {
      v27 = &unk_283CB3C60;
    }

    if (bOOLValue2)
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

  if (!error)
  {
    _HKLogDroppedError();
LABEL_18:
    v28 = 0;
    goto LABEL_10;
  }

  v31 = v20;
  v28 = 0;
  *error = v20;
LABEL_10:

LABEL_11:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)OTAFeatureAvailabilityManagerDidUpdateFeatureAvailabilityInfo:(id)info
{
  delegate = [(HDOTAFeatureDisableAndExpiryProvider *)self delegate];
  [delegate disableAndExpiryProviderDidUpdate:self];
}

- (HDFeatureDisableAndExpiryProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end