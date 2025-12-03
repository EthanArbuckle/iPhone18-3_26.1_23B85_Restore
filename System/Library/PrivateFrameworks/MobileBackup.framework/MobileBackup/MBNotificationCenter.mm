@interface MBNotificationCenter
+ (id)sharedNotificationCenter;
- (MBNotificationCenter)init;
- (int)_tokenForName:(id)name;
- (unint64_t)_stateForToken:(int)token;
- (unint64_t)stateForNotification:(id)notification;
- (void)_postNotification:(id)notification;
- (void)_setState:(unint64_t)state forToken:(int)token;
- (void)postNotification:(id)notification;
- (void)postNotification:(id)notification ifStateChanged:(unint64_t)changed;
- (void)setState:(unint64_t)state forNotification:(id)notification;
@end

@implementation MBNotificationCenter

+ (id)sharedNotificationCenter
{
  if (qword_100421B88 != -1)
  {
    dispatch_once(&qword_100421B88, &stru_1003C25D0);
  }

  v3 = qword_100421B80;

  return v3;
}

- (MBNotificationCenter)init
{
  v10.receiver = self;
  v10.super_class = MBNotificationCenter;
  v2 = [(MBNotificationCenter *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    tokensByName = v2->_tokensByName;
    v2->_tokensByName = v3;

    v5 = objc_opt_class();
    Name = class_getName(v5);
    v7 = dispatch_queue_create(Name, 0);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)_postNotification:(id)notification
{
  notificationCopy = notification;
  for (i = 1; ; i = 0)
  {
    v5 = i;
    v6 = notify_post([notificationCopy UTF8String]);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = notificationCopy;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "notify_post(%@) failed: %lu", buf, 0x16u);
      _MBLog();
    }

    if ((v5 & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"notify_post failed: %lu", v7}]);
    }
  }
}

- (int)_tokenForName:(id)name
{
  nameCopy = name;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100258D18;
  block[3] = &unk_1003C2298;
  block[4] = self;
  v6 = nameCopy;
  v11 = v6;
  v12 = &v14;
  v13 = &v18;
  dispatch_sync(queue, block);
  if (*(v19 + 6))
  {
    v9 = [MBException alloc];
    objc_exception_throw([v9 initWithCode:1 format:{@"notify_register_check failed: %lu", *(v19 + 6)}]);
  }

  v7 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v7;
}

- (unint64_t)_stateForToken:(int)token
{
  for (i = 1; ; i = 0)
  {
    v5 = i;
    state64 = 0;
    state = notify_get_state(token, &state64);
    if (!state)
    {
      break;
    }

    v7 = state;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "notify_get_state failed: %lu", buf, 0xCu);
      _MBLog();
    }

    if ((v5 & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"notify_get_state failed: %lu", v7}]);
    }
  }

  return state64;
}

- (void)_setState:(unint64_t)state forToken:(int)token
{
  for (i = 1; ; i = 0)
  {
    v7 = i;
    v8 = notify_set_state(token, state);
    if (!v8)
    {
      break;
    }

    v9 = v8;
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      stateCopy = state;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "notify_set_state(%llu) failed: %lu", buf, 0x16u);
      _MBLog();
    }

    if ((v7 & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"notify_set_state failed: %lu", v9}]);
    }
  }
}

- (void)postNotification:(id)notification
{
  notificationCopy = notification;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Posting notification: %@", buf, 0xCu);
    _MBLog();
  }

  [(MBNotificationCenter *)self _postNotification:notificationCopy];
}

- (unint64_t)stateForNotification:(id)notification
{
  v4 = [(MBNotificationCenter *)self _tokenForName:notification];

  return [(MBNotificationCenter *)self _stateForToken:v4];
}

- (void)setState:(unint64_t)state forNotification:(id)notification
{
  notificationCopy = notification;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v9 = notificationCopy;
    v10 = 2048;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting notification state: %@ %llu", buf, 0x16u);
    _MBLog();
  }

  [(MBNotificationCenter *)self _setState:state forToken:[(MBNotificationCenter *)self _tokenForName:notificationCopy]];
}

- (void)postNotification:(id)notification ifStateChanged:(unint64_t)changed
{
  notificationCopy = notification;
  v7 = [(MBNotificationCenter *)self _tokenForName:notificationCopy];
  if ([(MBNotificationCenter *)self _stateForToken:v7]!= changed)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v10 = notificationCopy;
      v11 = 2048;
      changedCopy = changed;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Posting notification for state change: %@ %llu", buf, 0x16u);
      _MBLog();
    }

    [(MBNotificationCenter *)self _setState:changed forToken:v7];
    [(MBNotificationCenter *)self _postNotification:notificationCopy];
  }
}

@end