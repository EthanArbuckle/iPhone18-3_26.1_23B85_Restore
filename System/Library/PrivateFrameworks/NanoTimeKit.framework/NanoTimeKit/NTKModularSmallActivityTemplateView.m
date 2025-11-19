@interface NTKModularSmallActivityTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKModularSmallActivityTemplateView)initWithFrame:(CGRect)a3;
- (void)_configureContentSubviews;
- (void)_layoutContentView;
- (void)_setLayoutEmptyRings;
- (void)_update;
- (void)applyColorScheme:(id)a3;
- (void)setForegroundColor:(id)a3;
- (void)setIsXL:(BOOL)a3;
@end

@implementation NTKModularSmallActivityTemplateView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v3 isCompatibleWithFamily:0])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isCompatibleWithFamily:7];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NTKModularSmallActivityTemplateView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NTKModularSmallActivityTemplateView;
  v3 = [(NTKModuleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKModularSmallActivityTemplateView *)v3 _configureContentSubviews];
  }

  return v4;
}

- (void)setForegroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKModularSmallActivityTemplateView;
  v4 = a3;
  [(NTKModuleView *)&v5 setForegroundColor:v4];
  [(NTKRingsAndDotsView *)self->_ringsView setForegroundColor:v4, v5.receiver, v5.super_class];
}

- (void)_configureContentSubviews
{
  v3 = [(NTKModuleView *)self device];
  v4 = [(NTKComplicationModuleView *)self isXL];
  if (v4)
  {
    v5 = ___LayoutConstantsExtraLarge_block_invoke_0(v4, v3);
  }

  else
  {
    v5 = ___LayoutConstantsSmall_block_invoke(v4, v3);
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
  v20 = [(NTKModuleView *)self contentView];
  [v20 addSubview:self->_ringsView];
}

- (void)setIsXL:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NTKModularSmallActivityTemplateView;
  [(NTKComplicationModuleView *)&v4 setIsXL:a3];
  [(NTKModularSmallActivityTemplateView *)self _configureContentSubviews];
  [(NTKModularSmallActivityTemplateView *)self _layoutContentView];
  [(NTKModuleView *)self _updateColors];
}

- (void)_layoutContentView
{
  ringsView = self->_ringsView;
  v3 = [(NTKModuleView *)self contentView];
  MEMORY[0x2318D8E70]([v3 bounds]);
  [(NTKRingsAndDotsView *)ringsView setCenter:?];
}

- (void)_update
{
  v20.receiver = self;
  v20.super_class = NTKModularSmallActivityTemplateView;
  [(NTKModularTemplateView *)&v20 _update];
  v3 = [(NTKModularTemplateView *)self complicationTemplate];
  if (![v3 dotsAreHidden])
  {
    v4 = MEMORY[0x277CCABB0];
    [v3 movePercentComplete];
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
    [v3 exercisePercentComplete];
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
    [v3 standPercentComplete];
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

- (void)applyColorScheme:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = NTKModularSmallActivityTemplateView;
  v4 = a3;
  [(NTKModuleView *)&v11 applyColorScheme:v4];
  v5 = [v4 containsOverrideFaceColor];

  if (v5)
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