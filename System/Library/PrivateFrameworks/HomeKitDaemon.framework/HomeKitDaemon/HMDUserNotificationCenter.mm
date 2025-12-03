@interface HMDUserNotificationCenter
+ (id)logCategory;
- (HMDUserNotificationCenter)initWithBundleIdentifier:(id)identifier logEventSubmitter:(id)submitter;
- (HMDUserNotificationCenterDelegate)delegate;
- (id)configureWithNotificationCategories:(id)categories;
- (id)showNotificationWithTitle:(id)title body:(id)body threadIdentifier:(id)identifier categoryIdentifier:(id)categoryIdentifier requestIdentifier:(id)requestIdentifier date:(id)date attachments:(id)attachments userInfo:(id)self0 shouldIgnoreDoNotDisturb:(BOOL)self1 interruptionLevel:(unint64_t)self2 logEventTopic:(int64_t)self3;
- (void)_showNotification:(id)notification;
- (void)fetchAreUserNotificationsEnabledWithCompletion:(id)completion;
- (void)notificationSettingsWithCompletionHandler:(id)handler;
- (void)removeNotificationRequestsWithIdentifiers:(id)identifiers;
- (void)setBadgeNumber:(int64_t)number;
- (void)updateContent:(id)content forNotificationWithRequestIdentifier:(id)identifier;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation HMDUserNotificationCenter

- (HMDUserNotificationCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notificationSettingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  userNotificationCenter = [(HMDUserNotificationCenter *)self userNotificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDUserNotificationCenter_notificationSettingsWithCompletionHandler___block_invoke;
  v7[3] = &unk_278686BF8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [userNotificationCenter getNotificationSettingsWithCompletionHandler:v7];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  responseCopy = response;
  delegate = [(HMDUserNotificationCenter *)self delegate];
  [delegate notificationCenter:self didReceiveNotificationResponse:responseCopy withCompletionHandler:handlerCopy];
}

- (void)_showNotification:(id)notification
{
  notificationCopy = notification;
  userNotificationCenter = [(HMDUserNotificationCenter *)self userNotificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDUserNotificationCenter__showNotification___block_invoke;
  v7[3] = &unk_27868A250;
  v8 = notificationCopy;
  v6 = notificationCopy;
  [userNotificationCenter addNotificationRequest:v6 withCompletionHandler:v7];
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

- (void)fetchAreUserNotificationsEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  userNotificationCenter = [(HMDUserNotificationCenter *)self userNotificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDUserNotificationCenter_fetchAreUserNotificationsEnabledWithCompletion___block_invoke;
  v7[3] = &unk_278686BF8;
  v8 = completionCopy;
  v6 = completionCopy;
  [userNotificationCenter getNotificationSettingsWithCompletionHandler:v7];
}

uint64_t __76__HMDUserNotificationCenter_fetchAreUserNotificationsEnabledWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 authorizationStatus] > 1;
  v4 = *(*(a1 + 32) + 16);
  v5 = *(a1 + 32);

  return v4(v5, v3);
}

- (void)removeNotificationRequestsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  userNotificationCenter = [(HMDUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter removePendingNotificationRequestsWithIdentifiers:identifiersCopy];

  userNotificationCenter2 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter2 removeDeliveredNotificationsWithIdentifiers:identifiersCopy];
}

- (id)showNotificationWithTitle:(id)title body:(id)body threadIdentifier:(id)identifier categoryIdentifier:(id)categoryIdentifier requestIdentifier:(id)requestIdentifier date:(id)date attachments:(id)attachments userInfo:(id)self0 shouldIgnoreDoNotDisturb:(BOOL)self1 interruptionLevel:(unint64_t)self2 logEventTopic:(int64_t)self3
{
  selfCopy = self;
  levelCopy = level;
  v53 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  bodyCopy = body;
  identifierCopy = identifier;
  categoryIdentifierCopy = categoryIdentifier;
  requestIdentifierCopy = requestIdentifier;
  dateCopy = date;
  attachmentsCopy = attachments;
  infoCopy = info;
  v25 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v47 = titleCopy;
  [v25 setTitle:titleCopy];
  [v25 setBody:bodyCopy];
  defaultSound = [MEMORY[0x277CE1FE0] defaultSound];
  [v25 setSound:defaultSound];

  v46 = dateCopy;
  [v25 setDate:dateCopy];
  if (identifierCopy)
  {
    if (_os_feature_enabled_impl())
    {
      v27 = [infoCopy objectForKey:@"home"];

      if (!v27)
      {
        _HMFPreconditionFailure();
      }
    }

    [v25 setThreadIdentifier:{identifierCopy, level, selfCopy}];
  }

  if (categoryIdentifierCopy)
  {
    [v25 setCategoryIdentifier:categoryIdentifierCopy];
  }

  if (infoCopy)
  {
    [v25 setUserInfo:infoCopy];
  }

  [v25 setShouldIgnoreDoNotDisturb:{disturb, levelCopy}];
  if (attachmentsCopy)
  {
    [v25 setAttachments:attachmentsCopy];
  }

  if (_os_feature_enabled_impl())
  {
    [v25 setInterruptionLevel:v43];
    if (v43 == 3)
    {
      defaultCriticalSound = [MEMORY[0x277CE1FE0] defaultCriticalSound];
      [v25 setSound:defaultCriticalSound];
    }
  }

  v29 = [MEMORY[0x277CE1FC0] requestWithIdentifier:requestIdentifierCopy content:v25 trigger:0];
  v30 = objc_autoreleasePoolPush();
  v31 = selfCopy;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v45 = infoCopy;
    v33 = attachmentsCopy;
    v34 = categoryIdentifierCopy;
    v35 = identifierCopy;
    v37 = v36 = bodyCopy;
    *buf = 138543618;
    v50 = v37;
    v51 = 2112;
    v52 = v29;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Adding bulletin: %@", buf, 0x16u);

    bodyCopy = v36;
    identifierCopy = v35;
    categoryIdentifierCopy = v34;
    attachmentsCopy = v33;
    infoCopy = v45;
  }

  objc_autoreleasePoolPop(v30);
  [(HMDUserNotificationCenter *)v31 _showNotification:v29];
  logEventSubmitter = [(HMDUserNotificationCenter *)v31 logEventSubmitter];
  v39 = [[HMDBulletinNotificationLogEvent alloc] initWithTopic:topic];
  [logEventSubmitter submitLogEvent:v39];

  v40 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)updateContent:(id)content forNotificationWithRequestIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = identifierCopy;
    v21 = 2112;
    v22 = contentCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating notification with request identifier %@ with content: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  userNotificationCenter = [(HMDUserNotificationCenter *)selfCopy userNotificationCenter];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HMDUserNotificationCenter_updateContent_forNotificationWithRequestIdentifier___block_invoke;
  v15[3] = &unk_27868A1D8;
  v15[4] = selfCopy;
  v16 = identifierCopy;
  v13 = identifierCopy;
  [userNotificationCenter replaceContentForRequestWithIdentifier:v13 replacementContent:contentCopy completionHandler:v15];

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

- (void)setBadgeNumber:(int64_t)number
{
  userNotificationCenter = [(HMDUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter setBadgeCount:number withCompletionHandler:0];
}

- (id)configureWithNotificationCategories:(id)categories
{
  categoriesCopy = categories;
  userNotificationCenter = [(HMDUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter setNotificationCategories:categoriesCopy];

  userNotificationCenter2 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter2 setWantsNotificationResponsesDelivered];

  v7 = objc_alloc_init(MEMORY[0x277D2C900]);
  userNotificationCenter3 = [(HMDUserNotificationCenter *)self userNotificationCenter];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HMDUserNotificationCenter_configureWithNotificationCategories___block_invoke;
  v13[3] = &unk_278686BD0;
  v13[4] = self;
  v15 = 64;
  v9 = v7;
  v14 = v9;
  [userNotificationCenter3 requestAuthorizationWithOptions:64 completionHandler:v13];

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

- (HMDUserNotificationCenter)initWithBundleIdentifier:(id)identifier logEventSubmitter:(id)submitter
{
  identifierCopy = identifier;
  submitterCopy = submitter;
  v12.receiver = self;
  v12.super_class = HMDUserNotificationCenter;
  v8 = [(HMDUserNotificationCenter *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:identifierCopy];
    userNotificationCenter = v8->_userNotificationCenter;
    v8->_userNotificationCenter = v9;

    [(UNUserNotificationCenter *)v8->_userNotificationCenter setDelegate:v8];
    objc_storeStrong(&v8->_logEventSubmitter, submitter);
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