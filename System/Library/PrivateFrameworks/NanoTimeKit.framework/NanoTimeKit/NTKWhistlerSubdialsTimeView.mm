@interface NTKWhistlerSubdialsTimeView
- (CGSize)_hourTickSize;
- (CGSize)_minuteTickSize;
- (NSArray)fontScaleFactorForNumberSystemOverrides;
- (NTKWhistlerAnalogColorPalette)palette;
- (NTKWhistlerSubdialsTimeView)initWithFrame:(CGRect)frame style:(unint64_t)style andDevice:(id)device;
- (double)_minuteTickInset;
- (id)_digitalLabelFont;
- (id)_digitalTimeLabelColorForColorPalette:(id)palette;
- (id)_hourMinuteHandStrokeColorForColorPalette:(id)palette;
- (id)_secondHandColorForColorPalette:(id)palette;
- (unint64_t)_hourTickCount;
- (unint64_t)_minuteTickCount;
- (void)setForcedNumberSystemForDigitalTimeLabel:(unint64_t)label;
@end

@implementation NTKWhistlerSubdialsTimeView

- (NTKWhistlerSubdialsTimeView)initWithFrame:(CGRect)frame style:(unint64_t)style andDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NTKWhistlerSubdialsTimeView;
  return [(NTKDualTimeView *)&v6 initWithFrame:style style:device andDevice:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (NTKWhistlerAnalogColorPalette)palette
{
  palette = self->_palette;
  if (!palette)
  {
    v4 = [NTKWhistlerAnalogColorPalette alloc];
    device = [(NTKDualTimeView *)self device];
    v6 = [(NTKWhistlerAnalogColorPalette *)v4 initWithDevice:device];
    v7 = self->_palette;
    self->_palette = v6;

    palette = self->_palette;
  }

  return palette;
}

- (double)_minuteTickInset
{
  device = [(NTKDualTimeView *)self device];
  ___LayoutConstants_block_invoke_31(device, v5);
  v3 = v5[0];

  return v3;
}

- (CGSize)_hourTickSize
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  device = [(NTKDualTimeView *)self device];
  ___LayoutConstants_block_invoke_31(device, &v5);

  v3 = *(&v5 + 1);
  v4 = *&v6;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_minuteTickSize
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v2 = [(NTKDualTimeView *)self device:0];
  ___LayoutConstants_block_invoke_31(v2, &v5);

  v3 = *(&v6 + 1);
  v4 = *&v7;
  result.height = v4;
  result.width = v3;
  return result;
}

- (unint64_t)_hourTickCount
{
  device = [(NTKDualTimeView *)self device];
  ___LayoutConstants_block_invoke_31(device, v5);
  v3 = v6;

  return v3;
}

- (unint64_t)_minuteTickCount
{
  device = [(NTKDualTimeView *)self device];
  ___LayoutConstants_block_invoke_31(device, v5);
  v3 = v6;

  return v3;
}

- (id)_hourMinuteHandStrokeColorForColorPalette:(id)palette
{
  colorPalette = [(NTKDualTimeView *)self colorPalette];
  isWhiteColor = [colorPalette isWhiteColor];

  if (isWhiteColor)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v5 = ;

  return v5;
}

- (id)_secondHandColorForColorPalette:(id)palette
{
  colorPalette = [(NTKDualTimeView *)self colorPalette];
  if ([colorPalette isMulticolor])
  {
    goto LABEL_4;
  }

  colorPalette2 = [(NTKDualTimeView *)self colorPalette];
  if ([colorPalette2 isWhiteColor])
  {

LABEL_4:
LABEL_5:
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    goto LABEL_6;
  }

  colorPalette3 = [(NTKDualTimeView *)self colorPalette];
  isBlackColor = [colorPalette3 isBlackColor];

  if (isBlackColor)
  {
    goto LABEL_5;
  }

  colorPalette4 = [(NTKDualTimeView *)self colorPalette];
  systemRedColor = [colorPalette4 primaryColor];

LABEL_6:

  return systemRedColor;
}

- (id)_digitalTimeLabelColorForColorPalette:(id)palette
{
  paletteCopy = palette;
  palette = [(NTKWhistlerSubdialsTimeView *)self palette];
  v6 = [palette hourTicksColorForColorPalette:paletteCopy];

  return v6;
}

- (id)_digitalLabelFont
{
  device = [(NTKDualTimeView *)self device];
  v4 = NTKShowIndicScriptNumerals(device);

  if (v4)
  {
    [(NTKDualTimeView *)self _digitalTimeLabelFontSize];
    v6 = v5;
    if (self->_numberSystem != -1)
    {
      fontScaleFactorForNumberSystemOverrides = [(NTKWhistlerSubdialsTimeView *)self fontScaleFactorForNumberSystemOverrides];
      v8 = [fontScaleFactorForNumberSystemOverrides objectAtIndexedSubscript:self->_numberSystem];
      [v8 doubleValue];

      device2 = [(NTKDualTimeView *)self device];
      CLKRoundForDevice();
      v6 = v10;
    }

    v11 = [NTKSFCompactFont numericFontOfSize:v6 weight:*MEMORY[0x277D74418]];
    cLKFontWithAlternativePunctuation = [v11 CLKFontWithAlternativePunctuation];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = NTKWhistlerSubdialsTimeView;
    cLKFontWithAlternativePunctuation = [(NTKDualTimeView *)&v14 _digitalLabelFont];
  }

  return cLKFontWithAlternativePunctuation;
}

- (void)setForcedNumberSystemForDigitalTimeLabel:(unint64_t)label
{
  v5.receiver = self;
  v5.super_class = NTKWhistlerSubdialsTimeView;
  [(NTKDualTimeView *)&v5 setForcedNumberSystemForDigitalTimeLabel:?];
  self->_numberSystem = label;
  [(NTKDualTimeView *)self _refreshDigitalTimeLabel];
}

- (NSArray)fontScaleFactorForNumberSystemOverrides
{
  fontScaleFactorForNumberSystemOverrides = self->_fontScaleFactorForNumberSystemOverrides;
  if (!fontScaleFactorForNumberSystemOverrides)
  {
    self->_fontScaleFactorForNumberSystemOverrides = &unk_28418AFC0;

    fontScaleFactorForNumberSystemOverrides = self->_fontScaleFactorForNumberSystemOverrides;
  }

  return fontScaleFactorForNumberSystemOverrides;
}

@end