@interface NTKRichComplicationRectangularStandardBodyView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationRectangularStandardBodyView)init;
- (void)_editingDidEnd;
- (void)_enumerateLabelsWithBlock:(id)a3;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationRectangularStandardBodyView

- (NTKRichComplicationRectangularStandardBodyView)init
{
  v17.receiver = self;
  v17.super_class = NTKRichComplicationRectangularStandardBodyView;
  v2 = [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(CDRichComplicationView *)v2 device];
    ___LayoutConstants_block_invoke_12(v4, v4);
    v6 = v5;
    v8 = v7;

    v9 = *MEMORY[0x277D74418];
    v10 = [(NTKRichComplicationRectangularBaseView *)v3 _createAndAddColoringLabelWithFontSize:1 weight:v6 usesTextProviderTintColoring:*MEMORY[0x277D74418]];
    line1Label = v3->_line1Label;
    v3->_line1Label = v10;

    v12 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v3->_line1Label setTextColor:v12];

    v13 = [(NTKRichComplicationRectangularBaseView *)v3 _createAndAddColoringLabelWithFontSize:1 weight:v8 usesTextProviderTintColoring:v9];
    line2Label = v3->_line2Label;
    v3->_line2Label = v13;

    v15 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
    [(CLKUIColoringLabel *)v3->_line2Label setTextColor:v15];
  }

  return v3;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = NTKRichComplicationRectangularStandardBodyView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v20 layoutSubviews];
  v3 = [(CDRichComplicationView *)self device];
  v4 = ___LayoutConstants_block_invoke_12(v3, v3);

  [(NTKRichComplicationRectangularStandardBodyView *)self bounds];
  v6 = v5;
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v8 = v7;
  v9 = v6 + v7 * -2.0;
  [(CLKUIColoringLabel *)self->_line1Label setMaxWidth:v9];
  [(CLKUIColoringLabel *)self->_line1Label sizeThatFits:v9, 0.0];
  v11 = v10;
  v12 = [(CLKUIColoringLabel *)self->_line1Label font];
  [v12 ascender];
  v14 = -(v13 - v4 * 2.0);

  if ([(CLKUIColoringLabel *)self->_line2Label isHidden])
  {
    v21.origin.x = v8;
    v21.origin.y = v14;
    v21.size.width = v9;
    v21.size.height = v11;
    CGRectGetHeight(v21);
    v15 = [(CLKUIColoringLabel *)self->_line1Label font];
    [v15 lineHeight];
  }

  v16 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_line1Label setFrame:?];

  v17 = [(CLKUIColoringLabel *)self->_line2Label font];
  [v17 ascender];

  v18 = [(CLKUIColoringLabel *)self->_line2Label font];
  [v18 lineHeight];

  v19 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_line2Label setFrame:?];

  [(CLKUIColoringLabel *)self->_line2Label setMaxWidth:v9];
}

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

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v14 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v14 headerLabelData];
    v7 = 0;
  }

  else
  {
    v7 = [v14 headerImageProvider];
    v6 = 0;
  }

  v8 = [v14 headerTextProvider];
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)self _updateTemplateHeaderWithTextProvider:v8 imageProvider:v7 viewData:v6 reason:a4];

  v9 = [v14 body1TextProvider];
  [(CLKUIColoringLabel *)self->_line1Label setTextProvider:v9];

  v10 = [v14 body2TextProvider];

  line1Label = self->_line1Label;
  if (v10)
  {
    [(CLKUIColoringLabel *)line1Label setNumberOfLines:1];
    v12 = [v14 body2TextProvider];
    p_line2Label = &self->_line2Label;
    [(CLKUIColoringLabel *)self->_line2Label setTextProvider:v12];
  }

  else
  {
    [(CLKUIColoringLabel *)line1Label setNumberOfLines:2];
    p_line2Label = &self->_line2Label;
    [(CLKUIColoringLabel *)self->_line2Label setTextProvider:0];
  }

  [(CLKUIColoringLabel *)*p_line2Label setHidden:v10 == 0];
  [(NTKRichComplicationRectangularStandardBodyView *)self setNeedsLayout];
}

- (void)_enumerateLabelsWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularStandardBodyView;
  v4 = a3;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 _enumerateLabelsWithBlock:v4];
  v4[2](v4, self->_line1Label);
  v4[2](v4, self->_line2Label);
}

- (void)_editingDidEnd
{
  [(CLKUIColoringLabel *)self->_line1Label editingDidEnd];
  line2Label = self->_line2Label;

  [(CLKUIColoringLabel *)line2Label editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularStandardBodyView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 transitionToMonochromeWithFraction:?];
  [(CLKUIColoringLabel *)self->_line1Label transitionToMonochromeWithFraction:0 style:a3];
  [(CLKUIColoringLabel *)self->_line2Label transitionToMonochromeWithFraction:0 style:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationRectangularStandardBodyView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v3 updateMonochromeColor];
  [(CLKUIColoringLabel *)self->_line1Label updateMonochromeColorWithStyle:0];
  [(CLKUIColoringLabel *)self->_line2Label updateMonochromeColorWithStyle:0];
}

@end