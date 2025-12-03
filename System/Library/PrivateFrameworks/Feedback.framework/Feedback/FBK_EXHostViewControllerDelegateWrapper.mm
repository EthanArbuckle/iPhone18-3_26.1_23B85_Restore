@interface FBK_EXHostViewControllerDelegateWrapper
- (_TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B539FBK_EXHostViewControllerDelegateWrapper)init;
- (void)hostViewController:(id)controller didBeginHosting:(id)hosting;
- (void)hostViewController:(id)controller didFailToHost:(id)host error:(id)error;
@end

@implementation FBK_EXHostViewControllerDelegateWrapper

- (void)hostViewController:(id)controller didBeginHosting:(id)hosting
{
  controllerCopy = controller;
  hostingCopy = hosting;
  selfCopy = self;
  sub_1B8BB6F28();
}

- (void)hostViewController:(id)controller didFailToHost:(id)host error:(id)error
{
  controllerCopy = controller;
  hostCopy = host;
  selfCopy = self;
  errorCopy = error;
  sub_1B8BB7054(error);
}

- (_TtC8FeedbackP33_EE21497D76FC0771846C2AC1D57947B539FBK_EXHostViewControllerDelegateWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end