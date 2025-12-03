@interface RecentsUnreadCountManager
- (_TtC16CallsAppServices25RecentsUnreadCountManager)init;
- (void)handleRequestsHandlerHasFinishedFirstCacheUpdateNotification;
- (void)recentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count;
@end

@implementation RecentsUnreadCountManager

- (void)handleRequestsHandlerHasFinishedFirstCacheUpdateNotification
{
  if (*(&self->super.isa + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_shouldMarkKnownCallsAsReadWhenReady) == 1)
  {
    *(&self->super.isa + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_shouldMarkKnownCallsAsReadWhenReady) = 0;
    selfCopy = self;
    sub_1D337E180();
  }
}

- (_TtC16CallsAppServices25RecentsUnreadCountManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)recentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count
{
  if ((count & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(&self->super.isa + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_totalUnreadCallCount) = count;
    selfCopy = self;
    sub_1D337DB9C();
  }
}

@end