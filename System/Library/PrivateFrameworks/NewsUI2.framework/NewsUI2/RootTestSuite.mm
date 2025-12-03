@interface RootTestSuite
- (_TtC7NewsUI213RootTestSuite)init;
- (void)setupTestWithContext:(id)context completion:(id)completion;
@end

@implementation RootTestSuite

- (void)setupTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  contextCopy = context;
  selfCopy = self;
  sub_219B7E140(contextCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC7NewsUI213RootTestSuite)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end