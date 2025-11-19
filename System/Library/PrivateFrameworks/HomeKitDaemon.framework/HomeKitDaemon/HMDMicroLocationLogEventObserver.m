@interface HMDMicroLocationLogEventObserver
+ (id)logCategory;
- (HMDMicroLocationLogEventObserver)initWithDataSource:(id)a3 microLocationManager:(id)a4;
- (id)isEligibleForDonationWithHAPServiceType:(void *)a3 HAPCharacteristicType:;
- (void)observeEvent:(id)a3;
@end

@implementation HMDMicroLocationLogEventObserver

- (void)observeEvent:(id)a3
{
  v12 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = [v12 shouldTriggerMicroLocationRecordingScanForLogEventObserver:self];
    v5 = [v12 shouldTriggerMicroLocationLocalizationScanForLogEventObserver:self];
    v6 = v5;
    if ((v4 & 1) != 0 || v5)
    {
      v7 = [v12 microLocationMetadataForLogEventObserver:self];
      v9 = [v12 microLocationScanTriggerTypeForLogEventObserver:self];
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

- (HMDMicroLocationLogEventObserver)initWithDataSource:(id)a3 microLocationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDMicroLocationLogEventObserver;
  v8 = [(HMDMicroLocationLogEventObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    objc_storeStrong(&v9->_microLocationManager, a4);
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

- (id)isEligibleForDonationWithHAPServiceType:(void *)a3 HAPCharacteristicType:
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = [WeakRetained hapMetadataForMicroLocationLogEventObserver:a1];
      if (([v5 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v9, "shouldFilterServiceOfTypeFromApp:", v5) & 1) == 0)
      {
        v10 = [v9 isStandardServiceType:v5];
      }

      else
      {
        v10 = 0;
      }

      if ([v9 shouldFilterCharacteristicOfTypeFromApp:v6])
      {
        v11 = 0;
      }

      else
      {
        v11 = [v9 isStandardCharacteristicType:v6];
      }

      a1 = (v10 & v11);
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Event ineligible for donation because data source is nil", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      a1 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return a1;
}

@end