@interface HMDSiriMultiUserNewLanguageNotificationManagerContext
+ (id)logCategory;
+ (id)userReadableLanguageFromCode:(id)a3;
- (BOOL)hasCurrentUserSeenNotification;
- (BOOL)isRMVEnabledForCurrentUser;
- (HMDSiriMultiUserNewLanguageNotificationManagerContext)initWithUser:(id)a3 workQueue:(id)a4;
- (HMDSiriMultiUserNewLanguageNotificationManagerContextDelegate)delegate;
- (HMDUser)user;
- (NSArray)mediaAccessories;
- (NSString)currentDeviceSiriLanguage;
- (id)siriLanguageForMediaAccessory:(id)a3;
- (id)siriLanguagesRequiringNotificationForVersion:(id)a3;
- (void)configure;
- (void)handleMediaAccessorySoftwareVersionUpdated:(id)a3;
- (void)setCurrentUserHasSeenNotification;
- (void)showNotificationForNewlySupportedLanguage:(id)a3;
- (void)submitLogEventForShownNotificationWithLanguage:(id)a3;
@end

@implementation HMDSiriMultiUserNewLanguageNotificationManagerContext

- (HMDUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (HMDSiriMultiUserNewLanguageNotificationManagerContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)submitLogEventForShownNotificationWithLanguage:(id)a3
{
  v3 = a3;
  v5 = [[HMDMultiUserNewLanguageNotificationLogEvent alloc] initWithLanguage:v3];

  v4 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v4 submitLogEvent:v5];
}

- (void)showNotificationForNewlySupportedLanguage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self user];
  v6 = [v5 home];

  if (v6)
  {
    v7 = [HMDSiriMultiUserNewLanguageNotificationManagerContext userReadableLanguageFromCode:v4];
    if (v7)
    {
      v8 = +[HMDBulletinBoard sharedBulletinBoard];
      [v8 insertNewRMVLanguageBulletinForHome:v6 language:v7];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine user readable string from language code", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Not showing new language RMV notification because home is nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)siriLanguageForMediaAccessory:(id)a3
{
  v3 = [a3 settingsController];
  v4 = [v3 siriLanguage];

  return v4;
}

- (id)siriLanguagesRequiringNotificationForVersion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v6 = [v5 preferenceForKey:@"forceSiriRMVNewLanguageToEnglish"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@forceSiriRMVNewLanguageToEnglish is enabled, so forcing to english", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CBEB98] setWithObject:@"en-US"];
  }

  else
  {
    v13 = [v4 shortVersionString];

    if (v13)
    {
      v14 = MEMORY[0x277CBEB98];
      v15 = [v4 shortVersionString];
      v16 = AFPreferencesMultiUserCompanionNotificationLanguageCodesForHomePodVersion();
      v17 = [v14 setWithArray:v16];

      goto LABEL_11;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@The software version is nil", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v17 = v12;
LABEL_11:

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSString)currentDeviceSiriLanguage
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 languageCode];

  return v3;
}

- (BOOL)isRMVEnabledForCurrentUser
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self user];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 userDataController];
    v6 = [v5 isRecognizeMyVoiceEnabled];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to setCurrentUserHasSeenNotification because user is nil", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setCurrentUserHasSeenNotification
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self user];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 userDataController];
    [v5 setHasUserSeenRMVNewLanguageNotification:1];

    [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self setCachedHasCurrentUserSeenNotification:1];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to setCurrentUserHasSeenNotification because user is nil", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasCurrentUserSeenNotification
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self cachedHasCurrentUserSeenNotification])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self user];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 userDataController];
      v3 = [v6 hasUserSeenRMVNewLanguageNotification];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch hasCurrentUserSeenNotification because user is nil", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v3 = 1;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

- (NSArray)mediaAccessories
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self user];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 home];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 appleMediaAccessories];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media accessories because home is nil", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v7 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media accessories because user is nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)handleMediaAccessorySoftwareVersionUpdated:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self delegate];
    if (v8)
    {
      v9 = [v7 softwareVersion];
      [v8 mediaAccessory:v7 didUpdateSoftwareToVersion:v9];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@delegate is nil", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Received softwareVersion update notification with nil HMDAppleMediaAccessory", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_handleMediaAccessorySoftwareVersionUpdated_ name:@"HMDAppleMediaAccessorySoftwareVersionUpdatedNotification" object:0];
}

- (HMDSiriMultiUserNewLanguageNotificationManagerContext)initWithUser:(id)a3 workQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSiriMultiUserNewLanguageNotificationManagerContext *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_user, v6);
    objc_storeStrong(&v9->_workQueue, a4);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_170075 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_170075, &__block_literal_global_170076);
  }

  v3 = logCategory__hmf_once_v18_170077;

  return v3;
}

uint64_t __68__HMDSiriMultiUserNewLanguageNotificationManagerContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v18_170077;
  logCategory__hmf_once_v18_170077 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)userReadableLanguageFromCode:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = a1;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v8;
    v33 = 2112;
    v34 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@languageCode: %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CBEAF8] deviceLanguage];
  v10 = objc_autoreleasePoolPush();
  v11 = v6;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v13;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@preferredLocalization: %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v9];
  v15 = objc_autoreleasePoolPush();
  v16 = v11;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v18;
    v33 = 2112;
    v34 = v14;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@appLocale: %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v19 = [MEMORY[0x277CBEAF8] baseLanguageFromLanguage:v4];
  v20 = objc_autoreleasePoolPush();
  v21 = v16;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v23;
    v33 = 2112;
    v34 = v19;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@shortCode: %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = [v14 localizedStringForLanguage:v19 context:1];
  v25 = objc_autoreleasePoolPush();
  v26 = v21;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v28;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@languageName: %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v29 = *MEMORY[0x277D85DE8];

  return v24;
}

@end