@interface DOCBadgedFittingImageView
- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithFrame:(CGRect)a3;
- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithImage:(id)a3;
- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation DOCBadgedFittingImageView

- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v7 = [(DOCFittingImageView *)&v10 initWithFrame:x, y, width, height];
  v8 = [(DOCBadgedFittingImageView *)v7 layer];
  [v8 setMagnificationFilter_];

  return v7;
}

- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end