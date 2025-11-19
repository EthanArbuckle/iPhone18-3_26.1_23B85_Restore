@interface SeparatorHeaderCell
- (_TtC19HealthMedicationsUI19SeparatorHeaderCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI19SeparatorHeaderCell)initWithFrame:(CGRect)a3;
@end

@implementation SeparatorHeaderCell

- (_TtC19HealthMedicationsUI19SeparatorHeaderCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SeparatorHeaderCell();
  v8 = [(SeparatorHeaderCell *)&v10 initWithFrame:x, y, width, height];
  sub_228253998();

  return v8;
}

- (_TtC19HealthMedicationsUI19SeparatorHeaderCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SeparatorHeaderCell();
  v5 = a3;
  v6 = [(SeparatorHeaderCell *)&v10 initWithCoder:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_228253998();
  }

  return v7;
}

@end