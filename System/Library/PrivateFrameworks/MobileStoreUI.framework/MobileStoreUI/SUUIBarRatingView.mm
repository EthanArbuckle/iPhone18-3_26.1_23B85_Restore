@interface SUUIBarRatingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIBarRatingView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setBarRatingStyle:(int64_t)style;
- (void)setNumberOfBars:(int64_t)bars;
- (void)setRatingValue:(float)value;
@end

@implementation SUUIBarRatingView

- (SUUIBarRatingView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SUUIBarRatingView;
  result = [(SUUIBarRatingView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_numberOfBars = 11;
  }

  return result;
}

- (void)setBarRatingStyle:(int64_t)style
{
  if (self->_barRatingStyle != style)
  {
    self->_barRatingStyle = style;
    [(SUUIBarRatingView *)self setNeedsDisplay];
  }
}

- (void)setNumberOfBars:(int64_t)bars
{
  if (self->_numberOfBars != bars)
  {
    self->_numberOfBars = bars;
    [(SUUIBarRatingView *)self setNeedsDisplay];
  }
}

- (void)setRatingValue:(float)value
{
  if (self->_ratingValue != value)
  {
    self->_ratingValue = value;
    [(SUUIBarRatingView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  v18 = [(SUUIBarRatingView *)self tintColor:rect.origin.x];
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

- (CGSize)sizeThatFits:(CGSize)fits
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