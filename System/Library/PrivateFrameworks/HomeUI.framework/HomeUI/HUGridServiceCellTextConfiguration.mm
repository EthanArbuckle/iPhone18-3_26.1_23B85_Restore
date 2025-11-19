@interface HUGridServiceCellTextConfiguration
- (UIColor)nameTextColor;
@end

@implementation HUGridServiceCellTextConfiguration

- (UIColor)nameTextColor
{
  nameTextColor = self->_nameTextColor;
  if (nameTextColor)
  {
    v3 = nameTextColor;
  }

  else
  {
    v3 = [MEMORY[0x277D75348] systemBlackColor];
  }

  return v3;
}

@end