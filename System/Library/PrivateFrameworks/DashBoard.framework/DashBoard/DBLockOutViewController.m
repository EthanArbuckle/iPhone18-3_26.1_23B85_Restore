@interface DBLockOutViewController
- (DBLockOutViewController)initWithEnvironmentConfiguration:(id)a3;
- (DBLockOutViewControllerDelegate)delegate;
- (id)_newLockOutViewForMode:(int64_t)a3;
- (id)_wallpaperView;
- (id)preferredFocusEnvironments;
- (void)lockOutView:(id)a3 didTapButtonOfType:(unint64_t)a4;
- (void)lockOutViewWantsToDismiss:(id)a3;
- (void)setLockOutMode:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation DBLockOutViewController

- (DBLockOutViewController)initWithEnvironmentConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBLockOutViewController;
  v6 = [(DBLockOutViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environmentConfiguration, a3);
  }

  return v7;
}

- (void)setLockOutMode:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v48 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = v8;
  if (self->_lockOutMode == a3)
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v10 = DBLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = DBDescriptionForLockOutMode(a3);
      *buf = 138412290;
      v47 = v11;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_INFO, "[DBLockOut] lockOutMode updating to %@", buf, 0xCu);
    }

    self->_lockOutMode = a3;
    v12 = [(DBLockOutViewController *)self lockOutView];

    if (v12)
    {
      v13 = [(DBLockOutViewController *)self lockOutView];
      [(DBLockOutViewController *)self setLockOutView:0];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(DBLockOutViewController *)self _newLockOutViewForMode:self->_lockOutMode];
    v15 = v14;
    if (v14)
    {
      [v14 setDelegate:self];
      v16 = [(DBLockOutViewController *)self view];
      [v16 addSubview:v15];

      [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
      v35 = [v15 leadingAnchor];
      v36 = [(DBLockOutViewController *)self view];
      v34 = [v36 leadingAnchor];
      v33 = [v35 constraintEqualToAnchor:v34];
      v45[0] = v33;
      v31 = [v15 trailingAnchor];
      v32 = [(DBLockOutViewController *)self view];
      v30 = [v32 trailingAnchor];
      v29 = [v31 constraintEqualToAnchor:v30];
      v45[1] = v29;
      v27 = [v15 topAnchor];
      v28 = [(DBLockOutViewController *)self view];
      v17 = [v28 topAnchor];
      [v27 constraintEqualToAnchor:v17];
      v18 = v37 = v13;
      v45[2] = v18;
      v19 = [v15 bottomAnchor];
      v20 = [(DBLockOutViewController *)self view];
      v21 = [v20 bottomAnchor];
      v22 = [v19 constraintEqualToAnchor:v21];
      v45[3] = v22;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];

      v13 = v37;
      [MEMORY[0x277CCAAD0] activateConstraints:v26];
      [(DBLockOutViewController *)self setLockOutView:v15];
    }

    if (v5)
    {
      if (v15)
      {
        v23 = 0.25;
      }

      else
      {
        v23 = 0.0;
      }

      if (v13)
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
      v44 = v13;
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
      [v13 removeFromSuperview];
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
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DBLockOutViewController;
    v5 = [(DBLockOutViewController *)&v7 preferredFocusEnvironments];
  }

  return v5;
}

- (id)_newLockOutViewForMode:(int64_t)a3
{
  v5 = 0;
  if (a3 > 7)
  {
    if (a3 != 8)
    {
      if (a3 == 9)
      {
        v14 = [DBHelloLockOutView alloc];
        v7 = [(DBLockOutViewController *)self environmentConfiguration];
        v15 = [(DBLockOutViewController *)self _wallpaperView];
        v5 = [(DBHelloLockOutView *)v14 initWithMode:9 environmentConfiguration:v7 wallpaperView:v15];
      }

      else
      {
        if (a3 != 10)
        {
          return v5;
        }

        v11 = [_TtC9DashBoard29DBAutomakerOverlayLockoutView alloc];
        v12 = [(DBLockOutViewController *)self environmentConfiguration];
        v5 = [(DBAutomakerOverlayLockoutView *)v11 initWithMode:10 environmentConfiguration:v12];

        v7 = [(DBLockOutViewController *)self delegate];
        [v7 registerAutomakerOverlayStateMonitor:v5];
      }

      goto LABEL_5;
    }

    v13 = [DBUISyncLockOutView alloc];
    v7 = [(DBLockOutViewController *)self environmentConfiguration];
    v8 = v13;
    v9 = 8;
LABEL_4:
    v5 = [v8 initWithMode:v9 environmentConfiguration:v7];
LABEL_5:

    return v5;
  }

  if ((a3 - 2) < 6)
  {
    v6 = [DBAlertStyleLockOutView alloc];
    v7 = [(DBLockOutViewController *)self environmentConfiguration];
    v8 = v6;
    v9 = a3;
    goto LABEL_4;
  }

  return v5;
}

- (id)_wallpaperView
{
  v3 = [(DBLockOutViewController *)self delegate];
  v4 = [v3 wallpaperViewForLockOutViewController:self];

  return v4;
}

- (void)lockOutView:(id)a3 didTapButtonOfType:(unint64_t)a4
{
  v6 = [(DBLockOutViewController *)self delegate];
  [v6 lockOutViewController:self didTapButtonOfType:a4];
}

- (void)lockOutViewWantsToDismiss:(id)a3
{
  v4 = [(DBLockOutViewController *)self delegate];
  [v4 lockOutViewControllerWantsToDismiss:self];
}

- (DBLockOutViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end