@interface _NACAVRoutingDiscoverySession
- (_NACAVRoutingDiscoverySession)init;
- (void)dealloc;
- (void)fetchRouteForOriginIdentifier:(id)a3 completion:(id)a4;
@end

@implementation _NACAVRoutingDiscoverySession

- (_NACAVRoutingDiscoverySession)init
{
  v12.receiver = self;
  v12.super_class = _NACAVRoutingDiscoverySession;
  v2 = [(_NACAVRoutingDiscoverySession *)&v12 init];
  if (v2)
  {
    *(v2 + 1) = MRAVRoutingDiscoverySessionCreate();
    MRAVRoutingDiscoverySessionSetAlwaysAllowUpdates();
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoAudioControl.EndpointObserver", v3);
    v5 = *(v2 + 4);
    *(v2 + 4) = v4;

    v6 = dispatch_group_create();
    v7 = *(v2 + 3);
    *(v2 + 3) = v6;

    dispatch_group_enter(*(v2 + 3));
    objc_initWeak(&location, v2);
    v8 = *(v2 + 1);
    objc_copyWeak(&v10, &location);
    *(v2 + 2) = MRAVRoutingDiscoverySessionAddEndpointsChangedCallback();
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  callbackToken = self->_callbackToken;
  if (callbackToken)
  {
    CFRelease(callbackToken);
  }

  discoverySession = self->_discoverySession;
  if (discoverySession)
  {
    CFRelease(discoverySession);
  }

  v5.receiver = self;
  v5.super_class = _NACAVRoutingDiscoverySession;
  [(_NACAVRoutingDiscoverySession *)&v5 dealloc];
}

- (void)fetchRouteForOriginIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  initialFetchGroup = self->_initialFetchGroup;
  serialQueue = self->_serialQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74___NACAVRoutingDiscoverySession_fetchRouteForOriginIdentifier_completion___block_invoke;
  v14[3] = &unk_27992BC70;
  v14[4] = self;
  v15 = v6;
  v16 = v8;
  v17 = v7;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  dispatch_group_notify(initialFetchGroup, serialQueue, v14);
}

@end