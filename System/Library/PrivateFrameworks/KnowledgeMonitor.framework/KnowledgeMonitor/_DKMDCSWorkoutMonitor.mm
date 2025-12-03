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
    knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22595A000, knowledgeChannel, OS_LOG_TYPE_DEFAULT, "Enabling MDCS Workout monitor", v5, 2u);
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
      userContext = [MEMORY[0x277CFE318] userContext];
      userContext = self->_userContext;
      self->_userContext = userContext;
    }

    createWorkoutPredicate = [(_DKMDCSWorkoutMonitor *)self createWorkoutPredicate];
    if (createWorkoutPredicate)
    {
      objc_initWeak(&location, self);
      v6 = MEMORY[0x277CFE350];
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __30___DKMDCSWorkoutMonitor_start__block_invoke;
      v28 = &unk_27856F3E0;
      objc_copyWeak(&v29, &location);
      v7 = [v6 registrationWithIdentifier:@"com.apple.contextstored" contextualPredicate:createWorkoutPredicate deviceTypes:64 clientIdentifier:@"mdcsworkoutmonitor" mustWake:1 callback:&v25];
      registration = self->_registration;
      self->_registration = v7;

      if (self->_registration)
      {
        [(_CDClientContext *)self->_userContext registerCallback:v25, v26, v27, v28];
      }

      else
      {
        knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
        if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_ERROR))
        {
          [(_DKMDCSWorkoutMonitor *)knowledgeChannel start:v18];
        }
      }

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      knowledgeChannel2 = [MEMORY[0x277CFE0C8] knowledgeChannel];
      if (os_log_type_enabled(knowledgeChannel2, OS_LOG_TYPE_ERROR))
      {
        [(_DKMDCSWorkoutMonitor *)knowledgeChannel2 start:v10];
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
  _allWorkoutActivityTypes = [MEMORY[0x277CCDBE8] _allWorkoutActivityTypes];
  if (_allWorkoutActivityTypes)
  {
    v3 = objc_opt_new();
    v4 = _HKWorkoutSessionStateName();
    [v3 addObject:v4];

    v5 = _HKWorkoutSessionStateName();
    [v3 addObject:v5];

    v6 = MEMORY[0x277CFE380];
    v7 = [MEMORY[0x277CBEB98] setWithArray:_allWorkoutActivityTypes];
    v8 = [v6 predicateForFirstPartyWorkoutMatchingTypes:v7 states:v3];
  }

  else
  {
    knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_ERROR))
    {
      [(_DKMDCSWorkoutMonitor *)knowledgeChannel createWorkoutPredicate:v10];
    }

    v8 = 0;
  }

  return v8;
}

@end