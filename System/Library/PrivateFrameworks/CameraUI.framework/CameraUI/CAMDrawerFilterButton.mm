@interface CAMDrawerFilterButton
- (id)imageSymbolColorConfiguration;
- (void)setOn:(BOOL)on;
@end

@implementation CAMDrawerFilterButton

- (id)imageSymbolColorConfiguration
{
  v2 = MEMORY[0x1E69DCAD8];
  tintColor = [MEMORY[0x1E69DC888] tintColor];
  v4 = [v2 configurationWithHierarchicalColor:tintColor];

  return v4;
}

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

@end