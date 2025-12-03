@interface OpenANFTestCase
- (NSString)testName;
- (_TtC7NewsUI215OpenANFTestCase)init;
- (void)runTestWithContext:(id)context completion:(id)completion;
@end

@implementation OpenANFTestCase

- (_TtC7NewsUI215OpenANFTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC7NewsUI215OpenANFTestCase_testName;
  strcpy(self + OBJC_IVAR____TtC7NewsUI215OpenANFTestCase_testName, "OpenANFArticle");
  v4[15] = -18;
  *(self + OBJC_IVAR____TtC7NewsUI215OpenANFTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI215OpenANFTestCase_aggregate) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(OpenANFTestCase *)&v6 init];
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
  sub_2194DD73C(contextCopy, sub_218967168, v7);
}

@end