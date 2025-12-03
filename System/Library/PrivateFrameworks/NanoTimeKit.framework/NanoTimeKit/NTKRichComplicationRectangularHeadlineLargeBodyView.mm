@interface NTKRichComplicationRectangularHeadlineLargeBodyView
- (CGSize)_bodySize;
- (NTKRichComplicationRectangularHeadlineLargeBodyView)init;
- (id)body;
- (id)headerTextProviderFromTemplate:(id)template;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation NTKRichComplicationRectangularHeadlineLargeBodyView

- (NTKRichComplicationRectangularHeadlineLargeBodyView)init
{
  v10.receiver = self;
  v10.super_class = NTKRichComplicationRectangularHeadlineLargeBodyView;
  v2 = [(NTKRichComplicationRectangularBaseView *)&v10 init];
  v3 = v2;
  if (v2)
  {
    device = [(CDRichComplicationView *)v2 device];
    v5 = [(NTKRichComplicationRectangularBaseView *)v3 _createAndAddColoringLabelWithFontSize:1 weight:___LayoutConstants_block_invoke_56(device usesTextProviderTintColoring:device), *MEMORY[0x277D74420]];
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v5;

    [(CLKUIColoringLabel *)v3->_headerLabel setNumberOfLines:1];
    body = [(NTKRichComplicationRectangularHeadlineLargeBodyView *)v3 body];
    body = v3->_body;
    v3->_body = body;

    [(NTKRichComplicationRectangularHeadlineLargeBodyView *)v3 addSubview:v3->_body];
  }

  return v3;
}

- (CGSize)_bodySize
{
  device = [(CDRichComplicationView *)self device];
  v4 = __64__NTKRichComplicationRectangularHeadlineLargeBodyView__bodySize__block_invoke(device, device);

  device2 = [(CDRichComplicationView *)self device];
  v6 = NTKWhistlerLargeRectangularComplicationSize();

  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v8 = v6 + v7 * -2.0;
  v9 = v4;
  result.height = v9;
  result.width = v8;
  return result;
}

double __64__NTKRichComplicationRectangularHeadlineLargeBodyView__bodySize__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_67);
  if (_block_invoke___cachedDevice_67)
  {
    v3 = _block_invoke___cachedDevice_67 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke___previousCLKDeviceVersion_67))
  {
    _block_invoke___cachedDevice_67 = v2;
    _block_invoke___previousCLKDeviceVersion_67 = [v2 version];
    CDGraphicLargeRectangularComplicationLargeImageHeight();
  }

  v5 = *&_block_invoke_value_50;
  os_unfair_lock_unlock(&_block_invoke_lock_67);

  return v5;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = NTKRichComplicationRectangularHeadlineLargeBodyView;
  [(NTKRichComplicationRectangularHeadlineLargeBodyView *)&v24 layoutSubviews];
  [(NTKRichComplicationRectangularHeadlineLargeBodyView *)self bounds];
  v4 = v3;
  device = [(CDRichComplicationView *)self device];
  v6 = ___LayoutConstants_block_invoke_56(device, device);
  v8 = v7;
  v10 = v9;
  font = [(CLKUIColoringLabel *)self->_headerLabel font];
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v13 = v4 + v12 * -2.0;
  [font ascender];
  CLKRoundForDevice();
  v15 = v14;
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v17 = v16;
  [font lineHeight];
  CLKRoundForDevice();
  [(CLKUIColoringLabel *)self->_headerLabel setFrame:v17, v8 - v15, v13, v18];
  [(CLKUIColoringLabel *)self->_headerLabel setMaxWidth:v13];
  v19 = v8 + v10;
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v21 = v20;
  [(NTKRichComplicationRectangularHeadlineLargeBodyView *)self _bodySize];
  [(UIView *)self->_body setFrame:v21, v19, v22, v23];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  tintColor = [templateCopy tintColor];

  if (tintColor)
  {
    headerLabel = self->_headerLabel;
    tintColor2 = [templateCopy tintColor];
    [(CLKUIColoringLabel *)headerLabel setColor:tintColor2];
  }

  metadata = [templateCopy metadata];
  v9 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBB6D8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CLKUIColoringLabel setTwoToneStyleInMonochrome:](self->_headerLabel, "setTwoToneStyleInMonochrome:", [v9 integerValue]);
  }

  v10 = [(NTKRichComplicationRectangularHeadlineLargeBodyView *)self headerTextProviderFromTemplate:templateCopy];
  [(CLKUIColoringLabel *)self->_headerLabel setTextProvider:v10];
  v13 = 1;
  if ([templateCopy isLinkedOnOrAfterGrace])
  {
    device = [(CDRichComplicationView *)self device];
    isRunningGraceOrLater = [device isRunningGraceOrLater];

    if (isRunningGraceOrLater)
    {
      v13 = 0;
    }
  }

  [(CLKUIColoringLabel *)self->_headerLabel setUppercase:v13];
}

- (id)body
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)headerTextProviderFromTemplate:(id)template
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end