@interface CDPSingleICSCEntryViewController
- (void)disableUserInteractionAndStartSpinner;
- (void)enableUserInteractionAndStopSpinner;
- (void)forgotSecurityCode;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CDPSingleICSCEntryViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CDPSingleICSCEntryViewController;
  [(PSKeychainSyncTextEntryController *)&v4 viewDidDisappear:disappear];
  [(CDPSingleICSCEntryViewController *)self enableUserInteractionAndStopSpinner];
}

- (void)forgotSecurityCode
{
  v3 = MEMORY[0x277D75110];
  v4 = CDPLocalizedString();
  v5 = CDPLocalizedString();
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = CDPLocalizedString();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__CDPSingleICSCEntryViewController_forgotSecurityCode__block_invoke;
  v17[3] = &unk_278E2B708;
  v17[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v17];
  [v6 addAction:v9];

  v10 = MEMORY[0x277D750F8];
  v11 = CDPLocalizedString();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__CDPSingleICSCEntryViewController_forgotSecurityCode__block_invoke_2;
  v16[3] = &unk_278E2B708;
  v16[4] = self;
  v12 = [v10 actionWithTitle:v11 style:0 handler:v16];
  [v6 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = CDPLocalizedString();
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];
  [v6 addAction:v15];

  [(CDPSingleICSCEntryViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __54__CDPSingleICSCEntryViewController_forgotSecurityCode__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 keychainSyncController:*(a1 + 32) didFinishWithResult:@"approveFromOtherDevice" error:0];
}

void __54__CDPSingleICSCEntryViewController_forgotSecurityCode__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = CDPLocalizedString();
  v4 = CDPLocalizedString();
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = CDPLocalizedString();
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];
  [v5 addAction:v8];

  v9 = MEMORY[0x277D750F8];
  v10 = CDPLocalizedString();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__CDPSingleICSCEntryViewController_forgotSecurityCode__block_invoke_3;
  v12[3] = &unk_278E2B708;
  v12[4] = *(a1 + 32);
  v11 = [v9 actionWithTitle:v10 style:0 handler:v12];
  [v5 addAction:v11];

  [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
}

void __54__CDPSingleICSCEntryViewController_forgotSecurityCode__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) disableUserInteractionAndStartSpinner];
  v2 = [*(a1 + 32) delegate];
  [v2 keychainSyncController:*(a1 + 32) didFinishWithResult:@"resetKeychain" error:0];
}

- (void)disableUserInteractionAndStartSpinner
{
  mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  navigationItem = [(CDPSingleICSCEntryViewController *)self navigationItem];
  [mEMORY[0x277D3FA90] startAnimatingInNavItem:navigationItem forIdentifier:@"singleICSCEntryController" hideBackButton:1];

  view = [(CDPSingleICSCEntryViewController *)self view];
  [view setUserInteractionEnabled:0];
}

- (void)enableUserInteractionAndStopSpinner
{
  view = [(CDPSingleICSCEntryViewController *)self view];
  [view setUserInteractionEnabled:1];

  mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  [mEMORY[0x277D3FA90] stopAnimatingForIdentifier:@"singleICSCEntryController"];
}

@end