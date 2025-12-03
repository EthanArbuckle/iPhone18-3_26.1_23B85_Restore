@interface CAMDrawerIntensityButton
- (void)setOn:(BOOL)on;
@end

@implementation CAMDrawerIntensityButton

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

@end