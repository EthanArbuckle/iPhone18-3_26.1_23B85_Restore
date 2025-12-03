@interface NAVDaemonPeer
- (BOOL)checkDebugEntitlement;
- (BOOL)checkRegularEntitlement;
- (NAVDaemonPeer)initWithNavdManager:(id)manager forXPCConnection:(id)connection;
- (void)didPostUINotification:(unint64_t)notification forDestination:(id)destination fromClient:(id)client;
- (void)forceCacheRefresh;
- (void)onlyPerformLocalUpdatesForPlannedDestination:(id)destination client:(id)client;
- (void)requestRefreshForPlannedDestination:(id)destination client:(id)client;
- (void)startMonitoringDestination:(id)destination forClient:(id)client uuid:(id)uuid;
- (void)statusWithCallback:(id)callback;
- (void)stopMonitoringDestination:(id)destination forClient:(id)client uuid:(id)uuid;
@end

@implementation NAVDaemonPeer

- (NAVDaemonPeer)initWithNavdManager:(id)manager forXPCConnection:(id)connection
{
  managerCopy = manager;
  connectionCopy = connection;
  v26.receiver = self;
  v26.super_class = NAVDaemonPeer;
  v9 = [(NAVDaemonPeer *)&v26 init];
  v10 = v9;
  if (v9)
  {
    v9->_monitoringSuggestions = 0;
    objc_storeStrong(&v9->_navdManager, manager);
    objc_storeStrong(&v10->_connection, connection);
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___GEONavdProxyObserver];
    [connectionCopy setRemoteObjectInterface:v11];

    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    proxyObserver = v10->_proxyObserver;
    v10->_proxyObserver = remoteObjectProxy;

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

    v21 = [connectionCopy valueForEntitlement:@"com.apple.geoservices.navd.routehypothesis"];
    v10->_hasRegularEntitlement = [v21 BOOLValue];
    v22 = [connectionCopy valueForEntitlement:@"com.apple.geoservices.navd.supersekret.debug"];

    v10->_hasDebugEntitlement = [v22 BOOLValue];
    v23 = [connectionCopy valueForEntitlement:@"com.apple.geoservices.navd.clientIdentifier"];
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

- (void)startMonitoringDestination:(id)destination forClient:(id)client uuid:(id)uuid
{
  destinationCopy = destination;
  clientCopy = client;
  uuidCopy = uuid;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer startMonitoringDestination:forClient:uuid:]"];
  if ([(NAVDaemonPeer *)self checkRegularEntitlement])
  {
    navdManager = self->_navdManager;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100030B20;
    v12[3] = &unk_100064EB8;
    v12[4] = self;
    v13 = clientCopy;
    [(GEONavdManager *)navdManager startMonitoringDestination:destinationCopy forClient:v13 uuid:uuidCopy handler:v12];
  }
}

- (void)stopMonitoringDestination:(id)destination forClient:(id)client uuid:(id)uuid
{
  destinationCopy = destination;
  clientCopy = client;
  uuidCopy = uuid;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer stopMonitoringDestination:forClient:uuid:]"];
  if ([(NAVDaemonPeer *)self checkRegularEntitlement])
  {
    [(GEONavdManager *)self->_navdManager stopMonitoringDestination:destinationCopy forClient:clientCopy uuid:uuidCopy];
  }
}

- (void)requestRefreshForPlannedDestination:(id)destination client:(id)client
{
  destinationCopy = destination;
  clientCopy = client;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer requestRefreshForPlannedDestination:client:]"];
  if ([(NAVDaemonPeer *)self checkRegularEntitlement])
  {
    [(GEONavdManager *)self->_navdManager requestRefreshForPlannedDestination:destinationCopy client:clientCopy];
  }
}

- (void)onlyPerformLocalUpdatesForPlannedDestination:(id)destination client:(id)client
{
  destinationCopy = destination;
  clientCopy = client;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer onlyPerformLocalUpdatesForPlannedDestination:client:]"];
  if ([(NAVDaemonPeer *)self checkRegularEntitlement])
  {
    [(GEONavdManager *)self->_navdManager onlyPerformLocalUpdatesForPlannedDestination:destinationCopy client:clientCopy];
  }
}

- (void)didPostUINotification:(unint64_t)notification forDestination:(id)destination fromClient:(id)client
{
  destinationCopy = destination;
  clientCopy = client;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer didPostUINotification:forDestination:fromClient:]"];
  if ([(NAVDaemonPeer *)self checkRegularEntitlement])
  {
    [(GEONavdManager *)self->_navdManager didPostUINotification:notification forDestination:destinationCopy fromClient:clientCopy];
  }
}

- (void)statusWithCallback:(id)callback
{
  callbackCopy = callback;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NAVDaemonPeer statusWithCallback:]"];
  if ([(NAVDaemonPeer *)self checkDebugEntitlement])
  {
    [(GEONavdManager *)self->_navdManager statusWithCallback:callbackCopy];
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