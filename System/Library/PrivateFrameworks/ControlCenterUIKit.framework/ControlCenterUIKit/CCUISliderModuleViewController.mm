@interface CCUISliderModuleViewController
- (BOOL)_isSliderInteractive;
- (CCUIBaseSliderView)sliderView;
- (id)containerViewsForPlatterTreatment;
- (id)createSliderView;
- (void)_applyCompactContinuousCornerRadius;
- (void)setContentMetrics:(id)metrics;
- (void)setGlyphState:(id)state;
- (void)setGridSizeClass:(int64_t)class;
- (void)setSelectedGlyphColor:(id)color;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation CCUISliderModuleViewController

- (CCUIBaseSliderView)sliderView
{
  [(CCUISliderModuleViewController *)self loadViewIfNeeded];
  sliderView = self->_sliderView;

  return sliderView;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CCUISliderModuleViewController;
  [(CCUIButtonModuleViewController *)&v9 viewDidLoad];
  createSliderView = [(CCUISliderModuleViewController *)self createSliderView];
  [(CCUIBaseSliderView *)createSliderView setAutoresizingMask:18];
  [(CCUIBaseSliderView *)createSliderView setUserInteractionEnabled:[(CCUISliderModuleViewController *)self _isSliderGridSizeClass]];
  -[CCUIBaseSliderView setInteractiveWhenUnexpanded:](createSliderView, "setInteractiveWhenUnexpanded:", ([objc_opt_class() supportedGridSizeClasses] >> 1) & 1);
  contentMetrics = [(CCUIButtonModuleViewController *)self contentMetrics];
  [(CCUIBaseSliderView *)createSliderView setContentMetrics:contentMetrics];

  sliderView = self->_sliderView;
  self->_sliderView = createSliderView;
  v6 = createSliderView;

  view = [(CCUISliderModuleViewController *)self view];
  buttonView = [(CCUIButtonModuleViewController *)self buttonView];
  [view insertSubview:v6 belowSubview:buttonView];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CCUISliderModuleViewController;
  coordinatorCopy = coordinator;
  [(CCUISliderModuleViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__CCUISliderModuleViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E83EA620;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __85__CCUISliderModuleViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = CCUISliderModuleViewController;
  [(CCUIButtonModuleViewController *)&v9 viewWillLayoutSubviews];
  buttonView = [(CCUIButtonModuleViewController *)self buttonView];
  sliderView = [(CCUISliderModuleViewController *)self sliderView];
  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    [(CCUISliderModuleViewController *)self preferredExpandedContinuousCornerRadius];
    [sliderView setContinuousSliderCornerRadius:?];
  }

  _compactStateAlwaysDisplaysSliderGlyph = [objc_opt_class() _compactStateAlwaysDisplaysSliderGlyph];
  _isSliderInteractive = [(CCUISliderModuleViewController *)self _isSliderInteractive];
  v7 = 1.0;
  if (_isSliderInteractive)
  {
    v7 = 0.0;
  }

  [buttonView setAlpha:v7];
  if (_isSliderInteractive || _compactStateAlwaysDisplaysSliderGlyph)
  {
    v8 = [(CCUIButtonModuleViewController *)self isExpanded]^ 1;
  }

  else
  {
    v8 = 0;
  }

  [sliderView setGlyphVisible:v8];
  [sliderView setValueVisible:_isSliderInteractive];
}

- (void)setSelectedGlyphColor:(id)color
{
  v6.receiver = self;
  v6.super_class = CCUISliderModuleViewController;
  colorCopy = color;
  [(CCUIButtonModuleViewController *)&v6 setSelectedGlyphColor:colorCopy];
  v5 = [(CCUISliderModuleViewController *)self sliderView:v6.receiver];
  [v5 setGlyphTintColor:colorCopy];
}

- (void)setGlyphState:(id)state
{
  v6.receiver = self;
  v6.super_class = CCUISliderModuleViewController;
  stateCopy = state;
  [(CCUIButtonModuleViewController *)&v6 setGlyphState:stateCopy];
  v5 = [(CCUISliderModuleViewController *)self sliderView:v6.receiver];
  [v5 setGlyphState:stateCopy];
}

- (void)setGridSizeClass:(int64_t)class
{
  v10.receiver = self;
  v10.super_class = CCUISliderModuleViewController;
  if ([(CCUIButtonModuleViewController *)&v10 gridSizeClass]!= class)
  {
    v9.receiver = self;
    v9.super_class = CCUISliderModuleViewController;
    [(CCUIButtonModuleViewController *)&v9 setGridSizeClass:class];
    view = [(CCUISliderModuleViewController *)self view];
    [view setNeedsLayout];
    [view layoutIfNeeded];
    isExpanded = [(CCUIButtonModuleViewController *)self isExpanded];
    _isSliderGridSizeClass = [(CCUISliderModuleViewController *)self _isSliderGridSizeClass];
    sliderView = [(CCUISliderModuleViewController *)self sliderView];
    [sliderView setUserInteractionEnabled:isExpanded || _isSliderGridSizeClass];
  }
}

- (void)setContentMetrics:(id)metrics
{
  v6.receiver = self;
  v6.super_class = CCUISliderModuleViewController;
  metricsCopy = metrics;
  [(CCUIButtonModuleViewController *)&v6 setContentMetrics:metricsCopy];
  v5 = [(CCUISliderModuleViewController *)self sliderView:v6.receiver];
  [v5 setContentMetrics:metricsCopy];
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  v7.receiver = self;
  v7.super_class = CCUISliderModuleViewController;
  [(CCUIButtonModuleViewController *)&v7 willTransitionToExpandedContentMode:?];
  _isSliderGridSizeClass = [(CCUISliderModuleViewController *)self _isSliderGridSizeClass];
  sliderView = [(CCUISliderModuleViewController *)self sliderView];
  [sliderView setUserInteractionEnabled:mode || _isSliderGridSizeClass];
}

- (void)_applyCompactContinuousCornerRadius
{
  v4.receiver = self;
  v4.super_class = CCUISliderModuleViewController;
  [(CCUIButtonModuleViewController *)&v4 _applyCompactContinuousCornerRadius];
  sliderView = [(CCUISliderModuleViewController *)self sliderView];
  [(CCUIButtonModuleViewController *)self compactContinuousCornerRadius];
  [sliderView setContinuousSliderCornerRadius:?];
}

- (id)containerViewsForPlatterTreatment
{
  v6[1] = *MEMORY[0x1E69E9840];
  sliderView = [(CCUISliderModuleViewController *)self sliderView];
  elasticContentView = [sliderView elasticContentView];
  v6[0] = elasticContentView;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (BOOL)_isSliderInteractive
{
  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    return 1;
  }

  return [(CCUISliderModuleViewController *)self _isSliderGridSizeClass];
}

- (id)createSliderView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v3 = [CCUIBaseSliderView alloc];
  view = [(CCUISliderModuleViewController *)self view];
  [view bounds];
  v5 = [(CCUIBaseSliderView *)v3 initWithFrame:?];

  return v5;
}

@end