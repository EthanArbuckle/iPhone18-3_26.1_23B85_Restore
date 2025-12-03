@interface _BDSNotificationConnectionListener
- (_BDSNotificationConnectionListener)initWithContainerConfigurations:(id)configurations delegate:(id)delegate;
- (_BDSNotificationConnectionListenerDelegate)delegate;
- (void)_registerContainerWithConfiguration:(id)configuration;
- (void)_registerForSubscriptionID:(id)d inDatabase:(id)database;
- (void)startListeningForNotifications;
@end

@implementation _BDSNotificationConnectionListener

- (_BDSNotificationConnectionListener)initWithContainerConfigurations:(id)configurations delegate:(id)delegate
{
  configurationsCopy = configurations;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = _BDSNotificationConnectionListener;
  v9 = [(_BDSNotificationConnectionListener *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configurations, configurations);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (void)startListeningForNotifications
{
  notificationListener = [(_BDSNotificationConnectionListener *)self notificationListener];

  if (!notificationListener)
  {
    v4 = [[CKNotificationListener alloc] initWithMachServiceName:@"com.apple.aps.bookdatastored"];
    [(_BDSNotificationConnectionListener *)self setNotificationListener:v4];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    configurations = [(_BDSNotificationConnectionListener *)self configurations];
    v6 = [configurations countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(configurations);
          }

          [(_BDSNotificationConnectionListener *)self _registerContainerWithConfiguration:*(*(&v10 + 1) + 8 * v9)];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [configurations countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_registerContainerWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  containerIdentifier = [configurationCopy containerIdentifier];
  v6 = [CKContainer containerWithIdentifier:containerIdentifier];

  appBundleIdentifier = [configurationCopy appBundleIdentifier];
  [v6 setSourceApplicationBundleIdentifier:appBundleIdentifier];

  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    containerIdentifier2 = [configurationCopy containerIdentifier];
    v12 = 138543362;
    v13 = containerIdentifier2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Notification] Registering for notifications for container %{public}@", &v12, 0xCu);
  }

  dbSubscriptionID = [configurationCopy dbSubscriptionID];
  privateCloudDatabase = [v6 privateCloudDatabase];
  [(_BDSNotificationConnectionListener *)self _registerForSubscriptionID:dbSubscriptionID inDatabase:privateCloudDatabase];
}

- (void)_registerForSubscriptionID:(id)d inDatabase:(id)database
{
  dCopy = d;
  databaseCopy = database;
  objc_initWeak(&location, self);
  notificationListener = [(_BDSNotificationConnectionListener *)self notificationListener];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100031660;
  v9[3] = &unk_100240BA8;
  objc_copyWeak(&v10, &location);
  [notificationListener registerForSubscriptionWithID:dCopy inDatabase:databaseCopy handler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (_BDSNotificationConnectionListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end