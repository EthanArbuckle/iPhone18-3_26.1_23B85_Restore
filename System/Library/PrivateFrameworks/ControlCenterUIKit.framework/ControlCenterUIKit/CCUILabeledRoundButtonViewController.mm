@interface CCUILabeledRoundButtonViewController
- (CCUILabeledRoundButtonViewController)initWithGlyphImage:(id)image highlightColor:(id)color highlightTintColor:(id)tintColor useLightStyle:(BOOL)style;
- (CCUILabeledRoundButtonViewController)initWithGlyphPackageDescription:(id)description highlightColor:(id)color useLightStyle:(BOOL)style;
- (UIControl)button;
- (void)buttonTapped:(id)tapped;
- (void)loadView;
- (void)setContentSizeCategoryThreshold:(id)threshold;
- (void)setDynamicLayoutEnabled:(BOOL)enabled;
- (void)setDynamicLayoutUnbounded:(BOOL)unbounded;
- (void)setEnabled:(BOOL)enabled;
- (void)setGlyphImage:(id)image;
- (void)setGlyphPackageDescription:(id)description;
- (void)setGlyphState:(id)state;
- (void)setHighlightColor:(id)color;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setUseAlternateBackground:(BOOL)background;
- (void)setUseAutomaticSymbolColors:(BOOL)colors;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation CCUILabeledRoundButtonViewController

- (CCUILabeledRoundButtonViewController)initWithGlyphImage:(id)image highlightColor:(id)color highlightTintColor:(id)tintColor useLightStyle:(BOOL)style
{
  imageCopy = image;
  colorCopy = color;
  tintColorCopy = tintColor;
  v21.receiver = self;
  v21.super_class = CCUILabeledRoundButtonViewController;
  v14 = [(CCUILabeledRoundButtonViewController *)&v21 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_glyphImage, image);
    v15->_glyphScale = 1.0;
    v16 = [colorCopy copy];
    highlightColor = v15->_highlightColor;
    v15->_highlightColor = v16;

    v18 = [tintColorCopy copy];
    highlightTintColor = v15->_highlightTintColor;
    v15->_highlightTintColor = v18;

    v15->_toggleStateOnTap = 1;
    v15->_useLightStyle = style;
    v15->_contentSizeCategoryThreshold = *MEMORY[0x1E69DDC60];
  }

  return v15;
}

- (CCUILabeledRoundButtonViewController)initWithGlyphPackageDescription:(id)description highlightColor:(id)color useLightStyle:(BOOL)style
{
  descriptionCopy = description;
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = CCUILabeledRoundButtonViewController;
  v11 = [(CCUILabeledRoundButtonViewController *)&v14 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_glyphPackageDescription, description);
    v12->_glyphScale = 1.0;
    objc_storeStrong(&v12->_highlightColor, color);
    v12->_toggleStateOnTap = 1;
    v12->_useLightStyle = style;
    v12->_contentSizeCategoryThreshold = *MEMORY[0x1E69DDC60];
  }

  return v12;
}

- (void)buttonTapped:(id)tapped
{
  if (self->_toggleStateOnTap)
  {
    button = self->_button;
    v5 = [(UIControl *)button isSelected]^ 1;

    [(UIControl *)button setSelected:v5];
  }
}

- (void)setHighlightColor:(id)color
{
  objc_storeStrong(&self->_highlightColor, color);
  colorCopy = color;
  [(CCUILabeledRoundButton *)self->_buttonContainer setHighlightColor:colorCopy];
}

- (void)setGlyphImage:(id)image
{
  imageCopy = image;
  if (self->_glyphImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_glyphImage, image);
    [(CCUILabeledRoundButton *)self->_buttonContainer setGlyphImage:v7];
    view = [(CCUILabeledRoundButtonViewController *)self view];
    [view setNeedsLayout];

    imageCopy = v7;
  }
}

- (void)setGlyphPackageDescription:(id)description
{
  descriptionCopy = description;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_glyphPackageDescription, description);
    [(CCUILabeledRoundButton *)self->_buttonContainer setGlyphPackageDescription:descriptionCopy];
  }
}

- (void)setGlyphState:(id)state
{
  objc_storeStrong(&self->_glyphState, state);
  stateCopy = state;
  [(CCUILabeledRoundButton *)self->_buttonContainer setGlyphState:stateCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  [(UIControl *)self->_button setSelected:?];
  view = [(CCUILabeledRoundButtonViewController *)self view];
  [view setNeedsLayout];
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = CCUILabeledRoundButtonViewController;
  titleCopy = title;
  [(CCUILabeledRoundButtonViewController *)&v5 setTitle:titleCopy];
  [(CCUILabeledRoundButton *)self->_buttonContainer setTitle:titleCopy, v5.receiver, v5.super_class];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v4 = [subtitleCopy copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  [(CCUILabeledRoundButton *)self->_buttonContainer setSubtitle:subtitleCopy];
}

- (void)setUseAlternateBackground:(BOOL)background
{
  if (self->_useAlternateBackground != background)
  {
    self->_useAlternateBackground = background;
    [(CCUILabeledRoundButton *)self->_buttonContainer setUseAlternateBackground:?];
    view = [(CCUILabeledRoundButtonViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)setUseAutomaticSymbolColors:(BOOL)colors
{
  if (self->_useAutomaticSymbolColors != colors)
  {
    self->_useAutomaticSymbolColors = colors;
    [(CCUILabeledRoundButton *)self->_buttonContainer setUseAutomaticSymbolColors:?];
    view = [(CCUILabeledRoundButtonViewController *)self view];
    [view setNeedsLayout];
  }
}

- (UIControl)button
{
  [(CCUILabeledRoundButtonViewController *)self loadViewIfNeeded];
  button = self->_button;

  return button;
}

- (void)setContentSizeCategoryThreshold:(id)threshold
{
  if (self->_contentSizeCategoryThreshold != threshold)
  {
    self->_contentSizeCategoryThreshold = threshold;
    [(CCUILabeledRoundButton *)self->_buttonContainer setContentSizeCategoryThreshold:?];
  }
}

- (void)setDynamicLayoutEnabled:(BOOL)enabled
{
  if (self->_dynamicLayoutEnabled != enabled)
  {
    self->_dynamicLayoutEnabled = enabled;
    [(CCUILabeledRoundButton *)self->_buttonContainer setDynamicLayoutEnabled:?];
    viewIfLoaded = [(CCUILabeledRoundButtonViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)setDynamicLayoutUnbounded:(BOOL)unbounded
{
  if (self->_dynamicLayoutUnbounded != unbounded)
  {
    self->_dynamicLayoutUnbounded = unbounded;
    [(CCUILabeledRoundButton *)self->_buttonContainer setDynamicLayoutUnbounded:?];
    viewIfLoaded = [(CCUILabeledRoundButtonViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)loadView
{
  if (self->_glyphImage)
  {
    v3 = [[CCUILabeledRoundButton alloc] initWithGlyphImage:self->_glyphImage highlightColor:self->_highlightColor highlightTintColor:self->_highlightTintColor useLightStyle:self->_useLightStyle];
LABEL_5:
    buttonContainer = self->_buttonContainer;
    self->_buttonContainer = v3;

    goto LABEL_6;
  }

  if (self->_glyphPackageDescription)
  {
    v3 = [[CCUILabeledRoundButton alloc] initWithGlyphPackageDescription:self->_glyphPackageDescription highlightColor:self->_highlightColor useLightStyle:self->_useLightStyle];
    goto LABEL_5;
  }

LABEL_6:
  [(CCUILabeledRoundButton *)self->_buttonContainer setGlyphScale:self->_glyphScale];
  [(CCUILabeledRoundButton *)self->_buttonContainer setDynamicLayoutEnabled:self->_dynamicLayoutEnabled];
  [(CCUILabeledRoundButton *)self->_buttonContainer setUseAlternateBackground:self->_useAlternateBackground];
  [(CCUILabeledRoundButton *)self->_buttonContainer setUseAutomaticSymbolColors:self->_useAutomaticSymbolColors];
  [(CCUILabeledRoundButton *)self->_buttonContainer setLabelsVisible:self->_labelsVisible];
  v5 = self->_buttonContainer;
  title = [(CCUILabeledRoundButtonViewController *)self title];
  [(CCUILabeledRoundButton *)v5 setTitle:title];

  v7 = self->_buttonContainer;
  subtitle = [(CCUILabeledRoundButtonViewController *)self subtitle];
  [(CCUILabeledRoundButton *)v7 setSubtitle:subtitle];

  [(CCUILabeledRoundButton *)self->_buttonContainer setContentSizeCategoryThreshold:self->_contentSizeCategoryThreshold];
  buttonView = [(CCUILabeledRoundButton *)self->_buttonContainer buttonView];
  button = self->_button;
  self->_button = buttonView;

  [(UIControl *)self->_button addTarget:self action:sel_buttonTapped_ forControlEvents:64];
  v11 = self->_buttonContainer;

  [(CCUILabeledRoundButtonViewController *)self setView:v11];
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(CCUILabeledRoundButtonViewController *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  v8 = [requiredVisualStyleCategories containsObject:v7];

  if (v8)
  {
    [(CCUILabeledRoundButtonViewController *)self loadViewIfNeeded];
    [(CCUILabeledRoundButton *)self->_buttonContainer setVisualStylingProvider:providerCopy forCategory:category];
  }
}

@end