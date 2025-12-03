@interface ACCFeatureServer
- (ACCFeatureServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification;
- (void)addSubscriber:(id)subscriber;
- (void)dealloc;
- (void)decrementUserCount;
- (void)incrementUserCount;
- (void)removeSubscriber:(id)subscriber;
- (void)sendNotification;
- (void)sendUpdatedSubscriberList;
- (void)startServer;
- (void)suspendServer;
@end

@implementation ACCFeatureServer

- (ACCFeatureServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = ACCFeatureServer;
  v8 = [(ACCFeatureServer *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_xpcServiceName, name);
    v9->_notification = notification;
    v9->_isServerStarted = 0;
    v9->_featureUserCount = 0;
    v10 = objc_alloc_init(NSCountedSet);
    subFeatureSubscribers = v9->_subFeatureSubscribers;
    v9->_subFeatureSubscribers = v10;

    v12 = [[NSXPCListener alloc] initWithMachServiceName:v9->_xpcServiceName];
    listener = v9->_listener;
    v9->_listener = v12;

    [(NSXPCListener *)v9->_listener setDelegate:v9];
    v9->_notificationToken = -1;
    notify_register_check(v9->_notification, &v9->_notificationToken);
  }

  return v9;
}

- (void)dealloc
{
  notificationToken = self->_notificationToken;
  if ((notificationToken & 0x80000000) == 0)
  {
    notify_cancel(notificationToken);
  }

  v4.receiver = self;
  v4.super_class = ACCFeatureServer;
  [(ACCFeatureServer *)&v4 dealloc];
}

- (void)startServer
{
  if (![(ACCFeatureServer *)self isServerStarted])
  {
    [(ACCFeatureServer *)self setIsServerStarted:1];
    [(NSXPCListener *)self->_listener resume];
    notificationToken = self->_notificationToken;
    if ((notificationToken & 0x80000000) == 0)
    {
      notify_set_state(notificationToken, 1uLL);
    }

    notify_post(self->_notification);
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v4 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      xpcServiceName = self->_xpcServiceName;
      v7 = 138412290;
      v8 = xpcServiceName;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Started server: %@...", &v7, 0xCu);
    }
  }
}

- (void)suspendServer
{
  if ([(ACCFeatureServer *)self isServerStarted])
  {
    [(ACCFeatureServer *)self setIsServerStarted:0];
    [(NSXPCListener *)self->_listener suspend];
    notificationToken = self->_notificationToken;
    if ((notificationToken & 0x80000000) == 0)
    {
      notify_set_state(notificationToken, 0);
    }

    notify_post(self->_notification);
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v4 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      xpcServiceName = self->_xpcServiceName;
      v7 = 138412290;
      v8 = xpcServiceName;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Suspended server: %@...", &v7, 0xCu);
    }
  }
}

- (void)incrementUserCount
{
  obj = self;
  objc_sync_enter(obj);
  [(ACCFeatureServer *)obj setFeatureUserCount:[(ACCFeatureServer *)obj featureUserCount]+ 1];
  if ([(ACCFeatureServer *)obj featureUserCount]== 1)
  {
    [(ACCFeatureServer *)obj startServer];
  }

  objc_sync_exit(obj);
}

- (void)decrementUserCount
{
  obj = self;
  objc_sync_enter(obj);
  [(ACCFeatureServer *)obj setFeatureUserCount:[(ACCFeatureServer *)obj featureUserCount]- 1];
  if ([(ACCFeatureServer *)obj featureUserCount]< 0)
  {
    [(ACCFeatureServer *)obj setFeatureUserCount:0];
  }

  if (![(ACCFeatureServer *)obj featureUserCount])
  {
    [(ACCFeatureServer *)obj suspendServer];
  }

  objc_sync_exit(obj);
}

- (void)addSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  if (subscriberCopy)
  {
    subFeatureSubscribers = [(ACCFeatureServer *)self subFeatureSubscribers];
    [subFeatureSubscribers addObject:subscriberCopy];

    if (gLogObjects)
    {
      v6 = gNumLogObjects < 5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v7 = &_os_log_default;
    }

    else
    {
      v8 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      subFeatureSubscribers2 = [(ACCFeatureServer *)self subFeatureSubscribers];
      v10 = 138412546;
      v11 = subscriberCopy;
      v12 = 2048;
      v13 = [subFeatureSubscribers2 countForObject:subscriberCopy];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Added subscriber for key: %@... New count: %lu", &v10, 0x16u);
    }

    [(ACCFeatureServer *)self sendUpdatedSubscriberList];
  }
}

- (void)removeSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  if (subscriberCopy)
  {
    subFeatureSubscribers = [(ACCFeatureServer *)self subFeatureSubscribers];
    [subFeatureSubscribers removeObject:subscriberCopy];

    if (gLogObjects)
    {
      v6 = gNumLogObjects < 5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v7 = &_os_log_default;
    }

    else
    {
      v8 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      subFeatureSubscribers2 = [(ACCFeatureServer *)self subFeatureSubscribers];
      v10 = 138412546;
      v11 = subscriberCopy;
      v12 = 2048;
      v13 = [subFeatureSubscribers2 countForObject:subscriberCopy];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Removed subscriber for key: %@... New count: %lu", &v10, 0x16u);
    }

    [(ACCFeatureServer *)self sendUpdatedSubscriberList];
  }
}

- (void)sendUpdatedSubscriberList
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 5;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ACCFeatureServer *)v4 sendUpdatedSubscriberList];
  }
}

- (void)sendNotification
{
  notification = self->_notification;
  if (notification)
  {
    notify_post(notification);
  }
}

@end