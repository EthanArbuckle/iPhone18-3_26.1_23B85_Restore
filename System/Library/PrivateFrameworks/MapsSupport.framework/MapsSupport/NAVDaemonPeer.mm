@interface NAVDaemonPeer
- (BOOL)checkDebugEntitlement;
- (BOOL)checkRegularEntitlement;
- (NAVDaemonPeer)initWithNavdManager:(id)a3 forXPCConnection:(id)a4;
- (void)didPostUINotification:(unint64_t)a3 forDestination:(id)a4 fromClient:(id)a5;
- (void)forceCacheRefresh;
- (void)onlyPerformLocalUpdatesForPlannedDestination:(id)a3 client:(id)a4;
- (void)requestRefreshForPlannedDestination:(id)a3 client:(id)a4;
- (void)startMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5;
- (void)statusWithCallback:(id)a3;
- (void)stopMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5;
@end

@implementation NAVDaemonPeer

- (NAVDaemonPeer)initWithNavdManager:(id)a3 forXPCConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = NAVDaemonPeer;
  v9 = [(NAVDaemonPeer *)&v26 init];
  v10 = v9;
  if (v9)
  {
    v9->_monitoringSuggestions = 0;
    objc_storeStrong(&v9->_navdManager, a3);
    objc_storeStrong(&v10->_connection, a4);
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEONavdProxyObserver];
    [v8 setRemoteObjectInterface:v11];

    v12 = [v8 remoteObjectProxy];
    proxyObserver = v10->_proxyObserver;
    v10->_proxyObserver = v12;

    v14 = [[GEOPerformanceEventLogger alloc] initWithClassName:@"NAVDaemonPeer"];
    performanceEventLogger = v10->_performanceEventLogger;
    v10->_performanceEventLogger = v14;

    v16 = objc_alloc_init(NSMutableArray);
    suggestionClients = v10->_suggestionClients;
    v10->_suggestionClients = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("Clients Lists Queue", v18);
    clientsQueue = v10->_clientsQueue;
    v10->_clientsQueue = v19;

    v21 = [v8 valueForEntitlement:@"com.apple.geoservices.navd.routehypothesis"];
    v10->_hasRegularEntitlement = [v21 BOOLValue];
    v22 = [v8 valueForEntitlement:@"com.apple.geoservices.navd.supersekret.debug"];

    v10->_hasDebugEntitlement = [v22 BOOLValue];
    v23 = [v8 valueForEntitlement:@"com.apple.geoservices.navd.clientIdentifier"];
    clientIdentifierEntitlement = v10->_clientIdentifierEntitlement;
    v10->_clientIdentifierEntitlement = v23;
  }

  return v10;
}

- (BOOL)checkRegularEntitlement
{
  if (self->_hasRegularEntitlement)
  {
    if (self->_clientIdentifierEntitlement)
    {
      return 1;
    }

    v3 = @"com.apple.geoservices.navd.clientIdentifier";
  }

  else
  {
    v3 = @"com.apple.geoservices.navd.routehypothesis";
  }

  NSLog(@"Client is missing %@ entitlement, ignoring call.", a2, v3);
  return 0;
}

- (BOOL)checkDebugEntitlement
{
  if (self->_hasDebugEntitlement)
  {
    if (self->_clientIdentifierEntitlement)
    {
      return 1;
    }

    v3 = @"com.apple.geoservices.navd.clientIdentifier";
  }

  else
  {
    v3 = @"com.apple.geoservices.navd.supersekret.debug";
  }

  NSLog(@"Client is missing %@ entitlement, ignoring call.", a2, v3);
  return 0;
}

- (void)startMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer startMonitoringDestination:forClient:uuid:]"];
  if ([(NAVDaemonPeer *)self checkRegularEntitlement])
  {
    navdManager = self->_navdManager;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100030B20;
    v12[3] = &unk_100064EB8;
    v12[4] = self;
    v13 = v9;
    [(GEONavdManager *)navdManager startMonitoringDestination:v8 forClient:v13 uuid:v10 handler:v12];
  }
}

- (void)stopMonitoringDestination:(id)a3 forClient:(id)a4 uuid:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer stopMonitoringDestination:forClient:uuid:]"];
  if ([(NAVDaemonPeer *)self checkRegularEntitlement])
  {
    [(GEONavdManager *)self->_navdManager stopMonitoringDestination:v10 forClient:v8 uuid:v9];
  }
}

- (void)requestRefreshForPlannedDestination:(id)a3 client:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer requestRefreshForPlannedDestination:client:]"];
  if ([(NAVDaemonPeer *)self checkRegularEntitlement])
  {
    [(GEONavdManager *)self->_navdManager requestRefreshForPlannedDestination:v7 client:v6];
  }
}

- (void)onlyPerformLocalUpdatesForPlannedDestination:(id)a3 client:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer onlyPerformLocalUpdatesForPlannedDestination:client:]"];
  if ([(NAVDaemonPeer *)self checkRegularEntitlement])
  {
    [(GEONavdManager *)self->_navdManager onlyPerformLocalUpdatesForPlannedDestination:v7 client:v6];
  }
}

- (void)didPostUINotification:(unint64_t)a3 forDestination:(id)a4 fromClient:(id)a5
{
  v9 = a4;
  v8 = a5;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer didPostUINotification:forDestination:fromClient:]"];
  if ([(NAVDaemonPeer *)self checkRegularEntitlement])
  {
    [(GEONavdManager *)self->_navdManager didPostUINotification:a3 forDestination:v9 fromClient:v8];
  }
}

- (void)statusWithCallback:(id)a3
{
  v4 = a3;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer statusWithCallback:]"];
  if ([(NAVDaemonPeer *)self checkDebugEntitlement])
  {
    [(GEONavdManager *)self->_navdManager statusWithCallback:v4];
  }
}

- (void)forceCacheRefresh
{
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer forceCacheRefresh]"];
  if ([(NAVDaemonPeer *)self checkDebugEntitlement])
  {
    navdManager = self->_navdManager;

    [(GEONavdManager *)navdManager forceCacheRefresh];
  }
}

@end