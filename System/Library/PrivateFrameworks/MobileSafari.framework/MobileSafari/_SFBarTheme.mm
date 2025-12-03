@interface _SFBarTheme
+ (BOOL)shouldDisableBackgroundColorInBar:(id)bar traitCollection:(id)collection;
+ (_SFBarTheme)themeWithBarTintStyle:(int64_t)style preferredBarTintColor:(id)color controlsTintColor:(id)tintColor;
+ (_SFBarTheme)themeWithTheme:(id)theme;
+ (id)controlsTintColorForStyle:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (NSArray)backdropEffects;
- (_SFBarTheme)fallbackTheme;
- (_SFBarTheme)initWithBarTintStyle:(int64_t)style preferredBarTintColor:(id)color controlsTintColor:(id)tintColor;
- (id)description;
- (void)applyBackdropEffectsToView:(id)view;
@end

@implementation _SFBarTheme

- (NSArray)backdropEffects
{
  v5[1] = *MEMORY[0x1E69E9840];
  backdropEffect = [(_SFBarTheme *)self backdropEffect];
  v5[0] = backdropEffect;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (_SFBarTheme)themeWithTheme:(id)theme
{
  themeCopy = theme;
  isKindOfClass = objc_opt_isKindOfClass();
  if (!themeCopy || (isKindOfClass & 1) != 0)
  {
    v6 = themeCopy;
  }

  else
  {
    v6 = [[self alloc] initWithBarTintStyle:objc_msgSend(themeCopy preferredBarTintColor:"tintStyle") controlsTintColor:{themeCopy[6], themeCopy[1]}];
  }

  v7 = v6;

  return v7;
}

+ (_SFBarTheme)themeWithBarTintStyle:(int64_t)style preferredBarTintColor:(id)color controlsTintColor:(id)tintColor
{
  tintColorCopy = tintColor;
  colorCopy = color;
  v10 = [[self alloc] initWithBarTintStyle:style preferredBarTintColor:colorCopy controlsTintColor:tintColorCopy];

  return v10;
}

- (_SFBarTheme)initWithBarTintStyle:(int64_t)style preferredBarTintColor:(id)color controlsTintColor:(id)tintColor
{
  v43[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  tintColorCopy = tintColor;
  if ((style - 1) >= 2 && ([objc_opt_class() canTintPrivateStyles] & 1) == 0)
  {

    colorCopy = 0;
    tintColorCopy = 0;
  }

  v42.receiver = self;
  v42.super_class = _SFBarTheme;
  v10 = [(_SFBarTheme *)&v42 init];
  v11 = v10;
  if (v10)
  {
    v10->_tintStyle = style;
    if (colorCopy)
    {
      if ([MEMORY[0x1E69C8880] isSolariumEnabled])
      {
        [colorCopy safari_sRGBLuminance];
        v13 = v12;
        if (_SFIsDarkTintStyle(style))
        {
          v14 = v13 <= 0.7;
        }

        else
        {
          v14 = v13 < 0.4;
        }

        goto LABEL_13;
      }

      sf_isDarkColor = [colorCopy sf_isDarkColor];
    }

    else
    {
      sf_isDarkColor = [objc_opt_class() backdropIsDarkForStyle:style];
    }

    v14 = sf_isDarkColor;
LABEL_13:
    v11->_backdropIsDark = v14;
    v17 = style == 5 || colorCopy != 0;
    v11->_backdropIsTinted = v17;
    objc_storeStrong(&v11->_preferredBarTintColor, colorCopy);
    objc_storeStrong(&v11->_preferredControlsTintColor, tintColorCopy);
    if (tintColorCopy)
    {
      v18 = tintColorCopy;
    }

    else
    {
      v18 = [objc_opt_class() controlsTintColorForStyle:style];
    }

    controlsTintColor = v11->_controlsTintColor;
    v11->_controlsTintColor = v18;

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      labelColor = v11->_controlsTintColor;
    }

    toolbarControlsTintColor = v11->_toolbarControlsTintColor;
    v11->_toolbarControlsTintColor = labelColor;

    v22 = v11->_controlsTintColor;
    v23 = 0.0;
    if (style > 2)
    {
      if (style != 5)
      {
        if (style == 4)
        {
          v23 = 0.5;
        }

        else if (style == 3)
        {
          v23 = 0.4;
        }

        goto LABEL_35;
      }
    }

    else if ((style - 1) >= 2)
    {
      if (!style)
      {
        v24 = 0;
LABEL_38:

        platterProgressBarTintColor = v11->_platterProgressBarTintColor;
        v11->_platterProgressBarTintColor = v24;

        if (colorCopy)
        {
          v27 = 1;
          if (v14)
          {
            v27 = 2;
          }

          v11->_overrideUserInterfaceStyle = v27;
          if ([objc_opt_class() prefersThemeColorEffect])
          {
            if (plainBlurEffect_onceToken[0] != -1)
            {
              [_SFBarTheme initWithBarTintStyle:preferredBarTintColor:controlsTintColor:];
            }

            v28 = plainBlurEffect_effect;
          }

          else
          {
            v28 = [MEMORY[0x1E69DC730] _effectWithTintColor:colorCopy];
          }
        }

        else
        {
          isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
          v30 = 1;
          if (v14)
          {
            v30 = 2;
          }

          if (isSolariumEnabled)
          {
            v30 = 0;
          }

          v11->_overrideUserInterfaceStyle = v30;
          v28 = [objc_opt_class() backdropEffectForStyle:style];
        }

        backdropEffect = v11->_backdropEffect;
        v11->_backdropEffect = v28;

        v32 = style - 3;
        if ((style - 3) > 2)
        {
          v33 = 0;
        }

        else
        {
          v33 = [MEMORY[0x1E69DC888] sf_colorNamed:off_1E721FF08[v32]];
        }

        glassURLFieldTintColor = v11->_glassURLFieldTintColor;
        v11->_glassURLFieldTintColor = v33;

        if (v32 >= 2)
        {
          if (style == 5)
          {
            v38 = 2;
          }

          else
          {
            v38 = 0;
          }

          v11->_glassURLFieldUserInterfaceStyle = v38;
        }

        else
        {
          v11->_glassURLFieldUserInterfaceStyle = 2;
          if (style == 4)
          {
            v41[0] = xmmword_18BC3E380;
            v41[1] = xmmword_18BC3E390;
            v41[2] = xmmword_18BC3E3A0;
            v41[3] = xmmword_18BC3E3B0;
            v41[4] = xmmword_18BC3E3C0;
            v35 = [MEMORY[0x1E69DD248] _vibrantEffectWithCAColorMatrix:v41 alpha:1.0];
            v43[0] = v35;
            v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
            backdropAdjustmentEffects = v11->_backdropAdjustmentEffects;
            v11->_backdropAdjustmentEffects = v36;
          }
        }

        v39 = v11;
        goto LABEL_62;
      }

LABEL_35:
      if (_SFIsPrivateTintStyle(style))
      {
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        v24 = [whiteColor colorWithAlphaComponent:v23];
      }

      else
      {
        v24 = v22;
      }

      goto LABEL_38;
    }

    v23 = 1.0;
    goto LABEL_35;
  }

LABEL_62:

  return v11;
}

- (_SFBarTheme)fallbackTheme
{
  if (self->_preferredBarTintColor || self->_preferredControlsTintColor)
  {
    selfCopy = [objc_alloc(objc_opt_class()) initWithBarTintStyle:self->_tintStyle preferredBarTintColor:0 controlsTintColor:0];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      tintStyle = self->_tintStyle;
      if (tintStyle == [v5 tintStyle])
      {
        preferredBarTintColor = [v5 preferredBarTintColor];
        preferredBarTintColor = self->_preferredBarTintColor;
        if (preferredBarTintColor == preferredBarTintColor || [(UIColor *)preferredBarTintColor isEqual:preferredBarTintColor])
        {
          v9 = v5[1];
          preferredControlsTintColor = self->_preferredControlsTintColor;
          v11 = preferredControlsTintColor == v9 || [(UIColor *)preferredControlsTintColor isEqual:v9];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = _SFStringForTintStyle(self->_tintStyle);
  v7 = [v3 stringWithFormat:@"<%@: %p, %@", v5, self, v6];

  if (self->_preferredBarTintColor)
  {
    if (self->_backdropIsDark)
    {
      v8 = @"dark";
    }

    else
    {
      v8 = @"light";
    }

    [v7 appendFormat:@", tint=%@ (%@)", self->_preferredBarTintColor, v8];
  }

  if (self->_preferredControlsTintColor)
  {
    [v7 appendFormat:@", conrolsTint=%@", self->_preferredControlsTintColor];
  }

  [v7 appendString:@">"];

  return v7;
}

- (void)applyBackdropEffectsToView:(id)view
{
  viewCopy = view;
  backdropEffects = [(_SFBarTheme *)self backdropEffects];
  [viewCopy setBackgroundEffects:backdropEffects];

  if (self->_backdropAdjustmentEffects)
  {
    backdropAdjustmentEffects = self->_backdropAdjustmentEffects;
  }

  else
  {
    backdropAdjustmentEffects = MEMORY[0x1E695E0F0];
  }

  [viewCopy setContentEffects:backdropAdjustmentEffects];
  if (self->_backdropAdjustmentEffects)
  {
    [viewCopy tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v6 = ;
  contentView = [viewCopy contentView];
  [contentView setBackgroundColor:v6];
}

+ (id)controlsTintColorForStyle:(int64_t)style
{
  if (style == 5)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    if (_SFIsPrivateTintStyle(style))
    {
      [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] sf_safariAccentColor];
    }
    whiteColor = ;
  }

  return whiteColor;
}

+ (BOOL)shouldDisableBackgroundColorInBar:(id)bar traitCollection:(id)collection
{
  barCopy = bar;
  collectionCopy = collection;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([safari_browserDefaults BOOLForKey:@"NeverUseBackgroundColorInNavigationBar"])
  {
    goto LABEL_8;
  }

  userInterfaceStyle = [collectionCopy userInterfaceStyle];
  sf_isDarkColorForAdaptiveGlass = [barCopy sf_isDarkColorForAdaptiveGlass];
  if (userInterfaceStyle != 2 || (sf_isDarkColorForAdaptiveGlass & 1) != 0)
  {
    if (((userInterfaceStyle != 2) & sf_isDarkColorForAdaptiveGlass) != 1)
    {
LABEL_9:
      v11 = 0;
      goto LABEL_10;
    }

    v10 = SFDisableDarkBackgroundColorInLightTabBarKey;
  }

  else
  {
    v10 = SFDisableLightBackgroundColorInDarkTabBarKey;
  }

  if (([safari_browserDefaults BOOLForKey:*v10] & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v11 = 1;
LABEL_10:

  return v11;
}

@end