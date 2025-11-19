@interface MaintenanceService.ListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtCC21contactsdonationagent18MaintenanceService16ListenerDelegate)init;
@end

@implementation MaintenanceService.ListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100010180(v7);

  return v9 & 1;
}

- (_TtCC21contactsdonationagent18MaintenanceService16ListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end