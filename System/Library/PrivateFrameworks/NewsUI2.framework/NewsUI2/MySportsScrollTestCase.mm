@interface MySportsScrollTestCase
- (NSString)testName;
- (_TtC7NewsUI222MySportsScrollTestCase)init;
- (id)scrollViewWithContext:(id)context;
@end

@implementation MySportsScrollTestCase

- (NSString)testName
{

  v2 = sub_219BF53D4();

  return v2;
}

- (id)scrollViewWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_218FD303C(contextCopy);
  v7 = v6;

  return v7;
}

- (_TtC7NewsUI222MySportsScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC7NewsUI222MySportsScrollTestCase_testName;
  strcpy(self + OBJC_IVAR____TtC7NewsUI222MySportsScrollTestCase_testName, "ScrollMySports");
  v4[15] = -18;
  *(self + OBJC_IVAR____TtC7NewsUI222MySportsScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI222MySportsScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC7NewsUI222MySportsScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC7NewsUI222MySportsScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC7NewsUI222MySportsScrollTestCase_numberOfScreens) = 3;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MySportsScrollTestCase *)&v6 init];
}

@end