@interface CCUIButtonModuleViewController
- (BOOL)hasGlyph;
- (CCUIButtonModuleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)glyphScale;
- (void)_applyCompactContinuousCornerRadius;
- (void)_buttonTapped:(id)a3 forEvent:(id)a4;
- (void)_updatePropertiesAnimated:(BOOL)a3;
- (void)setCompactContinuousCornerRadius:(double)a3;
- (void)setContentMetrics:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)setGlyphColor:(id)a3;
- (void)setGlyphImage:(id)a3;
- (void)setGlyphPackageDescription:(id)a3;
- (void)setGlyphScale:(double)a3;
- (void)setGlyphState:(id)a3;
- (void)setGlyphView:(id)a3;
- (void)setGridSizeClass:(int64_t)a3;
- (void)setResizing:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectedGlyphColor:(id)a3;
- (void)setSelectedGlyphImage:(id)a3;
- (void)setSelectedValueText:(id)a3;
- (void)setSupportsAccessibilityContentSizeCategories:(BOOL)a3;
- (void)setSuppressesContentTransitions:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setValueText:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
@end

@implementation CCUIButtonModuleViewController

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = CCUIButtonModuleViewController;
  v4 = a3;
  [(CCUIButtonModuleViewController *)&v5 setTitle:v4];
  [(CCUIControlTemplateView *)self->_buttonModuleView setTitle:v4, v5.receiver, v5.super_class];
}

- (void)setValueText:(id)a3
{
  v6 = a3;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [v6 copy];
    valueText = self->_valueText;
    self->_valueText = v4;

    [(CCUIButtonModuleViewController *)self _updatePropertiesAnimated:0];
  }
}

- (void)setSelectedValueText:(id)a3
{
  v6 = a3;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [v6 copy];
    selectedValueText = self->_selectedValueText;
    self->_selectedValueText = v4;

    [(CCUIButtonModuleViewController *)self _updatePropertiesAnimated:0];
  }
}

- (void)setGlyphView:(id)a3
{
  v4 = a3;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setGlyphView:v4];
}

- (void)setGlyphImage:(id)a3
{
  v4 = a3;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setGlyphImage:v4];
}

- (void)setGlyphColor:(id)a3
{
  v4 = a3;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setGlyphColor:v4];
}

- (void)setSelectedGlyphImage:(id)a3
{
  v4 = a3;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setSelectedGlyphImage:v4];
}

- (void)setSelectedGlyphColor:(id)a3
{
  v4 = a3;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setSelectedGlyphColor:v4];
}

- (void)setGlyphPackageDescription:(id)a3
{
  v4 = a3;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setGlyphPackageDescription:v4];
}

- (void)setGlyphState:(id)a3
{
  v4 = a3;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setGlyphState:v4];
}

- (void)setGlyphScale:(double)a3
{
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  buttonModuleView = self->_buttonModuleView;

  [(CCUIButtonModuleView *)buttonModuleView setGlyphScale:a3];
}

- (double)glyphScale
{
  buttonModuleView = self->_buttonModuleView;
  if (!buttonModuleView)
  {
    return 1.0;
  }

  [(CCUIButtonModuleView *)buttonModuleView glyphScale];
  return result;
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(CCUIButtonModuleViewController *)self loadViewIfNeeded];

    [(CCUIButtonModuleViewController *)self _updatePropertiesAnimated:1];
  }
}

- (void)_buttonTapped:(id)a3 forEvent:(id)a4
{
  [(CCUIButtonModuleViewController *)self buttonTapped:a3 forEvent:a4];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  [v4 _deactivateReachability];
}

- (BOOL)hasGlyph
{
  v3 = [(CCUIButtonModuleViewController *)self glyphView];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CCUIButtonModuleViewController *)self glyphImage];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(CCUIButtonModuleViewController *)self glyphPackageDescription];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (CCUIButtonModuleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = CCUIButtonModuleViewController;
  v4 = [(CCUIButtonModuleViewController *)&v12 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CONTROL_OFF" value:&stru_1F4D52330 table:0];
    valueText = v4->_valueText;
    v4->_valueText = v6;

    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CONTROL_ON" value:&stru_1F4D52330 table:0];
    selectedValueText = v4->_selectedValueText;
    v4->_selectedValueText = v9;
  }

  return v4;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CCUIButtonModuleViewController;
  [(CCUIButtonModuleViewController *)&v9 viewDidLoad];
  v3 = [(CCUIButtonModuleViewController *)self view];
  v4 = [CCUIControlTemplateView alloc];
  [v3 bounds];
  v5 = [(CCUIControlTemplateView *)v4 initWithFrame:?];
  v6 = [(CCUIButtonModuleViewController *)self title];
  [(CCUIControlTemplateView *)v5 setTitle:v6];

  [(CCUIControlTemplateView *)v5 setSupportsAccessibilityContentSizeCategories:[(CCUIButtonModuleViewController *)self supportsAccessibilityContentSizeCategories]];
  [(CCUIControlTemplateView *)v5 setSuppressesLabelTransitions:[(CCUIButtonModuleViewController *)self suppressesContentTransitions]];
  buttonModuleView = self->_buttonModuleView;
  self->_buttonModuleView = v5;
  v8 = v5;

  [v3 addSubview:self->_buttonModuleView];
  [(CCUIButtonModuleViewController *)self _updatePropertiesAnimated:0];
  [(CCUIControlTemplateView *)self->_buttonModuleView addTarget:self action:sel__buttonTouchDown_forEvent_ forControlEvents:1];
  [(CCUIControlTemplateView *)self->_buttonModuleView addTarget:self action:sel__buttonTapped_forEvent_ forControlEvents:64];
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CCUIButtonModuleViewController;
  [(CCUIButtonModuleViewController *)&v7 viewWillLayoutSubviews];
  v3 = [(CCUIButtonModuleViewController *)self isExpanded];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [(CCUIButtonModuleViewController *)self preferredExpandedContinuousCornerRadius];
    }

    else
    {
      v4 = CCUIExpandedModuleContinuousCornerRadius();
    }

    [(CCUIButtonModuleViewController *)self _applyContinuousCornerRadius:v4];
  }

  else if (![(CCUIButtonModuleViewController *)self isResizing])
  {
    [(CCUIButtonModuleViewController *)self _applyCompactContinuousCornerRadius];
  }

  [(CCUIControlTemplateView *)self->_buttonModuleView setExpanded:v3];
  buttonModuleView = self->_buttonModuleView;
  v6 = [(CCUIButtonModuleViewController *)self view];
  [v6 bounds];
  [(CCUIControlTemplateView *)buttonModuleView setFrame:?];
}

- (void)setResizing:(BOOL)a3
{
  v3 = a3;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  buttonModuleView = self->_buttonModuleView;

  [(CCUIControlTemplateView *)buttonModuleView setResizing:v3];
}

- (void)setSuppressesContentTransitions:(BOOL)a3
{
  if (self->_suppressesContentTransitions != a3)
  {
    v3 = a3;
    self->_suppressesContentTransitions = a3;
    if ([(CCUIButtonModuleViewController *)self isViewLoaded])
    {
      buttonModuleView = self->_buttonModuleView;

      [(CCUIControlTemplateView *)buttonModuleView setSuppressesLabelTransitions:v3];
    }
  }
}

- (void)setGridSizeClass:(int64_t)a3
{
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  buttonModuleView = self->_buttonModuleView;

  [(CCUIControlTemplateView *)buttonModuleView setGridSizeClass:a3];
}

- (void)setCompactContinuousCornerRadius:(double)a3
{
  if (self->_compactContinuousCornerRadius != a3)
  {
    self->_compactContinuousCornerRadius = a3;
    if ([(CCUIButtonModuleViewController *)self isResizing])
    {

      [(CCUIButtonModuleViewController *)self _applyCompactContinuousCornerRadius];
    }

    else
    {
      v4 = [(CCUIButtonModuleViewController *)self viewIfLoaded];
      [v4 setNeedsLayout];
    }
  }
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  if (self->_contentRenderingMode != a3)
  {
    self->_contentRenderingMode = a3;
    [(CCUIButtonModuleViewController *)self _updatePropertiesAnimated:0];
  }
}

- (void)setContentMetrics:(id)a3
{
  v4 = a3;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIControlTemplateView *)self->_buttonModuleView setContentMetrics:v4];
}

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  self->_expanded = a3;
  if ([(CCUIControlTemplateView *)self->_buttonModuleView isHighlighted])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __70__CCUIButtonModuleViewController_willTransitionToExpandedContentMode___block_invoke;
    v4[3] = &unk_1E83EA478;
    v4[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
  }
}

- (void)setSupportsAccessibilityContentSizeCategories:(BOOL)a3
{
  if (self->_supportsAccessibilityContentSizeCategories != a3)
  {
    self->_supportsAccessibilityContentSizeCategories = a3;
    [(CCUIControlTemplateView *)self->_buttonModuleView setSupportsAccessibilityContentSizeCategories:?];
  }
}

- (void)_applyCompactContinuousCornerRadius
{
  [(CCUIButtonModuleViewController *)self compactContinuousCornerRadius];

  [(CCUIButtonModuleViewController *)self _applyContinuousCornerRadius:?];
}

- (void)_updatePropertiesAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CCUIButtonModuleViewController *)self appearsSelected];
  if (v5)
  {
    [(CCUIButtonModuleViewController *)self selectedValueText];
  }

  else
  {
    [(CCUIButtonModuleViewController *)self valueText];
  }
  v6 = ;
  buttonModuleView = self->_buttonModuleView;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__CCUIButtonModuleViewController__updatePropertiesAnimated___block_invoke;
  v9[3] = &unk_1E83EA4A0;
  v11 = v5;
  v10 = v6;
  v8 = v6;
  [(CCUIControlTemplateView *)buttonModuleView updateProperties:v9 animated:v3];
}

void __60__CCUIButtonModuleViewController__updatePropertiesAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setSelected:v3];
  [v4 setSubtitle:*(a1 + 32)];
}

@end