@interface CCUIToggleViewController
- (CCUIToggleModule)module;
- (void)_reconfigureView;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)reconfigureView;
- (void)refreshStateAnimated:(BOOL)animated;
- (void)setContentRenderingMode:(unint64_t)mode;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CCUIToggleViewController

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  v5 = objc_loadWeakRetained(&self->_module);
  [v5 setSelected:{objc_msgSend(v5, "isSelected") ^ 1}];

  WeakRetained = objc_loadWeakRetained(&self->_module);
  -[CCUIButtonModuleViewController setSelected:](self, "setSelected:", [WeakRetained isSelected]);
}

- (void)refreshStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__CCUIToggleViewController_refreshStateAnimated___block_invoke;
  aBlock[3] = &unk_1E83EA478;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (animatedCopy)
  {
    viewIfLoaded = [(CCUIToggleViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    [CCUIContentModuleContext performWithoutAnimationWhileHiddenInWindow:window actions:v5];
  }

  else
  {
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

void __49__CCUIToggleViewController_refreshStateAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained(v2 + 130);
  [v2 setSelected:{objc_msgSend(WeakRetained, "isSelected")}];

  v4 = *(a1 + 32);
  v6 = objc_loadWeakRetained(v4 + 130);
  v5 = [v6 glyphState];
  [v4 setGlyphState:v5];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CCUIToggleViewController;
  [(CCUIButtonModuleViewController *)&v3 viewDidLoad];
  [(CCUIToggleViewController *)self reconfigureView];
  [(CCUIToggleViewController *)self refreshStateAnimated:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CCUIToggleViewController;
  [(CCUIToggleViewController *)&v4 viewWillAppear:appear];
  [(CCUIToggleViewController *)self refreshStateAnimated:0];
}

- (void)reconfigureView
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__CCUIToggleViewController_reconfigureView__block_invoke;
  v2[3] = &unk_1E83EA478;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

- (void)_reconfigureView
{
  WeakRetained = objc_loadWeakRetained(&self->_module);
  title = [WeakRetained title];
  [(CCUIButtonModuleViewController *)self setTitle:title];

  v5 = objc_loadWeakRetained(&self->_module);
  valueText = [v5 valueText];
  [(CCUIButtonModuleViewController *)self setValueText:valueText];

  v7 = objc_loadWeakRetained(&self->_module);
  selectedValueText = [v7 selectedValueText];
  [(CCUIButtonModuleViewController *)self setSelectedValueText:selectedValueText];

  v9 = objc_loadWeakRetained(&self->_module);
  iconGlyph = [v9 iconGlyph];
  [(CCUIButtonModuleViewController *)self setGlyphImage:iconGlyph];

  v11 = objc_loadWeakRetained(&self->_module);
  selectedIconGlyph = [v11 selectedIconGlyph];
  [(CCUIButtonModuleViewController *)self setSelectedGlyphImage:selectedIconGlyph];

  v13 = objc_loadWeakRetained(&self->_module);
  selectedColor = [v13 selectedColor];
  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:selectedColor];

  v15 = objc_loadWeakRetained(&self->_module);
  glyphPackageDescription = [v15 glyphPackageDescription];
  [(CCUIButtonModuleViewController *)self setGlyphPackageDescription:glyphPackageDescription];

  v17 = objc_loadWeakRetained(&self->_module);
  [v17 glyphScale];
  [(CCUIButtonModuleViewController *)self setGlyphScale:?];
}

- (void)setContentRenderingMode:(unint64_t)mode
{
  v6.receiver = self;
  v6.super_class = CCUIToggleViewController;
  if ([(CCUIButtonModuleViewController *)&v6 contentRenderingMode]!= mode)
  {
    v5.receiver = self;
    v5.super_class = CCUIToggleViewController;
    [(CCUIButtonModuleViewController *)&v5 setContentRenderingMode:mode];
    [(CCUIToggleViewController *)self refreshStateAnimated:0];
  }
}

- (CCUIToggleModule)module
{
  WeakRetained = objc_loadWeakRetained(&self->_module);

  return WeakRetained;
}

@end