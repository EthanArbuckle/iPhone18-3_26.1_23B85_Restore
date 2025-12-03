@interface NTKMonochromeModel
- (NTKMonochromeModel)initWithDevice:(id)device;
- (id)colorForView:(id)view accented:(BOOL)accented;
@end

@implementation NTKMonochromeModel

- (NTKMonochromeModel)initWithDevice:(id)device
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKMonochromeModel;
  v6 = [(NTKMonochromeModel *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    magentaColor = [MEMORY[0x277D75348] magentaColor];
    accentColor = v7->_accentColor;
    v7->_accentColor = magentaColor;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    nonAccentColor = v7->_nonAccentColor;
    v7->_nonAccentColor = whiteColor;

    backgroundColor = v7->_backgroundColor;
    v7->_backgroundColor = 0;
  }

  return v7;
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  v4 = 16;
  if (accented)
  {
    v4 = 8;
  }

  return *(&self->super.isa + v4);
}

@end