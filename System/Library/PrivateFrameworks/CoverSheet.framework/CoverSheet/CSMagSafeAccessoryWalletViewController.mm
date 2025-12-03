@interface CSMagSafeAccessoryWalletViewController
- (CSMagSafeAccessoryWalletViewController)initWithAccessory:(id)accessory;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation CSMagSafeAccessoryWalletViewController

- (CSMagSafeAccessoryWalletViewController)initWithAccessory:(id)accessory
{
  v8.receiver = self;
  v8.super_class = CSMagSafeAccessoryWalletViewController;
  v3 = [(CSMagSafeAccessoryViewController *)&v8 initWithAccessory:accessory];
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
  view = [(CSMagSafeAccessoryWalletViewController *)self view];
  [view addSubview:self->_walletView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CSMagSafeAccessoryWalletViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:appear];
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