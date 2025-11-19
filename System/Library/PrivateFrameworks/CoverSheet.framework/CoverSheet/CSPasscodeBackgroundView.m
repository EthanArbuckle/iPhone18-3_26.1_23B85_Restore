@interface CSPasscodeBackgroundView
- (CSPasscodeBackgroundView)initWithFrame:(CGRect)a3;
- (void)_setPlusDBackgroundColorWithWeighting:(double)a3;
- (void)layoutSubviews;
- (void)setReduceTransparencyBackingColor:(id)a3;
- (void)setWeighting:(double)a3;
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

- (CSPasscodeBackgroundView)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = CSPasscodeBackgroundView;
  v3 = [(CSPasscodeBackgroundView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v4 = objc_alloc_init(MEMORY[0x277D75D18]);
      reduceTransparencyBackingView = v3->_reduceTransparencyBackingView;
      v3->_reduceTransparencyBackingView = v4;

      v6 = [MEMORY[0x277D75348] whiteColor];
      [(CSPasscodeBackgroundView *)v3 setReduceTransparencyBackingColor:v6];

      [(CSPasscodeBackgroundView *)v3 addSubview:v3->_reduceTransparencyBackingView];
      v7 = objc_alloc_init(MEMORY[0x277D75D18]);
      p_reduceTransparencyTintingView = &v3->_reduceTransparencyTintingView;
      reduceTransparencyTintingView = v3->_reduceTransparencyTintingView;
      v3->_reduceTransparencyTintingView = v7;

      v10 = v3->_reduceTransparencyTintingView;
      v11 = [MEMORY[0x277D75348] blackColor];
      v12 = [v11 colorWithAlphaComponent:0.35];
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
      v17 = [(CSPasscodeBackgroundView *)v3 layer];
      [v17 setAllowsGroupBlending:0];

      v18 = objc_alloc_init(MEMORY[0x277D75D18]);
      lightenSourceOverView = v3->_lightenSourceOverView;
      v3->_lightenSourceOverView = v18;

      v20 = v3->_lightenSourceOverView;
      v21 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.25];
      [(UIView *)v20 setBackgroundColor:v21];

      v22 = [(UIView *)v3->_lightenSourceOverView layer];
      v23 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA550]];
      [v22 setCompositingFilter:v23];

      [(CSPasscodeBackgroundView *)v3 addSubview:v3->_lightenSourceOverView];
      v24 = objc_alloc_init(MEMORY[0x277D75D18]);
      p_reduceTransparencyTintingView = &v3->_plusDView;
      plusDView = v3->_plusDView;
      v3->_plusDView = v24;

      [(CSPasscodeBackgroundView *)v3 _setPlusDBackgroundColorWithWeighting:1.0];
      v11 = [(UIView *)v3->_plusDView layer];
      v12 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
      [v11 setCompositingFilter:v12];
    }

    [(CSPasscodeBackgroundView *)v3 addSubview:*p_reduceTransparencyTintingView];
  }

  return v3;
}

- (void)setReduceTransparencyBackingColor:(id)a3
{
  v5 = a3;
  if (self->_reduceTransparencyBackingColor != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_reduceTransparencyBackingColor, a3);
    reduceTransparencyBackingColor = self->_reduceTransparencyBackingColor;
    if (reduceTransparencyBackingColor)
    {
      v7 = reduceTransparencyBackingColor;
    }

    else
    {
      v7 = [MEMORY[0x277D75348] whiteColor];
    }

    v8 = v7;
    reduceTransparencyBackingView = self->_reduceTransparencyBackingView;
    v10 = [(UIColor *)v7 colorWithAlphaComponent:1.0];
    [(UIView *)reduceTransparencyBackingView setBackgroundColor:v10];

    v5 = v11;
  }
}

- (void)setWeighting:(double)a3
{
  [(UIView *)self->_reduceTransparencyBackingView setAlpha:?];
  [(UIView *)self->_reduceTransparencyTintingView setAlpha:a3];
  [(MTMaterialView *)self->_materialView setWeighting:a3];
  [(UIView *)self->_lightenSourceOverView setAlpha:a3];

  [(CSPasscodeBackgroundView *)self _setPlusDBackgroundColorWithWeighting:a3];
}

- (void)_setPlusDBackgroundColorWithWeighting:(double)a3
{
  plusDView = self->_plusDView;
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:a3 * 0.2];
  [(UIView *)plusDView setBackgroundColor:v4];
}

@end