@interface VibrantTableViewCell
- (void)setUsesVibrantEffect:(BOOL)effect;
@end

@implementation VibrantTableViewCell

- (void)setUsesVibrantEffect:(BOOL)effect
{
  if (self->_usesVibrantEffect != effect)
  {
    effectCopy = effect;
    self->_usesVibrantEffect = effect;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(VibrantTableViewCell *)self setBackgroundColor:clearColor];

    [(VibrantTableViewCell *)self sf_setUsesVibrantSelection:effectCopy];
  }
}

@end