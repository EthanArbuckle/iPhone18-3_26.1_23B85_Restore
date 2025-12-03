@interface Backdrop.CompositeRenderer
- (_TtCO11MediaCoreUI8Backdrop17CompositeRenderer)init;
- (void)drawInMTKView:(id)view;
- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change;
@end

@implementation Backdrop.CompositeRenderer

- (_TtCO11MediaCoreUI8Backdrop17CompositeRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  viewCopy = view;
  selfCopy = self;
  traitCollection = [viewCopy traitCollection];
  [traitCollection displayScale];
  v10 = v9;

  sub_1C5AD8138(width, height, v10);
}

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  Backdrop.CompositeRenderer.draw(in:)(viewCopy);
}

@end