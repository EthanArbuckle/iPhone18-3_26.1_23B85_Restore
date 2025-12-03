@interface MagazineFeedScrollTestCase
- (NSString)testName;
- (_TtC7NewsUI226MagazineFeedScrollTestCase)init;
- (id)scrollViewWithContext:(id)context;
@end

@implementation MagazineFeedScrollTestCase

- (_TtC7NewsUI226MagazineFeedScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI226MagazineFeedScrollTestCase_testName);
  *v4 = 0xD000000000000012;
  v4[1] = 0x8000000219CD8730;
  *(self + OBJC_IVAR____TtC7NewsUI226MagazineFeedScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI226MagazineFeedScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI226MagazineFeedScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI226MagazineFeedScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI226MagazineFeedScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MagazineFeedScrollTestCase *)&v6 init];
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
  sub_218C85558(contextCopy);
  v7 = v6;

  return v7;
}

@end