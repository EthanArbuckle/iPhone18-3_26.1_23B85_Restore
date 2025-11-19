@interface ClinicalSharingSelectableAuthorizationCategoryCell
- (_TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell)initWithFrame:(CGRect)a3;
- (void)switchUpdated;
@end

@implementation ClinicalSharingSelectableAuthorizationCategoryCell

- (_TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_switchTrailingMargin) = 0x4034000000000000;
  v9 = OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_selectionSwitch;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.super.super.isa + v9) = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
  v11 = [(ClinicalSharingSelectableAuthorizationCategoryCell *)&v13 initWithFrame:x, y, width, height];
  sub_1D10F0168();

  return v11;
}

- (_TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_switchTrailingMargin) = 0x4034000000000000;
  v5 = OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_selectionSwitch;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.super.super.isa + v5) = v6;
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)switchUpdated
{
  v2 = self;
  sub_1D10F031C();
}

@end