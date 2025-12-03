@interface HUGridServiceCellTextConfiguration
- (UIColor)nameTextColor;
@end

@implementation HUGridServiceCellTextConfiguration

- (UIColor)nameTextColor
{
  nameTextColor = self->_nameTextColor;
  if (nameTextColor)
  {
    systemBlackColor = nameTextColor;
  }

  else
  {
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  }

  return systemBlackColor;
}

@end