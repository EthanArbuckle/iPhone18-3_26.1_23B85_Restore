@interface NTKDigitalTimeLabel
- (NTKDigitalTimeLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4;
- (id)_labelColorFromFaceColorPalette:(id)a3 device:(id)a4;
- (id)_newUnderlyingLabel:(BOOL)a3;
- (void)applyFaceFromColorPalette:(id)a3 toColorPalette:(id)a4 fraction:(float)a5 device:(id)a6;
- (void)layoutSubviews;
- (void)setForcedNumberSystem:(unint64_t)a3;
- (void)setFrameUsingCurrentStyle;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setShadowColor:(id)a3;
- (void)setStyle:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTimeOffset:(double)a3;
- (void)setUsesLegibility:(BOOL)a3;
@end

@implementation NTKDigitalTimeLabel

- (NTKDigitalTimeLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4
{
  v5.receiver = self;
  v5.super_class = NTKDigitalTimeLabel;
  return [(CLKUITimeLabel *)&v5 initWithTimeLabelOptions:a3 forDevice:a4];
}

- (void)setFrameUsingCurrentStyle
{
  v3 = [(CLKUITimeLabel *)self style];
  v4 = [v3 layoutRule];
  [(NTKDigitalTimeLabel *)self bounds];
  [v4 calculateLayoutFrameForBoundsSize:{v5, v6}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(UIView *)self ntk_setBoundsAndPositionFromFrame:v8, v10, v12, v14];
}

- (void)setStyle:(id)a3
{
  v4 = a3;
  v5 = [(CLKUITimeLabel *)self style];
  v6.receiver = self;
  v6.super_class = NTKDigitalTimeLabel;
  [(CLKUITimeLabel *)&v6 setStyle:v4];
  [v4 isEqual:v5];
}

- (id)_newUnderlyingLabel:(BOOL)a3
{
  v3 = a3;
  v5 = [off_27877BEF8 alloc];
  v6 = [v5 initWithFrame:1 options:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v7 = [(NTKDigitalTimeLabel *)self color];
  [v6 setColor:v7];

  [v6 setShadowBlur:10.0];
  v8 = v3 && self->_usesLegibility;
  [v6 setUsesLegibility:v8];
  v9 = [(CLKUITimeLabel *)self style];
  v10 = [v9 tracking];

  if (v10)
  {
    [v10 doubleValue];
    [v6 setTracking:?];
  }

  return v6;
}

- (void)setShadowColor:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_shadowColor, a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__NTKDigitalTimeLabel_setShadowColor___block_invoke;
  v7[3] = &unk_2787847D0;
  v8 = v5;
  v6 = v5;
  [(CLKUITimeLabel *)self _enumerateUnderlyingLabelsWithBlock:v7];
}

- (void)applyFaceFromColorPalette:(id)a3 toColorPalette:(id)a4 fraction:(float)a5 device:(id)a6
{
  v9 = a6;
  v10 = a4;
  v13 = [(NTKDigitalTimeLabel *)self _labelColorFromFaceColorPalette:a3 device:v9];
  v11 = [(NTKDigitalTimeLabel *)self _labelColorFromFaceColorPalette:v10 device:v9];

  v12 = NTKInterpolateBetweenColors();
  [(NTKDigitalTimeLabel *)self setColor:v12];
}

- (id)_labelColorFromFaceColorPalette:(id)a3 device:(id)a4
{
  v5 = a3;
  if ([v5 isMulticolor])
  {
    [(NTKDigitalTimeLabel *)self overrideColor];
  }

  else
  {
    [v5 primaryColor];
  }
  v6 = ;

  return v6;
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NTKDigitalTimeLabel;
  [(CLKUITimeLabel *)&v8 setTextColor:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__NTKDigitalTimeLabel_setTextColor___block_invoke;
  v6[3] = &unk_2787847D0;
  v7 = v4;
  v5 = v4;
  [(CLKUITimeLabel *)self _enumerateUnderlyingLabelsWithBlock:v6];
}

- (void)setUsesLegibility:(BOOL)a3
{
  self->_usesLegibility = a3;
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

- (void)setForcedNumberSystem:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = NTKDigitalTimeLabel;
  [(CLKUITimeLabel *)&v3 setForcedNumberSystem:a3];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v5 = a3;
  v6 = [(CLKUITimeLabel *)self timeFormatter];
  [v6 setOverrideDate:v5];
}

- (void)setTimeOffset:(double)a3
{
  v4 = [(CLKUITimeLabel *)self timeFormatter];
  [v4 setTimeOffset:a3];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = NTKDigitalTimeLabel;
  [(CLKUITimeLabel *)&v2 layoutSubviews];
}

@end