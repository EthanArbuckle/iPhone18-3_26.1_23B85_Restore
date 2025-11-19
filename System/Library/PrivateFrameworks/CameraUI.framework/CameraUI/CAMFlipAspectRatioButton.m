@interface CAMFlipAspectRatioButton
- (CAMFlipAspectRatioButton)initWithFrame:(CGRect)a3;
- (id)imageNameForCurrentState;
- (void)setActive:(BOOL)a3 animated:(BOOL)a4;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMFlipAspectRatioButton

- (CAMFlipAspectRatioButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMFlipAspectRatioButton;
  v3 = [(CAMCircleButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setActive:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(CAMCircleButton *)self updateImage];
  }
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = CAMFlipAspectRatioButton;
  [(CAMCircleButton *)&v5 setOrientation:a3 animated:a4];
  [(CAMCircleButton *)self updateImage];
}

@end