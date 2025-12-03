@interface NTKModularSmallActivityTemplateView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKModularSmallActivityTemplateView)initWithFrame:(CGRect)frame;
- (void)_configureContentSubviews;
- (void)_layoutContentView;
- (void)_setLayoutEmptyRings;
- (void)_update;
- (void)applyColorScheme:(id)scheme;
- (void)setForegroundColor:(id)color;
- (void)setIsXL:(BOOL)l;
@end

@implementation NTKModularSmallActivityTemplateView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([templateCopy isCompatibleWithFamily:0])
    {
      v4 = 1;
    }

    else
    {
      v4 = [templateCopy isCompatibleWithFamily:7];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NTKModularSmallActivityTemplateView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NTKModularSmallActivityTemplateView;
  v3 = [(NTKModuleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKModularSmallActivityTemplateView *)v3 _configureContentSubviews];
  }

  return v4;
}

- (void)setForegroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = NTKModularSmallActivityTemplateView;
  colorCopy = color;
  [(NTKModuleView *)&v5 setForegroundColor:colorCopy];
  [(NTKRingsAndDotsView *)self->_ringsView setForegroundColor:colorCopy, v5.receiver, v5.super_class];
}

- (void)_configureContentSubviews
{
  device = [(NTKModuleView *)self device];
  isXL = [(NTKComplicationModuleView *)self isXL];
  if (isXL)
  {
    v5 = ___LayoutConstantsExtraLarge_block_invoke_0(isXL, device);
  }

  else
  {
    v5 = ___LayoutConstantsSmall_block_invoke(isXL, device);
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  ringsView = self->_ringsView;
  if (ringsView)
  {
    [(NTKRingsAndDotsView *)ringsView removeFromSuperview];
  }

  v14 = +[NTKRingsAndDotsView emptyFillFractions];
  v15 = [v14 mutableCopy];
  ringsFillFractions = self->_ringsFillFractions;
  self->_ringsFillFractions = v15;

  v17 = [NTKRingsAndDotsView alloc];
  v18 = [(NTKRingsAndDotsView *)v17 initWithFrame:*MEMORY[0x277CBF3A0] diameter:*(MEMORY[0x277CBF3A0] + 8) ringWidth:*(MEMORY[0x277CBF3A0] + 16) ringGapWidth:*(MEMORY[0x277CBF3A0] + 24) overlapStrokeWidth:v11, v9, v10, v12];
  v19 = self->_ringsView;
  self->_ringsView = v18;

  [(NTKRingsAndDotsView *)self->_ringsView setRingsFillFractions:self->_ringsFillFractions];
  contentView = [(NTKModuleView *)self contentView];
  [contentView addSubview:self->_ringsView];
}

- (void)setIsXL:(BOOL)l
{
  v4.receiver = self;
  v4.super_class = NTKModularSmallActivityTemplateView;
  [(NTKComplicationModuleView *)&v4 setIsXL:l];
  [(NTKModularSmallActivityTemplateView *)self _configureContentSubviews];
  [(NTKModularSmallActivityTemplateView *)self _layoutContentView];
  [(NTKModuleView *)self _updateColors];
}

- (void)_layoutContentView
{
  ringsView = self->_ringsView;
  contentView = [(NTKModuleView *)self contentView];
  MEMORY[0x2318D8E70]([contentView bounds]);
  [(NTKRingsAndDotsView *)ringsView setCenter:?];
}

- (void)_update
{
  v20.receiver = self;
  v20.super_class = NTKModularSmallActivityTemplateView;
  [(NTKModularTemplateView *)&v20 _update];
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
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

  [(NTKModularSmallActivityTemplateView *)self _setLayoutEmptyRings];
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

- (void)applyColorScheme:(id)scheme
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = NTKModularSmallActivityTemplateView;
  schemeCopy = scheme;
  [(NTKModuleView *)&v11 applyColorScheme:schemeCopy];
  containsOverrideFaceColor = [schemeCopy containsOverrideFaceColor];

  if (containsOverrideFaceColor)
  {
    ringsView = self->_ringsView;
    v7 = NTKMoveNonGradientTextColor();
    v12[0] = v7;
    v8 = NTKExerciseNonGradientTextColor();
    v12[1] = v8;
    v9 = NTKStandNonGradientTextColor();
    v12[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    [(NTKRingsAndDotsView *)ringsView setRingColors:v10];
  }
}

@end