@interface IPLocalizationSwitcherServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IPLocalizationSwitcherServiceDelegate)init;
- (void)addSubscriber:(unint64_t)a3;
- (void)preferredLanguageChangedForBundleID:(id)a3;
- (void)removeSubscriber:(unint64_t)a3;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___IPLocalizationSwitcherProtocol];
  [v5 setExportedInterface:v6];

  v7 = objc_opt_new();
  [v7 setDelegate:self];
  [v5 setExportedObject:v7];
  v8 = [v5 valueForEntitlement:@"com.apple.localizationswitcher"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v8 BOOLValue])
  {
    [v5 resume];
    v9 = 1;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100004E74();
    }

    [v5 invalidate];
    v9 = 0;
  }

  return v9;
}

- (void)addSubscriber:(unint64_t)a3
{
  v5 = [(IPLocalizationSwitcherServiceDelegate *)self subscribers];
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  [v5 addObject:v4];
}

- (void)removeSubscriber:(unint64_t)a3
{
  v5 = [(IPLocalizationSwitcherServiceDelegate *)self subscribers];
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  [v5 removeObject:v4];
}

- (void)preferredLanguageChangedForBundleID:(id)a3
{
  v4 = a3;
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

        v10 = [*(*(&v16 + 1) + 8 * i) unsignedLongLongValue];
        v11 = [(IPLocalizationSwitcherServiceDelegate *)self publisher];
        v12 = [(IPLocalizationSwitcherServiceDelegate *)self queue];
        v15 = v4;
        xpc_event_publisher_fire_with_reply();

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Fired initial XPC event to ping the subscriber [%llu]", buf, 0xCu);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }
}

@end