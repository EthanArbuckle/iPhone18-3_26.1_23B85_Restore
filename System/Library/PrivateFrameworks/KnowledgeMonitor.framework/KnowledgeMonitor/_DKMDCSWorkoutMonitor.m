@interface _DKMDCSWorkoutMonitor
- (_DKMDCSWorkoutMonitor)init;
- (id)createWorkoutPredicate;
- (void)start;
- (void)stop;
@end

@implementation _DKMDCSWorkoutMonitor

- (_DKMDCSWorkoutMonitor)init
{
  v6.receiver = self;
  v6.super_class = _DKMDCSWorkoutMonitor;
  v2 = [(_DKMonitor *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_DEFAULT, "Enabling MDCS Workout monitor", v5, 2u);
    }
  }

  return v2;
}

- (void)start
{
  v31.receiver = self;
  v31.super_class = _DKMDCSWorkoutMonitor;
  if ([(_DKMonitor *)&v31 instantMonitorNeedsActivation]&& !self->_registration)
  {
    if (!self->_userContext)
    {
      v3 = [MEMORY[0x277CFE318] userContext];
      userContext = self->_userContext;
      self->_userContext = v3;
    }

    v5 = [(_DKMDCSWorkoutMonitor *)self createWorkoutPredicate];
    if (v5)
    {
      objc_initWeak(&location, self);
      v6 = MEMORY[0x277CFE350];
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __30___DKMDCSWorkoutMonitor_start__block_invoke;
      v28 = &unk_27856F3E0;
      objc_copyWeak(&v29, &location);
      v7 = [v6 registrationWithIdentifier:@"com.apple.contextstored" contextualPredicate:v5 deviceTypes:64 clientIdentifier:@"mdcsworkoutmonitor" mustWake:1 callback:&v25];
      registration = self->_registration;
      self->_registration = v7;

      if (self->_registration)
      {
        [(_CDClientContext *)self->_userContext registerCallback:v25, v26, v27, v28];
      }

      else
      {
        v17 = [MEMORY[0x277CFE0C8] knowledgeChannel];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(_DKMDCSWorkoutMonitor *)v17 start:v18];
        }
      }

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      v9 = [MEMORY[0x277CFE0C8] knowledgeChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(_DKMDCSWorkoutMonitor *)v9 start:v10];
      }
    }
  }
}

- (void)stop
{
  v4.receiver = self;
  v4.super_class = _DKMDCSWorkoutMonitor;
  if ([(_DKMonitor *)&v4 instantMonitorNeedsDeactivation])
  {
    if (self->_registration)
    {
      [(_CDClientContext *)self->_userContext deregisterCallback:?];
      registration = self->_registration;
      self->_registration = 0;
    }
  }
}

- (id)createWorkoutPredicate
{
  v2 = [MEMORY[0x277CCDBE8] _allWorkoutActivityTypes];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = _HKWorkoutSessionStateName();
    [v3 addObject:v4];

    v5 = _HKWorkoutSessionStateName();
    [v3 addObject:v5];

    v6 = MEMORY[0x277CFE380];
    v7 = [MEMORY[0x277CBEB98] setWithArray:v2];
    v8 = [v6 predicateForFirstPartyWorkoutMatchingTypes:v7 states:v3];
  }

  else
  {
    v9 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_DKMDCSWorkoutMonitor *)v9 createWorkoutPredicate:v10];
    }

    v8 = 0;
  }

  return v8;
}

@end