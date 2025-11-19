@interface NTKRichComplicationRectangularLargeTextView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKRichComplicationRectangularLargeTextView)init;
- (void)_enumerateLabelsWithBlock:(id)a3;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationRectangularLargeTextView

- (NTKRichComplicationRectangularLargeTextView)init
{
  v12.receiver = self;
  v12.super_class = NTKRichComplicationRectangularLargeTextView;
  v2 = [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v11 = 0;
    v10 = 0u;
    v4 = [(CDRichComplicationView *)v2 device:0];
    ___LayoutConstants_block_invoke_74(v4, &v9);

    v5 = [(NTKRichComplicationRectangularBaseView *)v3 _createAndAddColoringLabelWithFontSize:0 weight:v10 usesTextProviderTintColoring:?];
    line1Label = v3->_line1Label;
    v3->_line1Label = v5;

    v7 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v3->_line1Label setTextColor:v7];
  }

  return v3;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKRichComplicationRectangularLargeTextView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v14 layoutSubviews];
  v13 = 0.0;
  memset(v12, 0, sizeof(v12));
  v3 = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_74(v3, v12);

  [(NTKRichComplicationRectangularLargeTextView *)self bounds];
  v5 = v4;
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v7 = v5 + v6 * -2.0;
  [(CLKUIColoringLabel *)self->_line1Label sizeToFit];
  [(CLKUIColoringLabel *)self->_line1Label frame];
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v8 = v13;
  v9 = [(CLKUIColoringLabel *)self->_line1Label font];
  [v9 ascender];

  v10 = [(CLKUIColoringLabel *)self->_line1Label font];
  [v10 lineHeight];

  v11 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_line1Label setFrame:?];

  [(CLKUIColoringLabel *)self->_line1Label setMaxWidth:v7 + v8 * -2.0];
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 headerTextProvider];
  v8 = [v6 headerImageProvider];
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)self _updateTemplateHeaderWithTextProvider:v7 imageProvider:v8 viewData:0 reason:a4];

  v9 = [v6 bodyTextProvider];

  [(CLKUIColoringLabel *)self->_line1Label setTextProvider:v9];
}

- (void)_enumerateLabelsWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularLargeTextView;
  v4 = a3;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 _enumerateLabelsWithBlock:v4];
  v4[2](v4, self->_line1Label);
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularLargeTextView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 transitionToMonochromeWithFraction:?];
  [(CLKUIColoringLabel *)self->_line1Label transitionToMonochromeWithFraction:0 style:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationRectangularLargeTextView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v3 updateMonochromeColor];
  [(CLKUIColoringLabel *)self->_line1Label updateMonochromeColorWithStyle:0];
}

@end