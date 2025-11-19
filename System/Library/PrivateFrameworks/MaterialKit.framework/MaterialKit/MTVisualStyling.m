@interface MTVisualStyling
- (MTVisualStyling)initWithCoreMaterialVisualStyling:(id)a3;
- (UIColor)color;
- (id)_layerConfig;
- (id)visualEffect;
- (void)applyToView:(id)a3 withColorBlock:(id)a4;
@end

@implementation MTVisualStyling

- (UIColor)color
{
  v3 = [(MTCoreMaterialVisualStyling *)self->_coreMaterialVisualStyling tintColorName];
  if (![v3 length])
  {
    goto LABEL_7;
  }

  v4 = NSSelectorFromString(v3);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = [MEMORY[0x277D75348] performSelector:v5];
  v7 = [(MTCoreMaterialVisualStyling *)self->_coreMaterialVisualStyling tintColorUIStyle];
  if (v7 >= 1)
  {
    v8 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:v7];
    v9 = [v6 resolvedColorWithTraitCollection:v8];

    v6 = v9;
  }

  if (!v6)
  {
LABEL_7:
    v6 = [MEMORY[0x277D75348] colorWithCGColor:{-[MTCoreMaterialVisualStyling tintColor](self->_coreMaterialVisualStyling, "tintColor")}];
  }

  return v6;
}

- (void)applyToView:(id)a3 withColorBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__MTVisualStyling_VisualStylingSupport__applyToView_withColorBlock___block_invoke;
  v12[3] = &unk_27835D4C8;
  v14 = &v15;
  v8 = v7;
  v12[4] = self;
  v13 = v8;
  v9 = MEMORY[0x223D601D0](v12);
  v10 = [(MTVisualStyling *)self _coreMaterialVisualStyling];
  v11 = [v6 layer];
  [v10 _applyToLayer:v11 withColorBlock:v9];

  if ((v16[3] & 1) == 0)
  {
    v9[2](v9, 0);
  }

  _Block_object_dispose(&v15, 8);
}

void __68__MTVisualStyling_VisualStylingSupport__applyToView_withColorBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) color];
    v5 = v4;
    if (!a2 || v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277D75348] colorWithCGColor:a2];
    }

    v8 = v6;

    v7 = v8;
    if (v8)
    {
      (*(*(a1 + 40) + 16))();
      v7 = v8;
    }
  }
}

- (MTVisualStyling)initWithCoreMaterialVisualStyling:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTVisualStyling;
  v6 = [(MTVisualStyling *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreMaterialVisualStyling, a3);
  }

  return v7;
}

- (id)_layerConfig
{
  v20[1] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = 0;
  [(MTCoreMaterialVisualStyling *)self->_coreMaterialVisualStyling _getCompositingFilter:&v17 tintColor:&v18];
  v3 = v17;
  if (v3 | v18)
  {
    v4 = MEMORY[0x277D763D8];
    v5 = [MEMORY[0x277D75348] colorWithCGColor:?];
    v6 = [v4 layerWithTintColor:v5 filterType:v3];
  }

  else
  {
    v16 = 0;
    v15 = 0;
    coreMaterialVisualStyling = self->_coreMaterialVisualStyling;
    v14 = 0;
    [(MTCoreMaterialVisualStyling *)coreMaterialVisualStyling _getFilterType:&v14 vibrantColor:&v16 tintColor:&v18 inputReversed:&v15];
    v5 = v14;
    v6 = 0;
    if (v5 && v16 && v18)
    {
      v8 = MEMORY[0x277D763E0];
      v9 = [MEMORY[0x277D75348] colorWithCGColor:?];
      v10 = [MEMORY[0x277D75348] colorWithCGColor:v18];
      v19 = @"inputReversed";
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v15];
      v20[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v6 = [v8 layerWithVibrantColor:v9 tintColor:v10 filterType:v5 filterAttributes:v12];
    }
  }

  return v6;
}

- (id)visualEffect
{
  v3 = [(MTCoreMaterialVisualStyling *)self->_coreMaterialVisualStyling _composedFilter];
  v4 = [v3 type];
  v5 = [v4 isEqualToString:*MEMORY[0x277CDA640]];

  if (v5)
  {
    v6 = [v3 valueForKey:*MEMORY[0x277CFFFB0]];
    v7 = v6;
    if (v6)
    {
      v8 = MEMORY[0x277D75D00];
      [v6 CAColorMatrixValue];
      [(MTVisualStyling *)self alpha];
      v9 = [v8 _vibrantEffectWithCAColorMatrix:&v11 alpha:?];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [[_MTVisualStylingVibrancyEffect alloc] initWithVisualStyling:self];
  }

  return v9;
}

@end