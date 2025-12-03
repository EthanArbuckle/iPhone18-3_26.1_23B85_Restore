@interface PersonalizationScriptTestCase
- (NSString)testName;
- (_TtC7NewsUI229PersonalizationScriptTestCase)init;
- (void)runTestWithContext:(id)context completion:(id)completion;
@end

@implementation PersonalizationScriptTestCase

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
  sub_21973F404(contextCopy, sub_218967168, v7);
}

- (_TtC7NewsUI229PersonalizationScriptTestCase)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end