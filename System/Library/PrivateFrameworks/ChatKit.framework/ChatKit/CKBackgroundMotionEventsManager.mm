@interface CKBackgroundMotionEventsManager
- (_TtC7ChatKit31CKBackgroundMotionEventsManager)init;
- (_TtC7ChatKit31CKBackgroundMotionEventsManager)initWithManagedMotionEventsGenerator:(id)a3 viewController:(id)a4 delegate:(id)a5;
- (void)configureIfNeeded;
- (void)stopSendingMotionEvents;
@end

@implementation CKBackgroundMotionEventsManager

- (_TtC7ChatKit31CKBackgroundMotionEventsManager)initWithManagedMotionEventsGenerator:(id)a3 viewController:(id)a4 delegate:(id)a5
{
  swift_unknownObjectRetain();
  v7 = a4;
  swift_unknownObjectRetain();
  return CKBackgroundMotionEventsManager.init(managedMotionEventsGenerator:viewController:delegate:)(a3, v7);
}

- (void)configureIfNeeded
{
  v4 = self;
  v2 = sub_19083FD50();
  v3 = v4;
  if ((v2 & 1) != *(&v4->super.isa + OBJC_IVAR____TtC7ChatKit31CKBackgroundMotionEventsManager_isSendingMotionEvents))
  {
    if (v2)
    {
      sub_190840858();
    }

    else
    {
      sub_190840878();
    }

    v3 = v4;
  }
}

- (void)stopSendingMotionEvents
{
  v2 = self;
  sub_190840878();
}

- (_TtC7ChatKit31CKBackgroundMotionEventsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end