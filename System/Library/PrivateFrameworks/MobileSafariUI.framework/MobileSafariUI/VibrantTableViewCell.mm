@interface VibrantTableViewCell
- (void)setUsesVibrantEffect:(BOOL)a3;
@end

@implementation VibrantTableViewCell

- (void)setUsesVibrantEffect:(BOOL)a3
{
  if (self->_usesVibrantEffect != a3)
  {
    v4 = a3;
    self->_usesVibrantEffect = a3;
    v6 = [MEMORY[0x277D75348] clearColor];
    [(VibrantTableViewCell *)self setBackgroundColor:v6];

    [(VibrantTableViewCell *)self sf_setUsesVibrantSelection:v4];
  }
}

@end