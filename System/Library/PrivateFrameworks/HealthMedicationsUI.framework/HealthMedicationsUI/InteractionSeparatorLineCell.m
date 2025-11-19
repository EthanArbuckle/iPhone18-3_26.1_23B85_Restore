@interface InteractionSeparatorLineCell
- (_TtC19HealthMedicationsUI28InteractionSeparatorLineCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI28InteractionSeparatorLineCell)initWithFrame:(CGRect)a3;
- (void)awakeFromNib;
@end

@implementation InteractionSeparatorLineCell

- (_TtC19HealthMedicationsUI28InteractionSeparatorLineCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for InteractionSeparatorLineCell();
  v8 = [(InteractionSeparatorLineCell *)&v10 initWithFrame:x, y, width, height];
  sub_228201CB0();

  return v8;
}

- (_TtC19HealthMedicationsUI28InteractionSeparatorLineCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for InteractionSeparatorLineCell();
  v5 = a3;
  v6 = [(InteractionSeparatorLineCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for InteractionSeparatorLineCell();
  v2 = v4.receiver;
  [(InteractionSeparatorLineCell *)&v4 awakeFromNib];
  sub_2283922A0();
  v3[2] = v2;
  sub_22817F074(sub_228202124, v3);
}

@end