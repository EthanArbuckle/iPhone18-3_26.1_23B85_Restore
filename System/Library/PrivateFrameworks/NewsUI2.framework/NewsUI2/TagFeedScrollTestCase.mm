@interface TagFeedScrollTestCase
- (NSString)testName;
- (_TtC7NewsUI221TagFeedScrollTestCase)init;
- (id)scrollViewWithContext:(id)context;
@end

@implementation TagFeedScrollTestCase

- (_TtC7NewsUI221TagFeedScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC7NewsUI221TagFeedScrollTestCase_testName;
  strcpy(self + OBJC_IVAR____TtC7NewsUI221TagFeedScrollTestCase_testName, "ScrollTagFeed");
  *(v4 + 7) = -4864;
  *(self + OBJC_IVAR____TtC7NewsUI221TagFeedScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI221TagFeedScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI221TagFeedScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI221TagFeedScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI221TagFeedScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TagFeedScrollTestCase *)&v6 init];
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
  sub_218EE5B30(contextCopy);
  v7 = v6;

  return v7;
}

@end