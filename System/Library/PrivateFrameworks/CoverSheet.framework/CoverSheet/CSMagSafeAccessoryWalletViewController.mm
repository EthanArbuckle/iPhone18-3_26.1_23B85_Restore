@interface CSMagSafeAccessoryWalletViewController
- (CSMagSafeAccessoryWalletViewController)initWithAccessory:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CSMagSafeAccessoryWalletViewController

- (CSMagSafeAccessoryWalletViewController)initWithAccessory:(id)a3
{
  v8.receiver = self;
  v8.super_class = CSMagSafeAccessoryWalletViewController;
  v3 = [(CSMagSafeAccessoryViewController *)&v8 initWithAccessory:a3];
  if (v3)
  {
    v4 = [CSMagSafeAccessoryWalletView alloc];
    v5 = [(CSMagSafeAccessoryWalletView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    walletView = v3->_walletView;
    v3->_walletView = v5;
  }

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CSMagSafeAccessoryWalletViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidLoad];
  v3 = [(CSMagSafeAccessoryWalletViewController *)self view];
  [v3 addSubview:self->_walletView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CSMagSafeAccessoryWalletViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:a3];
  [(CSMagSafeAccessoryWalletViewController *)self setIsAnimatingPresentation:1];
  walletView = self->_walletView;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CSMagSafeAccessoryWalletViewController_viewDidAppear___block_invoke;
  v5[3] = &unk_27838B770;
  v5[4] = self;
  [(CSMagSafeAccessoryWalletView *)walletView performAnimation:0 completionHandler:v5];
}

@end