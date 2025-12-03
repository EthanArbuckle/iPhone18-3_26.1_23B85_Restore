@interface MRDHostedExternalDeviceManager
- (BOOL)isDirectConnectedToOutputDeviceUID:(id)d;
- (MRDHostedExternalDeviceManager)init;
- (MRDHostedExternalDeviceManagerDelegate)delegate;
- (NSDictionary)availableExternalDevices;
- (id)disconnectUndiscoverableEndpoints:(id)endpoints;
- (id)hostedExternalDeviceForEndpointIdentifier:(id)identifier;
- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)notification;
- (void)_removeExternalDeviceWithEndpointIdentifier:(id)identifier error:(id)error;
- (void)_removeExternalDeviceWithOutputDeviceUID:(id)d error:(id)error;
- (void)_tombstoneHostedExternalDevice:(id)device error:(id)error;
- (void)addHostedExternalDevice:(id)device endpoint:(id)endpoint;
@end

@implementation MRDHostedExternalDeviceManager

- (MRDHostedExternalDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MRDHostedExternalDeviceManager)init
{
  v9.receiver = self;
  v9.super_class = MRDHostedExternalDeviceManager;
  v2 = [(MRDHostedExternalDeviceManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    hostedExternalDeviceMap = v2->_hostedExternalDeviceMap;
    v2->_hostedExternalDeviceMap = v3;

    v5 = objc_alloc_init(NSMutableArray);
    hostedExternalDeviceGraveyard = v2->_hostedExternalDeviceGraveyard;
    v2->_hostedExternalDeviceGraveyard = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_handleExternalDeviceConnectionStateDidChangeNotification:" name:kMRExternalDeviceConnectionStateDidChangeNotification object:0];
  }

  return v2;
}

- (NSDictionary)availableExternalDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_hostedExternalDeviceMap copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)addHostedExternalDevice:(id)device endpoint:(id)endpoint
{
  deviceCopy = device;
  endpointCopy = endpoint;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = MRLogCategoryDiscovery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [endpointCopy uniqueIdentifier];
    externalDevice = [deviceCopy externalDevice];
    *buf = 138543874;
    v16 = deviceCopy;
    v17 = 2114;
    v18 = uniqueIdentifier;
    v19 = 2112;
    v20 = externalDevice;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDHostedExternalDeviceManager] Created new hostedExternalDevice=%{public}@, endpoint=%{public}@ externalDevice=%@", buf, 0x20u);
  }

  hostedExternalDeviceMap = selfCopy->_hostedExternalDeviceMap;
  uniqueIdentifier2 = [endpointCopy uniqueIdentifier];
  [(NSMutableDictionary *)hostedExternalDeviceMap setObject:deviceCopy forKeyedSubscript:uniqueIdentifier2];

  objc_sync_exit(selfCopy);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100175208;
  block[3] = &unk_1004B6D08;
  block[4] = selfCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)hostedExternalDeviceForEndpointIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_hostedExternalDeviceMap objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)isDirectConnectedToOutputDeviceUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hostedExternalDeviceMap = selfCopy->_hostedExternalDeviceMap;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001753C8;
  v10[3] = &unk_1004BF928;
  v7 = dCopy;
  v11 = v7;
  v8 = [(NSMutableDictionary *)hostedExternalDeviceMap msv_firstWhere:v10];
  LOBYTE(hostedExternalDeviceMap) = v8 != 0;

  objc_sync_exit(selfCopy);
  return hostedExternalDeviceMap;
}

- (id)disconnectUndiscoverableEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  v5 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_alloc_init(NSMutableDictionary);
  hostedExternalDeviceMap = selfCopy->_hostedExternalDeviceMap;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100175590;
  v15[3] = &unk_1004BFD90;
  v9 = endpointsCopy;
  v16 = v9;
  v10 = v7;
  v17 = v10;
  [(NSMutableDictionary *)hostedExternalDeviceMap enumerateKeysAndObjectsUsingBlock:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001756A8;
  v13[3] = &unk_1004BFD90;
  v13[4] = selfCopy;
  v11 = v5;
  v14 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v13];

  objc_sync_exit(selfCopy);

  return v11;
}

- (void)_removeExternalDeviceWithEndpointIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v8 = [(NSMutableDictionary *)self->_hostedExternalDeviceMap objectForKeyedSubscript:identifierCopy];
  v9 = MRLogCategoryDiscovery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    externalDevice = [v8 externalDevice];
    *buf = 138544130;
    v13 = v8;
    v14 = 2114;
    v15 = identifierCopy;
    v16 = 2114;
    v17 = errorCopy;
    v18 = 2112;
    v19 = externalDevice;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDHostedExternalDeviceManager] Removing hostedExternalDevice=%{public}@, endpointIdentifier=%{public}@ reason=%{public}@ externalDevice=%@", buf, 0x2Au);
  }

  [(MRDHostedExternalDeviceManager *)self _tombstoneHostedExternalDevice:v8 error:errorCopy];
  [(NSMutableDictionary *)self->_hostedExternalDeviceMap setObject:0 forKeyedSubscript:identifierCopy];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017599C;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_removeExternalDeviceWithOutputDeviceUID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  v8 = objc_opt_new();
  hostedExternalDeviceMap = self->_hostedExternalDeviceMap;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100175BAC;
  v22[3] = &unk_1004BFDB8;
  v10 = dCopy;
  v23 = v10;
  v11 = errorCopy;
  v24 = v11;
  v12 = v8;
  v25 = v12;
  [(NSMutableDictionary *)hostedExternalDeviceMap enumerateKeysAndObjectsUsingBlock:v22];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(MRDHostedExternalDeviceManager *)self _removeExternalDeviceWithEndpointIdentifier:*(*(&v18 + 1) + 8 * v17) error:v11, v18];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)_tombstoneHostedExternalDevice:(id)device error:(id)error
{
  deviceCopy = device;
  [deviceCopy tombstoneWithError:error];
  [(NSMutableArray *)self->_hostedExternalDeviceGraveyard addObject:deviceCopy];
  if (qword_1005295B0 != -1)
  {
    sub_1003ABD74();
  }

  v7 = dispatch_time(0, 5000000000);
  v8 = qword_1005295A8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100175E38;
  v10[3] = &unk_1004B68F0;
  v10[4] = self;
  v11 = deviceCopy;
  v9 = deviceCopy;
  dispatch_after(v7, v8, v10);
}

- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:kMRExternalDeviceConnectionStateUserInfoKey];
  unsignedIntValue = [v6 unsignedIntValue];

  object = [notificationCopy object];
  if (unsignedIntValue == 3)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_10003520C;
    v23 = sub_100035ABC;
    v24 = 0;
    hostedExternalDeviceMap = selfCopy->_hostedExternalDeviceMap;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100176080;
    v16 = &unk_1004BFE00;
    v17 = object;
    v18 = &v19;
    [(NSMutableDictionary *)hostedExternalDeviceMap enumerateKeysAndObjectsUsingBlock:&v13];
    if (v20[5])
    {
      userInfo2 = [notificationCopy userInfo];
      v12 = [userInfo2 objectForKey:NSUnderlyingErrorKey];

      [(MRDHostedExternalDeviceManager *)selfCopy _removeExternalDeviceWithEndpointIdentifier:v20[5] error:v12];
    }

    _Block_object_dispose(&v19, 8);
    objc_sync_exit(selfCopy);
  }
}

@end