@interface CKBackgroundMotionEventsManager
- (_TtC7ChatKit31CKBackgroundMotionEventsManager)init;
- (_TtC7ChatKit31CKBackgroundMotionEventsManager)initWithManagedMotionEventsGenerator:(id)generator viewController:(id)controller delegate:(id)delegate;
- (void)configureIfNeeded;
- (void)stopSendingMotionEvents;
@end

@implementation CKBackgroundMotionEventsManager

- (_TtC7ChatKit31CKBackgroundMotionEventsManager)initWithManagedMotionEventsGenerator:(id)generator viewController:(id)controller delegate:(id)delegate
{
  swift_unknownObjectRetain();
  controllerCopy = controller;
  swift_unknownObjectRetain();
  return CKBackgroundMotionEventsManager.init(managedMotionEventsGenerator:viewController:delegate:)(generator, controllerCopy);
}

- (void)configureIfNeeded
{
  selfCopy = self;
  v2 = sub_19083FD50();
  v3 = selfCopy;
  if ((v2 & 1) != *(&selfCopy->super.isa + OBJC_IVAR____TtC7ChatKit31CKBackgroundMotionEventsManager_isSendingMotionEvents))
  {
    if (v2)
    {
      sub_190840858();
    }

    else
    {
      sub_190840878();
    }

    v3 = selfCopy;
  }
}

- (void)stopSendingMotionEvents
{
  selfCopy = self;
  sub_190840878();
}

- (_TtC7ChatKit31CKBackgroundMotionEventsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end