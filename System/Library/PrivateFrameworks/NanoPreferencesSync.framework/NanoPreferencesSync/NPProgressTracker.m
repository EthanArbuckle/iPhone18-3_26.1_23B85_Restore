@interface NPProgressTracker
+ (NPProgressTracker)sharedInstance;
- (BOOL)canStartOperation:(id)a3;
- (id)_getOperationDictionary:(id)a3;
- (id)_init;
- (id)_valueForKey:(id)a3;
- (id)dump;
- (void)_clearState;
- (void)_processStateClearIfNeeded;
- (void)_save:(id)a3 forOperation:(id)a4;
- (void)_setValue:(id)a3 forKey:(id)a4;
- (void)addToProblematicOperationSet:(id)a3;
- (void)clearState;
- (void)completedOperations;
- (void)startedOperations;
@end

@implementation NPProgressTracker

- (id)_init
{
  v5.receiver = self;
  v5.super_class = NPProgressTracker;
  v2 = [(NPProgressTracker *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NPProgressTracker *)v2 _processStateClearIfNeeded];
  }

  return v3;
}

+ (NPProgressTracker)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020458;
  block[3] = &unk_10003D1C0;
  block[4] = a1;
  if (qword_100045710 != -1)
  {
    dispatch_once(&qword_100045710, block);
  }

  v2 = qword_100045708;

  return v2;
}

- (void)startedOperations
{
  v3 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_crashedDuringLastRun)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Progress Tracker] Started tracking progress. (Crashed last time %@)", &v5, 0xCu);
  }

  [(NPProgressTracker *)self _clearState];
  [(NPProgressTracker *)self _setValue:@"kNPProgressTrackerStateStarted" forKey:@"kNPProgressTrackerStateKey"];
}

- (BOOL)canStartOperation:(id)a3
{
  v4 = a3;
  if (self->_crashedDuringLastRun)
  {
    v5 = [(NSMutableSet *)self->_problematicOperationSet containsObject:v4]^ 1;
  }

  else
  {
    v5 = 1;
  }

  v6 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v9 = 138543618;
    v10 = v4;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Progress Tracker] Can start syncing (%{public}@)? %@", &v9, 0x16u);
  }

  return v5;
}

- (void)completedOperations
{
  v3 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Progress Tracker] Stopped tracking progress.", v4, 2u);
  }

  [(NPProgressTracker *)self _setValue:0 forKey:@"kNPProgressTrackerLastProcessingDomainKey"];
  [(NPProgressTracker *)self _setValue:@"kNPProgressTrackerStateCompleted" forKey:@"kNPProgressTrackerStateKey"];
  self->_crashedDuringLastRun = 0;
}

- (void)clearState
{
  v3 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Progress Tracker] Requested to clear state.", v4, 2u);
  }

  [(NPProgressTracker *)self _clearState];
}

- (id)dump
{
  v2 = CFPreferencesCopyMultiple(0, @"kNPProgressTrackerDomain", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v3 = v2;
  if (v2)
  {
    v4 = [(__CFDictionary *)v2 description];
  }

  else
  {
    v4 = &stru_10003DCC0;
  }

  return v4;
}

- (void)addToProblematicOperationSet:(id)a3
{
  v4 = a3;
  v5 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Progress Tracker] Adding %{public}@ to known problematic operation set.", &v11, 0xCu);
  }

  p_problematicOperationSet = &self->_problematicOperationSet;
  problematicOperationSet = self->_problematicOperationSet;
  if (problematicOperationSet)
  {
    v8 = problematicOperationSet;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  if (([(NSMutableSet *)v8 containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)v9 addObject:v4];
    objc_storeStrong(&self->_problematicOperationSet, v9);
    if (*p_problematicOperationSet)
    {
      v10 = [(NSMutableSet *)*p_problematicOperationSet allObjects];
    }

    else
    {
      v10 = 0;
    }

    [(NPProgressTracker *)self _setValue:v10 forKey:@"kNPProgressTrackerOversizedDomainsKey"];
  }
}

- (void)_clearState
{
  [(NPProgressTracker *)self _setValue:0 forKey:@"kNPProgressTrackerLastProcessingDomainKey"];
  [(NPProgressTracker *)self _setValue:0 forKey:@"kNPProgressTrackerStateKey"];
  [(NPProgressTracker *)self _setValue:0 forKey:@"kNPProgressTrackerDomainsKey"];

  [(NPProgressTracker *)self _setValue:0 forKey:@"kNPProgressTrackerOversizedDomainsKey"];
}

- (void)_processStateClearIfNeeded
{
  v3 = [(NPProgressTracker *)self _lastBootedTimeFromPref];
  *v18 = 0x1500000001;
  *buf = 0;
  *&buf[8] = 0;
  v14 = 16;
  v4 = sysctl(v18, 2u, buf, &v14, 0, 0);
  v5 = -1.0;
  if (v4 != -1 && *buf)
  {
    v5 = *&buf[8] / 1000000.0 + *buf;
  }

  v6 = [NSNumber numberWithDouble:v5];
  v7 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "storedBootTime: %@ freshBootTime: %@", buf, 0x16u);
  }

  if (v3 && ([v3 isEqual:v6] & 1) != 0)
  {
    v8 = [(NPProgressTracker *)self _valueForKey:@"kNPProgressTrackerStateKey"];
    v9 = [(NPProgressTracker *)self _valueForKey:@"kNPProgressTrackerLastProcessingDomainKey"];
    v10 = [(NPProgressTracker *)self _valueForKey:@"kNPProgressTrackerOversizedDomainsKey"];
    v11 = objc_alloc_init(NSMutableSet);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableSet *)v11 addObjectsFromArray:v10];
    }

    v12 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Progress Tracker] State from prefs %{public}@.                  Last domain being processed %{public}@.                  List of oversized domains %{public}@", buf, 0x20u);
    }

    self->_crashedDuringLastRun = [v8 isEqualToString:@"kNPProgressTrackerStateStarted"];
    problematicOperationSet = self->_problematicOperationSet;
    self->_problematicOperationSet = v11;
  }

  else
  {
    [(NPProgressTracker *)self _clearState];
    [(NPProgressTracker *)self _saveLastBootedTimeToPref:v6];
  }
}

- (void)_setValue:(id)a3 forKey:(id)a4
{
  value = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  CFPreferencesSetAppValue(v6, value, @"kNPProgressTrackerDomain");
  CFPreferencesAppSynchronize(@"kNPProgressTrackerDomain");
  objc_sync_exit(v7);
}

- (id)_valueForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = CFPreferencesCopyAppValue(v4, @"kNPProgressTrackerDomain");
  objc_sync_exit(v5);

  return v6;
}

- (id)_getOperationDictionary:(id)a3
{
  v4 = a3;
  v5 = [(NPProgressTracker *)self _valueForKey:@"kNPProgressTrackerDomainsKey"];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = objc_opt_new();
  }

  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  return v11;
}

- (void)_save:(id)a3 forOperation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPProgressTracker *)self _valueForKey:@"kNPProgressTrackerDomainsKey"];
  v10 = [v8 mutableCopy];

  v9 = v10;
  if (!v10)
  {
    v9 = objc_opt_new();
  }

  v11 = v9;
  [v9 setObject:v7 forKeyedSubscript:v6];

  [(NPProgressTracker *)self _setValue:v11 forKey:@"kNPProgressTrackerDomainsKey"];
}

@end