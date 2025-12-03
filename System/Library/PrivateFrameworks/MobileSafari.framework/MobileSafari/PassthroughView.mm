@interface PassthroughView
- (_TtC12MobileSafari15PassthroughView)initWithCoder:(id)coder;
- (_TtC12MobileSafari15PassthroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PassthroughView

- (_TtC12MobileSafari15PassthroughView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PassthroughView();
  return [(BlurrableView *)&v8 initWithFrame:x, y, width, height];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PassthroughView();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(PassthroughView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_18B7F4394();
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_18BC215C8();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC12MobileSafari15PassthroughView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PassthroughView();
  coderCopy = coder;
  v5 = [(BlurrableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end