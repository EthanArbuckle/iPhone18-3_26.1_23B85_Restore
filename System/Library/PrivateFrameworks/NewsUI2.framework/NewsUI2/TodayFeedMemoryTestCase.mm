@interface TodayFeedMemoryTestCase
- (NSString)testName;
- (_TtC7NewsUI223TodayFeedMemoryTestCase)init;
- (void)runTestWithContext:(id)context completion:(id)completion;
@end

@implementation TodayFeedMemoryTestCase

- (_TtC7NewsUI223TodayFeedMemoryTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7NewsUI223TodayFeedMemoryTestCase_testName);
  *v4 = 0x6565467961646F54;
  v4[1] = 0xEF79726F6D654D64;
  *(self + OBJC_IVAR____TtC7NewsUI223TodayFeedMemoryTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI223TodayFeedMemoryTestCase_aggregate) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TodayFeedMemoryTestCase *)&v6 init];
}

- (NSString)testName
{

  v2 = sub_219BF53D4();

  return v2;
}

- (void)runTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  contextCopy = context;
  selfCopy = self;
  sub_2199D5448(contextCopy, sub_218967168, v7);
}

@end