@interface HistoryFeedScrollTestCase
- (NSString)testName;
- (_TtC7NewsUI225HistoryFeedScrollTestCase)init;
- (id)scrollViewWithContext:(id)context;
@end

@implementation HistoryFeedScrollTestCase

- (_TtC7NewsUI225HistoryFeedScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI225HistoryFeedScrollTestCase_testName);
  *v4 = 0xD000000000000011;
  v4[1] = 0x8000000219CD8710;
  *(self + OBJC_IVAR____TtC7NewsUI225HistoryFeedScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI225HistoryFeedScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI225HistoryFeedScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI225HistoryFeedScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI225HistoryFeedScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(HistoryFeedScrollTestCase *)&v6 init];
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
  sub_219806990(contextCopy);
  v7 = v6;

  return v7;
}

@end