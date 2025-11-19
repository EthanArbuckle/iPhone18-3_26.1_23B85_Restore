@interface ScrollToTopView
- (ScrollToTopView)initWithFrame:(CGRect)a3;
- (ScrollToTopView)initWithTargetBlock:(id)a3;
- (double)defaultHeight;
- (id)_targetScrollView;
- (void)_showBars;
- (void)_tappedScrollToTopView:(id)a3;
@end

@implementation ScrollToTopView

- (ScrollToTopView)initWithTargetBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ScrollToTopView;
  v5 = [(ScrollToTopView *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    targetBlock = v5->_targetBlock;
    v5->_targetBlock = v6;

    v8 = v5;
  }

  return v5;
}

- (ScrollToTopView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = ScrollToTopView;
  v3 = [(ScrollToTopView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__tappedScrollToTopView_];
    [(ScrollToTopView *)v3 addGestureRecognizer:v4];

    v5 = v3;
  }

  return v3;
}

- (void)_tappedScrollToTopView:(id)a3
{
  v4 = [(ScrollToTopView *)self _targetScrollView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ScrollToTopView__tappedScrollToTopView___block_invoke;
  v5[3] = &unk_2781D4B18;
  v5[4] = self;
  [v4 _scrollToTopFromTouchAtScreenLocation:v5 resultHandler:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

uint64_t __42__ScrollToTopView__tappedScrollToTopView___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _showBars];
  }

  return result;
}

- (id)_targetScrollView
{
  targetBlock = self->_targetBlock;
  if (targetBlock)
  {
    targetBlock = (targetBlock)[2](targetBlock, a2);
    v2 = vars8;
  }

  return targetBlock;
}

- (void)_showBars
{
  showBarsBlock = self->_showBarsBlock;
  if (showBarsBlock)
  {
    showBarsBlock[2]();
  }
}

- (double)defaultHeight
{
  v2 = [(ScrollToTopView *)self window];
  v3 = [v2 windowScene];

  v4 = [v3 statusBarManager];
  [v4 defaultStatusBarHeightInOrientation:{objc_msgSend(v3, "interfaceOrientation")}];
  v6 = v5;

  return fmax(v6, 20.0);
}

@end