@interface CCMaintenanceServer
+ (NSString)machService;
- (BMXPCListener)listener;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CCMaintenanceServer)initWithQueue:(id)queue setBookkeeping:(id)bookkeeping;
- (CCSetBookkeeping)setBookkeeping;
- (void)activate;
- (void)performNightlyMaintenanceWithCompletionHandler:(id)handler;
@end

@implementation CCMaintenanceServer

+ (NSString)machService
{
  sub_1B6DFD50C();
  v2 = sub_1B6E0937C();

  return v2;
}

- (BMXPCListener)listener
{
  v2 = sub_1B6DFD5AC();

  return v2;
}

- (CCSetBookkeeping)setBookkeeping
{
  v2 = sub_1B6DFD5F0();

  return v2;
}

- (CCMaintenanceServer)initWithQueue:(id)queue setBookkeeping:(id)bookkeeping
{
  queueCopy = queue;
  swift_unknownObjectRetain();
  return MaintenanceServer.init(queue:setBookkeeping:)(queueCopy, bookkeeping);
}

- (void)activate
{
  selfCopy = self;
  MaintenanceServer.activate()();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = MaintenanceServer.listener(_:shouldAcceptNewConnection:)(selfCopy, connectionCopy);

  return v9 & 1;
}

- (void)performNightlyMaintenanceWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1B6DFF460(&unk_1B6E0EBA8, v5);
}

@end