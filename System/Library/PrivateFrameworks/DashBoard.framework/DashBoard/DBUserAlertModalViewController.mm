@interface DBUserAlertModalViewController
- (DBUserAlertModalViewController)initWithAlert:(id)alert;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation DBUserAlertModalViewController

- (DBUserAlertModalViewController)initWithAlert:(id)alert
{
  alertCopy = alert;
  v9.receiver = self;
  v9.super_class = DBUserAlertModalViewController;
  v6 = [(DBUserAlertModalViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alert, alert);
  }

  return v7;
}

- (void)viewDidAppear:(BOOL)appear
{
  alert = [(DBUserAlertModalViewController *)self alert];
  v5 = MEMORY[0x277D75110];
  title = [alert title];
  message = [alert message];
  v8 = [v5 alertControllerWithTitle:title message:message preferredStyle:1];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__DBUserAlertModalViewController_viewDidAppear___block_invoke;
  aBlock[3] = &unk_278F01C78;
  v17 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  cancelAction = [alert cancelAction];
  v10[2](v10, cancelAction, 1, 0);

  otherAction = [alert otherAction];
  v10[2](v10, otherAction, 0, 0);

  defaultAction = [alert defaultAction];
  v10[2](v10, defaultAction, 0, 1);

  v14 = DBLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = 0;
    _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_INFO, "presenting modal user alert", &v15, 2u);
  }

  [(DBUserAlertModalViewController *)self presentViewController:v9 animated:1 completion:0];
}

void __48__DBUserAlertModalViewController_viewDidAppear___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x277D750F8];
    v10 = [v7 title];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__DBUserAlertModalViewController_viewDidAppear___block_invoke_2;
    v12[3] = &unk_278F01C50;
    v13 = v8;
    v11 = [v9 actionWithTitle:v10 style:a3 handler:v12];

    [*(a1 + 32) addAction:v11];
    if (a4)
    {
      [*(a1 + 32) setPreferredAction:v11];
    }
  }
}

void __48__DBUserAlertModalViewController_viewDidAppear___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DBLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "handling alert button action: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) handler];

  if (v5)
  {
    v6 = [*(a1 + 32) handler];
    v6[2](v6, *(a1 + 32));
  }
}

@end