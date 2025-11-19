@interface BKUIAlertView
- (BKUIAlertView)init;
- (BOOL)isAlertHidden;
- (SEL)cancelButtonSelector;
- (SEL)otherButtonSelector;
- (UILabel)alertHudText;
- (UIView)alertHudView;
- (id)parent;
- (void)_hideAlertHudView;
- (void)_init;
- (void)_setFadeAnimation:(id)a3;
- (void)isAlertHidden;
- (void)setCancelButtonSelector:(SEL)a3;
- (void)setOtherButtonSelector:(SEL)a3;
- (void)show:(id)a3 title:(id)a4 message:(id)a5 cancelButtonTitle:(id)a6 cancelButtonSelector:(SEL)a7 otherButtonTitle:(id)a8 otherButtonSelector:(SEL)a9 viewController:(id)a10;
- (void)showAlert:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 viewController:(id)a7;
@end

@implementation BKUIAlertView

- (BKUIAlertView)init
{
  v7.receiver = self;
  v7.super_class = BKUIAlertView;
  v2 = [(BKUIAlertView *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(BKUIAlertView *)v2 _init];
    v4 = os_log_create("com.apple.biometrickitui", "AlertView");
    bkui_alert_view_log = v3->bkui_alert_view_log;
    v3->bkui_alert_view_log = v4;
  }

  return v3;
}

- (void)_init
{
  alertController = self->_alertController;
  self->_alertController = 0;
  MEMORY[0x2821F96F8]();
}

- (void)show:(id)a3 title:(id)a4 message:(id)a5 cancelButtonTitle:(id)a6 cancelButtonSelector:(SEL)a7 otherButtonTitle:(id)a8 otherButtonSelector:(SEL)a9 viewController:(id)a10
{
  v48 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v37 = a6;
  v36 = a8;
  v19 = a10;
  bkui_alert_view_log = self->bkui_alert_view_log;
  if (os_log_type_enabled(bkui_alert_view_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v45 = v17;
    v46 = 2112;
    v47 = v18;
    _os_log_impl(&dword_241B0A000, bkui_alert_view_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Show alert with title: %@, message: %@", buf, 0x16u);
  }

  objc_storeWeak(&self->_parent, v16);
  WeakRetained = objc_loadWeakRetained(&self->_alertHudView);
  v22 = [WeakRetained superview];
  v23 = objc_loadWeakRetained(&self->_alertHudView);
  [v22 bringSubviewToFront:v23];

  v24 = objc_loadWeakRetained(&self->_alertHudView);
  if (v24)
  {
    if (CACurrentMediaTime() - self->_alertHudTextStartTime > self->_alertHudMinDisplayTime)
    {
      v25 = objc_loadWeakRetained(&self->_alertHudView);
      v26 = [v25 isHidden];

      if ((v26 & 1) == 0)
      {
        [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideAlertHudView object:0];
      }

      v27 = objc_loadWeakRetained(&self->_alertHudText);
      [v27 setText:v18];

      self->_alertHudTextStartTime = CACurrentMediaTime();
      v28 = objc_loadWeakRetained(&self->_alertHudView);
      [(BKUIAlertView *)self _setFadeAnimation:v28];

      v29 = objc_loadWeakRetained(&self->_alertHudView);
      [v29 setHidden:0];

      [(BKUIAlertView *)self performSelector:sel__hideAlertHudView withObject:0 afterDelay:self->_alertHudTimeout];
    }
  }

  else
  {
    if (a7)
    {
      v30 = a7;
    }

    else
    {
      v30 = 0;
    }

    self->_cancelButtonSelector = v30;
    if (a9)
    {
      v31 = a9;
    }

    else
    {
      v31 = 0;
    }

    self->_otherButtonSelector = v31;
    v32 = [(UIAlertController *)self->_alertController view];
    v33 = [v32 window];

    if (v33)
    {
      alertController = self->_alertController;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __127__BKUIAlertView_show_title_message_cancelButtonTitle_cancelButtonSelector_otherButtonTitle_otherButtonSelector_viewController___block_invoke;
      v38[3] = &unk_278D09A88;
      v38[4] = self;
      v39 = v17;
      v40 = v18;
      v41 = v37;
      v42 = v36;
      v43 = v19;
      [(UIAlertController *)alertController dismissViewControllerAnimated:0 completion:v38];
    }

    else
    {
      [(BKUIAlertView *)self showAlert:v17 message:v18 cancelButtonTitle:v37 otherButtonTitle:v36 viewController:v19];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)showAlert:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 viewController:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  bkui_alert_view_log = self->bkui_alert_view_log;
  if (os_log_type_enabled(bkui_alert_view_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_241B0A000, bkui_alert_view_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Show alert with title: %@, message: %@", buf, 0x16u);
  }

  v26 = v12;
  v18 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v13 preferredStyle:1];
  alertController = self->_alertController;
  self->_alertController = v18;

  v20 = self->_alertController;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __85__BKUIAlertView_showAlert_message_cancelButtonTitle_otherButtonTitle_viewController___block_invoke;
  v28[3] = &unk_278D09AB0;
  v28[4] = self;
  v21 = v14;
  v22 = [MEMORY[0x277D750F8] actionWithTitle:v14 style:1 handler:v28];
  [(UIAlertController *)v20 addAction:v22];

  if (v15)
  {
    v23 = self->_alertController;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __85__BKUIAlertView_showAlert_message_cancelButtonTitle_otherButtonTitle_viewController___block_invoke_2;
    v27[3] = &unk_278D09AB0;
    v27[4] = self;
    v24 = [MEMORY[0x277D750F8] actionWithTitle:v15 style:0 handler:v27];
    [(UIAlertController *)v23 addAction:v24];
  }

  [v16 presentViewController:self->_alertController animated:1 completion:0];

  v25 = *MEMORY[0x277D85DE8];
}

void __85__BKUIAlertView_showAlert_message_cancelButtonTitle_otherButtonTitle_viewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 408);
  v4 = a2;
  [v3 dismissViewControllerAnimated:1 completion:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 432));
  v6 = *(a1 + 32);
  if (*(v6 + 440))
  {
    v7 = *(v6 + 440);
  }

  else
  {
    v7 = 0;
  }

  v8 = WeakRetained;
  [WeakRetained performSelector:v7];
}

void __85__BKUIAlertView_showAlert_message_cancelButtonTitle_otherButtonTitle_viewController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 408);
  v4 = a2;
  [v3 dismissViewControllerAnimated:1 completion:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 432));
  v6 = *(a1 + 32);
  if (*(v6 + 448))
  {
    v7 = *(v6 + 448);
  }

  else
  {
    v7 = 0;
  }

  v8 = WeakRetained;
  [WeakRetained performSelector:v7];
}

- (BOOL)isAlertHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHudView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_alertHudView);
    v5 = [v4 isHidden];

    bkui_alert_view_log = self->bkui_alert_view_log;
    if (os_log_type_enabled(bkui_alert_view_log, OS_LOG_TYPE_DEBUG))
    {
LABEL_8:
      [(BKUIAlertView *)v5 isAlertHidden];
    }
  }

  else
  {
    alertController = self->_alertController;
    if (alertController)
    {
      v8 = [(UIAlertController *)alertController view];
      v9 = [v8 window];
      v5 = v9 == 0;
    }

    else
    {
      v5 = 1;
    }

    bkui_alert_view_log = self->bkui_alert_view_log;
    if (os_log_type_enabled(bkui_alert_view_log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }
  }

  return v5;
}

- (void)_hideAlertHudView
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHudView);
  [(BKUIAlertView *)self _setFadeAnimation:WeakRetained];

  v4 = objc_loadWeakRetained(&self->_alertHudView);
  [v4 setHidden:1];
}

- (void)_setFadeAnimation:(id)a3
{
  v3 = MEMORY[0x277CDA000];
  v4 = a3;
  v8 = [v3 animation];
  v5 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
  [v8 setTimingFunction:v5];

  [v8 setDuration:0.2];
  [v8 setType:@"fade"];
  v6 = [v4 layer];
  [v6 removeAllAnimations];

  v7 = [v4 layer];

  [v7 addAnimation:v8 forKey:*MEMORY[0x277CDA920]];
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (SEL)cancelButtonSelector
{
  if (self->_cancelButtonSelector)
  {
    return self->_cancelButtonSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setCancelButtonSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_cancelButtonSelector = v3;
}

- (SEL)otherButtonSelector
{
  if (self->_otherButtonSelector)
  {
    return self->_otherButtonSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setOtherButtonSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_otherButtonSelector = v3;
}

- (UIView)alertHudView
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHudView);

  return WeakRetained;
}

- (UILabel)alertHudText
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHudText);

  return WeakRetained;
}

- (void)isAlertHidden
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_241B0A000, a2, OS_LOG_TYPE_DEBUG, "BiometricKitUI: Is alert hidden: %i", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end