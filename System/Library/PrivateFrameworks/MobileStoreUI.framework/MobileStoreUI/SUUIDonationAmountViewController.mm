@interface SUUIDonationAmountViewController
- (SUUIDonationAmountViewController)initWithCharity:(id)charity configuration:(id)configuration;
- (void)_amountChangedNotification:(id)notification;
- (void)_cancelButtonAction:(id)action;
- (void)_donateButtonAction:(id)action;
- (void)_finishPurchaseWithResult:(BOOL)result errorMessage:(id)message;
- (void)_finishValidationWithResponse:(id)response error:(id)error;
- (void)_performActionAfterValidation;
- (void)_reenableAfterFailure;
- (void)_setDonationButtonEnabled:(BOOL)enabled;
- (void)_validateDonation:(id)donation;
- (void)dealloc;
- (void)donationConfigurationController:(id)controller didLoadLogoForCharity:(id)charity;
- (void)loadView;
@end

@implementation SUUIDonationAmountViewController

- (SUUIDonationAmountViewController)initWithCharity:(id)charity configuration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SUUIDonationAmountViewController;
  v7 = [(SUUIDonationStepViewController *)&v12 initWithCharity:charity configuration:configurationCopy];
  if (v7)
  {
    [configurationCopy addObserver:v7];
    clientContext = [configurationCopy clientContext];
    v9 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_FLOW_TITLE"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"DONATION_FLOW_TITLE" inBundles:0];
    }
    v10 = ;
    [(SUUIDonationAmountViewController *)v7 setTitle:v10];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:0x286B01400 object:0];

  v4.receiver = self;
  v4.super_class = SUUIDonationAmountViewController;
  [(SUUIDonationAmountViewController *)&v4 dealloc];
}

- (void)loadView
{
  donationConfiguration = [(SUUIDonationStepViewController *)self donationConfiguration];
  clientContext = [donationConfiguration clientContext];

  navigationItem = [(SUUIDonationAmountViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v5 setAction:sel__cancelButtonAction_];
  [v5 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"DONATION_FLOW_CANCEL_BUTTON"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"DONATION_FLOW_CANCEL_BUTTON" inBundles:0];
  }
  v6 = ;
  [v5 setTitle:v6];

  [navigationItem setLeftBarButtonItem:v5];
  v7 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v7 setAction:sel__donateButtonAction_];
  [v7 setEnabled:0];
  [v7 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"DONATION_FLOW_DONATE_BUTTON"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"DONATION_FLOW_DONATE_BUTTON" inBundles:0];
  }
  v8 = ;
  [v7 setTitle:v8];

  [navigationItem setRightBarButtonItem:v7];
  amountView = self->_amountView;
  if (!amountView)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = [SUUIDonationAmountView alloc];
    charity = [(SUUIDonationStepViewController *)self charity];
    v13 = [(SUUIDonationAmountView *)v11 initWithCharity:charity];
    v14 = self->_amountView;
    self->_amountView = v13;

    v15 = self->_amountView;
    donationConfiguration2 = [(SUUIDonationStepViewController *)self donationConfiguration];
    charity2 = [(SUUIDonationStepViewController *)self charity];
    v18 = [donationConfiguration2 logoImageForCharity:charity2];
    [(SUUIDonationAmountView *)v15 setLogoImage:v18];

    [defaultCenter addObserver:self selector:sel__amountChangedNotification_ name:0x286B01400 object:self->_amountView];
    amountView = self->_amountView;
  }

  [(SUUIDonationAmountViewController *)self setView:amountView];
}

- (void)donationConfigurationController:(id)controller didLoadLogoForCharity:(id)charity
{
  controllerCopy = controller;
  charityCopy = charity;
  charity = [(SUUIDonationStepViewController *)self charity];

  if (charity == charityCopy)
  {
    amountView = self->_amountView;
    v9 = [controllerCopy logoImageForCharity:charityCopy];
    [(SUUIDonationAmountView *)amountView setLogoImage:v9];
  }
}

- (void)_cancelButtonAction:(id)action
{
  selfCopy = [(SUUIDonationStepViewController *)self donationViewController];
  v5 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)_donateButtonAction:(id)action
{
  amountView = self->_amountView;
  actionCopy = action;
  [(SUUIDonationAmountView *)amountView setUserInteractionEnabled:0];
  [actionCopy setEnabled:0];

  if ([(SUUIGiftValidator *)self->_validator isValidating])
  {
    self->_tappedNextWhileValidating = 1;
  }

  else if (self->_lastValidationResponse)
  {

    [(SUUIDonationAmountViewController *)self _performActionAfterValidation];
  }

  else
  {
    self->_tappedNextWhileValidating = 1;
    selectedAmount = [(SUUIDonationAmountView *)self->_amountView selectedAmount];
    [(SUUIDonationAmountViewController *)self _validateDonation:selectedAmount];
  }
}

- (void)_amountChangedNotification:(id)notification
{
  selectedAmount = [(SUUIDonationAmountView *)self->_amountView selectedAmount];
  if (selectedAmount)
  {
    [(SUUIDonationAmountViewController *)self _setDonationButtonEnabled:1];
    [(SUUIDonationAmountViewController *)self _validateDonation:selectedAmount];
  }

  else
  {
    [(SUUIDonationAmountViewController *)self _setDonationButtonEnabled:0];
    [(SUUIGiftValidator *)self->_validator cancelValidation];
  }
}

- (void)_finishPurchaseWithResult:(BOOL)result errorMessage:(id)message
{
  resultCopy = result;
  messageCopy = message;
  v23 = messageCopy;
  if (resultCopy)
  {
    v7 = [SUUIDonationResultViewController alloc];
    charity = [(SUUIDonationStepViewController *)self charity];
    donationConfiguration = [(SUUIDonationStepViewController *)self donationConfiguration];
    v10 = [(SUUIDonationResultViewController *)v7 initWithCharity:charity configuration:donationConfiguration];

    selectedAmount = [(SUUIDonationAmountView *)self->_amountView selectedAmount];
    [(SUUIDonationResultViewController *)v10 setDonationAmount:selectedAmount];

    operationQueue = [(SUUIDonationStepViewController *)self operationQueue];
    [(SUUIDonationStepViewController *)v10 setOperationQueue:operationQueue];

    navigationController = [(SUUIDonationAmountViewController *)self navigationController];
    [navigationController pushViewController:v10 animated:1];
  }

  else
  {
    if (messageCopy)
    {
      donationConfiguration2 = [(SUUIDonationStepViewController *)self donationConfiguration];
      clientContext = [donationConfiguration2 clientContext];

      v16 = MEMORY[0x277D75110];
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"DONATION_FLOW_UNABLE_TO_DONATE"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DONATION_FLOW_UNABLE_TO_DONATE" inBundles:0];
      }
      v17 = ;
      v18 = [v16 alertControllerWithTitle:v17 message:v23 preferredStyle:1];

      v19 = MEMORY[0x277D750F8];
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"DONATION_FLOW_OK_BUTTON"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"DONATION_FLOW_OK_BUTTON" inBundles:0];
      }
      v20 = ;
      v21 = [v19 actionWithTitle:v20 style:0 handler:0];
      [v18 addAction:v21];

      [(SUUIDonationAmountViewController *)self presentViewController:v18 animated:1 completion:0];
    }

    [(SUUIDonationAmountViewController *)self _reenableAfterFailure];
  }

  purchaseRequest = self->_purchaseRequest;
  self->_purchaseRequest = 0;
}

- (void)_finishValidationWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  objc_storeStrong(&self->_lastValidationResponse, response);
  selectedAmount = [(SUUIDonationAmountView *)self->_amountView selectedAmount];
  [(SUUIDonationAmountViewController *)self _setDonationButtonEnabled:selectedAmount != 0];

  if (self->_tappedNextWhileValidating)
  {
    self->_tappedNextWhileValidating = 0;
    [(SUUIDonationAmountViewController *)self _performActionAfterValidation];
  }
}

- (void)_performActionAfterValidation
{
  if ([(SUUIGiftValidationResponse *)self->_lastValidationResponse isValid])
  {
    if (!self->_purchaseRequest)
    {
      objc_initWeak(&location, self);
      v3 = [SUUIGiftPurchaseRequest alloc];
      selectedAmount = [(SUUIDonationAmountView *)self->_amountView selectedAmount];
      donationConfiguration = [(SUUIDonationStepViewController *)self donationConfiguration];
      v6 = [(SUUIGiftPurchaseRequest *)v3 initWithDonation:selectedAmount configuration:donationConfiguration];
      purchaseRequest = self->_purchaseRequest;
      self->_purchaseRequest = v6;

      v8 = self->_purchaseRequest;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __65__SUUIDonationAmountViewController__performActionAfterValidation__block_invoke;
      v18[3] = &unk_2798F8CA8;
      objc_copyWeak(&v19, &location);
      [(SUUIGiftPurchaseRequest *)v8 purchaseWithCompletionBlock:v18];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    donationConfiguration2 = [(SUUIDonationStepViewController *)self donationConfiguration];
    clientContext = [donationConfiguration2 clientContext];

    v10 = MEMORY[0x277D75110];
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_FLOW_INVALID_DONATION"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"DONATION_FLOW_INVALID_DONATION" inBundles:0];
    }
    v11 = ;
    errorString = [(SUUIGiftValidationResponse *)self->_lastValidationResponse errorString];
    v13 = [v10 alertControllerWithTitle:v11 message:errorString preferredStyle:1];

    v14 = MEMORY[0x277D750F8];
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_FLOW_OK_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"DONATION_FLOW_OK_BUTTON" inBundles:0];
    }
    v15 = ;
    v16 = [v14 actionWithTitle:v15 style:0 handler:0];
    [v13 addAction:v16];

    [(SUUIDonationAmountViewController *)self presentViewController:v13 animated:1 completion:0];
    [(SUUIDonationAmountViewController *)self _reenableAfterFailure];
  }
}

void __65__SUUIDonationAmountViewController__performActionAfterValidation__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SUUIDonationAmountViewController__performActionAfterValidation__block_invoke_2;
  block[3] = &unk_2798F8C80;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __65__SUUIDonationAmountViewController__performActionAfterValidation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishPurchaseWithResult:*(a1 + 48) errorMessage:*(a1 + 32)];
}

- (void)_reenableAfterFailure
{
  [(SUUIDonationAmountView *)self->_amountView setUserInteractionEnabled:1];
  selectedAmount = [(SUUIDonationAmountView *)self->_amountView selectedAmount];
  [(SUUIDonationAmountViewController *)self _setDonationButtonEnabled:selectedAmount != 0];
}

- (void)_setDonationButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(SUUIDonationAmountViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  if (enabledCopy)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [rightBarButtonItem setEnabled:enabledCopy];
  [rightBarButtonItem setStyle:v5];
}

- (void)_validateDonation:(id)donation
{
  donationCopy = donation;
  validator = self->_validator;
  if (validator)
  {
    [(SUUIGiftValidator *)validator cancelValidation];
  }

  else
  {
    donationConfiguration = [(SUUIDonationStepViewController *)self donationConfiguration];
    v7 = [SUUIGiftValidator alloc];
    donationValidationURL = [donationConfiguration donationValidationURL];
    clientContext = [donationConfiguration clientContext];
    v10 = [(SUUIGiftValidator *)v7 initWithValidationURL:donationValidationURL clientContext:clientContext];
    v11 = self->_validator;
    self->_validator = v10;

    v12 = self->_validator;
    operationQueue = [(SUUIDonationStepViewController *)self operationQueue];
    [(SUUIGiftValidator *)v12 setOperationQueue:operationQueue];
  }

  objc_initWeak(&location, self);
  v14 = self->_validator;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__SUUIDonationAmountViewController__validateDonation___block_invoke;
  v15[3] = &unk_2798F8CD0;
  objc_copyWeak(&v16, &location);
  [(SUUIGiftValidator *)v14 validateDonation:donationCopy withCompletionBlock:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __54__SUUIDonationAmountViewController__validateDonation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SUUIDonationAmountViewController__validateDonation___block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __54__SUUIDonationAmountViewController__validateDonation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishValidationWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

@end