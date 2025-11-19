@interface SavedFeedTestSuite
- (_TtC7NewsUI218SavedFeedTestSuite)init;
- (void)setupTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation SavedFeedTestSuite

- (_TtC7NewsUI218SavedFeedTestSuite)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SNTestSuite *)&v3 init];
}

- (void)setupTestWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_218FA04C4(v8, sub_218967168, v7);
}

@end