@interface NUExtensionDevice
- (BOOL)isSplitScreen;
- (NUExtensionDevice)initWithScreen:(id)screen hostViewController:(id)controller;
- (UIViewController)hostViewController;
@end

@implementation NUExtensionDevice

- (NUExtensionDevice)initWithScreen:(id)screen hostViewController:(id)controller
{
  screenCopy = screen;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = NUExtensionDevice;
  v9 = [(NUExtensionDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_screen, screen);
    objc_storeWeak(&v10->_hostViewController, controllerCopy);
  }

  return v10;
}

- (BOOL)isSplitScreen
{
  hostViewController = [(NUExtensionDevice *)self hostViewController];
  view = [hostViewController view];
  window = [view window];
  [window frame];
  Width = CGRectGetWidth(v10);
  screen = [(NUExtensionDevice *)self screen];
  [screen bounds];
  v8 = Width != CGRectGetWidth(v11);

  return v8;
}

- (UIViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

@end