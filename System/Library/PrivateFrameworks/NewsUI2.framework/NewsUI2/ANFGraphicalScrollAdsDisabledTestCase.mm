@interface ANFGraphicalScrollAdsDisabledTestCase
- (NSString)testName;
- (_TtC7NewsUI237ANFGraphicalScrollAdsDisabledTestCase)init;
- (id)scrollViewWithContext:(id)context;
@end

@implementation ANFGraphicalScrollAdsDisabledTestCase

- (_TtC7NewsUI237ANFGraphicalScrollAdsDisabledTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI237ANFGraphicalScrollAdsDisabledTestCase_testName);
  *v4 = 0xD000000000000024;
  v4[1] = 0x8000000219CD8690;
  *(self + OBJC_IVAR____TtC7NewsUI237ANFGraphicalScrollAdsDisabledTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI237ANFGraphicalScrollAdsDisabledTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI237ANFGraphicalScrollAdsDisabledTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI237ANFGraphicalScrollAdsDisabledTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI237ANFGraphicalScrollAdsDisabledTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ANFGraphicalScrollAdsDisabledTestCase *)&v6 init];
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
  sub_218C61878(contextCopy);
  v7 = v6;

  return v7;
}

@end