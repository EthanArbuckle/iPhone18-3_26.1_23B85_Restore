@interface ComposeMessageView.Coordinator
- (_TtCV37com_apple_CloudSharingUI_CloudSharing18ComposeMessageView11Coordinator)init;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
@end

@implementation ComposeMessageView.Coordinator

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v9 = a3;
  v6 = self;
  [v9 dismissViewControllerAnimated:1 completion:0];
  v7 = *(&v6->super.isa + OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing18ComposeMessageView11Coordinator_completion);
  if (v7)
  {
    v8 = *&v6->completion[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing18ComposeMessageView11Coordinator_completion];
    v7(a4 == 1);
  }
}

- (_TtCV37com_apple_CloudSharingUI_CloudSharing18ComposeMessageView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end