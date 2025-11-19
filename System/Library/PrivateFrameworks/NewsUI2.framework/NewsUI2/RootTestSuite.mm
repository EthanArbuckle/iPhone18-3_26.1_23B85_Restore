@interface RootTestSuite
- (_TtC7NewsUI213RootTestSuite)init;
- (void)setupTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation RootTestSuite

- (void)setupTestWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_219B7E140(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC7NewsUI213RootTestSuite)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end