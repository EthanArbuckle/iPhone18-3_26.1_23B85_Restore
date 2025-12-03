@interface DOCBadgedFittingImageView
- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithFrame:(CGRect)frame;
- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithImage:(id)image;
- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation DOCBadgedFittingImageView

- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  height = [(DOCFittingImageView *)&v10 initWithFrame:x, y, width, height];
  layer = [(DOCBadgedFittingImageView *)height layer];
  [layer setMagnificationFilter_];

  return height;
}

- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables25DOCBadgedFittingImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end