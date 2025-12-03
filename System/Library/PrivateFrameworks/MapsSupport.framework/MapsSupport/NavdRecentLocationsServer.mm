@interface NavdRecentLocationsServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NavdRecentLocationsServer)init;
- (void)beginServicingConnection:(id)connection;
- (void)endServicingConnection:(id)connection;
- (void)requestRecentLocationsWithResponse:(id)response;
@end

@implementation NavdRecentLocationsServer

- (NavdRecentLocationsServer)init
{
  v13.receiver = self;
  v13.super_class = NavdRecentLocationsServer;
  v2 = [(NavdRecentLocationsServer *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    peers = v2->_peers;
    v2->_peers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.navd.recentLocationsServicePeersQueue", v5);
    peersQueue = v2->_peersQueue;
    v2->_peersQueue = v6;

    v8 = [[GEOPerformanceEventLogger alloc] initWithClassName:@"NavdRecentLocationsServer"];
    performanceEventLogger = v2->_performanceEventLogger;
    v2->_performanceEventLogger = v8;

    v10 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.navd.recentLocationsService"];
    listener = v2->_listener;
    v2->_listener = v10;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)requestRecentLocationsWithResponse:(id)response
{
  responseCopy = response;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NavdRecentLocationsServer requestRecentLocationsWithResponse:]"];
  v5 = +[NavdLocationLeecher sharedLeecher];
  leechedLocations = [v5 leechedLocations];
  v7 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = leechedLocations;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = [GEOLocation alloc];
        v15 = [v14 initWithCLLocation:{v13, v17}];
        [v7 addObject:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  responseCopy[2](responseCopy, v16);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.geoservices.navd.recentLocations"];
  v9 = [v8 isEqual:&__kCFBooleanTrue];

  if (v9)
  {
    [(NavdRecentLocationsServer *)self beginServicingConnection:connectionCopy];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEORecentLocationsXPCInterface];
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
    [v10 setClasses:v12 forSelector:"requestRecentLocationsWithResponse:" argumentIndex:0 ofReply:1];
    [connectionCopy setExportedInterface:v10];
    [connectionCopy setExportedObject:self];
    objc_initWeak(&location, connectionCopy);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002A204;
    v14[3] = &unk_100064F58;
    objc_copyWeak(&v15, &location);
    v14[4] = self;
    [connectionCopy setInvalidationHandler:v14];
    [connectionCopy resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)beginServicingConnection:(id)connection
{
  connectionCopy = connection;
  peersQueue = self->_peersQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A2F8;
  v7[3] = &unk_1000650C0;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(peersQueue, v7);
}

- (void)endServicingConnection:(id)connection
{
  connectionCopy = connection;
  peersQueue = self->_peersQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A39C;
  v7[3] = &unk_1000650C0;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(peersQueue, v7);
}

@end