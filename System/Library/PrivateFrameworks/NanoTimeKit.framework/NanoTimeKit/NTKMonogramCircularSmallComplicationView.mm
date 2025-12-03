@interface NTKMonogramCircularSmallComplicationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKMonogramCircularSmallComplicationView)initWithFrame:(CGRect)frame;
- (void)_updateLabelsForFontChange;
- (void)layoutSubviews;
- (void)setForegroundColor:(id)color;
- (void)setMonogramText:(id)text;
@end

@implementation NTKMonogramCircularSmallComplicationView

- (NTKMonogramCircularSmallComplicationView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = NTKMonogramCircularSmallComplicationView;
  v3 = [(NTKCircularComplicationView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    device = [(NTKCircularComplicationView *)v3 device];
    v6 = NTKColorMonogramComplicationFontForCharacterCount(1, device, [(NTKCircularComplicationView *)v4 useRoundedFontDesign]);
    v7 = [(NTKCircularComplicationView *)v4 _newLabelSubviewWithFont:v6];
    label = v4->_label;
    v4->_label = v7;

    [(CLKUIColoringLabel *)v4->_label setTextAlignment:1];
    [(NTKCircularComplicationView *)v4 setWantsPlatter:0];
  }

  return v4;
}

- (void)setForegroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = NTKMonogramCircularSmallComplicationView;
  [(NTKCircularComplicationView *)&v6 setForegroundColor:color];
  label = self->_label;
  _computedForegroundColor = [(NTKCircularComplicationView *)self _computedForegroundColor];
  [(CLKUIColoringLabel *)label setColor:_computedForegroundColor];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CLKUIColoringLabel *)self->_label sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  [(NTKCircularComplicationView *)self _layoutConstants:0];
  v8 = 0.0;
  v9 = 0.0;
  if (v5 >= 0.0)
  {
    v8 = v5;
  }

  if (v7 >= 0.0)
  {
    v9 = v7;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKMonogramCircularSmallComplicationView;
  [(NTKCircularComplicationView *)&v5 layoutSubviews];
  [(NTKMonogramCircularSmallComplicationView *)self bounds];
  [(CLKUIColoringLabel *)self->_label sizeToFit];
  [(CLKUIColoringLabel *)self->_label frame];
  label = self->_label;
  device = [(NTKCircularComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  [(CLKUIColoringLabel *)label setFrame:?];
}

- (void)setMonogramText:(id)text
{
  [(CLKUIColoringLabel *)self->_label setText:text];
  [(NTKMonogramCircularSmallComplicationView *)self _updateLabelsForFontChange];
  [(NTKMonogramCircularSmallComplicationView *)self setNeedsLayout];
  displayObserver = [(NTKCircularComplicationView *)self displayObserver];
  [displayObserver complicationDisplayNeedsResize:self];
}

- (void)_updateLabelsForFontChange
{
  text = [(CLKUIColoringLabel *)self->_label text];
  label = self->_label;
  v4 = [text length];
  device = [(NTKCircularComplicationView *)self device];
  v6 = NTKColorMonogramComplicationFontForCharacterCount(v4, device, [(NTKCircularComplicationView *)self useRoundedFontDesign]);
  [(CLKUIColoringLabel *)label setFont:v6];
}

@end