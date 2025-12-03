@interface SeparatorFooterCell
- (_TtC19HealthMedicationsUI19SeparatorFooterCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI19SeparatorFooterCell)initWithFrame:(CGRect)frame;
@end

@implementation SeparatorFooterCell

- (_TtC19HealthMedicationsUI19SeparatorFooterCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell____lazy_storage___separatorView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SeparatorFooterCell();
  return [(SeparatorFooterCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI19SeparatorFooterCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorFooterCell____lazy_storage___separatorView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SeparatorFooterCell();
  coderCopy = coder;
  v6 = [(SeparatorFooterCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end