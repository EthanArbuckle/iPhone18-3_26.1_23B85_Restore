@interface LCSCaptureApplicationLaunchActions
- (LCSCaptureApplicationLaunchActions)initWithApplicationLaunchAction:(id)action extensionLaunchAction:(id)launchAction;
@end

@implementation LCSCaptureApplicationLaunchActions

- (LCSCaptureApplicationLaunchActions)initWithApplicationLaunchAction:(id)action extensionLaunchAction:(id)launchAction
{
  actionCopy = action;
  launchActionCopy = launchAction;
  v12.receiver = self;
  v12.super_class = LCSCaptureApplicationLaunchActions;
  v9 = [(LCSCaptureApplicationLaunchActions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationLaunchAction, action);
    objc_storeStrong(&v10->_extensionLaunchAction, launchAction);
  }

  return v10;
}

@end