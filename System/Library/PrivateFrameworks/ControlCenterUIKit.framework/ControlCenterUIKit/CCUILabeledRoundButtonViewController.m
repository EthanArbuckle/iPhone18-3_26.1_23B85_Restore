@interface CCUILabeledRoundButtonViewController
- (CCUILabeledRoundButtonViewController)initWithGlyphImage:(id)a3 highlightColor:(id)a4 highlightTintColor:(id)a5 useLightStyle:(BOOL)a6;
- (CCUILabeledRoundButtonViewController)initWithGlyphPackageDescription:(id)a3 highlightColor:(id)a4 useLightStyle:(BOOL)a5;
- (UIControl)button;
- (void)buttonTapped:(id)a3;
- (void)loadView;
- (void)setContentSizeCategoryThreshold:(id)a3;
- (void)setDynamicLayoutEnabled:(BOOL)a3;
- (void)setDynamicLayoutUnbounded:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setGlyphImage:(id)a3;
- (void)setGlyphPackageDescription:(id)a3;
- (void)setGlyphState:(id)a3;
- (void)setHighlightColor:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUseAlternateBackground:(BOOL)a3;
- (void)setUseAutomaticSymbolColors:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation CCUILabeledRoundButtonViewController

- (CCUILabeledRoundButtonViewController)initWithGlyphImage:(id)a3 highlightColor:(id)a4 highlightTintColor:(id)a5 useLightStyle:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = CCUILabeledRoundButtonViewController;
  v14 = [(CCUILabeledRoundButtonViewController *)&v21 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_glyphImage, a3);
    v15->_glyphScale = 1.0;
    v16 = [v12 copy];
    highlightColor = v15->_highlightColor;
    v15->_highlightColor = v16;

    v18 = [v13 copy];
    highlightTintColor = v15->_highlightTintColor;
    v15->_highlightTintColor = v18;

    v15->_toggleStateOnTap = 1;
    v15->_useLightStyle = a6;
    v15->_contentSizeCategoryThreshold = *MEMORY[0x1E69DDC60];
  }

  return v15;
}

- (CCUILabeledRoundButtonViewController)initWithGlyphPackageDescription:(id)a3 highlightColor:(id)a4 useLightStyle:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CCUILabeledRoundButtonViewController;
  v11 = [(CCUILabeledRoundButtonViewController *)&v14 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_glyphPackageDescription, a3);
    v12->_glyphScale = 1.0;
    objc_storeStrong(&v12->_highlightColor, a4);
    v12->_toggleStateOnTap = 1;
    v12->_useLightStyle = a5;
    v12->_contentSizeCategoryThreshold = *MEMORY[0x1E69DDC60];
  }

  return v12;
}

- (void)buttonTapped:(id)a3
{
  if (self->_toggleStateOnTap)
  {
    button = self->_button;
    v5 = [(UIControl *)button isSelected]^ 1;

    [(UIControl *)button setSelected:v5];
  }
}

- (void)setHighlightColor:(id)a3
{
  objc_storeStrong(&self->_highlightColor, a3);
  v5 = a3;
  [(CCUILabeledRoundButton *)self->_buttonContainer setHighlightColor:v5];
}

- (void)setGlyphImage:(id)a3
{
  v5 = a3;
  if (self->_glyphImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_glyphImage, a3);
    [(CCUILabeledRoundButton *)self->_buttonContainer setGlyphImage:v7];
    v6 = [(CCUILabeledRoundButtonViewController *)self view];
    [v6 setNeedsLayout];

    v5 = v7;
  }
}

- (void)setGlyphPackageDescription:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_glyphPackageDescription, a3);
    [(CCUILabeledRoundButton *)self->_buttonContainer setGlyphPackageDescription:v5];
  }
}

- (void)setGlyphState:(id)a3
{
  objc_storeStrong(&self->_glyphState, a3);
  v5 = a3;
  [(CCUILabeledRoundButton *)self->_buttonContainer setGlyphState:v5];
}

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  [(UIControl *)self->_button setSelected:?];
  v4 = [(CCUILabeledRoundButtonViewController *)self view];
  [v4 setNeedsLayout];
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = CCUILabeledRoundButtonViewController;
  v4 = a3;
  [(CCUILabeledRoundButtonViewController *)&v5 setTitle:v4];
  [(CCUILabeledRoundButton *)self->_buttonContainer setTitle:v4, v5.receiver, v5.super_class];
}

- (void)setSubtitle:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  [(CCUILabeledRoundButton *)self->_buttonContainer setSubtitle:v6];
}

- (void)setUseAlternateBackground:(BOOL)a3
{
  if (self->_useAlternateBackground != a3)
  {
    self->_useAlternateBackground = a3;
    [(CCUILabeledRoundButton *)self->_buttonContainer setUseAlternateBackground:?];
    v5 = [(CCUILabeledRoundButtonViewController *)self view];
    [v5 setNeedsLayout];
  }
}

- (void)setUseAutomaticSymbolColors:(BOOL)a3
{
  if (self->_useAutomaticSymbolColors != a3)
  {
    self->_useAutomaticSymbolColors = a3;
    [(CCUILabeledRoundButton *)self->_buttonContainer setUseAutomaticSymbolColors:?];
    v5 = [(CCUILabeledRoundButtonViewController *)self view];
    [v5 setNeedsLayout];
  }
}

- (UIControl)button
{
  [(CCUILabeledRoundButtonViewController *)self loadViewIfNeeded];
  button = self->_button;

  return button;
}

- (void)setContentSizeCategoryThreshold:(id)a3
{
  if (self->_contentSizeCategoryThreshold != a3)
  {
    self->_contentSizeCategoryThreshold = a3;
    [(CCUILabeledRoundButton *)self->_buttonContainer setContentSizeCategoryThreshold:?];
  }
}

- (void)setDynamicLayoutEnabled:(BOOL)a3
{
  if (self->_dynamicLayoutEnabled != a3)
  {
    self->_dynamicLayoutEnabled = a3;
    [(CCUILabeledRoundButton *)self->_buttonContainer setDynamicLayoutEnabled:?];
    v5 = [(CCUILabeledRoundButtonViewController *)self viewIfLoaded];
    [v5 setNeedsLayout];
  }
}

- (void)setDynamicLayoutUnbounded:(BOOL)a3
{
  if (self->_dynamicLayoutUnbounded != a3)
  {
    self->_dynamicLayoutUnbounded = a3;
    [(CCUILabeledRoundButton *)self->_buttonContainer setDynamicLayoutUnbounded:?];
    v5 = [(CCUILabeledRoundButtonViewController *)self viewIfLoaded];
    [v5 setNeedsLayout];
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
  v6 = [(CCUILabeledRoundButtonViewController *)self title];
  [(CCUILabeledRoundButton *)v5 setTitle:v6];

  v7 = self->_buttonContainer;
  v8 = [(CCUILabeledRoundButtonViewController *)self subtitle];
  [(CCUILabeledRoundButton *)v7 setSubtitle:v8];

  [(CCUILabeledRoundButton *)self->_buttonContainer setContentSizeCategoryThreshold:self->_contentSizeCategoryThreshold];
  v9 = [(CCUILabeledRoundButton *)self->_buttonContainer buttonView];
  button = self->_button;
  self->_button = v9;

  [(UIControl *)self->_button addTarget:self action:sel_buttonTapped_ forControlEvents:64];
  v11 = self->_buttonContainer;

  [(CCUILabeledRoundButtonViewController *)self setView:v11];
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v9 = a3;
  v6 = [(CCUILabeledRoundButtonViewController *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    [(CCUILabeledRoundButtonViewController *)self loadViewIfNeeded];
    [(CCUILabeledRoundButton *)self->_buttonContainer setVisualStylingProvider:v9 forCategory:a4];
  }
}

@end