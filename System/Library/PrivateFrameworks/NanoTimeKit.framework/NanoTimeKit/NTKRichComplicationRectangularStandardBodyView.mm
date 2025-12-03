@interface NTKRichComplicationRectangularStandardBodyView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationRectangularStandardBodyView)init;
- (void)_editingDidEnd;
- (void)_enumerateLabelsWithBlock:(id)block;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
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
    device = [(CDRichComplicationView *)v2 device];
    ___LayoutConstants_block_invoke_12(device, device);
    v6 = v5;
    v8 = v7;

    v9 = *MEMORY[0x277D74418];
    v10 = [(NTKRichComplicationRectangularBaseView *)v3 _createAndAddColoringLabelWithFontSize:1 weight:v6 usesTextProviderTintColoring:*MEMORY[0x277D74418]];
    line1Label = v3->_line1Label;
    v3->_line1Label = v10;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v3->_line1Label setTextColor:whiteColor];

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
  device = [(CDRichComplicationView *)self device];
  v4 = ___LayoutConstants_block_invoke_12(device, device);

  [(NTKRichComplicationRectangularStandardBodyView *)self bounds];
  v6 = v5;
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v8 = v7;
  v9 = v6 + v7 * -2.0;
  [(CLKUIColoringLabel *)self->_line1Label setMaxWidth:v9];
  [(CLKUIColoringLabel *)self->_line1Label sizeThatFits:v9, 0.0];
  v11 = v10;
  font = [(CLKUIColoringLabel *)self->_line1Label font];
  [font ascender];
  v14 = -(v13 - v4 * 2.0);

  if ([(CLKUIColoringLabel *)self->_line2Label isHidden])
  {
    v21.origin.x = v8;
    v21.origin.y = v14;
    v21.size.width = v9;
    v21.size.height = v11;
    CGRectGetHeight(v21);
    font2 = [(CLKUIColoringLabel *)self->_line1Label font];
    [font2 lineHeight];
  }

  device2 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_line1Label setFrame:?];

  font3 = [(CLKUIColoringLabel *)self->_line2Label font];
  [font3 ascender];

  font4 = [(CLKUIColoringLabel *)self->_line2Label font];
  [font4 lineHeight];

  device3 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_line2Label setFrame:?];

  [(CLKUIColoringLabel *)self->_line2Label setMaxWidth:v9];
}

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

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    headerLabelData = [templateCopy headerLabelData];
    headerImageProvider = 0;
  }

  else
  {
    headerImageProvider = [templateCopy headerImageProvider];
    headerLabelData = 0;
  }

  headerTextProvider = [templateCopy headerTextProvider];
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)self _updateTemplateHeaderWithTextProvider:headerTextProvider imageProvider:headerImageProvider viewData:headerLabelData reason:reason];

  body1TextProvider = [templateCopy body1TextProvider];
  [(CLKUIColoringLabel *)self->_line1Label setTextProvider:body1TextProvider];

  body2TextProvider = [templateCopy body2TextProvider];

  line1Label = self->_line1Label;
  if (body2TextProvider)
  {
    [(CLKUIColoringLabel *)line1Label setNumberOfLines:1];
    body2TextProvider2 = [templateCopy body2TextProvider];
    p_line2Label = &self->_line2Label;
    [(CLKUIColoringLabel *)self->_line2Label setTextProvider:body2TextProvider2];
  }

  else
  {
    [(CLKUIColoringLabel *)line1Label setNumberOfLines:2];
    p_line2Label = &self->_line2Label;
    [(CLKUIColoringLabel *)self->_line2Label setTextProvider:0];
  }

  [(CLKUIColoringLabel *)*p_line2Label setHidden:body2TextProvider == 0];
  [(NTKRichComplicationRectangularStandardBodyView *)self setNeedsLayout];
}

- (void)_enumerateLabelsWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularStandardBodyView;
  blockCopy = block;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 _enumerateLabelsWithBlock:blockCopy];
  blockCopy[2](blockCopy, self->_line1Label);
  blockCopy[2](blockCopy, self->_line2Label);
}

- (void)_editingDidEnd
{
  [(CLKUIColoringLabel *)self->_line1Label editingDidEnd];
  line2Label = self->_line2Label;

  [(CLKUIColoringLabel *)line2Label editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularStandardBodyView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 transitionToMonochromeWithFraction:?];
  [(CLKUIColoringLabel *)self->_line1Label transitionToMonochromeWithFraction:0 style:fraction];
  [(CLKUIColoringLabel *)self->_line2Label transitionToMonochromeWithFraction:0 style:fraction];
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