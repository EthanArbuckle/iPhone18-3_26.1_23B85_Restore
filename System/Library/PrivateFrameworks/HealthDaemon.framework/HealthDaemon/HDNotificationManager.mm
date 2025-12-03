@interface HDNotificationManager
+ (id)createNotificationContentWithTitle:(id)title body:(id)body categoryIdentifier:(id)identifier;
- (BOOL)_resourceQueue_setBadge:(uint64_t)badge domain:(void *)domain error:;
- (BOOL)areHealthCriticalAlertsAuthorized;
- (BOOL)areHealthNotificationsAuthorized;
- (BOOL)incrementBadgeForDomain:(int64_t)domain count:(int64_t)count error:(id *)error;
- (HDNotificationManager)initWithProfile:(id)profile bundle:(int64_t)bundle;
- (id)_actionCompletionOnClientQueue:(void *)queue;
- (id)_aggregateBadge;
- (id)_badgeForDomain:(int64_t)domain error:(id *)error;
- (id)_resourceQueue_badgeForDomain:(dispatch_queue_t *)domain;
- (id)_resourceQueue_badgeForDomain:(int64_t)domain error:(id *)error;
- (id)_resourceQueue_coaleseDomainBadges;
- (id)diagnosticDescription;
- (id)identifierForBundle:(id)bundle;
- (void)_postNotificationWithTitle:(void *)title body:(void *)body categoryIdentifier:(void *)identifier subtitle:(uint64_t)subtitle domain:(void *)domain url:(void *)url accessoryImageName:(void *)name header:(void *)self0 completion:;
- (void)_sendCompanionUserNotificationResponse:(void *)response error:;
- (void)addNotificationObserver:(id)observer;
- (void)badgeForDomain:(int64_t)domain completion:(id)completion;
- (void)dealloc;
- (void)getDeliveredNotificationsWithCompletionHandler:(id)handler;
- (void)postCompanionUserNotificationOfType:(int64_t)type completion:(id)completion;
- (void)postNotificationWithIdentifier:(id)identifier content:(id)content trigger:(id)trigger completion:(id)completion;
- (void)postNotificationWithRequest:(id)request completion:(id)completion;
- (void)receivedCompanionUserNotificationRequest:(id)request completion:(id)completion;
- (void)removeDeliveredNotificationsWithCategoryIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeDeliveredNotificationsWithIdentifiers:(id)identifiers;
- (void)removePendingNotificationsWithIdentifiers:(id)identifiers;
- (void)setBadge:(id)badge forDomain:(int64_t)domain completion:(id)completion;
@end

@implementation HDNotificationManager

- (HDNotificationManager)initWithProfile:(id)profile bundle:(int64_t)bundle
{
  profileCopy = profile;
  v26.receiver = self;
  v26.super_class = HDNotificationManager;
  v8 = [(HDNotificationManager *)&v26 init];
  if (v8)
  {
    if (!profileCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"HDNotificationManager.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"profile"}];
    }

    objc_storeWeak(&v8->_profile, profileCopy);
    v8->_bundle = bundle;
    v9 = objc_alloc(MEMORY[0x277CCD738]);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 initWithName:v11 loggingCategory:*MEMORY[0x277CCC300]];
    observers = v8->_observers;
    v8->_observers = v12;

    v14 = HKCreateSerialDispatchQueue();
    clientQueue = v8->_clientQueue;
    v8->_clientQueue = v14;

    v16 = HKCreateSerialDispatchQueue();
    resourceQueue = v8->_resourceQueue;
    v8->_resourceQueue = v16;

    v18 = objc_alloc(MEMORY[0x277CE2028]);
    v19 = [(HDNotificationManager *)v8 identifierForBundle:bundle];
    v20 = [v18 initWithBundleIdentifier:v19];
    userNotificationCenter = v8->_userNotificationCenter;
    v8->_userNotificationCenter = v20;

    if (v8->_bundle == 1)
    {
      v22 = v8->_userNotificationCenter;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __70__HDNotificationManager__registerWithUserNotificationCenterIfRequired__block_invoke;
      v27[3] = &unk_2786130B0;
      v27[4] = v8;
      [(UNUserNotificationCenter *)v22 requestAuthorizationWithOptions:39 completionHandler:v27];
    }

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v8];
  }

  return v8;
}

- (id)identifierForBundle:(id)bundle
{
  if (bundle)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      v3 = MEMORY[0x277CCE590];
    }

    else
    {
      v3 = MEMORY[0x277CCE3A8];
    }

    bundle = *v3;
  }

LABEL_7:

  return bundle;
}

- (void)dealloc
{
  mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [mEMORY[0x277D10AF8] removeObject:self];

  v4.receiver = self;
  v4.super_class = HDNotificationManager;
  [(HDNotificationManager *)&v4 dealloc];
}

void __70__HDNotificationManager__registerWithUserNotificationCenterIfRequired__block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v7[2];
    v9 = v6;
    v10 = [(HDNotificationManager *)v7 identifierForBundle:v8];
    v11 = @"not granted";
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    if (a2)
    {
      v11 = @"granted";
    }

    v16 = v11;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%@] UNUserNotificationCenter request %@ error: %@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)areHealthNotificationsAuthorized
{
  notificationSettings = [(UNUserNotificationCenter *)self->_userNotificationCenter notificationSettings];
  authorizationStatus = [notificationSettings authorizationStatus];

  return authorizationStatus == 4 || (authorizationStatus & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (BOOL)areHealthCriticalAlertsAuthorized
{
  notificationSettings = [(UNUserNotificationCenter *)self->_userNotificationCenter notificationSettings];
  criticalAlertSetting = [notificationSettings criticalAlertSetting];

  return criticalAlertSetting == 2;
}

- (void)badgeForDomain:(int64_t)domain completion:(id)completion
{
  completionCopy = completion;
  resourceQueue = self->_resourceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HDNotificationManager_badgeForDomain_completion___block_invoke;
  block[3] = &unk_278620058;
  block[4] = self;
  v10 = completionCopy;
  domainCopy = domain;
  v8 = completionCopy;
  dispatch_async(resourceQueue, block);
}

void __51__HDNotificationManager_badgeForDomain_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v3;
  if (v2)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__HDNotificationManager__objectCompletionOnClientQueue___block_invoke;
    v10[3] = &unk_278623818;
    v10[4] = v2;
    v11 = v3;
    v2 = [v10 copy];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v9 = 0;
  v7 = [v5 _resourceQueue_badgeForDomain:v6 error:&v9];
  v8 = v9;
  (v2)[2](v2, v7, v8);
}

- (BOOL)incrementBadgeForDomain:(int64_t)domain count:(int64_t)count error:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__114;
  v9[4] = __Block_byref_object_dispose__114;
  v10 = 0;
  resourceQueue = self->_resourceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HDNotificationManager_incrementBadgeForDomain_count_error___block_invoke;
  block[3] = &unk_278623700;
  block[4] = self;
  block[5] = v9;
  block[7] = domain;
  block[8] = count;
  block[6] = &v11;
  dispatch_sync(resourceQueue, block);
  v6 = *(v12 + 24);
  _Block_object_dispose(v9, 8);

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __61__HDNotificationManager_incrementBadgeForDomain_count_error___block_invoke(void *a1)
{
  v2 = a1[7];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 _resourceQueue_badgeForDomain:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = [v5 badgeByIncrementingByCount:a1[8]];

    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v9 = a1[7];
    v10 = a1[4];
    v11 = *(a1[5] + 8);
    v13 = *(v11 + 40);
    v12 = [(HDNotificationManager *)v10 _resourceQueue_setBadge:v6 domain:v9 error:&v13];
    objc_storeStrong((v11 + 40), v13);
    *(*(a1[6] + 8) + 24) = v12;
  }
}

- (BOOL)_resourceQueue_setBadge:(uint64_t)badge domain:(void *)domain error:
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (self)
  {
    _HKInitializeLogging();
    v8 = MEMORY[0x277CCC300];
    v9 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [v7 description];
      v12 = NSStringFromHKNotificationDomain();
      *buf = 138412546;
      v41 = v11;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "Setting badge to %@ for domain %@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((self + 8));
    v39 = 0;
    v14 = [HDUnprotectedKeyValueEntity setBadge:v7 forDomain:badge profile:WeakRetained error:&v39];
    v15 = v39;

    _HKInitializeLogging();
    v16 = *v8;
    v17 = *v8;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v16;
        v19 = [v7 description];
        v20 = NSStringFromHKNotificationDomain();
        *buf = 138543618;
        v41 = v19;
        v42 = 2114;
        v43 = v20;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "Setting badge to %{public}@ for domain %{public}@", buf, 0x16u);
      }

      dispatch_assert_queue_V2(*(self + 40));
      _resourceQueue_coaleseDomainBadges = [(HDNotificationManager *)self _resourceQueue_coaleseDomainBadges];
      _HKInitializeLogging();
      v22 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = [_resourceQueue_coaleseDomainBadges description];
        *buf = 138543362;
        v41 = v24;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "Setting application badge to %{public}@", buf, 0xCu);
      }

      v25 = objc_alloc(MEMORY[0x277D77740]);
      v26 = [v25 initWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
      value = [_resourceQueue_coaleseDomainBadges value];
      [v26 setBadgeValue:value];

      v28 = *(self + 24);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __62__HDNotificationManager__resourceQueue_setBadge_domain_error___block_invoke;
      v36[3] = &unk_2786237F0;
      v36[4] = self;
      v37 = v7;
      badgeCopy = badge;
      [v28 notifyObservers:v36];
      if (notify_post(*MEMORY[0x277CCE398]))
      {
        _HKInitializeLogging();
        v29 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "Failed to post BadgesDidUpdateNotification", buf, 2u);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v34 = v16;
        v35 = NSStringFromHKNotificationDomain();
        *buf = 138543874;
        v41 = v7;
        v42 = 2114;
        v43 = v35;
        v44 = 2114;
        v45 = v15;
        _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "Error setting badge to %{public}@ for domain %{public}@: %{public}@", buf, 0x20u);
      }

      v30 = v15;
      if (v30)
      {
        if (domain)
        {
          v31 = v30;
          *domain = v30;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)setBadge:(id)badge forDomain:(int64_t)domain completion:(id)completion
{
  badgeCopy = badge;
  completionCopy = completion;
  resourceQueue = self->_resourceQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HDNotificationManager_setBadge_forDomain_completion___block_invoke;
  v13[3] = &unk_278623728;
  v13[4] = self;
  v14 = badgeCopy;
  v15 = completionCopy;
  domainCopy = domain;
  v11 = badgeCopy;
  v12 = completionCopy;
  dispatch_async(resourceQueue, v13);
}

void __55__HDNotificationManager_setBadge_forDomain_completion___block_invoke(uint64_t a1)
{
  v2 = [(HDNotificationManager *)*(a1 + 32) _actionCompletionOnClientQueue:?];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v8 = 0;
  v6 = [(HDNotificationManager *)v3 _resourceQueue_setBadge:v4 domain:v5 error:&v8];
  v7 = v8;
  (v2)[2](v2, v6, v7);
}

- (id)_actionCompletionOnClientQueue:(void *)queue
{
  v3 = a2;
  v4 = v3;
  if (queue)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__HDNotificationManager__actionCompletionOnClientQueue___block_invoke;
    v6[3] = &unk_2786173C8;
    v6[4] = queue;
    v7 = v3;
    queue = [v6 copy];
  }

  return queue;
}

+ (id)createNotificationContentWithTitle:(id)title body:(id)body categoryIdentifier:(id)identifier
{
  titleCopy = title;
  bodyCopy = body;
  identifierCopy = identifier;
  v10 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v11 = v10;
  if (titleCopy)
  {
    [v10 setTitle:titleCopy];
  }

  if (bodyCopy)
  {
    [v11 setBody:bodyCopy];
  }

  if (identifierCopy)
  {
    [v11 setCategoryIdentifier:identifierCopy];
  }

  v12 = [MEMORY[0x277CE1FE0] soundWithAlertType:25];
  [v11 setSound:v12];

  return v11;
}

- (void)getDeliveredNotificationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (_HDIsUnitTesting)
  {
    resourceQueue = self->_resourceQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__HDNotificationManager_getDeliveredNotificationsWithCompletionHandler___block_invoke;
    v7[3] = &unk_278614008;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(resourceQueue, v7);
  }

  else
  {
    [(UNUserNotificationCenter *)self->_userNotificationCenter getDeliveredNotificationsWithCompletionHandler:handlerCopy];
  }
}

- (void)postNotificationWithIdentifier:(id)identifier content:(id)content trigger:(id)trigger completion:(id)completion
{
  v10 = MEMORY[0x277CE1FC0];
  completionCopy = completion;
  v12 = [v10 requestWithIdentifier:identifier content:content trigger:trigger];
  [(HDNotificationManager *)self postNotificationWithRequest:v12 completion:completionCopy];
}

- (void)postNotificationWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  resourceQueue = self->_resourceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HDNotificationManager_postNotificationWithRequest_completion___block_invoke;
  block[3] = &unk_278614160;
  v12 = requestCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(resourceQueue, block);
}

void __64__HDNotificationManager_postNotificationWithRequest_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "Posting notification: %{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = *(a1 + 40);
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;

  v9 = [(HDNotificationManager *)*(a1 + 40) _actionCompletionOnClientQueue:?];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HDNotificationManager_postNotificationWithRequest_completion___block_invoke_324;
  aBlock[3] = &unk_278623778;
  v10 = v9;
  v18 = v10;
  v15 = *(a1 + 32);
  v11 = v15.i64[0];
  v17 = vextq_s8(v15, v15, 8uLL);
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (_HDIsUnitTesting)
  {
    (*(v12 + 2))(v12, 0);
  }

  else
  {
    [*(*(a1 + 40) + 64) addNotificationRequest:*(a1 + 32) withCompletionHandler:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __64__HDNotificationManager_postNotificationWithRequest_completion___block_invoke_324(void *a1, uint64_t a2)
{
  (*(a1[6] + 16))(a1[6], a2 == 0, a2);
  v4 = a1[4];
  v3 = a1[5];
  v5 = *(v4 + 24);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HDNotificationManager_postNotificationWithRequest_completion___block_invoke_2;
  v6[3] = &unk_278623750;
  v6[4] = v4;
  v7 = v3;
  [v5 notifyObservers:v6];
}

- (void)_postNotificationWithTitle:(void *)title body:(void *)body categoryIdentifier:(void *)identifier subtitle:(uint64_t)subtitle domain:(void *)domain url:(void *)url accessoryImageName:(void *)name header:(void *)self0 completion:
{
  identifierCopy = identifier;
  domainCopy = domain;
  urlCopy = url;
  nameCopy = name;
  if (self)
  {
    headerCopy = header;
    bodyCopy = body;
    titleCopy = title;
    v23 = a2;
    v24 = [objc_opt_class() createNotificationContentWithTitle:v23 body:titleCopy categoryIdentifier:bodyCopy];

    if (identifierCopy)
    {
      [v24 setSubtitle:identifierCopy];
    }

    [v24 setAccessoryImageName:urlCopy];
    if (nameCopy)
    {
      [v24 setHeader:nameCopy];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:subtitle];
    [dictionary setObject:v26 forKeyedSubscript:*MEMORY[0x277CCE4D0]];

    if (domainCopy)
    {
      absoluteString = [domainCopy absoluteString];
      [dictionary setObject:absoluteString forKeyedSubscript:*MEMORY[0x277CCE4E0]];
    }

    [v24 setUserInfo:dictionary];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [self postNotificationWithIdentifier:uUIDString content:v24 trigger:0 completion:headerCopy];
  }
}

- (void)postCompanionUserNotificationOfType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  resourceQueue = self->_resourceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HDNotificationManager_postCompanionUserNotificationOfType_completion___block_invoke;
  block[3] = &unk_278620058;
  v10 = completionCopy;
  typeCopy = type;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(resourceQueue, block);
}

void __72__HDNotificationManager_postCompanionUserNotificationOfType_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(HDCodableCompanionUserNotificationConfiguration);
  [(HDCodableCompanionUserNotificationConfiguration *)v2 setNotificationType:*(a1 + 48)];
  v3 = objc_alloc_init(HDCodableCompanionUserNotificationRequest);
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  [(HDCodableCompanionUserNotificationRequest *)v3 setRequestIdentifier:v5];

  [(HDCodableCompanionUserNotificationRequest *)v3 setNotificationConfiguration:v2];
  v6 = *(*(a1 + 32) + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v8 = [WeakRetained nanoSyncManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HDNotificationManager_postCompanionUserNotificationOfType_completion___block_invoke_2;
  v10[3] = &unk_2786173C8;
  v11 = v6;
  v12 = *(a1 + 40);
  v9 = v6;
  [v8 sendCompanionUserNotificationRequest:v3 completion:v10];
}

void __72__HDNotificationManager_postCompanionUserNotificationOfType_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HDNotificationManager_postCompanionUserNotificationOfType_completion___block_invoke_3;
  block[3] = &unk_2786164B0;
  v11 = a2;
  v9 = v5;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __72__HDNotificationManager_postCompanionUserNotificationOfType_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);
    v5 = *MEMORY[0x277D85DE8];

    return v4();
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Error posting notification: %@", &v11, 0xCu);
    }

    v8 = *(a1 + 32);
    result = (*(*(a1 + 40) + 16))();
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)receivedCompanionUserNotificationRequest:(id)request completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  notificationConfiguration = [request notificationConfiguration];
  notificationType = [notificationConfiguration notificationType];

  if (notificationType == 1)
  {
    v9 = HKHealthKitFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"NEW_ELECTROCARDIOGRAM_NOTIFICATION_TITLE" value:&stru_283BF39C8 table:@"Localizable-Cinnamon"];
    v11 = HKConditionallyRedactedHeartRhythmString();
    v12 = HKHealthKitFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"NEW_ELECTROCARDIOGRAM_NOTIFICATION_BODY" value:&stru_283BF39C8 table:@"Localizable-Cinnamon"];
    v14 = HKConditionallyRedactedHeartRhythmString();
    _hk_urlForElectrocardiogramType = [MEMORY[0x277CBEBC0] _hk_urlForElectrocardiogramType];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__HDNotificationManager_receivedCompanionUserNotificationRequest_completion___block_invoke;
    v19[3] = &unk_2786173C8;
    v19[4] = self;
    v20 = completionCopy;
    [(HDNotificationManager *)self _postNotificationWithTitle:v11 body:v14 categoryIdentifier:@"com.apple.private.health.heartrhythm.phoneonly" subtitle:0 domain:4 url:_hk_urlForElectrocardiogramType accessoryImageName:0 header:0 completion:v19];
  }

  else
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC300];
    if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v22 = notificationType;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Received unsupported user notification message of type %ld.", buf, 0xCu);
    }

    v17 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unsupported companion notification type."];
    [(HDNotificationManager *)self _sendCompanionUserNotificationResponse:completionCopy error:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_sendCompanionUserNotificationResponse:(void *)response error:
{
  v5 = a2;
  responseCopy = response;
  v7 = responseCopy;
  if (self)
  {
    v8 = *(self + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__HDNotificationManager__sendCompanionUserNotificationResponse_error___block_invoke;
    v9[3] = &unk_278614E28;
    v10 = responseCopy;
    v11 = v5;
    dispatch_async(v8, v9);
  }
}

void __70__HDNotificationManager__sendCompanionUserNotificationResponse_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(HDCodableCompanionUserNotificationResponse);
  v5 = v2;
  if (*(a1 + 32))
  {
    [(HDCodableCompanionUserNotificationResponse *)v2 setSuccess:0];
    v3 = [*(a1 + 32) hk_codableError];
    [(HDCodableCompanionUserNotificationResponse *)v5 setError:v3];
  }

  else
  {
    [(HDCodableCompanionUserNotificationResponse *)v2 setSuccess:1];
  }

  v4 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (void)removePendingNotificationsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  [(UNUserNotificationCenter *)self->_userNotificationCenter removePendingNotificationRequestsWithIdentifiers:identifiersCopy];
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HDNotificationManager_removePendingNotificationsWithIdentifiers___block_invoke;
  v7[3] = &unk_278623750;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  [(HKObserverSet *)observers notifyObservers:v7];
}

void __67__HDNotificationManager_removePendingNotificationsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 notificationManager:*(a1 + 32) didRemovePendingNotificationsWithIdentifiers:*(a1 + 40)];
  }
}

- (void)removeDeliveredNotificationsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  [(UNUserNotificationCenter *)self->_userNotificationCenter removeDeliveredNotificationsWithIdentifiers:identifiersCopy];
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HDNotificationManager_removeDeliveredNotificationsWithIdentifiers___block_invoke;
  v7[3] = &unk_278623750;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  [(HKObserverSet *)observers notifyObservers:v7];
}

void __69__HDNotificationManager_removeDeliveredNotificationsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 notificationManager:*(a1 + 32) didRemoveDeliveredNotificationsWithIdentifiers:*(a1 + 40)];
  }
}

- (void)removeDeliveredNotificationsWithCategoryIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  userNotificationCenter = self->_userNotificationCenter;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__HDNotificationManager_removeDeliveredNotificationsWithCategoryIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_2786237A0;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  [(UNUserNotificationCenter *)userNotificationCenter getDeliveredNotificationsWithCompletionHandler:v11];
}

void __94__HDNotificationManager_removeDeliveredNotificationsWithCategoryIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 request];
        v11 = [v10 content];
        v12 = [v11 categoryIdentifier];
        v13 = [v12 isEqualToString:*(a1 + 32)];

        if (v13)
        {
          v14 = [v9 request];
          v15 = [v14 identifier];
          [v20 addObject:v15];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) removeDeliveredNotificationsWithIdentifiers:v20];
  (*(*(a1 + 48) + 16))();
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(v17 + 24);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__HDNotificationManager_removeDeliveredNotificationsWithCategoryIdentifier_completionHandler___block_invoke_2;
  v21[3] = &unk_278623750;
  v21[4] = v17;
  v22 = v16;
  [v18 notifyObservers:v21];

  v19 = *MEMORY[0x277D85DE8];
}

void __94__HDNotificationManager_removeDeliveredNotificationsWithCategoryIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 notificationManager:*(a1 + 32) didRemoveDeliveredNotificationsWithCategoryIdentifier:*(a1 + 40)];
  }
}

- (void)addNotificationObserver:(id)observer
{
  if (self)
  {
    [(HKObserverSet *)self->_observers registerObserver:observer queue:0];
  }
}

- (id)_badgeForDomain:(int64_t)domain error:(id *)error
{
  dispatch_assert_queue_not_V2(self->_resourceQueue);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__114;
  v24 = __Block_byref_object_dispose__114;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__114;
  v18 = __Block_byref_object_dispose__114;
  v19 = 0;
  resourceQueue = self->_resourceQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__HDNotificationManager__badgeForDomain_error___block_invoke;
  v13[3] = &unk_2786237C8;
  v13[4] = self;
  v13[5] = &v14;
  v13[6] = &v20;
  v13[7] = domain;
  dispatch_sync(resourceQueue, v13);
  v8 = v21[5];
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      *error = v9;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __47__HDNotificationManager__badgeForDomain_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _resourceQueue_badgeForDomain:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_aggregateBadge
{
  dispatch_assert_queue_not_V2(self->_resourceQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__114;
  v11 = __Block_byref_object_dispose__114;
  v12 = 0;
  resourceQueue = self->_resourceQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HDNotificationManager__aggregateBadge__block_invoke;
  v6[3] = &unk_278613990;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(resourceQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __40__HDNotificationManager__aggregateBadge__block_invoke(uint64_t a1)
{
  v2 = [(HDNotificationManager *)*(a1 + 32) _resourceQueue_coaleseDomainBadges];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)_resourceQueue_coaleseDomainBadges
{
  if (self)
  {
    dispatch_assert_queue_V2(self[5]);
    zeroBadge = [MEMORY[0x277CCD068] zeroBadge];
    for (i = 0; i != 18; ++i)
    {
      if ((HKNotificationDomainIsDeprecated() & 1) == 0)
      {
        v4 = [(HDNotificationManager *)self _resourceQueue_badgeForDomain:?];
        if (v4)
        {
          v5 = [zeroBadge badgeByAggregatingWithBadge:v4];

          zeroBadge = v5;
        }
      }
    }
  }

  else
  {
    zeroBadge = 0;
  }

  return zeroBadge;
}

- (id)_resourceQueue_badgeForDomain:(dispatch_queue_t *)domain
{
  domainCopy = domain;
  v15 = *MEMORY[0x277D85DE8];
  if (domain)
  {
    dispatch_assert_queue_V2(domain[5]);
    v10 = 0;
    domainCopy = [domainCopy _resourceQueue_badgeForDomain:a2 error:&v10];
    v4 = v10;
    if (v4)
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC300];
      if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_ERROR))
      {
        v8 = v5;
        v9 = NSStringFromHKNotificationDomain();
        *buf = 138543618;
        v12 = v9;
        v13 = 2114;
        v14 = v4;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Error getting badge for domain %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return domainCopy;
}

- (id)_resourceQueue_badgeForDomain:(int64_t)domain error:(id *)error
{
  dispatch_assert_queue_V2(self->_resourceQueue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [HDUnprotectedKeyValueEntity badgeForDomain:domain profile:WeakRetained error:error];

  return v8;
}

void __56__HDNotificationManager__actionCompletionOnClientQueue___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDNotificationManager__actionCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_278616460;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __56__HDNotificationManager__actionCompletionOnClientQueue___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void __56__HDNotificationManager__objectCompletionOnClientQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDNotificationManager__objectCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_278616488;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __56__HDNotificationManager__objectCompletionOnClientQueue___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (id)diagnosticDescription
{
  dispatch_assert_queue_not_V2(self->_resourceQueue);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__114;
  v17 = __Block_byref_object_dispose__114;
  v18 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  resourceQueue = self->_resourceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HDNotificationManager_diagnosticDescription__block_invoke;
  block[3] = &unk_27861F190;
  v12 = &v13;
  block[4] = self;
  v5 = v3;
  v11 = v5;
  dispatch_sync(resourceQueue, block);
  v6 = [v5 componentsJoinedByString:@"\n"];
  if ([v6 length])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", v6];
  }

  else
  {
    v7 = @"none";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\tLast notification since boot: %@\n\tBadge counts: %@", v14[5], v7];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __46__HDNotificationManager_diagnosticDescription__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = HKDiagnosticStringFromDate();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  for (i = 0; i != 18; ++i)
  {
    v7 = NSStringFromHKNotificationDomain();
    v8 = @"deprecated";
    if ((HKNotificationDomainIsDeprecated() & 1) == 0)
    {
      v9 = [(HDNotificationManager *)*(a1 + 32) _resourceQueue_badgeForDomain:?];
      v10 = [v9 description];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = @"none";
      }

      v8 = v12;
    }

    v13 = *(a1 + 40);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t\t%@: %@", v7, v8];
    [v13 addObject:v14];
  }
}

@end