@interface DTSSceneView
- (DTSSceneView)initWithFrame:(CGRect)frame;
- (void)_updateLayout;
- (void)layoutSubviews;
@end

@implementation DTSSceneView

- (DTSSceneView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15.receiver = self;
  v15.super_class = DTSSceneView;
  v7 = [(DTSSceneView *)&v15 initWithFrame:?];
  if (v7)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v8 = getSKViewClass_softClass;
    v20 = getSKViewClass_softClass;
    if (!getSKViewClass_softClass)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getSKViewClass_block_invoke;
      v16[3] = &unk_278F7A048;
      v16[4] = &v17;
      __getSKViewClass_block_invoke(v16);
      v8 = v18[3];
    }

    v9 = v8;
    _Block_object_dispose(&v17, 8);
    v10 = [[v8 alloc] initWithFrame:{x, y, width, height}];
    sceneView = v7->_sceneView;
    v7->_sceneView = v10;

    [(DTSSceneView *)v7 addSubview:v7->_sceneView];
    [(SKView *)v7->_sceneView setAutoresizingMask:18];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];
    [defaultCenter addObserver:v7 selector:sel__applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];
    [defaultCenter addObserver:v7 selector:sel__applicationWillEnterForeground name:*MEMORY[0x277D76648] object:0];
    v13 = v7;
  }

  return v7;
}

- (void)_updateLayout
{
  self->_shouldDelayLayout = 0;
  if (self->_didDelayLayout)
  {
    [(DTSSceneView *)self setNeedsLayout];
  }

  self->_didDelayLayout = 0;
}

- (void)layoutSubviews
{
  if (self->_shouldDelayLayout || ([MEMORY[0x277D75128] sharedApplication], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "applicationState"), v3, v4))
  {
    self->_didDelayLayout = 1;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DTSSceneView;
    [(DTSSceneView *)&v5 layoutSubviews];
  }
}

@end