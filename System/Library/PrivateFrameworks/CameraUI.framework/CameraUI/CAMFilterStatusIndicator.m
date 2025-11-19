@interface CAMFilterStatusIndicator
- (id)imageSymbolColorConfiguration;
- (void)setOn:(BOOL)a3;
@end

@implementation CAMFilterStatusIndicator

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    self->_on = a3;
    [(CAMControlStatusIndicator *)self updateImage];
  }
}

- (id)imageSymbolColorConfiguration
{
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DC888] tintColor];
  v4 = [v2 configurationWithHierarchicalColor:v3];

  return v4;
}

@end