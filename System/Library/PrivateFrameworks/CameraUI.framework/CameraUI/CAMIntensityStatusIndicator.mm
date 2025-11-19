@interface CAMIntensityStatusIndicator
- (void)setOn:(BOOL)a3;
@end

@implementation CAMIntensityStatusIndicator

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    self->_on = a3;
    [(CAMControlStatusIndicator *)self updateImage];
  }
}

@end