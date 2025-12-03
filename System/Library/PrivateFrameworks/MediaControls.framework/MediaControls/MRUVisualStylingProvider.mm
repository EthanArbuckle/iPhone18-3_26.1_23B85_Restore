@interface MRUVisualStylingProvider
+ (id)stylingProviderForLockScreenPlatters;
- (MRUVisualStylingProvider)initWithLightVisualStylingProvider:(id)provider darkVisualStylingProvider:(id)stylingProvider;
- (MRUVisualStylingProvider)initWithTraitCollection:(id)collection;
- (MRUVisualStylingProvider)initWithVisualStylingProvider:(id)provider;
- (double)alphaForNowPlayingStyle:(int64_t)style;
- (id)colorForNowPlayingStyle:(int64_t)style;
- (id)colorForStyle:(int64_t)style traitCollection:(id)collection;
- (id)initForRecipe:(int64_t)recipe category:(int64_t)category;
- (id)resolvedForTraitCollection:(id)collection;
- (int64_t)blendModeForNowPlayingStyle:(int64_t)style;
- (int64_t)visualStyleForNowPlayingStyle:(int64_t)style;
- (void)applyBlendModeToView:(id)view;
- (void)applyStyle:(int64_t)style toView:(id)view traitCollection:(id)collection;
@end

@implementation MRUVisualStylingProvider

+ (id)stylingProviderForLockScreenPlatters
{
  v2 = [[MRUVisualStylingProvider alloc] initForRecipe:1 category:1];

  return v2;
}

- (MRUVisualStylingProvider)initWithVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = MRUVisualStylingProvider;
  v5 = [(MRUVisualStylingProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MRUVisualStylingProvider *)v5 setLightVisualStylingProvider:providerCopy];
    [(MRUVisualStylingProvider *)v6 setDarkVisualStylingProvider:providerCopy];
    [(MRUVisualStylingProvider *)v6 setSupportsVibrancy:1];
  }

  return v6;
}

- (MRUVisualStylingProvider)initWithLightVisualStylingProvider:(id)provider darkVisualStylingProvider:(id)stylingProvider
{
  providerCopy = provider;
  stylingProviderCopy = stylingProvider;
  v11.receiver = self;
  v11.super_class = MRUVisualStylingProvider;
  v8 = [(MRUVisualStylingProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MRUVisualStylingProvider *)v8 setLightVisualStylingProvider:providerCopy];
    [(MRUVisualStylingProvider *)v9 setDarkVisualStylingProvider:stylingProviderCopy];
    [(MRUVisualStylingProvider *)v9 setSupportsVibrancy:1];
  }

  return v9;
}

- (id)initForRecipe:(int64_t)recipe category:(int64_t)category
{
  v10.receiver = self;
  v10.super_class = MRUVisualStylingProvider;
  v6 = [(MRUVisualStylingProvider *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:recipe category:category andUserInterfaceStyle:1];
    [(MRUVisualStylingProvider *)v6 setLightVisualStylingProvider:v7];

    v8 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:recipe category:category andUserInterfaceStyle:2];
    [(MRUVisualStylingProvider *)v6 setDarkVisualStylingProvider:v8];

    [(MRUVisualStylingProvider *)v6 setSupportsVibrancy:1];
  }

  return v6;
}

- (MRUVisualStylingProvider)initWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(MRUVisualStylingProvider *)self init];
  if (v5)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v7 = [labelColor resolvedColorWithTraitCollection:collectionCopy];
    primaryColor = v5->_primaryColor;
    v5->_primaryColor = v7;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v10 = [secondaryLabelColor resolvedColorWithTraitCollection:collectionCopy];
    secondaryColor = v5->_secondaryColor;
    v5->_secondaryColor = v10;

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v13 = [tertiaryLabelColor resolvedColorWithTraitCollection:collectionCopy];
    tertiaryColor = v5->_tertiaryColor;
    v5->_tertiaryColor = v13;

    quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    v16 = [quaternaryLabelColor resolvedColorWithTraitCollection:collectionCopy];
    quaternaryColor = v5->_quaternaryColor;
    v5->_quaternaryColor = v16;

    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    v19 = [labelColor2 resolvedColorWithTraitCollection:collectionCopy];
    separatorColor = v5->_separatorColor;
    v5->_separatorColor = v19;
  }

  return v5;
}

- (void)applyStyle:(int64_t)style toView:(id)view traitCollection:(id)collection
{
  viewCopy = view;
  v11 = [(MRUVisualStylingProvider *)self resolvedForTraitCollection:collection];
  if (v11)
  {
    v9 = [v11 _visualStylingForStyle:{-[MRUVisualStylingProvider visualStyleForNowPlayingStyle:](self, "visualStyleForNowPlayingStyle:", style)}];
    [viewCopy mt_replaceVisualStyling:v9];
  }

  else
  {
    v9 = [(MRUVisualStylingProvider *)self colorForNowPlayingStyle:style];
    [(MRUVisualStylingProvider *)self alphaForNowPlayingStyle:style];
    [viewCopy mru_applyVisualStylingWithColor:v9 alpha:-[MRUVisualStylingProvider blendModeForNowPlayingStyle:](self blendMode:{"blendModeForNowPlayingStyle:", style), v10}];
  }
}

- (id)colorForStyle:(int64_t)style traitCollection:(id)collection
{
  v6 = [(MRUVisualStylingProvider *)self resolvedForTraitCollection:collection];
  if (v6)
  {
    v7 = [v6 _visualStylingForStyle:{-[MRUVisualStylingProvider visualStyleForNowPlayingStyle:](self, "visualStyleForNowPlayingStyle:", style)}];
    color = [v7 color];
  }

  else
  {
    color = [(MRUVisualStylingProvider *)self colorForNowPlayingStyle:style];
  }

  return color;
}

- (void)applyBlendModeToView:(id)view
{
  viewCopy = view;
  if ([(MRUVisualStylingProvider *)self supportsVibrancy])
  {
    traitCollection = [viewCopy traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
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

  [viewCopy _setDrawsAsBackdropOverlayWithBlendMode:v6];
}

- (id)resolvedForTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];
  v5 = 56;
  if (userInterfaceStyle == 2)
  {
    v5 = 64;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (int64_t)visualStyleForNowPlayingStyle:(int64_t)style
{
  if ((style - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1A2307FB8[style - 1];
  }
}

- (id)colorForNowPlayingStyle:(int64_t)style
{
  if (style > 1)
  {
    switch(style)
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

  if (style)
  {
    if (style != 1)
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

- (int64_t)blendModeForNowPlayingStyle:(int64_t)style
{
  if ([(MRUVisualStylingProvider *)self supportsVibrancy]&& (style - 1) <= 3)
  {
    return qword_1A2307FD8[style - 1];
  }

  else
  {
    return 0;
  }
}

- (double)alphaForNowPlayingStyle:(int64_t)style
{
  supportsVibrancy = [(MRUVisualStylingProvider *)self supportsVibrancy];
  result = 1.0;
  if (supportsVibrancy && (style - 1) <= 3)
  {
    return dbl_1A2307FF8[style - 1];
  }

  return result;
}

@end