@interface NTKDigitalTimeLabel
- (NTKDigitalTimeLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device;
- (id)_labelColorFromFaceColorPalette:(id)palette device:(id)device;
- (id)_newUnderlyingLabel:(BOOL)label;
- (void)applyFaceFromColorPalette:(id)palette toColorPalette:(id)colorPalette fraction:(float)fraction device:(id)device;
- (void)layoutSubviews;
- (void)setForcedNumberSystem:(unint64_t)system;
- (void)setFrameUsingCurrentStyle;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setShadowColor:(id)color;
- (void)setStyle:(id)style;
- (void)setTextColor:(id)color;
- (void)setTimeOffset:(double)offset;
- (void)setUsesLegibility:(BOOL)legibility;
@end

@implementation NTKDigitalTimeLabel

- (NTKDigitalTimeLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = NTKDigitalTimeLabel;
  return [(CLKUITimeLabel *)&v5 initWithTimeLabelOptions:options forDevice:device];
}

- (void)setFrameUsingCurrentStyle
{
  style = [(CLKUITimeLabel *)self style];
  layoutRule = [style layoutRule];
  [(NTKDigitalTimeLabel *)self bounds];
  [layoutRule calculateLayoutFrameForBoundsSize:{v5, v6}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(UIView *)self ntk_setBoundsAndPositionFromFrame:v8, v10, v12, v14];
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  style = [(CLKUITimeLabel *)self style];
  v6.receiver = self;
  v6.super_class = NTKDigitalTimeLabel;
  [(CLKUITimeLabel *)&v6 setStyle:styleCopy];
  [styleCopy isEqual:style];
}

- (id)_newUnderlyingLabel:(BOOL)label
{
  labelCopy = label;
  v5 = [off_27877BEF8 alloc];
  v6 = [v5 initWithFrame:1 options:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  color = [(NTKDigitalTimeLabel *)self color];
  [v6 setColor:color];

  [v6 setShadowBlur:10.0];
  v8 = labelCopy && self->_usesLegibility;
  [v6 setUsesLegibility:v8];
  style = [(CLKUITimeLabel *)self style];
  tracking = [style tracking];

  if (tracking)
  {
    [tracking doubleValue];
    [v6 setTracking:?];
  }

  return v6;
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_shadowColor, color);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__NTKDigitalTimeLabel_setShadowColor___block_invoke;
  v7[3] = &unk_2787847D0;
  v8 = colorCopy;
  v6 = colorCopy;
  [(CLKUITimeLabel *)self _enumerateUnderlyingLabelsWithBlock:v7];
}

- (void)applyFaceFromColorPalette:(id)palette toColorPalette:(id)colorPalette fraction:(float)fraction device:(id)device
{
  deviceCopy = device;
  colorPaletteCopy = colorPalette;
  v13 = [(NTKDigitalTimeLabel *)self _labelColorFromFaceColorPalette:palette device:deviceCopy];
  v11 = [(NTKDigitalTimeLabel *)self _labelColorFromFaceColorPalette:colorPaletteCopy device:deviceCopy];

  v12 = NTKInterpolateBetweenColors();
  [(NTKDigitalTimeLabel *)self setColor:v12];
}

- (id)_labelColorFromFaceColorPalette:(id)palette device:(id)device
{
  paletteCopy = palette;
  if ([paletteCopy isMulticolor])
  {
    [(NTKDigitalTimeLabel *)self overrideColor];
  }

  else
  {
    [paletteCopy primaryColor];
  }
  v6 = ;

  return v6;
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  v8.receiver = self;
  v8.super_class = NTKDigitalTimeLabel;
  [(CLKUITimeLabel *)&v8 setTextColor:colorCopy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__NTKDigitalTimeLabel_setTextColor___block_invoke;
  v6[3] = &unk_2787847D0;
  v7 = colorCopy;
  v5 = colorCopy;
  [(CLKUITimeLabel *)self _enumerateUnderlyingLabelsWithBlock:v6];
}

- (void)setUsesLegibility:(BOOL)legibility
{
  self->_usesLegibility = legibility;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__NTKDigitalTimeLabel_setUsesLegibility___block_invoke;
  v3[3] = &unk_2787847D0;
  v3[4] = self;
  [(CLKUITimeLabel *)self _enumerateUnderlyingLabelsWithBlock:v3];
}

uint64_t __41__NTKDigitalTimeLabel_setUsesLegibility___block_invoke(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v3 = *(*(a1 + 32) + 592);
  }

  else
  {
    v3 = 0;
  }

  return [a2 setUsesLegibility:v3 & 1];
}

- (void)setForcedNumberSystem:(unint64_t)system
{
  v3.receiver = self;
  v3.super_class = NTKDigitalTimeLabel;
  [(CLKUITimeLabel *)&v3 setForcedNumberSystem:system];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  timeFormatter = [(CLKUITimeLabel *)self timeFormatter];
  [timeFormatter setOverrideDate:dateCopy];
}

- (void)setTimeOffset:(double)offset
{
  timeFormatter = [(CLKUITimeLabel *)self timeFormatter];
  [timeFormatter setTimeOffset:offset];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = NTKDigitalTimeLabel;
  [(CLKUITimeLabel *)&v2 layoutSubviews];
}

@end