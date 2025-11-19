@interface PersonalizationScriptTestCase
- (NSString)testName;
- (_TtC7NewsUI229PersonalizationScriptTestCase)init;
- (void)runTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation PersonalizationScriptTestCase

- (NSString)testName
{

  v2 = sub_219BF53D4();

  return v2;
}

- (void)runTestWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_21973F404(v8, sub_218967168, v7);
}

- (_TtC7NewsUI229PersonalizationScriptTestCase)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end