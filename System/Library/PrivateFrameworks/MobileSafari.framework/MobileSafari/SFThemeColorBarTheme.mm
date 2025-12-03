@interface SFThemeColorBarTheme
- (BOOL)isEqual:(id)equal;
- (SFThemeColorBarTheme)initWithBarTintStyle:(int64_t)style preferredBarTintColor:(id)color controlsTintColor:(id)tintColor;
- (id)backdropEffect;
- (id)backdropEffects;
- (void)applyBackdropEffectsToView:(id)view;
@end

@implementation SFThemeColorBarTheme

- (SFThemeColorBarTheme)initWithBarTintStyle:(int64_t)style preferredBarTintColor:(id)color controlsTintColor:(id)tintColor
{
  colorCopy = color;
  tintColorCopy = tintColor;
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v12 = isSolariumEnabled;
  v13 = 0;
  if (!tintColorCopy && (isSolariumEnabled & 1) == 0)
  {
    v14 = colorCopy;
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

    tintColorCopy = v15;
    v13 = tintColorCopy;
  }

  v24.receiver = self;
  v24.super_class = SFThemeColorBarTheme;
  v16 = [(_SFBarTheme *)&v24 initWithBarTintStyle:style preferredBarTintColor:colorCopy controlsTintColor:tintColorCopy];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_themeColor, color);
    if (v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = tintColorCopy;
    }

    objc_storeStrong(&v17->_overrideTintColor, v18);
    overrideUserInterfaceStyle = [(_SFBarTheme *)v17 overrideUserInterfaceStyle];
    v17->_userInterfaceStyle = overrideUserInterfaceStyle;
    if (!((colorCopy == 0) | v12 & 1))
    {
      if ([colorCopy safari_meetsThresholdForDarkAppearance])
      {
        overrideUserInterfaceStyle = 2;
      }

      else
      {
        overrideUserInterfaceStyle = 1;
      }

      v17->_userInterfaceStyle = overrideUserInterfaceStyle;
    }

    v20 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:overrideUserInterfaceStyle];
    traitCollection = v17->_traitCollection;
    v17->_traitCollection = v20;

    v22 = v17;
  }

  return v17;
}

- (void)applyBackdropEffectsToView:(id)view
{
  v11[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  themeColor = [(SFThemeColorBarTheme *)self themeColor];
  if (themeColor)
  {
    backdropEffect = [(SFThemeColorBarTheme *)self backdropEffect];
    v11[0] = backdropEffect;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [viewCopy setBackgroundEffects:v7];

    [viewCopy setContentEffects:MEMORY[0x1E695E0F0]];
    v8 = [themeColor colorWithAlphaComponent:0.85];
    contentView = [viewCopy contentView];
    [contentView setBackgroundColor:v8];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SFThemeColorBarTheme;
    [(_SFBarTheme *)&v10 applyBackdropEffectsToView:viewCopy];
  }

  if (self->_backdropGroupName)
  {
    [viewCopy _setGroupName:?];
  }
}

- (id)backdropEffect
{
  overrideBackdropEffect = self->_overrideBackdropEffect;
  if (overrideBackdropEffect)
  {
    backdropEffect = overrideBackdropEffect;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SFThemeColorBarTheme;
    backdropEffect = [(_SFBarTheme *)&v5 backdropEffect];
  }

  return backdropEffect;
}

- (id)backdropEffects
{
  v10.receiver = self;
  v10.super_class = SFThemeColorBarTheme;
  backdropEffects = [(_SFBarTheme *)&v10 backdropEffects];
  v4 = backdropEffects;
  if (self->_appliesDarkeningOverlay)
  {
    v5 = MEMORY[0x1E69DD290];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v7 = [v5 effectCompositingColor:blackColor withMode:0 alpha:0.03];

    v8 = [v4 arrayByAddingObject:v7];
  }

  else
  {
    v8 = backdropEffects;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFThemeColorBarTheme;
    if ([(_SFBarTheme *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
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