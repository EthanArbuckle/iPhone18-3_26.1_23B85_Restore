@interface CAMIntensityButton
- (CAMIntensityButton)initWithLayoutStyle:(int64_t)style;
- (UIEdgeInsets)tappableEdgeInsets;
- (void)_updateColorsAnimated:(BOOL)animated;
- (void)setActive:(BOOL)active animated:(BOOL)animated;
- (void)setIntensityValue:(double)value;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setTappableEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation CAMIntensityButton

- (CAMIntensityButton)initWithLayoutStyle:(int64_t)style
{
  v12.receiver = self;
  v12.super_class = CAMIntensityButton;
  v4 = [(CAMIntensityButton *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_orientation = 1;
    v4->_layoutStyle = style;
    [(CAMIntensityButton *)v4 setAdjustsImageWhenHighlighted:0];
    v6 = MEMORY[0x1E69DCAB8];
    v7 = CAMCameraUIFrameworkBundle();
    v8 = [v6 imageNamed:@"CAMIntensityButton" inBundle:v7];
    v9 = [v8 imageWithRenderingMode:2];

    [(CAMIntensityButton *)v5 setImage:v9 forState:0];
    [(CAMIntensityButton *)v5 _updateColorsAnimated:0];
    v10 = v5;
  }

  return v5;
}

- (void)setIntensityValue:(double)value
{
  if (self->_intensityValue != value)
  {
    self->_intensityValue = value;
  }
}

- (void)setActive:(BOOL)active animated:(BOOL)animated
{
  animatedCopy = animated;
  activeCopy = active;
  isActive = [(CAMIntensityButton *)self isActive];
  [(CAMIntensityButton *)self setSelected:activeCopy];
  if (isActive != activeCopy)
  {

    [(CAMIntensityButton *)self _updateColorsAnimated:animatedCopy];
  }
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tappableEdgeInsets.top), vceqq_f64(v4, *&self->_tappableEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_tappableEdgeInsets = insets;
    [(CAMIntensityButton *)self setNeedsLayout];
  }
}

- (void)_updateColorsAnimated:(BOOL)animated
{
  if ([(CAMIntensityButton *)self isActive])
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  }
  v5 = ;
  imageView = [(CAMIntensityButton *)self imageView];
  [imageView setTintColor:v5];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    animatedCopy = animated;
    self->_orientation = orientation;
    imageView = [(CAMIntensityButton *)self imageView];
    [CAMView rotateView:imageView toInterfaceOrientation:orientation animated:animatedCopy];
  }
}

- (UIEdgeInsets)tappableEdgeInsets
{
  top = self->_tappableEdgeInsets.top;
  left = self->_tappableEdgeInsets.left;
  bottom = self->_tappableEdgeInsets.bottom;
  right = self->_tappableEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end