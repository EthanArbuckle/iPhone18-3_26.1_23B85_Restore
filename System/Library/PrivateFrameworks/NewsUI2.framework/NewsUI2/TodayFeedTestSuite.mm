@interface TodayFeedTestSuite
- (_TtC7NewsUI218TodayFeedTestSuite)init;
- (void)setupTestWithContext:(id)context completion:(id)completion;
@end

@implementation TodayFeedTestSuite

- (_TtC7NewsUI218TodayFeedTestSuite)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SNTestSuite *)&v3 init];
}

- (void)setupTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  contextCopy = context;
  selfCopy = self;
  sub_218CA5D80(contextCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end