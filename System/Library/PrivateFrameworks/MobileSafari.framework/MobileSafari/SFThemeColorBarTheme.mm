@interface SFThemeColorBarTheme
- (BOOL)isEqual:(id)a3;
- (SFThemeColorBarTheme)initWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5;
- (id)backdropEffect;
- (id)backdropEffects;
- (void)applyBackdropEffectsToView:(id)a3;
@end

@implementation SFThemeColorBarTheme

- (SFThemeColorBarTheme)initWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v12 = v11;
  v13 = 0;
  if (!v10 && (v11 & 1) == 0)
  {
    v14 = v9;
    if ([MEMORY[0x1E69C9890] shouldOverrideTintColorForThemeColor:v14])
    {
      if ([v14 safari_meetsThresholdForDarkAppearance])
      {
        [MEMORY[0x1E69DC888] whiteColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] blackColor];
      }
      v15 = ;
    }

    else
    {
      v15 = 0;
    }

    v10 = v15;
    v13 = v10;
  }

  v24.receiver = self;
  v24.super_class = SFThemeColorBarTheme;
  v16 = [(_SFBarTheme *)&v24 initWithBarTintStyle:a3 preferredBarTintColor:v9 controlsTintColor:v10];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_themeColor, a4);
    if (v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v10;
    }

    objc_storeStrong(&v17->_overrideTintColor, v18);
    v19 = [(_SFBarTheme *)v17 overrideUserInterfaceStyle];
    v17->_userInterfaceStyle = v19;
    if (!((v9 == 0) | v12 & 1))
    {
      if ([v9 safari_meetsThresholdForDarkAppearance])
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      v17->_userInterfaceStyle = v19;
    }

    v20 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v19];
    traitCollection = v17->_traitCollection;
    v17->_traitCollection = v20;

    v22 = v17;
  }

  return v17;
}

- (void)applyBackdropEffectsToView:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFThemeColorBarTheme *)self themeColor];
  if (v5)
  {
    v6 = [(SFThemeColorBarTheme *)self backdropEffect];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v4 setBackgroundEffects:v7];

    [v4 setContentEffects:MEMORY[0x1E695E0F0]];
    v8 = [v5 colorWithAlphaComponent:0.85];
    v9 = [v4 contentView];
    [v9 setBackgroundColor:v8];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SFThemeColorBarTheme;
    [(_SFBarTheme *)&v10 applyBackdropEffectsToView:v4];
  }

  if (self->_backdropGroupName)
  {
    [v4 _setGroupName:?];
  }
}

- (id)backdropEffect
{
  overrideBackdropEffect = self->_overrideBackdropEffect;
  if (overrideBackdropEffect)
  {
    v3 = overrideBackdropEffect;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SFThemeColorBarTheme;
    v3 = [(_SFBarTheme *)&v5 backdropEffect];
  }

  return v3;
}

- (id)backdropEffects
{
  v10.receiver = self;
  v10.super_class = SFThemeColorBarTheme;
  v3 = [(_SFBarTheme *)&v10 backdropEffects];
  v4 = v3;
  if (self->_appliesDarkeningOverlay)
  {
    v5 = MEMORY[0x1E69DD290];
    v6 = [MEMORY[0x1E69DC888] blackColor];
    v7 = [v5 effectCompositingColor:v6 withMode:0 alpha:0.03];

    v8 = [v4 arrayByAddingObject:v7];
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFThemeColorBarTheme;
    if ([(_SFBarTheme *)&v8 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      if (self->_appliesDarkeningOverlay == v5[104] && WBSIsEqual())
      {
        v6 = WBSIsEqual();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end