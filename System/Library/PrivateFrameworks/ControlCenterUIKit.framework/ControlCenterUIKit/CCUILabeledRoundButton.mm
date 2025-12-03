@interface CCUILabeledRoundButton
- (BOOL)_shouldUseLargeTextLayout;
- (CCUILabeledRoundButton)initWithGlyphImage:(id)image highlightColor:(id)color highlightTintColor:(id)tintColor useLightStyle:(BOOL)style;
- (CCUILabeledRoundButton)initWithGlyphPackageDescription:(id)description highlightColor:(id)color useLightStyle:(BOOL)style;
- (CCUILabeledRoundButton)initWithHighlightColor:(id)color useLightStyle:(BOOL)style;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)requiredVisualStyleCategories;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_contentSizeCategoryDidChange;
- (void)_layoutLabels;
- (void)_setupLabelsBounds;
- (void)_updateFonts;
- (void)_visualStylingProvider:(id)provider didChangeForCategory:(int64_t)category outgoingVisualStylingProvider:(id)stylingProvider;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentSizeCategoryThreshold:(id)threshold;
- (void)setDynamicLayoutEnabled:(BOOL)enabled;
- (void)setDynamicLayoutUnbounded:(BOOL)unbounded;
- (void)setGlyphImage:(id)image;
- (void)setGlyphPackageDescription:(id)description;
- (void)setGlyphState:(id)state;
- (void)setHighlightColor:(id)color;
- (void)setLabelsVisible:(BOOL)visible;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setUseAlternateBackground:(BOOL)background;
- (void)setUseAutomaticSymbolColors:(BOOL)colors;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation CCUILabeledRoundButton

- (CCUILabeledRoundButton)initWithHighlightColor:(id)color useLightStyle:(BOOL)style
{
  v26[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v25.receiver = self;
  v25.super_class = CCUILabeledRoundButton;
  v7 = [(CCUILabeledRoundButton *)&v25 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_glyphScale = 1.0;
    v9 = [colorCopy copy];
    highlightColor = v8->_highlightColor;
    v8->_highlightColor = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v8->_titleLabel;
    v8->_titleLabel = v11;

    [(CCUILabeledRoundButton *)v8 addSubview:v8->_titleLabel];
    [(UILabel *)v8->_titleLabel setTextAlignment:1];
    v13 = v8->_titleLabel;
    title = [(CCUILabeledRoundButton *)v8 title];
    [(UILabel *)v13 setText:title];

    [(UILabel *)v8->_titleLabel setClipsToBounds:0];
    LODWORD(v15) = 1055286886;
    [(UILabel *)v8->_titleLabel _setHyphenationFactor:v15];
    [(UILabel *)v8->_titleLabel setNumberOfLines:2];
    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v8->_subtitleLabel;
    v8->_subtitleLabel = v16;

    [(CCUILabeledRoundButton *)v8 addSubview:v8->_subtitleLabel];
    [(UILabel *)v8->_subtitleLabel setTextAlignment:1];
    v18 = v8->_subtitleLabel;
    subtitle = [(CCUILabeledRoundButton *)v8 subtitle];
    [(UILabel *)v18 setText:subtitle];

    [(UILabel *)v8->_subtitleLabel setClipsToBounds:0];
    LODWORD(v20) = 1055286886;
    [(UILabel *)v8->_subtitleLabel _setHyphenationFactor:v20];
    [(UILabel *)v8->_subtitleLabel setNumberOfLines:2];
    if (!style)
    {
      [(UILabel *)v8->_titleLabel controlCenterApplyPrimaryContentShadow];
      [(UILabel *)v8->_subtitleLabel controlCenterApplyPrimaryContentShadow];
    }

    v8->_contentSizeCategoryThreshold = *MEMORY[0x1E69DDC60];
    v21 = objc_opt_self();
    v26[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v23 = [(CCUILabeledRoundButton *)v8 registerForTraitChanges:v22 withAction:sel__contentSizeCategoryDidChange];

    [(CCUILabeledRoundButton *)v8 _contentSizeCategoryDidChange];
  }

  return v8;
}

- (CCUILabeledRoundButton)initWithGlyphImage:(id)image highlightColor:(id)color highlightTintColor:(id)tintColor useLightStyle:(BOOL)style
{
  styleCopy = style;
  imageCopy = image;
  colorCopy = color;
  tintColorCopy = tintColor;
  v14 = [(CCUILabeledRoundButton *)self initWithHighlightColor:colorCopy useLightStyle:styleCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_glyphImage, image);
    v16 = [tintColorCopy copy];
    highlightTintColor = v15->_highlightTintColor;
    v15->_highlightTintColor = v16;

    v18 = [[CCUIRoundButton alloc] initWithGlyphImage:imageCopy highlightColor:colorCopy highlightTintColor:tintColorCopy useLightStyle:styleCopy];
    buttonView = v15->_buttonView;
    v15->_buttonView = v18;

    [(CCUIRoundButton *)v15->_buttonView addTarget:v15 action:sel_buttonTapped_ forControlEvents:64];
    [(CCUILabeledRoundButton *)v15 addSubview:v15->_buttonView];
  }

  return v15;
}

- (CCUILabeledRoundButton)initWithGlyphPackageDescription:(id)description highlightColor:(id)color useLightStyle:(BOOL)style
{
  styleCopy = style;
  descriptionCopy = description;
  colorCopy = color;
  v11 = [(CCUILabeledRoundButton *)self initWithHighlightColor:colorCopy useLightStyle:styleCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_glyphPackageDescription, description);
    v13 = [[CCUIRoundButton alloc] initWithGlyphPackageDescription:descriptionCopy highlightColor:colorCopy useLightStyle:styleCopy];
    buttonView = v12->_buttonView;
    v12->_buttonView = v13;

    [(CCUIRoundButton *)v12->_buttonView addTarget:v12 action:sel_buttonTapped_ forControlEvents:64];
    v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v12->_buttonView, 0}];
    [(CCUILabeledRoundButton *)v12 setAutomationElements:v15];

    [(CCUILabeledRoundButton *)v12 addSubview:v12->_buttonView];
  }

  return v12;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CCUILabeledRoundButton;
  [(CCUILabeledRoundButton *)&v14 layoutSubviews];
  [(CCUILabeledRoundButton *)self _updateFonts];
  [(CCUILabeledRoundButton *)self bounds];
  v4 = v3;
  v6 = v5;
  labelsVisible = [(CCUILabeledRoundButton *)self labelsVisible];
  v8 = labelsVisible;
  if (self->_dynamicLayoutEnabled && labelsVisible)
  {
    [(UILabel *)self->_titleLabel sizeThatFits:v4, v6];
    v10 = v9;
    [(UILabel *)self->_subtitleLabel sizeThatFits:v4, v6];
    v12 = v6 - (v10 + v11 + 8.0);
  }

  else
  {
    v12 = v6;
  }

  [(CCUIRoundButton *)self->_buttonView sizeThatFits:v4, v12];
  BSRectWithSize();
  UIRectCenteredXInRectScale();
  [(CCUIRoundButton *)self->_buttonView setFrame:0];
  v13 = 0.0;
  if (v8)
  {
    [(CCUILabeledRoundButton *)self _setupLabelsBounds];
    v13 = 1.0;
  }

  [(UILabel *)self->_titleLabel setAlpha:v13];
  [(UILabel *)self->_subtitleLabel setAlpha:v13];
  [(CCUILabeledRoundButton *)self _layoutLabels];
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = CCUILabeledRoundButton;
  [(CCUILabeledRoundButton *)&v8 didMoveToWindow];
  window = [(CCUILabeledRoundButton *)self window];

  if (window)
  {
    v4 = [(CCUILabeledRoundButton *)self visualStylingProviderForCategory:1];
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    v7 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v6];
    [(CCUILabeledRoundButton *)self _visualStylingProvider:v4 didChangeForCategory:1 outgoingVisualStylingProvider:v7];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(CCUIRoundButton *)self->_buttonView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  if ([(CCUILabeledRoundButton *)self labelsVisible])
  {
    [(UILabel *)self->_titleLabel sizeThatFits:width, height];
    v11 = v10;
    v13 = v12;
    [(UILabel *)self->_subtitleLabel sizeThatFits:width, height];
    v9 = v9 + v13 + v15 + 8.0;
    if (v11 >= v14)
    {
      v14 = v11;
    }

    if (v7 >= v14)
    {
      v7 = v14;
    }
  }

  v16 = v7;
  v17 = v9;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CCUILabeledRoundButton *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setHighlightColor:(id)color
{
  objc_storeStrong(&self->_highlightColor, color);
  colorCopy = color;
  [(CCUIRoundButton *)self->_buttonView setHighlightColor:colorCopy];
}

- (void)setGlyphImage:(id)image
{
  objc_storeStrong(&self->_glyphImage, image);
  imageCopy = image;
  [(CCUIRoundButton *)self->_buttonView setGlyphImage:imageCopy];
}

- (void)setGlyphPackageDescription:(id)description
{
  descriptionCopy = description;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_glyphPackageDescription, description);
    [(CCUIRoundButton *)self->_buttonView setGlyphPackageDescription:descriptionCopy];
  }
}

- (void)setGlyphState:(id)state
{
  objc_storeStrong(&self->_glyphState, state);
  stateCopy = state;
  [(CCUIRoundButton *)self->_buttonView setGlyphState:stateCopy];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = [titleCopy copy];
  title = self->_title;
  self->_title = v5;

  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(CCUILabeledRoundButton *)self setNeedsLayout];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = [subtitleCopy copy];
  subtitle = self->_subtitle;
  self->_subtitle = v5;

  [(UILabel *)self->_subtitleLabel setText:subtitleCopy];

  [(CCUILabeledRoundButton *)self setNeedsLayout];
}

- (void)setLabelsVisible:(BOOL)visible
{
  if (self->_labelsVisible != visible)
  {
    self->_labelsVisible = visible;
    [(CCUILabeledRoundButton *)self setNeedsLayout];
  }
}

- (void)setUseAlternateBackground:(BOOL)background
{
  if (self->_useAlternateBackground != background)
  {
    self->_useAlternateBackground = background;
    [(CCUIRoundButton *)self->_buttonView setUseAlternateBackground:?];
  }
}

- (void)setUseAutomaticSymbolColors:(BOOL)colors
{
  if (self->_useAutomaticSymbolColors != colors)
  {
    self->_useAutomaticSymbolColors = colors;
    [(CCUIRoundButton *)self->_buttonView setUseAutomaticSymbolColors:?];
  }
}

- (void)setContentSizeCategoryThreshold:(id)threshold
{
  if (self->_contentSizeCategoryThreshold != threshold)
  {
    self->_contentSizeCategoryThreshold = threshold;
    [(CCUILabeledRoundButton *)self _contentSizeCategoryDidChange];
  }
}

- (void)setDynamicLayoutEnabled:(BOOL)enabled
{
  if (self->_dynamicLayoutEnabled != enabled)
  {
    self->_dynamicLayoutEnabled = enabled;
    [(CCUIRoundButton *)self->_buttonView setDynamicLayoutEnabled:?];

    [(CCUILabeledRoundButton *)self setNeedsLayout];
  }
}

- (void)setDynamicLayoutUnbounded:(BOOL)unbounded
{
  if (self->_dynamicLayoutUnbounded != unbounded)
  {
    self->_dynamicLayoutUnbounded = unbounded;
    [(CCUIRoundButton *)self->_buttonView setDynamicLayoutUnbounded:?];

    [(CCUILabeledRoundButton *)self setNeedsLayout];
  }
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  requiredVisualStyleCategories = [(CCUILabeledRoundButton *)self requiredVisualStyleCategories];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  v7 = [requiredVisualStyleCategories containsObject:v6];

  if (v7)
  {
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:category];
    v10 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v15.receiver = self;
      v15.super_class = CCUILabeledRoundButton;
      v12 = [(CCUILabeledRoundButton *)&v15 visualStylingProviderForCategory:category];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSArray)requiredVisualStyleCategories
{
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F4D5A808, 0}];
  requiredVisualStyleCategories = [(CCUIRoundButton *)self->_buttonView requiredVisualStyleCategories];
  [v3 addObjectsFromArray:requiredVisualStyleCategories];

  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(CCUILabeledRoundButton *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  v8 = [requiredVisualStyleCategories containsObject:v7];

  if (v8)
  {
    categoriesToVisualStylingProviders = self->_categoriesToVisualStylingProviders;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:category];
    v11 = [(NSMutableDictionary *)categoriesToVisualStylingProviders objectForKey:v10];

    if (v11 == providerCopy)
    {
LABEL_10:

      goto LABEL_11;
    }

    v12 = self->_categoriesToVisualStylingProviders;
    if (providerCopy)
    {
      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = self->_categoriesToVisualStylingProviders;
        self->_categoriesToVisualStylingProviders = v13;

        v12 = self->_categoriesToVisualStylingProviders;
      }

      v15 = [MEMORY[0x1E696AD98] numberWithInteger:category];
      [(NSMutableDictionary *)v12 setObject:providerCopy forKey:v15];
    }

    else
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:category];
      [(NSMutableDictionary *)v12 removeObjectForKey:v16];

      if ([(NSMutableDictionary *)self->_categoriesToVisualStylingProviders count])
      {
        goto LABEL_9;
      }

      v15 = self->_categoriesToVisualStylingProviders;
      self->_categoriesToVisualStylingProviders = 0;
    }

LABEL_9:
    [(CCUILabeledRoundButton *)self _visualStylingProvider:providerCopy didChangeForCategory:category outgoingVisualStylingProvider:v11];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_setupLabelsBounds
{
  [(CCUILabeledRoundButton *)self bounds];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  [(UILabel *)self->_titleLabel sizeThatFits:CGRectGetWidth(v19), 0.0];
  v8 = v7;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v17 = CGRectGetWidth(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  [(UILabel *)self->_subtitleLabel sizeThatFits:CGRectGetWidth(v21), 0.0];
  v10 = v9;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v11 = CGRectGetWidth(v22);
  font = [(UILabel *)self->_titleLabel font];
  [font _bodyLeading];
  v14 = v13;

  if (v14 == 0.0 || vcvtmd_s64_f64(v8 / v14) < 2)
  {
    if ([(UILabel *)self->_subtitleLabel numberOfLines]== 1)
    {
      [(UILabel *)self->_subtitleLabel setNumberOfLines:2];
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      [(UILabel *)self->_subtitleLabel sizeThatFits:CGRectGetWidth(v23), 0.0];
      v10 = v16;
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v11 = CGRectGetWidth(v24);
    }
  }

  else
  {
    [(UILabel *)self->_subtitleLabel setNumberOfLines:1];
    [(UILabel *)self->_subtitleLabel sizeThatFits:width, height];
    v10 = v15;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __44__CCUILabeledRoundButton__setupLabelsBounds__block_invoke;
  v18[3] = &unk_1E83EA8A8;
  v18[4] = self;
  *&v18[5] = v17;
  *&v18[6] = v8;
  *&v18[7] = v11;
  v18[8] = v10;
  [MEMORY[0x1E69DD250] performWithoutAnimation:{v18, *&v17}];
}

uint64_t __44__CCUILabeledRoundButton__setupLabelsBounds__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [*(*(a1 + 32) + 504) setBounds:{*MEMORY[0x1E695EFF8], v3, *(a1 + 40), *(a1 + 48)}];
  v4 = *(*(a1 + 32) + 512);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v4 setBounds:{v2, v3, v5, v6}];
}

- (void)_layoutLabels
{
  buttonView = [(CCUILabeledRoundButton *)self buttonView];
  [buttonView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_titleLabel bounds];
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  CGRectGetMidX(v16);
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  CGRectGetMaxY(v17);
  titleLabel = self->_titleLabel;
  [(UILabel *)titleLabel bounds];
  UIRectCenteredAboutPointScale();
  [(UILabel *)titleLabel setFrame:?];
  [(UILabel *)self->_subtitleLabel bounds];
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  CGRectGetMidX(v18);
  [(UILabel *)self->_titleLabel frame];
  CGRectGetMaxY(v19);
  font = [(UILabel *)self->_subtitleLabel font];
  [font _leading];

  subtitleLabel = self->_subtitleLabel;
  [(UILabel *)subtitleLabel bounds];
  UIRectCenteredAboutPointScale();

  [(UILabel *)subtitleLabel setFrame:?];
}

- (void)_contentSizeCategoryDidChange
{
  [(CCUILabeledRoundButton *)self _updateFonts];

  [(CCUILabeledRoundButton *)self setNeedsLayout];
}

- (void)_updateFonts
{
  traitCollection = [(CCUILabeledRoundButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, self->_contentSizeCategoryThreshold);
  if (v4 == NSOrderedDescending)
  {
    v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:self->_contentSizeCategoryThreshold];

    v6 = v5;
  }

  else
  {
    v6 = traitCollection;
  }

  v19 = v6;
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08] compatibleWithTraitCollection:v6];
  v8 = MEMORY[0x1E69DB878];
  [v7 pointSize];
  v9 = [v8 boldSystemFontOfSize:?];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  if (v4 == NSOrderedDescending && IsAccessibilityCategory)
  {
    v12 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDB8] compatibleWithTraitCollection:v19];
    v13 = MEMORY[0x1E69DB878];
    [v12 pointSize];
    v14 = [v13 boldSystemFontOfSize:?];

    v15 = MEMORY[0x1E69DB878];
    [v12 pointSize];
    v17 = [v15 systemFontOfSize:v16 + -2.0];

    v7 = v17;
    v9 = v14;
  }

  [(UILabel *)self->_titleLabel setFont:v9];
  [(UILabel *)self->_subtitleLabel setFont:v7];
}

- (BOOL)_shouldUseLargeTextLayout
{
  traitCollection = [(CCUILabeledRoundButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (void)_visualStylingProvider:(id)provider didChangeForCategory:(int64_t)category outgoingVisualStylingProvider:(id)stylingProvider
{
  providerCopy = provider;
  stylingProviderCopy = stylingProvider;
  v9 = stylingProviderCopy;
  if (category == 1)
  {
    [stylingProviderCopy stopAutomaticallyUpdatingView:self->_titleLabel];
    [v9 stopAutomaticallyUpdatingView:self->_subtitleLabel];
    [providerCopy automaticallyUpdateView:self->_titleLabel withStyle:0];
    [providerCopy automaticallyUpdateView:self->_subtitleLabel withStyle:0];
  }

  requiredVisualStyleCategories = [(CCUIRoundButton *)self->_buttonView requiredVisualStyleCategories];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  v12 = [requiredVisualStyleCategories containsObject:v11];

  if (v12)
  {
    [(CCUIRoundButton *)self->_buttonView setVisualStylingProvider:providerCopy forCategory:category];
  }

  [(CCUILabeledRoundButton *)self setNeedsLayout];
}

@end