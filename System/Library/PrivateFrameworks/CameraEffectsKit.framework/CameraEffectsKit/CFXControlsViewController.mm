@interface CFXControlsViewController
- (CFXEffectBrowserContentPresenterViewController)effectBrowserContentPresenterViewController;
- (CGPoint)effectsPickerCenter;
- (UIView)controlsContainerView;
- (id)effectsPickerSnapshot;
- (void)setEffectsPickerDrawer:(id)drawer;
- (void)viewDidLoad;
@end

@implementation CFXControlsViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CFXControlsViewController;
  [(CFXControlsViewController *)&v8 viewDidLoad];
  view = [(CFXControlsViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    effectBrowserContentPresenterViewController = [(CFXControlsViewController *)self effectBrowserContentPresenterViewController];

    if (effectBrowserContentPresenterViewController)
    {
      effectBrowserContentPresenterViewController2 = [(CFXControlsViewController *)self effectBrowserContentPresenterViewController];
      [(UIViewController *)self jfxAddChildViewController:effectBrowserContentPresenterViewController2];
    }
  }
}

- (void)setEffectsPickerDrawer:(id)drawer
{
  v26[4] = *MEMORY[0x277D85DE8];
  drawerCopy = drawer;
  effectsPickerDrawer = self->_effectsPickerDrawer;
  if (effectsPickerDrawer != drawerCopy)
  {
    if (effectsPickerDrawer)
    {
      [(UIView *)effectsPickerDrawer removeFromSuperview];
    }

    if (drawerCopy)
    {
      [(CFXControlsViewController *)self loadViewIfNeeded];
      controlsContainerView = [(CFXControlsViewController *)self controlsContainerView];
      [controlsContainerView addSubview:drawerCopy];

      [(UIView *)drawerCopy setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = MEMORY[0x277CCAAD0];
      leadingAnchor = [(UIView *)drawerCopy leadingAnchor];
      controlsContainerView2 = [(CFXControlsViewController *)self controlsContainerView];
      leadingAnchor2 = [controlsContainerView2 leadingAnchor];
      v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v26[0] = v22;
      trailingAnchor = [(UIView *)drawerCopy trailingAnchor];
      controlsContainerView3 = [(CFXControlsViewController *)self controlsContainerView];
      trailingAnchor2 = [controlsContainerView3 trailingAnchor];
      v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v26[1] = v17;
      topAnchor = [(UIView *)drawerCopy topAnchor];
      controlsContainerView4 = [(CFXControlsViewController *)self controlsContainerView];
      topAnchor2 = [controlsContainerView4 topAnchor];
      v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v26[2] = v9;
      bottomAnchor = [(UIView *)drawerCopy bottomAnchor];
      controlsContainerView5 = [(CFXControlsViewController *)self controlsContainerView];
      bottomAnchor2 = [controlsContainerView5 bottomAnchor];
      v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v26[3] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
      [v18 activateConstraints:v14];
    }

    objc_storeStrong(&self->_effectsPickerDrawer, drawer);
  }
}

- (id)effectsPickerSnapshot
{
  effectsBrowser = [(CFXControlsViewController *)self effectsBrowser];
  [effectsBrowser frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view = [(CFXControlsViewController *)self view];
  v13 = [view resizableSnapshotViewFromRect:0 afterScreenUpdates:v5 withCapInsets:{v7, v9, v11, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v13;
}

- (CGPoint)effectsPickerCenter
{
  effectsBrowser = [(CFXControlsViewController *)self effectsBrowser];
  [effectsBrowser center];
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom && !self->_effectBrowserContentPresenterViewController)
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