@interface NUExtensionDevice
- (BOOL)isSplitScreen;
- (NUExtensionDevice)initWithScreen:(id)a3 hostViewController:(id)a4;
- (UIViewController)hostViewController;
@end

@implementation NUExtensionDevice

- (NUExtensionDevice)initWithScreen:(id)a3 hostViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NUExtensionDevice;
  v9 = [(NUExtensionDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_screen, a3);
    objc_storeWeak(&v10->_hostViewController, v8);
  }

  return v10;
}

- (BOOL)isSplitScreen
{
  v3 = [(NUExtensionDevice *)self hostViewController];
  v4 = [v3 view];
  v5 = [v4 window];
  [v5 frame];
  Width = CGRectGetWidth(v10);
  v7 = [(NUExtensionDevice *)self screen];
  [v7 bounds];
  v8 = Width != CGRectGetWidth(v11);

  return v8;
}

- (UIViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

@end