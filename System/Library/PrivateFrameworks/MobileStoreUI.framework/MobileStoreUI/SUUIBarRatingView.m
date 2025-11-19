@interface SUUIBarRatingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIBarRatingView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setBarRatingStyle:(int64_t)a3;
- (void)setNumberOfBars:(int64_t)a3;
- (void)setRatingValue:(float)a3;
@end

@implementation SUUIBarRatingView

- (SUUIBarRatingView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SUUIBarRatingView;
  result = [(SUUIBarRatingView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_numberOfBars = 11;
  }

  return result;
}

- (void)setBarRatingStyle:(int64_t)a3
{
  if (self->_barRatingStyle != a3)
  {
    self->_barRatingStyle = a3;
    [(SUUIBarRatingView *)self setNeedsDisplay];
  }
}

- (void)setNumberOfBars:(int64_t)a3
{
  if (self->_numberOfBars != a3)
  {
    self->_numberOfBars = a3;
    [(SUUIBarRatingView *)self setNeedsDisplay];
  }
}

- (void)setRatingValue:(float)a3
{
  if (self->_ratingValue != a3)
  {
    self->_ratingValue = a3;
    [(SUUIBarRatingView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  v18 = [(SUUIBarRatingView *)self tintColor:a3.origin.x];
  v4 = [v18 colorWithAlphaComponent:0.15];
  v5 = [v18 colorWithAlphaComponent:0.45];
  numberOfBars = self->_numberOfBars;
  v7 = ceilf(self->_ratingValue * numberOfBars);
  if (v7 > numberOfBars)
  {
    v7 = numberOfBars;
  }

  if (numberOfBars >= 1)
  {
    v8 = 0;
    v9 = v7;
    v10 = 0.0;
    do
    {
      if (v8 >= v9)
      {
        v11 = v4;
      }

      else
      {
        v11 = v5;
      }

      [v11 set];
      barRatingStyle = self->_barRatingStyle;
      if (barRatingStyle)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 3.0;
      }

      if (barRatingStyle)
      {
        v14 = 13.0;
      }

      else
      {
        v14 = 10.0;
      }

      v15 = 0;
      v16 = v10;
      v17 = v13;
      UIRectFillUsingBlendMode(*(&v14 - 3), kCGBlendModeNormal);
      v10 = v10 + v13 + 1.0;
      ++v8;
    }

    while (v8 < self->_numberOfBars);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  numberOfBars = self->_numberOfBars;
  v4 = numberOfBars;
  barRatingStyle = self->_barRatingStyle;
  v6 = numberOfBars - 1;
  v7 = 1.0;
  if (!barRatingStyle)
  {
    v7 = 3.0;
  }

  v8 = v6 + v4 * v7;
  v9 = 13.0;
  if (!barRatingStyle)
  {
    v9 = 10.0;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

@end