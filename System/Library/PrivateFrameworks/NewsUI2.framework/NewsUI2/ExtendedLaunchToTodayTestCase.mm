@interface ExtendedLaunchToTodayTestCase
- (NSString)testName;
- (_TtC7NewsUI229ExtendedLaunchToTodayTestCase)init;
- (void)runTestWithContext:(id)context completion:(id)completion;
@end

@implementation ExtendedLaunchToTodayTestCase

- (void)runTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  contextCopy = context;
  selfCopy = self;
  sub_2187B5C7C(sub_218967168, v7);
}

- (NSString)testName
{

  v2 = sub_219BF53D4();

  return v2;
}

- (_TtC7NewsUI229ExtendedLaunchToTodayTestCase)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end