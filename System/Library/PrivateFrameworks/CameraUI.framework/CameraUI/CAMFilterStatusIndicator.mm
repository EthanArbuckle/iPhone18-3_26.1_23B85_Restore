@interface CAMFilterStatusIndicator
- (id)imageSymbolColorConfiguration;
- (void)setOn:(BOOL)on;
@end

@implementation CAMFilterStatusIndicator

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(CAMControlStatusIndicator *)self updateImage];
  }
}

- (id)imageSymbolColorConfiguration
{
  v2 = MEMORY[0x1E69DCAD8];
  tintColor = [MEMORY[0x1E69DC888] tintColor];
  v4 = [v2 configurationWithHierarchicalColor:tintColor];

  return v4;
}

@end