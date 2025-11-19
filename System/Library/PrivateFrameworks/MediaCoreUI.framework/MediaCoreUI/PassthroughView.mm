@interface PassthroughView
- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC15PassthroughView)initWithCoder:(id)a3;
- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC15PassthroughView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PassthroughView

- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC15PassthroughView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PassthroughView();
  return [(PassthroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC15PassthroughView)initWithCoder:(id)a3
{
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1C5BA6074(a4, x, y);

  return v10;
}

@end