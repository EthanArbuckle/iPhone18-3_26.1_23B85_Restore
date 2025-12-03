@interface CloseWebArticleTestCase
- (NSString)testName;
- (_TtC7NewsUI223CloseWebArticleTestCase)init;
- (void)runTestWithContext:(id)context completion:(id)completion;
@end

@implementation CloseWebArticleTestCase

- (_TtC7NewsUI223CloseWebArticleTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI223CloseWebArticleTestCase_testName);
  *v4 = 0x62655765736F6C43;
  v4[1] = 0xEF656C6369747241;
  *(self + OBJC_IVAR____TtC7NewsUI223CloseWebArticleTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI223CloseWebArticleTestCase_aggregate) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CloseWebArticleTestCase *)&v6 init];
}

- (NSString)testName
{

  v2 = sub_219BF53D4();

  return v2;
}

- (void)runTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  contextCopy = context;
  selfCopy = self;
  sub_2189A4310(contextCopy, sub_218967168, v7);
}

@end