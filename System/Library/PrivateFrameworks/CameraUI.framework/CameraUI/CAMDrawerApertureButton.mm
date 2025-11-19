@interface CAMDrawerApertureButton
- (void)setOn:(BOOL)a3;
@end

@implementation CAMDrawerApertureButton

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    self->_on = a3;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

@end