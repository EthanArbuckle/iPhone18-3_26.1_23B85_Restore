@interface FBKSDraftLauncher
- (FBKSDraftLauncher)initWithFeedbackForm:(id)form;
- (void)collectFeedbackWithLaunchConfiguration:(id)configuration completion:(id)completion;
@end

@implementation FBKSDraftLauncher

- (FBKSDraftLauncher)initWithFeedbackForm:(id)form
{
  formCopy = form;
  v11.receiver = self;
  v11.super_class = FBKSDraftLauncher;
  v5 = [(FBKSDraftLauncher *)&v11 init];
  if (v5)
  {
    v6 = [FBKSDraftLauncher_FrameworkPrivateName alloc];
    swiftObject = [formCopy swiftObject];
    v8 = [(FBKSDraftLauncher_FrameworkPrivateName *)v6 initWithFeedbackForm:swiftObject];
    swiftObject = v5->_swiftObject;
    v5->_swiftObject = v8;
  }

  return v5;
}

- (void)collectFeedbackWithLaunchConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  swiftObject = [(FBKSDraftLauncher *)self swiftObject];
  _swiftObject = [configurationCopy _swiftObject];

  [swiftObject collectFeedbackWithLaunchConfiguration:_swiftObject completion:completionCopy];
}

@end