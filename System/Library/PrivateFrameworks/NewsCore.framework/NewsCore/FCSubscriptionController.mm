@interface FCSubscriptionController
- (BOOL)addIgnoredSubscriptionForTagID:(id)d groupID:(id)iD;
- (BOOL)addMutedSubscriptionForTagID:(id)d groupID:(id)iD;
- (BOOL)addSubscriptionToTag:(id)tag options:(int64_t)options error:(id *)error;
- (BOOL)appendSubscriptionToTag:(id)tag notificationsEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)canAddSubscription;
- (BOOL)canAddSubscriptionWithError:(id *)error;
- (BOOL)hasAutoFavoriteSubscriptionForTagID:(id)d;
- (BOOL)hasIgnoredSubscriptionForTagID:(id)d;
- (BOOL)hasMutedSubscriptionForTagID:(id)d;
- (BOOL)hasNotificationsEnabledForTag:(id)tag;
- (BOOL)hasSubscriptionToTag:(id)tag;
- (BOOL)hasSubscriptionToTagID:(id)d;
- (BOOL)isAppleNewsNotificationForTagID:(id)d;
- (BOOL)isChannelPermanentForTagID:(id)d;
- (BOOL)isWaitingForFirstSync;
- (BOOL)moveSubscriptionForTagID:(id)d beforeTagID:(id)iD;
- (BOOL)removeIgnoredSubscriptionForTagID:(id)d groupID:(id)iD;
- (FCSubscriptionController)init;
- (FCSubscriptionController)initWithSubscriptionList:(id)list tagController:(id)controller puzzleTypeController:(id)typeController notificationController:(id)notificationController purchaseProvider:(id)provider configurationManager:(id)manager appConfigurationManager:(id)configurationManager appActivityMonitor:(id)self0 userInfo:(id)self1;
- (id)allSubscribedTagIDs;
- (id)appleNewsNotificationChannelIDs;
- (id)autoFavoriteTagIDs;
- (id)cachedSubscribedTags;
- (id)groupableTagIDs;
- (id)ignoredTagIDs;
- (id)mutedTagIDs;
- (id)newlySubscribedTagIDsInDateRange:(id)range;
- (id)orderedCachedSubscribedTags;
- (id)orderedSubscribedTagIDs;
- (id)permanentChannelIDs;
- (id)portraitExcludedAutoFavoriteTagIDs;
- (id)subscribedTagForTagID:(id)d;
- (id)subscribedTagIDs;
- (id)subscribedTagIDsWithNotificationsEnabled;
- (id)subscriptionForTag:(id)tag;
- (id)subscriptionForTagID:(id)d;
- (id)subscriptionSurfacingHeadline:(id)headline;
- (id)subscriptions;
- (id)subscriptionsWithType:(unint64_t)type;
- (id)tagIDsWithType:(unint64_t)type;
- (void)_fetchMissingTagsWithCompletion:(uint64_t)completion;
- (void)_fetchTagsForIDs:(void *)ds cachePolicy:(uint64_t)policy qualityOfService:(void *)service completion:;
- (void)_handleNonTagSubscriptionType:(void *)type addedSubscriptionsByType:(void *)byType removedSubscriptionsByType:(void *)subscriptionsByType changedSubscriptionsByType:;
- (void)_integrateTags:(uint64_t)tags;
- (void)_notifyOfTagsAdded:(void *)added tagsChanged:(void *)changed tagsMoved:(void *)moved tagsRemoved:(uint64_t)removed subscriptionType:;
- (void)_purchaseListDidAddTagIDs:(id)ds;
- (void)_purchaseListDidRemoveTagIDs:(id)ds;
- (void)_updateNotificationsForPurchaseTagIDs:(uint64_t)ds isPaid:;
- (void)activityObservingApplicationDidEnterBackground;
- (void)addAutoFavoriteSubscriptionForTagIDs:(id)ds groupableSubscriptionForTagIDs:(id)iDs originProvider:(id)provider completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)fetchAllTagsWithCallbackQueue:(id)queue maximumCachedAge:(double)age qualityOfService:(int64_t)service completion:(id)completion;
- (void)fetchSubscribedTagsWithCallbackQueue:(id)queue preferCache:(BOOL)cache completion:(id)completion;
- (void)prewarmFromCacheWithCallbackQueue:(id)queue completion:(id)completion;
- (void)privateDataControllerDidPerformFirstSync:(id)sync;
- (void)refreshAndNotifyAboutSubscribedTags;
- (void)removeAllAutoFavoriteSubscriptions:(id)subscriptions;
- (void)removeObserver:(id)observer;
- (void)removeSubscriptionForTagID:(id)d type:(unint64_t)type;
- (void)removeSubscriptionToTag:(id)tag;
- (void)reorderSubscriptionOrderForOrderedIdentifiers:(id)identifiers;
- (void)subscriptionList:(id)list didAddSubscriptions:(id)subscriptions changeSubscriptions:(id)changeSubscriptions moveSubscriptions:(id)moveSubscriptions removeSubscriptions:(id)removeSubscriptions;
- (void)subscriptionListDidResetToEmpty:(id)empty;
- (void)subscriptionListDidStopSyncingRemoteChanges:(id)changes;
- (void)subscriptionListWillStartSyncingRemoteChanges:(id)changes;
- (void)subscriptionsWithCompletion:(id)completion;
@end

@implementation FCSubscriptionController

- (id)cachedSubscribedTags
{
  if (self)
  {
    self = self->_subscribedTagsByTagID;
  }

  return [(FCSubscriptionController *)self allValues];
}

- (id)mutedTagIDs
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  mutedTagIDs = [(FCSubscriptionController *)self mutedTagIDs];
  allObjects = [mutedTagIDs allObjects];

  return allObjects;
}

- (id)portraitExcludedAutoFavoriteTagIDs
{
  v2 = [(FCSubscriptionController *)self subscriptionsWithType:3];
  v3 = [v2 fc_setByTransformingWithBlock:&__block_literal_global_452];
  allObjects = [v3 allObjects];

  return allObjects;
}

id __62__FCSubscriptionController_portraitExcludedAutoFavoriteTagIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 subscriptionOrigin] == 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 tagID];
  }

  return v3;
}

- (id)subscriptions
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  subscriptionsBySubscriptionID = [(FCSubscriptionController *)self subscriptionsBySubscriptionID];
  allValues = [subscriptionsBySubscriptionID allValues];

  return allValues;
}

- (id)subscribedTagIDsWithNotificationsEnabled
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  subscriptionsBySubscriptionID = [(FCSubscriptionController *)self subscriptionsBySubscriptionID];
  allValues = [subscriptionsBySubscriptionID allValues];

  v4 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_37];

  return v4;
}

id __68__FCSubscriptionController_subscribedTagIDsWithNotificationsEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 notificationsEnabled])
  {
    v3 = [v2 tagID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)orderedCachedSubscribedTags
{
  selfCopy = self;
  if (self)
  {
    self = self->_subscribedTagsByTagID;
  }

  readOnlyDictionary = [(FCSubscriptionController *)self readOnlyDictionary];
  orderedSubscribedTagIDs = [(FCSubscriptionController *)selfCopy orderedSubscribedTagIDs];
  v5 = [readOnlyDictionary nf_objectsForKeysWithoutMarker:orderedSubscribedTagIDs];

  return v5;
}

- (id)orderedSubscribedTagIDs
{
  if (self)
  {
    orderedSubscribedTagIDs = [*(self + 16) orderedSubscribedTagIDs];
    array = [orderedSubscribedTagIDs array];
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)subscribedTagIDs
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  subscribedTagIDs = [(FCSubscriptionController *)self subscribedTagIDs];
  allObjects = [subscribedTagIDs allObjects];

  return allObjects;
}

- (id)autoFavoriteTagIDs
{
  v3 = MEMORY[0x1E695DFA8];
  if (self)
  {
    appConfigurationManager = self->_appConfigurationManager;
  }

  else
  {
    appConfigurationManager = 0;
  }

  v5 = appConfigurationManager;
  possiblyUnfetchedAppConfiguration = [(FCNewsAppConfigurationManager *)v5 possiblyUnfetchedAppConfiguration];
  deprecatedSportsTopicTagIds = [possiblyUnfetchedAppConfiguration deprecatedSportsTopicTagIds];
  v8 = deprecatedSportsTopicTagIds;
  if (deprecatedSportsTopicTagIds)
  {
    v9 = deprecatedSportsTopicTagIds;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [v3 setWithArray:v9];

  if (self)
  {
    v11 = self->_appConfigurationManager;
  }

  else
  {
    v11 = 0;
  }

  possiblyUnfetchedAppConfiguration4 = v11;
  possiblyUnfetchedAppConfiguration2 = [(FCNewsAppConfigurationManager *)possiblyUnfetchedAppConfiguration4 possiblyUnfetchedAppConfiguration];
  if (![possiblyUnfetchedAppConfiguration2 foodEnabled])
  {
LABEL_15:

    goto LABEL_16;
  }

  if (self)
  {
    v14 = self->_appConfigurationManager;
  }

  else
  {
    v14 = 0;
  }

  possiblyUnfetchedAppConfiguration3 = [(FCNewsAppConfigurationManager *)v14 possiblyUnfetchedAppConfiguration];
  foodHubTagID = [possiblyUnfetchedAppConfiguration3 foodHubTagID];

  if (foodHubTagID)
  {
    if (self)
    {
      v17 = self->_appConfigurationManager;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    possiblyUnfetchedAppConfiguration4 = [(FCNewsAppConfigurationManager *)v18 possiblyUnfetchedAppConfiguration];
    possiblyUnfetchedAppConfiguration2 = [(FCNewsAppConfigurationManager *)possiblyUnfetchedAppConfiguration4 foodHubTagID];
    [v10 addObject:possiblyUnfetchedAppConfiguration2];

    goto LABEL_15;
  }

LABEL_16:
  if (self)
  {
    v19 = NewsCoreUserDefaults();
    v20 = [v19 stringForKey:@"news.demo.autofavorite_channels"];

    v21 = [v20 componentsSeparatedByString:{@", "}];

    if (v21)
    {
      v22 = v21;
      v23 = v22;
      goto LABEL_21;
    }

    subscriptionList = self->_subscriptionList;
  }

  else
  {
    subscriptionList = 0;
  }

  v25 = subscriptionList;
  autoFavoriteTagIDs = [(FCSubscriptionList *)v25 autoFavoriteTagIDs];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __46__FCSubscriptionController_autoFavoriteTagIDs__block_invoke;
  v28[3] = &unk_1E7C38B40;
  v29 = v10;
  v23 = [autoFavoriteTagIDs fc_arrayOfObjectsPassingTest:v28];

  v22 = 0;
LABEL_21:

  return v23;
}

- (id)groupableTagIDs
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  groupableTagIDs = [(FCSubscriptionController *)self groupableTagIDs];
  allObjects = [groupableTagIDs allObjects];

  return allObjects;
}

- (FCSubscriptionController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCSubscriptionController init]";
    v10 = 2080;
    v11 = "FCSubscriptionController.m";
    v12 = 1024;
    v13 = 77;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCSubscriptionController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCSubscriptionController)initWithSubscriptionList:(id)list tagController:(id)controller puzzleTypeController:(id)typeController notificationController:(id)notificationController purchaseProvider:(id)provider configurationManager:(id)manager appConfigurationManager:(id)configurationManager appActivityMonitor:(id)self0 userInfo:(id)self1
{
  v56 = *MEMORY[0x1E69E9840];
  listCopy = list;
  obj = controller;
  controllerCopy = controller;
  typeControllerCopy = typeController;
  typeControllerCopy2 = typeController;
  notificationControllerCopy = notificationController;
  notificationControllerCopy2 = notificationController;
  providerCopy = provider;
  providerCopy2 = provider;
  managerCopy = manager;
  managerCopy2 = manager;
  configurationManagerCopy = configurationManager;
  configurationManagerCopy2 = configurationManager;
  monitorCopy = monitor;
  infoCopy = info;
  infoCopy2 = info;
  if (!listCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    info = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptionList != nil", obj, typeControllerCopy, notificationController, provider, configurationManager, manager, info];
    *buf = 136315906;
    v49 = "[FCSubscriptionController initWithSubscriptionList:tagController:puzzleTypeController:notificationController:purchaseProvider:configurationManager:appConfigurationManager:appActivityMonitor:userInfo:]";
    v50 = 2080;
    v51 = "FCSubscriptionController.m";
    v52 = 1024;
    v53 = 90;
    v54 = 2114;
    v55 = info;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (controllerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (controllerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagController != nil"];
    *buf = 136315906;
    v49 = "[FCSubscriptionController initWithSubscriptionList:tagController:puzzleTypeController:notificationController:purchaseProvider:configurationManager:appConfigurationManager:appActivityMonitor:userInfo:]";
    v50 = 2080;
    v51 = "FCSubscriptionController.m";
    v52 = 1024;
    v53 = 91;
    v54 = 2114;
    v55 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!typeControllerCopy2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeController != nil"];
    *buf = 136315906;
    v49 = "[FCSubscriptionController initWithSubscriptionList:tagController:puzzleTypeController:notificationController:purchaseProvider:configurationManager:appConfigurationManager:appActivityMonitor:userInfo:]";
    v50 = 2080;
    v51 = "FCSubscriptionController.m";
    v52 = 1024;
    v53 = 92;
    v54 = 2114;
    v55 = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (monitorCopy)
    {
      goto LABEL_11;
    }
  }

  else if (monitorCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "appActivityMonitor != nil"];
    *buf = 136315906;
    v49 = "[FCSubscriptionController initWithSubscriptionList:tagController:puzzleTypeController:notificationController:purchaseProvider:configurationManager:appConfigurationManager:appActivityMonitor:userInfo:]";
    v50 = 2080;
    v51 = "FCSubscriptionController.m";
    v52 = 1024;
    v53 = 93;
    v54 = 2114;
    v55 = v33;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:
  v47.receiver = self;
  v47.super_class = FCSubscriptionController;
  v21 = [(FCSubscriptionController *)&v47 init];
  v22 = v21;
  if (v21)
  {
    if (listCopy && controllerCopy && typeControllerCopy2)
    {
      [listCopy addObserver:v21];
      [listCopy addStateObserver:v22];
      objc_storeStrong(&v22->_subscriptionList, list);
      objc_storeStrong(&v22->_tagController, obj);
      objc_storeStrong(&v22->_puzzleTypeController, typeControllerCopy);
      objc_storeStrong(&v22->_notificationController, notificationControllerCopy);
      objc_storeStrong(&v22->_purchaseProvider, providerCopy);
      objc_storeStrong(&v22->_configurationManager, managerCopy);
      objc_storeStrong(&v22->_appConfigurationManager, configurationManagerCopy);
      objc_storeStrong(&v22->_userInfo, infoCopy);
      v23 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      observers = v22->_observers;
      v22->_observers = v23;

      v25 = objc_alloc_init(FCThreadSafeMutableDictionary);
      subscribedTagsByTagID = v22->_subscribedTagsByTagID;
      v22->_subscribedTagsByTagID = v25;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v22 selector:sel__purchaseListDidAddTagIDs_ name:FCPurchaseAddedNotificationName object:0];
      [defaultCenter addObserver:v22 selector:sel__purchaseListDidRemoveTagIDs_ name:FCPurchaseRemovedNotificationName object:0];
      [monitorCopy addObserver:v22];
      [(FCSubscriptionController *)v22 _fetchMissingTagsWithCompletion:?];
    }

    else
    {
      defaultCenter = v21;
      v22 = 0;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)_fetchMissingTagsWithCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    subscribedTagIDs = [*(completion + 16) subscribedTagIDs];
    v5 = [subscribedTagIDs mutableCopy];

    v6 = MEMORY[0x1E695DFD8];
    allKeys = [*(completion + 40) allKeys];
    v8 = [v6 setWithArray:allKeys];
    [v5 minusSet:v8];

    if ([*(completion + 40) count] >= 5)
    {
      v9 = 17;
    }

    else
    {
      v9 = 25;
    }

    v10 = [FCCachePolicy cachePolicyWithSoftMaxAge:1.79769313e308];
    allObjects = [v5 allObjects];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__FCSubscriptionController__fetchMissingTagsWithCompletion___block_invoke;
    v12[3] = &unk_1E7C38D88;
    v13 = v3;
    [(FCSubscriptionController *)completion _fetchTagsForIDs:allObjects cachePolicy:v10 qualityOfService:v9 completion:v12];
  }
}

- (void)addObserver:(id)observer
{
  v18 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    if (self)
    {
      observers = self->_observers;
    }

    else
    {
      observers = 0;
    }

    if ([(NSHashTable *)observers containsObject:observerCopy]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      observerCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already an observer", observerCopy];
      *buf = 136315906;
      v11 = "[FCSubscriptionController addObserver:]";
      v12 = 2080;
      v13 = "FCSubscriptionController.m";
      v14 = 1024;
      v15 = 142;
      v16 = 2114;
      v17 = observerCopy;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (self)
      {
        goto LABEL_7;
      }
    }

    else if (self)
    {
LABEL_7:
      v6 = self->_observers;
LABEL_8:
      [(NSHashTable *)v6 addObject:observerCopy];
      goto LABEL_11;
    }

    v6 = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v11 = "[FCSubscriptionController addObserver:]";
    v12 = 2080;
    v13 = "FCSubscriptionController.m";
    v14 = 1024;
    v15 = 138;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)observer
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    if (self)
    {
      observers = self->_observers;
    }

    else
    {
      observers = 0;
    }

    [(NSHashTable *)observers removeObject:observerCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v9 = "[FCSubscriptionController removeObserver:]";
    v10 = 2080;
    v11 = "FCSubscriptionController.m";
    v12 = 1024;
    v13 = 150;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)subscribedTagForTagID:(id)d
{
  if (self)
  {
    self = self->_subscribedTagsByTagID;
  }

  return [(FCSubscriptionController *)self objectForKey:d];
}

- (void)subscriptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  subscriptions = [(FCSubscriptionController *)self subscriptions];
  objc_initWeak(&location, self);
  if (self)
  {
    subscriptionList = self->_subscriptionList;
  }

  else
  {
    subscriptionList = 0;
  }

  v7 = subscriptionList;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__FCSubscriptionController_subscriptionsWithCompletion___block_invoke;
  v10[3] = &unk_1E7C3BDE8;
  objc_copyWeak(&v13, &location);
  v8 = completionCopy;
  v12 = v8;
  v9 = subscriptions;
  v11 = v9;
  [(FCPrivateDataController *)v7 syncWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __56__FCSubscriptionController_subscriptionsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 40);
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v5 = WeakRetained;
    v4 = [WeakRetained subscriptions];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v5 = 0;
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  WeakRetained = v5;
LABEL_7:
}

- (id)allSubscribedTagIDs
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  allSubscribedTagIDs = [(FCSubscriptionController *)self allSubscribedTagIDs];
  allObjects = [allSubscribedTagIDs allObjects];

  return allObjects;
}

- (id)permanentChannelIDs
{
  if (self)
  {
    self = self->_configurationManager;
  }

  configuration = [(FCSubscriptionController *)self configuration];
  permanentChannelIDs = [configuration permanentChannelIDs];

  return permanentChannelIDs;
}

- (id)appleNewsNotificationChannelIDs
{
  if (self)
  {
    self = self->_configurationManager;
  }

  configuration = [(FCSubscriptionController *)self configuration];
  appleNewsNotificationChannelIDs = [configuration appleNewsNotificationChannelIDs];

  return appleNewsNotificationChannelIDs;
}

- (BOOL)isWaitingForFirstSync
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  return [(FCSubscriptionController *)self isWaitingForFirstSync];
}

- (BOOL)isChannelPermanentForTagID:(id)d
{
  if (!d)
  {
    return 0;
  }

  dCopy = d;
  permanentChannelIDs = [(FCSubscriptionController *)self permanentChannelIDs];
  v6 = [permanentChannelIDs containsObject:dCopy];

  return v6;
}

- (BOOL)isAppleNewsNotificationForTagID:(id)d
{
  if (!d)
  {
    return 0;
  }

  dCopy = d;
  appleNewsNotificationChannelIDs = [(FCSubscriptionController *)self appleNewsNotificationChannelIDs];
  v6 = [appleNewsNotificationChannelIDs containsObject:dCopy];

  return v6;
}

- (id)ignoredTagIDs
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  ignoredTagIDs = [(FCSubscriptionController *)self ignoredTagIDs];
  allObjects = [ignoredTagIDs allObjects];

  return allObjects;
}

- (id)tagIDsWithType:(unint64_t)type
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  v3 = [(FCSubscriptionController *)self subscriptionsForType:type];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)subscriptionsWithType:(unint64_t)type
{
  if (self)
  {
    subscriptionList = self->_subscriptionList;
  }

  else
  {
    subscriptionList = 0;
  }

  v6 = subscriptionList;
  v7 = [(FCSubscriptionList *)v6 subscriptionsForType:type];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__FCSubscriptionController_subscriptionsWithType___block_invoke;
  v11[3] = &unk_1E7C3BE30;
  v11[4] = self;
  v11[5] = type;
  v8 = [v7 fc_setByTransformingWithBlock:v11];
  allObjects = [v8 allObjects];

  return allObjects;
}

uint64_t __50__FCSubscriptionController_subscriptionsWithType___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2];
  }

  return [v2 subscriptionForTagID:a2 type:*(a1 + 40)];
}

- (BOOL)canAddSubscription
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    subscriptionList = self->_subscriptionList;
  }

  else
  {
    subscriptionList = 0;
  }

  return [(FCSubscriptionList *)subscriptionList canAddSubscription];
}

- (BOOL)canAddSubscriptionWithError:(id *)error
{
  [MEMORY[0x1E696AF00] isMainThread];
  canAddSubscription = [(FCSubscriptionController *)self canAddSubscription];
  v6 = canAddSubscription;
  if (error && !canAddSubscription)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCSubscriptionControllerErrorDomain" code:1 userInfo:0];
  }

  return v6;
}

- (BOOL)hasSubscriptionToTag:(id)tag
{
  v20 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  if (!tagCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tag != nil"];
    *buf = 136315906;
    v13 = "[FCSubscriptionController hasSubscriptionToTag:]";
    v14 = 2080;
    v15 = "FCSubscriptionController.m";
    v16 = 1024;
    v17 = 332;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }

LABEL_7:
    subscribedTagsByTagID = 0;
    goto LABEL_5;
  }

  if (!self)
  {
    goto LABEL_7;
  }

LABEL_4:
  subscribedTagsByTagID = self->_subscribedTagsByTagID;
LABEL_5:
  v6 = subscribedTagsByTagID;
  identifier = [tagCopy identifier];
  v8 = [(FCThreadSafeMutableDictionary *)v6 objectForKeyedSubscript:identifier];

  v9 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

- (BOOL)hasSubscriptionToTagID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v12 = "[FCSubscriptionController hasSubscriptionToTagID:]";
    v13 = 2080;
    v14 = "FCSubscriptionController.m";
    v15 = 1024;
    v16 = 338;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }

LABEL_7:
    subscribedTagsByTagID = 0;
    goto LABEL_5;
  }

  if (!self)
  {
    goto LABEL_7;
  }

LABEL_4:
  subscribedTagsByTagID = self->_subscribedTagsByTagID;
LABEL_5:
  v6 = [(FCThreadSafeMutableDictionary *)subscribedTagsByTagID objectForKeyedSubscript:dCopy];
  v7 = v6 != 0;

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)subscriptionForTag:(id)tag
{
  v20 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  if (!tagCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tag != nil"];
    *buf = 136315906;
    v13 = "[FCSubscriptionController subscriptionForTag:]";
    v14 = 2080;
    v15 = "FCSubscriptionController.m";
    v16 = 1024;
    v17 = 344;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }
  }

  else if (self)
  {
LABEL_4:
    subscriptionList = self->_subscriptionList;
    goto LABEL_5;
  }

  subscriptionList = 0;
LABEL_5:
  v6 = subscriptionList;
  identifier = [tagCopy identifier];
  v8 = [(FCSubscriptionList *)v6 subscriptionForTagID:identifier];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)subscriptionForTagID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v11 = "[FCSubscriptionController subscriptionForTagID:]";
    v12 = 2080;
    v13 = "FCSubscriptionController.m";
    v14 = 1024;
    v15 = 356;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }
  }

  else if (self)
  {
LABEL_4:
    subscriptionList = self->_subscriptionList;
    goto LABEL_5;
  }

  subscriptionList = 0;
LABEL_5:
  v6 = [(FCSubscriptionList *)subscriptionList subscriptionForTagIDOfAnyType:dCopy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)addSubscriptionToTag:(id)tag options:(int64_t)options error:(id *)error
{
  optionsCopy = options;
  v40 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!tagCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tag != nil"];
    *buf = 136315906;
    v33 = "[FCSubscriptionController addSubscriptionToTag:options:error:]";
    v34 = 2080;
    v35 = "FCSubscriptionController.m";
    v36 = 1024;
    v37 = 381;
    v38 = 2114;
    v39 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }
  }

  else if (self)
  {
LABEL_4:
    subscriptionList = self->_subscriptionList;
    goto LABEL_5;
  }

  subscriptionList = 0;
LABEL_5:
  v10 = subscriptionList;
  identifier = [tagCopy identifier];
  v12 = [(FCSubscriptionList *)v10 hasMutedSubscriptionForTagID:identifier];

  if (v12)
  {
    identifier2 = [tagCopy identifier];
    [(FCSubscriptionController *)self removeSubscriptionForTagID:identifier2 type:2];
  }

  if (!-[FCSubscriptionList canAddSubscription](v10, "canAddSubscription") || ([tagCopy identifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = -[FCSubscriptionList addSubscriptionForTagID:type:origin:groupID:notificationsEnabled:](v10, "addSubscriptionForTagID:type:origin:groupID:notificationsEnabled:", v14, 0, 0, 0, optionsCopy & 1), v14, !v15))
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"FCSubscriptionControllerErrorDomain" code:1 userInfo:0];
      *error = v16 = 0;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v31 = tagCopy;
  v16 = 1;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [(FCSubscriptionController *)self _integrateTags:v17];

  if (optionsCopy)
  {
    if (self)
    {
      purchaseProvider = self->_purchaseProvider;
    }

    else
    {
      purchaseProvider = 0;
    }

    v19 = purchaseProvider;
    identifier3 = [tagCopy identifier];
    purchasedTagIDs = [(FCPurchaseProviderType *)v19 purchasedTagIDs];

    v22 = [purchasedTagIDs containsObject:identifier3];
    if (self)
    {
      notificationController = self->_notificationController;
    }

    else
    {
      notificationController = 0;
    }

    v24 = notificationController;
    identifier4 = [tagCopy identifier];
    v26 = [(FCNotificationController *)v24 registerNotificationsForChannelID:identifier4 isPaid:v22];

    if (v26)
    {
      v16 = 1;
      goto LABEL_20;
    }

    identifier5 = [tagCopy identifier];
    [(FCSubscriptionList *)v10 setNotificationsEnabled:0 forTagID:identifier5];

LABEL_19:
    v16 = 0;
  }

LABEL_20:

  v28 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)_integrateTags:(uint64_t)tags
{
  v3 = a2;
  if (tags)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v6 = *(tags + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__FCSubscriptionController__integrateTags___block_invoke;
    v9[3] = &unk_1E7C399F8;
    v10 = v3;
    v7 = v5;
    v11 = v7;
    v8 = v4;
    v12 = v8;
    [v6 readWriteWithAccessor:v9];
    if ([v7 count] || objc_msgSend(v8, "count"))
    {
      [(FCSubscriptionController *)tags _notifyOfTagsAdded:v7 tagsChanged:v8 tagsMoved:0 tagsRemoved:0 subscriptionType:0];
    }
  }
}

- (BOOL)appendSubscriptionToTag:(id)tag notificationsEnabled:(BOOL)enabled error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!tagCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tag != nil"];
    *buf = 136315906;
    v19 = "[FCSubscriptionController appendSubscriptionToTag:notificationsEnabled:error:]";
    v20 = 2080;
    v21 = "FCSubscriptionController.m";
    v22 = 1024;
    v23 = 439;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }

LABEL_13:
    subscriptionList = 0;
    goto LABEL_5;
  }

  if (!self)
  {
    goto LABEL_13;
  }

LABEL_4:
  subscriptionList = self->_subscriptionList;
LABEL_5:
  v9 = subscriptionList;
  if (-[FCSubscriptionList canAddSubscription](v9, "canAddSubscription") && ([tagCopy identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[FCSubscriptionList appendSubscriptionForTagID:type:](v9, "appendSubscriptionForTagID:type:", v10, 0), v10, v11))
  {
    v17 = tagCopy;
    v12 = 1;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    [(FCSubscriptionController *)self _integrateTags:v13];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"FCSubscriptionControllerErrorDomain" code:1 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)removeSubscriptionToTag:(id)tag
{
  v23 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  [MEMORY[0x1E696AF00] isMainThread];
  if (!tagCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tag != nil"];
    *buf = 136315906;
    v16 = "[FCSubscriptionController removeSubscriptionToTag:]";
    v17 = 2080;
    v18 = "FCSubscriptionController.m";
    v19 = 1024;
    v20 = 468;
    v21 = 2114;
    v22 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  identifier = [tagCopy identifier];
  if (self)
  {
    subscriptionList = self->_subscriptionList;
  }

  else
  {
    subscriptionList = 0;
  }

  v7 = [(FCSubscriptionList *)subscriptionList subscriptionForTagID:identifier];
  notificationsEnabled = [v7 notificationsEnabled];
  if (self)
  {
    [(FCSubscriptionList *)self->_subscriptionList removeSubscriptionForTagID:identifier type:0];
    subscribedTagsByTagID = self->_subscribedTagsByTagID;
  }

  else
  {
    [0 removeSubscriptionForTagID:identifier type:0];
    subscribedTagsByTagID = 0;
  }

  v10 = [(FCThreadSafeMutableDictionary *)subscribedTagsByTagID objectForKeyedSubscript:identifier];

  if (v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected nil value for '%s'", "self.subscribedTagsByTagID[identifier]"];
    *buf = 136315906;
    v16 = "[FCSubscriptionController removeSubscriptionToTag:]";
    v17 = 2080;
    v18 = "FCSubscriptionController.m";
    v19 = 1024;
    v20 = 476;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!notificationsEnabled)
    {
      goto LABEL_14;
    }
  }

  else if (!notificationsEnabled)
  {
    goto LABEL_14;
  }

  if (self)
  {
    notificationController = self->_notificationController;
  }

  else
  {
    notificationController = 0;
  }

  [(FCNotificationController *)notificationController unregisterNotificationsForChannelID:identifier];
LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeSubscriptionForTagID:(id)d type:(unint64_t)type
{
  v6 = MEMORY[0x1E696AF00];
  dCopy = d;
  [v6 isMainThread];
  if (self)
  {
    subscriptionList = self->_subscriptionList;
  }

  else
  {
    subscriptionList = 0;
  }

  [(FCSubscriptionList *)subscriptionList removeSubscriptionForTagID:dCopy type:type];
}

- (BOOL)hasNotificationsEnabledForTag:(id)tag
{
  v20 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  if (!tagCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tag != nil"];
    *buf = 136315906;
    v13 = "[FCSubscriptionController hasNotificationsEnabledForTag:]";
    v14 = 2080;
    v15 = "FCSubscriptionController.m";
    v16 = 1024;
    v17 = 548;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }

LABEL_7:
    subscriptionList = 0;
    goto LABEL_5;
  }

  if (!self)
  {
    goto LABEL_7;
  }

LABEL_4:
  subscriptionList = self->_subscriptionList;
LABEL_5:
  v6 = subscriptionList;
  identifier = [tagCopy identifier];
  v8 = [(FCSubscriptionList *)v6 hasNotificationsEnabledForTagID:identifier];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)subscriptionSurfacingHeadline:(id)headline
{
  headlineCopy = headline;
  if (self)
  {
    subscriptionList = self->_subscriptionList;
  }

  else
  {
    subscriptionList = 0;
  }

  v6 = subscriptionList;
  surfacedByChannelID = [headlineCopy surfacedByChannelID];
  if (surfacedByChannelID)
  {
    v8 = [(FCSubscriptionList *)v6 subscriptionForTagIDOfAnyType:surfacedByChannelID];
  }

  else
  {
    surfacedByTopicID = [headlineCopy surfacedByTopicID];
    v8 = [(FCSubscriptionList *)v6 subscriptionForTagIDOfAnyType:surfacedByTopicID];
  }

  return v8;
}

- (void)refreshAndNotifyAboutSubscribedTags
{
  v61 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  selfCopy = self;
  if (self)
  {
    subscribedTagsByTagID = self->_subscribedTagsByTagID;
  }

  else
  {
    subscribedTagsByTagID = 0;
  }

  v41 = v4;
  v7 = subscribedTagsByTagID;
  readOnlyDictionary = [(FCThreadSafeMutableDictionary *)v7 readOnlyDictionary];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v37 = readOnlyDictionary;
  obj = [readOnlyDictionary allValues];
  v42 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v42)
  {
    v40 = *v53;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        v10 = v5;
        if (*v53 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        isNotificationEnabled = [v11 isNotificationEnabled];
        identifier = [v11 identifier];
        if (isNotificationEnabled)
        {
          v14 = v3;
        }

        else
        {
          v14 = v41;
        }

        [v14 addObject:identifier];

        v15 = v3;
        v16 = MEMORY[0x1E696AEC0];
        identifier2 = [v11 identifier];
        isNotificationEnabled2 = [v11 isNotificationEnabled];
        fetchDate = [v11 fetchDate];
        lastModifiedDate = [v11 lastModifiedDate];
        versionKey = [v11 versionKey];
        v22 = [v16 stringWithFormat:@"tagID: %@ notifications: %d fetchedDate: %@ modifiedDate: %@ changeTag: %@", identifier2, isNotificationEnabled2, fetchDate, lastModifiedDate, versionKey];
        identifier3 = [v11 identifier];
        v5 = v10;
        [v10 setObject:v22 forKeyedSubscript:identifier3];

        v3 = v15;
      }

      v42 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v42);
  }

  subscribedTagIDs = [(FCSubscriptionController *)selfCopy subscribedTagIDs];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __63__FCSubscriptionController_refreshAndNotifyAboutSubscribedTags__block_invoke;
  v50[3] = &unk_1E7C38B40;
  v25 = v37;
  v51 = v25;
  v26 = [subscribedTagIDs fc_arrayOfObjectsPassingTest:v50];

  autoFavoriteTagIDs = [(FCSubscriptionController *)selfCopy autoFavoriteTagIDs];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __63__FCSubscriptionController_refreshAndNotifyAboutSubscribedTags__block_invoke_2;
  v48[3] = &unk_1E7C38B40;
  v28 = v25;
  v49 = v28;
  v29 = [autoFavoriteTagIDs fc_arrayOfObjectsPassingTest:v48];

  v30 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:v26 toArray:v29];
  v31 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    v32 = v31;
    v33 = [v26 count];
    v34 = [v29 count];
    *buf = 134218240;
    v57 = v33;
    v58 = 2048;
    v59 = v34;
    _os_log_impl(&dword_1B63EF000, v32, OS_LOG_TYPE_DEFAULT, "About to refresh %lu subscribedTagIDs and %lu autoFavoriteTagIDs", buf, 0x16u);
  }

  if ([v30 count])
  {
    v35 = [FCCachePolicy cachePolicyWithSoftMaxAge:60.0];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __63__FCSubscriptionController_refreshAndNotifyAboutSubscribedTags__block_invoke_55;
    v43[3] = &unk_1E7C3BE58;
    v44 = v41;
    v45 = v5;
    v46 = selfCopy;
    v47 = v3;
    [(FCSubscriptionController *)selfCopy _fetchTagsForIDs:v30 cachePolicy:v35 qualityOfService:9 completion:v43];
  }

  v36 = *MEMORY[0x1E69E9840];
}

BOOL __63__FCSubscriptionController_refreshAndNotifyAboutSubscribedTags__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 != 0;

  return v3;
}

BOOL __63__FCSubscriptionController_refreshAndNotifyAboutSubscribedTags__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 != 0;

  return v3;
}

void __63__FCSubscriptionController_refreshAndNotifyAboutSubscribedTags__block_invoke_55(void *a1, void *a2)
{
  v100 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v76 = v2;
  v5 = [v2 allValues];
  v6 = [v5 countByEnumeratingWithState:&v85 objects:v95 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v86;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v86 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v85 + 1) + 8 * i);
        v11 = [v10 isNotificationEnabled];
        v12 = [v10 identifier];
        if (v11)
        {
          v13 = v3;
        }

        else
        {
          v13 = v4;
        }

        [v13 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v85 objects:v95 count:16];
    }

    while (v7);
  }

  v68 = v4;

  [v3 intersectSet:a1[4]];
  v73 = [MEMORY[0x1E695DFA8] set];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v67 = v3;
  obj = [v3 allObjects];
  v14 = [obj countByEnumeratingWithState:&v81 objects:v94 count:16];
  if (v14)
  {
    v15 = v14;
    v74 = *v82;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v82 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v81 + 1) + 8 * j);
        v18 = [v76 objectForKey:v17];
        [v73 addObject:v18];
        v19 = MEMORY[0x1E696AEC0];
        v20 = [v18 identifier];
        v21 = [v18 isNotificationEnabled];
        v22 = [v18 fetchDate];
        v23 = [v18 lastModifiedDate];
        v24 = [v18 versionKey];
        v25 = [v19 stringWithFormat:@"tagID: %@ notifications: %d fetchedDate: %@ modifiedDate: %@ changeTag: %@", v20, v21, v22, v23, v24];

        v26 = FCPushNotificationsLog;
        if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
        {
          v27 = a1[5];
          v28 = v26;
          v29 = [v27 objectForKeyedSubscript:v17];
          *buf = 138543362;
          *&buf[4] = v29;
          _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, "Initial state %{public}@", buf, 0xCu);

          v26 = FCPushNotificationsLog;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v25;
          _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, "Latest state  %{public}@", buf, 0xCu);
        }
      }

      v15 = [obj countByEnumeratingWithState:&v81 objects:v94 count:16];
    }

    while (v15);
  }

  v30 = a1;
  if ([v73 count])
  {
    v31 = a1[6];
    v32 = v73;
    if (v31)
    {
      [MEMORY[0x1E696AF00] isMainThread];
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v33 = [*(v31 + 48) copy];
      v34 = [v33 countByEnumeratingWithState:&v89 objects:buf count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v90;
        do
        {
          for (k = 0; k != v35; ++k)
          {
            if (*v90 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v89 + 1) + 8 * k);
            if (objc_opt_respondsToSelector())
            {
              [v38 subscriptionController:v31 didFindTagsWithNotificationSupport:v32];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v89 objects:buf count:16];
        }

        while (v35);
      }
    }

    v30 = a1;
  }

  [v68 intersectSet:v30[7]];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v70 = [v68 allObjects];
  v75 = [v70 countByEnumeratingWithState:&v77 objects:v93 count:16];
  if (v75)
  {
    v72 = *v78;
    do
    {
      for (m = 0; m != v75; ++m)
      {
        if (*v78 != v72)
        {
          objc_enumerationMutation(v70);
        }

        v40 = *(*(&v77 + 1) + 8 * m);
        v41 = [v76 objectForKey:v40];
        [v30[6] setNotificationsEnabled:0 forTag:v41 error:0];
        v42 = MEMORY[0x1E696AEC0];
        v43 = [v41 identifier];
        v44 = [v41 isNotificationEnabled];
        v45 = [v41 fetchDate];
        v46 = [v41 lastModifiedDate];
        v47 = [v41 versionKey];
        v48 = [v42 stringWithFormat:@"tagID: %@ notifications: %d fetchedDate: %@ modifiedDate: %@ changeTag: %@", v43, v44, v45, v46, v47];

        v49 = FCPushNotificationsLog;
        if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
        {
          v50 = v30[5];
          v51 = v49;
          v52 = [v50 objectForKeyedSubscript:v40];
          *buf = 138543362;
          *&buf[4] = v52;
          _os_log_impl(&dword_1B63EF000, v51, OS_LOG_TYPE_DEFAULT, "Initial state %{public}@", buf, 0xCu);

          v49 = FCPushNotificationsLog;
        }

        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v48;
          _os_log_impl(&dword_1B63EF000, v49, OS_LOG_TYPE_DEFAULT, "Latest state  %{public}@", buf, 0xCu);
        }
      }

      v75 = [v70 countByEnumeratingWithState:&v77 objects:v93 count:16];
    }

    while (v75);
  }

  v53 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    v54 = v53;
    v55 = [v73 count];
    v56 = [v68 count];
    *buf = 134218240;
    *&buf[4] = v55;
    *&buf[12] = 2048;
    *&buf[14] = v56;
    _os_log_impl(&dword_1B63EF000, v54, OS_LOG_TYPE_DEFAULT, "Found %lu tags with notifications enabled, %lu tags with notifications disabled", buf, 0x16u);
  }

  v57 = a1[6];
  v58 = [v76 allValues];
  if (v57)
  {
    v59 = MEMORY[0x1E695DFD8];
    v60 = [v57 localChannelsProvider];
    v61 = [v60 lastKnownChannelIDs];
    v62 = [v59 setWithArray:v61];

    v63 = MEMORY[0x1E695DEC8];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __59__FCSubscriptionController__refreshSectionTagsWhereNeeded___block_invoke;
    v97 = &unk_1E7C3B110;
    v98 = v58;
    v99 = v62;
    v64 = v62;
    v65 = [v63 fc_array:buf];
    [v57[3] fetchTagsForTagIDs:v65 maximumCachedAge:9 qualityOfService:0 completionHandler:60.0];
  }

  v66 = *MEMORY[0x1E69E9840];
}

- (void)_fetchTagsForIDs:(void *)ds cachePolicy:(uint64_t)policy qualityOfService:(void *)service completion:
{
  v9 = a2;
  dsCopy = ds;
  serviceCopy = service;
  if (self)
  {
    v12 = dispatch_group_create();
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke;
    v44[3] = &unk_1E7C36FE8;
    v15 = v13;
    v45 = v15;
    v16 = v14;
    v46 = v16;
    [v9 enumerateObjectsUsingBlock:v44];
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = __Block_byref_object_copy__25;
    v42[4] = __Block_byref_object_dispose__25;
    v43 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy__25;
    v40[4] = __Block_byref_object_dispose__25;
    v41 = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__25;
    v38[4] = __Block_byref_object_dispose__25;
    v39 = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = __Block_byref_object_copy__25;
    v36[4] = __Block_byref_object_dispose__25;
    v37 = 0;
    v17 = [v15 count];
    if (v17 + [v16 count])
    {
      if ([v15 count])
      {
        dispatch_group_enter(v12);
        v18 = *(self + 32);
        v19 = FCDispatchQueueForQualityOfService(policy);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_2;
        v32[3] = &unk_1E7C3BE80;
        v34 = v42;
        v35 = v40;
        v33 = v12;
        [v18 fetchPuzzleTypesForPuzzleTypeIDs:v15 cachePolicy:dsCopy qualityOfService:policy callbackQueue:v19 completionHandler:v32];
      }

      if ([v16 count])
      {
        dispatch_group_enter(v12);
        v20 = *(self + 24);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_3;
        v28[3] = &unk_1E7C3BE80;
        v30 = v38;
        v31 = v36;
        v29 = v12;
        [v20 fetchTagsForTagIDs:v16 cachePolicy:dsCopy qualityOfService:policy completionHandler:v28];
      }

      v21 = FCDispatchQueueForQualityOfService(policy);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_4;
      block[3] = &unk_1E7C3C0B8;
      v24 = v36;
      v25 = v40;
      block[4] = self;
      v26 = v42;
      v27 = v38;
      v23 = serviceCopy;
      dispatch_group_notify(v12, v21, block);
    }

    else if (serviceCopy)
    {
      (*(serviceCopy + 2))(serviceCopy, MEMORY[0x1E695E0F8]);
    }

    _Block_object_dispose(v36, 8);

    _Block_object_dispose(v38, 8);
    _Block_object_dispose(v40, 8);

    _Block_object_dispose(v42, 8);
  }
}

void __59__FCSubscriptionController__refreshSectionTagsWhereNeeded___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        if (v9)
        {
          if ([*(*(&v16 + 1) + 8 * v8) conformsToProtocol:{&unk_1F2EA78D8, v16}])
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        if (([v11 isNewspaper] & 1) != 0 || (objc_msgSend(v11, "isLocal") & 1) != 0 || (v12 = *(a1 + 40), objc_msgSend(v11, "identifier"), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(v12) = objc_msgSend(v12, "containsObject:", v13), v13, v12))
        {
          v14 = [v11 sectionIDs];
          [v3 addObjectsFromArray:v14];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllTagsWithCallbackQueue:(id)queue maximumCachedAge:(double)age qualityOfService:(int64_t)service completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v12 = dispatch_group_create();
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke;
  v49[3] = &unk_1E7C36D40;
  v49[4] = self;
  v13 = [MEMORY[0x1E695DEC8] fc_array:v49];
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke_2;
  v46[3] = &unk_1E7C36FE8;
  v16 = v14;
  v47 = v16;
  v17 = v15;
  v48 = v17;
  [v13 enumerateObjectsUsingBlock:v46];
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__25;
  v44[4] = __Block_byref_object_dispose__25;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__25;
  v42[4] = __Block_byref_object_dispose__25;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__25;
  v40[4] = __Block_byref_object_dispose__25;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__25;
  v38[4] = __Block_byref_object_dispose__25;
  v39 = 0;
  if ([v16 count])
  {
    dispatch_group_enter(v12);
    if (self)
    {
      puzzleTypeController = self->_puzzleTypeController;
    }

    else
    {
      puzzleTypeController = 0;
    }

    v19 = puzzleTypeController;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke_412;
    v34[3] = &unk_1E7C3BE80;
    v36 = v44;
    v37 = v42;
    v35 = v12;
    [(FCPuzzleTypeController *)v19 fetchPuzzleTypesForPuzzleTypeIDs:v16 cachePolicy:0 qualityOfService:service callbackQueue:queueCopy completionHandler:v34];
  }

  if ([v17 count])
  {
    dispatch_group_enter(v12);
    if (self)
    {
      tagController = self->_tagController;
    }

    else
    {
      tagController = 0;
    }

    v21 = tagController;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke_414;
    v30[3] = &unk_1E7C3BE80;
    v32 = v40;
    v33 = v38;
    v31 = v12;
    [(FCTagController *)v21 fetchTagsForTagIDs:v17 maximumCachedAge:service qualityOfService:v30 completionHandler:age];
  }

  v22 = FCDispatchQueueForQualityOfService(service);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke_2_415;
  v24[3] = &unk_1E7C3C0B8;
  v26 = v44;
  v27 = v40;
  v24[4] = self;
  v25 = completionCopy;
  v28 = v38;
  v29 = v42;
  v23 = completionCopy;
  dispatch_group_notify(v12, v22, v24);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);
}

void __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 subscribedTagIDs];
  [v4 fc_safelyAddObjectsFromArray:v5];

  v6 = [*(a1 + 32) mutedTagIDs];
  [v4 fc_safelyAddObjectsFromArray:v6];

  v7 = [*(a1 + 32) autoFavoriteTagIDs];
  [v4 fc_safelyAddObjectsFromArray:v7];

  v8 = [*(a1 + 32) groupableTagIDs];
  [v4 fc_safelyAddObjectsFromArray:v8];
}

void __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [FCPuzzleType isPuzzleTypeIdentifier:v5];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

void __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke_412(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCPuzzleLog;
    if (os_log_type_enabled(FCPuzzleLog, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v6;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to fetch some subscribed puzzle types with error: %{public}@", &v15, 0xCu);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
  v14 = *MEMORY[0x1E69E9840];
}

void __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke_414(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke_2_415(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke_3;
    v14[3] = &unk_1E7C3BEA8;
    v15 = *(a1 + 48);
    v2 = [MEMORY[0x1E695DF20] fc_dictionary:v14];
    v3 = [FCSubscribedTags alloc];
    v13 = [(FCSubscriptionController *)*(a1 + 32) orderedSubscribedTagIDs];
    v4 = [v2 nf_objectsForKeysWithoutMarker:v13];
    v5 = [*(a1 + 32) mutedTagIDs];
    v6 = [v2 nf_objectsForKeysWithoutMarker:v5];
    v7 = [*(a1 + 32) autoFavoriteTagIDs];
    v8 = [v2 nf_objectsForKeysWithoutMarker:v7];
    v9 = [*(a1 + 32) groupableTagIDs];
    v10 = [v2 nf_objectsForKeysWithoutMarker:v9];
    v11 = [(FCSubscribedTags *)v3 initWithSubscribedTags:v4 mutedTags:v6 autoFavoriteTags:v8 groupableTags:v10];

    v12 = *(*(*(a1 + 64) + 8) + 40);
    if (!v12)
    {
      v12 = *(*(*(a1 + 72) + 8) + 40);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v11, v12);
  }
}

void __103__FCSubscriptionController_fetchAllTagsWithCallbackQueue_maximumCachedAge_qualityOfService_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  [v4 addEntriesFromDictionary:v3];
  [v4 addEntriesFromDictionary:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)prewarmFromCacheWithCallbackQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  cachedSubscribedTags = [(FCSubscriptionController *)self cachedSubscribedTags];
  if (![cachedSubscribedTags count])
  {
    if (self)
    {
      subscriptionList = self->_subscriptionList;
    }

    else
    {
      subscriptionList = 0;
    }

    v11 = subscriptionList;
    subscribedTagIDs = [(FCSubscriptionList *)v11 subscribedTagIDs];
    allObjects = [subscribedTagIDs allObjects];
    v14 = +[FCCachePolicy cachedOnlyCachePolicy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__FCSubscriptionController_prewarmFromCacheWithCallbackQueue_completion___block_invoke_2;
    v16[3] = &unk_1E7C3BED0;
    v9 = &v18;
    v18 = completionCopy;
    v15 = queueCopy;

    v17 = v15;
    [(FCSubscriptionController *)self _fetchTagsForIDs:allObjects cachePolicy:v14 qualityOfService:25 completion:v16];

    goto LABEL_7;
  }

  if (completionCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__FCSubscriptionController_prewarmFromCacheWithCallbackQueue_completion___block_invoke;
    block[3] = &unk_1E7C379C8;
    v9 = &v20;
    v20 = completionCopy;
    dispatch_async(queueCopy, block);
LABEL_7:
  }
}

void __73__FCSubscriptionController_prewarmFromCacheWithCallbackQueue_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__FCSubscriptionController_prewarmFromCacheWithCallbackQueue_completion___block_invoke_3;
    block[3] = &unk_1E7C379C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

- (void)fetchSubscribedTagsWithCallbackQueue:(id)queue preferCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  queueCopy = queue;
  completionCopy = completion;
  cachedSubscribedTags = [(FCSubscriptionController *)self cachedSubscribedTags];
  if (![cachedSubscribedTags count] || !cacheCopy)
  {
    if (self)
    {
      subscriptionList = self->_subscriptionList;
    }

    else
    {
      subscriptionList = 0;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88__FCSubscriptionController_fetchSubscribedTagsWithCallbackQueue_preferCache_completion___block_invoke_2;
    v13[3] = &unk_1E7C39F98;
    v13[4] = self;
    v15 = completionCopy;
    v14 = queueCopy;
    [(FCPrivateDataController *)subscriptionList performFirstSyncWithCompletion:v13];

    v11 = v15;
    goto LABEL_8;
  }

  if (completionCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__FCSubscriptionController_fetchSubscribedTagsWithCallbackQueue_preferCache_completion___block_invoke;
    block[3] = &unk_1E7C37778;
    v18 = completionCopy;
    v17 = cachedSubscribedTags;
    dispatch_async(queueCopy, block);

    v11 = v18;
LABEL_8:
  }
}

void __88__FCSubscriptionController_fetchSubscribedTagsWithCallbackQueue_preferCache_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__FCSubscriptionController_fetchSubscribedTagsWithCallbackQueue_preferCache_completion___block_invoke_3;
  v5[3] = &unk_1E7C3A060;
  v8 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [(FCSubscriptionController *)v2 _fetchMissingTagsWithCompletion:v5];
}

void __88__FCSubscriptionController_fetchSubscribedTagsWithCallbackQueue_preferCache_completion___block_invoke_3(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v3 = a1[4];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __88__FCSubscriptionController_fetchSubscribedTagsWithCallbackQueue_preferCache_completion___block_invoke_4;
    v5[3] = &unk_1E7C37778;
    v4 = v1;
    v5[4] = a1[5];
    v6 = v4;
    dispatch_async(v3, v5);
  }
}

void __88__FCSubscriptionController_fetchSubscribedTagsWithCallbackQueue_preferCache_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) cachedSubscribedTags];
  (*(v1 + 16))(v1, v2, 0);
}

- (id)newlySubscribedTagIDsInDateRange:(id)range
{
  v30 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  array = [MEMORY[0x1E695DF70] array];
  if (self)
  {
    subscriptionList = self->_subscriptionList;
  }

  else
  {
    subscriptionList = 0;
  }

  subscriptionsBySubscriptionID = [(FCSubscriptionList *)subscriptionList subscriptionsBySubscriptionID];
  allValues = [subscriptionsBySubscriptionID allValues];
  v9 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_423];
  v10 = [allValues filteredArrayUsingPredicate:v9];

  if ([v10 count])
  {
    v24 = v10;
    v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_426];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          tagID = [v16 tagID];
          if (tagID)
          {
            v18 = tagID;
            dateAdded = [v16 dateAdded];
            v20 = [rangeCopy containsDate:dateAdded];

            if (v20)
            {
              tagID2 = [v16 tagID];
              [array addObject:tagID2];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v10 = v24;
  }

  v22 = *MEMORY[0x1E69E9840];

  return array;
}

uint64_t __61__FCSubscriptionController_newlySubscribedTagIDsInDateRange___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateAdded];
  v6 = [v4 dateAdded];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)moveSubscriptionForTagID:(id)d beforeTagID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = 0;
  if (dCopy && iDCopy)
  {
    if (self)
    {
      subscriptionList = self->_subscriptionList;
    }

    else
    {
      subscriptionList = 0;
    }

    v10 = subscriptionList;
    orderedSubscribedTagIDs = [(FCSubscriptionList *)v10 orderedSubscribedTagIDs];
    v12 = [orderedSubscribedTagIDs indexOfObject:iDCopy];

    v8 = v12 != 0x7FFFFFFFFFFFFFFFLL && [(FCSubscriptionList *)v10 moveSubscriptionForTagID:dCopy toIndex:v12];
  }

  return v8;
}

- (void)reorderSubscriptionOrderForOrderedIdentifiers:(id)identifiers
{
  v4 = MEMORY[0x1E696AF00];
  identifiersCopy = identifiers;
  [v4 isMainThread];
  if (self)
  {
    subscriptionList = self->_subscriptionList;
  }

  else
  {
    subscriptionList = 0;
  }

  [(FCSubscriptionList *)subscriptionList reorderSubscriptionOrderForOrderedIdentifiers:identifiersCopy];
}

- (BOOL)hasAutoFavoriteSubscriptionForTagID:(id)d
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  return [(FCSubscriptionController *)self hasAutoFavoriteSubscriptionForTagID:d];
}

- (BOOL)hasMutedSubscriptionForTagID:(id)d
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  return [(FCSubscriptionController *)self hasMutedSubscriptionForTagID:d];
}

- (BOOL)addMutedSubscriptionForTagID:(id)d groupID:(id)iD
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  if (self)
  {
    subscriptionList = self->_subscriptionList;
  }

  else
  {
    subscriptionList = 0;
  }

  v9 = subscriptionList;
  if ([(FCSubscriptionController *)self hasSubscriptionToTagID:dCopy])
  {
    if (self)
    {
      tagController = self->_tagController;
    }

    else
    {
      tagController = 0;
    }

    v11 = [(FCTagController *)tagController expectedFastCachedTagForID:dCopy];
    [(FCSubscriptionController *)self removeSubscriptionToTag:v11];
  }

  if ([(FCSubscriptionController *)self hasAutoFavoriteSubscriptionForTagID:dCopy])
  {
    if (self)
    {
      v12 = self->_tagController;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(FCTagController *)v12 expectedFastCachedTagForID:dCopy];
    if (self)
    {
      [MEMORY[0x1E696AF00] isMainThread];
      if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tag != nil"];
        *buf = 136315906;
        v21 = "[FCSubscriptionController removeAutoFavoriteSubscriptionToTag:]";
        v22 = 2080;
        v23 = "FCSubscriptionController.m";
        v24 = 1024;
        v25 = 488;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v14 = self->_subscriptionList;
      identifier = [v13 identifier];
      [(FCSubscriptionList *)v14 removeSubscriptionForTagID:identifier type:3];
    }
  }

  v16 = [(FCSubscriptionList *)v9 addSubscriptionForTagID:dCopy type:2 origin:0 groupID:iDCopy];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)hasIgnoredSubscriptionForTagID:(id)d
{
  if (self)
  {
    self = self->_subscriptionList;
  }

  return [(FCSubscriptionController *)self hasIgnoredSubscriptionForTagID:d];
}

- (BOOL)addIgnoredSubscriptionForTagID:(id)d groupID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if ([(FCSubscriptionController *)self hasMutedSubscriptionForTagID:dCopy])
  {
    v8 = 0;
  }

  else
  {
    if ([(FCSubscriptionController *)self hasSubscriptionToTagID:dCopy])
    {
      if (self)
      {
        tagController = self->_tagController;
      }

      else
      {
        tagController = 0;
      }

      v10 = [(FCTagController *)tagController expectedFastCachedTagForID:dCopy];
      [(FCSubscriptionController *)self removeSubscriptionToTag:v10];
    }

    if (self)
    {
      subscriptionList = self->_subscriptionList;
    }

    else
    {
      subscriptionList = 0;
    }

    v8 = [(FCSubscriptionList *)subscriptionList addSubscriptionForTagID:dCopy type:5 origin:0 groupID:iDCopy];
  }

  return v8;
}

- (BOOL)removeIgnoredSubscriptionForTagID:(id)d groupID:(id)iD
{
  dCopy = d;
  v6 = [(FCSubscriptionController *)self hasIgnoredSubscriptionForTagID:dCopy];
  if (v6)
  {
    if (self)
    {
      subscriptionList = self->_subscriptionList;
    }

    else
    {
      subscriptionList = 0;
    }

    [(FCSubscriptionList *)subscriptionList removeSubscriptionForTagID:dCopy type:5];
  }

  return v6;
}

- (void)removeAllAutoFavoriteSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  v5 = MEMORY[0x1E695DFD8];
  autoFavoriteTagIDs = [(FCSubscriptionController *)self autoFavoriteTagIDs];
  v7 = [v5 setWithArray:autoFavoriteTagIDs];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DFD8] set];
  }

  v10 = v9;

  v11 = MEMORY[0x1E695DFD8];
  groupableTagIDs = [(FCSubscriptionController *)self groupableTagIDs];
  v13 = [v11 setWithArray:groupableTagIDs];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x1E695DFD8] set];
  }

  v16 = v15;

  if (self)
  {
    subscriptionList = self->_subscriptionList;
  }

  else
  {
    subscriptionList = 0;
  }

  v18 = subscriptionList;
  v19 = [v10 setByAddingObjectsFromSet:v16];
  v23 = subscriptionsCopy;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __63__FCSubscriptionController_removeAllAutoFavoriteSubscriptions___block_invoke;
  v24[3] = &unk_1E7C3BF38;
  v25 = v10;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__FCSubscriptionController_removeAllAutoFavoriteSubscriptions___block_invoke_2;
  v22[3] = &unk_1E7C3BF60;
  v20 = subscriptionsCopy;
  v21 = v10;
  [(FCSubscriptionList *)v18 removeSubscriptionsForTagIDs:v19 typeProvider:v24 completion:v22];
}

uint64_t __63__FCSubscriptionController_removeAllAutoFavoriteSubscriptions___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) containsObject:a2])
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t __63__FCSubscriptionController_removeAllAutoFavoriteSubscriptions___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addAutoFavoriteSubscriptionForTagIDs:(id)ds groupableSubscriptionForTagIDs:(id)iDs originProvider:(id)provider completion:(id)completion
{
  v79 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  providerCopy = provider;
  completionCopy = completion;
  [MEMORY[0x1E696AF00] isMainThread];
  v13 = objc_opt_new();
  v14 = MEMORY[0x1E695DFD8];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke;
  v74[3] = &unk_1E7C37CD8;
  v15 = dsCopy;
  v75 = v15;
  v16 = iDsCopy;
  v76 = v16;
  v41 = [v14 fc_set:v74];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_2;
  v69[3] = &unk_1E7C3BF88;
  v69[4] = self;
  v46 = v13;
  v70 = v46;
  v42 = v16;
  v71 = v42;
  v43 = v15;
  v72 = v43;
  v39 = providerCopy;
  v73 = v39;
  v17 = [v41 fc_setByTransformingWithBlock:v69];
  v18 = [(FCSubscriptionController *)self subscriptionsWithType:3];
  v45 = [v18 fc_setByTransformingWithBlock:&__block_literal_global_438];

  v19 = [(FCSubscriptionController *)self subscriptionsWithType:4];
  v44 = [v19 fc_setByTransformingWithBlock:&__block_literal_global_441];

  v20 = [v45 fc_setByMinusingSet:v43];
  v21 = [v44 fc_setByMinusingSet:v42];
  v22 = [v20 setByAddingObjectsFromSet:v21];

  v23 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v78 = v17;
    _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEBUG, "Subscribing to new tag IDs : %@", buf, 0xCu);
    v23 = FCProgressivePersonalizationLog;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v78 = v22;
    _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEBUG, "Unsubscribing from existing tag IDs : %@", buf, 0xCu);
  }

  v24 = dispatch_group_create();
  if ([v22 count])
  {
    dispatch_group_enter(v24);
    if (self)
    {
      subscriptionList = self->_subscriptionList;
    }

    else
    {
      subscriptionList = 0;
    }

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_442;
    v66[3] = &unk_1E7C3BFB0;
    v67 = v45;
    v68 = v44;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_446;
    v63[3] = &unk_1E7C3BFD8;
    v64 = v46;
    v65 = v24;
    [(FCSubscriptionList *)subscriptionList removeSubscriptionsForTagIDs:v22 typeProvider:v66 completion:v63];
  }

  if ([v17 count])
  {
    dispatch_group_enter(v24);
    objc_initWeak(buf, self);
    if (self)
    {
      v26 = self->_subscriptionList;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_2_447;
    v60[3] = &unk_1E7C3BFB0;
    v61 = v43;
    v62 = v42;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_448;
    v56[3] = &unk_1E7C3C028;
    objc_copyWeak(&v59, buf);
    v57 = v46;
    v58 = v24;
    [(FCSubscriptionList *)v27 addSubscriptionsForTagIDs:v17 typeProvider:v60 originProvider:v39 completion:v56];

    objc_destroyWeak(&v59);
    objc_destroyWeak(buf);
  }

  if (FCDispatchGroupIsEmpty(v24))
  {
    v51[1] = MEMORY[0x1E69E9820];
    v51[2] = 3221225472;
    v51[3] = __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_3;
    v51[4] = &unk_1E7C3A0B0;
    v28 = &v55;
    v29 = completionCopy;
    v55 = v29;
    v30 = &v52;
    v31 = v46;
    v32 = &v53;
    v52 = v31;
    v53 = v17;
    v33 = &v54;
    v54 = v22;
    v34 = v22;
    v35 = v17;
    if (v29)
    {
      v29[2](v29, v31, v35, v34);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_4;
    block[3] = &unk_1E7C3A0B0;
    v28 = v51;
    v51[0] = completionCopy;
    v30 = &v48;
    v32 = &v49;
    v48 = v46;
    v49 = v17;
    v33 = &v50;
    v50 = v22;
    v36 = v22;
    v37 = v17;
    dispatch_group_notify(v24, MEMORY[0x1E69E96A0], block);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 fc_safelyUnionSet:v3];
  [v4 fc_safelyUnionSet:*(a1 + 40)];
}

id __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) subscriptionForTagID:v3];
  v5 = [*(a1 + 32) mutedTagIDs];
  v6 = [v5 containsObject:v3];

  if (v6)
  {
    [*(a1 + 40) addObject:v3];
LABEL_10:
    v8 = 0;
    goto LABEL_21;
  }

  if (v4)
  {
    if ([v4 subscriptionType] != 3 || objc_msgSend(v4, "subscriptionType") == 4 && (objc_msgSend(*(a1 + 48), "containsObject:", v3) & 1) != 0)
    {
      goto LABEL_10;
    }

    if ([v4 subscriptionType] == 3 && objc_msgSend(*(a1 + 56), "containsObject:", v3))
    {
      v7 = [v4 subscriptionOrigin];
      if (v7 == (*(*(a1 + 64) + 16))())
      {
        goto LABEL_10;
      }

LABEL_16:
      v11 = *(a1 + 32);
      v12 = v3;
      v13 = 3;
      goto LABEL_17;
    }
  }

  if ([*(a1 + 56) containsObject:v3])
  {
    v9 = [*(a1 + 32) groupableTagIDs];
    v10 = [v9 containsObject:v3];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = v3;
      v13 = 4;
LABEL_17:
      [v11 removeSubscriptionForTagID:v12 type:v13];
    }
  }

  else
  {
    if (![*(a1 + 48) containsObject:v3])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown tag ID %@, not present in autoFavoriteTagIDs or groupableFavoriteTagIDs", v3];
        *buf = 136315906;
        v20 = "[FCSubscriptionController addAutoFavoriteSubscriptionForTagIDs:groupableSubscriptionForTagIDs:originProvider:completion:]_block_invoke_2";
        v21 = 2080;
        v22 = "FCSubscriptionController.m";
        v23 = 1024;
        v24 = 1065;
        v25 = 2114;
        v26 = v18;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      goto LABEL_20;
    }

    v14 = [*(a1 + 32) autoFavoriteTagIDs];
    v15 = [v14 containsObject:v3];

    if (v15)
    {
      goto LABEL_16;
    }
  }

LABEL_20:
  v8 = v3;
LABEL_21:

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

uint64_t __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_442(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
LABEL_6:
    v4 = 3;
    goto LABEL_7;
  }

  if (([*(a1 + 40) containsObject:v3] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Didn't find tag ID in either existing auto favorites or groupable favorites"];
      v8 = 136315906;
      v9 = "[FCSubscriptionController addAutoFavoriteSubscriptionForTagIDs:groupableSubscriptionForTagIDs:originProvider:completion:]_block_invoke";
      v10 = 2080;
      v11 = "FCSubscriptionController.m";
      v12 = 1024;
      v13 = 1101;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);
    }

    goto LABEL_6;
  }

  v4 = 4;
LABEL_7:

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_446(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 allObjects];
  [v3 addObjectsFromArray:v4];

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

uint64_t __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_2_447(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
LABEL_6:
    v4 = 3;
    goto LABEL_7;
  }

  if (([*(a1 + 40) containsObject:v3] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown tag ID %@, not present in autoFavoriteTagIDs or groupableFavoriteTagIDs", v3];
      *buf = 136315906;
      v9 = "[FCSubscriptionController addAutoFavoriteSubscriptionForTagIDs:groupableSubscriptionForTagIDs:originProvider:completion:]_block_invoke_2";
      v10 = 2080;
      v11 = "FCSubscriptionController.m";
      v12 = 1024;
      v13 = 1127;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_6;
  }

  v4 = 4;
LABEL_7:

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_448(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_2_449;
  v6[3] = &unk_1E7C3C000;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  FCPerformIfNonNil(WeakRetained, v6);

  dispatch_group_leave(*(a1 + 40));
}

void __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_2_449(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) allObjects];
  [v1 addObjectsFromArray:v2];
}

uint64_t __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

uint64_t __122__FCSubscriptionController_addAutoFavoriteSubscriptionForTagIDs_groupableSubscriptionForTagIDs_originProvider_completion___block_invoke_4(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5], a1[6]);
  }

  return result;
}

- (void)subscriptionList:(id)list didAddSubscriptions:(id)subscriptions changeSubscriptions:(id)changeSubscriptions moveSubscriptions:(id)moveSubscriptions removeSubscriptions:(id)removeSubscriptions
{
  moveSubscriptionsCopy = moveSubscriptions;
  removeSubscriptionsCopy = removeSubscriptions;
  changeSubscriptionsCopy = changeSubscriptions;
  v14 = [subscriptions fc_dictionaryOfSortedSetsWithKeyBlock:&__block_literal_global_455];
  v15 = [changeSubscriptionsCopy fc_dictionaryOfSortedSetsWithKeyBlock:&__block_literal_global_458];

  v16 = [removeSubscriptionsCopy fc_dictionaryOfSortedSetsWithKeyBlock:&__block_literal_global_460];

  v17 = moveSubscriptionsCopy;
  v18 = [v14 objectForKeyedSubscript:&unk_1F2E70170];
  v19 = [v15 objectForKeyedSubscript:&unk_1F2E70170];
  v20 = [v16 objectForKeyedSubscript:&unk_1F2E70170];
  v21 = v18;
  v22 = v19;
  v44 = v17;
  v23 = v20;
  v24 = v23;
  if (self)
  {
    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__25;
    v80 = __Block_byref_object_dispose__25;
    v81 = 0;
    if ([v23 count])
    {
      allObjects = [v24 allObjects];
      v26 = [allObjects fc_arrayByTransformingWithBlock:&__block_literal_global_487];

      v27 = self->_subscribedTagsByTagID;
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __127__FCSubscriptionController__handleTagSubscriptionsAdded_tagSubscriptionsChanged_tagSubscriptionsMoved_tagSubscriptionsRemoved___block_invoke_2;
      v73[3] = &unk_1E7C3C0E0;
      v75 = &v76;
      v28 = v26;
      v74 = v28;
      [(FCThreadSafeMutableDictionary *)v27 readWriteWithAccessor:v73];
    }

    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = __Block_byref_object_copy__25;
    v71 = __Block_byref_object_dispose__25;
    v72 = 0;
    if ([v22 count])
    {
      allObjects2 = [v22 allObjects];
      v30 = [allObjects2 fc_arrayByTransformingWithBlock:&__block_literal_global_489];

      v31 = self->_subscribedTagsByTagID;
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __127__FCSubscriptionController__handleTagSubscriptionsAdded_tagSubscriptionsChanged_tagSubscriptionsMoved_tagSubscriptionsRemoved___block_invoke_4;
      v64[3] = &unk_1E7C3C0E0;
      v66 = &v67;
      v32 = v30;
      v65 = v32;
      [(FCThreadSafeMutableDictionary *)v31 readWriteWithAccessor:v64];
    }

    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__25;
    v62 = __Block_byref_object_dispose__25;
    v63 = 0;
    if ([v21 count])
    {
      allObjects3 = [v21 allObjects];
      v34 = [allObjects3 fc_arrayByTransformingWithBlock:&__block_literal_global_491];

      v35 = self->_tagController;
      v36 = [(FCTagController *)v35 fastCachedTagsForIDs:v34];

      v37 = self->_subscribedTagsByTagID;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __127__FCSubscriptionController__handleTagSubscriptionsAdded_tagSubscriptionsChanged_tagSubscriptionsMoved_tagSubscriptionsRemoved___block_invoke_6;
      v54[3] = &unk_1E7C3C130;
      v57 = &v58;
      v38 = v34;
      v55 = v38;
      v39 = v36;
      v56 = v39;
      [(FCThreadSafeMutableDictionary *)v37 readWriteWithAccessor:v54];
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__25;
    v52 = __Block_byref_object_dispose__25;
    v53 = 0;
    if ([v44 count])
    {
      allObjects4 = [v44 allObjects];
      v41 = [allObjects4 fc_arrayByTransformingWithBlock:&__block_literal_global_494];

      v42 = self->_subscribedTagsByTagID;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __127__FCSubscriptionController__handleTagSubscriptionsAdded_tagSubscriptionsChanged_tagSubscriptionsMoved_tagSubscriptionsRemoved___block_invoke_9;
      v45[3] = &unk_1E7C3C158;
      v47 = &v48;
      v43 = v41;
      v46 = v43;
      [(FCThreadSafeMutableDictionary *)v42 readWithAccessor:v45];
    }

    if ([v59[5] count] || objc_msgSend(v68[5], "count") || objc_msgSend(v49[5], "count") || objc_msgSend(v77[5], "count"))
    {
      [(FCSubscriptionController *)self _notifyOfTagsAdded:v68[5] tagsChanged:v49[5] tagsMoved:v77[5] tagsRemoved:0 subscriptionType:?];
    }

    [(FCSubscriptionController *)self _fetchMissingTagsWithCompletion:?];
    _Block_object_dispose(&v48, 8);

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v67, 8);

    _Block_object_dispose(&v76, 8);
  }

  [(FCSubscriptionController *)self _handleNonTagSubscriptionType:v14 addedSubscriptionsByType:v16 removedSubscriptionsByType:v15 changedSubscriptionsByType:?];
  [(FCSubscriptionController *)self _handleNonTagSubscriptionType:v14 addedSubscriptionsByType:v16 removedSubscriptionsByType:v15 changedSubscriptionsByType:?];
  [(FCSubscriptionController *)self _handleNonTagSubscriptionType:v14 addedSubscriptionsByType:v16 removedSubscriptionsByType:v15 changedSubscriptionsByType:?];
  [(FCSubscriptionController *)self _handleNonTagSubscriptionType:v14 addedSubscriptionsByType:v16 removedSubscriptionsByType:v15 changedSubscriptionsByType:?];
}

uint64_t __123__FCSubscriptionController_subscriptionList_didAddSubscriptions_changeSubscriptions_moveSubscriptions_removeSubscriptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 subscriptionType];

  return [v2 numberWithUnsignedInteger:v3];
}

uint64_t __123__FCSubscriptionController_subscriptionList_didAddSubscriptions_changeSubscriptions_moveSubscriptions_removeSubscriptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 subscriptionType];

  return [v2 numberWithUnsignedInteger:v3];
}

uint64_t __123__FCSubscriptionController_subscriptionList_didAddSubscriptions_changeSubscriptions_moveSubscriptions_removeSubscriptions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 subscriptionType];

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)_handleNonTagSubscriptionType:(void *)type addedSubscriptionsByType:(void *)byType removedSubscriptionsByType:(void *)subscriptionsByType changedSubscriptionsByType:
{
  v61 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  byTypeCopy = byType;
  subscriptionsByTypeCopy = subscriptionsByType;
  if (self)
  {
    if (a2 == 3)
    {
      v11 = [byTypeCopy objectForKeyedSubscript:&unk_1F2E70188];
      if ([v11 count] == 1)
      {
        v12 = [typeCopy objectForKeyedSubscript:&unk_1F2E70170];
        v13 = [v12 count];

        if (v13 == 1)
        {
          v14 = typeCopy;
          objc_opt_class();
          allValues = [byTypeCopy allValues];
          firstObject = [allValues firstObject];
          anyObject = [firstObject anyObject];
          if (anyObject)
          {
            if (objc_opt_isKindOfClass())
            {
              v18 = anyObject;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;

          if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "removedSubscription"];
            *buf = 136315906;
            v54 = "[FCSubscriptionController _handleNonTagSubscriptionType:addedSubscriptionsByType:removedSubscriptionsByType:changedSubscriptionsByType:]";
            v55 = 2080;
            v56 = "FCSubscriptionController.m";
            v57 = 1024;
            v58 = 1756;
            v59 = 2114;
            v60 = v41;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          objc_opt_class();
          allValues2 = [typeCopy allValues];
          firstObject2 = [allValues2 firstObject];
          anyObject2 = [firstObject2 anyObject];
          if (anyObject2)
          {
            if (objc_opt_isKindOfClass())
            {
              v23 = anyObject2;
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;

          if (!v24 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "addedSubscription"];
            *buf = 136315906;
            v54 = "[FCSubscriptionController _handleNonTagSubscriptionType:addedSubscriptionsByType:removedSubscriptionsByType:changedSubscriptionsByType:]";
            v55 = 2080;
            v56 = "FCSubscriptionController.m";
            v57 = 1024;
            v58 = 1758;
            v59 = 2114;
            v60 = v42;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          typeCopy = v14;
          a2 = 3;
        }
      }

      else
      {
      }
    }

    v25 = [MEMORY[0x1E695DFA8] set];
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v27 = [byTypeCopy objectForKeyedSubscript:v26];

    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v45 = [typeCopy objectForKeyedSubscript:v28];

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v30 = [subscriptionsByTypeCopy objectForKeyedSubscript:v29];

    if ([v27 count])
    {
      v31 = [v27 fc_setByTransformingWithBlock:&__block_literal_global_505];
      allObjects = [v31 allObjects];
      [v25 addObjectsFromArray:allObjects];
    }

    else
    {
      v31 = 0;
    }

    v44 = v27;
    if ([v45 count])
    {
      v33 = [v45 fc_setByTransformingWithBlock:&__block_literal_global_507];
      allObjects2 = [v33 allObjects];
      [v25 addObjectsFromArray:allObjects2];
    }

    else
    {
      v33 = 0;
    }

    if ([v30 count])
    {
      v35 = [v30 fc_setByTransformingWithBlock:&__block_literal_global_509];
      allObjects3 = [v35 allObjects];
      [v25 addObjectsFromArray:allObjects3];
    }

    else
    {
      v35 = 0;
    }

    if ([v25 count])
    {
      v43 = subscriptionsByTypeCopy;
      v37 = typeCopy;
      v38 = *(self + 24);
      allObjects4 = [v25 allObjects];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __137__FCSubscriptionController__handleNonTagSubscriptionType_addedSubscriptionsByType_removedSubscriptionsByType_changedSubscriptionsByType___block_invoke_4;
      v47[3] = &unk_1E7C3C1A8;
      v48 = v33;
      v49 = v35;
      v50 = v31;
      selfCopy = self;
      v52 = a2;
      [v38 fetchTagsForTagIDs:allObjects4 maximumCachedAge:17 qualityOfService:v47 completionHandler:1.79769313e308];

      typeCopy = v37;
      subscriptionsByTypeCopy = v43;
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)subscriptionListDidResetToEmpty:(id)empty
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (self)
  {
    self = self->_observers;
  }

  v4 = [(FCSubscriptionController *)self copy:empty];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 subscriptionControllerDidResetToEmpty:selfCopy];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)subscriptionListWillStartSyncingRemoteChanges:(id)changes
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (self)
  {
    self = self->_observers;
  }

  v4 = [(FCSubscriptionController *)self copy:changes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 subscriptionControllerWillStartSyncingRemoteChanges:selfCopy];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)subscriptionListDidStopSyncingRemoteChanges:(id)changes
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (self)
  {
    self = self->_observers;
  }

  v4 = [(FCSubscriptionController *)self copy:changes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 subscriptionControllerDidStopSyncingRemoteChanges:selfCopy];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)privateDataControllerDidPerformFirstSync:(id)sync
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (self)
  {
    self = self->_observers;
  }

  v4 = [(FCSubscriptionController *)self copy:sync];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 subscriptionControllerDidPerformFirstSync:selfCopy];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)activityObservingApplicationDidEnterBackground
{
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults objectForKey:@"FCSubscriptionControllerNotificationChannelsLastUpdateDateKey"];
    date = [MEMORY[0x1E695DF00] date];
    if (v4)
    {
      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      notificationEnabledChannelsRefreshFrequency = [standardUserDefaults2 integerForKey:@"notification_channels_refresh_frequency"];

      if (notificationEnabledChannelsRefreshFrequency == -1)
      {
        configuration = [(FCCoreConfigurationManager *)self->_configurationManager configuration];
        notificationEnabledChannelsRefreshFrequency = [configuration notificationEnabledChannelsRefreshFrequency];
      }

      v9 = [v4 dateByAddingTimeInterval:notificationEnabledChannelsRefreshFrequency];
      v10 = [date fc_isLaterThan:v9];

      if (v10)
      {
        objc_initWeak(&v14, self);
        v11 = self->_subscriptionList;
        block = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __61__FCSubscriptionController__refreshNotificationRegistrations__block_invoke;
        v18 = &unk_1E7C3C090;
        objc_copyWeak(&selfCopy, &v14);
        [(FCPrivateDataController *)v11 forceSyncWithCompletion:&block];

        v12 = self->_notificationController;
        [(FCNotificationController *)v12 refreshNotificationsFromAppleNews];

        [standardUserDefaults setObject:date forKey:@"FCSubscriptionControllerNotificationChannelsLastUpdateDateKey"];
        objc_destroyWeak(&selfCopy);
        objc_destroyWeak(&v14);
      }
    }

    else
    {
      [standardUserDefaults setObject:date forKey:@"FCSubscriptionControllerNotificationChannelsLastUpdateDateKey"];
    }

    if (NFInternalBuild())
    {
      v13 = FCPersistenceQueue();
      block = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __54__FCSubscriptionController__saveReadableSubscriptions__block_invoke;
      v18 = &unk_1E7C36EA0;
      selfCopy = self;
      dispatch_async(v13, &block);
    }
  }

  else
  {
    NFInternalBuild();
  }
}

- (void)_purchaseListDidAddTagIDs:(id)ds
{
  v4 = MEMORY[0x1E696AF00];
  dsCopy = ds;
  [v4 isMainThread];
  userInfo = [dsCopy userInfo];

  v7 = [userInfo objectForKey:FCPurchaseAddedTagIDsKey];

  [(FCSubscriptionController *)&self->super.isa _updateNotificationsForPurchaseTagIDs:v7 isPaid:1];
}

- (void)_updateNotificationsForPurchaseTagIDs:(uint64_t)ds isPaid:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self && v5)
  {
    subscriptions = [self subscriptions];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [subscriptions countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = v8;
    v10 = *v18;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(subscriptions);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        tagID = [v12 tagID];
        if ([v6 containsObject:tagID] && !objc_msgSend(v12, "subscriptionType"))
        {
          notificationsEnabled = [v12 notificationsEnabled];

          if (!notificationsEnabled)
          {
            continue;
          }

          v15 = self[7];
          tagID = [v12 tagID];
          [v15 registerNotificationsForChannelID:tagID isPaid:ds];
        }
      }

      v9 = [subscriptions countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v9)
      {
LABEL_15:

        break;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_purchaseListDidRemoveTagIDs:(id)ds
{
  v4 = MEMORY[0x1E696AF00];
  dsCopy = ds;
  [v4 isMainThread];
  userInfo = [dsCopy userInfo];

  v7 = [userInfo objectForKey:FCPurchaseRemovedTagIDsKey];

  [(FCSubscriptionController *)&self->super.isa _updateNotificationsForPurchaseTagIDs:v7 isPaid:0];
}

void __61__FCSubscriptionController__refreshNotificationRegistrations__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__FCSubscriptionController__refreshNotificationRegistrations__block_invoke_2;
  v4[3] = &__block_descriptor_40_e34_v16__0__FCSubscriptionController_8l;
  v4[4] = a2;
  FCPerformIfNonNil(WeakRetained, v4);
}

void __61__FCSubscriptionController__refreshNotificationRegistrations__block_invoke_2(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != 2)
  {
    if (v3)
    {
      v5 = v3[8];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 purchasedTagIDs];
    v7 = [v6 copy];

    v8 = [v4 subscriptions];
    v9 = [MEMORY[0x1E695DFA8] set];
    v10 = [MEMORY[0x1E695DFA8] set];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v44;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v43 + 1) + 8 * i);
          if (![v16 subscriptionType] && objc_msgSend(v16, "notificationsEnabled"))
          {
            v17 = [v16 tagID];
            if ([v7 containsObject:v17])
            {
              v18 = v10;
            }

            else
            {
              v18 = v9;
            }

            [v18 addObject:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v13);
    }

    v19 = v9;
    v20 = v19;
    if (v4)
    {
      v21 = [v4[9] configuration];
      v22 = [v21 puzzlesConfig];
      v23 = [v22 puzzleHubTagID];

      if ([v23 length] && objc_msgSend(v4[11], "puzzleNotificationsEnabled"))
      {
        [v20 addObject:v23];
      }

      v24 = v4[7];
    }

    else
    {

      v24 = 0;
    }

    v25 = v24;
    v26 = [v20 allObjects];
    v27 = [v10 allObjects];
    [v25 refreshNotificationsForChannelIDs:v26 paidChannelIDs:v27];

    if (v4)
    {
      v28 = [v4[9] configuration];
      v29 = [v28 mySportsTagID];

      v30 = v4[11];
      v31 = [v30 sportsTopicNotificationsEnabledState] != 3 && objc_msgSend(v4[11], "sportsTopicNotificationsEnabledState") != 2;

      if ([v29 length] && !v31)
      {
        v41 = v29;
        v42 = v20;
        v32 = [MEMORY[0x1E695DF70] array];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v33 = [v4 cachedSubscribedTags];
        v34 = [v33 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v48;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v48 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v47 + 1) + 8 * j);
              if ([v38 isSports])
              {
                v39 = [v38 identifier];
                [v32 addObject:v39];
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v35);
        }

        if ([v4[11] sportsTopicNotificationsEnabledState] == 3)
        {
          v29 = v41;
          [v4[7] registerNotificationsForTopicIDs:v32 withTopicGroupingID:@"sports" fromChannelID:v41];
          v20 = v42;
        }

        else
        {
          v29 = v41;
          v20 = v42;
          if ([v4[11] sportsTopicNotificationsEnabledState] == 2)
          {
            [v4[7] unregisterNotificationsForTopicIDs:v32 withTopicGroupingID:@"sports" fromChannelID:v41];
          }
        }
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

uint64_t __60__FCSubscriptionController__fetchMissingTagsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __43__FCSubscriptionController__integrateTags___block_invoke(id *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = a1 + 6;
    v9 = a1 + 5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v3 objectForKeyedSubscript:v12];
        v14 = v13;
        v15 = v9;
        if (!v13 || (v16 = [v13 isEqualToTag:v11], v15 = v8, (v16 & 1) == 0))
        {
          [*v15 addObject:v11];
        }

        [v3 setObject:v11 forKeyedSubscript:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_notifyOfTagsAdded:(void *)added tagsChanged:(void *)changed tagsMoved:(void *)moved tagsRemoved:(uint64_t)removed subscriptionType:
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a2;
  addedCopy = added;
  changedCopy = changed;
  movedCopy = moved;
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [*(self + 48) copy];
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          if (objc_opt_respondsToSelector())
          {
            [v18 subscriptionController:self didAddTags:v21 changeTags:addedCopy moveTags:changedCopy removeTags:movedCopy subscriptionType:removed];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [FCPuzzleType isPuzzleTypeIdentifier:v5];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

void __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_4(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_5;
  v3[3] = &unk_1E7C3C0B8;
  v3[4] = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v2 = *(a1 + 40);
  v1 = v2;
  v4 = v2;
  FCPerformBlockOnMainThread(v3);
}

void __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_5(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(*(*(a1 + 56) + 8) + 40);
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  v4 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v70 = v3;
    _os_log_error_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_ERROR, "failed to fetch some tags for subscription IDs with error: %{public}@", buf, 0xCu);
  }

LABEL_6:
  v5 = *(a1 + 32);
  v53 = v3;
  if (v5)
  {
    v5 = v5[2];
  }

  v6 = v5;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_473;
  v65[3] = &unk_1E7C3BEA8;
  v66 = *(a1 + 64);
  v7 = [MEMORY[0x1E695DF20] fc_dictionary:v65];
  v8 = [v6 subscribedTagIDs];
  v9 = [v8 allObjects];
  v52 = v7;
  v10 = [v7 nf_objectsForKeysWithoutMarker:v9];

  v48 = [v10 fc_arrayOfObjectsPassingTest:&__block_literal_global_477];
  v11 = [v10 fc_arrayByRemovingObjectsPassingTest:&__block_literal_global_480];
  v12 = MEMORY[0x1E695DFD8];
  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = v13[10];
  }

  v14 = v13;
  v15 = [v14 possiblyUnfetchedAppConfiguration];
  v16 = [v15 deprecatedSportsTopicTagIds];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v19 = [v12 setWithArray:v18];

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_4_481;
  v63[3] = &unk_1E7C39E78;
  v49 = v19;
  v64 = v49;
  v51 = v10;
  v20 = [v10 fc_arrayOfObjectsPassingTest:v63];
  v50 = v11;
  [(FCSubscriptionController *)*(a1 + 32) _integrateTags:v11];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v20;
  v21 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v60;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v60 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v59 + 1) + 8 * i);
        v26 = [v25 replacementID];
        v27 = [v26 length];
        v28 = [v25 identifier];
        v29 = [v6 hasNotificationsEnabledForTagID:v28];

        v30 = [v25 identifier];
        [v6 removeSubscriptionForTagID:v30 type:0];

        if (v27)
        {
          [v6 addSubscriptionForTagID:v26 type:0];
          if (v29)
          {
            v31 = *(a1 + 32);
            v32 = [v25 identifier];
            [v31 setNotificationsEnabled:0 forTagID:v32 error:0];

            [*(a1 + 32) setNotificationsEnabled:1 forTagID:v26 error:0];
          }
        }

        else if (v29)
        {
          v33 = *(a1 + 32);
          v34 = [v25 identifier];
          [v33 setNotificationsEnabled:0 forTagID:v34 error:0];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v22);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = v48;
  v36 = [v35 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v56;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v55 + 1) + 8 * j);
        v41 = [v40 identifier];
        v42 = [v6 hasNotificationsEnabledForTagID:v41];

        v43 = [v40 identifier];
        [v6 removeSubscriptionForTagID:v43 type:0];

        if (v42)
        {
          v44 = *(a1 + 32);
          v45 = [v40 identifier];
          [v44 setNotificationsEnabled:0 forTagID:v45 error:0];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v37);
  }

  v46 = *(a1 + 40);
  if (v46)
  {
    (*(v46 + 16))(v46, v52);
  }

  v47 = *MEMORY[0x1E69E9840];
}

void __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_473(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  [v4 addEntriesFromDictionary:v3];
  [v4 addEntriesFromDictionary:*(*(*(a1 + 40) + 8) + 40)];
}

uint64_t __85__FCSubscriptionController__fetchTagsForIDs_cachePolicy_qualityOfService_completion___block_invoke_4_481(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isDeprecated])
  {
    v4 = 1;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v3 identifier];
    v4 = [v5 containsObject:v6];
  }

  return v4;
}

void __127__FCSubscriptionController__handleTagSubscriptionsAdded_tagSubscriptionsChanged_tagSubscriptionsMoved_tagSubscriptionsRemoved___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = *(a1 + 32);
  v9 = a2;
  v5 = [v9 nf_objectsForKeysWithoutMarker:v4];
  v6 = [v3 setWithArray:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [v9 removeObjectsForKeys:*(a1 + 32)];
}

void __127__FCSubscriptionController__handleTagSubscriptionsAdded_tagSubscriptionsChanged_tagSubscriptionsMoved_tagSubscriptionsRemoved___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFD8];
  v7 = [a2 nf_objectsForKeysWithoutMarker:*(a1 + 32)];
  v4 = [v3 setWithArray:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __127__FCSubscriptionController__handleTagSubscriptionsAdded_tagSubscriptionsChanged_tagSubscriptionsMoved_tagSubscriptionsRemoved___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __127__FCSubscriptionController__handleTagSubscriptionsAdded_tagSubscriptionsChanged_tagSubscriptionsMoved_tagSubscriptionsRemoved___block_invoke_7;
  v12 = &unk_1E7C3C108;
  v13 = v3;
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  v5 = v3;
  v6 = [v4 fc_setByTransformingWithBlock:&v9];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [v5 addEntriesFromDictionary:{*(a1 + 40), v9, v10, v11, v12}];
}

id __127__FCSubscriptionController__handleTagSubscriptionsAdded_tagSubscriptionsChanged_tagSubscriptionsMoved_tagSubscriptionsRemoved___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:v3];
  }

  return v5;
}

void __127__FCSubscriptionController__handleTagSubscriptionsAdded_tagSubscriptionsChanged_tagSubscriptionsMoved_tagSubscriptionsRemoved___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFD8];
  v7 = [a2 nf_objectsForKeysWithoutMarker:*(a1 + 32)];
  v4 = [v3 setWithArray:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __137__FCSubscriptionController__handleNonTagSubscriptionType_addedSubscriptionsByType_removedSubscriptionsByType_changedSubscriptionsByType___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __137__FCSubscriptionController__handleNonTagSubscriptionType_addedSubscriptionsByType_removedSubscriptionsByType_changedSubscriptionsByType___block_invoke_5;
  v13[3] = &unk_1E7C3C180;
  v14 = v6;
  v15 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = *(a1 + 56);
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v16 = v10;
  v17 = v9;
  v18 = *(a1 + 64);
  v11 = v5;
  v12 = v6;
  FCPerformBlockOnMainThread(v13);
}

void __137__FCSubscriptionController__handleNonTagSubscriptionType_addedSubscriptionsByType_removedSubscriptionsByType_changedSubscriptionsByType___block_invoke_5(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v20 = 138543362;
      v21 = v2;
      _os_log_error_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_ERROR, "failed to fetch some tags for muted subscription IDs with error: %{public}@", &v20, 0xCu);
    }
  }

  v4 = MEMORY[0x1E695DFD8];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) allObjects];
  v7 = [v5 nf_objectsForKeysWithoutMarker:v6];
  v8 = [v4 setWithArray:v7];

  v9 = MEMORY[0x1E695DFD8];
  v10 = *(a1 + 40);
  v11 = [*(a1 + 56) allObjects];
  v12 = [v10 nf_objectsForKeysWithoutMarker:v11];
  v13 = [v9 setWithArray:v12];

  v14 = MEMORY[0x1E695DFD8];
  v15 = *(a1 + 40);
  v16 = [*(a1 + 64) allObjects];
  v17 = [v15 nf_objectsForKeysWithoutMarker:v16];
  v18 = [v14 setWithArray:v17];

  if ([v8 count] || objc_msgSend(v13, "count") || objc_msgSend(v18, "count"))
  {
    [(FCSubscriptionController *)*(a1 + 72) _notifyOfTagsAdded:v8 tagsChanged:v13 tagsMoved:0 tagsRemoved:v18 subscriptionType:*(a1 + 80)];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __54__FCSubscriptionController__saveReadableSubscriptions__block_invoke(uint64_t a1)
{
  v42[7] = *MEMORY[0x1E69E9840];
  v41[0] = @"subscribed";
  v34 = [*(a1 + 32) subscribedTagIDs];
  v42[0] = v34;
  v41[1] = @"muted";
  v33 = [*(a1 + 32) mutedTagIDs];
  v42[1] = v33;
  v41[2] = @"autofavorited";
  v2 = [*(a1 + 32) autoFavoriteTagIDs];
  v42[2] = v2;
  v41[3] = @"ignored";
  v3 = [*(a1 + 32) ignoredTagIDs];
  v42[3] = v3;
  v41[4] = @"groupable";
  v4 = [*(a1 + 32) groupableTagIDs];
  v42[4] = v4;
  v41[5] = @"purchased";
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[8];
  }

  v6 = v5;
  v7 = [v6 purchasedTagIDs];
  v8 = [v7 allObjects];
  v42[5] = v8;
  v41[6] = @"lastUpdated";
  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E695DF00] date];
  [v10 timeIntervalSince1970];
  v12 = [v9 stringWithFormat:@"%f", v11];
  v42[6] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:7];

  v38 = 0;
  v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:1 error:&v38];
  v15 = v38;
  v16 = v15;
  if (v14)
  {
    v17 = MEMORY[0x1E695DFF8];
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 16);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v19 localStore];
    v21 = [v20 storeDirectory];
    v22 = [v17 fileURLWithPath:v21];
    v23 = [v22 URLByAppendingPathComponent:@"subscriptions"];
    v24 = [v23 URLByAppendingPathExtension:@"json"];

    if (v24)
    {
      v25 = [v24 path];
      v35 = v16;
      v26 = [v14 writeToFile:v25 options:1 error:&v35];
      v27 = v35;

      v28 = FCPersonalizationLog;
      if (v26)
      {
        if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
        {
          v29 = v28;
          v30 = [v24 path];
          *buf = 138412290;
          v40 = v30;
          _os_log_debug_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_DEBUG, "Successfully saved readable subscriptions at %@.", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v27;
        _os_log_error_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_ERROR, "Error when saving readable subscriptions: %@", buf, 0xCu);
      }

      v16 = v27;
    }

    else
    {
      v31 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_ERROR, "Failed to construct file URL for saving readable subscriptions", buf, 2u);
      }

      v24 = 0;
    }
  }

  else
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __54__FCSubscriptionController__saveReadableSubscriptions__block_invoke_2;
    v36[3] = &unk_1E7C36EA0;
    v16 = v15;
    v37 = v16;
    __54__FCSubscriptionController__saveReadableSubscriptions__block_invoke_2(v36);
    v24 = v37;
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __54__FCSubscriptionController__saveReadableSubscriptions__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error when saving readable subscriptions: %@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end