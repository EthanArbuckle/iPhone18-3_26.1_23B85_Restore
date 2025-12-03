@interface FAFamilySetupOrganizerViewController
- (FAFamilySetupOrganizerViewController)initWithAccount:(id)account store:(id)store;
- (FAFamilySetupPageDelegate)delegate;
- (id)_createCancelButton;
- (id)instructions;
- (id)pageTitle;
- (id)titleForContinuebutton;
- (void)_cancelButtonWasTapped:(id)tapped;
- (void)continueButtonWasTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation FAFamilySetupOrganizerViewController

- (FAFamilySetupOrganizerViewController)initWithAccount:(id)account store:(id)store
{
  storeCopy = store;
  accountCopy = account;
  v8 = [storeCopy aa_grandSlamAccountForiCloudAccount:accountCopy];
  v9 = objc_alloc(MEMORY[0x277CEC808]);
  v10 = [v9 initWithAccountStore:storeCopy grandSlamAccount:v8 appTokenID:*MEMORY[0x277CEC6F0]];

  v11 = [(FAConfirmIdentityViewController *)self initWithAppleAccount:accountCopy grandSlamSigner:v10];
  return v11;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = FAFamilySetupOrganizerViewController;
  [(FAFamilySetupOrganizerViewController *)&v5 viewDidLoad];
  navigationItem = [(FAFamilySetupOrganizerViewController *)self navigationItem];
  _createCancelButton = [(FAFamilySetupOrganizerViewController *)self _createCancelButton];
  [navigationItem setRightBarButtonItem:_createCancelButton];
}

- (id)pageTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FAMILY_SETUP_SECOND_PAGE_TITLE" value:&stru_282D9AA68 table:@"Localizable"];

  return v3;
}

- (id)instructions
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FAMILY_SETUP_SECOND_PAGE_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];

  return v3;
}

- (id)titleForContinuebutton
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FAMILY_SETUP_CONTINUE_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];

  return v3;
}

- (id)_createCancelButton
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonWasTapped_];

  return v2;
}

- (void)_cancelButtonWasTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained familySetupPage:self didCompleteWithSuccess:0];
}

- (void)continueButtonWasTapped:(id)tapped
{
  v5.receiver = self;
  v5.super_class = FAFamilySetupOrganizerViewController;
  [(FAConfirmIdentityViewController *)&v5 continueButtonWasTapped:tapped];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained familySetupPage:self didCompleteWithSuccess:1];
}

- (FAFamilySetupPageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end