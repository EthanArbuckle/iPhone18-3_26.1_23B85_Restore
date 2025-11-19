@interface EmptyGridCell
- (_TtC15ControlCenterUI13EmptyGridCell)initWithCoder:(id)a3;
- (_TtC15ControlCenterUI13EmptyGridCell)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation EmptyGridCell

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_21EA964D4(a4, x, y);

  return v10;
}

- (_TtC15ControlCenterUI13EmptyGridCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmptyGridCell();
  return [(EmptyGridCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15ControlCenterUI13EmptyGridCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmptyGridCell();
  v4 = a3;
  v5 = [(EmptyGridCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end