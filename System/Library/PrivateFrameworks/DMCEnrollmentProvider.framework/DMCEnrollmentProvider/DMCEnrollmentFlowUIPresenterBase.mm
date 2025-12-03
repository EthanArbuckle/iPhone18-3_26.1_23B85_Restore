@interface DMCEnrollmentFlowUIPresenterBase
- (DMCEnrollmentFlowUIPresenterBase)initWithBaseViewController:(id)controller;
- (UIViewController)baseViewController;
- (void)dealloc;
- (void)dismissWithCompletion:(id)completion;
- (void)presentActivityPageWithTitle:(id)title text:(id)text showButtomView:(BOOL)view;
- (void)presentOKAlertWithTitle:(id)title message:(id)message action:(id)action;
- (void)pushViewController:(id)controller foundationViewController:(id)viewController;
- (void)requestDevicePasscodeWithDescriptionText:(id)text completionHandler:(id)handler;
- (void)setDismissedCompletionBlock:(id)block;
@end

@implementation DMCEnrollmentFlowUIPresenterBase

- (DMCEnrollmentFlowUIPresenterBase)initWithBaseViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = DMCEnrollmentFlowUIPresenterBase;
  v5 = [(DMCEnrollmentFlowUIPresenterBase *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_baseViewController, controllerCopy);
  }

  return v6;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[DMCEnrollmentFlowUIPresenterBase dealloc]";
    _os_log_impl(&dword_247E7D000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = DMCEnrollmentFlowUIPresenterBase;
  [(DMCEnrollmentFlowUIPresenterBase *)&v4 dealloc];
}

- (void)pushViewController:(id)controller foundationViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (!viewControllerCopy)
  {
    navigationController = [(DMCEnrollmentFlowUIPresenterBase *)self navigationController];
    viewControllers = [navigationController viewControllers];
    viewControllerCopy = [viewControllers objectAtIndexedSubscript:0];
  }

  navigationController2 = [(DMCEnrollmentFlowUIPresenterBase *)self navigationController];

  if (navigationController2)
  {
    navigationController3 = [(DMCEnrollmentFlowUIPresenterBase *)self navigationController];
    [(UIViewController *)navigationController3 dmc_popToViewController:viewControllerCopy pushViewController:controllerCopy];
  }

  else
  {
    navigationController3 = [[DMCNavigationController alloc] initWithRootViewController:controllerCopy];
    [(DMCNavigationController *)navigationController3 setDismissedCompletionBlock:self->_dismissedCompletionBlock];
    baseViewController = [(DMCEnrollmentFlowUIPresenterBase *)self baseViewController];
    [baseViewController presentViewController:navigationController3 animated:1 completion:0];

    [(DMCEnrollmentFlowUIPresenterBase *)self setNavigationController:navigationController3];
  }
}

- (void)setDismissedCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  dismissedCompletionBlock = self->_dismissedCompletionBlock;
  self->_dismissedCompletionBlock = v4;

  navigationController = [(DMCEnrollmentFlowUIPresenterBase *)self navigationController];
  [navigationController setDismissedCompletionBlock:self->_dismissedCompletionBlock];
}

- (void)dismissWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__DMCEnrollmentFlowUIPresenterBase_dismissWithCompletion___block_invoke;
  v6[3] = &unk_278EE7830;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__DMCEnrollmentFlowUIPresenterBase_dismissWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 dismissViewControllerAnimated:1 completion:*(a1 + 40)];
}

- (void)requestDevicePasscodeWithDescriptionText:(id)text completionHandler:(id)handler
{
  textCopy = text;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__DMCEnrollmentFlowUIPresenterBase_requestDevicePasscodeWithDescriptionText_completionHandler___block_invoke;
  block[3] = &unk_278EE7C80;
  block[4] = self;
  v11 = textCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = textCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __95__DMCEnrollmentFlowUIPresenterBase_requestDevicePasscodeWithDescriptionText_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D03530] isPad];
  v3 = [*(a1 + 32) navigationController];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 topViewController];

    v4 = v5;
  }

  if (!v4)
  {
    v4 = [*(a1 + 32) baseViewController];
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  [v7 setPasscodeSubPrompt:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__DMCEnrollmentFlowUIPresenterBase_requestDevicePasscodeWithDescriptionText_completionHandler___block_invoke_2;
  v9[3] = &unk_278EE7C58;
  objc_copyWeak(&v12, &location);
  v11 = *(a1 + 48);
  v8 = v6;
  v10 = v8;
  [v8 startInParentVC:v4 options:v7 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __95__DMCEnrollmentFlowUIPresenterBase_requestDevicePasscodeWithDescriptionText_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = [v6 domain];
      if ([v8 isEqualToString:*MEMORY[0x277CD4810]])
      {
        v9 = [v6 code];

        if (!v9)
        {
          v10 = *DMCLogObjects();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v11 = "LAPasscodeVerificationService canceled by user";
            v12 = v10;
            v13 = OS_LOG_TYPE_DEBUG;
            v14 = 2;
LABEL_11:
            _os_log_impl(&dword_247E7D000, v12, v13, v11, buf, v14);
            goto LABEL_12;
          }

          goto LABEL_12;
        }
      }

      else
      {
      }

      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v6;
        v11 = "LAPasscodeVerificationService failed: %{public}@";
        v12 = v15;
        v13 = OS_LOG_TYPE_ERROR;
        v14 = 12;
        goto LABEL_11;
      }

LABEL_12:
      (*(*(a1 + 40) + 16))();
      goto LABEL_13;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __95__DMCEnrollmentFlowUIPresenterBase_requestDevicePasscodeWithDescriptionText_completionHandler___block_invoke_6;
    v16[3] = &unk_278EE7C30;
    v17 = *(a1 + 40);
    [v5 credentialOfType:-9 reply:v16];
  }

LABEL_13:
}

void __95__DMCEnrollmentFlowUIPresenterBase_requestDevicePasscodeWithDescriptionText_completionHandler___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_247E7D000, v5, OS_LOG_TYPE_ERROR, "Failed to get extractable password: %{public}@", &v7, 0xCu);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)presentActivityPageWithTitle:(id)title text:(id)text showButtomView:(BOOL)view
{
  viewCopy = view;
  textCopy = text;
  titleCopy = title;
  v10 = [[DMCActivityViewController alloc] initWithActivityTitle:titleCopy activityText:textCopy showBottomView:viewCopy];

  [(DMCEnrollmentFlowUIPresenterBase *)self setActivityController:v10];
  [(DMCEnrollmentFlowUIPresenterBase *)self pushViewController:v10];
}

- (void)presentOKAlertWithTitle:(id)title message:(id)message action:(id)action
{
  actionCopy = action;
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:title message:message preferredStyle:1];
  v10 = MEMORY[0x277D750F8];
  v11 = DMCLocalizedString();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__DMCEnrollmentFlowUIPresenterBase_presentOKAlertWithTitle_message_action___block_invoke;
  v16[3] = &unk_278EE7358;
  v17 = actionCopy;
  v12 = actionCopy;
  v13 = [v10 actionWithTitle:v11 style:0 handler:v16];

  [v9 addAction:v13];
  navigationController = [(DMCEnrollmentFlowUIPresenterBase *)self navigationController];

  if (navigationController)
  {
    [(DMCEnrollmentFlowUIPresenterBase *)self navigationController];
  }

  else
  {
    [(DMCEnrollmentFlowUIPresenterBase *)self baseViewController];
  }
  v15 = ;
  [v15 dmc_presentAlert:v9 completion:0];
}

uint64_t __75__DMCEnrollmentFlowUIPresenterBase_presentOKAlertWithTitle_message_action___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (UIViewController)baseViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_baseViewController);

  return WeakRetained;
}

@end