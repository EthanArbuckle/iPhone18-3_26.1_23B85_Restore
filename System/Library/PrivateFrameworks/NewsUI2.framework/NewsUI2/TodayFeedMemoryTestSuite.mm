@interface TodayFeedMemoryTestSuite
- (_TtC7NewsUI224TodayFeedMemoryTestSuite)init;
- (void)setupTestWithContext:(id)context completion:(id)completion;
@end

@implementation TodayFeedMemoryTestSuite

- (_TtC7NewsUI224TodayFeedMemoryTestSuite)init
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
  sub_2196939DC(contextCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end