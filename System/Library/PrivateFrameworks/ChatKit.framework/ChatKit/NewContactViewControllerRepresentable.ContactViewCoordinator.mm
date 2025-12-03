@interface NewContactViewControllerRepresentable.ContactViewCoordinator
- (_TtCV7ChatKit37NewContactViewControllerRepresentable22ContactViewCoordinator)init;
- (void)backAction;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
@end

@implementation NewContactViewControllerRepresentable.ContactViewCoordinator

- (void)backAction
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCV7ChatKit37NewContactViewControllerRepresentable22ContactViewCoordinator_navigationController);
  if (v2)
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV7ChatKit37NewContactViewControllerRepresentable22ContactViewCoordinator_navigationController);
  if (v4)
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtCV7ChatKit37NewContactViewControllerRepresentable22ContactViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end