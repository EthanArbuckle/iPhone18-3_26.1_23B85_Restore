@interface CAMDrawerIntensityButton
- (void)setOn:(BOOL)a3;
@end

@implementation CAMDrawerIntensityButton

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    self->_on = a3;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

@end