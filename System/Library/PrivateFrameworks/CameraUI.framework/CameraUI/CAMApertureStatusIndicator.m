@interface CAMApertureStatusIndicator
- (id)valueText;
- (void)setApertureValue:(double)a3;
- (void)setOn:(BOOL)a3;
@end

@implementation CAMApertureStatusIndicator

- (void)setApertureValue:(double)a3
{
  if (self->_apertureValue != a3)
  {
    self->_apertureValue = a3;
    [(CAMControlStatusIndicator *)self setNeedsUpdateValueText];
  }
}

- (id)valueText
{
  [(CAMApertureStatusIndicator *)self apertureValue];
  v3 = v2;
  v4 = objc_opt_class();
  if (v3 >= 10.0)
  {
    [v4 integerFormatter];
  }

  else
  {
    [v4 decimalFormatter];
  }
  v5 = ;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v7 = [v5 stringFromNumber:v6];

  return v7;
}

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    self->_on = a3;
    [(CAMControlStatusIndicator *)self updateImage];
  }
}

@end