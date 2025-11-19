@interface UINavigationBar(DOCAppearance)
- (id)_largeTitleColorForTintColor:()DOCAppearance;
- (uint64_t)effectiveAppearanceDidChange:()DOCAppearance;
- (uint64_t)tintColorDidChange;
- (void)_updateLargeTitleTextAttributes;
@end

@implementation UINavigationBar(DOCAppearance)

- (uint64_t)tintColorDidChange
{
  v3.receiver = a1;
  v3.super_class = UINavigationBar_0;
  objc_msgSendSuper2(&v3, sel_tintColorDidChange);
  return [a1 _updateLargeTitleTextAttributes];
}

- (uint64_t)effectiveAppearanceDidChange:()DOCAppearance
{
  v5.receiver = a1;
  v5.super_class = UINavigationBar_0;
  objc_msgSendSuper2(&v5, sel_effectiveAppearanceDidChange_);
  if ((_UIBarsApplyChromelessEverywhere() & 1) == 0)
  {
    v2 = objc_alloc_init(MEMORY[0x277D75788]);
    [v2 configureWithDefaultBackground];
    v3 = [MEMORY[0x277D75210] effectWithStyle:4];
    [v2 setBackgroundEffect:v3];

    [a1 setStandardAppearance:v2];
  }

  return [a1 _updateLargeTitleTextAttributes];
}

- (void)_updateLargeTitleTextAttributes
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([a1 tintAdjustmentMode] != 2)
  {
    v2 = [a1 tintColor];
    v3 = [a1 _largeTitleColorForTintColor:v2];

    if (v3)
    {
      v10 = *MEMORY[0x277D740C0];
      v11[0] = v3;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v5 = [a1 standardAppearance];
      [v5 setLargeTitleTextAttributes:v4];

      v6 = [a1 scrollEdgeAppearance];
      [v6 setLargeTitleTextAttributes:v4];
    }

    else
    {
      v7 = [a1 standardAppearance];
      v8 = MEMORY[0x277CBEC10];
      [v7 setLargeTitleTextAttributes:MEMORY[0x277CBEC10]];

      v9 = [a1 scrollEdgeAppearance];
      [v9 setLargeTitleTextAttributes:v8];
    }
  }
}

- (id)_largeTitleColorForTintColor:()DOCAppearance
{
  v4 = a3;
  v5 = [a1 traitCollection];
  v6 = [v5 accessibilityContrast];

  if (v6 == 1)
  {
    if (_largeTitleColorForTintColor__onceToken != -1)
    {
      [UINavigationBar(DOCAppearance) _largeTitleColorForTintColor:];
    }

    v7 = &_largeTitleColorForTintColor__sDefaultHCTintColor;
  }

  else
  {
    if (_largeTitleColorForTintColor__onceToken_6 != -1)
    {
      [UINavigationBar(DOCAppearance) _largeTitleColorForTintColor:];
    }

    v7 = &_largeTitleColorForTintColor__sDefaultTintColor;
  }

  v8 = *v7;
  if ([v8 isEqual:v4])
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

@end