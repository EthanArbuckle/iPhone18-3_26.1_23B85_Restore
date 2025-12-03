@interface ClinicalSharingSelectableAuthorizationCategoryCell
- (_TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell)initWithFrame:(CGRect)frame;
- (void)switchUpdated;
@end

@implementation ClinicalSharingSelectableAuthorizationCategoryCell

- (_TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_switchTrailingMargin) = 0x4034000000000000;
  v9 = OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_selectionSwitch;
  initWithFrame_ = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) initWithFrame_];
  [initWithFrame_ setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.super.super.isa + v9) = initWithFrame_;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
  height = [(ClinicalSharingSelectableAuthorizationCategoryCell *)&v13 initWithFrame:x, y, width, height];
  sub_1D10F0168();

  return height;
}

- (_TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_switchTrailingMargin) = 0x4034000000000000;
  v5 = OBJC_IVAR____TtC15HealthRecordsUI50ClinicalSharingSelectableAuthorizationCategoryCell_selectionSwitch;
  initWithFrame_ = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) initWithFrame_];
  [initWithFrame_ setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.super.super.isa + v5) = initWithFrame_;
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)switchUpdated
{
  selfCopy = self;
  sub_1D10F031C();
}

@end