@interface ArticleMemoryTestCase
- (NSString)testName;
- (_TtC7NewsUI221ArticleMemoryTestCase)init;
- (void)runTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation ArticleMemoryTestCase

- (_TtC7NewsUI221ArticleMemoryTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC7NewsUI221ArticleMemoryTestCase_testName;
  strcpy(self + OBJC_IVAR____TtC7NewsUI221ArticleMemoryTestCase_testName, "ArticleMemory");
  *(v4 + 7) = -4864;
  *(self + OBJC_IVAR____TtC7NewsUI221ArticleMemoryTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI221ArticleMemoryTestCase_aggregate) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ArticleMemoryTestCase *)&v6 init];
}

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
  sub_218E12D60(v8, sub_218967168, v7);
}

@end