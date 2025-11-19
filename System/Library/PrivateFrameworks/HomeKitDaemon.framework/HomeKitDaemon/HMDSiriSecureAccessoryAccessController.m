@interface HMDSiriSecureAccessoryAccessController
- (HMDSiriSecureAccessoryAccessController)initWithDataSource:(id)a3;
- (HMDSiriSecureAccessoryAccessController)initWithDataSource:(id)a3 watchAuthDataSource:(id)a4;
- (void)isUnsecuringSiriActionAllowedWithCompletion:(id)a3;
@end

@implementation HMDSiriSecureAccessoryAccessController

- (void)isUnsecuringSiriActionAllowedWithCompletion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = a3;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if ([WeakRetained currentDeviceSupportsSiriUnsecuringActionsWithNoPasscodeForSiriSecureAccessoryAccessController:self])
    {
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Denying Siri access due to running tvOS-only code path on other platform", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }

    v9 = objc_loadWeakRetained(&self->_dataSource);
    if ([v9 currentDeviceSupportsSiriUnsecuringActionsWithWatchAuthForSiriSecureAccessoryAccessController:self])
    {
      if ([v9 isCurrentDevicePairedWithWatchForSiriSecureAccessoryAccessController:self])
      {
        if (([v9 homeLocationForSiriSecureAccessoryAccessController:self] & 0xFFFFFFFFFFFFFFFDLL) == 1)
        {

          [objc_getProperty(self v10];
          goto LABEL_17;
        }

        v11 = objc_autoreleasePoolPush();
        v15 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v17 = HMStringFromHomeLocation();
          *buf = 138543618;
          v21 = v16;
          v22 = 2112;
          v23 = v17;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Siri access is not allowed for request because current device is not at or near home (%@)", buf, 0x16u);
        }
      }

      else
      {
        v11 = objc_autoreleasePoolPush();
        v12 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543362;
          v21 = v14;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Siri access is not allowed for request because current device has no paired watch", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v19[2](v19, 0);
LABEL_17:
  v18 = *MEMORY[0x277D85DE8];
}

- (HMDSiriSecureAccessoryAccessController)initWithDataSource:(id)a3 watchAuthDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDSiriSecureAccessoryAccessController;
  v8 = [(HMDSiriSecureAccessoryAccessController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    objc_storeStrong(&v9->_watchAuthDataSource, a4);
  }

  return v9;
}

- (HMDSiriSecureAccessoryAccessController)initWithDataSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMDAssistantWatchAuthenticationDataSource);
  v6 = [(HMDSiriSecureAccessoryAccessController *)self initWithDataSource:v4 watchAuthDataSource:v5];

  return v6;
}

@end