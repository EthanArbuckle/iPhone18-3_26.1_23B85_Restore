@interface MRDIDSDiscoverySession
- (MRDIDSDiscoverySession)init;
- (NSString)debugDescription;
- (unsigned)discoveryMode;
- (void)_onWorkerQueue_reload;
- (void)_onWorkerQueue_scheduleReload;
- (void)setDiscoveryMode:(unsigned int)mode;
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
    uTF8String = [v5 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(uTF8String, v7);
    workerQueue = v4->_workerQueue;
    v4->_workerQueue = v8;
  }

  return v4;
}

- (NSString)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy = [[NSMutableString alloc] initWithFormat:@"<%@ %p {\n", objc_opt_class(), selfCopy];
  discoveryMode = selfCopy->_discoveryMode;
  v5 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  [selfCopy appendFormat:@"  discoveryMode = %@\n", v5];

  devices = [(IDSService *)selfCopy->_idsService devices];
  v7 = MRCreateIndentedDebugDescriptionFromArray();
  [selfCopy appendFormat:@"  idsService = %@\n", v7];

  availableOutputDevices = [(MRDIDSDiscoverySession *)selfCopy availableOutputDevices];
  v9 = MRCreateIndentedDebugDescriptionFromArray();
  [selfCopy appendFormat:@"  outputDevices = %@\n", v9];

  [selfCopy appendString:@"}>"];
  objc_sync_exit(selfCopy);

  return selfCopy;
}

- (void)setDiscoveryMode:(unsigned int)mode
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsService = selfCopy->_idsService;
  if (mode)
  {
    if (!idsService)
    {
      v6 = +[IDSService mr_sharedIDSService];
      v7 = selfCopy->_idsService;
      selfCopy->_idsService = v6;

      [(IDSService *)selfCopy->_idsService addDelegate:selfCopy queue:selfCopy->_workerQueue];
    }
  }

  else
  {
    [(IDSService *)idsService removeDelegate:selfCopy];
    v8 = selfCopy->_idsService;
    selfCopy->_idsService = 0;
  }

  selfCopy->_discoveryMode = mode;
  workerQueue = selfCopy->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008F808;
  block[3] = &unk_1004B6D08;
  block[4] = selfCopy;
  dispatch_async(workerQueue, block);
  objc_sync_exit(selfCopy);
}

- (unsigned)discoveryMode
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  discoveryMode = selfCopy->_discoveryMode;
  objc_sync_exit(selfCopy);

  return discoveryMode;
}

- (void)_onWorkerQueue_reload
{
  dispatch_assert_queue_V2(self->_workerQueue);
  devices = [(IDSService *)self->_idsService devices];
  v4 = [devices msv_map:&stru_1004B9470];

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