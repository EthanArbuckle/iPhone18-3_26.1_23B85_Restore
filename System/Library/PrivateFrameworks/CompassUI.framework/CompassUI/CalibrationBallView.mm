@interface CalibrationBallView
- (CalibrationBallView)initWithFrame:(CGRect)frame ballRadius:(double)radius;
- (id)ballView;
- (void)layoutSubviews;
@end

@implementation CalibrationBallView

- (CalibrationBallView)initWithFrame:(CGRect)frame ballRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = CalibrationBallView;
  result = [(CalibrationBallView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_currentAngle = 0.0;
    result->_ballRadius = radius;
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

      redColor = [MEMORY[0x277D75348] redColor];
      cGColor = [redColor CGColor];
      layer = [(UIView *)self->_ballView layer];
      [layer setBackgroundColor:cGColor];

      layer2 = [(UIView *)self->_ballView layer];
      [layer2 setMasksToBounds:1];

      v10 = self->_ballRadius * 0.5;
      layer3 = [(UIView *)self->_ballView layer];
      [layer3 setCornerRadius:v10];

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
  ballView = [(CalibrationBallView *)self ballView];
  trackRadius = self->_trackRadius;
  v7 = __sincos_stret(self->_currentAngle);
  [ballView setCenter:{MidX + trackRadius * v7.__cosval, MidY + trackRadius * v7.__sinval}];
}

@end