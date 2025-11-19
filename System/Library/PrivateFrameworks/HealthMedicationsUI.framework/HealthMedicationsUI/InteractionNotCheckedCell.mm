@interface InteractionNotCheckedCell
- (_TtC19HealthMedicationsUI25InteractionNotCheckedCell)initWithFrame:(CGRect)a3;
- (void)awakeFromNib;
@end

@implementation InteractionNotCheckedCell

- (_TtC19HealthMedicationsUI25InteractionNotCheckedCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for InteractionNotCheckedCell();
  v8 = [(InteractionNotCheckedCell *)&v10 initWithFrame:x, y, width, height];
  sub_2281A373C();

  return v8;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InteractionNotCheckedCell();
  v2 = v3.receiver;
  [(InteractionNotCheckedCell *)&v3 awakeFromNib];
  sub_2281A373C();
}

@end