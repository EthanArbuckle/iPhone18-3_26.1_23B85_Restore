@interface NTKCircularSmallRingComplicationView
- (NTKCircularSmallRingComplicationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setForegroundColor:(id)a3;
- (void)setUsesMediumLayout:(BOOL)a3;
- (void)updateRingWithOverrideColor:(id)a3;
- (void)updateRingWithRingDescription:(id)a3;
@end

@implementation NTKCircularSmallRingComplicationView

- (NTKCircularSmallRingComplicationView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = NTKCircularSmallRingComplicationView;
  v3 = [(NTKCircularComplicationView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setUsesMediumLayout:(BOOL)a3
{
  self->_didDrawOnce = 0;
  v3.receiver = self;
  v3.super_class = NTKCircularSmallRingComplicationView;
  [(NTKCircularComplicationView *)&v3 setUsesMediumLayout:a3];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKCircularSmallRingComplicationView;
  [(NTKCircularComplicationView *)&v4 layoutSubviews];
  [(NTKCircularSmallRingComplicationView *)self bounds];
  [(NTKCircularComplicationView *)self _layoutConstants];
  v3 = [(NTKCircularComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  [(CLKUIColoringImageView *)self->_fillFractionRing setFrame:?];
}

- (void)updateRingWithRingDescription:(id)a3
{
  v4 = a3;
  [v4 fillFraction];
  if (!CLKFloatEqualsFloat() || !self->_didDrawOnce)
  {
    [v4 fillFraction];
    self->_fillFraction = v5;
    [(NTKCircularComplicationView *)self _layoutConstants];
    [v4 setRadius:v8 * 0.5];
    [(NTKCircularComplicationView *)self _layoutConstants];
    [v4 setStrokeWidth:v7];
    v6 = [v4 ringImage];
    [(CLKUIColoringImageView *)self->_fillFractionRing setImage:v6];

    self->_didDrawOnce = 1;
    [(NTKCircularSmallRingComplicationView *)self setNeedsLayout];
  }
}

- (void)updateRingWithOverrideColor:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_ringOverrideColor, a3);
  if (self->_ringOverrideColor)
  {
    [(CLKUIColoringImageView *)self->_fillFractionRing setColor:?];
  }

  else
  {
    v5 = [(NTKCircularComplicationView *)self _computedForegroundColor];
    [(CLKUIColoringImageView *)self->_fillFractionRing setColor:v5];
  }

  [(NTKCircularSmallRingComplicationView *)self setNeedsLayout];
}

- (void)setForegroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKCircularSmallRingComplicationView;
  [(NTKCircularComplicationView *)&v4 setForegroundColor:a3];
  if (self->_ringOverrideColor)
  {
    [(CLKUIColoringImageView *)self->_fillFractionRing setColor:?];
    [(NTKCircularSmallRingComplicationView *)self setNeedsLayout];
  }
}

@end