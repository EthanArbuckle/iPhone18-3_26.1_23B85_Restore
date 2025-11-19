@interface HUAddGuestViewController
- (HUAddGuestViewController)initWithPinCodeManager:(id)a3 home:(id)a4;
- (HUPresentationDelegate)presentationDelegate;
- (UIBarButtonItem)addButtonItem;
- (void)saveButtonPressed:(id)a3;
- (void)setAddButtonItem:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUAddGuestViewController

- (HUAddGuestViewController)initWithPinCodeManager:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HUPinCodeDetailsViewController alloc] initWithItem:0 pinCodeManager:v7 home:v6];

  v9 = _HULocalizedStringWithDefaultValue(@"HUAddGuestPinCodeTitle", @"HUAddGuestPinCodeTitle", 1);
  v12.receiver = self;
  v12.super_class = HUAddGuestViewController;
  v10 = [(HUItemTableOBWelcomeController *)&v12 initWithTitle:v9 detailText:0 icon:0 contentLayout:3 itemTableViewController:v8];

  if (v10)
  {
    objc_storeStrong(&v10->_pinCodeDetailsController, v8);
    [(HUPinCodeDetailsViewController *)v10->_pinCodeDetailsController setDelegate:v10];
  }

  return v10;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = HUAddGuestViewController;
  [(HUItemTableOBWelcomeController *)&v11 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = _HULocalizedStringWithDefaultValue(@"HUPinCodeAddButtonTitle", @"HUPinCodeAddButtonTitle", 1);
  v5 = [v3 initWithTitle:v4 style:2 target:self action:sel_saveButtonPressed_];
  [(HUAddGuestViewController *)self setSaveButtonItem:v5];

  v6 = [(HUAddGuestViewController *)self saveButtonItem];
  [v6 setEnabled:0];

  v7 = [(HUAddGuestViewController *)self saveButtonItem];
  v8 = [(OBBaseWelcomeController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  v9 = [(OBBaseWelcomeController *)self navigationItem];
  v10 = [v9 rightBarButtonItem];
  [v10 setAccessibilityIdentifier:@"Home.Locks.Guest.Pincode.Add"];
}

- (UIBarButtonItem)addButtonItem
{
  v2 = [(OBBaseWelcomeController *)self navigationItem];
  v3 = [v2 rightBarButtonItem];

  return v3;
}

- (void)setAddButtonItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(HUAddGuestViewController *)self saveButtonItem];
  }

  v6 = v4;
  v5 = [(OBBaseWelcomeController *)self navigationItem];
  [v5 setRightBarButtonItem:v6];
}

- (void)saveButtonPressed:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HUAddGuestViewController *)self pinCodeDetailsController];
  v6 = [v5 commitNewPinCode];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HUAddGuestViewController_saveButtonPressed___block_invoke;
  v8[3] = &unk_277DBC2C8;
  objc_copyWeak(&v9, &location);
  v7 = [v6 addCompletionBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__HUAddGuestViewController_saveButtonPressed___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRequiresPresentingViewControllerDismissal:1];
  if (v4)
  {
    v6 = [MEMORY[0x277D14640] sharedHandler];
    v7 = *MEMORY[0x277D13BE0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__HUAddGuestViewController_saveButtonPressed___block_invoke_2;
    v10[3] = &unk_277DB7558;
    v11 = v4;
    v12 = WeakRetained;
    [v6 handleError:v11 operationType:v7 options:0 retryBlock:0 cancelBlock:v10];
  }

  else
  {
    v8 = [WeakRetained presentationDelegate];
    v9 = [v8 finishPresentation:WeakRetained animated:1];
  }
}

void __46__HUAddGuestViewController_saveButtonPressed___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) domain];
  if ([v4 isEqualToString:*MEMORY[0x277D13850]])
  {
    v2 = [*(a1 + 32) code];

    if (v2 != 80)
    {
      return;
    }

    v4 = [*(a1 + 40) presentationDelegate];
    v3 = [v4 finishPresentation:*(a1 + 40) animated:1];
  }
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end