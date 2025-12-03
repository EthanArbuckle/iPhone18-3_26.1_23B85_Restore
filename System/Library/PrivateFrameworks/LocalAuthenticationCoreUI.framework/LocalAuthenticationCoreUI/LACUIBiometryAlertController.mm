@interface LACUIBiometryAlertController
- (id)_uiAlertActionForAction:(id)action;
- (void)_holdPresentingViewController;
- (void)_releasePresentingViewController;
- (void)_updateAX;
- (void)addCustomAction:(id)action;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
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

- (void)setTitle:(id)title
{
  v4.receiver = self;
  v4.super_class = LACUIBiometryAlertController;
  [(LACUIBiometryAlertController *)&v4 setTitle:title];
  [(LACUIBiometryAlertController *)self _updateAX];
}

- (void)setMessage:(id)message
{
  v4.receiver = self;
  v4.super_class = LACUIBiometryAlertController;
  [(LACUIBiometryAlertController *)&v4 setMessage:message];
  [(LACUIBiometryAlertController *)self _updateAX];
}

- (void)addCustomAction:(id)action
{
  v4 = [(LACUIBiometryAlertController *)self _uiAlertActionForAction:action];
  v5.receiver = self;
  v5.super_class = LACUIBiometryAlertController;
  [(LACUIBiometryAlertController *)&v5 addAction:v4];
}

- (id)_uiAlertActionForAction:(id)action
{
  actionCopy = action;
  shouldDismissAlert = [actionCopy shouldDismissAlert];
  handler = [actionCopy handler];
  v7 = MEMORY[0x277D750F8];
  title = [actionCopy title];
  v9 = -[LACUIBiometryAlertController _actionStyleForType:](self, "_actionStyleForType:", [actionCopy type]);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __56__LACUIBiometryAlertController__uiAlertActionForAction___block_invoke;
  v22 = &unk_27981EB28;
  v23 = handler;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __56__LACUIBiometryAlertController__uiAlertActionForAction___block_invoke_2;
  v17 = &__block_descriptor_33_e5_B8__0l;
  LOBYTE(v18) = shouldDismissAlert;
  v10 = handler;
  v11 = [v7 _actionWithTitle:title image:0 style:v9 handler:&v19 shouldDismissHandler:&v14];

  axIdentifier = [actionCopy axIdentifier];

  [v11 setAccessibilityIdentifier:axIdentifier];

  return v11;
}

- (void)_holdPresentingViewController
{
  v10 = *MEMORY[0x277D85DE8];
  presentingViewController = [(LACUIBiometryAlertController *)self presentingViewController];
  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = presentingViewController;

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
  view = [(LACUIBiometryAlertController *)self view];
  [view setAccessibilityIdentifier:@"com.apple.localauthentication.ax.authentication.alert"];

  v4 = MEMORY[0x277CCACA8];
  title = [(LACUIBiometryAlertController *)self title];
  message = [(LACUIBiometryAlertController *)self message];
  v6 = [v4 stringWithFormat:@"%@#%@", title, message];
  view2 = [(LACUIBiometryAlertController *)self view];
  [view2 setAccessibilityValue:v6];
}

@end