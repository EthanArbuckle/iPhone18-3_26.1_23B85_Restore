@interface DBLockOutViewController
- (DBLockOutViewController)initWithEnvironmentConfiguration:(id)configuration;
- (DBLockOutViewControllerDelegate)delegate;
- (id)_newLockOutViewForMode:(int64_t)mode;
- (id)_wallpaperView;
- (id)preferredFocusEnvironments;
- (void)lockOutView:(id)view didTapButtonOfType:(unint64_t)type;
- (void)lockOutViewWantsToDismiss:(id)dismiss;
- (void)setLockOutMode:(int64_t)mode animated:(BOOL)animated completion:(id)completion;
@end

@implementation DBLockOutViewController

- (DBLockOutViewController)initWithEnvironmentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = DBLockOutViewController;
  v6 = [(DBLockOutViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environmentConfiguration, configuration);
  }

  return v7;
}

- (void)setLockOutMode:(int64_t)mode animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v48 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = completionCopy;
  if (self->_lockOutMode == mode)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v10 = DBLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = DBDescriptionForLockOutMode(mode);
      *buf = 138412290;
      v47 = v11;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_INFO, "[DBLockOut] lockOutMode updating to %@", buf, 0xCu);
    }

    self->_lockOutMode = mode;
    lockOutView = [(DBLockOutViewController *)self lockOutView];

    if (lockOutView)
    {
      lockOutView2 = [(DBLockOutViewController *)self lockOutView];
      [(DBLockOutViewController *)self setLockOutView:0];
    }

    else
    {
      lockOutView2 = 0;
    }

    v14 = [(DBLockOutViewController *)self _newLockOutViewForMode:self->_lockOutMode];
    v15 = v14;
    if (v14)
    {
      [v14 setDelegate:self];
      view = [(DBLockOutViewController *)self view];
      [view addSubview:v15];

      [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
      leadingAnchor = [v15 leadingAnchor];
      view2 = [(DBLockOutViewController *)self view];
      leadingAnchor2 = [view2 leadingAnchor];
      v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v45[0] = v33;
      trailingAnchor = [v15 trailingAnchor];
      view3 = [(DBLockOutViewController *)self view];
      trailingAnchor2 = [view3 trailingAnchor];
      v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v45[1] = v29;
      topAnchor = [v15 topAnchor];
      view4 = [(DBLockOutViewController *)self view];
      topAnchor2 = [view4 topAnchor];
      [topAnchor constraintEqualToAnchor:topAnchor2];
      v18 = v37 = lockOutView2;
      v45[2] = v18;
      bottomAnchor = [v15 bottomAnchor];
      view5 = [(DBLockOutViewController *)self view];
      bottomAnchor2 = [view5 bottomAnchor];
      v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v45[3] = v22;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];

      lockOutView2 = v37;
      [MEMORY[0x277CCAAD0] activateConstraints:v26];
      [(DBLockOutViewController *)self setLockOutView:v15];
    }

    if (animatedCopy)
    {
      if (v15)
      {
        v23 = 0.25;
      }

      else
      {
        v23 = 0.0;
      }

      if (lockOutView2)
      {
        v24 = 0.25;
      }

      else
      {
        v24 = 0.0;
      }

      [v15 setAlpha:0.0];
      v25 = MEMORY[0x277D75D18];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __62__DBLockOutViewController_setLockOutMode_animated_completion___block_invoke;
      v43[3] = &unk_278F01580;
      v44 = lockOutView2;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __62__DBLockOutViewController_setLockOutMode_animated_completion___block_invoke_2;
      v38[3] = &unk_278F038E0;
      v39 = v44;
      v42 = v23;
      v40 = v15;
      v41 = v9;
      [v25 animateWithDuration:v43 animations:v38 completion:v24];
    }

    else
    {
      [lockOutView2 removeFromSuperview];
      if (v9)
      {
        v9[2](v9);
      }
    }
  }
}

void __62__DBLockOutViewController_setLockOutMode_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = MEMORY[0x277D75D18];
  v3 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__DBLockOutViewController_setLockOutMode_animated_completion___block_invoke_3;
  v6[3] = &unk_278F01580;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__DBLockOutViewController_setLockOutMode_animated_completion___block_invoke_4;
  v4[3] = &unk_278F02C58;
  v5 = *(a1 + 48);
  [v2 animateWithDuration:v6 animations:v4 completion:v3];
}

uint64_t __62__DBLockOutViewController_setLockOutMode_animated_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([(DBLockOutViewController *)self isViewLoaded]&& ([(DBLockOutViewController *)self lockOutView], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v8[0] = v3;
    preferredFocusEnvironments = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DBLockOutViewController;
    preferredFocusEnvironments = [(DBLockOutViewController *)&v7 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (id)_newLockOutViewForMode:(int64_t)mode
{
  v5 = 0;
  if (mode > 7)
  {
    if (mode != 8)
    {
      if (mode == 9)
      {
        v14 = [DBHelloLockOutView alloc];
        environmentConfiguration = [(DBLockOutViewController *)self environmentConfiguration];
        _wallpaperView = [(DBLockOutViewController *)self _wallpaperView];
        v5 = [(DBHelloLockOutView *)v14 initWithMode:9 environmentConfiguration:environmentConfiguration wallpaperView:_wallpaperView];
      }

      else
      {
        if (mode != 10)
        {
          return v5;
        }

        v11 = [_TtC9DashBoard29DBAutomakerOverlayLockoutView alloc];
        environmentConfiguration2 = [(DBLockOutViewController *)self environmentConfiguration];
        v5 = [(DBAutomakerOverlayLockoutView *)v11 initWithMode:10 environmentConfiguration:environmentConfiguration2];

        environmentConfiguration = [(DBLockOutViewController *)self delegate];
        [environmentConfiguration registerAutomakerOverlayStateMonitor:v5];
      }

      goto LABEL_5;
    }

    v13 = [DBUISyncLockOutView alloc];
    environmentConfiguration = [(DBLockOutViewController *)self environmentConfiguration];
    v8 = v13;
    modeCopy = 8;
LABEL_4:
    v5 = [v8 initWithMode:modeCopy environmentConfiguration:environmentConfiguration];
LABEL_5:

    return v5;
  }

  if ((mode - 2) < 6)
  {
    v6 = [DBAlertStyleLockOutView alloc];
    environmentConfiguration = [(DBLockOutViewController *)self environmentConfiguration];
    v8 = v6;
    modeCopy = mode;
    goto LABEL_4;
  }

  return v5;
}

- (id)_wallpaperView
{
  delegate = [(DBLockOutViewController *)self delegate];
  v4 = [delegate wallpaperViewForLockOutViewController:self];

  return v4;
}

- (void)lockOutView:(id)view didTapButtonOfType:(unint64_t)type
{
  delegate = [(DBLockOutViewController *)self delegate];
  [delegate lockOutViewController:self didTapButtonOfType:type];
}

- (void)lockOutViewWantsToDismiss:(id)dismiss
{
  delegate = [(DBLockOutViewController *)self delegate];
  [delegate lockOutViewControllerWantsToDismiss:self];
}

- (DBLockOutViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end