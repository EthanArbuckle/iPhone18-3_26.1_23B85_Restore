@interface DSPasscodeController
+ (BOOL)isPasscodeSet;
- (DSNavigationDelegate)delegate;
- (DSPasscodeController)init;
- (id)detailText;
- (void)configureViews;
- (void)displayPasscodeChangeSheet;
- (void)passcodeChangePressed;
- (void)ratchetViewController:(id)controller didFinishWithResult:(id)result error:(id)error;
- (void)shouldShowWithCompletion:(id)completion;
- (void)startRatchetEvalInPresentationContext:(id)context;
- (void)userDidTapCancelButton:(id)button;
@end

@implementation DSPasscodeController

- (DSPasscodeController)init
{
  delegate = [(DSPasscodeController *)self delegate];
  if (+[DSPasscodeController isPasscodeSet])
  {
    v4 = DSUILocStringForKey(@"DEVICE_PASSCODE");
    detailText = [(DSPasscodeController *)self detailText];
    v19.receiver = self;
    v19.super_class = DSPasscodeController;
    v6 = [(DSPasscodeController *)&v19 initWithTitle:v4 detailText:detailText symbolName:@"lock"];

    v7 = DSUILocStringForKey(@"DEVICE_PASSCODE_BOLD_BUTTON_TITLE");
    v8 = [DSUIUtilities setUpBoldButtonForController:v6 title:v7 target:v6 selector:sel_passcodeChangePressed];
    [(DSPasscodeController *)v6 setBoldButton:v8];
    v9 = @"DEVICE_PASSCODE_LINK_BUTTON_TITLE";
  }

  else
  {
    v10 = DSUILocStringForKey(@"DEVICE_PASSCODE_CREATE");
    v11 = DSUILocStringForKey(@"DEVICE_PASSCODE_CREATE_DETAIL");
    v18.receiver = self;
    v18.super_class = DSPasscodeController;
    v6 = [(DSPasscodeController *)&v18 initWithTitle:v10 detailText:v11 symbolName:@"lock"];

    v7 = DSUILocStringForKey(@"DEVICE_PASSCODE_CREATE_BOLD_BUTTON_TITLE");
    v8 = [DSUIUtilities setUpBoldButtonForController:v6 title:v7 target:v6 selector:sel_passcodeChangePressed];
    [(DSPasscodeController *)v6 setBoldButton:v8];
    v9 = @"DEVICE_PASSCODE_CREATE_LINK_BUTTON_TITLE";
  }

  v12 = DSUILocStringForKey(v9);
  v13 = [DSUIUtilities setUpLinkButtonForController:v6 title:v12 target:delegate selector:sel_pushNextPane];
  [(DSPasscodeController *)v6 setLinkButton:v13];

  v14 = objc_opt_class();
  if (v14 == objc_opt_class())
  {
    v15 = os_log_create("com.apple.DigitalSeparation", "DSPasscodeController");
    v16 = DSLog_5;
    DSLog_5 = v15;
  }

  return v6;
}

- (void)configureViews
{
  delegate = [(DSPasscodeController *)self delegate];
  v3 = +[DSPasscodeController isPasscodeSet];
  headerView = [(DSPasscodeController *)self headerView];
  if (v3)
  {
    v5 = DSUILocStringForKey(@"DEVICE_PASSCODE");
    [headerView setTitle:v5];

    headerView2 = [(DSPasscodeController *)self headerView];
    detailText = [(DSPasscodeController *)self detailText];
    [headerView2 setDetailText:detailText];
    v8 = @"DEVICE_PASSCODE_LINK_BUTTON_TITLE";
    v9 = @"DEVICE_PASSCODE_BOLD_BUTTON_TITLE";
  }

  else
  {
    v10 = DSUILocStringForKey(@"DEVICE_PASSCODE_CREATE");
    [headerView setTitle:v10];

    headerView2 = [(DSPasscodeController *)self headerView];
    detailText = DSUILocStringForKey(@"DEVICE_PASSCODE_CREATE_DETAIL");
    [headerView2 setDetailText:detailText];
    v8 = @"DEVICE_PASSCODE_CREATE_LINK_BUTTON_TITLE";
    v9 = @"DEVICE_PASSCODE_CREATE_BOLD_BUTTON_TITLE";
  }

  boldButton = [(DSPasscodeController *)self boldButton];
  [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  boldButton2 = [(DSPasscodeController *)self boldButton];
  v13 = DSUILocStringForKey(v9);
  [boldButton2 setTitle:v13 forState:0];

  boldButton3 = [(DSPasscodeController *)self boldButton];
  [boldButton3 addTarget:self action:sel_passcodeChangePressed forControlEvents:64];

  linkButton = [(DSPasscodeController *)self linkButton];
  [linkButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  linkButton2 = [(DSPasscodeController *)self linkButton];
  v17 = DSUILocStringForKey(v8);
  [linkButton2 setTitle:v17 forState:0];

  linkButton3 = [(DSPasscodeController *)self linkButton];
  [linkButton3 addTarget:delegate action:sel_pushNextPane forControlEvents:64];
}

+ (BOOL)isPasscodeSet
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  return isPasscodeSet;
}

- (void)shouldShowWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = sharedWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DSPasscodeController_shouldShowWithCompletion___block_invoke;
  block[3] = &unk_278F75490;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(v4, block);
}

uint64_t __49__DSPasscodeController_shouldShowWithCompletion___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D054A8] isPasscodeModificationRestricted])
  {
    v2 = DSLog_5;
    if (os_log_type_enabled(DSLog_5, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_248C7E000, v2, OS_LOG_TYPE_INFO, "Cannot reset passcode due to device restrictions", v5, 2u);
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }
}

- (void)passcodeChangePressed
{
  if ([MEMORY[0x277D054D8] shouldShowBioRatchetFlow])
  {

    [(DSPasscodeController *)self startRatchetEvalInPresentationContext:self];
  }

  else
  {

    [(DSPasscodeController *)self displayPasscodeChangeSheet];
  }
}

- (void)displayPasscodeChangeSheet
{
  v8 = objc_alloc_init(DSPasscodePopupViewController);
  delegate = [(DSPasscodeController *)self delegate];
  [(DSPasscodePopupViewController *)v8 setDelegate:delegate];

  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [v4 setModalPresentationStyle:0];
  navigationController = [(DSPasscodeController *)self navigationController];
  [navigationController presentViewController:v4 animated:1 completion:0];

  navigationItem = [(DSPasscodePopupViewController *)v8 navigationItem];
  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_userDidTapCancelButton_];
  [navigationItem setLeftBarButtonItem:v7];
}

- (void)userDidTapCancelButton:(id)button
{
  v4 = DSLog_5;
  if (os_log_type_enabled(DSLog_5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_248C7E000, v4, OS_LOG_TYPE_INFO, "User canceled passcode flow", v6, 2u);
  }

  navigationController = [(DSPasscodeController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (id)detailText
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) != 0 && ([MEMORY[0x277D262A0] sharedConnection], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isPasscodeRecoveryRestricted"), v4, !v5))
  {
    v6 = @"DEVICE_PASSCODE_DETAIL_RECOVERY";
  }

  else
  {
    v6 = @"DEVICE_PASSCODE_DETAIL";
  }

  v7 = DSUILocStringForKey(v6);

  return v7;
}

- (void)startRatchetEvalInPresentationContext:(id)context
{
  v19[5] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD4860];
  contextCopy = context;
  v6 = objc_alloc_init(v4);
  v7 = DSUIDTOLocStringForKey(@"RATCHET_ACTION_BUTTON_TITLE");
  [v6 setCountdownPrimaryActionTitle:v7];

  delegate = [(DSPasscodeController *)self delegate];
  deepLinkForCurrentFlowAndPane = [delegate deepLinkForCurrentFlowAndPane];

  v10 = MEMORY[0x277CD4858];
  v18[0] = &unk_285BB92C8;
  v11 = DSUIDTOLocStringForKey(@"RATCHET_REASON_PASSCODE");
  v19[0] = v11;
  v18[1] = &unk_285BB92E0;
  v12 = DSUIDTOLocStringForKey(@"RATCHET_ENDED_DETAIL_PASSCODE");
  v19[1] = v12;
  v18[2] = &unk_285BB92F8;
  v13 = [MEMORY[0x277CBEBC0] URLWithString:deepLinkForCurrentFlowAndPane];
  v19[2] = v13;
  v19[3] = contextCopy;
  v18[3] = &unk_285BB9310;
  v18[4] = &unk_285BB9328;
  v19[4] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v15 = [v10 makeViewControllerWithOptions:v14 configuration:v6];
  ratchetVC = self->_ratchetVC;
  self->_ratchetVC = v15;

  [(LARatchetViewController *)self->_ratchetVC setDelegate:self];
  [(LARatchetViewController *)self->_ratchetVC evaluateAndShowViewController];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)ratchetViewController:(id)controller didFinishWithResult:(id)result error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  errorCopy = error;
  resultCopy = result;
  delegate = [(DSPasscodeController *)self delegate];
  v12 = [resultCopy objectForKeyedSubscript:&unk_285BB92E0];

  if (v12)
  {
    [(DSPasscodeController *)self displayPasscodeChangeSheet];
    [delegate sendSummaryAnalyticsWithEventName:@"com.apple.DigitalSeparation.RatchedEnded"];
    if (controllerCopy)
    {
      navigationController = [(DSPasscodeController *)self navigationController];
      viewControllers = [navigationController viewControllers];
      v15 = [viewControllers mutableCopy];

      [v15 removeObject:controllerCopy];
      navigationController2 = [(DSPasscodeController *)self navigationController];
      [navigationController2 setViewControllers:v15];
    }
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v18 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CD4788]];

    if ([errorCopy code] || !v18)
    {
      v20 = DSLog_5;
      if (os_log_type_enabled(DSLog_5, OS_LOG_TYPE_INFO))
      {
        v28 = 138412290;
        v29 = errorCopy;
        _os_log_impl(&dword_248C7E000, v20, OS_LOG_TYPE_INFO, "Passcode Change Ratchet not armed. Reason: %@", &v28, 0xCu);
      }

      navigationController3 = [(DSPasscodeController *)self navigationController];
      topViewController = [navigationController3 topViewController];
      v23 = objc_opt_class();
      v24 = objc_opt_class();

      if (v23 == v24)
      {
        navigationController4 = [(DSPasscodeController *)self navigationController];
        v26 = [navigationController4 popToViewController:self animated:0];

        [delegate pushNextPane];
      }
    }

    else if ([v18 rawValue] == 1)
    {
      v19 = DSLog_5;
      if (os_log_type_enabled(DSLog_5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_248C7E000, v19, OS_LOG_TYPE_INFO, "Passcode Change Ratchet initiated, timer counting down. User exiting Safety Check.", &v28, 2u);
      }

      [delegate exitFlowForRatchetWait];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end