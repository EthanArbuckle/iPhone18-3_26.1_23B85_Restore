@interface TodayFeedWithLargeCarouselAdsScrollTestCase
- (_TtC7NewsUI243TodayFeedWithLargeCarouselAdsScrollTestCase)init;
- (id)scrollViewWithContext:(void *)a3;
@end

@implementation TodayFeedWithLargeCarouselAdsScrollTestCase

- (_TtC7NewsUI243TodayFeedWithLargeCarouselAdsScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI243TodayFeedWithLargeCarouselAdsScrollTestCase_testName);
  *v4 = 0xD000000000000023;
  v4[1] = 0x8000000219CD87B0;
  *(self + OBJC_IVAR____TtC7NewsUI243TodayFeedWithLargeCarouselAdsScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI243TodayFeedWithLargeCarouselAdsScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI243TodayFeedWithLargeCarouselAdsScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI243TodayFeedWithLargeCarouselAdsScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI243TodayFeedWithLargeCarouselAdsScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TodayFeedWithLargeCarouselAdsScrollTestCase *)&v6 init];
}

- (id)scrollViewWithContext:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_218A42F20(v4);
  v7 = v6;

  return v7;
}

@end