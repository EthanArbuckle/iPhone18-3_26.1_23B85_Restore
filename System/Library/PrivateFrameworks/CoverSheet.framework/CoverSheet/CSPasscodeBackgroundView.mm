@interface CSPasscodeBackgroundView
- (CSPasscodeBackgroundView)initWithFrame:(CGRect)frame;
- (void)_setPlusDBackgroundColorWithWeighting:(double)weighting;
- (void)layoutSubviews;
- (void)setReduceTransparencyBackingColor:(id)color;
- (void)setWeighting:(double)weighting;
@end

@implementation CSPasscodeBackgroundView

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CSPasscodeBackgroundView;
  [(CSPasscodeBackgroundView *)&v11 layoutSubviews];
  [(CSPasscodeBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_reduceTransparencyBackingView setFrame:?];
  [(UIView *)self->_reduceTransparencyTintingView setFrame:v4, v6, v8, v10];
  [(MTMaterialView *)self->_materialView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_lightenSourceOverView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_plusDView setFrame:v4, v6, v8, v10];
}

- (CSPasscodeBackgroundView)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = CSPasscodeBackgroundView;
  v3 = [(CSPasscodeBackgroundView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v4 = objc_alloc_init(MEMORY[0x277D75D18]);
      reduceTransparencyBackingView = v3->_reduceTransparencyBackingView;
      v3->_reduceTransparencyBackingView = v4;

      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(CSPasscodeBackgroundView *)v3 setReduceTransparencyBackingColor:whiteColor];

      [(CSPasscodeBackgroundView *)v3 addSubview:v3->_reduceTransparencyBackingView];
      v7 = objc_alloc_init(MEMORY[0x277D75D18]);
      p_reduceTransparencyTintingView = &v3->_reduceTransparencyTintingView;
      reduceTransparencyTintingView = v3->_reduceTransparencyTintingView;
      v3->_reduceTransparencyTintingView = v7;

      v10 = v3->_reduceTransparencyTintingView;
      blackColor = [MEMORY[0x277D75348] blackColor];
      v12 = [blackColor colorWithAlphaComponent:0.35];
      [(UIView *)v10 setBackgroundColor:v12];
    }

    else
    {
      v13 = MEMORY[0x277D26718];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v13 materialViewWithRecipeNamed:@"dashBoardPasscodeBackground" inBundle:v14 options:0 initialWeighting:&__block_literal_global_19 scaleAdjustment:0.0];
      materialView = v3->_materialView;
      v3->_materialView = v15;

      [(MTMaterialView *)v3->_materialView setShouldCrossfade:1];
      [(CSPasscodeBackgroundView *)v3 addSubview:v3->_materialView];
      layer = [(CSPasscodeBackgroundView *)v3 layer];
      [layer setAllowsGroupBlending:0];

      v18 = objc_alloc_init(MEMORY[0x277D75D18]);
      lightenSourceOverView = v3->_lightenSourceOverView;
      v3->_lightenSourceOverView = v18;

      v20 = v3->_lightenSourceOverView;
      v21 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.25];
      [(UIView *)v20 setBackgroundColor:v21];

      layer2 = [(UIView *)v3->_lightenSourceOverView layer];
      v23 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA550]];
      [layer2 setCompositingFilter:v23];

      [(CSPasscodeBackgroundView *)v3 addSubview:v3->_lightenSourceOverView];
      v24 = objc_alloc_init(MEMORY[0x277D75D18]);
      p_reduceTransparencyTintingView = &v3->_plusDView;
      plusDView = v3->_plusDView;
      v3->_plusDView = v24;

      [(CSPasscodeBackgroundView *)v3 _setPlusDBackgroundColorWithWeighting:1.0];
      blackColor = [(UIView *)v3->_plusDView layer];
      v12 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
      [blackColor setCompositingFilter:v12];
    }

    [(CSPasscodeBackgroundView *)v3 addSubview:*p_reduceTransparencyTintingView];
  }

  return v3;
}

- (void)setReduceTransparencyBackingColor:(id)color
{
  colorCopy = color;
  if (self->_reduceTransparencyBackingColor != colorCopy)
  {
    v11 = colorCopy;
    objc_storeStrong(&self->_reduceTransparencyBackingColor, color);
    reduceTransparencyBackingColor = self->_reduceTransparencyBackingColor;
    if (reduceTransparencyBackingColor)
    {
      whiteColor = reduceTransparencyBackingColor;
    }

    else
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
    }

    v8 = whiteColor;
    reduceTransparencyBackingView = self->_reduceTransparencyBackingView;
    v10 = [(UIColor *)whiteColor colorWithAlphaComponent:1.0];
    [(UIView *)reduceTransparencyBackingView setBackgroundColor:v10];

    colorCopy = v11;
  }
}

- (void)setWeighting:(double)weighting
{
  [(UIView *)self->_reduceTransparencyBackingView setAlpha:?];
  [(UIView *)self->_reduceTransparencyTintingView setAlpha:weighting];
  [(MTMaterialView *)self->_materialView setWeighting:weighting];
  [(UIView *)self->_lightenSourceOverView setAlpha:weighting];

  [(CSPasscodeBackgroundView *)self _setPlusDBackgroundColorWithWeighting:weighting];
}

- (void)_setPlusDBackgroundColorWithWeighting:(double)weighting
{
  plusDView = self->_plusDView;
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:weighting * 0.2];
  [(UIView *)plusDView setBackgroundColor:v4];
}

@end