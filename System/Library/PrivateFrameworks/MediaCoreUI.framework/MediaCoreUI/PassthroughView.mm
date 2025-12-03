@interface PassthroughView
- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC15PassthroughView)initWithCoder:(id)coder;
- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC15PassthroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PassthroughView

- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC15PassthroughView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PassthroughView();
  return [(PassthroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC15PassthroughView)initWithCoder:(id)coder
{
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1C5BA6074(event, x, y);

  return v10;
}

@end