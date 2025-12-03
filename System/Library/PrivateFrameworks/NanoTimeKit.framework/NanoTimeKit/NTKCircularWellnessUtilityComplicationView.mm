@interface NTKCircularWellnessUtilityComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKCircularWellnessUtilityComplicationView)initWithFrame:(CGRect)frame;
- (id)_ringColor;
- (void)_applyForegroundAlpha;
- (void)_layoutContentView;
- (void)_setLayoutEmptyRings;
- (void)_updateForTemplateChange;
- (void)_updateRingColors;
- (void)applyFaceColorPalette:(id)palette units:(unint64_t)units;
- (void)setForegroundColor:(id)color;
@end

@implementation NTKCircularWellnessUtilityComplicationView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [templateCopy isCompatibleWithFamily:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NTKCircularWellnessUtilityComplicationView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = NTKCircularWellnessUtilityComplicationView;
  v3 = [(NTKUtilityCircularComplicationView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    device = [(NTKUtilityComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_70(device, v16);
    v6 = v17;

    v7 = +[NTKRingsAndDotsView emptyFillFractions];
    v8 = [v7 mutableCopy];
    ringsFillFractions = v4->_ringsFillFractions;
    v4->_ringsFillFractions = v8;

    v10 = [NTKRingsAndDotsView alloc];
    v11 = [(NTKRingsAndDotsView *)v10 initWithFrame:*MEMORY[0x277CBF3A0] diameter:*(MEMORY[0x277CBF3A0] + 8) ringWidth:*(MEMORY[0x277CBF3A0] + 16) ringGapWidth:*(MEMORY[0x277CBF3A0] + 24) overlapStrokeWidth:v6, 2.0, 1.0, 0.75];
    ringsView = v4->_ringsView;
    v4->_ringsView = v11;

    [(NTKRingsAndDotsView *)v4->_ringsView setRingsFillFractions:v4->_ringsFillFractions];
    [(NTKCircularWellnessUtilityComplicationView *)v4 _updateRingColors];
    contentView = [(NTKUtilityCircularComplicationView *)v4 contentView];
    [contentView addSubview:v4->_ringsView];
  }

  return v4;
}

- (void)applyFaceColorPalette:(id)palette units:(unint64_t)units
{
  v5.receiver = self;
  v5.super_class = NTKCircularWellnessUtilityComplicationView;
  [(NTKUtilityComplicationView *)&v5 applyFaceColorPalette:palette units:units];
  [(NTKCircularWellnessUtilityComplicationView *)self _updateRingColors];
}

- (void)setForegroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = NTKCircularWellnessUtilityComplicationView;
  [(NTKUtilityComplicationView *)&v4 setForegroundColor:color];
  [(NTKCircularWellnessUtilityComplicationView *)self _updateRingColors];
}

- (void)_updateRingColors
{
  v11[3] = *MEMORY[0x277D85DE8];
  colorScheme = [(NTKUtilityComplicationView *)self colorScheme];
  containsOverrideFaceColor = [colorScheme containsOverrideFaceColor];

  ringsView = self->_ringsView;
  if (containsOverrideFaceColor)
  {
    v6 = NTKMoveNonGradientTextColor();
    v11[0] = v6;
    v7 = NTKExerciseNonGradientTextColor();
    v11[1] = v7;
    v8 = NTKStandNonGradientTextColor();
    v11[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
    [(NTKRingsAndDotsView *)ringsView setRingColors:v9];
  }

  else
  {
    _ringColor = [(NTKCircularWellnessUtilityComplicationView *)self _ringColor];
    [(NTKRingsAndDotsView *)ringsView setForegroundColor:?];
  }
}

- (void)_layoutContentView
{
  contentView = [(NTKUtilityCircularComplicationView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  ringsView = self->_ringsView;
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  v13 = CGRectGetHeight(v16) * 0.5;
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  v14 = CGRectGetWidth(v17) * 0.5;

  [(NTKRingsAndDotsView *)ringsView setCenter:v13, v14];
}

- (void)_applyForegroundAlpha
{
  v3.receiver = self;
  v3.super_class = NTKCircularWellnessUtilityComplicationView;
  [(NTKUtilityComplicationView *)&v3 _applyForegroundAlpha];
  [(NTKCircularWellnessUtilityComplicationView *)self _updateRingColors];
}

- (id)_ringColor
{
  _computedForegroundColor = [(NTKUtilityComplicationView *)self _computedForegroundColor];
  [(NTKUtilityComplicationView *)self foregroundAlpha];
  v4 = [_computedForegroundColor colorWithAlphaComponent:?];

  return v4;
}

- (void)_updateForTemplateChange
{
  v20.receiver = self;
  v20.super_class = NTKCircularWellnessUtilityComplicationView;
  [(NTKUtilityComplicationView *)&v20 _updateForTemplateChange];
  complicationTemplate = [(NTKUtilityComplicationView *)self complicationTemplate];
  if (![complicationTemplate dotsAreHidden])
  {
    v4 = MEMORY[0x277CCABB0];
    [complicationTemplate movePercentComplete];
    if (v5 < 0.00000011920929)
    {
      v5 = 0.00000011920929;
    }

    v6 = [v4 numberWithDouble:v5];
    v7 = [(NSMutableArray *)self->_ringsFillFractions objectAtIndexedSubscript:0];
    v8 = [v6 isEqualToNumber:v7];

    if ((v8 & 1) == 0)
    {
      [(NSMutableArray *)self->_ringsFillFractions replaceObjectAtIndex:0 withObject:v6];
    }

    v9 = MEMORY[0x277CCABB0];
    [complicationTemplate exercisePercentComplete];
    if (v10 < 0.00000011920929)
    {
      v10 = 0.00000011920929;
    }

    v11 = [v9 numberWithDouble:v10];
    v12 = [(NSMutableArray *)self->_ringsFillFractions objectAtIndexedSubscript:1];
    v13 = [v11 isEqualToNumber:v12];

    if (v13)
    {
      v14 = v8 ^ 1;
    }

    else
    {
      v14 = 1;
      [(NSMutableArray *)self->_ringsFillFractions replaceObjectAtIndex:1 withObject:v11];
    }

    v15 = MEMORY[0x277CCABB0];
    [complicationTemplate standPercentComplete];
    if (v16 < 0.00000011920929)
    {
      v16 = 0.00000011920929;
    }

    v17 = [v15 numberWithDouble:v16];
    v18 = [(NSMutableArray *)self->_ringsFillFractions objectAtIndexedSubscript:2];
    v19 = [v17 isEqualToNumber:v18];

    if (v19)
    {
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      [(NSMutableArray *)self->_ringsFillFractions replaceObjectAtIndex:2 withObject:v17];
    }

    [(NTKRingsAndDotsView *)self->_ringsView setRingsFillFractions:self->_ringsFillFractions];
LABEL_19:

    goto LABEL_20;
  }

  [(NTKCircularWellnessUtilityComplicationView *)self _setLayoutEmptyRings];
LABEL_20:
}

- (void)_setLayoutEmptyRings
{
  v3 = +[NTKRingsAndDotsView emptyFillFractions];
  v4 = [v3 mutableCopy];
  ringsFillFractions = self->_ringsFillFractions;
  self->_ringsFillFractions = v4;

  ringsView = self->_ringsView;
  v7 = self->_ringsFillFractions;

  [(NTKRingsAndDotsView *)ringsView setRingsFillFractions:v7];
}

@end