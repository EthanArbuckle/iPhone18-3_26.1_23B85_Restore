@interface NTKCircularSmallRingComplicationView
- (NTKCircularSmallRingComplicationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setForegroundColor:(id)color;
- (void)setUsesMediumLayout:(BOOL)layout;
- (void)updateRingWithOverrideColor:(id)color;
- (void)updateRingWithRingDescription:(id)description;
@end

@implementation NTKCircularSmallRingComplicationView

- (NTKCircularSmallRingComplicationView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = NTKCircularSmallRingComplicationView;
  v3 = [(NTKCircularComplicationView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKCircularComplicationView *)v3 setWantsPlatter:0];
    v5 = [off_27877BEF0 alloc];
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    fillFractionRing = v4->_fillFractionRing;
    v4->_fillFractionRing = v6;

    [(NTKCircularSmallRingComplicationView *)v4 addSubview:v4->_fillFractionRing];
  }

  return v4;
}

- (void)setUsesMediumLayout:(BOOL)layout
{
  self->_didDrawOnce = 0;
  v3.receiver = self;
  v3.super_class = NTKCircularSmallRingComplicationView;
  [(NTKCircularComplicationView *)&v3 setUsesMediumLayout:layout];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKCircularSmallRingComplicationView;
  [(NTKCircularComplicationView *)&v4 layoutSubviews];
  [(NTKCircularSmallRingComplicationView *)self bounds];
  [(NTKCircularComplicationView *)self _layoutConstants];
  device = [(NTKCircularComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  [(CLKUIColoringImageView *)self->_fillFractionRing setFrame:?];
}

- (void)updateRingWithRingDescription:(id)description
{
  descriptionCopy = description;
  [descriptionCopy fillFraction];
  if (!CLKFloatEqualsFloat() || !self->_didDrawOnce)
  {
    [descriptionCopy fillFraction];
    self->_fillFraction = v5;
    [(NTKCircularComplicationView *)self _layoutConstants];
    [descriptionCopy setRadius:v8 * 0.5];
    [(NTKCircularComplicationView *)self _layoutConstants];
    [descriptionCopy setStrokeWidth:v7];
    ringImage = [descriptionCopy ringImage];
    [(CLKUIColoringImageView *)self->_fillFractionRing setImage:ringImage];

    self->_didDrawOnce = 1;
    [(NTKCircularSmallRingComplicationView *)self setNeedsLayout];
  }
}

- (void)updateRingWithOverrideColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_ringOverrideColor, color);
  if (self->_ringOverrideColor)
  {
    [(CLKUIColoringImageView *)self->_fillFractionRing setColor:?];
  }

  else
  {
    _computedForegroundColor = [(NTKCircularComplicationView *)self _computedForegroundColor];
    [(CLKUIColoringImageView *)self->_fillFractionRing setColor:_computedForegroundColor];
  }

  [(NTKCircularSmallRingComplicationView *)self setNeedsLayout];
}

- (void)setForegroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = NTKCircularSmallRingComplicationView;
  [(NTKCircularComplicationView *)&v4 setForegroundColor:color];
  if (self->_ringOverrideColor)
  {
    [(CLKUIColoringImageView *)self->_fillFractionRing setColor:?];
    [(NTKCircularSmallRingComplicationView *)self setNeedsLayout];
  }
}

@end