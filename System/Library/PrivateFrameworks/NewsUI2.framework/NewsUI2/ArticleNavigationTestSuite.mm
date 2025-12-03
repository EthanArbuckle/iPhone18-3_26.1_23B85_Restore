@interface ArticleNavigationTestSuite
- (_TtC7NewsUI226ArticleNavigationTestSuite)init;
- (void)setupTestWithContext:(id)context completion:(id)completion;
@end

@implementation ArticleNavigationTestSuite

- (void)setupTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  contextCopy = context;
  selfCopy = self;
  sub_218E8FAEC(contextCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC7NewsUI226ArticleNavigationTestSuite)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end