@interface FBKSDraftLauncher
- (FBKSDraftLauncher)initWithFeedbackForm:(id)a3;
- (void)collectFeedbackWithLaunchConfiguration:(id)a3 completion:(id)a4;
@end

@implementation FBKSDraftLauncher

- (FBKSDraftLauncher)initWithFeedbackForm:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FBKSDraftLauncher;
  v5 = [(FBKSDraftLauncher *)&v11 init];
  if (v5)
  {
    v6 = [FBKSDraftLauncher_FrameworkPrivateName alloc];
    v7 = [v4 swiftObject];
    v8 = [(FBKSDraftLauncher_FrameworkPrivateName *)v6 initWithFeedbackForm:v7];
    swiftObject = v5->_swiftObject;
    v5->_swiftObject = v8;
  }

  return v5;
}

- (void)collectFeedbackWithLaunchConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(FBKSDraftLauncher *)self swiftObject];
  v8 = [v7 _swiftObject];

  [v9 collectFeedbackWithLaunchConfiguration:v8 completion:v6];
}

@end