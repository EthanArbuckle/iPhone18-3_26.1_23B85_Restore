@interface LCSCaptureApplicationLaunchActions
- (LCSCaptureApplicationLaunchActions)initWithApplicationLaunchAction:(id)a3 extensionLaunchAction:(id)a4;
@end

@implementation LCSCaptureApplicationLaunchActions

- (LCSCaptureApplicationLaunchActions)initWithApplicationLaunchAction:(id)a3 extensionLaunchAction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LCSCaptureApplicationLaunchActions;
  v9 = [(LCSCaptureApplicationLaunchActions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationLaunchAction, a3);
    objc_storeStrong(&v10->_extensionLaunchAction, a4);
  }

  return v10;
}

@end