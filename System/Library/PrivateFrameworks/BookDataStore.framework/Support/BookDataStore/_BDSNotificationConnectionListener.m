@interface _BDSNotificationConnectionListener
- (_BDSNotificationConnectionListener)initWithContainerConfigurations:(id)a3 delegate:(id)a4;
- (_BDSNotificationConnectionListenerDelegate)delegate;
- (void)_registerContainerWithConfiguration:(id)a3;
- (void)_registerForSubscriptionID:(id)a3 inDatabase:(id)a4;
- (void)startListeningForNotifications;
@end

@implementation _BDSNotificationConnectionListener

- (_BDSNotificationConnectionListener)initWithContainerConfigurations:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _BDSNotificationConnectionListener;
  v9 = [(_BDSNotificationConnectionListener *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configurations, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (void)startListeningForNotifications
{
  v3 = [(_BDSNotificationConnectionListener *)self notificationListener];

  if (!v3)
  {
    v4 = [[CKNotificationListener alloc] initWithMachServiceName:@"com.apple.aps.bookdatastored"];
    [(_BDSNotificationConnectionListener *)self setNotificationListener:v4];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(_BDSNotificationConnectionListener *)self configurations];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(_BDSNotificationConnectionListener *)self _registerContainerWithConfiguration:*(*(&v10 + 1) + 8 * v9)];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_registerContainerWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 containerIdentifier];
  v6 = [CKContainer containerWithIdentifier:v5];

  v7 = [v4 appBundleIdentifier];
  [v6 setSourceApplicationBundleIdentifier:v7];

  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 containerIdentifier];
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Notification] Registering for notifications for container %{public}@", &v12, 0xCu);
  }

  v10 = [v4 dbSubscriptionID];
  v11 = [v6 privateCloudDatabase];
  [(_BDSNotificationConnectionListener *)self _registerForSubscriptionID:v10 inDatabase:v11];
}

- (void)_registerForSubscriptionID:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(_BDSNotificationConnectionListener *)self notificationListener];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100031660;
  v9[3] = &unk_100240BA8;
  objc_copyWeak(&v10, &location);
  [v8 registerForSubscriptionWithID:v6 inDatabase:v7 handler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (_BDSNotificationConnectionListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end