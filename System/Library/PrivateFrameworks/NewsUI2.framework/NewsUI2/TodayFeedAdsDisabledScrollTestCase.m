@interface TodayFeedAdsDisabledScrollTestCase
- (NSString)testName;
- (_TtC7NewsUI234TodayFeedAdsDisabledScrollTestCase)init;
- (id)scrollViewWithContext:(id)a3;
@end

@implementation TodayFeedAdsDisabledScrollTestCase

- (_TtC7NewsUI234TodayFeedAdsDisabledScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI234TodayFeedAdsDisabledScrollTestCase_testName);
  *v4 = 0xD00000000000001ALL;
  v4[1] = 0x8000000219CD8770;
  *(self + OBJC_IVAR____TtC7NewsUI234TodayFeedAdsDisabledScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI234TodayFeedAdsDisabledScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI234TodayFeedAdsDisabledScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI234TodayFeedAdsDisabledScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI234TodayFeedAdsDisabledScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TodayFeedAdsDisabledScrollTestCase *)&v6 init];
}

- (NSString)testName
{

  v2 = sub_219BF53D4();

  return v2;
}

- (id)scrollViewWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_218A42F20(v4);
  v7 = v6;

  return v7;
}

@end