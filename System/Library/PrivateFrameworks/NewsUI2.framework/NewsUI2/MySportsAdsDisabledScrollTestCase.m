@interface MySportsAdsDisabledScrollTestCase
- (NSString)testName;
- (_TtC7NewsUI233MySportsAdsDisabledScrollTestCase)init;
- (id)scrollViewWithContext:(id)a3;
@end

@implementation MySportsAdsDisabledScrollTestCase

- (NSString)testName
{

  v2 = sub_219BF53D4();

  return v2;
}

- (id)scrollViewWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_218EE5B30(v4);
  v7 = v6;

  return v7;
}

- (_TtC7NewsUI233MySportsAdsDisabledScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI233MySportsAdsDisabledScrollTestCase_testName);
  *v4 = 0xD000000000000019;
  v4[1] = 0x8000000219CD8910;
  *(self + OBJC_IVAR____TtC7NewsUI233MySportsAdsDisabledScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI233MySportsAdsDisabledScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI233MySportsAdsDisabledScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI233MySportsAdsDisabledScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI233MySportsAdsDisabledScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MySportsAdsDisabledScrollTestCase *)&v6 init];
}

@end