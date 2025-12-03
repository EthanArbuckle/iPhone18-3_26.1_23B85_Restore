@interface MaintenanceService.ListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtCC21contactsdonationagent18MaintenanceService16ListenerDelegate)init;
@end

@implementation MaintenanceService.ListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100010180(connectionCopy);

  return v9 & 1;
}

- (_TtCC21contactsdonationagent18MaintenanceService16ListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end