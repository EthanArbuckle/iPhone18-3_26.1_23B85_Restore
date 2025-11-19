@interface HMDSiriMultiUserNewLanguageNotificationManager
+ (id)logCategory;
- (HMDSiriMultiUserNewLanguageNotificationManager)initWithContext:(id)a3;
- (void)_postNotificationIfNecessaryForMediaAccessory:(id)a3;
- (void)checkAllMediaAccessoriesAndPostNotificationIfNecessary;
- (void)mediaAccessory:(id)a3 didUpdateSoftwareToVersion:(id)a4;
@end

@implementation HMDSiriMultiUserNewLanguageNotificationManager

- (void)_postNotificationIfNecessaryForMediaAccessory:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSiriMultiUserNewLanguageNotificationManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  if ([v4 isHomePod])
  {
    v7 = [(HMDSiriMultiUserNewLanguageNotificationManager *)self context];
    v8 = [v7 hasCurrentUserSeenNotification];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v12;
        v13 = "%{public}@Not posting RMV new language notification because current user has already seen the notification";
LABEL_8:
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, v13, buf, 0xCu);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v14 = [(HMDSiriMultiUserNewLanguageNotificationManager *)self context];
    v15 = [v14 isRMVEnabledForCurrentUser];

    if (v15)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v12;
        v13 = "%{public}@Not posting RMV new language notification because RMV is already enabled for the current user";
        goto LABEL_8;
      }

LABEL_9:

      objc_autoreleasePoolPop(v9);
      goto LABEL_36;
    }

    v16 = [(HMDSiriMultiUserNewLanguageNotificationManager *)self context];
    v17 = [v16 currentDeviceSiriLanguage];

    v18 = [(HMDSiriMultiUserNewLanguageNotificationManager *)self context];
    v19 = [v18 siriLanguageForMediaAccessory:v4];

    v20 = [v4 softwareVersion];
    v21 = [(HMDSiriMultiUserNewLanguageNotificationManager *)self context];
    v22 = [v21 siriLanguagesRequiringNotificationForVersion:v20];

    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    v26 = v25;
    if (v17 && v19)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v62 = v27;
        v63 = 2112;
        v64 = v17;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Current device siri language: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v28 = objc_autoreleasePoolPush();
      v29 = v24;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v62 = v31;
        v63 = 2112;
        v64 = v19;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Media accessory siri language: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v32 = objc_autoreleasePoolPush();
      v33 = v29;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [v20 shortVersionString];
        *buf = 138543618;
        v62 = v35;
        v63 = 2112;
        v64 = v36;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Media accessory software version: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v37 = [v19 isEqualToString:v17];
      v23 = objc_autoreleasePoolPush();
      v24 = v33;
      v26 = HMFGetOSLogHandle();
      v38 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
      if (v37)
      {
        if (v38)
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543618;
          v62 = v39;
          v63 = 2112;
          v64 = v22;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Siri languages requiring notification: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        if ([v22 containsObject:v19])
        {
          v40 = [(HMDSiriMultiUserNewLanguageNotificationManager *)v24 context];
          v41 = [v40 mediaAccessories];
          v42 = [v41 na_filter:&__block_literal_global_117];
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __96__HMDSiriMultiUserNewLanguageNotificationManager__postNotificationIfNecessaryForMediaAccessory___block_invoke_2;
          v59[3] = &unk_279734F10;
          v60 = v20;
          v43 = [v42 na_all:v59];

          v44 = objc_autoreleasePoolPush();
          v45 = v24;
          v46 = HMFGetOSLogHandle();
          v47 = os_log_type_enabled(v46, OS_LOG_TYPE_INFO);
          if (v43)
          {
            if (v47)
            {
              v48 = HMFGetLogIdentifier();
              *buf = 138543618;
              v62 = v48;
              v63 = 2112;
              v64 = v19;
              _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Posting notification for language: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v44);
            v49 = [(HMDSiriMultiUserNewLanguageNotificationManager *)v45 context];
            [v49 showNotificationForNewlySupportedLanguage:v19];

            v50 = [(HMDSiriMultiUserNewLanguageNotificationManager *)v45 context];
            [v50 setCurrentUserHasSeenNotification];

            v51 = [(HMDSiriMultiUserNewLanguageNotificationManager *)v45 context];
            [v51 submitLogEventForShownNotificationWithLanguage:v19];
          }

          else
          {
            if (v47)
            {
              v58 = HMFGetLogIdentifier();
              *buf = 138543362;
              v62 = v58;
              _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Not posting RMV new language notification because at least one homepod is on a lower software version", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v44);
          }

          goto LABEL_35;
        }

        v23 = objc_autoreleasePoolPush();
        v24 = v24;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v52 = HMFGetLogIdentifier();
          *buf = 138543362;
          v62 = v52;
          v53 = "%{public}@Not posting RMV new language notification because media accessory siri language is not in the set of siri languages requiring notification";
          goto LABEL_32;
        }
      }

      else if (v38)
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v52;
        v53 = "%{public}@Not posting RMV new language notification media accessory language does not match current device siri language";
LABEL_32:
        v54 = v26;
        v55 = OS_LOG_TYPE_INFO;
        v56 = 12;
        goto LABEL_33;
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      *buf = 138543874;
      v62 = v52;
      v63 = 2112;
      v64 = v17;
      v65 = 2112;
      v66 = v19;
      v53 = "%{public}@Encountered unexpected missing value. currentDeviceSiriLanguage: %@, mediaAccessorySiriLanguage: %@";
      v54 = v26;
      v55 = OS_LOG_TYPE_ERROR;
      v56 = 32;
LABEL_33:
      _os_log_impl(&dword_2531F8000, v54, v55, v53, buf, v56);
    }

    objc_autoreleasePoolPop(v23);
LABEL_35:
  }

LABEL_36:

  v57 = *MEMORY[0x277D85DE8];
}

uint64_t __96__HMDSiriMultiUserNewLanguageNotificationManager__postNotificationIfNecessaryForMediaAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 softwareVersion];
  v4 = [v3 isAtLeastVersion:*(a1 + 32)];

  return v4;
}

- (void)mediaAccessory:(id)a3 didUpdateSoftwareToVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSiriMultiUserNewLanguageNotificationManager *)self context];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HMDSiriMultiUserNewLanguageNotificationManager_mediaAccessory_didUpdateSoftwareToVersion___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

uint64_t __92__HMDSiriMultiUserNewLanguageNotificationManager_mediaAccessory_didUpdateSoftwareToVersion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Media accessory: %@, did update to software version: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _postNotificationIfNecessaryForMediaAccessory:*(a1 + 40)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)checkAllMediaAccessoriesAndPostNotificationIfNecessary
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriMultiUserNewLanguageNotificationManager *)self context];
  v4 = [v3 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Checking all media accessories for RMV new language notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDSiriMultiUserNewLanguageNotificationManager *)v6 context];
  v10 = [v9 mediaAccessories];

  if ([v10 hmf_isEmpty])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@No media accessories in home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __104__HMDSiriMultiUserNewLanguageNotificationManager_checkAllMediaAccessoriesAndPostNotificationIfNecessary__block_invoke;
    v16[3] = &unk_279731490;
    v16[4] = v6;
    [v10 na_each:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDSiriMultiUserNewLanguageNotificationManager)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDSiriMultiUserNewLanguageNotificationManager;
  v6 = [(HMDSiriMultiUserNewLanguageNotificationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)v7->_context setDelegate:v7];
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t33_170123 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t33_170123, &__block_literal_global_119_170124);
  }

  v3 = logCategory__hmf_once_v34_170125;

  return v3;
}

uint64_t __61__HMDSiriMultiUserNewLanguageNotificationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v34_170125;
  logCategory__hmf_once_v34_170125 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end