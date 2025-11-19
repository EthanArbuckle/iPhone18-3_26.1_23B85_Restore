@interface CCMaintenanceServer
+ (NSString)machService;
- (BMXPCListener)listener;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CCMaintenanceServer)initWithQueue:(id)a3 setBookkeeping:(id)a4;
- (CCSetBookkeeping)setBookkeeping;
- (void)activate;
- (void)performNightlyMaintenanceWithCompletionHandler:(id)a3;
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

- (CCMaintenanceServer)initWithQueue:(id)a3 setBookkeeping:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return MaintenanceServer.init(queue:setBookkeeping:)(v5, a4);
}

- (void)activate
{
  v2 = self;
  MaintenanceServer.activate()();
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = MaintenanceServer.listener(_:shouldAcceptNewConnection:)(v8, v7);

  return v9 & 1;
}

- (void)performNightlyMaintenanceWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1B6DFF460(&unk_1B6E0EBA8, v5);
}

@end