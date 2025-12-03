@interface HMDMicroLocationLogEventObserver
+ (id)logCategory;
- (HMDMicroLocationLogEventObserver)initWithDataSource:(id)source microLocationManager:(id)manager;
- (id)isEligibleForDonationWithHAPServiceType:(void *)type HAPCharacteristicType:;
- (void)observeEvent:(id)event;
@end

@implementation HMDMicroLocationLogEventObserver

- (void)observeEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = [eventCopy shouldTriggerMicroLocationRecordingScanForLogEventObserver:self];
    v5 = [eventCopy shouldTriggerMicroLocationLocalizationScanForLogEventObserver:self];
    v6 = v5;
    if ((v4 & 1) != 0 || v5)
    {
      v7 = [eventCopy microLocationMetadataForLogEventObserver:self];
      v9 = [eventCopy microLocationScanTriggerTypeForLogEventObserver:self];
      if (v6)
      {
        if (self)
        {
          Property = objc_getProperty(self, v8, 8, 1);
        }

        else
        {
          Property = 0;
        }

        [Property triggerThrottledMicroLocationLocalizationScanWithMetadata:v7 triggerType:v9];
      }

      if (v4)
      {
        if (self)
        {
          v11 = objc_getProperty(self, v8, 8, 1);
        }

        else
        {
          v11 = 0;
        }

        [v11 triggerThrottledMicroLocationRecordingScanWithMetadata:v7 triggerType:v9];
      }
    }
  }
}

- (HMDMicroLocationLogEventObserver)initWithDataSource:(id)source microLocationManager:(id)manager
{
  sourceCopy = source;
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = HMDMicroLocationLogEventObserver;
  v8 = [(HMDMicroLocationLogEventObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeStrong(&v9->_microLocationManager, manager);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_4245 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_4245, &__block_literal_global_4246);
  }

  v3 = logCategory__hmf_once_v2_4247;

  return v3;
}

void __47__HMDMicroLocationLogEventObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_4247;
  logCategory__hmf_once_v2_4247 = v1;
}

- (id)isEligibleForDonationWithHAPServiceType:(void *)type HAPCharacteristicType:
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  typeCopy = type;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 2);
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = [WeakRetained hapMetadataForMicroLocationLogEventObserver:self];
      if (([v5 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v9, "shouldFilterServiceOfTypeFromApp:", v5) & 1) == 0)
      {
        v10 = [v9 isStandardServiceType:v5];
      }

      else
      {
        v10 = 0;
      }

      if ([v9 shouldFilterCharacteristicOfTypeFromApp:typeCopy])
      {
        v11 = 0;
      }

      else
      {
        v11 = [v9 isStandardCharacteristicType:typeCopy];
      }

      self = (v10 & v11);
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Event ineligible for donation because data source is nil", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      self = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return self;
}

@end