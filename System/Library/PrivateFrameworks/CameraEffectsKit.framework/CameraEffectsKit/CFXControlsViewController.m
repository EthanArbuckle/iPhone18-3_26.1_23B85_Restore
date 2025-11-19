@interface CFXControlsViewController
- (CFXEffectBrowserContentPresenterViewController)effectBrowserContentPresenterViewController;
- (CGPoint)effectsPickerCenter;
- (UIView)controlsContainerView;
- (id)effectsPickerSnapshot;
- (void)setEffectsPickerDrawer:(id)a3;
- (void)viewDidLoad;
@end

@implementation CFXControlsViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CFXControlsViewController;
  [(CFXControlsViewController *)&v8 viewDidLoad];
  v3 = [(CFXControlsViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = [(CFXControlsViewController *)self effectBrowserContentPresenterViewController];

    if (v6)
    {
      v7 = [(CFXControlsViewController *)self effectBrowserContentPresenterViewController];
      [(UIViewController *)self jfxAddChildViewController:v7];
    }
  }
}

- (void)setEffectsPickerDrawer:(id)a3
{
  v26[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  effectsPickerDrawer = self->_effectsPickerDrawer;
  if (effectsPickerDrawer != v5)
  {
    if (effectsPickerDrawer)
    {
      [(UIView *)effectsPickerDrawer removeFromSuperview];
    }

    if (v5)
    {
      [(CFXControlsViewController *)self loadViewIfNeeded];
      v7 = [(CFXControlsViewController *)self controlsContainerView];
      [v7 addSubview:v5];

      [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = MEMORY[0x277CCAAD0];
      v24 = [(UIView *)v5 leadingAnchor];
      v25 = [(CFXControlsViewController *)self controlsContainerView];
      v23 = [v25 leadingAnchor];
      v22 = [v24 constraintEqualToAnchor:v23];
      v26[0] = v22;
      v20 = [(UIView *)v5 trailingAnchor];
      v21 = [(CFXControlsViewController *)self controlsContainerView];
      v19 = [v21 trailingAnchor];
      v17 = [v20 constraintEqualToAnchor:v19];
      v26[1] = v17;
      v15 = [(UIView *)v5 topAnchor];
      v16 = [(CFXControlsViewController *)self controlsContainerView];
      v8 = [v16 topAnchor];
      v9 = [v15 constraintEqualToAnchor:v8];
      v26[2] = v9;
      v10 = [(UIView *)v5 bottomAnchor];
      v11 = [(CFXControlsViewController *)self controlsContainerView];
      v12 = [v11 bottomAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];
      v26[3] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
      [v18 activateConstraints:v14];
    }

    objc_storeStrong(&self->_effectsPickerDrawer, a3);
  }
}

- (id)effectsPickerSnapshot
{
  v3 = [(CFXControlsViewController *)self effectsBrowser];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CFXControlsViewController *)self view];
  v13 = [v12 resizableSnapshotViewFromRect:0 afterScreenUpdates:v5 withCapInsets:{v7, v9, v11, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v13;
}

- (CGPoint)effectsPickerCenter
{
  v2 = [(CFXControlsViewController *)self effectsBrowser];
  [v2 center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CFXEffectBrowserContentPresenterViewController)effectBrowserContentPresenterViewController
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4 && !self->_effectBrowserContentPresenterViewController)
  {
    v5 = objc_opt_new();
    effectBrowserContentPresenterViewController = self->_effectBrowserContentPresenterViewController;
    self->_effectBrowserContentPresenterViewController = v5;
  }

  v7 = self->_effectBrowserContentPresenterViewController;

  return v7;
}

- (UIView)controlsContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_controlsContainerView);

  return WeakRetained;
}

@end