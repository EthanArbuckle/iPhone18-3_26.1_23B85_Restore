@interface MRDMRRelayRemoteControlService
- (MRDMRRelayRemoteControlServiceDelegate)delegate;
- (NSString)debugDescription;
- (void)_clearSecondaryConnectionsForDevicesNotInArray:(id)array;
- (void)_handleCompletedOperation:(id)operation forOutputDeviceUID:(id)d;
- (void)_reevaluateSecondaryConnectionWithDeviceInfo:(id)info;
- (void)_reevaluateWithReason:(id)reason;
- (void)start;
- (void)stop;
- (void)transportDidClose:(id)close error:(id)error;
@end

@implementation MRDMRRelayRemoteControlService

- (void)start
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.MediaRemote.MRDMRRelayRemoteControlService", v3);
  queue = self->_queue;
  self->_queue = v4;

  queue = [(MRDMRRelayRemoteControlService *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B6AC4;
  v7[3] = &unk_1004B6D08;
  v7[4] = self;
  sub_10019FEE8(queue, v7);
}

- (void)stop
{
  queue = [(MRDMRRelayRemoteControlService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6C64;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (NSString)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  queue = [(MRDMRRelayRemoteControlService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6EE0;
  block[3] = &unk_1004B68F0;
  block[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(queue, block);

  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)transportDidClose:(id)close error:(id)error
{
  closeCopy = close;
  errorCopy = error;
  queue = [(MRDMRRelayRemoteControlService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B7164;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = closeCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = closeCopy;
  dispatch_async(queue, block);
}

- (void)_reevaluateWithReason:(id)reason
{
  queue = [(MRDMRRelayRemoteControlService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B73FC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_reevaluateSecondaryConnectionWithDeviceInfo:(id)info
{
  infoCopy = info;
  queue = [(MRDMRRelayRemoteControlService *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = +[MRAVOutputContext sharedAudioPresentationContext];
  mr_allAirPlayDevices = [v18 mr_allAirPlayDevices];
  [(MRDMRRelayRemoteControlService *)self _clearSecondaryConnectionsForDevicesNotInArray:mr_allAirPlayDevices];
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v28 = 0u;
  obj = mr_allAirPlayDevices;
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
          operations = [(MRDMRRelayRemoteControlService *)self operations];
          v15 = [operations objectForKeyedSubscript:v13];

          if (!v15)
          {
            v15 = objc_alloc_init(NSOperationQueue);
            operations2 = [(MRDMRRelayRemoteControlService *)self operations];
            [operations2 setObject:v15 forKeyedSubscript:v13];
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

- (void)_handleCompletedOperation:(id)operation forOutputDeviceUID:(id)d
{
  operationCopy = operation;
  dCopy = d;
  queue = [(MRDMRRelayRemoteControlService *)self queue];
  dispatch_assert_queue_V2(queue);

  handle = [operationCopy handle];
  connection = [handle connection];
  [connection addObserver:self];

  handle2 = [operationCopy handle];
  connection2 = [handle2 connection];
  if (([connection2 isValid] & 1) == 0)
  {

    goto LABEL_9;
  }

  error = [operationCopy error];

  if (error)
  {
LABEL_9:
    handle3 = [operationCopy handle];
    connection3 = [handle3 connection];
    error2 = [operationCopy error];
    [connection3 closeWithError:error2];

    handle4 = [operationCopy handle];
    connection4 = [handle4 connection];
    [connection4 removeObserver:self];

    v25 = [NSString alloc];
    error3 = [operationCopy error];
    handle5 = [operationCopy handle];
    v28 = [v25 initWithFormat:@"relayConnection is not valid with error=%@: %@", error3, handle5];

    [(MRDMRRelayRemoteControlService *)self _reevaluateWithReason:v28];
    goto LABEL_10;
  }

  relayConnectionsToSecondaries = [(MRDMRRelayRemoteControlService *)self relayConnectionsToSecondaries];

  if (!relayConnectionsToSecondaries)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    [(MRDMRRelayRemoteControlService *)self setRelayConnectionsToSecondaries:v15];
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    handle6 = [operationCopy handle];
    *buf = 138412290;
    v32 = handle6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayRemoteControlService] Adding relayConnection: %@", buf, 0xCu);
  }

  handle7 = [operationCopy handle];
  relayConnectionsToSecondaries2 = [(MRDMRRelayRemoteControlService *)self relayConnectionsToSecondaries];
  [relayConnectionsToSecondaries2 setObject:handle7 forKeyedSubscript:dCopy];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B7D44;
  block[3] = &unk_1004B68F0;
  block[4] = self;
  v30 = operationCopy;
  dispatch_async(&_dispatch_main_q, block);

LABEL_10:
}

- (void)_clearSecondaryConnectionsForDevicesNotInArray:(id)array
{
  arrayCopy = array;
  queue = [(MRDMRRelayRemoteControlService *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [NSSet alloc];
  v7 = [arrayCopy msv_map:&stru_1004C1938];

  v8 = [v6 initWithArray:v7];
  operations = [(MRDMRRelayRemoteControlService *)self operations];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001B7F58;
  v16[3] = &unk_1004C1960;
  v10 = v8;
  v17 = v10;
  selfCopy = self;
  [operations enumerateKeysAndObjectsUsingBlock:v16];
  relayConnectionsToSecondaries = [(MRDMRRelayRemoteControlService *)self relayConnectionsToSecondaries];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001B8080;
  v13[3] = &unk_1004C1988;
  v14 = v10;
  selfCopy2 = self;
  v12 = v10;
  [relayConnectionsToSecondaries enumerateKeysAndObjectsUsingBlock:v13];
}

- (MRDMRRelayRemoteControlServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end