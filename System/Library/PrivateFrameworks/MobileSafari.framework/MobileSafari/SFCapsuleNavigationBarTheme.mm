@interface SFCapsuleNavigationBarTheme
+ (BOOL)backdropIsDarkForStyle:(int64_t)style;
+ (id)backdropEffectForStyle:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (_SFBarTheme)contentTheme;
- (id)_titleThemeIsMinimized:(BOOL)minimized;
- (id)backgroundOverlayEffects;
- (void)applyBackdropEffectsToView:(id)view;
@end

@implementation SFCapsuleNavigationBarTheme

- (_SFBarTheme)contentTheme
{
  backgroundTheme = self->_backgroundTheme;
  if (!backgroundTheme || !self->_hidesOverlayEffects)
  {
    backgroundTheme = self;
  }

  return backgroundTheme;
}

+ (id)backdropEffectForStyle:(int64_t)style
{
  if (style == 3)
  {
    v3 = [MEMORY[0x1E69DC730] effectWithStyle:20];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___SFCapsuleNavigationBarTheme;
    v3 = objc_msgSendSuper2(&v5, sel_backdropEffectForStyle_);
  }

  return v3;
}

+ (BOOL)backdropIsDarkForStyle:(int64_t)style
{
  if (style == 3)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___SFCapsuleNavigationBarTheme;
  return objc_msgSendSuper2(&v6, sel_backdropIsDarkForStyle_);
}

- (void)applyBackdropEffectsToView:(id)view
{
  viewCopy = view;
  backgroundTheme = self->_backgroundTheme;
  if (backgroundTheme)
  {
    [(_SFBarTheme *)backgroundTheme applyBackdropEffectsToView:viewCopy];
    backgroundOverlayEffects = [(SFCapsuleNavigationBarTheme *)self backgroundOverlayEffects];
    if (![backgroundOverlayEffects count])
    {
LABEL_7:

      goto LABEL_8;
    }

    backgroundEffects = [viewCopy backgroundEffects];
    v8 = [backgroundEffects arrayByAddingObjectsFromArray:backgroundOverlayEffects];
    [viewCopy setBackgroundEffects:v8];

LABEL_6:
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = SFCapsuleNavigationBarTheme;
  [(_SFBarTheme *)&v9 applyBackdropEffectsToView:viewCopy];
  if ([(_SFBarTheme *)self tintStyle]== 3)
  {
    backgroundOverlayEffects = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
    backgroundEffects = [viewCopy contentView];
    [backgroundEffects setBackgroundColor:backgroundOverlayEffects];
    goto LABEL_6;
  }

LABEL_8:
}

- (id)_titleThemeIsMinimized:(BOOL)minimized
{
  minimizedCopy = minimized;
  v5 = _SFIsPrivateTintStyle([(_SFBarTheme *)self tintStyle]);
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v8 = labelColor;
  if (v5 && !minimizedCopy)
  {
    v9 = [labelColor resolvedColorWithTraitCollection:v6];

    v8 = v9;
  }

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v11 = [SFUnifiedTabBarItemTitleContainerViewTheme alloc];
  preferredBarTintColor = [(_SFBarTheme *)self preferredBarTintColor];
  v13 = [(SFUnifiedTabBarItemTitleContainerViewTheme *)v11 initWithPrimaryTextColor:v8 secondaryTextColor:secondaryLabelColor placeholderTextColor:secondaryLabelColor overrideTintColor:0 themeColor:preferredBarTintColor];

  return v13;
}

- (id)backgroundOverlayEffects
{
  v20[1] = *MEMORY[0x1E69E9840];
  tintStyle = [(_SFBarTheme *)self tintStyle];
  v4 = MEMORY[0x1E695E0F0];
  if (tintStyle > 2)
  {
    if (tintStyle == 3)
    {
      v14 = MEMORY[0x1E69DD290];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v15 = 0.68;
      if (self->_hidesOverlayEffects)
      {
        v15 = 0.0;
      }

      v8 = [v14 effectCompositingColor:blackColor withMode:23 alpha:v15];
      v18 = v8;
      v9 = &v18;
    }

    else
    {
      if (tintStyle != 4)
      {
        goto LABEL_19;
      }

      v10 = MEMORY[0x1E69DD290];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v11 = 0.3;
      if (self->_hidesOverlayEffects)
      {
        v11 = 0.0;
      }

      v8 = [v10 effectCompositingColor:blackColor withMode:23 alpha:v11];
      v17 = v8;
      v9 = &v17;
    }
  }

  else if (tintStyle == 1)
  {
    v12 = MEMORY[0x1E69DD290];
    blackColor = [MEMORY[0x1E69DC888] whiteColor];
    v13 = 0.8;
    if (self->_hidesOverlayEffects)
    {
      v13 = 0.0;
    }

    v8 = [v12 effectCompositingColor:blackColor withMode:0 alpha:v13];
    v20[0] = v8;
    v9 = v20;
  }

  else
  {
    if (tintStyle != 2)
    {
      goto LABEL_19;
    }

    v5 = MEMORY[0x1E69DD290];
    blackColor = [MEMORY[0x1E69DC888] whiteColor];
    v7 = 0.12;
    if (self->_hidesOverlayEffects)
    {
      v7 = 0.0;
    }

    v8 = [v5 effectCompositingColor:blackColor withMode:24 alpha:v7];
    v19 = v8;
    v9 = &v19;
  }

  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

LABEL_19:

  return v4;
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
    v8.super_class = SFCapsuleNavigationBarTheme;
    if ([(_SFBarTheme *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      if (WBSIsEqual())
      {
        v6 = self->_hidesOverlayEffects == v5[104];
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