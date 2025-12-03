@interface ANFGraphicalScrollTestCase
- (NSString)testName;
- (_TtC7NewsUI226ANFGraphicalScrollTestCase)init;
- (id)scrollViewWithContext:(id)context;
@end

@implementation ANFGraphicalScrollTestCase

- (_TtC7NewsUI226ANFGraphicalScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI226ANFGraphicalScrollTestCase_testName);
  *v4 = 0xD000000000000019;
  v4[1] = 0x8000000219CD8670;
  *(self + OBJC_IVAR____TtC7NewsUI226ANFGraphicalScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI226ANFGraphicalScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI226ANFGraphicalScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI226ANFGraphicalScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI226ANFGraphicalScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ANFGraphicalScrollTestCase *)&v6 init];
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