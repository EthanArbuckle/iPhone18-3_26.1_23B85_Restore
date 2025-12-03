@interface CAMFlipAspectRatioButton
- (CAMFlipAspectRatioButton)initWithFrame:(CGRect)frame;
- (id)imageNameForCurrentState;
- (void)setActive:(BOOL)active animated:(BOOL)animated;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
@end

@implementation CAMFlipAspectRatioButton

- (CAMFlipAspectRatioButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAMFlipAspectRatioButton;
  v3 = [(CAMCircleButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_active = 0;
    [(CAMCircleButton *)v3 updateTintColors];
  }

  return v4;
}

- (id)imageNameForCurrentState
{
  v3 = ([(CAMCircleButton *)self orientation]- 3) < 2;
  if ([(CAMFlipAspectRatioButton *)self active]!= v3)
  {
    return @"person.crop.rectangle.portrait.rotate";
  }

  else
  {
    return @"person.crop.rectangle.landscape.rotate";
  }
}

- (void)setActive:(BOOL)active animated:(BOOL)animated
{
  if (self->_active != active)
  {
    self->_active = active;
    [(CAMCircleButton *)self updateImage];
  }
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = CAMFlipAspectRatioButton;
  [(CAMCircleButton *)&v5 setOrientation:orientation animated:animated];
  [(CAMCircleButton *)self updateImage];
}

@end