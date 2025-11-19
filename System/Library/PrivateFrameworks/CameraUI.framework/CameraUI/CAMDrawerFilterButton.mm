@interface CAMDrawerFilterButton
- (id)imageSymbolColorConfiguration;
- (void)setOn:(BOOL)a3;
@end

@implementation CAMDrawerFilterButton

- (id)imageSymbolColorConfiguration
{
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DC888] tintColor];
  v4 = [v2 configurationWithHierarchicalColor:v3];

  return v4;
}

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    self->_on = a3;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

@end