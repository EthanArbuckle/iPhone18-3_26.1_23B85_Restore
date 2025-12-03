@interface EmptyGridCell
- (_TtC15ControlCenterUI13EmptyGridCell)initWithCoder:(id)coder;
- (_TtC15ControlCenterUI13EmptyGridCell)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation EmptyGridCell

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_21EA964D4(event, x, y);

  return v10;
}

- (_TtC15ControlCenterUI13EmptyGridCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmptyGridCell();
  return [(EmptyGridCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15ControlCenterUI13EmptyGridCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmptyGridCell();
  coderCopy = coder;
  v5 = [(EmptyGridCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end