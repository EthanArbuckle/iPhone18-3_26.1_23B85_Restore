@interface HDActiveDataCollectionObserverServer
+ (id)requiredEntitlements;
+ (void)launchObservingProcessesForTypes:(id)types;
- (HDActiveDataCollectionObserverServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_computeActivelyCollectedTypesForWorkout:(char)workout alwaysNotify:;
- (void)_queue_didUpdateCurrentWorkout:(uint64_t)workout;
- (void)remote_subscribeForQuantityTypes:(id)types;
- (void)remote_unsubscribeForQuantityTypes:(id)types;
- (void)workoutManager:(id)manager currentWorkout:(id)workout didChangeToState:(int64_t)state;
- (void)workoutManager:(id)manager didUpdateCurrentWorkout:(id)workout;
@end

@implementation HDActiveDataCollectionObserverServer

- (HDActiveDataCollectionObserverServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v12.receiver = self;
  v12.super_class = HDActiveDataCollectionObserverServer;
  v6 = [(HDStandardTaskServer *)&v12 initWithUUID:d configuration:configuration client:client delegate:delegate];
  if (v6)
  {
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB98]);
    observedTypes = v6->_observedTypes;
    v6->_observedTypes = v9;
  }

  return v6;
}

+ (void)launchObservingProcessesForTypes:(id)types
{
  v18 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  objc_opt_self();
  v5 = MEMORY[0x277CBEB98];
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9B0]];
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:{*MEMORY[0x277CCC9C0], v6}];
  *&v15[4] = v7;
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C8]];
  v16 = v8;
  v9 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v17 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:4];
  v11 = [v5 setWithArray:v10];

  LODWORD(v6) = [typesCopy intersectsSet:v11];
  if (v6)
  {
    notify_post(*MEMORY[0x277CCE3C0]);
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      *v15 = self;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Posting notification for Bluetooth to start collection", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)remote_subscribeForQuantityTypes:(id)types
{
  typesCopy = types;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HDActiveDataCollectionObserverServer_remote_subscribeForQuantityTypes___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = typesCopy;
  v6 = typesCopy;
  dispatch_sync(queue, v7);
}

void __73__HDActiveDataCollectionObserverServer_remote_subscribeForQuantityTypes___block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 48) count] && objc_msgSend(*(a1 + 40), "count"))
  {
    v2 = [*(a1 + 32) profile];
    v3 = [v2 dataCollectionManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__HDActiveDataCollectionObserverServer_remote_subscribeForQuantityTypes___block_invoke_2;
    v12[3] = &unk_2786214A8;
    v12[4] = *(a1 + 32);
    [v3 _setAggregatorConfigurationChangeHandler:v12];

    v4 = [*(a1 + 32) profile];
    v5 = [v4 workoutManager];
    [v5 registerCurrentWorkoutObserver:*(a1 + 32)];
  }

  v6 = [*(*(a1 + 32) + 48) setByAddingObjectsFromArray:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;

  v9 = [*(a1 + 32) profile];
  v10 = [v9 workoutManager];
  v11 = [v10 currentWorkoutSessionServer];

  [(HDActiveDataCollectionObserverServer *)*(a1 + 32) _queue_computeActivelyCollectedTypesForWorkout:v11 alwaysNotify:1];
}

void __73__HDActiveDataCollectionObserverServer_remote_subscribeForQuantityTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HDActiveDataCollectionObserverServer_remote_subscribeForQuantityTypes___block_invoke_3;
  v7[3] = &unk_278613920;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __73__HDActiveDataCollectionObserverServer_remote_subscribeForQuantityTypes___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 40));
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([*(v1 + 48) containsObject:v5])
      {
        v2 = [v1 profile];
        v3 = [v2 workoutManager];
        v4 = [v3 currentWorkoutSessionServer];

        [(HDActiveDataCollectionObserverServer *)v1 _queue_computeActivelyCollectedTypesForWorkout:v4 alwaysNotify:0];
      }
    }
  }
}

- (void)_queue_computeActivelyCollectedTypesForWorkout:(char)workout alwaysNotify:
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (!self)
  {
    goto LABEL_40;
  }

  dispatch_assert_queue_V2(*(self + 40));
  v5 = [*(self + 48) copy];
  profile = [self profile];
  dataCollectionManager = [profile dataCollectionManager];

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  selfCopy = self;
  profile2 = [self profile];
  workoutManager = [profile2 workoutManager];
  isInHeartRateRecovery = [workoutManager isInHeartRateRecovery];

  isActive = [v4 isActive];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  v38 = v8;
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = v11;
  v13 = *v44;
  v36 = *MEMORY[0x277CCCB10];
  v34 = *MEMORY[0x277CCE288];
  v37 = dataCollectionManager;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v44 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v43 + 1) + 8 * i);
      v16 = [dataCollectionManager aggregatorForType:v15];
      configuration = [v16 configuration];

      if (v4)
      {
        if (isActive)
        {
          hasActiveWorkout = [configuration hasActiveWorkout];
        }

        else
        {
          hasActiveWorkout = 0;
        }

        if ([v15 code] == 5)
        {
          if ((hasActiveWorkout | isInHeartRateRecovery))
          {
            goto LABEL_25;
          }
        }

        else if (([v4 isGymKit] & 1) == 0 && ((hasActiveWorkout ^ 1) & 1) == 0)
        {
          v19 = v15;
          v20 = v4;
          identifier = [v19 identifier];
          v22 = [identifier isEqualToString:v36];

          if (!v22 || ([v20 currentActivityConfiguration], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "locationType"), v23, v24 != 3))
          {

            dataCollectionManager = v37;
            v8 = v38;
LABEL_25:
            [v8 addObject:v15];
            goto LABEL_26;
          }

          client = [selfCopy client];
          sourceBundleIdentifier = [client sourceBundleIdentifier];

          LOBYTE(client) = [sourceBundleIdentifier isEqualToString:v34];
          dataCollectionManager = v37;
          v8 = v38;
          if ((client & 1) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else if ([v15 code] == 5 && ((objc_msgSend(configuration, "hasForegroundObserver") & 1) != 0 || objc_msgSend(configuration, "hasBackgroundObserver")))
      {
        goto LABEL_25;
      }

LABEL_26:
    }

    v12 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v12);
LABEL_28:

  if ([v8 count])
  {
    v27 = [v4 isPaused] | isInHeartRateRecovery;
  }

  else
  {
    v27 = 1;
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __100__HDActiveDataCollectionObserverServer__queue_computeActivelyCollectedTypesForWorkout_alwaysNotify___block_invoke;
  v42[3] = &unk_2786138D0;
  v42[4] = selfCopy;
  v28 = [selfCopy remoteObjectProxyWithErrorHandler:v42];
  if (v28)
  {
    if (workout)
    {
      allObjects = [v38 allObjects];
      [v28 client_updatedCollectedTypes:allObjects];

      objc_storeStrong((selfCopy + 56), v38);
      goto LABEL_34;
    }

    if (([*(selfCopy + 56) isEqualToSet:v38] & 1) == 0)
    {
      allObjects2 = [v38 allObjects];
      [v28 client_updatedCollectedTypes:allObjects2];

      objc_storeStrong((selfCopy + 56), v38);
      if (workout)
      {
LABEL_34:
        v30 = v27 & 1;
        goto LABEL_38;
      }
    }

    v30 = v27 & 1;
    if (*(selfCopy + 64) != (v27 & 1))
    {
LABEL_38:
      [v28 client_didChangeAllowCollectionPause:v27 & 1];
      *(selfCopy + 64) = v30;
    }
  }

LABEL_40:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)remote_unsubscribeForQuantityTypes:(id)types
{
  typesCopy = types;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HDActiveDataCollectionObserverServer_remote_unsubscribeForQuantityTypes___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = typesCopy;
  v6 = typesCopy;
  dispatch_sync(queue, v7);
}

void __75__HDActiveDataCollectionObserverServer_remote_unsubscribeForQuantityTypes___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  v4 = [v2 hk_minus:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;

  if (![*(*(a1 + 32) + 48) count])
  {
    v7 = [*(a1 + 32) profile];
    v8 = [v7 dataCollectionManager];
    [v8 _setAggregatorConfigurationChangeHandler:0];

    v9 = [*(a1 + 32) profile];
    v10 = [v9 workoutManager];
    [v10 unregisterCurrentWorkoutObserver:*(a1 + 32)];
  }

  v11 = [*(a1 + 32) profile];
  v12 = [v11 workoutManager];
  v13 = [v12 currentWorkoutSessionServer];

  [(HDActiveDataCollectionObserverServer *)*(a1 + 32) _queue_computeActivelyCollectedTypesForWorkout:v13 alwaysNotify:0];
}

- (void)workoutManager:(id)manager didUpdateCurrentWorkout:(id)workout
{
  workoutCopy = workout;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HDActiveDataCollectionObserverServer_workoutManager_didUpdateCurrentWorkout___block_invoke;
  v8[3] = &unk_278613920;
  v8[4] = self;
  v9 = workoutCopy;
  v7 = workoutCopy;
  dispatch_sync(queue, v8);
}

- (void)_queue_didUpdateCurrentWorkout:(uint64_t)workout
{
  v9 = a2;
  if (workout)
  {
    dispatch_assert_queue_V2(*(workout + 40));
    profile = [workout profile];
    workoutManager = [profile workoutManager];
    isInHeartRateRecovery = [workoutManager isInHeartRateRecovery];

    isPaused = [v9 isPaused];
    v7 = *(workout + 64);
    if (v7 != isPaused || v7 != isInHeartRateRecovery)
    {
      [(HDActiveDataCollectionObserverServer *)workout _queue_computeActivelyCollectedTypesForWorkout:v9 alwaysNotify:0];
    }
  }
}

- (void)workoutManager:(id)manager currentWorkout:(id)workout didChangeToState:(int64_t)state
{
  workoutCopy = workout;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__HDActiveDataCollectionObserverServer_workoutManager_currentWorkout_didChangeToState___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v10 = workoutCopy;
  v8 = workoutCopy;
  dispatch_sync(queue, v9);
}

void __100__HDActiveDataCollectionObserverServer__queue_computeActivelyCollectedTypesForWorkout_alwaysNotify___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of actively collected types: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end