@interface CalibrationBallView
- (CalibrationBallView)initWithFrame:(CGRect)a3 ballRadius:(double)a4;
- (id)ballView;
- (void)layoutSubviews;
@end

@implementation CalibrationBallView

- (CalibrationBallView)initWithFrame:(CGRect)a3 ballRadius:(double)a4
{
  v6.receiver = self;
  v6.super_class = CalibrationBallView;
  result = [(CalibrationBallView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_currentAngle = 0.0;
    result->_ballRadius = a4;
  }

  return result;
}

- (id)ballView
{
  ballView = self->_ballView;
  if (!ballView)
  {
    if (self->_ballRadius <= 0.0)
    {
      ballView = 0;
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, self->_ballRadius, self->_ballRadius}];
      v5 = self->_ballView;
      self->_ballView = v4;

      v6 = [MEMORY[0x277D75348] redColor];
      v7 = [v6 CGColor];
      v8 = [(UIView *)self->_ballView layer];
      [v8 setBackgroundColor:v7];

      v9 = [(UIView *)self->_ballView layer];
      [v9 setMasksToBounds:1];

      v10 = self->_ballRadius * 0.5;
      v11 = [(UIView *)self->_ballView layer];
      [v11 setCornerRadius:v10];

      [(CalibrationBallView *)self addSubview:self->_ballView];
      ballView = self->_ballView;
    }
  }

  return ballView;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CalibrationBallView;
  [(CalibrationBallView *)&v8 layoutSubviews];
  [(CalibrationBallView *)self bounds];
  MidX = CGRectGetMidX(v9);
  [(CalibrationBallView *)self bounds];
  MidY = CGRectGetMidY(v10);
  v5 = [(CalibrationBallView *)self ballView];
  trackRadius = self->_trackRadius;
  v7 = __sincos_stret(self->_currentAngle);
  [v5 setCenter:{MidX + trackRadius * v7.__cosval, MidY + trackRadius * v7.__sinval}];
}

@end