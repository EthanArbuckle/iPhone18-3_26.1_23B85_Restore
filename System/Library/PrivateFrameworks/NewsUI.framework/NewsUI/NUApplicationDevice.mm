@interface NUApplicationDevice
- (BOOL)isSplitScreen;
- (NUApplicationDevice)initWithApplication:(id)application screen:(id)screen;
@end

@implementation NUApplicationDevice

- (NUApplicationDevice)initWithApplication:(id)application screen:(id)screen
{
  applicationCopy = application;
  screenCopy = screen;
  v12.receiver = self;
  v12.super_class = NUApplicationDevice;
  v9 = [(NUApplicationDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_application, application);
    objc_storeStrong(&v10->_screen, screen);
  }

  return v10;
}

- (BOOL)isSplitScreen
{
  application = [(NUApplicationDevice *)self application];
  keyWindow = [application keyWindow];
  [keyWindow frame];
  Width = CGRectGetWidth(v9);
  screen = [(NUApplicationDevice *)self screen];
  [screen bounds];
  v7 = Width != CGRectGetWidth(v10);

  return v7;
}

@end