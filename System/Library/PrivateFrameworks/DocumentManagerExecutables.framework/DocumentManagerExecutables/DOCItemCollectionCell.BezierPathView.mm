@interface DOCItemCollectionCell.BezierPathView
- (_TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView)init;
- (_TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setBackgroundColor:(id)color;
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

- (void)setBackgroundColor:(id)color
{
  if (color)
  {
    __break(1u);
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  DOCItemCollectionCell.BezierPathView.draw(_:)(v9);
}

- (_TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end