@interface DOCItemCollectionCell.BezierPathView
- (_TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView)init;
- (_TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setBackgroundColor:(id)a3;
@end

@implementation DOCItemCollectionCell.BezierPathView

- (_TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_color) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_path) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = [(DOCView *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(DOCItemCollectionCell.BezierPathView *)v4 setOpaque:0];
  return v4;
}

- (void)setBackgroundColor:(id)a3
{
  if (a3)
  {
    __break(1u);
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  DOCItemCollectionCell.BezierPathView.draw(_:)(v9);
}

- (_TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end