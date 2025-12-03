@interface TodayFeedScrollTestCase
- (NSString)testName;
- (_TtC7NewsUI223TodayFeedScrollTestCase)init;
- (id)scrollViewWithContext:(id)context;
@end

@implementation TodayFeedScrollTestCase

- (_TtC7NewsUI223TodayFeedScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI223TodayFeedScrollTestCase_testName);
  *v4 = 0x6F546C6C6F726353;
  v4[1] = 0xEF64656546796164;
  *(self + OBJC_IVAR____TtC7NewsUI223TodayFeedScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI223TodayFeedScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI223TodayFeedScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI223TodayFeedScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI223TodayFeedScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TodayFeedScrollTestCase *)&v6 init];
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
  sub_218A42F20(contextCopy);
  v7 = v6;

  return v7;
}

@end