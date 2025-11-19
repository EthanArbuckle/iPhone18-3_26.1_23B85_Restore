@interface CAMExposureBiasStatusIndicatorTickMarksView
- (CAMExposureBiasStatusIndicatorTickMarksView)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (_NSRange)selectedRange;
- (void)drawRect:(CGRect)a3;
- (void)setSelectedRange:(_NSRange)a3;
@end

@implementation CAMExposureBiasStatusIndicatorTickMarksView

- (CAMExposureBiasStatusIndicatorTickMarksView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMExposureBiasStatusIndicatorTickMarksView;
  v3 = [(CAMExposureBiasStatusIndicatorTickMarksView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMExposureBiasStatusIndicatorTickMarksView *)v3 setOpaque:0];
  }

  return v4;
}

- (void)setSelectedRange:(_NSRange)a3
{
  if (self->_selectedRange.location != a3.location || self->_selectedRange.length != a3.length)
  {
    self->_selectedRange = a3;
    [(CAMExposureBiasStatusIndicatorTickMarksView *)self setNeedsDisplay];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 37.0;
  v3 = 6.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  [(CAMExposureBiasStatusIndicatorTickMarksView *)self bounds:a3.origin.x];
  v5 = v4;
  CurrentContext = UIGraphicsGetCurrentContext();
  v14 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
  v7 = CAMYellowColor();
  for (i = 0; i != 13; ++i)
  {
    if (-1431655765 * i >= 0x55555556)
    {
      v9 = 3.0;
    }

    else
    {
      v9 = 6.0;
    }

    v10 = [(CAMExposureBiasStatusIndicatorTickMarksView *)self selectedRange];
    v12 = i - v10 < v11 && i >= v10;
    v13 = v14;
    if (v12)
    {
      v13 = v7;
    }

    [v13 set];
    v16.size.width = 1.0;
    v16.origin.x = i * 3.0;
    v16.origin.y = v5 - v9;
    v16.size.height = v9;
    CGContextFillRect(CurrentContext, v16);
  }
}

- (_NSRange)selectedRange
{
  p_selectedRange = &self->_selectedRange;
  location = self->_selectedRange.location;
  length = p_selectedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end