@interface TodayFeedWithCarouselOptimizationsDisabledScrollTestCase
- (NSString)testName;
- (_TtC7NewsUI256TodayFeedWithCarouselOptimizationsDisabledScrollTestCase)init;
- (id)scrollViewWithContext:(id)context;
@end

@implementation TodayFeedWithCarouselOptimizationsDisabledScrollTestCase

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

- (_TtC7NewsUI256TodayFeedWithCarouselOptimizationsDisabledScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI256TodayFeedWithCarouselOptimizationsDisabledScrollTestCase_testName);
  *v4 = 0xD000000000000032;
  v4[1] = 0x8000000219CD8840;
  *(self + OBJC_IVAR____TtC7NewsUI256TodayFeedWithCarouselOptimizationsDisabledScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI256TodayFeedWithCarouselOptimizationsDisabledScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI256TodayFeedWithCarouselOptimizationsDisabledScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI256TodayFeedWithCarouselOptimizationsDisabledScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI256TodayFeedWithCarouselOptimizationsDisabledScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TodayFeedWithCarouselOptimizationsDisabledScrollTestCase *)&v6 init];
}

@end