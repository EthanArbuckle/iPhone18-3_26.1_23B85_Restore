@interface MRDMRRelayRemoteControlService
- (MRDMRRelayRemoteControlServiceDelegate)delegate;
- (NSString)debugDescription;
- (void)_clearSecondaryConnectionsForDevicesNotInArray:(id)a3;
- (void)_handleCompletedOperation:(id)a3 forOutputDeviceUID:(id)a4;
- (void)_reevaluateSecondaryConnectionWithDeviceInfo:(id)a3;
- (void)_reevaluateWithReason:(id)a3;
- (void)start;
- (void)stop;
- (void)transportDidClose:(id)a3 error:(id)a4;
@end

@implementation MRDMRRelayRemoteControlService

- (void)start
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.MediaRemote.MRDMRRelayRemoteControlService", v3);
  queue = self->_queue;
  self->_queue = v4;

  v6 = [(MRDMRRelayRemoteControlService *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B6AC4;
  v7[3] = &unk_1004B6D08;
  v7[4] = self;
  sub_10019FEE8(v6, v7);
}

- (void)stop
{
  v3 = [(MRDMRRelayRemoteControlService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6C64;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (NSString)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [(MRDMRRelayRemoteControlService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6EE0;
  block[3] = &unk_1004B68F0;
  block[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(v4, block);

  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)transportDidClose:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDMRRelayRemoteControlService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B7164;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_reevaluateWithReason:(id)a3
{
  v4 = [(MRDMRRelayRemoteControlService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B73FC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_reevaluateSecondaryConnectionWithDeviceInfo:(id)a3
{
  v17 = a3;
  v4 = [(MRDMRRelayRemoteControlService *)self queue];
  dispatch_assert_queue_V2(v4);

  v18 = +[MRAVOutputContext sharedAudioPresentationContext];
  v5 = [v18 mr_allAirPlayDevices];
  [(MRDMRRelayRemoteControlService *)self _clearSecondaryConnectionsForDevicesNotInArray:v5];
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v28 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v20 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = [v8 uid];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1001B77AC;
        v25[3] = &unk_1004C18F0;
        v25[4] = self;
        v10 = v9;
        v26 = v10;
        v27 = v8;
        v11 = sub_1001B77AC(v25);
        if ([v11 result])
        {
          v12 = [[MRDConnectToRelaySecondaryOperation alloc] initWithOutputDevice:v8];
          objc_initWeak(&location, v12);
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1001B7904;
          v21[3] = &unk_1004C1918;
          v21[4] = self;
          objc_copyWeak(&v23, &location);
          v13 = v10;
          v22 = v13;
          [(MRDConnectToRelaySecondaryOperation *)v12 setCompletionBlock:v21];
          v14 = [(MRDMRRelayRemoteControlService *)self operations];
          v15 = [v14 objectForKeyedSubscript:v13];

          if (!v15)
          {
            v15 = objc_alloc_init(NSOperationQueue);
            v16 = [(MRDMRRelayRemoteControlService *)self operations];
            [v16 setObject:v15 forKeyedSubscript:v13];
          }

          [v15 addOperation:v12];

          objc_destroyWeak(&v23);
          objc_destroyWeak(&location);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }
}

- (void)_handleCompletedOperation:(id)a3 forOutputDeviceUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDMRRelayRemoteControlService *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 handle];
  v10 = [v9 connection];
  [v10 addObserver:self];

  v11 = [v6 handle];
  v12 = [v11 connection];
  if (([v12 isValid] & 1) == 0)
  {

    goto LABEL_9;
  }

  v13 = [v6 error];

  if (v13)
  {
LABEL_9:
    v20 = [v6 handle];
    v21 = [v20 connection];
    v22 = [v6 error];
    [v21 closeWithError:v22];

    v23 = [v6 handle];
    v24 = [v23 connection];
    [v24 removeObserver:self];

    v25 = [NSString alloc];
    v26 = [v6 error];
    v27 = [v6 handle];
    v28 = [v25 initWithFormat:@"relayConnection is not valid with error=%@: %@", v26, v27];

    [(MRDMRRelayRemoteControlService *)self _reevaluateWithReason:v28];
    goto LABEL_10;
  }

  v14 = [(MRDMRRelayRemoteControlService *)self relayConnectionsToSecondaries];

  if (!v14)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    [(MRDMRRelayRemoteControlService *)self setRelayConnectionsToSecondaries:v15];
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v6 handle];
    *buf = 138412290;
    v32 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayRemoteControlService] Adding relayConnection: %@", buf, 0xCu);
  }

  v18 = [v6 handle];
  v19 = [(MRDMRRelayRemoteControlService *)self relayConnectionsToSecondaries];
  [v19 setObject:v18 forKeyedSubscript:v7];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B7D44;
  block[3] = &unk_1004B68F0;
  block[4] = self;
  v30 = v6;
  dispatch_async(&_dispatch_main_q, block);

LABEL_10:
}

- (void)_clearSecondaryConnectionsForDevicesNotInArray:(id)a3
{
  v4 = a3;
  v5 = [(MRDMRRelayRemoteControlService *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [NSSet alloc];
  v7 = [v4 msv_map:&stru_1004C1938];

  v8 = [v6 initWithArray:v7];
  v9 = [(MRDMRRelayRemoteControlService *)self operations];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001B7F58;
  v16[3] = &unk_1004C1960;
  v10 = v8;
  v17 = v10;
  v18 = self;
  [v9 enumerateKeysAndObjectsUsingBlock:v16];
  v11 = [(MRDMRRelayRemoteControlService *)self relayConnectionsToSecondaries];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001B8080;
  v13[3] = &unk_1004C1988;
  v14 = v10;
  v15 = self;
  v12 = v10;
  [v11 enumerateKeysAndObjectsUsingBlock:v13];
}

- (MRDMRRelayRemoteControlServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end