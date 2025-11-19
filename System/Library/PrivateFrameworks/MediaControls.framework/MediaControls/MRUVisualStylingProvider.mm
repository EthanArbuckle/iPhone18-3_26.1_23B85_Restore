@interface MRUVisualStylingProvider
+ (id)stylingProviderForLockScreenPlatters;
- (MRUVisualStylingProvider)initWithLightVisualStylingProvider:(id)a3 darkVisualStylingProvider:(id)a4;
- (MRUVisualStylingProvider)initWithTraitCollection:(id)a3;
- (MRUVisualStylingProvider)initWithVisualStylingProvider:(id)a3;
- (double)alphaForNowPlayingStyle:(int64_t)a3;
- (id)colorForNowPlayingStyle:(int64_t)a3;
- (id)colorForStyle:(int64_t)a3 traitCollection:(id)a4;
- (id)initForRecipe:(int64_t)a3 category:(int64_t)a4;
- (id)resolvedForTraitCollection:(id)a3;
- (int64_t)blendModeForNowPlayingStyle:(int64_t)a3;
- (int64_t)visualStyleForNowPlayingStyle:(int64_t)a3;
- (void)applyBlendModeToView:(id)a3;
- (void)applyStyle:(int64_t)a3 toView:(id)a4 traitCollection:(id)a5;
@end

@implementation MRUVisualStylingProvider

+ (id)stylingProviderForLockScreenPlatters
{
  v2 = [[MRUVisualStylingProvider alloc] initForRecipe:1 category:1];

  return v2;
}

- (MRUVisualStylingProvider)initWithVisualStylingProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MRUVisualStylingProvider;
  v5 = [(MRUVisualStylingProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MRUVisualStylingProvider *)v5 setLightVisualStylingProvider:v4];
    [(MRUVisualStylingProvider *)v6 setDarkVisualStylingProvider:v4];
    [(MRUVisualStylingProvider *)v6 setSupportsVibrancy:1];
  }

  return v6;
}

- (MRUVisualStylingProvider)initWithLightVisualStylingProvider:(id)a3 darkVisualStylingProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MRUVisualStylingProvider;
  v8 = [(MRUVisualStylingProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MRUVisualStylingProvider *)v8 setLightVisualStylingProvider:v6];
    [(MRUVisualStylingProvider *)v9 setDarkVisualStylingProvider:v7];
    [(MRUVisualStylingProvider *)v9 setSupportsVibrancy:1];
  }

  return v9;
}

- (id)initForRecipe:(int64_t)a3 category:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = MRUVisualStylingProvider;
  v6 = [(MRUVisualStylingProvider *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:a3 category:a4 andUserInterfaceStyle:1];
    [(MRUVisualStylingProvider *)v6 setLightVisualStylingProvider:v7];

    v8 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:a3 category:a4 andUserInterfaceStyle:2];
    [(MRUVisualStylingProvider *)v6 setDarkVisualStylingProvider:v8];

    [(MRUVisualStylingProvider *)v6 setSupportsVibrancy:1];
  }

  return v6;
}

- (MRUVisualStylingProvider)initWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(MRUVisualStylingProvider *)self init];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] labelColor];
    v7 = [v6 resolvedColorWithTraitCollection:v4];
    primaryColor = v5->_primaryColor;
    v5->_primaryColor = v7;

    v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v10 = [v9 resolvedColorWithTraitCollection:v4];
    secondaryColor = v5->_secondaryColor;
    v5->_secondaryColor = v10;

    v12 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v13 = [v12 resolvedColorWithTraitCollection:v4];
    tertiaryColor = v5->_tertiaryColor;
    v5->_tertiaryColor = v13;

    v15 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    v16 = [v15 resolvedColorWithTraitCollection:v4];
    quaternaryColor = v5->_quaternaryColor;
    v5->_quaternaryColor = v16;

    v18 = [MEMORY[0x1E69DC888] labelColor];
    v19 = [v18 resolvedColorWithTraitCollection:v4];
    separatorColor = v5->_separatorColor;
    v5->_separatorColor = v19;
  }

  return v5;
}

- (void)applyStyle:(int64_t)a3 toView:(id)a4 traitCollection:(id)a5
{
  v8 = a4;
  v11 = [(MRUVisualStylingProvider *)self resolvedForTraitCollection:a5];
  if (v11)
  {
    v9 = [v11 _visualStylingForStyle:{-[MRUVisualStylingProvider visualStyleForNowPlayingStyle:](self, "visualStyleForNowPlayingStyle:", a3)}];
    [v8 mt_replaceVisualStyling:v9];
  }

  else
  {
    v9 = [(MRUVisualStylingProvider *)self colorForNowPlayingStyle:a3];
    [(MRUVisualStylingProvider *)self alphaForNowPlayingStyle:a3];
    [v8 mru_applyVisualStylingWithColor:v9 alpha:-[MRUVisualStylingProvider blendModeForNowPlayingStyle:](self blendMode:{"blendModeForNowPlayingStyle:", a3), v10}];
  }
}

- (id)colorForStyle:(int64_t)a3 traitCollection:(id)a4
{
  v6 = [(MRUVisualStylingProvider *)self resolvedForTraitCollection:a4];
  if (v6)
  {
    v7 = [v6 _visualStylingForStyle:{-[MRUVisualStylingProvider visualStyleForNowPlayingStyle:](self, "visualStyleForNowPlayingStyle:", a3)}];
    v8 = [v7 color];
  }

  else
  {
    v8 = [(MRUVisualStylingProvider *)self colorForNowPlayingStyle:a3];
  }

  return v8;
}

- (void)applyBlendModeToView:(id)a3
{
  v7 = a3;
  if ([(MRUVisualStylingProvider *)self supportsVibrancy])
  {
    v4 = [v7 traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  [v7 _setDrawsAsBackdropOverlayWithBlendMode:v6];
}

- (id)resolvedForTraitCollection:(id)a3
{
  v4 = [a3 userInterfaceStyle];
  v5 = 56;
  if (v4 == 2)
  {
    v5 = 64;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (int64_t)visualStyleForNowPlayingStyle:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1A2307FB8[a3 - 1];
  }
}

- (id)colorForNowPlayingStyle:(int64_t)a3
{
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        tertiaryColor = self->_tertiaryColor;
        if (!tertiaryColor)
        {
          self = [MEMORY[0x1E69DC888] tertiaryLabelColor];
          goto LABEL_17;
        }

        break;
      case 3:
        tertiaryColor = self->_quaternaryColor;
        if (!tertiaryColor)
        {
          self = [MEMORY[0x1E69DC888] quaternaryLabelColor];
          goto LABEL_17;
        }

        break;
      case 4:
        tertiaryColor = self->_separatorColor;
        if (!tertiaryColor)
        {
          goto LABEL_20;
        }

        break;
      default:
        goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_17;
    }

    tertiaryColor = self->_secondaryColor;
    if (!tertiaryColor)
    {
      self = [MEMORY[0x1E69DC888] secondaryLabelColor];
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  tertiaryColor = self->_primaryColor;
  if (tertiaryColor)
  {
LABEL_16:
    self = tertiaryColor;
    goto LABEL_17;
  }

LABEL_20:
  self = [MEMORY[0x1E69DC888] labelColor];
LABEL_17:

  return self;
}

- (int64_t)blendModeForNowPlayingStyle:(int64_t)a3
{
  if ([(MRUVisualStylingProvider *)self supportsVibrancy]&& (a3 - 1) <= 3)
  {
    return qword_1A2307FD8[a3 - 1];
  }

  else
  {
    return 0;
  }
}

- (double)alphaForNowPlayingStyle:(int64_t)a3
{
  v4 = [(MRUVisualStylingProvider *)self supportsVibrancy];
  result = 1.0;
  if (v4 && (a3 - 1) <= 3)
  {
    return dbl_1A2307FF8[a3 - 1];
  }

  return result;
}

@end