@interface FetchXPCActivityScheduler
+ (const)_xpcActivityIdentifierForType:(int)a3;
- (FetchXPCActivityScheduler)initWithType:(int)a3 interval:(double)a4 delegate:(id)a5;
- (FetchXPCActivitySchedulerDelegate)delegate;
- (const)_xpcActivityIdentifier;
- (id)criteriaBuilder;
- (int64_t)initialXPCActivityInterval;
- (int64_t)xpcActivityInterval;
- (void)_markFetchXPCActivityAsRunning:(id)a3;
- (void)_markXPCActivitiesAsDone;
- (void)_runForTimer;
- (void)_runXPCActivity:(id)a3;
- (void)_updateIntervalIfNeededForXPCActivity:(id)a3;
- (void)markAsDone;
- (void)schedule;
- (void)tearDown;
- (void)unregisterAndTearDown;
@end

@implementation FetchXPCActivityScheduler

- (FetchXPCActivityScheduler)initWithType:(int)a3 interval:(double)a4 delegate:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = FetchXPCActivityScheduler;
  v9 = [(FetchXPCActivityScheduler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_schedulerType = a3;
    v9->_interval = a4;
    objc_storeWeak(&v9->_delegate, v8);
  }

  return v10;
}

- (void)schedule
{
  os_unfair_lock_lock(&self->_lock);
  didSchedule = self->_didSchedule;
  self->_didSchedule = 1;
  os_unfair_lock_unlock(&self->_lock);
  v4 = +[DaemonFetchController log];
  v5 = v4;
  if (didSchedule)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000D32E4(&buf, [(FetchXPCActivityScheduler *)self schedulerType], v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(FetchXPCActivityScheduler *)self schedulerType];
      [(FetchXPCActivityScheduler *)self interval];
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduling fetch for type %d with interval %g seconds.", &buf, 0x12u);
    }

    objc_initWeak(&buf, self);
    [(FetchXPCActivityScheduler *)self _xpcActivityIdentifier];
    v8 = [(FetchXPCActivityScheduler *)self criteriaBuilder];
    objc_copyWeak(&v9, &buf);
    ef_xpc_activity_register();

    objc_destroyWeak(&v9);
    objc_destroyWeak(&buf);
  }
}

- (void)unregisterAndTearDown
{
  v3 = +[DaemonFetchController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = [(FetchXPCActivityScheduler *)self schedulerType];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unregistering XPC activity for type %d (and tearing down).", v4, 8u);
  }

  xpc_activity_unregister([(FetchXPCActivityScheduler *)self _xpcActivityIdentifier]);
  [(FetchXPCActivityScheduler *)self tearDown];
}

- (void)tearDown
{
  os_unfair_lock_lock(&self->_lock);
  tornDown = self->_tornDown;
  self->_tornDown = 1;
  objc_storeWeak(&self->_delegate, 0);
  os_unfair_lock_unlock(&self->_lock);
  if (!tornDown)
  {
    v4 = +[DaemonFetchController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = [(FetchXPCActivityScheduler *)self schedulerType];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Tearing down fetch scheduler for type %d.", v5, 8u);
    }

    [(FetchXPCActivityScheduler *)self _markXPCActivitiesAsDone];
  }
}

- (void)_runXPCActivity:(id)a3
{
  v4 = a3;
  v5 = +[DaemonFetchController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FetchXPCActivityScheduler *)self schedulerType];
    [(FetchXPCActivityScheduler *)self interval];
    v25[0] = 67109376;
    v25[1] = v6;
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC activity triggered for fetch scheduler (type %d, interval %g seconds).", v25, 0x12u);
  }

  os_unfair_lock_lock(&self->_lock);
  tornDown = self->_tornDown;
  os_unfair_lock_unlock(&self->_lock);
  if (tornDown)
  {
    v9 = +[DaemonFetchController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3364(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    [(FetchXPCActivityScheduler *)self _updateIntervalIfNeededForXPCActivity:v4];
    v9 = [(FetchXPCActivityScheduler *)self delegate];
    if (v9)
    {
      [(FetchXPCActivityScheduler *)self _markFetchXPCActivityAsRunning:v4];
      [v9 fetchSchedulerDidTrigger:self];
    }

    else
    {
      v17 = +[DaemonFetchController log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000D332C(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }
  }
}

- (void)_runForTimer
{
  v3 = +[DaemonFetchController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FetchXPCActivityScheduler *)self schedulerType];
    [(FetchXPCActivityScheduler *)self interval];
    v16[0] = 67109376;
    v16[1] = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dispatch timer triggered for fetch scheduler (type %d, interval %g seconds).", v16, 0x12u);
  }

  v6 = [(FetchXPCActivityScheduler *)self delegate];
  v7 = v6;
  if (v6)
  {
    [v6 fetchSchedulerDidTrigger:self];
  }

  else
  {
    v8 = +[DaemonFetchController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D332C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

- (void)markAsDone
{
  v3 = +[DaemonFetchController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = [(FetchXPCActivityScheduler *)self schedulerType];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Marking fetch scheduler as done (type %d).", v4, 8u);
  }

  [(FetchXPCActivityScheduler *)self _markXPCActivitiesAsDone];
}

- (void)_markFetchXPCActivityAsRunning:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (xpc_activity_set_state(v4, 4))
    {
      v6 = +[DaemonFetchController log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Marked XPC activity %p as continuing (async).", &v12, 0xCu);
      }

      os_unfair_lock_lock(&self->_lock);
      xpcActivities = self->_xpcActivities;
      if (xpcActivities)
      {
        [(NSMutableArray *)xpcActivities addObject:v5];
      }

      else
      {
        v9 = [NSMutableArray arrayWithObject:v5];
        v10 = self->_xpcActivities;
        self->_xpcActivities = v9;
      }

      v11 = [(NSMutableArray *)self->_xpcActivities count];
      os_unfair_lock_unlock(&self->_lock);
      v8 = +[DaemonFetchController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D3414(v11, v8);
      }
    }

    else
    {
      v8 = +[DaemonFetchController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000D339C(v5, v8);
      }
    }
  }
}

- (void)_markXPCActivitiesAsDone
{
  os_unfair_lock_lock(&self->_lock);
  v11 = self->_xpcActivities;
  xpcActivities = self->_xpcActivities;
  self->_xpcActivities = 0;

  os_unfair_lock_unlock(&self->_lock);
  v4 = +[DaemonFetchController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D348C([(NSMutableArray *)v11 count], v19, v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v11;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (xpc_activity_set_state(v9, 5))
        {
          v10 = +[DaemonFetchController log];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v17 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Marked XPC activity %p as done.", buf, 0xCu);
          }
        }

        else
        {
          v10 = +[DaemonFetchController log];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v17 = v9;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to mark XPC activity %p as done.", buf, 0xCu);
          }
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)_updateIntervalIfNeededForXPCActivity:(id)a3
{
  activity = a3;
  v4 = [(FetchXPCActivityScheduler *)self xpcActivityInterval];
  v5 = xpc_activity_copy_criteria(activity);
  if (xpc_dictionary_get_int64(v5, XPC_ACTIVITY_INTERVAL) != v4)
  {
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_INTERVAL, v4);
    xpc_activity_set_criteria(activity, v5);
  }
}

- (const)_xpcActivityIdentifier
{
  v3 = objc_opt_class();
  v4 = [(FetchXPCActivityScheduler *)self schedulerType];

  return [v3 _xpcActivityIdentifierForType:v4];
}

+ (const)_xpcActivityIdentifierForType:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    sub_1000D34D4();
  }

  return (&off_1001572B0)[a3 - 1];
}

- (id)criteriaBuilder
{
  v3 = [(FetchXPCActivityScheduler *)self initialXPCActivityInterval];
  v4 = [(FetchXPCActivityScheduler *)self schedulerType];
  switch(v4)
  {
    case 1u:
      v6 = [(FetchXPCActivityScheduler *)self isAutomatic];
      v5 = v10;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000271B8;
      v10[3] = &unk_100157248;
      v10[4] = v3;
      v11 = v6;
      break;
    case 3u:
      v5 = v9;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000273CC;
      v9[3] = &unk_100157268;
      v9[4] = v3;
      v9[5] = v3;
      break;
    case 2u:
      v5 = v12;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10002711C;
      v12[3] = &unk_100157228;
      v12[4] = v3;
      break;
    default:
      sub_1000D3500();
  }

  v7 = objc_retainBlock(v5);

  return v7;
}

- (int64_t)initialXPCActivityInterval
{
  v3 = [(FetchXPCActivityScheduler *)self schedulerType];
  if (v3 != 1)
  {
    if (v3 == 2)
    {
      return 300;
    }

    if (v3 != 3)
    {
      sub_1000D352C();
    }
  }

  return [(FetchXPCActivityScheduler *)self xpcActivityInterval];
}

- (int64_t)xpcActivityInterval
{
  [(FetchXPCActivityScheduler *)self interval];
  if (v2 >= 1)
  {
    return v2;
  }

  else
  {
    return XPC_ACTIVITY_INTERVAL_1_HOUR;
  }
}

- (FetchXPCActivitySchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end