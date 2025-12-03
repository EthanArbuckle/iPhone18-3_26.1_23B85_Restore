@interface TagFeedAdsDisabledScrollTestCase
- (NSString)testName;
- (_TtC7NewsUI232TagFeedAdsDisabledScrollTestCase)init;
- (id)scrollViewWithContext:(id)context;
@end

@implementation TagFeedAdsDisabledScrollTestCase

- (_TtC7NewsUI232TagFeedAdsDisabledScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI232TagFeedAdsDisabledScrollTestCase_testName);
  *v4 = 0xD000000000000018;
  v4[1] = 0x8000000219CD88B0;
  *(self + OBJC_IVAR____TtC7NewsUI232TagFeedAdsDisabledScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI232TagFeedAdsDisabledScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI232TagFeedAdsDisabledScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI232TagFeedAdsDisabledScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI232TagFeedAdsDisabledScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TagFeedAdsDisabledScrollTestCase *)&v6 init];
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