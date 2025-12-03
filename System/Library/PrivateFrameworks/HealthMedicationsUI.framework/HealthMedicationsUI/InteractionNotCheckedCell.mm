@interface InteractionNotCheckedCell
- (_TtC19HealthMedicationsUI25InteractionNotCheckedCell)initWithFrame:(CGRect)frame;
- (void)awakeFromNib;
@end

@implementation InteractionNotCheckedCell

- (_TtC19HealthMedicationsUI25InteractionNotCheckedCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for InteractionNotCheckedCell();
  height = [(InteractionNotCheckedCell *)&v10 initWithFrame:x, y, width, height];
  sub_2281A373C();

  return height;
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