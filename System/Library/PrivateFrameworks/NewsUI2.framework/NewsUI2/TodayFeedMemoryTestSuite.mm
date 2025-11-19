@interface TodayFeedMemoryTestSuite
- (_TtC7NewsUI224TodayFeedMemoryTestSuite)init;
- (void)setupTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation TodayFeedMemoryTestSuite

- (_TtC7NewsUI224TodayFeedMemoryTestSuite)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SNTestSuite *)&v3 init];
}

- (void)setupTestWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_2196939DC(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end