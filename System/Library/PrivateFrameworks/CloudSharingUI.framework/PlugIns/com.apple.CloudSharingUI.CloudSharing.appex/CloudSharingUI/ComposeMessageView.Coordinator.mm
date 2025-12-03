@interface ComposeMessageView.Coordinator
- (_TtCV37com_apple_CloudSharingUI_CloudSharing18ComposeMessageView11Coordinator)init;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
@end

@implementation ComposeMessageView.Coordinator

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  selfCopy = self;
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing18ComposeMessageView11Coordinator_completion);
  if (v7)
  {
    v8 = *&selfCopy->completion[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing18ComposeMessageView11Coordinator_completion];
    v7(result == 1);
  }
}

- (_TtCV37com_apple_CloudSharingUI_CloudSharing18ComposeMessageView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end