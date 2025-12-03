@interface IAMMessageCoordinator
+ (id)_createMessageFromMessageEntry:(id)entry replacingResourcePathsWithCachedResourceLocations:(BOOL)locations;
+ (void)initialize;
- (IAMApplicationContextProvider)applicationContext;
- (IAMMessageCoordinator)init;
- (IAMMessageMetricsDelegate)metricsDelegate;
- (id)_dequeuePendingTriggerContexts;
- (id)_filterActiveTargetIdentifiers:(id)identifiers;
- (id)_messageBundleIdentifiers;
- (id)_metadataEntryForMessageIdentifier:(id)identifier;
- (id)beginObservingTriggerEvent:(id)event withHandler:(id)handler;
- (void)_calculateMessagesProximityAndDownloadResourcesIfNeeded:(id)needed;
- (void)_evaluateMessagesForAllActiveTargets;
- (void)_fetchMessagesAndMetadataFromStorageCoordinator:(id)coordinator;
- (void)_handleMessageReachedMaximumDisplayCount:(id)count;
- (void)_handleUpdatedMessageEntries:(id)entries andMetadata:(id)metadata;
- (void)_incrementNumberOfDisplaysForMessageEntry:(id)entry;
- (void)_notifyMessageTargets:(id)targets withTargetIdentifier:(id)identifier didUpdatePriorityMessageFromEntry:(id)entry observedEventName:(id)name;
- (void)_reevaluateMessageEntries:(id)entries forTargetIdentifier:(id)identifier shouldNotifyTargetsIfPriorityMessageNonNil:(BOOL)nil withObservedEventName:(id)name;
- (void)_reevaluateTargetsWithIdentifiers:(id)identifiers forTriggerContext:(id)context shouldNotifyTargetsIfPriorityMessageNonNil:(BOOL)nil;
- (void)_removeUserNotificationRemovalForMessageWithIdentifier:(id)identifier;
- (void)_reportHoldoutMessageWouldAppear:(id)appear;
- (void)_reportMessageAction:(id)action wasPerformedInMessageEntry:(id)entry fromTargetWithIdentifier:(id)identifier;
- (void)_setMessageGroups:(id)groups;
- (void)_startStorageCoordinatorWithMessageEntryProvider:(id)provider messageMetadataStorage:(id)storage propertyStorage:(id)propertyStorage;
- (void)_updateLastDisplayTime:(id)time forMessageEntry:(id)entry;
- (void)_updateMetadata:(id)metadata forMessageEntry:(id)entry completion:(id)completion;
- (void)_updateMetadataOfMessageEntriesByTrigger:(id)trigger forReceivedEvent:(id)event;
- (void)_updatePriorityMessageEntry:(id)entry forTargetIdentifier:(id)identifier shouldNotifyTargetsIfNonNil:(BOOL)nil observedEventName:(id)name;
- (void)dealloc;
- (void)endObservingTriggerEvent:(id)event forToken:(id)token;
- (void)impressionManager:(id)manager impressionDidEndForMessageEntry:(id)entry;
- (void)receiveEvent:(id)event;
- (void)receiveTriggerEventContext:(id)context;
- (void)registerMessageTarget:(id)target;
- (void)reportApplicationContextPropertiesDidChange:(id)change;
- (void)reportChangedContextPropertiesContext:(id)context;
- (void)reportMessageDidAppearWithIdentifier:(id)identifier;
- (void)reportMessageDidAppearWithIdentifier:(id)identifier fromTargetWithIdentifier:(id)withIdentifier;
- (void)reportMessageDidDisappearWithIdentifier:(id)identifier;
- (void)reportMessageDidDisappearWithIdentifier:(id)identifier fromTargetWithIdentifier:(id)withIdentifier;
- (void)reportMessageWithIdentifier:(id)identifier actionWasPerformedWithIdentifier:(id)withIdentifier fromTargetWithIdentifier:(id)targetWithIdentifier;
- (void)reportMetricsEvent:(id)event;
- (void)startWithApplicationContext:(id)context messageGroups:(id)groups messageEntryProvider:(id)provider messageMetadataStorage:(id)storage propertyStorage:(id)propertyStorage;
- (void)storageCoordinatorMessageEntriesChanged:(id)changed;
- (void)triggerPresentationForMessageWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)unregisterMessageTarget:(id)target;
@end

@implementation IAMMessageCoordinator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _allCoordinators = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (IAMMessageCoordinator)init
{
  v30.receiver = self;
  v30.super_class = IAMMessageCoordinator;
  v2 = [(IAMMessageCoordinator *)&v30 init];
  if (v2)
  {
    [_allCoordinators addObject:v2];
    v3 = objc_opt_new();
    messageTargetsByTargetIdentifier = v2->_messageTargetsByTargetIdentifier;
    v2->_messageTargetsByTargetIdentifier = v3;

    v5 = objc_opt_new();
    messageTargetsRequiringNilPriorityMessageNotificationAfterRegistrationByTargetIdentifier = v2->_messageTargetsRequiringNilPriorityMessageNotificationAfterRegistrationByTargetIdentifier;
    v2->_messageTargetsRequiringNilPriorityMessageNotificationAfterRegistrationByTargetIdentifier = v5;

    v7 = objc_opt_new();
    priorityMessageEntryByTargetIdentifier = v2->_priorityMessageEntryByTargetIdentifier;
    v2->_priorityMessageEntryByTargetIdentifier = v7;

    v9 = objc_alloc_init(IAMImpressionManager);
    impressionManager = v2->_impressionManager;
    v2->_impressionManager = v9;

    [(IAMImpressionManager *)v2->_impressionManager setDelegate:v2];
    v11 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v14 = [v11 stringWithFormat:@"ModalTarget-%@", uUIDString];
    modalTargetIdentifier = v2->_modalTargetIdentifier;
    v2->_modalTargetIdentifier = v14;

    v16 = [[IAMModalTarget alloc] initWithMessageCoordinator:v2 targetIdentifier:v2->_modalTargetIdentifier];
    modalTarget = v2->_modalTarget;
    v2->_modalTarget = v16;

    v18 = [[IAMMessageEntryManager alloc] initWithModalTargetIdentifier:v2->_modalTargetIdentifier];
    messageEntryManager = v2->_messageEntryManager;
    v2->_messageEntryManager = v18;

    messageGroupsByGroupIdentifier = v2->_messageGroupsByGroupIdentifier;
    v2->_messageGroupsByGroupIdentifier = MEMORY[0x277CBEC10];

    v21 = objc_opt_new();
    pendingTriggerContexts = v2->_pendingTriggerContexts;
    v2->_pendingTriggerContexts = v21;

    v2->_isReadyToEvaluateMessages = 0;
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_USER_INITIATED, 0);
    v25 = dispatch_queue_create("com.apple.InAppMessages.IAMMessageCoordinator.accessQueue", v24);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v25;

    v27 = objc_opt_new();
    completionHandlersForObservedEvents = v2->_completionHandlersForObservedEvents;
    v2->_completionHandlersForObservedEvents = v27;

    [(IAMMessageCoordinator *)v2 registerMessageTarget:v2->_modalTarget];
  }

  return v2;
}

- (id)_messageBundleIdentifiers
{
  v3 = objc_opt_new();
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [v3 addObject:bundleIdentifier];

  allKeys = [(NSDictionary *)self->_messageGroupsByGroupIdentifier allKeys];
  [v3 addObjectsFromArray:allKeys];

  v7 = [v3 copy];

  return v7;
}

- (void)_evaluateMessagesForAllActiveTargets
{
  v17 = *MEMORY[0x277D85DE8];
  _dequeuePendingTriggerContexts = [(IAMMessageCoordinator *)self _dequeuePendingTriggerContexts];
  allKeys = [(NSMutableDictionary *)self->_messageTargetsByTargetIdentifier allKeys];
  [(IAMMessageCoordinator *)self _reevaluateTargetsWithIdentifiers:allKeys forTriggerContext:0 shouldNotifyTargetsIfPriorityMessageNonNil:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = _dequeuePendingTriggerContexts;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(IAMMessageCoordinator *)self receiveTriggerEventContext:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(IAMMessageCoordinator *)self reportChangedContextPropertiesContext:v10, v12];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_dequeuePendingTriggerContexts
{
  v3 = [(NSMutableArray *)self->_pendingTriggerContexts copy];
  v4 = objc_opt_new();
  pendingTriggerContexts = self->_pendingTriggerContexts;
  self->_pendingTriggerContexts = v4;

  return v3;
}

- (void)dealloc
{
  [_allCoordinators removeObject:self];
  [(IAMMessageCoordinator *)self unregisterMessageTarget:self->_modalTarget];
  v3.receiver = self;
  v3.super_class = IAMMessageCoordinator;
  [(IAMMessageCoordinator *)&v3 dealloc];
}

- (void)startWithApplicationContext:(id)context messageGroups:(id)groups messageEntryProvider:(id)provider messageMetadataStorage:(id)storage propertyStorage:(id)propertyStorage
{
  groupsCopy = groups;
  v13 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254AF4000, v13, OS_LOG_TYPE_DEFAULT, "Coordinator started", buf, 2u);
  }

  accessQueue = self->_accessQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __127__IAMMessageCoordinator_startWithApplicationContext_messageGroups_messageEntryProvider_messageMetadataStorage_propertyStorage___block_invoke;
  v16[3] = &unk_2797A7098;
  v16[4] = self;
  v17 = groupsCopy;
  contextCopy = context;
  providerCopy = provider;
  storageCopy = storage;
  propertyStorageCopy = propertyStorage;
  v15 = groupsCopy;
  dispatch_async(accessQueue, v16);
}

uint64_t __127__IAMMessageCoordinator_startWithApplicationContext_messageGroups_messageEntryProvider_messageMetadataStorage_propertyStorage___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 16), *(a1 + 48));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [v2 _setMessageGroups:v3];

  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);

  return [v4 _startStorageCoordinatorWithMessageEntryProvider:v5 messageMetadataStorage:v6 propertyStorage:v7];
}

- (void)registerMessageTarget:(id)target
{
  targetCopy = target;
  targetIdentifier = [targetCopy targetIdentifier];
  if (objc_opt_respondsToSelector())
  {
    shouldBeNotifiedOfNilPriorityMessageAfterRegistration = [targetCopy shouldBeNotifiedOfNilPriorityMessageAfterRegistration];
  }

  else
  {
    shouldBeNotifiedOfNilPriorityMessageAfterRegistration = 0;
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__IAMMessageCoordinator_registerMessageTarget___block_invoke;
  v10[3] = &unk_2797A70C0;
  v10[4] = self;
  v11 = targetIdentifier;
  v12 = targetCopy;
  v13 = shouldBeNotifiedOfNilPriorityMessageAfterRegistration;
  v8 = targetCopy;
  v9 = targetIdentifier;
  dispatch_async(accessQueue, v10);
}

void __47__IAMMessageCoordinator_registerMessageTarget___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [*(*(a1 + 32) + 24) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  }

  if (([v2 containsObject:*(a1 + 48)] & 1) == 0)
  {
    [v2 addObject:*(a1 + 48)];
  }

  if (*(a1 + 56) == 1)
  {
    v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
    if (!v3)
    {
      v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      [*(*(a1 + 32) + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
    }

    if (([v3 containsObject:*(a1 + 48)] & 1) == 0)
    {
      [v3 addObject:*(a1 + 48)];
    }
  }

  v4 = *(a1 + 32);
  if (v4[104] == 1)
  {
    v7[0] = *(a1 + 40);
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v4 _reevaluateTargetsWithIdentifiers:v5 forTriggerContext:0 shouldNotifyTargetsIfPriorityMessageNonNil:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)unregisterMessageTarget:(id)target
{
  targetCopy = target;
  targetIdentifier = [targetCopy targetIdentifier];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__IAMMessageCoordinator_unregisterMessageTarget___block_invoke;
  block[3] = &unk_2797A70E8;
  block[4] = self;
  v10 = targetIdentifier;
  v11 = targetCopy;
  v7 = targetCopy;
  v8 = targetIdentifier;
  dispatch_async(accessQueue, block);
}

void __49__IAMMessageCoordinator_unregisterMessageTarget___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v5 = v2;
    if ([v2 containsObject:a1[6]])
    {
      [v5 removeObject:a1[6]];
    }

    if (![v5 count])
    {
      [*(a1[4] + 24) setObject:0 forKeyedSubscript:a1[5]];
    }

    v3 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
    v4 = v3;
    if (v3)
    {
      if ([v3 containsObject:a1[6]])
      {
        [v4 removeObject:a1[6]];
      }

      if (![v4 count])
      {
        [*(a1[4] + 32) setObject:0 forKeyedSubscript:a1[5]];
      }
    }

    v2 = v5;
  }
}

- (void)reportMessageDidAppearWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__IAMMessageCoordinator_reportMessageDidAppearWithIdentifier___block_invoke;
  block[3] = &unk_2797A70E8;
  block[4] = self;
  v10 = identifierCopy;
  v11 = v5;
  v7 = v5;
  v8 = identifierCopy;
  dispatch_async(accessQueue, block);
}

void __62__IAMMessageCoordinator_reportMessageDidAppearWithIdentifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 96) priorityMessageEntryForIdentifier:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _updateLastDisplayTime:*(a1 + 48) forMessageEntry:v2];
  }

  else
  {
    v3 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_254AF4000, v3, OS_LOG_TYPE_ERROR, "No message entry with identifier = %{public}@ couldn't report message appearance.", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)reportMessageDidAppearWithIdentifier:(id)identifier fromTargetWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  accessQueue = self->_accessQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__IAMMessageCoordinator_reportMessageDidAppearWithIdentifier_fromTargetWithIdentifier___block_invoke;
  v13[3] = &unk_2797A7138;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = v8;
  v16 = withIdentifierCopy;
  v10 = withIdentifierCopy;
  v11 = v8;
  v12 = identifierCopy;
  dispatch_async(accessQueue, v13);
}

void __87__IAMMessageCoordinator_reportMessageDidAppearWithIdentifier_fromTargetWithIdentifier___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 96) priorityMessageEntryForIdentifier:*(a1 + 40)];
  if (!v2)
  {
    v6 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_ERROR, "No message entry with identifier = %{public}@ couldn't report message appearance.", buf, 0xCu);
    }

    goto LABEL_8;
  }

  [*(a1 + 32) _updateLastDisplayTime:*(a1 + 48) forMessageEntry:v2];
  [*(*(a1 + 32) + 48) messageEntry:v2 didAppearFromTargetWithIdentifier:*(a1 + 56) atTime:*(a1 + 48)];
  v3 = [v2 applicationMessage];
  v4 = [v3 hasLocalNotification];

  if (v4)
  {
    [*(a1 + 32) _removeUserNotificationRemovalForMessageWithIdentifier:*(a1 + 40)];
  }

  if ([v2 isBadgingApplication])
  {
    v5 = *(*(a1 + 32) + 64);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __87__IAMMessageCoordinator_reportMessageDidAppearWithIdentifier_fromTargetWithIdentifier___block_invoke_19;
    v9[3] = &unk_2797A7110;
    v10 = v2;
    v11 = *(a1 + 40);
    [v5 removeApplicationBadgeFromMessageEntry:v10 completion:v9];

    v6 = v10;
LABEL_8:
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __87__IAMMessageCoordinator_reportMessageDidAppearWithIdentifier_fromTargetWithIdentifier___block_invoke_19(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(a1 + 32) bundleIdentifier];
      v5 = *(a1 + 40);
      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_254AF4000, v3, OS_LOG_TYPE_ERROR, "Error removing application badge for bundleId = %{public}@ from message with identifier = %{public}@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)reportMessageDidDisappearWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__IAMMessageCoordinator_reportMessageDidDisappearWithIdentifier___block_invoke;
  v7[3] = &unk_2797A7160;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(accessQueue, v7);
}

void __65__IAMMessageCoordinator_reportMessageDidDisappearWithIdentifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 96) priorityMessageEntryForIdentifier:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _incrementNumberOfDisplaysForMessageEntry:v2];
  }

  else
  {
    v3 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_254AF4000, v3, OS_LOG_TYPE_ERROR, "No message entry with identifier = %{public}@ couldn't report message disappearance.", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)reportMessageDidDisappearWithIdentifier:(id)identifier fromTargetWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  accessQueue = self->_accessQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__IAMMessageCoordinator_reportMessageDidDisappearWithIdentifier_fromTargetWithIdentifier___block_invoke;
  v13[3] = &unk_2797A7138;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = withIdentifierCopy;
  v16 = v8;
  v10 = v8;
  v11 = withIdentifierCopy;
  v12 = identifierCopy;
  dispatch_async(accessQueue, v13);
}

- (void)reportMessageWithIdentifier:(id)identifier actionWasPerformedWithIdentifier:(id)withIdentifier fromTargetWithIdentifier:(id)targetWithIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  targetWithIdentifierCopy = targetWithIdentifier;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__IAMMessageCoordinator_reportMessageWithIdentifier_actionWasPerformedWithIdentifier_fromTargetWithIdentifier___block_invoke;
  v15[3] = &unk_2797A7138;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = withIdentifierCopy;
  v18 = targetWithIdentifierCopy;
  v12 = targetWithIdentifierCopy;
  v13 = withIdentifierCopy;
  v14 = identifierCopy;
  dispatch_async(accessQueue, v15);
}

void __111__IAMMessageCoordinator_reportMessageWithIdentifier_actionWasPerformedWithIdentifier_fromTargetWithIdentifier___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 96) priorityMessageEntryForIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 applicationMessage];
    v5 = [v4 contentPages];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v5;
    v26 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v26)
    {
      v7 = *v32;
      v24 = *v32;
      v25 = v3;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = [*(*(&v31 + 1) + 8 * i) messageActions];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v28;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v28 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v27 + 1) + 8 * j);
                v16 = [v15 identifier];
                v17 = [v16 isEqualToString:*(a1 + 48)];

                if (v17)
                {
                  v3 = v25;
                  [*(a1 + 32) _reportMessageAction:v15 wasPerformedInMessageEntry:v25 fromTargetWithIdentifier:*(a1 + 56)];

                  v18 = v6;
                  goto LABEL_20;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          v7 = v24;
        }

        v3 = v25;
        v26 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v26);
    }

    v18 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      v19 = *(a1 + 48);
      *buf = 138543618;
      v38 = v19;
      v39 = 2114;
      v40 = v20;
      _os_log_impl(&dword_254AF4000, v18, OS_LOG_TYPE_ERROR, "No action with identifier = %{public}@ for message with identifier = %{public}@, couldn't report action performance.", buf, 0x16u);
    }

LABEL_20:
  }

  else
  {
    v6 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      *buf = 138543618;
      v38 = v21;
      v39 = 2114;
      v40 = v22;
      _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_ERROR, "No message entry with identifier = %{public}@, couldn't report performance of action with identifier = %{public}@.", buf, 0x16u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)reportApplicationContextPropertiesDidChange:(id)change
{
  changeCopy = change;
  v5 = [IAMChangedContextPropertiesTriggerContext alloc];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [(IAMChangedContextPropertiesTriggerContext *)v5 initWithContextPropertyNames:changeCopy bundleIdentifier:bundleIdentifier];

  [(IAMMessageCoordinator *)self reportChangedContextPropertiesContext:v7];
}

- (id)beginObservingTriggerEvent:(id)event withHandler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  uUID = [MEMORY[0x277CCAD78] UUID];
  accessQueue = self->_accessQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__IAMMessageCoordinator_beginObservingTriggerEvent_withHandler___block_invoke;
  v16[3] = &unk_2797A7188;
  v16[4] = self;
  v17 = eventCopy;
  v19 = handlerCopy;
  v10 = uUID;
  v18 = v10;
  v11 = handlerCopy;
  v12 = eventCopy;
  dispatch_async(accessQueue, v16);
  v13 = v18;
  v14 = v10;

  return v10;
}

void __64__IAMMessageCoordinator_beginObservingTriggerEvent_withHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  v3 = [*(a1 + 40) name];
  v8 = [v2 objectForKeyedSubscript:v3];

  if (!v8)
  {
    v8 = objc_opt_new();
    v4 = *(*(a1 + 32) + 136);
    v5 = [*(a1 + 40) name];
    [v4 setObject:v8 forKeyedSubscript:v5];
  }

  v6 = [*(a1 + 56) copy];
  v7 = MEMORY[0x259C23D00]();
  [v8 setObject:v7 forKey:*(a1 + 48)];
}

- (void)endObservingTriggerEvent:(id)event forToken:(id)token
{
  eventCopy = event;
  tokenCopy = token;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__IAMMessageCoordinator_endObservingTriggerEvent_forToken___block_invoke;
  block[3] = &unk_2797A70E8;
  block[4] = self;
  v12 = eventCopy;
  v13 = tokenCopy;
  v9 = tokenCopy;
  v10 = eventCopy;
  dispatch_async(accessQueue, block);
}

void __59__IAMMessageCoordinator_endObservingTriggerEvent_forToken___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  v3 = [*(a1 + 40) name];
  v8 = [v2 objectForKeyedSubscript:v3];

  v4 = [v8 objectForKey:*(a1 + 48)];

  if (v4)
  {
    [v8 removeObjectForKey:*(a1 + 48)];
  }

  if (![v8 count])
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 136);
    v7 = [v5 name];
    [v6 setObject:0 forKeyedSubscript:v7];
  }
}

- (void)triggerPresentationForMessageWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__IAMMessageCoordinator_triggerPresentationForMessageWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_2797A7200;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(accessQueue, block);
}

void __87__IAMMessageCoordinator_triggerPresentationForMessageWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 96) messageEntryForIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 applicationMessage];
    v5 = [v4 assetPrefetchStrategy] != 2;

    v6 = [IAMMessageCoordinator _createMessageFromMessageEntry:v3 replacingResourcePathsWithCachedResourceLocations:v5];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __87__IAMMessageCoordinator_triggerPresentationForMessageWithIdentifier_completionHandler___block_invoke_23;
    v11[3] = &unk_2797A71D8;
    v11[4] = *(a1 + 32);
    v12 = v6;
    v13 = v3;
    v14 = *(a1 + 48);
    v7 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }

  else
  {
    v8 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138543362;
      v16 = v9;
      _os_log_impl(&dword_254AF4000, v8, OS_LOG_TYPE_ERROR, "No message entry with identifier = %{public}@ couldn't force trigger presentation.", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __87__IAMMessageCoordinator_triggerPresentationForMessageWithIdentifier_completionHandler___block_invoke_23(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(v2 + 112);
  v5 = *(v2 + 120);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__IAMMessageCoordinator_triggerPresentationForMessageWithIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_2797A71B0;
  objc_copyWeak(&v9, &location);
  v8 = *(a1 + 56);
  [v5 messageCoordinator:v2 didUpdatePriorityMessage:v3 fromMessageEntry:v4 forTarget:v6 withCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __87__IAMMessageCoordinator_triggerPresentationForMessageWithIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)reportMetricsEvent:(id)event
{
  eventCopy = event;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__IAMMessageCoordinator_reportMetricsEvent___block_invoke;
  v6[3] = &unk_2797A7160;
  v6[4] = self;
  v7 = eventCopy;
  v5 = eventCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __44__IAMMessageCoordinator_reportMetricsEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) metricsDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) metricsDelegate];
    [v4 messageDidReportMetricsEvent:*(a1 + 32) eventProperties:*(a1 + 40)];
  }
}

- (void)receiveTriggerEventContext:(id)context
{
  contextCopy = context;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__IAMMessageCoordinator_receiveTriggerEventContext___block_invoke;
  v7[3] = &unk_2797A7160;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(accessQueue, v7);
}

void __52__IAMMessageCoordinator_receiveTriggerEventContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 104))
  {
    v9 = [*(v2 + 96) messageEntriesByTriggerForEventContext:*(a1 + 40)];
    v3 = [IAMMessageEntryManager uniqueMessageEntriesInMessageEntriesByTrigger:v9];
    v4 = [IAMMessageEntryManager targetIdentifiersForMessageEntries:v3];
    v5 = [*(a1 + 32) _filterActiveTargetIdentifiers:v4];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) event];
    [v6 _updateMetadataOfMessageEntriesByTrigger:v9 forReceivedEvent:v7];

    [*(a1 + 32) _calculateMessagesProximityAndDownloadResourcesIfNeeded:v3];
    [*(a1 + 32) _reevaluateTargetsWithIdentifiers:v5 forTriggerContext:*(a1 + 40) shouldNotifyTargetsIfPriorityMessageNonNil:0];
  }

  else
  {
    v8 = *(a1 + 40);

    [v2 _enqueuePendingTriggerContext:v8];
  }
}

- (void)reportChangedContextPropertiesContext:(id)context
{
  contextCopy = context;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__IAMMessageCoordinator_reportChangedContextPropertiesContext___block_invoke;
  v7[3] = &unk_2797A7160;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(accessQueue, v7);
}

void __63__IAMMessageCoordinator_reportChangedContextPropertiesContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 104))
  {
    v6 = [*(v2 + 96) messageEntriesForContextPropertiesContext:*(a1 + 40)];
    v3 = [IAMMessageEntryManager targetIdentifiersForMessageEntries:v6];
    v4 = [*(a1 + 32) _filterActiveTargetIdentifiers:v3];
    [*(a1 + 32) _reevaluateTargetsWithIdentifiers:v4 forTriggerContext:*(a1 + 40) shouldNotifyTargetsIfPriorityMessageNonNil:0];
  }

  else
  {
    v5 = *(a1 + 40);

    [v2 _enqueuePendingTriggerContext:v5];
  }
}

- (void)receiveEvent:(id)event
{
  eventCopy = event;
  v5 = [IAMReceivedEventTriggerContext alloc];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = [(IAMReceivedEventTriggerContext *)v5 initWithEvent:eventCopy bundleIdentifier:bundleIdentifier];

  [(IAMMessageCoordinator *)self receiveTriggerEventContext:v8];
}

- (void)storageCoordinatorMessageEntriesChanged:(id)changed
{
  changedCopy = changed;
  v5 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_254AF4000, v5, OS_LOG_TYPE_DEFAULT, "Storage coordinator message entries changed.", buf, 2u);
  }

  objc_initWeak(buf, self);
  storageCoordinator = self->_storageCoordinator;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__IAMMessageCoordinator_storageCoordinatorMessageEntriesChanged___block_invoke;
  v7[3] = &unk_2797A7250;
  v7[4] = self;
  objc_copyWeak(&v8, buf);
  [(IAMStorageCoordinator *)storageCoordinator fetchMessagesEntriesAndMetadata:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __65__IAMMessageCoordinator_storageCoordinatorMessageEntriesChanged___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__IAMMessageCoordinator_storageCoordinatorMessageEntriesChanged___block_invoke_2;
  v14[3] = &unk_2797A7228;
  objc_copyWeak(&v18, (a1 + 40));
  v15 = v9;
  v16 = v7;
  v17 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(v10, v14);

  objc_destroyWeak(&v18);
}

void __65__IAMMessageCoordinator_storageCoordinatorMessageEntriesChanged___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v9 = 138543362;
        v10 = v5;
        _os_log_impl(&dword_254AF4000, v4, OS_LOG_TYPE_ERROR, "Error fetching messages and metadata %{public}@.", &v9, 0xCu);
      }

      WeakRetained = v3;
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
    }

    [WeakRetained _handleUpdatedMessageEntries:v6 andMetadata:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)impressionManager:(id)manager impressionDidEndForMessageEntry:(id)entry
{
  entryCopy = entry;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__IAMMessageCoordinator_impressionManager_impressionDidEndForMessageEntry___block_invoke;
  v8[3] = &unk_2797A7160;
  v8[4] = self;
  v9 = entryCopy;
  v7 = entryCopy;
  dispatch_async(accessQueue, v8);
}

- (void)_setMessageGroups:(id)groups
{
  v25 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  if (groupsCopy)
  {
    v5 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = groupsCopy;
    v6 = groupsCopy;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          [v11 setMessageCoordinator:self];
          groupIdentifier = [v11 groupIdentifier];
          if (groupIdentifier)
          {
            [v5 setObject:v11 forKeyedSubscript:groupIdentifier];
          }

          else
          {
            v13 = IAMLogCategoryDefault();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v23 = v11;
              _os_log_impl(&dword_254AF4000, v13, OS_LOG_TYPE_ERROR, "No group identifier specified for message group = %{public}@", buf, 0xCu);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v8);
    }

    v14 = [v5 copy];
    messageGroupsByGroupIdentifier = self->_messageGroupsByGroupIdentifier;
    self->_messageGroupsByGroupIdentifier = v14;

    [(IAMModalTarget *)self->_modalTarget setMessageGroupsByGroupIdentifier:self->_messageGroupsByGroupIdentifier];
    groupsCopy = v17;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_startStorageCoordinatorWithMessageEntryProvider:(id)provider messageMetadataStorage:(id)storage propertyStorage:(id)propertyStorage
{
  providerCopy = provider;
  storageCopy = storage;
  propertyStorageCopy = propertyStorage;
  _messageBundleIdentifiers = [(IAMMessageCoordinator *)self _messageBundleIdentifiers];
  v12 = [[IAMStorageCoordinator alloc] initWithMessageEntryProvider:providerCopy messageMetadataStorage:storageCopy propertyStorage:propertyStorageCopy messageBundleIdentifiers:_messageBundleIdentifiers];
  storageCoordinator = self->_storageCoordinator;
  self->_storageCoordinator = v12;

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __113__IAMMessageCoordinator__startStorageCoordinatorWithMessageEntryProvider_messageMetadataStorage_propertyStorage___block_invoke;
  v14[3] = &unk_2797A7278;
  objc_copyWeak(&v15, &location);
  v14[4] = self;
  [(IAMMessageCoordinator *)self _fetchMessagesAndMetadataFromStorageCoordinator:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __113__IAMMessageCoordinator__startStorageCoordinatorWithMessageEntryProvider_messageMetadataStorage_propertyStorage___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = IAMLogCategoryDefault();
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 138543362;
        v15 = v9;
        _os_log_impl(&dword_254AF4000, v12, OS_LOG_TYPE_ERROR, "Failed to start storage coordinator %{public}@.", &v14, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_254AF4000, v12, OS_LOG_TYPE_DEFAULT, "Storage coordinator started.", &v14, 2u);
      }

      *(WeakRetained + 104) = 1;
      [WeakRetained _handleUpdatedMessageEntries:v7 andMetadata:v8];
      [*(WeakRetained + 8) setDelegate:*(a1 + 32)];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_fetchMessagesAndMetadataFromStorageCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__0;
  v30[4] = __Block_byref_object_dispose__0;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__0;
  v26[4] = __Block_byref_object_dispose__0;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__0;
  v24[4] = __Block_byref_object_dispose__0;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  objc_initWeak(&location, self);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__30;
  v19[4] = __Block_byref_object_dispose__31;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__IAMMessageCoordinator__fetchMessagesAndMetadataFromStorageCoordinator___block_invoke;
  v12[3] = &unk_2797A72A0;
  v14 = v30;
  v5 = coordinatorCopy;
  v13 = v5;
  v15 = v28;
  v16 = v22;
  v17 = v26;
  v18 = v24;
  v20 = MEMORY[0x259C23D00](v12);
  storageCoordinator = self->_storageCoordinator;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__IAMMessageCoordinator__fetchMessagesAndMetadataFromStorageCoordinator___block_invoke_2;
  v10[3] = &unk_2797A72F0;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  v10[5] = v19;
  v10[6] = v26;
  v10[7] = v24;
  v10[8] = v28;
  [(IAMStorageCoordinator *)storageCoordinator fetchMessagesEntriesAndMetadata:v10];
  v7 = self->_storageCoordinator;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__IAMMessageCoordinator__fetchMessagesAndMetadataFromStorageCoordinator___block_invoke_4;
  v8[3] = &unk_2797A7340;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  v8[5] = v19;
  v8[6] = v22;
  [(IAMStorageCoordinator *)v7 fetchGlobalPresentationPolicyGroupDisplayTimes:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  _Block_object_dispose(v19, 8);

  objc_destroyWeak(&location);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

uint64_t __73__IAMMessageCoordinator__fetchMessagesAndMetadataFromStorageCoordinator___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  v5 = *(a1[5] + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    if (v4)
    {
      objc_storeStrong(v6, a2);
      v8 = *(a1[4] + 16);
LABEL_4:
      v6 = v8();
      goto LABEL_8;
    }

    if (*(*(a1[6] + 8) + 24) == 1 && *(*(a1[7] + 8) + 24) == 1)
    {
      v9 = *(*(a1[8] + 8) + 40);
      v10 = *(*(a1[9] + 8) + 40);
      v8 = *(a1[4] + 16);
      goto LABEL_4;
    }
  }

LABEL_8:

  return MEMORY[0x2821F97C8](v6);
}

void __73__IAMMessageCoordinator__fetchMessagesAndMetadataFromStorageCoordinator___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__IAMMessageCoordinator__fetchMessagesAndMetadataFromStorageCoordinator___block_invoke_3;
  v14[3] = &unk_2797A72C8;
  objc_copyWeak(&v20, (a1 + 72));
  v18 = *(a1 + 40);
  v15 = v9;
  v16 = v7;
  v17 = v8;
  v19 = *(a1 + 56);
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(v10, v14);

  objc_destroyWeak(&v20);
}

void __73__IAMMessageCoordinator__fetchMessagesAndMetadataFromStorageCoordinator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (!*(a1 + 32))
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 48));
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }

    (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
    WeakRetained = v3;
  }
}

void __73__IAMMessageCoordinator__fetchMessagesAndMetadataFromStorageCoordinator___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__IAMMessageCoordinator__fetchMessagesAndMetadataFromStorageCoordinator___block_invoke_5;
  v14[3] = &unk_2797A7318;
  objc_copyWeak(&v19, (a1 + 56));
  v15 = v9;
  v16 = v7;
  v17 = v8;
  v18 = *(a1 + 40);
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(v10, v14);

  objc_destroyWeak(&v19);
}

void __73__IAMMessageCoordinator__fetchMessagesAndMetadataFromStorageCoordinator___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (!*(a1 + 32))
    {
      objc_storeStrong(WeakRetained + 10, *(a1 + 40));
      objc_storeStrong(v3 + 11, *(a1 + 48));
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
    WeakRetained = v3;
  }
}

- (void)_handleUpdatedMessageEntries:(id)entries andMetadata:(id)metadata
{
  v41 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  metadataCopy = metadata;
  if (entriesCopy)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [entriesCopy countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = 0;
      v12 = *v33;
      *&v9 = 138543618;
      v30 = v9;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(entriesCopy);
          }

          applicationMessage = [*(*(&v32 + 1) + 8 * i) applicationMessage];
          identifier = [applicationMessage identifier];

          v16 = [(IAMMessageCoordinator *)self _metadataEntryForMessageIdentifier:identifier];
          v17 = v16;
          if (!metadataCopy || v16)
          {
            if (!v16)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v18 = [metadataCopy objectForKeyedSubscript:identifier];
            if (!v18)
            {
              goto LABEL_17;
            }

            v17 = v18;
            v19 = IAMLogCategoryDefault();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              [v17 allMetadataValues];
              v31 = v11;
              v20 = v10;
              v21 = metadataCopy;
              v22 = v12;
              selfCopy = self;
              v25 = v24 = entriesCopy;
              *buf = v30;
              v37 = v25;
              v38 = 2114;
              v39 = identifier;
              _os_log_impl(&dword_254AF4000, v19, OS_LOG_TYPE_DEFAULT, "Received new metadata entry = %{public}@ for message with identifier = %{public}@", buf, 0x16u);

              entriesCopy = v24;
              self = selfCopy;
              v12 = v22;
              metadataCopy = v21;
              v10 = v20;
              v11 = v31;
            }
          }

          if (!v11)
          {
            v11 = objc_opt_new();
          }

          [v11 setObject:v17 forKeyedSubscript:identifier];

LABEL_17:
        }

        v10 = [entriesCopy countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (!v10)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v11 = 0;
LABEL_21:
  v26 = [v11 copy];
  metadataEntryByMessageIdentifier = self->_metadataEntryByMessageIdentifier;
  self->_metadataEntryByMessageIdentifier = v26;

  v28 = [entriesCopy copy];
  [(IAMMessageEntryManager *)self->_messageEntryManager setMessageEntries:v28];

  [(IAMMessageCoordinator *)self _evaluateMessagesForAllActiveTargets];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)_reportHoldoutMessageWouldAppear:(id)appear
{
  v4 = MEMORY[0x277CBEAA8];
  appearCopy = appear;
  v9 = objc_alloc_init(v4);
  applicationMessage = [appearCopy applicationMessage];
  holdoutEvent = [applicationMessage holdoutEvent];
  reportableDictionary = [holdoutEvent reportableDictionary];
  [(IAMMessageCoordinator *)self reportMetricsEvent:reportableDictionary];

  [(IAMMessageCoordinator *)self _incrementNumberOfDisplaysForMessageEntry:appearCopy];
  [(IAMMessageCoordinator *)self _updateLastDisplayTime:v9 forMessageEntry:appearCopy];
}

- (void)_updateLastDisplayTime:(id)time forMessageEntry:(id)entry
{
  timeCopy = time;
  entryCopy = entry;
  applicationMessage = [entryCopy applicationMessage];
  hasGlobalPresentationPolicyGroup = [applicationMessage hasGlobalPresentationPolicyGroup];

  if (hasGlobalPresentationPolicyGroup)
  {
    applicationMessage2 = [entryCopy applicationMessage];
    globalPresentationPolicyGroup = [applicationMessage2 globalPresentationPolicyGroup];

    if (globalPresentationPolicyGroup == 1)
    {
      objc_storeStrong(&self->_lastDisplayTimeGlobalPresentationPolicyGroupRestricted, time);
      [(IAMStorageCoordinator *)self->_storageCoordinator updateLastDisplayTimeGlobalPresentationPolicyGroupRestricted:timeCopy];
    }

    else if (!globalPresentationPolicyGroup)
    {
      objc_storeStrong(&self->_lastDisplayTimeGlobalPresentationPolicyGroupNormal, time);
      [(IAMStorageCoordinator *)self->_storageCoordinator updateLastDisplayTimeGlobalPresentationPolicyGroupNormal:timeCopy];
    }
  }
}

- (id)_metadataEntryForMessageIdentifier:(id)identifier
{
  metadataEntryByMessageIdentifier = self->_metadataEntryByMessageIdentifier;
  if (metadataEntryByMessageIdentifier)
  {
    metadataEntryByMessageIdentifier = [metadataEntryByMessageIdentifier objectForKeyedSubscript:identifier];
    v3 = vars8;
  }

  return metadataEntryByMessageIdentifier;
}

- (void)_calculateMessagesProximityAndDownloadResourcesIfNeeded:(id)needed
{
  v40 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = [(NSDate *)self->_lastDisplayTimeGlobalPresentationPolicyGroupRestricted copy];
  v6 = [(NSDate *)self->_lastDisplayTimeGlobalPresentationPolicyGroupNormal copy];
  v7 = [(NSDictionary *)self->_metadataEntryByMessageIdentifier copy];
  v8 = [(NSDictionary *)self->_messageGroupsByGroupIdentifier copy];
  v9 = [IAMEvaluator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_applicationContext);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v13 = [(IAMEvaluator *)v9 initWithMessageEntries:neededCopy metadataEntries:v7 applicationContext:WeakRetained hostBundleIdentifier:bundleIdentifier messageGroups:v8 lastDisplayTimeForRestrictedPresentationPolicyGroup:v5 lastDisplayTimeForNormalPresentationPolicyGroup:v6];

  v14 = [(IAMEvaluator *)v13 computeMessagesCloseToPassingWithProximityThreshold:50];
  if ([v14 count])
  {
    v27 = v13;
    v28 = v8;
    v29 = v7;
    v30 = v6;
    v31 = v5;
    v32 = neededCopy;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          if (([v20 shouldDownloadResources] & 1) == 0)
          {
            applicationMessage = [v20 applicationMessage];
            hasHoldoutEvent = [applicationMessage hasHoldoutEvent];

            if ((hasHoldoutEvent & 1) == 0)
            {
              v23 = IAMLogCategoryDefault();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                applicationMessage2 = [v20 applicationMessage];
                identifier = [applicationMessage2 identifier];
                *buf = 138543362;
                v38 = identifier;
                _os_log_impl(&dword_254AF4000, v23, OS_LOG_TYPE_DEFAULT, "Asking iTunesCloud to download resources for message with identifier = %{public}@", buf, 0xCu);
              }

              [(IAMStorageCoordinator *)self->_storageCoordinator downloadResourcesForMessageEntry:v20 completion:0];
              [v20 setShouldDownloadResources:1];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v17);
    }

    v5 = v31;
    neededCopy = v32;
    v7 = v29;
    v6 = v30;
    v13 = v27;
    v8 = v28;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_reevaluateMessageEntries:(id)entries forTargetIdentifier:(id)identifier shouldNotifyTargetsIfPriorityMessageNonNil:(BOOL)nil withObservedEventName:(id)name
{
  nilCopy = nil;
  lastDisplayTimeGlobalPresentationPolicyGroupRestricted = self->_lastDisplayTimeGlobalPresentationPolicyGroupRestricted;
  nameCopy = name;
  identifierCopy = identifier;
  entriesCopy = entries;
  v11 = [(NSDate *)lastDisplayTimeGlobalPresentationPolicyGroupRestricted copy];
  v24 = [(NSDate *)self->_lastDisplayTimeGlobalPresentationPolicyGroupNormal copy];
  v12 = [(NSDictionary *)self->_metadataEntryByMessageIdentifier copy];
  v13 = [(NSDictionary *)self->_messageGroupsByGroupIdentifier copy];
  v14 = [IAMEvaluator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_applicationContext);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v18 = [(IAMEvaluator *)v14 initWithMessageEntries:entriesCopy metadataEntries:v12 applicationContext:WeakRetained hostBundleIdentifier:bundleIdentifier messageGroups:v13 lastDisplayTimeForRestrictedPresentationPolicyGroup:v11 lastDisplayTimeForNormalPresentationPolicyGroup:v24];

  computePassingMessageEntries = [(IAMEvaluator *)v18 computePassingMessageEntries];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __136__IAMMessageCoordinator__reevaluateMessageEntries_forTargetIdentifier_shouldNotifyTargetsIfPriorityMessageNonNil_withObservedEventName___block_invoke;
  v28[3] = &unk_2797A7368;
  v28[4] = self;
  v20 = [MEMORY[0x277CCAC30] predicateWithBlock:v28];
  v21 = [computePassingMessageEntries filteredArrayUsingPredicate:v20];

  v22 = [v21 sortedArrayUsingComparator:&__block_literal_global_0];
  firstObject = [v22 firstObject];
  [(IAMMessageCoordinator *)self _updatePriorityMessageEntry:firstObject forTargetIdentifier:identifierCopy shouldNotifyTargetsIfNonNil:nilCopy observedEventName:nameCopy];
}

BOOL __136__IAMMessageCoordinator__reevaluateMessageEntries_forTargetIdentifier_shouldNotifyTargetsIfPriorityMessageNonNil_withObservedEventName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 applicationMessage];
  v6 = [v5 identifier];
  v7 = [v4 _metadataEntryForMessageIdentifier:v6];

  v8 = [v3 applicationMessage];
  LODWORD(v6) = [v8 hasMaximumDisplays];

  if (v6)
  {
    v9 = [v3 applicationMessage];
    v10 = [v9 maximumDisplays];

    if (v10 == -1)
    {
      v13 = 1;
    }

    else
    {
      v11 = [v7 numberOfDisplays];
      v12 = [v3 applicationMessage];
      v13 = v11 < [v12 maximumDisplays];
    }
  }

  else
  {
    v13 = [v7 numberOfDisplays] == 0;
  }

  return v13;
}

- (void)_reevaluateTargetsWithIdentifiers:(id)identifiers forTriggerContext:(id)context shouldNotifyTargetsIfPriorityMessageNonNil:(BOOL)nil
{
  nilCopy = nil;
  v36 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  contextCopy = context;
  if (contextCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = contextCopy;
    completionHandlersForObservedEvents = self->_completionHandlersForObservedEvents;
    event = [v9 event];
    name = [event name];
    v13 = [(NSMutableDictionary *)completionHandlersForObservedEvents objectForKeyedSubscript:name];

    if (v13)
    {
      event2 = [v9 event];
      name2 = [event2 name];
      v13 = [name2 copy];

      v16 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    v9 = 0;
  }

  v16 = 1;
LABEL_7:
  if (self->_isReadyToEvaluateMessages)
  {
    if ([identifiersCopy count])
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      v27 = v9;
      v28 = identifiersCopy;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = identifiersCopy;
      v18 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v31 + 1) + 8 * i);
            v23 = [(IAMMessageEntryManager *)self->_messageEntryManager messageEntriesForTargetIdentifier:v22, v27, v28];
            v24 = [v23 copy];

            v25 = [IAMMessageEntryManager messageEntries:v24 withSatisfiedPresentationTriggerForTriggerContext:contextCopy];
            [(IAMMessageCoordinator *)self _reevaluateMessageEntries:v25 forTargetIdentifier:v22 shouldNotifyTargetsIfPriorityMessageNonNil:nilCopy withObservedEventName:v13];
          }

          v19 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v19);
      }

      v9 = v27;
      identifiersCopy = v28;
    }

    else
    {
      [(IAMMessageCoordinator *)self _processObservedEventCallbacksforEventName:v13 willTriggerPresentation:0 messageIdentifier:0];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_updatePriorityMessageEntry:(id)entry forTargetIdentifier:(id)identifier shouldNotifyTargetsIfNonNil:(BOOL)nil observedEventName:(id)name
{
  nilCopy = nil;
  v26 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  identifierCopy = identifier;
  nameCopy = name;
  v13 = [(NSMutableDictionary *)self->_priorityMessageEntryByTargetIdentifier objectForKeyedSubscript:identifierCopy];
  v14 = [(NSMutableDictionary *)self->_messageTargetsByTargetIdentifier objectForKeyedSubscript:identifierCopy];
  v15 = [v14 copy];

  if (v13 != entryCopy || ([identifierCopy isEqualToString:self->_modalTargetIdentifier] & 1) != 0)
  {
LABEL_5:
    [(NSMutableDictionary *)self->_priorityMessageEntryByTargetIdentifier setObject:entryCopy forKeyedSubscript:identifierCopy];
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (entryCopy)
  {
    if (!nilCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  v22 = [(NSMutableDictionary *)self->_messageTargetsRequiringNilPriorityMessageNotificationAfterRegistrationByTargetIdentifier objectForKeyedSubscript:identifierCopy];
  v23 = [v22 copy];

  if (!v23)
  {
    goto LABEL_13;
  }

  [(NSMutableDictionary *)self->_priorityMessageEntryByTargetIdentifier setObject:0 forKeyedSubscript:identifierCopy];
  v15 = v23;
LABEL_6:
  [(NSMutableDictionary *)self->_messageTargetsRequiringNilPriorityMessageNotificationAfterRegistrationByTargetIdentifier setObject:0 forKeyedSubscript:identifierCopy];
  applicationMessage = [entryCopy applicationMessage];
  hasHoldoutEvent = [applicationMessage hasHoldoutEvent];

  if (hasHoldoutEvent)
  {
    [(IAMMessageCoordinator *)self _reportHoldoutMessageWouldAppear:entryCopy];
    v18 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      applicationMessage2 = [entryCopy applicationMessage];
      identifier = [applicationMessage2 identifier];
      v24 = 138543362;
      v25 = identifier;
      _os_log_impl(&dword_254AF4000, v18, OS_LOG_TYPE_DEFAULT, "Unable to display message for identifier = %{public}@. The message contains a holdoutEvent", &v24, 0xCu);
    }

    [(IAMMessageCoordinator *)self _processObservedEventCallbacksforEventName:nameCopy willTriggerPresentation:0 messageIdentifier:0];
  }

  else
  {
    if (entryCopy)
    {
      [(IAMMessageEntryManager *)self->_messageEntryManager addPriorityMessageEntry:entryCopy];
    }

    [(IAMMessageCoordinator *)self _notifyMessageTargets:v15 withTargetIdentifier:identifierCopy didUpdatePriorityMessageFromEntry:entryCopy observedEventName:nameCopy];
  }

LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_notifyMessageTargets:(id)targets withTargetIdentifier:(id)identifier didUpdatePriorityMessageFromEntry:(id)entry observedEventName:(id)name
{
  v35 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  identifierCopy = identifier;
  entryCopy = entry;
  nameCopy = name;
  applicationMessage = [entryCopy applicationMessage];
  assetPrefetchStrategy = [applicationMessage assetPrefetchStrategy];

  if (entryCopy)
  {
    v16 = [IAMMessageCoordinator _createMessageFromMessageEntry:entryCopy replacingResourcePathsWithCachedResourceLocations:assetPrefetchStrategy != 2];
  }

  else
  {
    v16 = 0;
  }

  objc_initWeak(&location, self);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = targetsCopy;
  v17 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v17)
  {
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v29 + 1) + 8 * v19);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __120__IAMMessageCoordinator__notifyMessageTargets_withTargetIdentifier_didUpdatePriorityMessageFromEntry_observedEventName___block_invoke;
        block[3] = &unk_2797A73D8;
        block[4] = v20;
        block[5] = self;
        v24 = v16;
        v25 = entryCopy;
        v26 = identifierCopy;
        v27 = nameCopy;
        objc_copyWeak(&v28, &location);
        dispatch_async(MEMORY[0x277D85CD0], block);
        objc_destroyWeak(&v28);

        ++v19;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v17);
  }

  objc_destroyWeak(&location);
  v21 = *MEMORY[0x277D85DE8];
}

void __120__IAMMessageCoordinator__notifyMessageTargets_withTargetIdentifier_didUpdatePriorityMessageFromEntry_observedEventName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __120__IAMMessageCoordinator__notifyMessageTargets_withTargetIdentifier_didUpdatePriorityMessageFromEntry_observedEventName___block_invoke_2;
    v13[3] = &unk_2797A73B0;
    v14 = *(a1 + 72);
    objc_copyWeak(&v16, (a1 + 80));
    v15 = *(a1 + 48);
    [v5 messageCoordinator:v6 didUpdatePriorityMessage:v7 fromMessageEntry:v8 forTarget:v9 withCompletion:v13];

    objc_destroyWeak(&v16);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);

    [v4 messageCoordinator:v10 didUpdatePriorityMessage:v11 forTarget:v12];
  }
}

void __120__IAMMessageCoordinator__notifyMessageTargets_withTargetIdentifier_didUpdatePriorityMessageFromEntry_observedEventName___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) identifier];
      [v7 _processObservedEventCallbacksforEventName:v5 willTriggerPresentation:a2 messageIdentifier:v6];

      WeakRetained = v7;
    }
  }
}

+ (id)_createMessageFromMessageEntry:(id)entry replacingResourcePathsWithCachedResourceLocations:(BOOL)locations
{
  locationsCopy = locations;
  v72 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v6 = entryCopy;
  if (!locationsCopy || ![entryCopy shouldDownloadResources] || (objc_msgSend(v6, "didCacheRequiredResources") & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x277D1B2C0]) initWithICInAppMessageEntry:v6];
    goto LABEL_8;
  }

  applicationMessage = [v6 applicationMessage];
  if ([applicationMessage messageType] == 1 && objc_msgSend(applicationMessage, "hasWebArchiveURL"))
  {
    v8 = [objc_alloc(MEMORY[0x277D1B2C0]) initWithICInAppMessageEntry:v6];
    goto LABEL_47;
  }

  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  contentPages = [applicationMessage contentPages];
  v53 = [v11 initWithCapacity:{objc_msgSend(contentPages, "count")}];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v48 = applicationMessage;
  obj = [applicationMessage contentPages];
  v54 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (!v54)
  {
    goto LABEL_46;
  }

  v52 = *v66;
  v55 = v6;
  do
  {
    for (i = 0; i != v54; ++i)
    {
      if (*v66 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v65 + 1) + 8 * i);
      if ([v14 imagesCount] && (v56 = objc_msgSend(objc_alloc(MEMORY[0x277CBEB18]), "initWithCapacity:", objc_msgSend(v14, "imagesCount"))) != 0)
      {
        v50 = v14;
        v51 = i;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        images = [v14 images];
        v16 = [images countByEnumeratingWithState:&v61 objects:v70 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v62;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v62 != v18)
              {
                objc_enumerationMutation(images);
              }

              v20 = *(*(&v61 + 1) + 8 * j);
              if ([v20 hasIdentifier] && objc_msgSend(v20, "hasURL"))
              {
                identifier = [v20 identifier];
                v22 = [v6 cachedLocationForResourceWithIdentifier:identifier];

                if (v22)
                {
                  v23 = objc_alloc(MEMORY[0x277D1B2B0]);
                  identifier2 = [v20 identifier];
                  v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v22 isDirectory:0];
                  v26 = [v23 initWithIdentifier:identifier2 url:v25 width:objc_msgSend(v20 height:{"width"), objc_msgSend(v20, "height")}];
                  [v56 addObject:v26];

                  v6 = v55;
                }
              }
            }

            v17 = [images countByEnumeratingWithState:&v61 objects:v70 count:16];
          }

          while (v17);
        }

        v14 = v50;
        i = v51;
      }

      else
      {
        v56 = 0;
      }

      messageActions = [v14 messageActions];
      if ([messageActions count])
      {
        v28 = objc_alloc(MEMORY[0x277CBEB18]);
        messageActions2 = [v14 messageActions];
        v30 = [v28 initWithCapacity:{objc_msgSend(messageActions2, "count")}];

        if (!v30)
        {
          goto LABEL_44;
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        messageActions = [v14 messageActions];
        v31 = [messageActions countByEnumeratingWithState:&v57 objects:v69 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = i;
          v34 = *v58;
          do
          {
            for (k = 0; k != v32; ++k)
            {
              if (*v58 != v34)
              {
                objc_enumerationMutation(messageActions);
              }

              v36 = [objc_alloc(MEMORY[0x277D1B290]) initWithICAction:*(*(&v57 + 1) + 8 * k)];
              [v30 addObject:v36];
            }

            v32 = [messageActions countByEnumeratingWithState:&v57 objects:v69 count:16];
          }

          while (v32);
          i = v33;
        }
      }

      else
      {
        v30 = 0;
      }

LABEL_44:
      v37 = objc_alloc(MEMORY[0x277D1B298]);
      title = [v14 title];
      subtitle = [v14 subtitle];
      body = [v14 body];
      contentParameters = [v14 contentParameters];
      iam_dictionaryFromArrayOfICIIAMParameters = [contentParameters iam_dictionaryFromArrayOfICIIAMParameters];
      identifier3 = [v14 identifier];
      v44 = [v37 initWithTitle:title subtitle:subtitle body:body images:v56 actions:v30 contentParameters:iam_dictionaryFromArrayOfICIIAMParameters identifier:identifier3];

      [v53 addObject:v44];
      v6 = v55;
    }

    v54 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  }

  while (v54);
LABEL_46:

  v45 = objc_alloc(MEMORY[0x277D1B2C0]);
  applicationMessage = v48;
  identifier4 = [v48 identifier];
  bundleIdentifier = [v6 bundleIdentifier];
  v8 = [v45 initWithIdentifier:identifier4 messageGroupIdentifier:bundleIdentifier contentPages:v53 requiresCloseButton:{objc_msgSend(v48, "hasCloseButton")}];

LABEL_47:
LABEL_8:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_filterActiveTargetIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_opt_new();
  v6 = [(NSMutableDictionary *)self->_messageTargetsByTargetIdentifier copy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:{v12, v17}];

        if (v13)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_updateMetadataOfMessageEntriesByTrigger:(id)trigger forReceivedEvent:(id)event
{
  v47 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  eventCopy = event;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = triggerCopy;
  v8 = triggerCopy;
  v9 = eventCopy;
  v31 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v31)
  {
    v30 = *v42;
    do
    {
      v10 = 0;
      do
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v10;
        v11 = *(*(&v41 + 1) + 8 * v10);
        v12 = [obj objectForKey:v11];
        nameSpacedKeyName = [v11 nameSpacedKeyName];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v35 = v12;
        v13 = [v35 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v38;
          v34 = *v38;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v38 != v15)
              {
                objc_enumerationMutation(v35);
              }

              v17 = *(*(&v37 + 1) + 8 * i);
              applicationMessage = [v17 applicationMessage];
              identifier = [applicationMessage identifier];

              v20 = [(IAMMessageCoordinator *)self _metadataEntryForMessageIdentifier:identifier];
              v21 = v20;
              if (v20)
              {
                v22 = v20;
              }

              else
              {
                v22 = objc_opt_new();
              }

              v23 = v22;

              type = [v9 type];
              if (type)
              {
                if (type != 1)
                {
                  goto LABEL_19;
                }

                value = [v9 value];
                [v23 setMetadataValue:value forKey:nameSpacedKeyName];
              }

              else
              {
                v26 = v9;
                v27 = MEMORY[0x277CCABB0];
                value = [v23 metadataValueForKey:nameSpacedKeyName];
                v28 = [v27 numberWithInt:{objc_msgSend(value, "intValue") + 1}];
                [v23 setMetadataValue:v28 forKey:nameSpacedKeyName];

                v9 = v26;
                v15 = v34;
              }

LABEL_19:
              [(IAMMessageCoordinator *)self _updateMetadata:v23 forMessageEntry:v17 completion:0];
            }

            v14 = [v35 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v14);
        }

        v10 = v33 + 1;
      }

      while (v33 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v31);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_updateMetadata:(id)metadata forMessageEntry:(id)entry completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  completionCopy = completion;
  entryCopy = entry;
  applicationMessage = [entryCopy applicationMessage];
  identifier = [applicationMessage identifier];

  v13 = [(NSDictionary *)self->_metadataEntryByMessageIdentifier mutableCopy];
  if (!v13)
  {
    v13 = objc_opt_new();
  }

  [v13 setObject:metadataCopy forKeyedSubscript:identifier];
  v14 = [v13 copy];
  metadataEntryByMessageIdentifier = self->_metadataEntryByMessageIdentifier;
  self->_metadataEntryByMessageIdentifier = v14;

  v16 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    allMetadataValues = [metadataCopy allMetadataValues];
    v19 = 138543618;
    v20 = allMetadataValues;
    v21 = 2114;
    v22 = identifier;
    _os_log_impl(&dword_254AF4000, v16, OS_LOG_TYPE_DEFAULT, "Updating metadata = %{public}@ for message entry with identifier = %{public}@", &v19, 0x16u);
  }

  [(IAMStorageCoordinator *)self->_storageCoordinator updateMetadata:metadataCopy forMessageEntry:entryCopy completion:completionCopy];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_reportMessageAction:(id)action wasPerformedInMessageEntry:(id)entry fromTargetWithIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  entryCopy = entry;
  identifierCopy = identifier;
  applicationMessage = [entryCopy applicationMessage];
  identifier = [applicationMessage identifier];
  identifier2 = [actionCopy identifier];
  v14 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    v22 = identifier2;
    v23 = 2114;
    v24 = identifier;
    _os_log_impl(&dword_254AF4000, v14, OS_LOG_TYPE_DEFAULT, "Action with identifier = %{public}@ performed in message with identifier = %{public}@", &v21, 0x16u);
  }

  if ([actionCopy hasClickEvent])
  {
    applicationMessage2 = [entryCopy applicationMessage];
    identifier3 = [applicationMessage2 identifier];

    clickEvent = [actionCopy clickEvent];
    v18 = [clickEvent reportableDictionaryForClickEventWithMessageIdentifier:identifier3 andTargetIdentifier:identifierCopy];

    [(IAMMessageCoordinator *)self reportMetricsEvent:v18];
  }

  if ([actionCopy hasMessageRemovalPolicy])
  {
    messageRemovalPolicy = [actionCopy messageRemovalPolicy];
    if (messageRemovalPolicy == 2)
    {
      [(IAMStorageCoordinator *)self->_storageCoordinator removeMessageEntry:entryCopy completion:0];
      if ([applicationMessage reportingEnabled])
      {
        [(IAMStorageCoordinator *)self->_storageCoordinator reportEventForMessageIdentifier:identifier withParams:MEMORY[0x277CBEC10] completion:0];
      }
    }

    else if (messageRemovalPolicy == 1)
    {
      [(IAMStorageCoordinator *)self->_storageCoordinator removeMessageEntry:entryCopy completion:0];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleMessageReachedMaximumDisplayCount:(id)count
{
  v9 = *MEMORY[0x277D85DE8];
  countCopy = count;
  v5 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = countCopy;
    _os_log_impl(&dword_254AF4000, v5, OS_LOG_TYPE_DEFAULT, "Reporting message with identifier = %{public}@ reached maximum display count.", &v7, 0xCu);
  }

  [(IAMStorageCoordinator *)self->_storageCoordinator reportEventForMessageIdentifier:countCopy withParams:MEMORY[0x277CBEC10] completion:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_incrementNumberOfDisplaysForMessageEntry:(id)entry
{
  entryCopy = entry;
  applicationMessage = [entryCopy applicationMessage];
  identifier = [applicationMessage identifier];
  v6 = [(IAMMessageCoordinator *)self _metadataEntryForMessageIdentifier:identifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  [v9 setNumberOfDisplays:{objc_msgSend(v9, "numberOfDisplays") + 1}];
  [(IAMMessageCoordinator *)self _updateMetadata:v9 forMessageEntry:entryCopy completion:0];
  numberOfDisplays = [v9 numberOfDisplays];
  if ([applicationMessage hasMaximumDisplays])
  {
    maximumDisplays = [applicationMessage maximumDisplays];
  }

  else
  {
    maximumDisplays = 1;
  }

  if (numberOfDisplays >= maximumDisplays)
  {
    if ([applicationMessage reportingEnabled])
    {
      [(IAMMessageCoordinator *)self _handleMessageReachedMaximumDisplayCount:identifier];
    }

    applicationMessage2 = [entryCopy applicationMessage];
    targets = [applicationMessage2 targets];
    v14 = [targets copy];
    v15 = [(IAMMessageCoordinator *)self _filterActiveTargetIdentifiers:v14];

    [(IAMMessageCoordinator *)self _reevaluateTargetsWithIdentifiers:v15 forTriggerContext:0 shouldNotifyTargetsIfPriorityMessageNonNil:0];
  }
}

- (void)_removeUserNotificationRemovalForMessageWithIdentifier:(id)identifier
{
  v15[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(IAMMessageCoordinator *)self _metadataEntryForMessageIdentifier:identifierCopy];
  if (([v5 didCancelUserNotification] & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x277CE2028]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v9 = [v6 initWithBundleIdentifier:bundleIdentifier];

    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"ams_", identifierCopy];
    v15[0] = identifierCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v9 removePendingNotificationRequestsWithIdentifiers:v11];

    v14 = identifierCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [v9 removeDeliveredNotificationsWithIdentifiers:v12];

    if (v5)
    {
      [v5 setDidCancelUserNotification:1];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (IAMMessageMetricsDelegate)metricsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metricsDelegate);

  return WeakRetained;
}

- (IAMApplicationContextProvider)applicationContext
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationContext);

  return WeakRetained;
}

@end