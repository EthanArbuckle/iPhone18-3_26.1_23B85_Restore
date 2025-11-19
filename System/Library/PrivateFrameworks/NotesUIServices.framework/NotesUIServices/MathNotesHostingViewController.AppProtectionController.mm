@interface MathNotesHostingViewController.AppProtectionController
- (_TtCC15NotesUIServices30MathNotesHostingViewControllerP33_82644AFB0C2F2CCE6D5FA1AE07FA364223AppProtectionController)init;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)shieldViewUnlockButtonPressed:(id)a3;
@end

@implementation MathNotesHostingViewController.AppProtectionController

- (void)shieldViewUnlockButtonPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25C7A10F0();
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  sub_25C7AAC0C();
  v5 = sub_25C7AAAFC();
  swift_unknownObjectRetain();
  v6 = self;
  sub_25C7A1230(v5);
  swift_unknownObjectRelease();
}

- (_TtCC15NotesUIServices30MathNotesHostingViewControllerP33_82644AFB0C2F2CCE6D5FA1AE07FA364223AppProtectionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end