@interface NUApplicationDevice
- (BOOL)isSplitScreen;
- (NUApplicationDevice)initWithApplication:(id)a3 screen:(id)a4;
@end

@implementation NUApplicationDevice

- (NUApplicationDevice)initWithApplication:(id)a3 screen:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NUApplicationDevice;
  v9 = [(NUApplicationDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_application, a3);
    objc_storeStrong(&v10->_screen, a4);
  }

  return v10;
}

- (BOOL)isSplitScreen
{
  v3 = [(NUApplicationDevice *)self application];
  v4 = [v3 keyWindow];
  [v4 frame];
  Width = CGRectGetWidth(v9);
  v6 = [(NUApplicationDevice *)self screen];
  [v6 bounds];
  v7 = Width != CGRectGetWidth(v10);

  return v7;
}

@end