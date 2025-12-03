@interface CCUIButtonModuleViewController
- (BOOL)hasGlyph;
- (CCUIButtonModuleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)glyphScale;
- (void)_applyCompactContinuousCornerRadius;
- (void)_buttonTapped:(id)tapped forEvent:(id)event;
- (void)_updatePropertiesAnimated:(BOOL)animated;
- (void)setCompactContinuousCornerRadius:(double)radius;
- (void)setContentMetrics:(id)metrics;
- (void)setContentRenderingMode:(unint64_t)mode;
- (void)setGlyphColor:(id)color;
- (void)setGlyphImage:(id)image;
- (void)setGlyphPackageDescription:(id)description;
- (void)setGlyphScale:(double)scale;
- (void)setGlyphState:(id)state;
- (void)setGlyphView:(id)view;
- (void)setGridSizeClass:(int64_t)class;
- (void)setResizing:(BOOL)resizing;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedGlyphColor:(id)color;
- (void)setSelectedGlyphImage:(id)image;
- (void)setSelectedValueText:(id)text;
- (void)setSupportsAccessibilityContentSizeCategories:(BOOL)categories;
- (void)setSuppressesContentTransitions:(BOOL)transitions;
- (void)setTitle:(id)title;
- (void)setValueText:(id)text;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation CCUIButtonModuleViewController

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = CCUIButtonModuleViewController;
  titleCopy = title;
  [(CCUIButtonModuleViewController *)&v5 setTitle:titleCopy];
  [(CCUIControlTemplateView *)self->_buttonModuleView setTitle:titleCopy, v5.receiver, v5.super_class];
}

- (void)setValueText:(id)text
{
  textCopy = text;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [textCopy copy];
    valueText = self->_valueText;
    self->_valueText = v4;

    [(CCUIButtonModuleViewController *)self _updatePropertiesAnimated:0];
  }
}

- (void)setSelectedValueText:(id)text
{
  textCopy = text;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [textCopy copy];
    selectedValueText = self->_selectedValueText;
    self->_selectedValueText = v4;

    [(CCUIButtonModuleViewController *)self _updatePropertiesAnimated:0];
  }
}

- (void)setGlyphView:(id)view
{
  viewCopy = view;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setGlyphView:viewCopy];
}

- (void)setGlyphImage:(id)image
{
  imageCopy = image;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setGlyphImage:imageCopy];
}

- (void)setGlyphColor:(id)color
{
  colorCopy = color;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setGlyphColor:colorCopy];
}

- (void)setSelectedGlyphImage:(id)image
{
  imageCopy = image;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setSelectedGlyphImage:imageCopy];
}

- (void)setSelectedGlyphColor:(id)color
{
  colorCopy = color;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setSelectedGlyphColor:colorCopy];
}

- (void)setGlyphPackageDescription:(id)description
{
  descriptionCopy = description;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setGlyphPackageDescription:descriptionCopy];
}

- (void)setGlyphState:(id)state
{
  stateCopy = state;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIButtonModuleView *)self->_buttonModuleView setGlyphState:stateCopy];
}

- (void)setGlyphScale:(double)scale
{
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  buttonModuleView = self->_buttonModuleView;

  [(CCUIButtonModuleView *)buttonModuleView setGlyphScale:scale];
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

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(CCUIButtonModuleViewController *)self loadViewIfNeeded];

    [(CCUIButtonModuleViewController *)self _updatePropertiesAnimated:1];
  }
}

- (void)_buttonTapped:(id)tapped forEvent:(id)event
{
  [(CCUIButtonModuleViewController *)self buttonTapped:tapped forEvent:event];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] _deactivateReachability];
}

- (BOOL)hasGlyph
{
  glyphView = [(CCUIButtonModuleViewController *)self glyphView];
  if (glyphView)
  {
    v4 = 1;
  }

  else
  {
    glyphImage = [(CCUIButtonModuleViewController *)self glyphImage];
    if (glyphImage)
    {
      v4 = 1;
    }

    else
    {
      glyphPackageDescription = [(CCUIButtonModuleViewController *)self glyphPackageDescription];
      v4 = glyphPackageDescription != 0;
    }
  }

  return v4;
}

- (CCUIButtonModuleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = CCUIButtonModuleViewController;
  v4 = [(CCUIButtonModuleViewController *)&v12 initWithNibName:name bundle:bundle];
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
  view = [(CCUIButtonModuleViewController *)self view];
  v4 = [CCUIControlTemplateView alloc];
  [view bounds];
  v5 = [(CCUIControlTemplateView *)v4 initWithFrame:?];
  title = [(CCUIButtonModuleViewController *)self title];
  [(CCUIControlTemplateView *)v5 setTitle:title];

  [(CCUIControlTemplateView *)v5 setSupportsAccessibilityContentSizeCategories:[(CCUIButtonModuleViewController *)self supportsAccessibilityContentSizeCategories]];
  [(CCUIControlTemplateView *)v5 setSuppressesLabelTransitions:[(CCUIButtonModuleViewController *)self suppressesContentTransitions]];
  buttonModuleView = self->_buttonModuleView;
  self->_buttonModuleView = v5;
  v8 = v5;

  [view addSubview:self->_buttonModuleView];
  [(CCUIButtonModuleViewController *)self _updatePropertiesAnimated:0];
  [(CCUIControlTemplateView *)self->_buttonModuleView addTarget:self action:sel__buttonTouchDown_forEvent_ forControlEvents:1];
  [(CCUIControlTemplateView *)self->_buttonModuleView addTarget:self action:sel__buttonTapped_forEvent_ forControlEvents:64];
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CCUIButtonModuleViewController;
  [(CCUIButtonModuleViewController *)&v7 viewWillLayoutSubviews];
  isExpanded = [(CCUIButtonModuleViewController *)self isExpanded];
  if (isExpanded)
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

  [(CCUIControlTemplateView *)self->_buttonModuleView setExpanded:isExpanded];
  buttonModuleView = self->_buttonModuleView;
  view = [(CCUIButtonModuleViewController *)self view];
  [view bounds];
  [(CCUIControlTemplateView *)buttonModuleView setFrame:?];
}

- (void)setResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  buttonModuleView = self->_buttonModuleView;

  [(CCUIControlTemplateView *)buttonModuleView setResizing:resizingCopy];
}

- (void)setSuppressesContentTransitions:(BOOL)transitions
{
  if (self->_suppressesContentTransitions != transitions)
  {
    transitionsCopy = transitions;
    self->_suppressesContentTransitions = transitions;
    if ([(CCUIButtonModuleViewController *)self isViewLoaded])
    {
      buttonModuleView = self->_buttonModuleView;

      [(CCUIControlTemplateView *)buttonModuleView setSuppressesLabelTransitions:transitionsCopy];
    }
  }
}

- (void)setGridSizeClass:(int64_t)class
{
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  buttonModuleView = self->_buttonModuleView;

  [(CCUIControlTemplateView *)buttonModuleView setGridSizeClass:class];
}

- (void)setCompactContinuousCornerRadius:(double)radius
{
  if (self->_compactContinuousCornerRadius != radius)
  {
    self->_compactContinuousCornerRadius = radius;
    if ([(CCUIButtonModuleViewController *)self isResizing])
    {

      [(CCUIButtonModuleViewController *)self _applyCompactContinuousCornerRadius];
    }

    else
    {
      viewIfLoaded = [(CCUIButtonModuleViewController *)self viewIfLoaded];
      [viewIfLoaded setNeedsLayout];
    }
  }
}

- (void)setContentRenderingMode:(unint64_t)mode
{
  if (self->_contentRenderingMode != mode)
  {
    self->_contentRenderingMode = mode;
    [(CCUIButtonModuleViewController *)self _updatePropertiesAnimated:0];
  }
}

- (void)setContentMetrics:(id)metrics
{
  metricsCopy = metrics;
  [(CCUIButtonModuleViewController *)self loadViewIfNeeded];
  [(CCUIControlTemplateView *)self->_buttonModuleView setContentMetrics:metricsCopy];
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  self->_expanded = mode;
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

- (void)setSupportsAccessibilityContentSizeCategories:(BOOL)categories
{
  if (self->_supportsAccessibilityContentSizeCategories != categories)
  {
    self->_supportsAccessibilityContentSizeCategories = categories;
    [(CCUIControlTemplateView *)self->_buttonModuleView setSupportsAccessibilityContentSizeCategories:?];
  }
}

- (void)_applyCompactContinuousCornerRadius
{
  [(CCUIButtonModuleViewController *)self compactContinuousCornerRadius];

  [(CCUIButtonModuleViewController *)self _applyContinuousCornerRadius:?];
}

- (void)_updatePropertiesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  appearsSelected = [(CCUIButtonModuleViewController *)self appearsSelected];
  if (appearsSelected)
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
  v11 = appearsSelected;
  v10 = v6;
  v8 = v6;
  [(CCUIControlTemplateView *)buttonModuleView updateProperties:v9 animated:animatedCopy];
}

void __60__CCUIButtonModuleViewController__updatePropertiesAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setSelected:v3];
  [v4 setSubtitle:*(a1 + 32)];
}

@end