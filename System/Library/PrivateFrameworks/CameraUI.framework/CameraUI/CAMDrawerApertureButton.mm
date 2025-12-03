@interface CAMDrawerApertureButton
- (void)setOn:(BOOL)on;
@end

@implementation CAMDrawerApertureButton

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

@end