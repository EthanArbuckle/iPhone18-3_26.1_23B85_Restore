@interface IPLocalizationSwitcherServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (IPLocalizationSwitcherServiceDelegate)init;
- (void)addSubscriber:(unint64_t)subscriber;
- (void)preferredLanguageChangedForBundleID:(id)d;
- (void)removeSubscriber:(unint64_t)subscriber;
@end

@implementation IPLocalizationSwitcherServiceDelegate

- (IPLocalizationSwitcherServiceDelegate)init
{
  v8.receiver = self;
  v8.super_class = IPLocalizationSwitcherServiceDelegate;
  v2 = [(IPLocalizationSwitcherServiceDelegate *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    subscribers = v2->_subscribers;
    v2->_subscribers = v3;

    v5 = dispatch_queue_create("com.apple.IntlPreferences.events", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___IPLocalizationSwitcherProtocol];
  [connectionCopy setExportedInterface:v6];

  v7 = objc_opt_new();
  [v7 setDelegate:self];
  [connectionCopy setExportedObject:v7];
  v8 = [connectionCopy valueForEntitlement:@"com.apple.localizationswitcher"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v8 BOOLValue])
  {
    [connectionCopy resume];
    v9 = 1;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100004E74();
    }

    [connectionCopy invalidate];
    v9 = 0;
  }

  return v9;
}

- (void)addSubscriber:(unint64_t)subscriber
{
  subscribers = [(IPLocalizationSwitcherServiceDelegate *)self subscribers];
  v4 = [NSNumber numberWithUnsignedLongLong:subscriber];
  [subscribers addObject:v4];
}

- (void)removeSubscriber:(unint64_t)subscriber
{
  subscribers = [(IPLocalizationSwitcherServiceDelegate *)self subscribers];
  v4 = [NSNumber numberWithUnsignedLongLong:subscriber];
  [subscribers removeObject:v4];
}

- (void)preferredLanguageChangedForBundleID:(id)d
{
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(IPLocalizationSwitcherServiceDelegate *)self subscribers];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 134217984;
    v13 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        unsignedLongLongValue = [*(*(&v16 + 1) + 8 * i) unsignedLongLongValue];
        publisher = [(IPLocalizationSwitcherServiceDelegate *)self publisher];
        queue = [(IPLocalizationSwitcherServiceDelegate *)self queue];
        v15 = dCopy;
        xpc_event_publisher_fire_with_reply();

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v21 = unsignedLongLongValue;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Fired initial XPC event to ping the subscriber [%llu]", buf, 0xCu);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }
}

@end