@interface SearchHeaderCell
- (_TtC11CallsSearch16SearchHeaderCell)initWithReuseIdentifier:(id)a3;
- (void)didSelectSeeAllButton;
- (void)handleContentSizeCategoryDidChange:(id)a3;
@end

@implementation SearchHeaderCell

- (_TtC11CallsSearch16SearchHeaderCell)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = sub_1CFB8FA90();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_1CFB7FB20(v3, v4);
}

- (void)didSelectSeeAllButton
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllTapHandler);
  if (v2)
  {
    v3 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllTapHandler);
    v4 = self;
    v5 = sub_1CFB71AE0(v2);
    v2(v5);

    sub_1CFB66BE8(v2);
  }
}

- (void)handleContentSizeCategoryDidChange:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC720, &qword_1CFB92190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
  {
    sub_1CFB8F5F0();
    v9 = sub_1CFB8F600();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1CFB8F600();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = self;
  sub_1CFB801BC();

  sub_1CFB5DDDC(v8, &qword_1EC4EC720, &qword_1CFB92190);
}

@end