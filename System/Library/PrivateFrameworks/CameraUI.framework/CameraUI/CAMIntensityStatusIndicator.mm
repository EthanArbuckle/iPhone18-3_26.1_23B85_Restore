@interface CAMIntensityStatusIndicator
- (void)setOn:(BOOL)on;
@end

@implementation CAMIntensityStatusIndicator

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(CAMControlStatusIndicator *)self updateImage];
  }
}

@end