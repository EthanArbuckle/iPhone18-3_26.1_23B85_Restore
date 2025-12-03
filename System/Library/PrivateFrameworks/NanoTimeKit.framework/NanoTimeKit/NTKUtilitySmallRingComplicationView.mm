@interface NTKUtilitySmallRingComplicationView
- (NTKUtilitySmallRingComplicationView)initWithFrame:(CGRect)frame;
- (void)_applyForegroundAlpha;
- (void)layoutSubviews;
- (void)updateRingWithRingDescription:(id)description;
- (void)updateRingWithRingDescription:(id)description backgroundRingAlpha:(double)alpha;
@end

@implementation NTKUtilitySmallRingComplicationView

- (NTKUtilitySmallRingComplicationView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = NTKUtilitySmallRingComplicationView;
  v3 = [(NTKUtilityCircularComplicationView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    device = [(NTKUtilityComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_70(device, v13);
    v6 = [(NTKUtilityComplicationView *)v4 _newImageViewSubviewWithAlpha:v14];
    fillFractionRing = v4->_fillFractionRing;
    v4->_fillFractionRing = v6;

    v8 = v4->_fillFractionRing;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringImageView *)v8 setColor:whiteColor];

    contentView = [(NTKUtilityCircularComplicationView *)v4 contentView];
    [contentView addSubview:v4->_fillFractionRing];
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
    device = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device, v6);
    [(CLKUIColoringImageView *)fillFractionRing setAlpha:v7];
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKUtilitySmallRingComplicationView;
  [(NTKUtilityCircularComplicationView *)&v13 layoutSubviews];
  contentView = [(NTKUtilityCircularComplicationView *)self contentView];
  [contentView bounds];

  [(CLKUIColoringImageView *)self->_fillFractionRing sizeToFit];
  [(CLKUIColoringImageView *)self->_fillFractionRing frame];
  device = [(NTKUtilityComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CLKUIColoringImageView *)self->_fillFractionRing setFrame:v6, v8, v10, v12];
}

- (void)updateRingWithRingDescription:(id)description
{
  descriptionCopy = description;
  device = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(device, v9);
  v5 = v11;
  device2 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(device2, v9);
  v7 = v5 / v10;

  [(NTKUtilitySmallRingComplicationView *)self updateRingWithRingDescription:descriptionCopy backgroundRingAlpha:v7];
}

- (void)updateRingWithRingDescription:(id)description backgroundRingAlpha:(double)alpha
{
  descriptionCopy = description;
  [descriptionCopy fillFraction];
  if (!CLKFloatEqualsFloat() || !self->_didDrawOnce)
  {
    [descriptionCopy fillFraction];
    *&v6 = v6;
    self->_fillFraction = *&v6;
    device = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device, v14);
    [descriptionCopy setRadius:v15 * 0.5];

    device2 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device2, v14);
    [descriptionCopy setStrokeWidth:v16];

    [descriptionCopy setBackgroundRingAlpha:alpha];
    ringImage = [descriptionCopy ringImage];
    [(CLKUIColoringImageView *)self->_fillFractionRing setImage:ringImage];

    ringColor = [(NTKUtilitySmallRingComplicationView *)self ringColor];
    if (ringColor)
    {
      colorScheme = [(NTKUtilityComplicationView *)self colorScheme];
      containsOverrideFaceColor = [colorScheme containsOverrideFaceColor];

      if (containsOverrideFaceColor)
      {
        [(CLKUIColoringImageView *)self->_fillFractionRing setColor:ringColor];
      }
    }

    self->_didDrawOnce = 1;
    [(NTKUtilitySmallRingComplicationView *)self setNeedsLayout];
  }
}

@end