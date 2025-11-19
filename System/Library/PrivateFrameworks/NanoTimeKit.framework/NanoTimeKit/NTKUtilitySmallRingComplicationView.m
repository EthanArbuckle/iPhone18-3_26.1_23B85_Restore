@interface NTKUtilitySmallRingComplicationView
- (NTKUtilitySmallRingComplicationView)initWithFrame:(CGRect)a3;
- (void)_applyForegroundAlpha;
- (void)layoutSubviews;
- (void)updateRingWithRingDescription:(id)a3;
- (void)updateRingWithRingDescription:(id)a3 backgroundRingAlpha:(double)a4;
@end

@implementation NTKUtilitySmallRingComplicationView

- (NTKUtilitySmallRingComplicationView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = NTKUtilitySmallRingComplicationView;
  v3 = [(NTKUtilityCircularComplicationView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NTKUtilityComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_70(v5, v13);
    v6 = [(NTKUtilityComplicationView *)v4 _newImageViewSubviewWithAlpha:v14];
    fillFractionRing = v4->_fillFractionRing;
    v4->_fillFractionRing = v6;

    v8 = v4->_fillFractionRing;
    v9 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringImageView *)v8 setColor:v9];

    v10 = [(NTKUtilityCircularComplicationView *)v4 contentView];
    [v10 addSubview:v4->_fillFractionRing];
  }

  return v4;
}

- (void)_applyForegroundAlpha
{
  v5.receiver = self;
  v5.super_class = NTKUtilitySmallRingComplicationView;
  [(NTKUtilityComplicationView *)&v5 _applyForegroundAlpha];
  if (![(NTKUtilityComplicationView *)self editing])
  {
    fillFractionRing = self->_fillFractionRing;
    v4 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v4, v6);
    [(CLKUIColoringImageView *)fillFractionRing setAlpha:v7];
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKUtilitySmallRingComplicationView;
  [(NTKUtilityCircularComplicationView *)&v13 layoutSubviews];
  v3 = [(NTKUtilityCircularComplicationView *)self contentView];
  [v3 bounds];

  [(CLKUIColoringImageView *)self->_fillFractionRing sizeToFit];
  [(CLKUIColoringImageView *)self->_fillFractionRing frame];
  v4 = [(NTKUtilityComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CLKUIColoringImageView *)self->_fillFractionRing setFrame:v6, v8, v10, v12];
}

- (void)updateRingWithRingDescription:(id)a3
{
  v8 = a3;
  v4 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(v4, v9);
  v5 = v11;
  v6 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(v6, v9);
  v7 = v5 / v10;

  [(NTKUtilitySmallRingComplicationView *)self updateRingWithRingDescription:v8 backgroundRingAlpha:v7];
}

- (void)updateRingWithRingDescription:(id)a3 backgroundRingAlpha:(double)a4
{
  v13 = a3;
  [v13 fillFraction];
  if (!CLKFloatEqualsFloat() || !self->_didDrawOnce)
  {
    [v13 fillFraction];
    *&v6 = v6;
    self->_fillFraction = *&v6;
    v7 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v7, v14);
    [v13 setRadius:v15 * 0.5];

    v8 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v8, v14);
    [v13 setStrokeWidth:v16];

    [v13 setBackgroundRingAlpha:a4];
    v9 = [v13 ringImage];
    [(CLKUIColoringImageView *)self->_fillFractionRing setImage:v9];

    v10 = [(NTKUtilitySmallRingComplicationView *)self ringColor];
    if (v10)
    {
      v11 = [(NTKUtilityComplicationView *)self colorScheme];
      v12 = [v11 containsOverrideFaceColor];

      if (v12)
      {
        [(CLKUIColoringImageView *)self->_fillFractionRing setColor:v10];
      }
    }

    self->_didDrawOnce = 1;
    [(NTKUtilitySmallRingComplicationView *)self setNeedsLayout];
  }
}

@end