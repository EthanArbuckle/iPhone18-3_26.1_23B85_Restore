@interface ArticleToArticleSwipeTestCase
- (NSString)testName;
- (_TtC7NewsUI229ArticleToArticleSwipeTestCase)init;
- (void)runTestWithContext:(id)context completion:(id)completion;
@end

@implementation ArticleToArticleSwipeTestCase

- (_TtC7NewsUI229ArticleToArticleSwipeTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI229ArticleToArticleSwipeTestCase_testName);
  *v4 = 0xD000000000000015;
  v4[1] = 0x8000000219CD8550;
  *(self + OBJC_IVAR____TtC7NewsUI229ArticleToArticleSwipeTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI229ArticleToArticleSwipeTestCase_aggregate) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ArticleToArticleSwipeTestCase *)&v6 init];
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
  sub_219A9CCC8(contextCopy, sub_218967168, v7);
}

@end