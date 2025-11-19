@interface CAMIntensityButton
- (CAMIntensityButton)initWithLayoutStyle:(int64_t)a3;
- (UIEdgeInsets)tappableEdgeInsets;
- (void)_updateColorsAnimated:(BOOL)a3;
- (void)setActive:(BOOL)a3 animated:(BOOL)a4;
- (void)setIntensityValue:(double)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setTappableEdgeInsets:(UIEdgeInsets)a3;
@end

@implementation CAMIntensityButton

- (CAMIntensityButton)initWithLayoutStyle:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = CAMIntensityButton;
  v4 = [(CAMIntensityButton *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_orientation = 1;
    v4->_layoutStyle = a3;
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

- (void)setIntensityValue:(double)a3
{
  if (self->_intensityValue != a3)
  {
    self->_intensityValue = a3;
  }
}

- (void)setActive:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CAMIntensityButton *)self isActive];
  [(CAMIntensityButton *)self setSelected:v5];
  if (v7 != v5)
  {

    [(CAMIntensityButton *)self _updateColorsAnimated:v4];
  }
}

- (void)setTappableEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_tappableEdgeInsets.top), vceqq_f64(v4, *&self->_tappableEdgeInsets.bottom)))) & 1) == 0)
  {
    self->_tappableEdgeInsets = a3;
    [(CAMIntensityButton *)self setNeedsLayout];
  }
}

- (void)_updateColorsAnimated:(BOOL)a3
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
  v4 = [(CAMIntensityButton *)self imageView];
  [v4 setTintColor:v5];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v5 = a4;
    self->_orientation = a3;
    v7 = [(CAMIntensityButton *)self imageView];
    [CAMView rotateView:v7 toInterfaceOrientation:a3 animated:v5];
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