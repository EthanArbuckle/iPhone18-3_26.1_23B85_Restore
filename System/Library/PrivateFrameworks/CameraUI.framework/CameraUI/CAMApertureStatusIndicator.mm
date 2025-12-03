@interface CAMApertureStatusIndicator
- (id)valueText;
- (void)setApertureValue:(double)value;
- (void)setOn:(BOOL)on;
@end

@implementation CAMApertureStatusIndicator

- (void)setApertureValue:(double)value
{
  if (self->_apertureValue != value)
  {
    self->_apertureValue = value;
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

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(CAMControlStatusIndicator *)self updateImage];
  }
}

@end