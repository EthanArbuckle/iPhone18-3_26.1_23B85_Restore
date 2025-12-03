@interface SavedFeedScrollTestCase
- (NSString)testName;
- (_TtC7NewsUI223SavedFeedScrollTestCase)init;
- (id)scrollViewWithContext:(id)context;
@end

@implementation SavedFeedScrollTestCase

- (_TtC7NewsUI223SavedFeedScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI223SavedFeedScrollTestCase_testName);
  *v4 = 0x61536C6C6F726353;
  v4[1] = 0xEF64656546646576;
  *(self + OBJC_IVAR____TtC7NewsUI223SavedFeedScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI223SavedFeedScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI223SavedFeedScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI223SavedFeedScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI223SavedFeedScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(SavedFeedScrollTestCase *)&v6 init];
}

- (NSString)testName
{

  v2 = sub_219BF53D4();

  return v2;
}

- (id)scrollViewWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_21911A82C(contextCopy);
  v7 = v6;

  return v7;
}

@end