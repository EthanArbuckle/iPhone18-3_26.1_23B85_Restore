@interface CCUISliderModuleViewController
- (BOOL)_isSliderInteractive;
- (CCUIBaseSliderView)sliderView;
- (id)containerViewsForPlatterTreatment;
- (id)createSliderView;
- (void)_applyCompactContinuousCornerRadius;
- (void)setContentMetrics:(id)a3;
- (void)setGlyphState:(id)a3;
- (void)setGridSizeClass:(int64_t)a3;
- (void)setSelectedGlyphColor:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
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
  v3 = [(CCUISliderModuleViewController *)self createSliderView];
  [(CCUIBaseSliderView *)v3 setAutoresizingMask:18];
  [(CCUIBaseSliderView *)v3 setUserInteractionEnabled:[(CCUISliderModuleViewController *)self _isSliderGridSizeClass]];
  -[CCUIBaseSliderView setInteractiveWhenUnexpanded:](v3, "setInteractiveWhenUnexpanded:", ([objc_opt_class() supportedGridSizeClasses] >> 1) & 1);
  v4 = [(CCUIButtonModuleViewController *)self contentMetrics];
  [(CCUIBaseSliderView *)v3 setContentMetrics:v4];

  sliderView = self->_sliderView;
  self->_sliderView = v3;
  v6 = v3;

  v7 = [(CCUISliderModuleViewController *)self view];
  v8 = [(CCUIButtonModuleViewController *)self buttonView];
  [v7 insertSubview:v6 belowSubview:v8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CCUISliderModuleViewController;
  v7 = a4;
  [(CCUISliderModuleViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__CCUISliderModuleViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E83EA620;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
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
  v3 = [(CCUIButtonModuleViewController *)self buttonView];
  v4 = [(CCUISliderModuleViewController *)self sliderView];
  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    [(CCUISliderModuleViewController *)self preferredExpandedContinuousCornerRadius];
    [v4 setContinuousSliderCornerRadius:?];
  }

  v5 = [objc_opt_class() _compactStateAlwaysDisplaysSliderGlyph];
  v6 = [(CCUISliderModuleViewController *)self _isSliderInteractive];
  v7 = 1.0;
  if (v6)
  {
    v7 = 0.0;
  }

  [v3 setAlpha:v7];
  if (v6 || v5)
  {
    v8 = [(CCUIButtonModuleViewController *)self isExpanded]^ 1;
  }

  else
  {
    v8 = 0;
  }

  [v4 setGlyphVisible:v8];
  [v4 setValueVisible:v6];
}

- (void)setSelectedGlyphColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = CCUISliderModuleViewController;
  v4 = a3;
  [(CCUIButtonModuleViewController *)&v6 setSelectedGlyphColor:v4];
  v5 = [(CCUISliderModuleViewController *)self sliderView:v6.receiver];
  [v5 setGlyphTintColor:v4];
}

- (void)setGlyphState:(id)a3
{
  v6.receiver = self;
  v6.super_class = CCUISliderModuleViewController;
  v4 = a3;
  [(CCUIButtonModuleViewController *)&v6 setGlyphState:v4];
  v5 = [(CCUISliderModuleViewController *)self sliderView:v6.receiver];
  [v5 setGlyphState:v4];
}

- (void)setGridSizeClass:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = CCUISliderModuleViewController;
  if ([(CCUIButtonModuleViewController *)&v10 gridSizeClass]!= a3)
  {
    v9.receiver = self;
    v9.super_class = CCUISliderModuleViewController;
    [(CCUIButtonModuleViewController *)&v9 setGridSizeClass:a3];
    v5 = [(CCUISliderModuleViewController *)self view];
    [v5 setNeedsLayout];
    [v5 layoutIfNeeded];
    v6 = [(CCUIButtonModuleViewController *)self isExpanded];
    v7 = [(CCUISliderModuleViewController *)self _isSliderGridSizeClass];
    v8 = [(CCUISliderModuleViewController *)self sliderView];
    [v8 setUserInteractionEnabled:v6 || v7];
  }
}

- (void)setContentMetrics:(id)a3
{
  v6.receiver = self;
  v6.super_class = CCUISliderModuleViewController;
  v4 = a3;
  [(CCUIButtonModuleViewController *)&v6 setContentMetrics:v4];
  v5 = [(CCUISliderModuleViewController *)self sliderView:v6.receiver];
  [v5 setContentMetrics:v4];
}

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CCUISliderModuleViewController;
  [(CCUIButtonModuleViewController *)&v7 willTransitionToExpandedContentMode:?];
  v5 = [(CCUISliderModuleViewController *)self _isSliderGridSizeClass];
  v6 = [(CCUISliderModuleViewController *)self sliderView];
  [v6 setUserInteractionEnabled:a3 || v5];
}

- (void)_applyCompactContinuousCornerRadius
{
  v4.receiver = self;
  v4.super_class = CCUISliderModuleViewController;
  [(CCUIButtonModuleViewController *)&v4 _applyCompactContinuousCornerRadius];
  v3 = [(CCUISliderModuleViewController *)self sliderView];
  [(CCUIButtonModuleViewController *)self compactContinuousCornerRadius];
  [v3 setContinuousSliderCornerRadius:?];
}

- (id)containerViewsForPlatterTreatment
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(CCUISliderModuleViewController *)self sliderView];
  v3 = [v2 elasticContentView];
  v6[0] = v3;
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
  v4 = [(CCUISliderModuleViewController *)self view];
  [v4 bounds];
  v5 = [(CCUIBaseSliderView *)v3 initWithFrame:?];

  return v5;
}

@end