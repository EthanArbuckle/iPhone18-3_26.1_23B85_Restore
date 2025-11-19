@interface LACUIBiometryAlertController
- (id)_uiAlertActionForAction:(id)a3;
- (void)_holdPresentingViewController;
- (void)_releasePresentingViewController;
- (void)_updateAX;
- (void)addCustomAction:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
- (void)viewDidLoad;
@end

@implementation LACUIBiometryAlertController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LACUIBiometryAlertController;
  [(LACUIBiometryAlertController *)&v3 viewDidLoad];
  [(LACUIBiometryAlertController *)self _updateAX];
}

- (void)setTitle:(id)a3
{
  v4.receiver = self;
  v4.super_class = LACUIBiometryAlertController;
  [(LACUIBiometryAlertController *)&v4 setTitle:a3];
  [(LACUIBiometryAlertController *)self _updateAX];
}

- (void)setMessage:(id)a3
{
  v4.receiver = self;
  v4.super_class = LACUIBiometryAlertController;
  [(LACUIBiometryAlertController *)&v4 setMessage:a3];
  [(LACUIBiometryAlertController *)self _updateAX];
}

- (void)addCustomAction:(id)a3
{
  v4 = [(LACUIBiometryAlertController *)self _uiAlertActionForAction:a3];
  v5.receiver = self;
  v5.super_class = LACUIBiometryAlertController;
  [(LACUIBiometryAlertController *)&v5 addAction:v4];
}

- (id)_uiAlertActionForAction:(id)a3
{
  v4 = a3;
  v5 = [v4 shouldDismissAlert];
  v6 = [v4 handler];
  v7 = MEMORY[0x277D750F8];
  v8 = [v4 title];
  v9 = -[LACUIBiometryAlertController _actionStyleForType:](self, "_actionStyleForType:", [v4 type]);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __56__LACUIBiometryAlertController__uiAlertActionForAction___block_invoke;
  v22 = &unk_27981EB28;
  v23 = v6;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __56__LACUIBiometryAlertController__uiAlertActionForAction___block_invoke_2;
  v17 = &__block_descriptor_33_e5_B8__0l;
  LOBYTE(v18) = v5;
  v10 = v6;
  v11 = [v7 _actionWithTitle:v8 image:0 style:v9 handler:&v19 shouldDismissHandler:&v14];

  v12 = [v4 axIdentifier];

  [v11 setAccessibilityIdentifier:v12];

  return v11;
}

- (void)_holdPresentingViewController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(LACUIBiometryAlertController *)self presentingViewController];
  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = v3;

  v5 = LACLogAlertUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_presentingViewController;
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_256063000, v5, OS_LOG_TYPE_DEFAULT, "Holding %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_releasePresentingViewController
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = LACLogAlertUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    presentingViewController = self->_presentingViewController;
    v7 = 138543362;
    v8 = presentingViewController;
    _os_log_impl(&dword_256063000, v3, OS_LOG_TYPE_DEFAULT, "Released %{public}@", &v7, 0xCu);
  }

  v5 = self->_presentingViewController;
  self->_presentingViewController = 0;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateAX
{
  v3 = [(LACUIBiometryAlertController *)self view];
  [v3 setAccessibilityIdentifier:@"com.apple.localauthentication.ax.authentication.alert"];

  v4 = MEMORY[0x277CCACA8];
  v8 = [(LACUIBiometryAlertController *)self title];
  v5 = [(LACUIBiometryAlertController *)self message];
  v6 = [v4 stringWithFormat:@"%@#%@", v8, v5];
  v7 = [(LACUIBiometryAlertController *)self view];
  [v7 setAccessibilityValue:v6];
}

@end