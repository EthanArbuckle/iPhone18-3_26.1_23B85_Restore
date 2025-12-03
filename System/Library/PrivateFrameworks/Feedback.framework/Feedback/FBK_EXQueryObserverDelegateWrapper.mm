@interface FBK_EXQueryObserverDelegateWrapper
- (_TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper)init;
- (void)observerDidUpdate:(id)update;
@end

@implementation FBK_EXQueryObserverDelegateWrapper

- (void)observerDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_1B8BB5814(updateCopy);
}

- (_TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B534FBK_EXQueryObserverDelegateWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end