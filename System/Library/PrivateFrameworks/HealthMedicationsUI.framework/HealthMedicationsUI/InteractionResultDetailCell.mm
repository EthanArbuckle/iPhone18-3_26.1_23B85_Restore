@interface InteractionResultDetailCell
- (_TtC19HealthMedicationsUI27InteractionResultDetailCell)initWithFrame:(CGRect)a3;
- (void)awakeFromNib;
@end

@implementation InteractionResultDetailCell

- (_TtC19HealthMedicationsUI27InteractionResultDetailCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___firstFactorView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___secondFactorView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for InteractionResultDetailCell();
  v8 = [(InteractionResultDetailCell *)&v10 initWithFrame:x, y, width, height];
  [(InteractionResultDetailCell *)v8 setUserInteractionEnabled:0];
  sub_2282468BC();
  sub_228246A74();

  return v8;
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for InteractionResultDetailCell();
  [(InteractionResultDetailCell *)&v2 awakeFromNib];
}

@end