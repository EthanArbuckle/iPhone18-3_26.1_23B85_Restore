@interface FeedResponsivenessTestSuite
- (_TtC7NewsUI227FeedResponsivenessTestSuite)init;
- (void)setupTestWithContext:(id)context completion:(id)completion;
@end

@implementation FeedResponsivenessTestSuite

- (void)setupTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  contextCopy = context;
  selfCopy = self;
  sub_2196812F8(contextCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC7NewsUI227FeedResponsivenessTestSuite)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end