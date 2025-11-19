@interface ExtendedLaunchToArticleTestCase
- (NSString)testName;
- (_TtC7NewsUI231ExtendedLaunchToArticleTestCase)init;
- (void)runTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation ExtendedLaunchToArticleTestCase

- (NSString)testName
{

  v2 = sub_219BF53D4();

  return v2;
}

- (void)runTestWithContext:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = qword_280E8D830;
  v9 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_219BE1EB4();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_218967168;
  *(v8 + 24) = v6;

  sub_219BE2714();
}

- (_TtC7NewsUI231ExtendedLaunchToArticleTestCase)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end