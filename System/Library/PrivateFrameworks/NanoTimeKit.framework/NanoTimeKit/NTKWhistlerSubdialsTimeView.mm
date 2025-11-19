@interface NTKWhistlerSubdialsTimeView
- (CGSize)_hourTickSize;
- (CGSize)_minuteTickSize;
- (NSArray)fontScaleFactorForNumberSystemOverrides;
- (NTKWhistlerAnalogColorPalette)palette;
- (NTKWhistlerSubdialsTimeView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 andDevice:(id)a5;
- (double)_minuteTickInset;
- (id)_digitalLabelFont;
- (id)_digitalTimeLabelColorForColorPalette:(id)a3;
- (id)_hourMinuteHandStrokeColorForColorPalette:(id)a3;
- (id)_secondHandColorForColorPalette:(id)a3;
- (unint64_t)_hourTickCount;
- (unint64_t)_minuteTickCount;
- (void)setForcedNumberSystemForDigitalTimeLabel:(unint64_t)a3;
@end

@implementation NTKWhistlerSubdialsTimeView

- (NTKWhistlerSubdialsTimeView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 andDevice:(id)a5
{
  v6.receiver = self;
  v6.super_class = NTKWhistlerSubdialsTimeView;
  return [(NTKDualTimeView *)&v6 initWithFrame:a4 style:a5 andDevice:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (NTKWhistlerAnalogColorPalette)palette
{
  palette = self->_palette;
  if (!palette)
  {
    v4 = [NTKWhistlerAnalogColorPalette alloc];
    v5 = [(NTKDualTimeView *)self device];
    v6 = [(NTKWhistlerAnalogColorPalette *)v4 initWithDevice:v5];
    v7 = self->_palette;
    self->_palette = v6;

    palette = self->_palette;
  }

  return palette;
}

- (double)_minuteTickInset
{
  v2 = [(NTKDualTimeView *)self device];
  ___LayoutConstants_block_invoke_31(v2, v5);
  v3 = v5[0];

  return v3;
}

- (CGSize)_hourTickSize
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  v2 = [(NTKDualTimeView *)self device];
  ___LayoutConstants_block_invoke_31(v2, &v5);

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
  v2 = [(NTKDualTimeView *)self device];
  ___LayoutConstants_block_invoke_31(v2, v5);
  v3 = v6;

  return v3;
}

- (unint64_t)_minuteTickCount
{
  v2 = [(NTKDualTimeView *)self device];
  ___LayoutConstants_block_invoke_31(v2, v5);
  v3 = v6;

  return v3;
}

- (id)_hourMinuteHandStrokeColorForColorPalette:(id)a3
{
  v3 = [(NTKDualTimeView *)self colorPalette];
  v4 = [v3 isWhiteColor];

  if (v4)
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

- (id)_secondHandColorForColorPalette:(id)a3
{
  v4 = [(NTKDualTimeView *)self colorPalette];
  if ([v4 isMulticolor])
  {
    goto LABEL_4;
  }

  v5 = [(NTKDualTimeView *)self colorPalette];
  if ([v5 isWhiteColor])
  {

LABEL_4:
LABEL_5:
    v6 = [MEMORY[0x277D75348] systemRedColor];
    goto LABEL_6;
  }

  v8 = [(NTKDualTimeView *)self colorPalette];
  v9 = [v8 isBlackColor];

  if (v9)
  {
    goto LABEL_5;
  }

  v10 = [(NTKDualTimeView *)self colorPalette];
  v6 = [v10 primaryColor];

LABEL_6:

  return v6;
}

- (id)_digitalTimeLabelColorForColorPalette:(id)a3
{
  v4 = a3;
  v5 = [(NTKWhistlerSubdialsTimeView *)self palette];
  v6 = [v5 hourTicksColorForColorPalette:v4];

  return v6;
}

- (id)_digitalLabelFont
{
  v3 = [(NTKDualTimeView *)self device];
  v4 = NTKShowIndicScriptNumerals(v3);

  if (v4)
  {
    [(NTKDualTimeView *)self _digitalTimeLabelFontSize];
    v6 = v5;
    if (self->_numberSystem != -1)
    {
      v7 = [(NTKWhistlerSubdialsTimeView *)self fontScaleFactorForNumberSystemOverrides];
      v8 = [v7 objectAtIndexedSubscript:self->_numberSystem];
      [v8 doubleValue];

      v9 = [(NTKDualTimeView *)self device];
      CLKRoundForDevice();
      v6 = v10;
    }

    v11 = [NTKSFCompactFont numericFontOfSize:v6 weight:*MEMORY[0x277D74418]];
    v12 = [v11 CLKFontWithAlternativePunctuation];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = NTKWhistlerSubdialsTimeView;
    v12 = [(NTKDualTimeView *)&v14 _digitalLabelFont];
  }

  return v12;
}

- (void)setForcedNumberSystemForDigitalTimeLabel:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = NTKWhistlerSubdialsTimeView;
  [(NTKDualTimeView *)&v5 setForcedNumberSystemForDigitalTimeLabel:?];
  self->_numberSystem = a3;
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