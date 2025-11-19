@interface DRAnalytics
- (DRAnalytics)init;
- (void)_queue_addEvent:(id)a3;
- (void)_queue_removeEvent:(id)a3;
- (void)_queue_submitAllEvents;
- (void)_queue_submitEvent:(id)a3;
- (void)addEvent:(id)a3;
- (void)submitAllEvents;
@end

@implementation DRAnalytics

- (DRAnalytics)init
{
  v9.receiver = self;
  v9.super_class = DRAnalytics;
  v2 = [(DRAnalytics *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    events = v2->_events;
    v2->_events = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.DeviceRecovery.DRAnalyticsEventQueue", v5);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v6;
  }

  return v2;
}

- (void)addEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000015A4;
  v7[3] = &unk_100034AC0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

- (void)submitAllEvents
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001688;
  block[3] = &unk_100034AE8;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)_queue_addEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (v4)
  {
    v5 = [v4 eventUUID];

    if (v5)
    {
      goto LABEL_8;
    }

    v6 = sub_1000118BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100017E30(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v6 = sub_1000118BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100017EA8(v6, v14, v15, v16, v17, v18, v19, v20);
    }
  }

LABEL_8:
  v21 = sub_1000118BC();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136446466;
    v25 = "[DRAnalytics _queue_addEvent:]";
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: ADD_EVENT: Adding CoreAnalytics event to the submission queue: %{public}@", &v24, 0x16u);
  }

  events = self->_events;
  v23 = [v4 eventUUID];
  [(NSMutableDictionary *)events setObject:v4 forKey:v23];
}

- (void)_queue_submitAllEvents
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = [(NSMutableDictionary *)self->_events allValues];
  v4 = sub_1000118BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v19 = "[DRAnalytics _queue_submitAllEvents]";
    v20 = 2050;
    v21 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: SUBMIT_ALL_EVENTS: Will submit %{public}lu total events to CoreAnalytics", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = sub_1000118BC();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 eventName];
          *buf = 136446466;
          v19 = "[DRAnalytics _queue_submitAllEvents]";
          v20 = 2114;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: SUBMIT_ALL_EVENTS: Sending event %{public}@", buf, 0x16u);
        }

        [(DRAnalytics *)self _queue_submitEvent:v10];
        [(DRAnalytics *)self _queue_removeEvent:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_queue_submitEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (v4)
  {
    v5 = [v4 eventName];
    v14 = v4;
    AnalyticsSendEventLazy();

    v6 = v14;
  }

  else
  {
    v6 = sub_1000118BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100017F20(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (void)_queue_removeEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (v4)
  {
    v5 = [v4 eventUUID];

    if (v5)
    {
      goto LABEL_8;
    }

    v6 = sub_1000118BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100017F98(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v6 = sub_1000118BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100018010(v6, v14, v15, v16, v17, v18, v19, v20);
    }
  }

LABEL_8:
  events = self->_events;
  v22 = [v4 eventUUID];
  v23 = [(NSMutableDictionary *)events objectForKey:v22];

  v24 = sub_1000118BC();
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136446466;
      v28 = "[DRAnalytics _queue_removeEvent:]";
      v29 = 2114;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: REMOVE_EVENT: Removed event %{public}@ from queue", &v27, 0x16u);
    }

    v26 = self->_events;
    v25 = [v4 eventUUID];
    [(NSMutableDictionary *)v26 removeObjectForKey:v25];
  }

  else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_100018088(v4, v25);
  }
}

@end