@interface ColorCell
- (BOOL)_accessibilityCellIsSelected;
- (_TtC19HealthMedicationsUI9ColorCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ColorCell

- (_TtC19HealthMedicationsUI9ColorCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView) = 0;
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_22835B844();
}

- (BOOL)_accessibilityCellIsSelected
{
  v2 = self;
  v3 = sub_22835C1E8();

  return v3 & 1;
}

@end