@interface _SFBarTheme
+ (BOOL)shouldDisableBackgroundColorInBar:(id)a3 traitCollection:(id)a4;
+ (_SFBarTheme)themeWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5;
+ (_SFBarTheme)themeWithTheme:(id)a3;
+ (id)controlsTintColorForStyle:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)backdropEffects;
- (_SFBarTheme)fallbackTheme;
- (_SFBarTheme)initWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5;
- (id)description;
- (void)applyBackdropEffectsToView:(id)a3;
@end

@implementation _SFBarTheme

- (NSArray)backdropEffects
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(_SFBarTheme *)self backdropEffect];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (_SFBarTheme)themeWithTheme:(id)a3
{
  v4 = a3;
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v4 || (isKindOfClass & 1) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = [[a1 alloc] initWithBarTintStyle:objc_msgSend(v4 preferredBarTintColor:"tintStyle") controlsTintColor:{v4[6], v4[1]}];
  }

  v7 = v6;

  return v7;
}

+ (_SFBarTheme)themeWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithBarTintStyle:a3 preferredBarTintColor:v9 controlsTintColor:v8];

  return v10;
}

- (_SFBarTheme)initWithBarTintStyle:(int64_t)a3 preferredBarTintColor:(id)a4 controlsTintColor:(id)a5
{
  v43[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if ((a3 - 1) >= 2 && ([objc_opt_class() canTintPrivateStyles] & 1) == 0)
  {

    v8 = 0;
    v9 = 0;
  }

  v42.receiver = self;
  v42.super_class = _SFBarTheme;
  v10 = [(_SFBarTheme *)&v42 init];
  v11 = v10;
  if (v10)
  {
    v10->_tintStyle = a3;
    if (v8)
    {
      if ([MEMORY[0x1E69C8880] isSolariumEnabled])
      {
        [v8 safari_sRGBLuminance];
        v13 = v12;
        if (_SFIsDarkTintStyle(a3))
        {
          v14 = v13 <= 0.7;
        }

        else
        {
          v14 = v13 < 0.4;
        }

        goto LABEL_13;
      }

      v15 = [v8 sf_isDarkColor];
    }

    else
    {
      v15 = [objc_opt_class() backdropIsDarkForStyle:a3];
    }

    v14 = v15;
LABEL_13:
    v11->_backdropIsDark = v14;
    v17 = a3 == 5 || v8 != 0;
    v11->_backdropIsTinted = v17;
    objc_storeStrong(&v11->_preferredBarTintColor, v8);
    objc_storeStrong(&v11->_preferredControlsTintColor, v9);
    if (v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = [objc_opt_class() controlsTintColorForStyle:a3];
    }

    controlsTintColor = v11->_controlsTintColor;
    v11->_controlsTintColor = v18;

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v20 = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      v20 = v11->_controlsTintColor;
    }

    toolbarControlsTintColor = v11->_toolbarControlsTintColor;
    v11->_toolbarControlsTintColor = v20;

    v22 = v11->_controlsTintColor;
    v23 = 0.0;
    if (a3 > 2)
    {
      if (a3 != 5)
      {
        if (a3 == 4)
        {
          v23 = 0.5;
        }

        else if (a3 == 3)
        {
          v23 = 0.4;
        }

        goto LABEL_35;
      }
    }

    else if ((a3 - 1) >= 2)
    {
      if (!a3)
      {
        v24 = 0;
LABEL_38:

        platterProgressBarTintColor = v11->_platterProgressBarTintColor;
        v11->_platterProgressBarTintColor = v24;

        if (v8)
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
            v28 = [MEMORY[0x1E69DC730] _effectWithTintColor:v8];
          }
        }

        else
        {
          v29 = [MEMORY[0x1E69C8880] isSolariumEnabled];
          v30 = 1;
          if (v14)
          {
            v30 = 2;
          }

          if (v29)
          {
            v30 = 0;
          }

          v11->_overrideUserInterfaceStyle = v30;
          v28 = [objc_opt_class() backdropEffectForStyle:a3];
        }

        backdropEffect = v11->_backdropEffect;
        v11->_backdropEffect = v28;

        v32 = a3 - 3;
        if ((a3 - 3) > 2)
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
          if (a3 == 5)
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
          if (a3 == 4)
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
      if (_SFIsPrivateTintStyle(a3))
      {
        v25 = [MEMORY[0x1E69DC888] whiteColor];
        v24 = [v25 colorWithAlphaComponent:v23];
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
    v2 = [objc_alloc(objc_opt_class()) initWithBarTintStyle:self->_tintStyle preferredBarTintColor:0 controlsTintColor:0];
  }

  else
  {
    v2 = self;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      tintStyle = self->_tintStyle;
      if (tintStyle == [v5 tintStyle])
      {
        v7 = [v5 preferredBarTintColor];
        preferredBarTintColor = self->_preferredBarTintColor;
        if (preferredBarTintColor == v7 || [(UIColor *)preferredBarTintColor isEqual:v7])
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

- (void)applyBackdropEffectsToView:(id)a3
{
  v8 = a3;
  v4 = [(_SFBarTheme *)self backdropEffects];
  [v8 setBackgroundEffects:v4];

  if (self->_backdropAdjustmentEffects)
  {
    backdropAdjustmentEffects = self->_backdropAdjustmentEffects;
  }

  else
  {
    backdropAdjustmentEffects = MEMORY[0x1E695E0F0];
  }

  [v8 setContentEffects:backdropAdjustmentEffects];
  if (self->_backdropAdjustmentEffects)
  {
    [v8 tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v6 = ;
  v7 = [v8 contentView];
  [v7 setBackgroundColor:v6];
}

+ (id)controlsTintColorForStyle:(int64_t)a3
{
  if (a3 == 5)
  {
    v3 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    if (_SFIsPrivateTintStyle(a3))
    {
      [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] sf_safariAccentColor];
    }
    v3 = ;
  }

  return v3;
}

+ (BOOL)shouldDisableBackgroundColorInBar:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([v7 BOOLForKey:@"NeverUseBackgroundColorInNavigationBar"])
  {
    goto LABEL_8;
  }

  v8 = [v6 userInterfaceStyle];
  v9 = [v5 sf_isDarkColorForAdaptiveGlass];
  if (v8 != 2 || (v9 & 1) != 0)
  {
    if (((v8 != 2) & v9) != 1)
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

  if (([v7 BOOLForKey:*v10] & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v11 = 1;
LABEL_10:

  return v11;
}

@end