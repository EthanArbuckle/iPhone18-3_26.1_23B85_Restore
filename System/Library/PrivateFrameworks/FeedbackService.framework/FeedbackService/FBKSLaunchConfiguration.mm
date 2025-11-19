@interface FBKSLaunchConfiguration
- (FBKSLaunchConfiguration)init;
- (void)setLocalizedAlertViewDeclineButtonTitle:(id)a3;
- (void)setLocalizedAlertViewProceedButtonTitle:(id)a3;
- (void)setLocalizedPromptMessage:(id)a3;
- (void)setLocalizedPromptTitle:(id)a3;
- (void)setPromptStyle:(int64_t)a3;
@end

@implementation FBKSLaunchConfiguration

- (FBKSLaunchConfiguration)init
{
  v5.receiver = self;
  v5.super_class = FBKSLaunchConfiguration;
  v2 = [(FBKSLaunchConfiguration *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(FBKSLaunchConfiguration_FrameworkPrivateName);
    [(FBKSLaunchConfiguration *)v2 setSwiftObject:v3];
  }

  return v2;
}

- (void)setPromptStyle:(int64_t)a3
{
  self->_promptStyle = a3;
  v4 = [(FBKSLaunchConfiguration *)self swiftObject];
  [v4 setPromptStyle:a3];
}

- (void)setLocalizedPromptTitle:(id)a3
{
  objc_storeStrong(&self->_localizedPromptTitle, a3);
  v5 = a3;
  v6 = [(FBKSLaunchConfiguration *)self swiftObject];
  [v6 setLocalizedPromptTitle:v5];
}

- (void)setLocalizedPromptMessage:(id)a3
{
  objc_storeStrong(&self->_localizedPromptMessage, a3);
  v5 = a3;
  v6 = [(FBKSLaunchConfiguration *)self swiftObject];
  [v6 setLocalizedPromptMessage:v5];
}

- (void)setLocalizedAlertViewProceedButtonTitle:(id)a3
{
  objc_storeStrong(&self->_localizedAlertViewProceedButtonTitle, a3);
  v5 = a3;
  v6 = [(FBKSLaunchConfiguration *)self swiftObject];
  [v6 setLocalizedAlertViewProceedButtonTitle:v5];
}

- (void)setLocalizedAlertViewDeclineButtonTitle:(id)a3
{
  objc_storeStrong(&self->_localizedAlertViewDeclineButtonTitle, a3);
  v5 = a3;
  v6 = [(FBKSLaunchConfiguration *)self swiftObject];
  [v6 setLocalizedAlertViewDeclineButtonTitle:v5];
}

@end