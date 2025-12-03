@interface ANFTestSuite
- (_TtC7NewsUI212ANFTestSuite)init;
- (void)setupTestWithContext:(id)context completion:(id)completion;
@end

@implementation ANFTestSuite

- (_TtC7NewsUI212ANFTestSuite)init
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
  sub_2194CBF74(contextCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end