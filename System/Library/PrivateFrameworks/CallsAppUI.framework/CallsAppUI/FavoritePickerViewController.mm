@interface FavoritePickerViewController
- (_TtC10CallsAppUI28FavoritePickerViewController)initWithCoder:(id)coder;
- (_TtC10CallsAppUI28FavoritePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)favoritesEntryPicker:(id)picker didPickEntry:(id)entry;
@end

@implementation FavoritePickerViewController

- (_TtC10CallsAppUI28FavoritePickerViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker) = 0;
  result = sub_1CFCA01D8();
  __break(1u);
  return result;
}

- (_TtC10CallsAppUI28FavoritePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  [cancelCopy dismissViewControllerAnimated:1 completion:0];
  v5 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion);
  if (v5)
  {
    v6 = *(&selfCopy->super.super.super._responderFlags + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion);

    v5(0);

    sub_1CFBB2564(v5, v6);
  }

  else
  {
  }
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  sub_1CFC2AFD8(pickerCopy, contactCopy);
}

- (void)favoritesEntryPicker:(id)picker didPickEntry:(id)entry
{
  swift_unknownObjectRetain();
  entryCopy = entry;
  selfCopy = self;
  sub_1CFC9FF18();
  swift_unknownObjectRelease();
  sub_1CFC2B178();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

@end