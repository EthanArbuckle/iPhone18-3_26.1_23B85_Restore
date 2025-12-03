@interface HDWorkoutEventsManager
- (HDWorkoutEventsManager)initWithProfile:(id)profile;
- (id)takeSessionAssertionWithOwnerIdentifier:(id)identifier activityType:(unint64_t)type sessionIdentifier:(id)sessionIdentifier eventsDelegate:(id)delegate swimTracker:(id)tracker;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)fakeActivityDetection:(id)detection workoutActivity:(id)activity;
- (void)requestPendingEventsThroughDate:(id)date sessionIdentifier:(id)identifier completion:(id)completion;
- (void)unitTest_setCMWorkoutManager:(id)manager;
- (void)updateEventCollectorsForActivityType:(unint64_t)type activityIdentifier:(id)identifier;
@end

@implementation HDWorkoutEventsManager

- (HDWorkoutEventsManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDWorkoutEventsManager;
  v5 = [(HDWorkoutEventsManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277D10AC0]);
    assertionManager = v6->_assertionManager;
    v6->_assertionManager = v9;

    [(HDAssertionManager *)v6->_assertionManager addObserver:v6 forAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierEventCollection" queue:v6->_queue];
  }

  return v6;
}

- (id)takeSessionAssertionWithOwnerIdentifier:(id)identifier activityType:(unint64_t)type sessionIdentifier:(id)sessionIdentifier eventsDelegate:(id)delegate swimTracker:(id)tracker
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  delegateCopy = delegate;
  trackerCopy = tracker;
  v16 = [_HDEventsCollectionAssertion alloc];
  if (v16)
  {
    v32.receiver = v16;
    v32.super_class = _HDEventsCollectionAssertion;
    v17 = [(HDWorkoutEventsManager *)&v32 initWithAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierEventCollection" ownerIdentifier:identifierCopy];
  }

  else
  {
    v17 = 0;
  }

  objc_storeWeak(&self->_eventsDelegate, delegateCopy);
  swimTracker = self->_swimTracker;
  self->_swimTracker = trackerCopy;
  v19 = trackerCopy;

  assertionManager = self->_assertionManager;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __124__HDWorkoutEventsManager_takeSessionAssertionWithOwnerIdentifier_activityType_sessionIdentifier_eventsDelegate_swimTracker___block_invoke;
  v27[3] = &unk_278613608;
  v27[4] = self;
  v28 = v17;
  v30 = sessionIdentifierCopy;
  typeCopy = type;
  v29 = delegateCopy;
  v21 = sessionIdentifierCopy;
  v22 = delegateCopy;
  v23 = v17;
  if ([(HDAssertionManager *)assertionManager takeAssertion:v23 preNotificationBlock:v27])
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v24;
}

void __124__HDWorkoutEventsManager_takeSessionAssertionWithOwnerIdentifier_activityType_sessionIdentifier_eventsDelegate_swimTracker___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__HDWorkoutEventsManager_takeSessionAssertionWithOwnerIdentifier_activityType_sessionIdentifier_eventsDelegate_swimTracker___block_invoke_2;
  block[3] = &unk_278613608;
  v4 = *(a1 + 40);
  v13 = *(a1 + 64);
  *&v5 = v4;
  *(&v5 + 1) = *v2;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v3, block);
}

void __124__HDWorkoutEventsManager_takeSessionAssertionWithOwnerIdentifier_activityType_sessionIdentifier_eventsDelegate_swimTracker___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v24 = *(a1 + 48);
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = _allEventCollectorClasses();
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          if ([(objc_class *)v10 isAvailableInCurrentHardware]&& [(objc_class *)v10 supportsWorkoutActivityType:v2])
          {
            v11 = [v10 alloc];
            WeakRetained = objc_loadWeakRetained((v3 + 8));
            v13 = [v11 initWithProfile:WeakRetained delegate:v24];

            v14 = *(v3 + 48);
            v15 = v13;
            v16 = v14;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v16 registerObserver:v15];
            }

            [v4 addObject:v15];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  [(_HDEventsCollectionAssertion *)*(a1 + 32) setEventCollectors:v4];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = *(a1 + 32);
  if (v17)
  {
    v17 = v17[11];
  }

  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v25 + 1) + 8 * j) startWithSessionId:*(a1 + 56)];
      }

      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)requestPendingEventsThroughDate:(id)date sessionIdentifier:(id)identifier completion:(id)completion
{
  dateCopy = date;
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke;
  v15[3] = &unk_278613680;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = dateCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dateCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

void __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  [*(*(a1 + 32) + 16) activeAssertionsForIdentifier:@"HDWorkoutSessionAssertionIdentifierEventCollection"];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v24 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v24)
  {
    v23 = *v35;
    do
    {
      v3 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v3;
        v4 = *(*(&v34 + 1) + 8 * v3);
        _HKInitializeLogging();
        v5 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          *buf = 138543618;
          v40 = v6;
          v41 = 2114;
          v42 = v4;
          _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting post-stop events collection for active assertion %{public}@", buf, 0x16u);
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        if (v4)
        {
          v7 = v4[11];
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v31;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v31 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v30 + 1) + 8 * i);
              v14 = [v13 sessionId];
              v15 = *(a1 + 40);

              if (v14 == v15)
              {
                dispatch_group_enter(v2);
                _HKInitializeLogging();
                v16 = *MEMORY[0x277CCC330];
                if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
                {
                  v17 = *(a1 + 32);
                  *buf = 138543618;
                  v40 = v17;
                  v41 = 2114;
                  v42 = v13;
                  _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting post-stop events collection for %{public}@", buf, 0x16u);
                }

                v18 = *(a1 + 48);
                v28[0] = MEMORY[0x277D85DD0];
                v28[1] = 3221225472;
                v28[2] = __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke_307;
                v28[3] = &unk_278613630;
                v28[4] = *(a1 + 32);
                v28[5] = v13;
                v29 = v2;
                [v13 requestPendingEventsThroughDate:v18 completion:v28];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v10);
        }

        v3 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v19 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
      v24 = v19;
    }

    while (v19);
  }

  v20 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke_309;
  block[3] = &unk_278613658;
  v27 = *(a1 + 56);
  dispatch_group_notify(v2, v20, block);

  v21 = *MEMORY[0x277D85DE8];
}

void __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke_307(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  v7 = *MEMORY[0x277CCC330];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully finished collecting post-stop events pending for %{public}@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = 138543874;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    v17 = 2114;
    v18 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to collect post-stop pending events for %{public}@, error: %{public}@", &v13, 0x20u);
  }

  dispatch_group_leave(*(a1 + 48));

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __87__HDWorkoutEventsManager_requestPendingEventsThroughDate_sessionIdentifier_completion___block_invoke_309(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateEventCollectorsForActivityType:(unint64_t)type activityIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating event collectors", buf, 0xCu);
  }

  if (type != 83)
  {
    v9 = [(HDAssertionManager *)self->_assertionManager activeAssertionsForIdentifier:@"HDWorkoutSessionAssertionIdentifierEventCollection"];
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([v9 count])
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HDWorkoutEventsManager_updateEventCollectorsForActivityType_activityIdentifier___block_invoke;
      block[3] = &unk_278613608;
      v15 = v9;
      typeCopy = type;
      v16 = v10;
      selfCopy2 = self;
      v18 = identifierCopy;
      dispatch_sync(queue, block);
    }

    else
    {
      _HKInitializeLogging();
      v12 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: No active event collector assertions to update", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __82__HDWorkoutEventsManager_updateEventCollectorsForActivityType_activityIdentifier___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(a1 + 32);
  v28 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v28)
  {
    v27 = *v41;
    do
    {
      v2 = 0;
      do
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v40 + 1) + 8 * v2);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v29 = v3;
        v30 = v2;
        if (v3)
        {
          v4 = *(v3 + 88);
        }

        else
        {
          v4 = 0;
        }

        v5 = v4;
        v6 = [v5 countByEnumeratingWithState:&v36 objects:v49 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v37;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v37 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v36 + 1) + 8 * i);
              if ([objc_opt_class() supportsWorkoutActivityType:*(a1 + 64)])
              {
                [*(a1 + 40) addObject:v10];
              }

              else
              {
                [v10 stop];
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v36 objects:v49 count:16];
          }

          while (v7);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v11 = _allEventCollectorClasses();
        v12 = [v11 countByEnumeratingWithState:&v32 objects:v48 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * j);
              if ([(objc_class *)v16 supportsWorkoutActivityType:*(a1 + 64)])
              {
                v17 = *(a1 + 40);
                v31[0] = MEMORY[0x277D85DD0];
                v31[1] = 3221225472;
                v31[2] = __82__HDWorkoutEventsManager_updateEventCollectorsForActivityType_activityIdentifier___block_invoke_2;
                v31[3] = &__block_descriptor_40_e33_B16__0__HDWorkoutEventCollector_8lu32l8;
                v31[4] = v16;
                if ([v17 hk_containsObjectPassingTest:v31])
                {
                  _HKInitializeLogging();
                  v18 = *MEMORY[0x277CCC330];
                  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
                  {
                    v19 = *(a1 + 48);
                    *buf = 138543618;
                    v45 = v19;
                    v46 = 2114;
                    v47 = v16;
                    _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Event collector %{public}@, already exists", buf, 0x16u);
                  }
                }

                else
                {
                  v20 = [v16 alloc];
                  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
                  v22 = objc_loadWeakRetained((*(a1 + 48) + 40));
                  v23 = [v20 initWithProfile:WeakRetained delegate:v22];

                  [*(a1 + 40) addObject:v23];
                  [v23 startWithSessionId:*(a1 + 56)];
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v32 objects:v48 count:16];
          }

          while (v13);
        }

        [(_HDEventsCollectionAssertion *)v29 setEventCollectors:?];
        v2 = v30 + 1;
      }

      while (v30 + 1 != v28);
      v24 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
      v28 = v24;
    }

    while (v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)fakeActivityDetection:(id)detection workoutActivity:(id)activity
{
  v30 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  activityCopy = activity;
  [(HDAssertionManager *)self->_assertionManager activeAssertionsForIdentifier:@"HDWorkoutSessionAssertionIdentifierEventCollection"];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        if (v12)
        {
          v12 = v12[11];
        }

        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v21;
          do
          {
            v17 = 0;
            do
            {
              if (*v21 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v20 + 1) + 8 * v17++) fakeActivityDetection:detectionCopy workoutActivity:activityCopy];
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v15);
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  v18 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_queue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (invalidatedCopy)
  {
    v6 = invalidatedCopy[11];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) stop];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)unitTest_setCMWorkoutManager:(id)manager
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_eventCollectors;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) unitTest_setCMWorkoutManager:{managerCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end