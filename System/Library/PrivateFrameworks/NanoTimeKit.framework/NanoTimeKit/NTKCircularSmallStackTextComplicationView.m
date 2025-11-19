@interface NTKCircularSmallStackTextComplicationView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKCircularSmallStackTextComplicationView)initWithFrame:(CGRect)a3;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3;
- (void)_updateForTemplateChange;
- (void)_updateLabelColors;
- (void)_updateLabelsForFontChange;
- (void)layoutSubviews;
- (void)setForegroundColor:(id)a3;
- (void)setUsesMultiColor:(BOOL)a3;
@end

@implementation NTKCircularSmallStackTextComplicationView

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

- (NTKCircularSmallStackTextComplicationView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = NTKCircularSmallStackTextComplicationView;
  v3 = [(NTKCircularComplicationView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NTKCircularComplicationView *)v3 _fontForDynamicFontSize:1];
    v6 = [(NTKCircularComplicationView *)v4 _newLabelSubviewWithFont:v5];
    firstLineLabel = v4->_firstLineLabel;
    v4->_firstLineLabel = v6;

    v8 = [(NTKCircularComplicationView *)v4 _newLabelSubviewWithFont:v5];
    secondLineLabel = v4->_secondLineLabel;
    v4->_secondLineLabel = v8;

    [(NTKCircularComplicationView *)v4 _layoutConstants];
    [(CLKUIColoringLabel *)v4->_firstLineLabel setMaxWidth:v11];
    [(CLKUIColoringLabel *)v4->_secondLineLabel setMaxWidth:v11];
  }

  return v4;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = NTKCircularSmallStackTextComplicationView;
  [(NTKCircularComplicationView *)&v21 layoutSubviews];
  [(NTKCircularSmallStackTextComplicationView *)self bounds];
  [(CLKUIColoringLabel *)self->_firstLineLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_secondLineLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_firstLineLabel frame];
  [(NTKCircularComplicationView *)self _layoutConstants];
  [(CLKUIColoringLabel *)self->_firstLineLabel _lastLineBaseline];
  [(NTKCircularComplicationView *)self _layoutConstants];
  v3 = [(NTKCircularComplicationView *)self device];
  CLKRectCenteredXInRectForDevice();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CLKUIColoringLabel *)self->_firstLineLabel setFrame:v5, v7, v9, v11];
  [(CLKUIColoringLabel *)self->_secondLineLabel frame];
  [(NTKCircularComplicationView *)self _layoutConstants];
  [(NTKCircularComplicationView *)self _layoutConstants];
  [(CLKUIColoringLabel *)self->_secondLineLabel _lastLineBaseline];
  v12 = [(NTKCircularComplicationView *)self device];
  CLKRectCenteredXInRectForDevice();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(CLKUIColoringLabel *)self->_secondLineLabel setFrame:v14, v16, v18, v20];
}

- (void)_updateForTemplateChange
{
  v7 = [(NTKCircularComplicationView *)self complicationTemplate];
  firstLineLabel = self->_firstLineLabel;
  v4 = [v7 line1TextProvider];
  [(CLKUIColoringLabel *)firstLineLabel setTextProvider:v4];

  secondLineLabel = self->_secondLineLabel;
  v6 = [v7 line2TextProvider];
  [(CLKUIColoringLabel *)secondLineLabel setTextProvider:v6];

  if ([(NTKCircularComplicationView *)self usesMediumLayout])
  {
    [(NTKCircularSmallStackTextComplicationView *)self _updateLabelsForFontChange];
  }

  [(NTKCircularSmallStackTextComplicationView *)self _updateLabelColors];
  [(NTKCircularSmallStackTextComplicationView *)self setNeedsLayout];
}

- (void)_updateLabelColors
{
  [(NTKCircularComplicationView *)self _updateLabelViewColor:self->_firstLineLabel];
  secondLineLabel = self->_secondLineLabel;

  [(NTKCircularComplicationView *)self _updateLabelViewColor:secondLineLabel];
}

- (void)setForegroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKCircularSmallStackTextComplicationView;
  [(NTKCircularComplicationView *)&v4 setForegroundColor:a3];
  [(NTKCircularSmallStackTextComplicationView *)self _updateLabelColors];
}

- (void)setUsesMultiColor:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NTKCircularSmallStackTextComplicationView;
  [(NTKCircularComplicationView *)&v4 setUsesMultiColor:a3];
  [(NTKCircularSmallStackTextComplicationView *)self _updateLabelColors];
}

- (void)_updateLabelsForFontChange
{
  if ([(NTKCircularComplicationView *)self usesMediumLayout])
  {
    v3 = [(CLKUIColoringLabel *)self->_firstLineLabel text];
    v4 = [(NTKCircularComplicationView *)self _mediumStackFontForText:v3];

    v5 = [(CLKUIColoringLabel *)self->_secondLineLabel text];
    v6 = [(NTKCircularComplicationView *)self _mediumStackFontForText:v5];
  }

  else
  {
    v6 = [(NTKCircularComplicationView *)self _fontForDynamicFontSize:1];
    v4 = v6;
  }

  [(CLKUIColoringLabel *)self->_firstLineLabel setFont:v4];
  [(CLKUIColoringLabel *)self->_secondLineLabel setFont:v6];
  [(NTKCircularComplicationView *)self _layoutConstants];
  [(CLKUIColoringLabel *)self->_firstLineLabel setMaxWidth:v7];
  [(CLKUIColoringLabel *)self->_secondLineLabel setMaxWidth:v7];
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_secondLineLabel);
}

@end