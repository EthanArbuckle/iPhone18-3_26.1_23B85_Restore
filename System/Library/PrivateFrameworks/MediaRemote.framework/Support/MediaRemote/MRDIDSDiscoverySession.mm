@interface MRDIDSDiscoverySession
- (MRDIDSDiscoverySession)init;
- (NSString)debugDescription;
- (unsigned)discoveryMode;
- (void)_onWorkerQueue_reload;
- (void)_onWorkerQueue_scheduleReload;
- (void)setDiscoveryMode:(unsigned int)a3;
@end

@implementation MRDIDSDiscoverySession

- (MRDIDSDiscoverySession)init
{
  v3 = [MRAVRoutingDiscoverySessionConfiguration configurationWithEndpointFeatures:16];
  v11.receiver = self;
  v11.super_class = MRDIDSDiscoverySession;
  v4 = [(MRDIDSDiscoverySession *)&v11 initWithConfiguration:v3];
  if (v4)
  {
    v5 = [[NSString alloc] initWithFormat:@"com.apple.mediaremote.%@", objc_opt_class()];
    v6 = [v5 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(v6, v7);
    workerQueue = v4->_workerQueue;
    v4->_workerQueue = v8;
  }

  return v4;
}

- (NSString)debugDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@ %p {\n", objc_opt_class(), v2];
  discoveryMode = v2->_discoveryMode;
  v5 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  [v3 appendFormat:@"  discoveryMode = %@\n", v5];

  v6 = [(IDSService *)v2->_idsService devices];
  v7 = MRCreateIndentedDebugDescriptionFromArray();
  [v3 appendFormat:@"  idsService = %@\n", v7];

  v8 = [(MRDIDSDiscoverySession *)v2 availableOutputDevices];
  v9 = MRCreateIndentedDebugDescriptionFromArray();
  [v3 appendFormat:@"  outputDevices = %@\n", v9];

  [v3 appendString:@"}>"];
  objc_sync_exit(v2);

  return v3;
}

- (void)setDiscoveryMode:(unsigned int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  idsService = v4->_idsService;
  if (a3)
  {
    if (!idsService)
    {
      v6 = +[IDSService mr_sharedIDSService];
      v7 = v4->_idsService;
      v4->_idsService = v6;

      [(IDSService *)v4->_idsService addDelegate:v4 queue:v4->_workerQueue];
    }
  }

  else
  {
    [(IDSService *)idsService removeDelegate:v4];
    v8 = v4->_idsService;
    v4->_idsService = 0;
  }

  v4->_discoveryMode = a3;
  workerQueue = v4->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008F808;
  block[3] = &unk_1004B6D08;
  block[4] = v4;
  dispatch_async(workerQueue, block);
  objc_sync_exit(v4);
}

- (unsigned)discoveryMode
{
  v2 = self;
  objc_sync_enter(v2);
  discoveryMode = v2->_discoveryMode;
  objc_sync_exit(v2);

  return discoveryMode;
}

- (void)_onWorkerQueue_reload
{
  dispatch_assert_queue_V2(self->_workerQueue);
  v3 = [(IDSService *)self->_idsService devices];
  v4 = [v3 msv_map:&stru_1004B9470];

  [(MRDIDSDiscoverySession *)self notifyOutputDevicesChanged:v4];
}

- (void)_onWorkerQueue_scheduleReload
{
  dispatch_assert_queue_V2(self->_workerQueue);
  if (!self->_reloadScheduled)
  {
    self->_reloadScheduled = 1;
    v3 = dispatch_time(0, 500000000);
    workerQueue = self->_workerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008F9A4;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_after(v3, workerQueue, block);
  }
}

@end