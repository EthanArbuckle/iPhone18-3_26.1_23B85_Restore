@interface DNDSWorkoutTriggerManager
- (BOOL)_isWorkoutDNDMigrated;
- (BOOL)_isWorkoutDNDNanoPreferenceEnabled;
- (BOOL)_isWorkoutTriggerEnabledForModeConfiguration:(id)configuration;
- (DNDSWorkoutTriggerManager)init;
- (DNDSWorkoutTriggerManagerDataSource)dataSource;
- (id)_accessor;
- (id)_assertionIdentifierForHealthKitWorkoutEvent:(id)event;
- (void)_configureWorkoutTriggerWithMode:(id)mode;
- (void)_migrateWorkoutDNDNanoPreference;
- (void)_refresh;
- (void)_refreshMigratingIfNecessary;
- (void)_refreshWithMode:(id)mode event:(id)event;
- (void)_setWorkoutDNDIsMigrated;
- (void)pairedDeviceDidChange;
- (void)refresh;
- (void)refreshMigratingIfNecessary;
@end

@implementation DNDSWorkoutTriggerManager

- (DNDSWorkoutTriggerManager)init
{
  v13.receiver = self;
  v13.super_class = DNDSWorkoutTriggerManager;
  v2 = [(DNDSWorkoutTriggerManager *)&v13 init];
  if (v2)
  {
    v3 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.private.biome-workout.queue"];
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sinks = v2->_sinks;
    v2->_sinks = dictionary;

    v2->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277D2BA60]);
    npsManager = v2->_npsManager;
    v2->_npsManager = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.donotdisturb.private.nps-workout.queue", v9);
    npsQueue = v2->_npsQueue;
    v2->_npsQueue = v10;
  }

  return v2;
}

- (void)refreshMigratingIfNecessary
{
  npsQueue = self->_npsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DNDSWorkoutTriggerManager_refreshMigratingIfNecessary__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(npsQueue, block);
}

- (void)_refreshMigratingIfNecessary
{
  dispatch_assert_queue_V2(self->_npsQueue);
  [(DNDSWorkoutTriggerManager *)self _migrateWorkoutDNDNanoPreference];

  [(DNDSWorkoutTriggerManager *)self _refresh];
}

- (void)refresh
{
  npsQueue = self->_npsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DNDSWorkoutTriggerManager_refresh__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(npsQueue, block);
}

- (void)_refresh
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained workoutModeForWorkoutTriggerManager:self];

  if ([(DNDSWorkoutTriggerManager *)self _isWorkoutTriggerEnabledForModeConfiguration:v4])
  {
    mode = [v4 mode];
  }

  else
  {
    mode = 0;
  }

  [(DNDSWorkoutTriggerManager *)self _configureWorkoutTriggerWithMode:mode];
  [(DNDSWorkoutTriggerManager *)self _refreshWithMode:mode event:0];
  v6 = DNDSLogWorkoutTrigger;
  if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = mode;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Refresh workout trigger for system: mode=%{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)pairedDeviceDidChange
{
  objc_initWeak(&location, self);
  npsQueue = self->_npsQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__DNDSWorkoutTriggerManager_pairedDeviceDidChange__block_invoke;
  v4[3] = &unk_278F8AC08;
  objc_copyWeak(&v5, &location);
  dispatch_async(npsQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__DNDSWorkoutTriggerManager_pairedDeviceDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[4];
    WeakRetained[4] = 0;
    v3 = WeakRetained;

    [v3 _refreshMigratingIfNecessary];
    WeakRetained = v3;
  }
}

- (void)_refreshWithMode:(id)mode event:(id)event
{
  v72 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  modeCopy = mode;
  dataSource = [(DNDSWorkoutTriggerManager *)self dataSource];
  modeIdentifier = [modeCopy modeIdentifier];

  v67 = 0;
  v10 = [dataSource triggerManager:self assertionsWithClientIdentifer:@"com.apple.donotdisturb.private.workout-trigger" error:&v67];
  v11 = v67;
  if (eventCopy)
  {
    if (modeIdentifier)
    {
      eventBody = [eventCopy eventBody];
      eventType = [eventBody eventType];

      v59 = [(DNDSWorkoutTriggerManager *)self _assertionIdentifierForHealthKitWorkoutEvent:eventCopy];
      firstObject = [v10 firstObject];
      details = [firstObject details];
      identifier = [details identifier];

      if (eventType == 1)
      {
        if ([v10 count])
        {
          v18 = v59;
          v17 = identifier;
          if ([v59 isEqualToString:identifier])
          {
            v62[0] = MEMORY[0x277D85DD0];
            v62[1] = 3221225472;
            v62[2] = __52__DNDSWorkoutTriggerManager__refreshWithMode_event___block_invoke;
            v62[3] = &unk_278F8A0B0;
            v63 = modeIdentifier;
            v37 = [v10 bs_filter:v62];
            firstObject2 = [v37 firstObject];

            if (firstObject2)
            {
              uUID = [firstObject2 UUID];
              v61 = v11;
              v40 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID reason:2 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.workout-trigger" error:&v61];
              v21 = v61;

              v41 = DNDSLogWorkoutTrigger;
              if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
              {
                v42 = v41;
                details2 = [firstObject2 details];
                modeIdentifier2 = [details2 modeIdentifier];
                *buf = 138543362;
                v69 = modeIdentifier2;
                _os_log_impl(&dword_24912E000, v42, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion workout trigger in response to event; previousModeID=%{public}@", buf, 0xCu);

                v17 = identifier;
              }
            }

            else
            {
              v21 = v11;
            }

            v18 = v59;

            v19 = v63;
LABEL_30:

            v11 = v21;
          }

LABEL_31:

          goto LABEL_32;
        }
      }

      else if (!eventType)
      {
        v17 = identifier;
        v18 = v59;
        if ([v10 count] && (objc_msgSend(v59, "isEqualToString:", identifier) & 1) != 0)
        {
          goto LABEL_31;
        }

        v19 = objc_alloc_init(MEMORY[0x277D05A40]);
        [v19 setIdentifier:v59];
        [v19 setLifetime:0];
        [v19 setModeIdentifier:modeIdentifier];
        [v19 setReason:1];
        v64 = v11;
        v20 = [dataSource triggerManager:self takeModeAssertionWithDetails:v19 clientIdentifier:@"com.apple.donotdisturb.private.workout-trigger" error:&v64];
        v21 = v64;

        v22 = DNDSLogWorkoutTrigger;
        if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v69 = modeIdentifier;
          _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for workout trigger in response to event; modeID=%{public}@", buf, 0xCu);
        }

        goto LABEL_30;
      }

      v17 = identifier;
      v18 = v59;
      goto LABEL_31;
    }

    if ([v10 count])
    {
      firstObject3 = [v10 firstObject];
      uUID2 = [firstObject3 UUID];
      v60 = v11;
      v31 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID2 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.workout-trigger" error:&v60];
      v28 = v60;

      v32 = DNDSLogWorkoutTrigger;
      if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        firstObject4 = [v10 firstObject];
        details3 = [firstObject4 details];
        modeIdentifier3 = [details3 modeIdentifier];
        *buf = 138543362;
        v69 = modeIdentifier3;
        _os_log_impl(&dword_24912E000, v33, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for workout trigger in response to event; previousModeID=%{public}@", buf, 0xCu);
      }

      goto LABEL_33;
    }

LABEL_32:
    v28 = v11;
    goto LABEL_33;
  }

  if (![v10 count])
  {
    goto LABEL_32;
  }

  firstObject5 = [v10 firstObject];
  v24 = firstObject5;
  if (modeIdentifier)
  {
    details4 = [firstObject5 details];
    modeIdentifier4 = [details4 modeIdentifier];
    v27 = [modeIdentifier isEqualToString:modeIdentifier4];

    if (v27)
    {
      v28 = v11;
    }

    else
    {
      details5 = [v24 details];
      v52 = [details5 mutableCopy];

      [v52 setModeIdentifier:modeIdentifier];
      v65 = v11;
      v53 = [dataSource triggerManager:self takeModeAssertionWithDetails:v52 clientIdentifier:@"com.apple.donotdisturb.private.workout-trigger" error:&v65];
      v28 = v65;

      v54 = DNDSLogWorkoutTrigger;
      if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v54;
        details6 = [v24 details];
        modeIdentifier5 = [details6 modeIdentifier];
        *buf = 138543618;
        v69 = modeIdentifier;
        v70 = 2114;
        v71 = modeIdentifier5;
        _os_log_impl(&dword_24912E000, v55, OS_LOG_TYPE_DEFAULT, "Updating active assertion to new mode identifer for workout trigger; modeID=%{public}@ previousModeID=%{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    uUID3 = [firstObject5 UUID];
    v66 = v11;
    v46 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID3 reason:2 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.workout-trigger" error:&v66];
    v28 = v66;

    v47 = DNDSLogWorkoutTrigger;
    if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v47;
      details7 = [v24 details];
      modeIdentifier6 = [details7 modeIdentifier];
      *buf = 138543362;
      v69 = modeIdentifier6;
      _os_log_impl(&dword_24912E000, v48, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for workout trigger; previousModeID=%{public}@", buf, 0xCu);
    }
  }

LABEL_33:
  v58 = *MEMORY[0x277D85DE8];
}

uint64_t __52__DNDSWorkoutTriggerManager__refreshWithMode_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 modeIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (id)_assertionIdentifierForHealthKitWorkoutEvent:(id)event
{
  v3 = MEMORY[0x277CCACA8];
  eventBody = [event eventBody];
  activityUUID = [eventBody activityUUID];
  v6 = [v3 stringWithFormat:@"%@.%@", @"com.apple.donotdisturb.trigger.workout", activityUUID];

  return v6;
}

- (void)_configureWorkoutTriggerWithMode:(id)mode
{
  v21 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sinks objectForKeyedSubscript:@"system"];
  v6 = v5;
  if (!modeCopy || v5)
  {
    if (!modeCopy && v5)
    {
      [v5 cancel];
      [(NSMutableDictionary *)self->_sinks removeObjectForKey:@"system"];
    }
  }

  else
  {
    v7 = DNDSLogWorkoutTrigger;
    if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = modeCopy;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Adding biome workout event monitor; mode=%{public}@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.donotdisturb.workoutTrigger" targetQueue:self->_biomeQueue];
    healthKitWorkoutStream = [MEMORY[0x277CF1B58] healthKitWorkoutStream];
    publisher = [healthKitWorkoutStream publisher];
    v11 = [publisher subscribeOn:v8];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __62__DNDSWorkoutTriggerManager__configureWorkoutTriggerWithMode___block_invoke_35;
    v16 = &unk_278F8AC30;
    selfCopy = self;
    v18 = modeCopy;
    v6 = [v11 sinkWithCompletion:&__block_literal_global_14 receiveInput:&v13];

    [(NSMutableDictionary *)self->_sinks setObject:v6 forKeyedSubscript:@"system", v13, v14, v15, v16, selfCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  v12 = *MEMORY[0x277D85DE8];
}

void __62__DNDSWorkoutTriggerManager__configureWorkoutTriggerWithMode___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = DNDSLogWorkoutTrigger;
  if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = a2;
    v6 = [v5 state];
    v7 = [v5 error];

    v9 = 134218242;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Workout subscription completed: state=%ld error=%{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __62__DNDSWorkoutTriggerManager__configureWorkoutTriggerWithMode___block_invoke_35(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogWorkoutTrigger;
  if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 eventBody];
    v7 = [v6 eventType];
    if (v7 > 3)
    {
      v8 = @"unspecified";
    }

    else
    {
      v8 = off_278F8AC50[v7];
    }

    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Received workout event: eventType=%{public}@", &v13, 0xCu);
  }

  [*(a1 + 32) _refreshWithMode:*(a1 + 40) event:v3];
  v9 = DNDSLogWorkoutTrigger;
  if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v3 eventBody];
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Updated assertions for workout event: event=%{public}@", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isWorkoutTriggerEnabledForModeConfiguration:(id)configuration
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  triggers = [configuration triggers];
  v4 = [triggers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(triggers);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [triggers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  isEnabled = [v4 isEnabled];
  v9 = *MEMORY[0x277D85DE8];
  return isEnabled;
}

- (void)_migrateWorkoutDNDNanoPreference
{
  v14 = *MEMORY[0x277D85DE8];
  _accessor = [(DNDSWorkoutTriggerManager *)self _accessor];

  if (_accessor && ![(DNDSWorkoutTriggerManager *)self _isWorkoutDNDMigrated])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained workoutModeForWorkoutTriggerManager:self];
    _isWorkoutDNDNanoPreferenceEnabled = [(DNDSWorkoutTriggerManager *)self _isWorkoutDNDNanoPreferenceEnabled];
    if (!v5 && _isWorkoutDNDNanoPreferenceEnabled)
    {
      v7 = DNDSLogWorkoutTrigger;
      if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Create mode for workout trigger to match existing nano preferences setting.", &v12, 2u);
      }

      v5 = [WeakRetained createWorkoutModeForWorkoutTriggerManager:self];
      v8 = DNDSLogWorkoutTrigger;
      if (os_log_type_enabled(DNDSLogWorkoutTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        mode = [v5 mode];
        v12 = 138543362;
        v13 = mode;
        _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Created mode for workout trigger: mode=%{public}@", &v12, 0xCu);
      }
    }

    [(DNDSWorkoutTriggerManager *)self _setWorkoutDNDIsMigrated];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_accessor
{
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  accessor = self->_accessor;
  if (!accessor)
  {
    currentDevice = [MEMORY[0x277D058F8] currentDevice];
    if ([currentDevice deviceClass] == 1 || objc_msgSend(currentDevice, "deviceClass") == 5)
    {
      v5 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano"];
      v6 = self->_accessor;
      self->_accessor = v5;

      synchronize = [(NPSDomainAccessor *)self->_accessor synchronize];
    }

    accessor = self->_accessor;
  }

  return accessor;
}

- (BOOL)_isWorkoutDNDMigrated
{
  _accessor = [(DNDSWorkoutTriggerManager *)self _accessor];
  v6 = 0;
  v3 = [_accessor BOOLForKey:@"workoutDNDMigrated" keyExistsAndHasValidFormat:&v6];
  v4 = v6 & v3;

  return v4 & 1;
}

- (void)_setWorkoutDNDIsMigrated
{
  _accessor = [(DNDSWorkoutTriggerManager *)self _accessor];
  [_accessor setBool:1 forKey:@"workoutDNDMigrated"];
}

- (BOOL)_isWorkoutDNDNanoPreferenceEnabled
{
  _accessor = [(DNDSWorkoutTriggerManager *)self _accessor];
  v6 = 0;
  v3 = [_accessor BOOLForKey:@"workoutDND" keyExistsAndHasValidFormat:&v6];
  v4 = v6 & v3;

  return v4 & 1;
}

- (DNDSWorkoutTriggerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end