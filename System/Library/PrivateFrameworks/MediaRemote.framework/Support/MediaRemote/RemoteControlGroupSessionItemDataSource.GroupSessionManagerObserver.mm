@interface RemoteControlGroupSessionItemDataSource.GroupSessionManagerObserver
- (_TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver)init;
- (void)manager:(id)manager discoveredSessionsDidChange:(id)change;
@end

@implementation RemoteControlGroupSessionItemDataSource.GroupSessionManagerObserver

- (void)manager:(id)manager discoveredSessionsDidChange:(id)change
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver_callback);
  v5 = *&self->callback[OBJC_IVAR____TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver_callback];
  selfCopy = self;
  v4();
}

- (_TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end