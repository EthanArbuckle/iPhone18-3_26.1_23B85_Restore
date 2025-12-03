@interface CustomStrengthOptionCell
- (_TtC19HealthMedicationsUI24CustomStrengthOptionCell)initWithCoder:(id)coder;
- (void)actionButtonTapped;
@end

@implementation CustomStrengthOptionCell

- (_TtC19HealthMedicationsUI24CustomStrengthOptionCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell_titleLabel;
  *(&self->super.super.super.super.super.super.isa + v5) = sub_22831A6CC();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI24CustomStrengthOptionCell____lazy_storage___actionButton) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)actionButtonTapped
{
  selfCopy = self;
  sub_22831B25C();
}

@end