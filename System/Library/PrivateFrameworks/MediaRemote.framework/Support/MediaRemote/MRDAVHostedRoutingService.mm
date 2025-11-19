@interface MRDAVHostedRoutingService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MRDAVHostedRoutingService)init;
- (id)endpointForDeviceUID:(id)a3;
- (id)endpointForOrigin:(id)a3;
- (void)collectDiagnostic:(id)a3;
- (void)hostedDiscoverySessionDidInvalidate:(id)a3;
@end

@implementation MRDAVHostedRoutingService

- (MRDAVHostedRoutingService)init
{
  v15.receiver = self;
  v15.super_class = MRDAVHostedRoutingService;
  v2 = [(MRDAVHostedRoutingService *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(Name, v5);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v6;

    v8 = +[NSXPCListener anonymousListener];
    anonymousListener = v2->_anonymousListener;
    v2->_anonymousListener = v8;

    [(NSXPCListener *)v2->_anonymousListener setDelegate:v2];
    v10 = objc_alloc_init(MRDAVHostedRoutingController);
    hostedRoutingController = v2->_hostedRoutingController;
    v2->_hostedRoutingController = &v10->super;

    v12 = objc_alloc_init(NSMutableSet);
    hostedDiscoverySessions = v2->_hostedDiscoverySessions;
    v2->_hostedDiscoverySessions = v12;

    [(NSXPCListener *)v2->_anonymousListener resume];
  }

  return v2;
}

- (id)endpointForOrigin:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003505C;
  v16 = sub_1000359E4;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8E28;
  block[3] = &unk_1004B78D8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)endpointForDeviceUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003505C;
  v16 = sub_1000359E4;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9114;
  block[3] = &unk_1004B78D8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)hostedDiscoverySessionDidInvalidate:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A92D8;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [[MRDAVHostedDiscoverySession alloc] initWithConnection:v5 hostedRoutingController:self->_hostedRoutingController];

  [(MRDAVHostedDiscoverySession *)v6 setDelegate:self];
  serialQueue = self->_serialQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A93BC;
  v10[3] = &unk_1004B68F0;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_sync(serialQueue, v10);

  return 1;
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A9460;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

@end