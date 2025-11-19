@interface MRDHostedExternalDeviceManager
- (BOOL)isDirectConnectedToOutputDeviceUID:(id)a3;
- (MRDHostedExternalDeviceManager)init;
- (MRDHostedExternalDeviceManagerDelegate)delegate;
- (NSDictionary)availableExternalDevices;
- (id)disconnectUndiscoverableEndpoints:(id)a3;
- (id)hostedExternalDeviceForEndpointIdentifier:(id)a3;
- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)a3;
- (void)_removeExternalDeviceWithEndpointIdentifier:(id)a3 error:(id)a4;
- (void)_removeExternalDeviceWithOutputDeviceUID:(id)a3 error:(id)a4;
- (void)_tombstoneHostedExternalDevice:(id)a3 error:(id)a4;
- (void)addHostedExternalDevice:(id)a3 endpoint:(id)a4;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_hostedExternalDeviceMap copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)addHostedExternalDevice:(id)a3 endpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = MRLogCategoryDiscovery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 uniqueIdentifier];
    v11 = [v6 externalDevice];
    *buf = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDHostedExternalDeviceManager] Created new hostedExternalDevice=%{public}@, endpoint=%{public}@ externalDevice=%@", buf, 0x20u);
  }

  hostedExternalDeviceMap = v8->_hostedExternalDeviceMap;
  v13 = [v7 uniqueIdentifier];
  [(NSMutableDictionary *)hostedExternalDeviceMap setObject:v6 forKeyedSubscript:v13];

  objc_sync_exit(v8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100175208;
  block[3] = &unk_1004B6D08;
  block[4] = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)hostedExternalDeviceForEndpointIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_hostedExternalDeviceMap objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (BOOL)isDirectConnectedToOutputDeviceUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  hostedExternalDeviceMap = v5->_hostedExternalDeviceMap;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001753C8;
  v10[3] = &unk_1004BF928;
  v7 = v4;
  v11 = v7;
  v8 = [(NSMutableDictionary *)hostedExternalDeviceMap msv_firstWhere:v10];
  LOBYTE(hostedExternalDeviceMap) = v8 != 0;

  objc_sync_exit(v5);
  return hostedExternalDeviceMap;
}

- (id)disconnectUndiscoverableEndpoints:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = self;
  objc_sync_enter(v6);
  v7 = objc_alloc_init(NSMutableDictionary);
  hostedExternalDeviceMap = v6->_hostedExternalDeviceMap;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100175590;
  v15[3] = &unk_1004BFD90;
  v9 = v4;
  v16 = v9;
  v10 = v7;
  v17 = v10;
  [(NSMutableDictionary *)hostedExternalDeviceMap enumerateKeysAndObjectsUsingBlock:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001756A8;
  v13[3] = &unk_1004BFD90;
  v13[4] = v6;
  v11 = v5;
  v14 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v13];

  objc_sync_exit(v6);

  return v11;
}

- (void)_removeExternalDeviceWithEndpointIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_hostedExternalDeviceMap objectForKeyedSubscript:v6];
  v9 = MRLogCategoryDiscovery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 externalDevice];
    *buf = 138544130;
    v13 = v8;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDHostedExternalDeviceManager] Removing hostedExternalDevice=%{public}@, endpointIdentifier=%{public}@ reason=%{public}@ externalDevice=%@", buf, 0x2Au);
  }

  [(MRDHostedExternalDeviceManager *)self _tombstoneHostedExternalDevice:v8 error:v7];
  [(NSMutableDictionary *)self->_hostedExternalDeviceMap setObject:0 forKeyedSubscript:v6];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017599C;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_removeExternalDeviceWithOutputDeviceUID:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  hostedExternalDeviceMap = self->_hostedExternalDeviceMap;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100175BAC;
  v22[3] = &unk_1004BFDB8;
  v10 = v6;
  v23 = v10;
  v11 = v7;
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

- (void)_tombstoneHostedExternalDevice:(id)a3 error:(id)a4
{
  v6 = a3;
  [v6 tombstoneWithError:a4];
  [(NSMutableArray *)self->_hostedExternalDeviceGraveyard addObject:v6];
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
  v11 = v6;
  v9 = v6;
  dispatch_after(v7, v8, v10);
}

- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:kMRExternalDeviceConnectionStateUserInfoKey];
  v7 = [v6 unsignedIntValue];

  v8 = [v4 object];
  if (v7 == 3)
  {
    v9 = self;
    objc_sync_enter(v9);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_10003520C;
    v23 = sub_100035ABC;
    v24 = 0;
    hostedExternalDeviceMap = v9->_hostedExternalDeviceMap;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100176080;
    v16 = &unk_1004BFE00;
    v17 = v8;
    v18 = &v19;
    [(NSMutableDictionary *)hostedExternalDeviceMap enumerateKeysAndObjectsUsingBlock:&v13];
    if (v20[5])
    {
      v11 = [v4 userInfo];
      v12 = [v11 objectForKey:NSUnderlyingErrorKey];

      [(MRDHostedExternalDeviceManager *)v9 _removeExternalDeviceWithEndpointIdentifier:v20[5] error:v12];
    }

    _Block_object_dispose(&v19, 8);
    objc_sync_exit(v9);
  }
}

@end