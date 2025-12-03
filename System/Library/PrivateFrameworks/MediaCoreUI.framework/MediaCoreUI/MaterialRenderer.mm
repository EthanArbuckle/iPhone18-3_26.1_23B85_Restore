@interface MaterialRenderer
- (_TtC11MediaCoreUI16MaterialRenderer)init;
- (void)drawInMTKView:(id)view;
- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change;
@end

@implementation MaterialRenderer

- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change
{
  viewCopy = view;
  selfCopy = self;
  sub_1C5AC8A20(viewCopy);
}

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1C5AC6424(viewCopy);
}

- (_TtC11MediaCoreUI16MaterialRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end