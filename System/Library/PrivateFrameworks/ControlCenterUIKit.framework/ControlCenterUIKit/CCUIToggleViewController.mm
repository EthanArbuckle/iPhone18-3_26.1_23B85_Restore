@interface CCUIToggleViewController
- (CCUIToggleModule)module;
- (void)_reconfigureView;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)reconfigureView;
- (void)refreshStateAnimated:(BOOL)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CCUIToggleViewController

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  v5 = objc_loadWeakRetained(&self->_module);
  [v5 setSelected:{objc_msgSend(v5, "isSelected") ^ 1}];

  WeakRetained = objc_loadWeakRetained(&self->_module);
  -[CCUIButtonModuleViewController setSelected:](self, "setSelected:", [WeakRetained isSelected]);
}

- (void)refreshStateAnimated:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__CCUIToggleViewController_refreshStateAnimated___block_invoke;
  aBlock[3] = &unk_1E83EA478;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (v3)
  {
    v6 = [(CCUIToggleViewController *)self viewIfLoaded];
    v7 = [v6 window];
    [CCUIContentModuleContext performWithoutAnimationWhileHiddenInWindow:v7 actions:v5];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIToggleViewController;
  [(CCUIToggleViewController *)&v4 viewWillAppear:a3];
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
  v4 = [WeakRetained title];
  [(CCUIButtonModuleViewController *)self setTitle:v4];

  v5 = objc_loadWeakRetained(&self->_module);
  v6 = [v5 valueText];
  [(CCUIButtonModuleViewController *)self setValueText:v6];

  v7 = objc_loadWeakRetained(&self->_module);
  v8 = [v7 selectedValueText];
  [(CCUIButtonModuleViewController *)self setSelectedValueText:v8];

  v9 = objc_loadWeakRetained(&self->_module);
  v10 = [v9 iconGlyph];
  [(CCUIButtonModuleViewController *)self setGlyphImage:v10];

  v11 = objc_loadWeakRetained(&self->_module);
  v12 = [v11 selectedIconGlyph];
  [(CCUIButtonModuleViewController *)self setSelectedGlyphImage:v12];

  v13 = objc_loadWeakRetained(&self->_module);
  v14 = [v13 selectedColor];
  [(CCUIButtonModuleViewController *)self setSelectedGlyphColor:v14];

  v15 = objc_loadWeakRetained(&self->_module);
  v16 = [v15 glyphPackageDescription];
  [(CCUIButtonModuleViewController *)self setGlyphPackageDescription:v16];

  v17 = objc_loadWeakRetained(&self->_module);
  [v17 glyphScale];
  [(CCUIButtonModuleViewController *)self setGlyphScale:?];
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = CCUIToggleViewController;
  if ([(CCUIButtonModuleViewController *)&v6 contentRenderingMode]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CCUIToggleViewController;
    [(CCUIButtonModuleViewController *)&v5 setContentRenderingMode:a3];
    [(CCUIToggleViewController *)self refreshStateAnimated:0];
  }
}

- (CCUIToggleModule)module
{
  WeakRetained = objc_loadWeakRetained(&self->_module);

  return WeakRetained;
}

@end