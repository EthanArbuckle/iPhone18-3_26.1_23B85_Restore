@interface ChooseExistingContactViewControllerRepresentable.ContactViewCoordinator
- (_TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator)init;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
@end

@implementation ChooseExistingContactViewControllerRepresentable.ContactViewCoordinator

- (void)contactPickerDidCancel:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator_viewController);
  if (v3)
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator_viewController);
  if (v4)
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_19095D840(v7);
}

- (_TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end