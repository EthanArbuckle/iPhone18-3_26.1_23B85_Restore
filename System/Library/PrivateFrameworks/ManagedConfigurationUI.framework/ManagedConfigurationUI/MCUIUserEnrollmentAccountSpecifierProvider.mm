@interface MCUIUserEnrollmentAccountSpecifierProvider
- (void)_verifyDevicePasscodeWithPresentingViewController:(id)controller completionHandler:(id)handler;
- (void)didAcceptEnteredPIN:(id)n;
- (void)didCancelEnteringPIN;
- (void)preflightsAccountDeletion:(id)deletion presentingViewController:(id)controller completionHandler:(id)handler;
@end

@implementation MCUIUserEnrollmentAccountSpecifierProvider

- (void)preflightsAccountDeletion:(id)deletion presentingViewController:(id)controller completionHandler:(id)handler
{
  deletionCopy = deletion;
  controllerCopy = controller;
  handlerCopy = handler;
  if ([deletionCopy mc_isUserEnrollmentAccount] && objc_msgSend(deletionCopy, "aa_isAccountClass:", *MEMORY[0x277CEC680]) && (objc_msgSend(MEMORY[0x277D262A0], "sharedConnection"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isPasscodeSet"), v10, (v11 & 1) != 0))
  {
    [(MCUIUserEnrollmentAccountSpecifierProvider *)self _verifyDevicePasscodeWithPresentingViewController:controllerCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)_verifyDevicePasscodeWithPresentingViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__MCUIUserEnrollmentAccountSpecifierProvider__verifyDevicePasscodeWithPresentingViewController_completionHandler___block_invoke;
  block[3] = &unk_279862178;
  block[4] = self;
  v11 = controllerCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = controllerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __114__MCUIUserEnrollmentAccountSpecifierProvider__verifyDevicePasscodeWithPresentingViewController_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setDelegate:*(a1 + 32)];
  v3 = [objc_alloc(MEMORY[0x277D03260]) initWithRootViewController:v2];
  [v3 setModalInPresentation:1];
  [*(a1 + 40) presentViewController:v3 animated:1 completion:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __114__MCUIUserEnrollmentAccountSpecifierProvider__verifyDevicePasscodeWithPresentingViewController_completionHandler___block_invoke_2;
  v6[3] = &unk_2798622B8;
  v7 = v3;
  v8 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v3;
  [v4 setDevicePasscodeVerificationCompletionHandler:v6];
}

void __114__MCUIUserEnrollmentAccountSpecifierProvider__verifyDevicePasscodeWithPresentingViewController_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__MCUIUserEnrollmentAccountSpecifierProvider__verifyDevicePasscodeWithPresentingViewController_completionHandler___block_invoke_3;
  block[3] = &unk_279862290;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __114__MCUIUserEnrollmentAccountSpecifierProvider__verifyDevicePasscodeWithPresentingViewController_completionHandler___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __114__MCUIUserEnrollmentAccountSpecifierProvider__verifyDevicePasscodeWithPresentingViewController_completionHandler___block_invoke_4;
  v3[3] = &unk_279862268;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

uint64_t __114__MCUIUserEnrollmentAccountSpecifierProvider__verifyDevicePasscodeWithPresentingViewController_completionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)didAcceptEnteredPIN:(id)n
{
  devicePasscodeVerificationCompletionHandler = [(MCUIUserEnrollmentAccountSpecifierProvider *)self devicePasscodeVerificationCompletionHandler];

  if (devicePasscodeVerificationCompletionHandler)
  {
    devicePasscodeVerificationCompletionHandler2 = [(MCUIUserEnrollmentAccountSpecifierProvider *)self devicePasscodeVerificationCompletionHandler];
    devicePasscodeVerificationCompletionHandler2[2](devicePasscodeVerificationCompletionHandler2, 1);

    [(MCUIUserEnrollmentAccountSpecifierProvider *)self setDevicePasscodeVerificationCompletionHandler:0];
  }
}

- (void)didCancelEnteringPIN
{
  devicePasscodeVerificationCompletionHandler = [(MCUIUserEnrollmentAccountSpecifierProvider *)self devicePasscodeVerificationCompletionHandler];

  if (devicePasscodeVerificationCompletionHandler)
  {
    devicePasscodeVerificationCompletionHandler2 = [(MCUIUserEnrollmentAccountSpecifierProvider *)self devicePasscodeVerificationCompletionHandler];
    devicePasscodeVerificationCompletionHandler2[2](devicePasscodeVerificationCompletionHandler2, 0);

    [(MCUIUserEnrollmentAccountSpecifierProvider *)self setDevicePasscodeVerificationCompletionHandler:0];
  }
}

@end