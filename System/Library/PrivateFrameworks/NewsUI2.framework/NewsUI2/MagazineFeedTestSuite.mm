@interface MagazineFeedTestSuite
- (_TtC7NewsUI221MagazineFeedTestSuite)init;
- (void)setupTestWithContext:(id)context completion:(id)completion;
@end

@implementation MagazineFeedTestSuite

- (_TtC7NewsUI221MagazineFeedTestSuite)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SNTestSuite *)&v3 init];
}

- (void)setupTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  contextCopy = context;
  selfCopy = self;
  sub_218967170(contextCopy, sub_218967168, v7);
}

@end