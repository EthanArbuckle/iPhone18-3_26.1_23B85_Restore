@interface MedicalRecordTimelinePanelHeaderItemCell
- (_TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell)initWithCoder:(id)coder;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MedicalRecordTimelinePanelHeaderItemCell

- (_TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___subtitleLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell_customConstraints) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell_item) = 0;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell_sectionContext;
  v5 = sub_1D138DF1C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D1302E04(change);
}

@end