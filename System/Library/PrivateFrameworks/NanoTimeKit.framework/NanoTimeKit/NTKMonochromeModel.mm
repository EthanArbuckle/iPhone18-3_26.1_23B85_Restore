@interface NTKMonochromeModel
- (NTKMonochromeModel)initWithDevice:(id)a3;
- (id)colorForView:(id)a3 accented:(BOOL)a4;
@end

@implementation NTKMonochromeModel

- (NTKMonochromeModel)initWithDevice:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = NTKMonochromeModel;
  v6 = [(NTKMonochromeModel *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [MEMORY[0x277D75348] magentaColor];
    accentColor = v7->_accentColor;
    v7->_accentColor = v8;

    v10 = [MEMORY[0x277D75348] whiteColor];
    nonAccentColor = v7->_nonAccentColor;
    v7->_nonAccentColor = v10;

    backgroundColor = v7->_backgroundColor;
    v7->_backgroundColor = 0;
  }

  return v7;
}

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  v4 = 16;
  if (a4)
  {
    v4 = 8;
  }

  return *(&self->super.isa + v4);
}

@end