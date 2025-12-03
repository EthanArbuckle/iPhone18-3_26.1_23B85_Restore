@interface InteractionNoneFoundCell
- (_TtC19HealthMedicationsUI24InteractionNoneFoundCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI24InteractionNoneFoundCell)initWithFrame:(CGRect)frame;
@end

@implementation InteractionNoneFoundCell

- (_TtC19HealthMedicationsUI24InteractionNoneFoundCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item;
  found = type metadata accessor for InteractionNoneFoundCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = found;
  return [(InteractionNoneFoundCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC19HealthMedicationsUI24InteractionNoneFoundCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI24InteractionNoneFoundCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for InteractionNoneFoundCell();
  coderCopy = coder;
  v6 = [(InteractionNoneFoundCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end