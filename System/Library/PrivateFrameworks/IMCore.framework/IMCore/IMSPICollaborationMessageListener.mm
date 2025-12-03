@interface IMSPICollaborationMessageListener
- (IMSPICollaborationMessageListener)init;
- (IMSPICollaborationMessageListenerDelegate)delegate;
- (void)startListening;
- (void)stopListening;
@end

@implementation IMSPICollaborationMessageListener

- (IMSPICollaborationMessageListenerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)startListening
{
  selfCopy = self;
  sub_1A84A4674();
}

- (void)stopListening
{
  v2 = *(self + OBJC_IVAR___IMSPICollaborationMessageListener_connection);
  *(self + OBJC_IVAR___IMSPICollaborationMessageListener_connection) = 0;
  selfCopy = self;
  swift_unknownObjectRelease();
  sharedController = [objc_opt_self() sharedController];
  listener = [sharedController listener];

  [listener removeHandler_];
}

- (IMSPICollaborationMessageListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end