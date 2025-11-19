@interface MaterialRenderer
- (_TtC11MediaCoreUI16MaterialRenderer)init;
- (void)drawInMTKView:(id)a3;
- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4;
@end

@implementation MaterialRenderer

- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4
{
  v5 = a3;
  v6 = self;
  sub_1C5AC8A20(v5);
}

- (void)drawInMTKView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5AC6424(v4);
}

- (_TtC11MediaCoreUI16MaterialRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end