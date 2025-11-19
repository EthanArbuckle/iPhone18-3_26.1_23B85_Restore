@interface HMDUserNotificationCenter
+ (id)logCategory;
- (HMDUserNotificationCenter)initWithBundleIdentifier:(id)a3 logEventSubmitter:(id)a4;
- (HMDUserNotificationCenterDelegate)delegate;
- (id)configureWithNotificationCategories:(id)a3;
- (id)showNotificationWithTitle:(id)a3 body:(id)a4 threadIdentifier:(id)a5 categoryIdentifier:(id)a6 requestIdentifier:(id)a7 date:(id)a8 attachments:(id)a9 userInfo:(id)a10 shouldIgnoreDoNotDisturb:(BOOL)a11 interruptionLevel:(unint64_t)a12 logEventTopic:(int64_t)a13;
- (void)_showNotification:(id)a3;
- (void)fetchAreUserNotificationsEnabledWithCompletion:(id)a3;
- (void)notificationSettingsWithCompletionHandler:(id)a3;
- (void)removeNotificationRequestsWithIdentifiers:(id)a3;
- (void)setBadgeNumber:(int64_t)a3;
- (void)updateContent:(id)a3 forNotificationWithRequestIdentifier:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation HMDUserNotificationCenter

- (HMDUserNotificationCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notificationSettingsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDUserNotificationCenter_notificationSettingsWithCompletionHandler___block_invoke;
  v7[3] = &unk_278686BF8;
  v8 = v4;
  v6 = v4;
  [v5 getNotificationSettingsWithCompletionHandler:v7];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HMDUserNotificationCenter *)self delegate];
  [v9 notificationCenter:self didReceiveNotificationResponse:v8 withCompletionHandler:v7];
}

- (void)_showNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDUserNotificationCenter__showNotification___block_invoke;
  v7[3] = &unk_27868A250;
  v8 = v4;
  v6 = v4;
  [v5 addNotificationRequest:v6 withCompletionHandler:v7];
}

void __47__HMDUserNotificationCenter__showNotification___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 32);
      v9 = 138543874;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Error adding notification request. Error: %@. Request: %@.", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchAreUserNotificationsEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDUserNotificationCenter_fetchAreUserNotificationsEnabledWithCompletion___block_invoke;
  v7[3] = &unk_278686BF8;
  v8 = v4;
  v6 = v4;
  [v5 getNotificationSettingsWithCompletionHandler:v7];
}

uint64_t __76__HMDUserNotificationCenter_fetchAreUserNotificationsEnabledWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 authorizationStatus] > 1;
  v4 = *(*(a1 + 32) + 16);
  v5 = *(a1 + 32);

  return v4(v5, v3);
}

- (void)removeNotificationRequestsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  [v5 removePendingNotificationRequestsWithIdentifiers:v4];

  v6 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  [v6 removeDeliveredNotificationsWithIdentifiers:v4];
}

- (id)showNotificationWithTitle:(id)a3 body:(id)a4 threadIdentifier:(id)a5 categoryIdentifier:(id)a6 requestIdentifier:(id)a7 date:(id)a8 attachments:(id)a9 userInfo:(id)a10 shouldIgnoreDoNotDisturb:(BOOL)a11 interruptionLevel:(unint64_t)a12 logEventTopic:(int64_t)a13
{
  v44 = self;
  v42 = a12;
  v53 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v48 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v47 = v18;
  [v25 setTitle:v18];
  [v25 setBody:v19];
  v26 = [MEMORY[0x277CE1FE0] defaultSound];
  [v25 setSound:v26];

  v46 = v22;
  [v25 setDate:v22];
  if (v20)
  {
    if (_os_feature_enabled_impl())
    {
      v27 = [v24 objectForKey:@"home"];

      if (!v27)
      {
        _HMFPreconditionFailure();
      }
    }

    [v25 setThreadIdentifier:{v20, a12, v44}];
  }

  if (v21)
  {
    [v25 setCategoryIdentifier:v21];
  }

  if (v24)
  {
    [v25 setUserInfo:v24];
  }

  [v25 setShouldIgnoreDoNotDisturb:{a11, v42}];
  if (v23)
  {
    [v25 setAttachments:v23];
  }

  if (_os_feature_enabled_impl())
  {
    [v25 setInterruptionLevel:v43];
    if (v43 == 3)
    {
      v28 = [MEMORY[0x277CE1FE0] defaultCriticalSound];
      [v25 setSound:v28];
    }
  }

  v29 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v48 content:v25 trigger:0];
  v30 = objc_autoreleasePoolPush();
  v31 = v44;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v45 = v24;
    v33 = v23;
    v34 = v21;
    v35 = v20;
    v37 = v36 = v19;
    *buf = 138543618;
    v50 = v37;
    v51 = 2112;
    v52 = v29;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Adding bulletin: %@", buf, 0x16u);

    v19 = v36;
    v20 = v35;
    v21 = v34;
    v23 = v33;
    v24 = v45;
  }

  objc_autoreleasePoolPop(v30);
  [(HMDUserNotificationCenter *)v31 _showNotification:v29];
  v38 = [(HMDUserNotificationCenter *)v31 logEventSubmitter];
  v39 = [[HMDBulletinNotificationLogEvent alloc] initWithTopic:a13];
  [v38 submitLogEvent:v39];

  v40 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)updateContent:(id)a3 forNotificationWithRequestIdentifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating notification with request identifier %@ with content: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDUserNotificationCenter *)v9 userNotificationCenter];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HMDUserNotificationCenter_updateContent_forNotificationWithRequestIdentifier___block_invoke;
  v15[3] = &unk_27868A1D8;
  v15[4] = v9;
  v16 = v7;
  v13 = v7;
  [v12 replaceContentForRequestWithIdentifier:v13 replacementContent:v6 completionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __80__HMDUserNotificationCenter_updateContent_forNotificationWithRequestIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update notification with request identifier %@: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setBadgeNumber:(int64_t)a3
{
  v4 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  [v4 setBadgeCount:a3 withCompletionHandler:0];
}

- (id)configureWithNotificationCategories:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  [v5 setNotificationCategories:v4];

  v6 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  [v6 setWantsNotificationResponsesDelivered];

  v7 = objc_alloc_init(MEMORY[0x277D2C900]);
  v8 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HMDUserNotificationCenter_configureWithNotificationCategories___block_invoke;
  v13[3] = &unk_278686BD0;
  v13[4] = self;
  v15 = 64;
  v9 = v7;
  v14 = v9;
  [v8 requestAuthorizationWithOptions:64 completionHandler:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __65__HMDUserNotificationCenter_configureWithNotificationCategories___block_invoke(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 48);
      v18 = 138543618;
      v19 = v10;
      v20 = 2048;
      v21 = v11;
      v12 = "%{public}@Authorization request with options: %lu was granted.";
      v13 = v9;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, &v18, v15);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v16 = *(a1 + 48);
    v18 = 138543874;
    v19 = v10;
    v20 = 2048;
    v21 = v16;
    v22 = 2112;
    v23 = v5;
    v12 = "%{public}@Authorization request with options: %lu was not granted with error:%@.";
    v13 = v9;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 40) finishWithNoResult];

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDUserNotificationCenter)initWithBundleIdentifier:(id)a3 logEventSubmitter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMDUserNotificationCenter;
  v8 = [(HMDUserNotificationCenter *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:v6];
    userNotificationCenter = v8->_userNotificationCenter;
    v8->_userNotificationCenter = v9;

    [(UNUserNotificationCenter *)v8->_userNotificationCenter setDelegate:v8];
    objc_storeStrong(&v8->_logEventSubmitter, a4);
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_258064 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_258064, &__block_literal_global_258065);
  }

  v3 = logCategory__hmf_once_v7_258066;

  return v3;
}

void __40__HMDUserNotificationCenter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_258066;
  logCategory__hmf_once_v7_258066 = v1;
}

@end