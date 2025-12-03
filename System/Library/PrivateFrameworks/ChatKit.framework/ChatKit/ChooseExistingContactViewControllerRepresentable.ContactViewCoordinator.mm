@interface ChooseExistingContactViewControllerRepresentable.ContactViewCoordinator
- (_TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator)init;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
@end

@implementation ChooseExistingContactViewControllerRepresentable.ContactViewCoordinator

- (void)contactPickerDidCancel:(id)cancel
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator_viewController);
  if (v3)
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator_viewController);
  if (v4)
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  sub_19095D840(contactCopy);
}

- (_TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end