@interface RemoteControlGroupSessionItemDataSource.GroupSessionManagerObserver
- (_TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver)init;
- (void)manager:(id)a3 discoveredSessionsDidChange:(id)a4;
@end

@implementation RemoteControlGroupSessionItemDataSource.GroupSessionManagerObserver

- (void)manager:(id)a3 discoveredSessionsDidChange:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver_callback);
  v5 = *&self->callback[OBJC_IVAR____TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver_callback];
  v6 = self;
  v4();
}

- (_TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end