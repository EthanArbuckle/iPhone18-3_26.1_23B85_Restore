@interface NTKCircularSmallRingTextComplicationView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKCircularSmallRingTextComplicationView)initWithFrame:(CGRect)a3;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3;
- (void)_updateForTemplateChange;
- (void)_updateLabelWithTextProvider:(id)a3;
- (void)_updateLabelsForFontChange;
- (void)layoutSubviews;
- (void)updateLabelWithString:(id)a3;
@end

@implementation NTKCircularSmallRingTextComplicationView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (NTKCircularSmallRingTextComplicationView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = NTKCircularSmallRingTextComplicationView;
  v3 = [(NTKCircularSmallRingComplicationView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NTKCircularComplicationView *)v3 _fontForDynamicFontSize:2];
    v6 = [(NTKCircularComplicationView *)v4 _newLabelSubviewWithFont:v5];
    label = v4->_label;
    v4->_label = v6;

    v8 = v4->_label;
    [(NTKCircularComplicationView *)v4 _layoutConstants];
    [(CLKUIColoringLabel *)v8 setMaxWidth:v10];
    [(NTKCircularComplicationView *)v4 setWantsPlatter:0];
  }

  return v4;
}

- (void)_updateLabelsForFontChange
{
  label = self->_label;
  v3 = [(NTKCircularComplicationView *)self _fontForDynamicFontSize:2];
  [(CLKUIColoringLabel *)label setFont:v3];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKCircularSmallRingTextComplicationView;
  [(NTKCircularSmallRingComplicationView *)&v12 layoutSubviews];
  [(NTKCircularSmallRingTextComplicationView *)self bounds];
  [(CLKUIColoringLabel *)self->_label sizeToFit];
  [(CLKUIColoringLabel *)self->_label frame];
  [(NTKCircularComplicationView *)self _layoutConstants];
  v3 = [(NTKCircularComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CLKUIColoringLabel *)self->_label setFrame:v5, v7, v9, v11];
}

- (void)updateLabelWithString:(id)a3
{
  v4 = [MEMORY[0x277CBBB88] textProviderWithText:a3 shortText:0];
  [(NTKCircularSmallRingTextComplicationView *)self _updateLabelWithTextProvider:v4];
}

- (void)_updateLabelWithTextProvider:(id)a3
{
  [(CLKUIColoringLabel *)self->_label setTextProvider:a3];

  [(NTKCircularSmallRingTextComplicationView *)self setNeedsLayout];
}

- (void)_updateForTemplateChange
{
  v9 = [(NTKCircularComplicationView *)self complicationTemplate];
  v3 = [NTKRing alloc];
  [v9 fillFraction];
  v5 = -[NTKRing initWithFillFraction:style:](v3, "initWithFillFraction:style:", [v9 ringStyle], v4);
  [(NTKCircularSmallRingComplicationView *)self updateRingWithRingDescription:v5];
  v6 = [v9 tintColor];

  if (v6)
  {
    v7 = [v9 tintColor];
    [(NTKCircularSmallRingComplicationView *)self updateRingWithOverrideColor:v7];
  }

  v8 = [v9 textProvider];
  [(NTKCircularSmallRingTextComplicationView *)self _updateLabelWithTextProvider:v8];
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKCircularSmallRingTextComplicationView;
  v4 = a3;
  [(NTKCircularSmallRingComplicationView *)&v5 _enumerateForegroundColoringViewsWithBlock:v4];
  v4[2](v4, self->_label);
}

@end