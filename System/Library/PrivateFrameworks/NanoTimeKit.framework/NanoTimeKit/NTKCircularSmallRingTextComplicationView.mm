@interface NTKCircularSmallRingTextComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKCircularSmallRingTextComplicationView)initWithFrame:(CGRect)frame;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)block;
- (void)_updateForTemplateChange;
- (void)_updateLabelWithTextProvider:(id)provider;
- (void)_updateLabelsForFontChange;
- (void)layoutSubviews;
- (void)updateLabelWithString:(id)string;
@end

@implementation NTKCircularSmallRingTextComplicationView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
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

- (NTKCircularSmallRingTextComplicationView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = NTKCircularSmallRingTextComplicationView;
  v3 = [(NTKCircularSmallRingComplicationView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  device = [(NTKCircularComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CLKUIColoringLabel *)self->_label setFrame:v5, v7, v9, v11];
}

- (void)updateLabelWithString:(id)string
{
  v4 = [MEMORY[0x277CBBB88] textProviderWithText:string shortText:0];
  [(NTKCircularSmallRingTextComplicationView *)self _updateLabelWithTextProvider:v4];
}

- (void)_updateLabelWithTextProvider:(id)provider
{
  [(CLKUIColoringLabel *)self->_label setTextProvider:provider];

  [(NTKCircularSmallRingTextComplicationView *)self setNeedsLayout];
}

- (void)_updateForTemplateChange
{
  complicationTemplate = [(NTKCircularComplicationView *)self complicationTemplate];
  v3 = [NTKRing alloc];
  [complicationTemplate fillFraction];
  v5 = -[NTKRing initWithFillFraction:style:](v3, "initWithFillFraction:style:", [complicationTemplate ringStyle], v4);
  [(NTKCircularSmallRingComplicationView *)self updateRingWithRingDescription:v5];
  tintColor = [complicationTemplate tintColor];

  if (tintColor)
  {
    tintColor2 = [complicationTemplate tintColor];
    [(NTKCircularSmallRingComplicationView *)self updateRingWithOverrideColor:tintColor2];
  }

  textProvider = [complicationTemplate textProvider];
  [(NTKCircularSmallRingTextComplicationView *)self _updateLabelWithTextProvider:textProvider];
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = NTKCircularSmallRingTextComplicationView;
  blockCopy = block;
  [(NTKCircularSmallRingComplicationView *)&v5 _enumerateForegroundColoringViewsWithBlock:blockCopy];
  blockCopy[2](blockCopy, self->_label);
}

@end