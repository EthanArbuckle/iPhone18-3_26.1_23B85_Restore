@interface DMCUnenrollmentFlowUIPresenter
- (void)dismissUnenrollmentSceneWithError:(id)a3;
- (void)presentUnenrollmentActivityPageIsAppleMAID:(BOOL)a3;
- (void)requestDevicePasscodeDataWithCompletionHandler:(id)a3;
- (void)requestUserConfirmationIsAppleMAID:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation DMCUnenrollmentFlowUIPresenter

- (void)requestUserConfirmationIsAppleMAID:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke;
  block[3] = &unk_278EE8228;
  v10 = a3;
  block[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = DMCLocalizedString();
  v3 = MEMORY[0x277D75110];
  v4 = DMCLocalizedString();
  v5 = [v3 alertControllerWithTitle:v2 message:v4 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = DMCLocalizedString();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke_2;
  v18[3] = &unk_278EE7358;
  v19 = *(a1 + 40);
  v8 = [v6 actionWithTitle:v7 style:1 handler:v18];

  v9 = MEMORY[0x277D750F8];
  v10 = DMCLocalizedString();
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke_3;
  v16 = &unk_278EE7358;
  v17 = *(a1 + 40);
  v11 = [v9 actionWithTitle:v10 style:2 handler:&v13];

  [v5 addAction:{v8, v13, v14, v15, v16}];
  [v5 addAction:v11];
  v12 = [*(a1 + 32) baseViewController];
  [v12 dmc_presentAlert:v5 completion:0];
}

uint64_t __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)requestDevicePasscodeDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = DMCLocalizedStringByDevice();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__DMCUnenrollmentFlowUIPresenter_requestDevicePasscodeDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_278EE7448;
  v8 = v4;
  v6 = v4;
  [(DMCEnrollmentFlowUIPresenterBase *)self requestDevicePasscodeWithDescriptionText:v5 completionHandler:v7];
}

- (void)presentUnenrollmentActivityPageIsAppleMAID:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__DMCUnenrollmentFlowUIPresenter_presentUnenrollmentActivityPageIsAppleMAID___block_invoke;
  v3[3] = &unk_278EE7A58;
  v4 = a3;
  v3[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __77__DMCUnenrollmentFlowUIPresenter_presentUnenrollmentActivityPageIsAppleMAID___block_invoke(uint64_t a1)
{
  v4 = DMCLocalizedString();
  v2 = *(a1 + 32);
  v3 = DMCLocalizedString();
  [v2 presentActivityPageWithTitle:v3 text:v4 showButtomView:0];
}

- (void)dismissUnenrollmentSceneWithError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__DMCUnenrollmentFlowUIPresenter_dismissUnenrollmentSceneWithError___block_invoke;
  v6[3] = &unk_278EE77B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __68__DMCUnenrollmentFlowUIPresenter_dismissUnenrollmentSceneWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 localizedDescription];
    if ([MEMORY[0x277D034F8] isAppleInternal])
    {
      v4 = [*(a1 + 32) underlyingErrors];

      if (v4)
      {
        v5 = MEMORY[0x277CCACA8];
        v6 = [*(a1 + 32) underlyingErrors];
        v7 = [v6 firstObject];
        v8 = [v7 description];
        v9 = [v5 stringWithFormat:@"%@\n\n[Internal only]\n%@", v3, v8];

        v3 = v9;
      }
    }

    v10 = *(a1 + 40);
    v11 = DMCLocalizedString();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__DMCUnenrollmentFlowUIPresenter_dismissUnenrollmentSceneWithError___block_invoke_2;
    v13[3] = &unk_278EE74C0;
    v13[4] = *(a1 + 40);
    [v10 presentOKAlertWithTitle:v11 message:v3 action:v13];
  }

  else
  {
    v12 = *(a1 + 40);

    [v12 dismissWithCompletion:0];
  }
}

@end