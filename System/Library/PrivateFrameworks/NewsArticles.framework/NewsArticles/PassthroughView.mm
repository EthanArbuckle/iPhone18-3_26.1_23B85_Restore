@interface PassthroughView
- (_TtC12NewsArticlesP33_EB63D8792045F9CB316DE87A7AC9CC2D15PassthroughView)initWithCoder:(id)coder;
- (_TtC12NewsArticlesP33_EB63D8792045F9CB316DE87A7AC9CC2D15PassthroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PassthroughView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1D7CF8E84(event, x, y);

  return v10;
}

- (_TtC12NewsArticlesP33_EB63D8792045F9CB316DE87A7AC9CC2D15PassthroughView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PassthroughView();
  return [(PassthroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12NewsArticlesP33_EB63D8792045F9CB316DE87A7AC9CC2D15PassthroughView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PassthroughView();
  coderCopy = coder;
  v5 = [(PassthroughView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end