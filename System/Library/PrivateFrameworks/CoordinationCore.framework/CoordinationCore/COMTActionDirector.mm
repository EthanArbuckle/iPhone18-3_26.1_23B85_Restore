@interface COMTActionDirector
+ (id)directorForCluster:(id)cluster;
- (BOOL)_activate;
- (BOOL)activated;
- (COMTActionDirector)initWithCluster:(id)cluster;
- (COMTActionDirector)initWithProvider:(id)provider cluster:(id)cluster;
- (COMessageChannel)messageChannel;
- (id)_requestHandlerForAction:(id)action;
- (id)_requestHandlerForTypedAction:(id)action;
- (void)_notifyHandlerOfSnapshotChanges_unsafe:(id)changes_unsafe;
- (void)_withLock:(id)lock;
- (void)dealloc;
- (void)handleMembersChanged:(id)changed;
- (void)handlePerformActionRequest:(id)request from:(id)from callback:(id)callback;
- (void)registerHandler:(id)handler forType:(id)type actions:(id)actions queue:(id)queue;
- (void)removeHandler:(id)handler;
- (void)requestAction:(id)action members:(id)members activity:(id)activity fallback:(id)fallback withCompletion:(id)completion;
- (void)requestAction:(id)action members:(id)members activity:(id)activity withCompletion:(id)completion;
- (void)requestActions:(id)actions members:(id)members activity:(id)activity withCompletion:(id)completion;
@end

@implementation COMTActionDirector

- (COMessageChannel)messageChannel
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__COMTActionDirector_messageChannel__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMTActionDirector *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)activated
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__COMTActionDirector_activated__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMTActionDirector *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)dealloc
{
  monitor = [(COMTActionDirector *)self monitor];
  monitorObserver = [(COMTActionDirector *)self monitorObserver];
  [monitor removeObserverForSnapshots:monitorObserver];

  v5.receiver = self;
  v5.super_class = COMTActionDirector;
  [(COMTActionDirector *)&v5 dealloc];
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_activate
{
  cluster = [(COMTActionDirector *)self cluster];
  provider = [(COMTActionDirector *)self provider];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __31__COMTActionDirector__activate__block_invoke;
  v17[3] = &unk_278E15660;
  objc_copyWeak(&v18, &location);
  v5 = MEMORY[0x245D5FF10](v17);
  v6 = [provider clusterRoleMonitorWithCluster:cluster];
  monitor = self->_monitor;
  self->_monitor = v6;

  v8 = [(COClusterRoleMonitor *)self->_monitor addObserverForSnapshotsToDispatchQueue:self->_dispatchQueue block:v5];
  monitorObserver = self->_monitorObserver;
  self->_monitorObserver = v8;

  v10 = [provider messageChannelWithTopic:@"v1" cluster:cluster];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __31__COMTActionDirector__activate__block_invoke_2;
  v15[3] = &unk_278E15688;
  objc_copyWeak(&v16, &location);
  [v10 registerHandler:v15 forRequestClass:objc_opt_class()];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__COMTActionDirector__activate__block_invoke_3;
  v13[3] = &unk_278E156D8;
  objc_copyWeak(&v14, &location);
  [v10 activateWithCompletion:v13];
  messageChannel = self->_messageChannel;
  self->_messageChannel = v10;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
  return 1;
}

void __31__COMTActionDirector__activate__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleMembersChanged:v5];
  }
}

void __31__COMTActionDirector__activate__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = [v7 member];
    [WeakRetained handlePerformActionRequest:v11 from:v10 callback:v8];
  }
}

void __31__COMTActionDirector__activate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __31__COMTActionDirector__activate__block_invoke_4;
    v5[3] = &unk_278E156B0;
    v6 = v3;
    v7 = WeakRetained;
    [WeakRetained _withLock:v5];
  }
}

void __31__COMTActionDirector__activate__block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;

    v4 = COCoreLogForCategory(20);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __31__COMTActionDirector__activate__block_invoke_4_cold_1(v2);
    }
  }

  else
  {
    *(v1 + 12) = 1;
    v5 = [*v2 members];

    if (v5)
    {
      v6 = *v2;
      v7 = [*v2 members];
      [v6 _notifyHandlerOfSnapshotChanges_unsafe:v7];
    }

    v4 = COCoreLogForCategory(20);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v2;
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ message channel activation succeeded", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_requestHandlerForTypedAction:(id)action
{
  actionCopy = action;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__COMTActionDirector__requestHandlerForTypedAction___block_invoke;
  v8[3] = &unk_278E15700;
  v5 = actionCopy;
  v9 = v5;
  selfCopy = self;
  v11 = &v12;
  [(COMTActionDirector *)self _withLock:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __52__COMTActionDirector__requestHandlerForTypedAction___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) targetType];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*(a1 + 40) actionHandler];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 targetType];
        v10 = [v9 isEqualToString:v2];

        if (v10)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_requestHandlerForAction:(id)action
{
  actionCopy = action;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__COMTActionDirector__requestHandlerForAction___block_invoke;
  v8[3] = &unk_278E15700;
  v5 = actionCopy;
  v9 = v5;
  selfCopy = self;
  v11 = &v12;
  [(COMTActionDirector *)self _withLock:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __47__COMTActionDirector__requestHandlerForAction___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 40) actionHandler];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 actions];
        v11 = [v10 containsObject:v3];

        if (v11)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9);
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyHandlerOfSnapshotChanges_unsafe:(id)changes_unsafe
{
  v23 = *MEMORY[0x277D85DE8];
  changes_unsafeCopy = changes_unsafe;
  os_unfair_lock_assert_owner(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  actionHandler = [(COMTActionDirector *)self actionHandler];
  v6 = [actionHandler countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(actionHandler);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        delegate = [v10 delegate];
        if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
        {
          delegateQueue = [v10 delegateQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __61__COMTActionDirector__notifyHandlerOfSnapshotChanges_unsafe___block_invoke;
          block[3] = &unk_278E15728;
          v15 = delegate;
          selfCopy = self;
          v17 = changes_unsafeCopy;
          dispatch_async(delegateQueue, block);
        }
      }

      v7 = [actionHandler countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleMembersChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__COMTActionDirector_handleMembersChanged___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = changedCopy;
  v5 = changedCopy;
  [(COMTActionDirector *)self _withLock:v6];
}

void __43__COMTActionDirector_handleMembersChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) members];
  v4 = [v2 mutableCopy];

  [v4 minusSet:*(a1 + 40)];
  [*(a1 + 32) setMembers:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v3[12] == 1)
  {
    [v3 _notifyHandlerOfSnapshotChanges_unsafe:*(a1 + 40)];
  }
}

- (void)handlePerformActionRequest:(id)request from:(id)from callback:(id)callback
{
  v63 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  fromCopy = from;
  callbackCopy = callback;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dispatchQueue = [(COMTActionDirector *)self dispatchQueue];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v39 = requestCopy;
  v12 = requestCopy;
  v13 = v9;
  obj = [v12 actions];
  v42 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v42)
  {
    v41 = *v59;
    selfCopy = self;
    v37 = v10;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v59 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v58 + 1) + 8 * i);
        v16 = objc_alloc_init(MEMORY[0x277D2C900]);
        [v13 addObject:v16];
        actionIdentifier = [v15 actionIdentifier];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __63__COMTActionDirector_handlePerformActionRequest_from_callback___block_invoke;
        v52[3] = &unk_278E15778;
        v53 = dispatchQueue;
        v54 = v10;
        v18 = actionIdentifier;
        v55 = v18;
        selfCopy2 = self;
        v19 = v16;
        v57 = v19;
        v20 = MEMORY[0x245D5FF10](v52);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(COMTActionDirector *)self _requestHandlerForTypedAction:v15];
        }

        else
        {
          [(COMTActionDirector *)self _requestHandlerForAction:v15];
        }
        v21 = ;
        v22 = v21;
        if (v21)
        {
          delegate = [v21 delegate];
          if (delegate)
          {
            [v22 delegateQueue];
            v24 = dispatchQueue;
            v26 = v25 = v13;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __63__COMTActionDirector_handlePerformActionRequest_from_callback___block_invoke_111;
            block[3] = &unk_278E157A0;
            block[4] = selfCopy;
            block[5] = v15;
            v48 = v39;
            delegate = delegate;
            v49 = delegate;
            v50 = fromCopy;
            v51 = v20;
            dispatch_async(v26, block);

            v13 = v25;
            dispatchQueue = v24;
            v10 = v37;
          }
        }

        else
        {
          delegate = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B54C8 code:-7003 userInfo:0];
          (v20)[2](v20, 0, delegate);
        }

        self = selfCopy;
      }

      v42 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v42);
  }

  v27 = MEMORY[0x277D2C938];
  dispatchQueue2 = [(COMTActionDirector *)self dispatchQueue];
  v29 = [v27 schedulerWithDispatchQueue:dispatchQueue2];

  v30 = [MEMORY[0x277D2C900] combineAllFutures:v13 ignoringErrors:1 scheduler:v29];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __63__COMTActionDirector_handlePerformActionRequest_from_callback___block_invoke_113;
  v44[3] = &unk_278E157C8;
  v45 = v10;
  v46 = callbackCopy;
  v31 = v10;
  v32 = v13;
  v33 = callbackCopy;
  v34 = [v30 addCompletionBlock:v44];

  v35 = *MEMORY[0x277D85DE8];
}

void __63__COMTActionDirector_handlePerformActionRequest_from_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__COMTActionDirector_handlePerformActionRequest_from_callback___block_invoke_2;
  v11[3] = &unk_278E15750;
  v12 = v5;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = v6;
  v8 = *(a1 + 64);
  v16 = *(a1 + 56);
  v17 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __63__COMTActionDirector_handlePerformActionRequest_from_callback___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKey:*(a1 + 48)];
  }

  else
  {
    if (*(a1 + 56))
    {
      v3 = [[COMTErrorResult alloc] initWithError:*(a1 + 56) actionIdentifier:*(a1 + 48)];
      [*(a1 + 40) setObject:v3 forKey:*(a1 + 48)];
    }

    else
    {
      v3 = COCoreLogForCategory(20);
      if (os_log_type_enabled(&v3->super.super, OS_LOG_TYPE_ERROR))
      {
        __63__COMTActionDirector_handlePerformActionRequest_from_callback___block_invoke_2_cold_1(a1, &v3->super.super);
      }
    }
  }

  return [*(a1 + 72) finishWithNoResult];
}

uint64_t __63__COMTActionDirector_handlePerformActionRequest_from_callback___block_invoke_111(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(20);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v9 = 138544130;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ dispatching %{public}@ for %p to %p", &v9, 0x2Au);
  }

  result = [*(a1 + 56) director:*(a1 + 32) performAction:*(a1 + 40) from:*(a1 + 64) callback:*(a1 + 72)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __63__COMTActionDirector_handlePerformActionRequest_from_callback___block_invoke_113(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [[COMTPerformActionResponse alloc] initWithResults:*(a1 + 32)];
  (*(v1 + 16))(v1, v2, 0);
}

+ (id)directorForCluster:(id)cluster
{
  v15 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  os_unfair_lock_lock(&directorForCluster__lock);
  v4 = directorForCluster__directors;
  if (!directorForCluster__directors)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    v6 = directorForCluster__directors;
    directorForCluster__directors = weakToWeakObjectsMapTable;

    v4 = directorForCluster__directors;
  }

  v7 = [v4 objectForKey:clusterCopy];
  if (!v7)
  {
    v7 = [[COMTActionDirector alloc] initWithCluster:clusterCopy];
    [directorForCluster__directors setObject:v7 forKey:clusterCopy];
  }

  os_unfair_lock_unlock(&directorForCluster__lock);
  v8 = COCoreLogForCategory(20);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = clusterCopy;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ returned for cluster %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (COMTActionDirector)initWithProvider:(id)provider cluster:(id)cluster
{
  providerCopy = provider;
  clusterCopy = cluster;
  v17.receiver = self;
  v17.super_class = COMTActionDirector;
  v9 = [(COMTActionDirector *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_cluster, cluster);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.Coordination.COMTActionDirector", v11);
    dispatchQueue = v10->_dispatchQueue;
    v10->_dispatchQueue = v12;

    objc_storeStrong(&v10->_provider, provider);
    array = [MEMORY[0x277CBEB18] array];
    actionHandler = v10->_actionHandler;
    v10->_actionHandler = array;

    [(COMTActionDirector *)v10 _activate];
  }

  return v10;
}

- (COMTActionDirector)initWithCluster:(id)cluster
{
  clusterCopy = cluster;
  v5 = objc_alloc_init(_COMTActionDirectorServiceProvider);
  v6 = [(COMTActionDirector *)self initWithProvider:v5 cluster:clusterCopy];

  return v6;
}

- (void)requestAction:(id)action members:(id)members activity:(id)activity withCompletion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  completionCopy = completion;
  v22[0] = actionCopy;
  v12 = MEMORY[0x277CBEA60];
  activityCopy = activity;
  membersCopy = members;
  v15 = [v12 arrayWithObjects:v22 count:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__COMTActionDirector_requestAction_members_activity_withCompletion___block_invoke;
  v19[3] = &unk_278E157F0;
  v20 = actionCopy;
  v21 = completionCopy;
  v16 = actionCopy;
  v17 = completionCopy;
  [(COMTActionDirector *)self requestActions:v15 members:membersCopy activity:activityCopy withCompletion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __68__COMTActionDirector_requestAction_members_activity_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
    return;
  }

  v6 = [a2 results];
  v7 = [*(a1 + 32) actionIdentifier];
  v10 = [v6 objectForKey:v7];

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
      v9 = v10;
      goto LABEL_11;
    }

    v8 = [v10 error];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B54C8 code:-7001 userInfo:0];
  }

  v9 = 0;
LABEL_11:
  v11 = v9;
  (*(*(a1 + 40) + 16))();
}

- (void)requestActions:(id)actions members:(id)members activity:(id)activity withCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  membersCopy = members;
  activityCopy = activity;
  completionCopy = completion;
  v14 = [[COMTPerformActionRequest alloc] initWithActions:actionsCopy];
  v15 = v14;
  if (activityCopy)
  {
    [(COMessageChannelRequest *)v14 setNetworkActivity:activityCopy];
  }

  v16 = COCoreLogForCategory(20);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v27 = 2048;
    v28 = v15;
    v29 = 2114;
    v30 = actionsCopy;
    v31 = 2114;
    v32 = membersCopy;
    _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting %p for actions %{public}@ from members %{public}@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  messageChannel = [(COMTActionDirector *)self messageChannel];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__COMTActionDirector_requestActions_members_activity_withCompletion___block_invoke;
  v21[3] = &unk_278E15818;
  objc_copyWeak(&v24, buf);
  v18 = v15;
  v22 = v18;
  v19 = completionCopy;
  v23 = v19;
  [messageChannel sendRequest:v18 members:membersCopy withCompletionHandler:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);

  v20 = *MEMORY[0x277D85DE8];
}

void __69__COMTActionDirector_requestActions_members_activity_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = COCoreLogForCategory(20);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v14 = 138544130;
      v15 = WeakRetained;
      v16 = 2048;
      v17 = v6;
      v18 = 2048;
      v19 = v10;
      v20 = 2114;
      v21 = v7;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ recevied response %p for request %p (error: %{public}@)", &v14, 0x2Au);
    }

    if (v7)
    {
      v11 = *(*(a1 + 40) + 16);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B54C8 code:-7002 userInfo:0];
        (*(*(a1 + 40) + 16))();

        goto LABEL_9;
      }

      v11 = *(*(a1 + 40) + 16);
    }

    v11();
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)requestAction:(id)action members:(id)members activity:(id)activity fallback:(id)fallback withCompletion:(id)completion
{
  actionCopy = action;
  membersCopy = members;
  activityCopy = activity;
  fallbackCopy = fallback;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__COMTActionDirector_requestAction_members_activity_fallback_withCompletion___block_invoke;
  v22[3] = &unk_278E15840;
  objc_copyWeak(&v28, &location);
  v17 = fallbackCopy;
  v26 = v17;
  v18 = actionCopy;
  v23 = v18;
  v19 = membersCopy;
  v24 = v19;
  v20 = activityCopy;
  v25 = v20;
  v21 = completionCopy;
  v27 = v21;
  [(COMTActionDirector *)self requestAction:v18 members:v19 activity:v20 withCompletion:v22];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __77__COMTActionDirector_requestAction_members_activity_fallback_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = [v6 domain];
  if (![v8 isEqualToString:0x2857B54C8] || objc_msgSend(v6, "code") != -7003)
  {
    v9 = [v6 domain];
    if ([v9 isEqualToString:*MEMORY[0x277CFCF10]])
    {
      v10 = [v6 code];

      if (v10 == -1106)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

LABEL_12:
    (*(*(a1 + 64) + 16))();
    goto LABEL_13;
  }

LABEL_8:
  v11 = (*(*(a1 + 56) + 16))();
  v12 = COCoreLogForCategory(20);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = 138412802;
    v16 = WeakRetained;
    v17 = 2048;
    v18 = v14;
    v19 = 2112;
    v20 = v11;
    _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%@ action %p not handled by remote, using fallback: %@", &v15, 0x20u);
  }

  [WeakRetained requestAction:v11 members:*(a1 + 40) activity:*(a1 + 48) withCompletion:*(a1 + 64)];
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerHandler:(id)handler forType:(id)type actions:(id)actions queue:(id)queue
{
  handlerCopy = handler;
  typeCopy = type;
  actionsCopy = actions;
  queueCopy = queue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__COMTActionDirector_registerHandler_forType_actions_queue___block_invoke;
  v18[3] = &unk_278E15868;
  v18[4] = self;
  v19 = typeCopy;
  v20 = handlerCopy;
  v21 = actionsCopy;
  v22 = queueCopy;
  v14 = queueCopy;
  v15 = actionsCopy;
  v16 = handlerCopy;
  v17 = typeCopy;
  [(COMTActionDirector *)self _withLock:v18];
}

void __60__COMTActionDirector_registerHandler_forType_actions_queue___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) actionHandler];
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v4;
  v6 = *v33;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v33 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v32 + 1) + 8 * i);
      v9 = [v8 targetType];
      v10 = [v9 isEqualToString:*(a1 + 40)];

      if (v10)
      {
        v13 = COCoreLogForCategory(20);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __60__COMTActionDirector_registerHandler_forType_actions_queue___block_invoke_cold_2(v2);
        }

        goto LABEL_15;
      }

      v11 = *(a1 + 56);
      v12 = [v8 actions];
      LODWORD(v11) = [v11 intersectsSet:v12];

      if (v11)
      {
        v13 = COCoreLogForCategory(20);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __60__COMTActionDirector_registerHandler_forType_actions_queue___block_invoke_cold_1(v2);
        }

LABEL_15:

        goto LABEL_16;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v14 = [[COMTActionRequestHandler alloc] initWithType:*(a1 + 40) actions:*(a1 + 56) delegate:*(a1 + 48) dispatchQueue:*(a1 + 64)];
  v15 = [*(a1 + 32) actionHandler];
  [v15 addObject:v14];

  v16 = [*(a1 + 32) members];
  if (v16)
  {
    v17 = v16;
    v18 = *(a1 + 48);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = *(a1 + 64);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __60__COMTActionDirector_registerHandler_forType_actions_queue___block_invoke_124;
      v29[3] = &unk_278E156B0;
      v21 = *(a1 + 48);
      v22 = *(a1 + 32);
      v30 = v21;
      v31 = v22;
      dispatch_async(v20, v29);
    }
  }

  v23 = COCoreLogForCategory(20);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    *buf = 138544130;
    v37 = v24;
    v38 = 2048;
    v39 = v26;
    v40 = 2114;
    v41 = v25;
    v42 = 2114;
    v43 = v27;
    _os_log_impl(&dword_244378000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ registered delegate %p for type %{public}@ and actions %{public}@", buf, 0x2Au);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __60__COMTActionDirector_registerHandler_forType_actions_queue___block_invoke_124(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 members];
  [v1 director:v2 membersChanged:v3];
}

- (void)removeHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__COMTActionDirector_removeHandler___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(COMTActionDirector *)self _withLock:v6];
}

void __36__COMTActionDirector_removeHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) actionHandler];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      v9 = [v8 delegate];
      v10 = *(a1 + 40);

      if (v9 == v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v8;

    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = [*v2 actionHandler];
    [v12 removeObject:v11];

    v13 = COCoreLogForCategory(20);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      *buf = 138543618;
      v22 = v14;
      v23 = 2048;
      v24 = v15;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ removed delegate %p", buf, 0x16u);
    }
  }

  else
  {
LABEL_9:

LABEL_14:
    v11 = COCoreLogForCategory(20);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __36__COMTActionDirector_removeHandler___block_invoke_cold_1(v2);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __31__COMTActionDirector__activate__block_invoke_4_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  *v5 = 138543618;
  *&v5[4] = v1;
  *&v5[12] = 2114;
  *&v5[14] = *v2;
  OUTLINED_FUNCTION_1(&dword_244378000, v2, v3, "%{public}@ message channel activation failed: %{public}@", *v5, *&v5[8], *&v5[16]);
  v4 = *MEMORY[0x277D85DE8];
}

void __63__COMTActionDirector_handlePerformActionRequest_from_callback___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "%{public}@ action callback did not provide result or error", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __60__COMTActionDirector_registerHandler_forType_actions_queue___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_244378000, v3, v4, "%{public}@ failed to register delegate %p: duplicate action");
  v5 = *MEMORY[0x277D85DE8];
}

void __60__COMTActionDirector_registerHandler_forType_actions_queue___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_244378000, v3, v4, "%{public}@ failed to register delegate %p: duplicate target");
  v5 = *MEMORY[0x277D85DE8];
}

void __36__COMTActionDirector_removeHandler___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_244378000, v3, v4, "%{public}@ failed to remove delegate %p: not found");
  v5 = *MEMORY[0x277D85DE8];
}

@end