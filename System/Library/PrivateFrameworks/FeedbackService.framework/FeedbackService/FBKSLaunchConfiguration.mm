@interface FBKSLaunchConfiguration
- (FBKSLaunchConfiguration)init;
- (void)setLocalizedAlertViewDeclineButtonTitle:(id)title;
- (void)setLocalizedAlertViewProceedButtonTitle:(id)title;
- (void)setLocalizedPromptMessage:(id)message;
- (void)setLocalizedPromptTitle:(id)title;
- (void)setPromptStyle:(int64_t)style;
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

- (void)setPromptStyle:(int64_t)style
{
  self->_promptStyle = style;
  swiftObject = [(FBKSLaunchConfiguration *)self swiftObject];
  [swiftObject setPromptStyle:style];
}

- (void)setLocalizedPromptTitle:(id)title
{
  objc_storeStrong(&self->_localizedPromptTitle, title);
  titleCopy = title;
  swiftObject = [(FBKSLaunchConfiguration *)self swiftObject];
  [swiftObject setLocalizedPromptTitle:titleCopy];
}

- (void)setLocalizedPromptMessage:(id)message
{
  objc_storeStrong(&self->_localizedPromptMessage, message);
  messageCopy = message;
  swiftObject = [(FBKSLaunchConfiguration *)self swiftObject];
  [swiftObject setLocalizedPromptMessage:messageCopy];
}

- (void)setLocalizedAlertViewProceedButtonTitle:(id)title
{
  objc_storeStrong(&self->_localizedAlertViewProceedButtonTitle, title);
  titleCopy = title;
  swiftObject = [(FBKSLaunchConfiguration *)self swiftObject];
  [swiftObject setLocalizedAlertViewProceedButtonTitle:titleCopy];
}

- (void)setLocalizedAlertViewDeclineButtonTitle:(id)title
{
  objc_storeStrong(&self->_localizedAlertViewDeclineButtonTitle, title);
  titleCopy = title;
  swiftObject = [(FBKSLaunchConfiguration *)self swiftObject];
  [swiftObject setLocalizedAlertViewDeclineButtonTitle:titleCopy];
}

@end