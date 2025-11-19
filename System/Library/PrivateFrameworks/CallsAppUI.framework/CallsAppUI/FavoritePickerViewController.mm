@interface FavoritePickerViewController
- (_TtC10CallsAppUI28FavoritePickerViewController)initWithCoder:(id)a3;
- (_TtC10CallsAppUI28FavoritePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)favoritesEntryPicker:(id)a3 didPickEntry:(id)a4;
@end

@implementation FavoritePickerViewController

- (_TtC10CallsAppUI28FavoritePickerViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker) = 0;
  result = sub_1CFCA01D8();
  __break(1u);
  return result;
}

- (_TtC10CallsAppUI28FavoritePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  v7 = self;
  [v4 dismissViewControllerAnimated:1 completion:0];
  v5 = *(&v7->super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion);
  if (v5)
  {
    v6 = *(&v7->super.super.super._responderFlags + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion);

    v5(0);

    sub_1CFBB2564(v5, v6);
  }

  else
  {
  }
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1CFC2AFD8(v6, v7);
}

- (void)favoritesEntryPicker:(id)a3 didPickEntry:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1CFC9FF18();
  swift_unknownObjectRelease();
  sub_1CFC2B178();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

@end