@interface SUUIDonationViewController
- (NSOperationQueue)operationQueue;
- (SUUIDonationViewController)initWithCharityIdentifier:(id)a3;
- (SUUIDonationViewController)initWithURL:(id)a3;
- (id)_initSUUIDonationViewController;
- (void)_configurationDidLoadWithResult:(BOOL)a3 error:(id)a4;
- (void)_finishAuthenticateWithResponse:(id)a3 error:(id)a4;
- (void)_loadDonationConfiguration;
- (void)setClientContext:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUUIDonationViewController

- (id)_initSUUIDonationViewController
{
  v3 = objc_alloc_init(MEMORY[0x277D75D28]);
  v4 = [v3 view];
  v5 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  v9.receiver = self;
  v9.super_class = SUUIDonationViewController;
  v6 = [(SUUIDonationViewController *)&v9 initWithRootViewController:v3];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeholderViewController, v3);
    [(SUUIDonationViewController *)v7 setModalPresentationStyle:2];
  }

  return v7;
}

- (SUUIDonationViewController)initWithCharityIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SUUIDonationViewController *)self _initSUUIDonationViewController];
  if (v5)
  {
    v6 = [v4 copy];
    charityID = v5->_charityID;
    v5->_charityID = v6;
  }

  return v5;
}

- (SUUIDonationViewController)initWithURL:(id)a3
{
  v4 = [a3 valueForQueryParameter:@"charity"];
  v5 = [(SUUIDonationViewController *)self initWithCharityIdentifier:v4];

  return v5;
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:6];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)setClientContext:(id)a3
{
  v5 = a3;
  if (self->_clientContext != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_clientContext, a3);
    placeholderViewController = self->_placeholderViewController;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"DONATION_FLOW_TITLE"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"DONATION_FLOW_TITLE" inBundles:0];
    }
    v8 = ;
    [(UIViewController *)placeholderViewController setTitle:v8];

    v5 = v9;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (!self->_donationConfiguration)
  {
    v5 = objc_alloc_init(MEMORY[0x277D751E0]);
    [v5 setAction:sel__cancelButtonAction_];
    [v5 setTarget:self];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"DONATION_FLOW_CANCEL_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"DONATION_FLOW_CANCEL_BUTTON" inBundles:0];
    }
    v7 = ;
    [v5 setTitle:v7];

    v8 = [(SUUIDonationViewController *)self topViewController];
    v9 = [v8 navigationItem];
    [v9 setLeftBarButtonItem:v5];

    v10 = [MEMORY[0x277D69A20] defaultStore];
    v11 = [v10 activeAccount];

    if (v11)
    {
      [(SUUIDonationViewController *)self _loadDonationConfiguration];
    }

    else
    {
      objc_initWeak(&location, self);
      v12 = objc_alloc(MEMORY[0x277D69A50]);
      v13 = [MEMORY[0x277D69A58] contextForSignIn];
      v14 = [v12 initWithAuthenticationContext:v13];

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __45__SUUIDonationViewController_viewWillAppear___block_invoke;
      v16[3] = &unk_2798FB2C0;
      objc_copyWeak(&v17, &location);
      [v14 startWithAuthenticateResponseBlock:v16];
      objc_destroyWeak(&v17);

      objc_destroyWeak(&location);
    }
  }

  v15.receiver = self;
  v15.super_class = SUUIDonationViewController;
  [(SUUIDonationViewController *)&v15 viewWillAppear:v3];
}

void __45__SUUIDonationViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUUIDonationViewController_viewWillAppear___block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __45__SUUIDonationViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishAuthenticateWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_configurationDidLoadWithResult:(BOOL)a3 error:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  donationConfiguration = self->_donationConfiguration;
  if (self->_charityID)
  {
    v7 = [(SUUIDonationConfiguration *)donationConfiguration charityForIdentifier:?];
    if (v7)
    {
LABEL_3:
      v8 = [[SUUIDonationAmountViewController alloc] initWithCharity:v7 configuration:self->_donationConfiguration];
      v9 = [(SUUIDonationViewController *)self operationQueue];
      [(SUUIDonationStepViewController *)v8 setOperationQueue:v9];

      [(SUUIDonationConfiguration *)self->_donationConfiguration loadLogoForCharity:v7];
      v16[0] = v8;
      v10 = MEMORY[0x277CBEA60];
      v11 = v16;
      goto LABEL_10;
    }
  }

  else
  {
    v12 = [(SUUIDonationConfiguration *)donationConfiguration allCharities];
    if ([v12 count])
    {
      v7 = [v12 objectAtIndex:0];
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      goto LABEL_3;
    }
  }

  if (![SUUINetworkErrorViewController canDisplayError:v5])
  {
    NSLog(&cfstr_DonationError.isa, v5);
    [(SUUIDonationViewController *)self dismissViewControllerAnimated:1 completion:0];
    goto LABEL_11;
  }

  v8 = [[SUUINetworkErrorViewController alloc] initWithError:v5];
  [(SUUIDonationAmountViewController *)v8 setClientContext:self->_clientContext];
  v15 = v8;
  v10 = MEMORY[0x277CBEA60];
  v11 = &v15;
LABEL_10:
  v13 = [v10 arrayWithObjects:v11 count:1];
  [(SUUIDonationViewController *)self setViewControllers:v13];

LABEL_11:
  placeholderViewController = self->_placeholderViewController;
  self->_placeholderViewController = 0;
}

- (void)_finishAuthenticateWithResponse:(id)a3 error:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7 && [v7 authenticateResponseType] == 4)
  {
    [(SUUIDonationViewController *)self _loadDonationConfiguration];
  }

  else
  {
    [(SUUIDonationViewController *)self _configurationDidLoadWithResult:0 error:v6];
  }
}

- (void)_loadDonationConfiguration
{
  objc_initWeak(&location, self);
  v3 = [SUUIDonationConfiguration alloc];
  v4 = [(SUUIDonationViewController *)self operationQueue];
  v5 = [(SUUIDonationViewController *)self clientContext];
  v6 = [(SUUIDonationConfiguration *)v3 initWithOperationQueue:v4 clientContext:v5];
  donationConfiguration = self->_donationConfiguration;
  self->_donationConfiguration = v6;

  v8 = self->_donationConfiguration;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SUUIDonationViewController__loadDonationConfiguration__block_invoke;
  v9[3] = &unk_2798F6AF8;
  objc_copyWeak(&v10, &location);
  [(SUUIDonationConfiguration *)v8 loadConfigurationWithCompletionBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __56__SUUIDonationViewController__loadDonationConfiguration__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUUIDonationViewController__loadDonationConfiguration__block_invoke_2;
  block[3] = &unk_2798F8C80;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __56__SUUIDonationViewController__loadDonationConfiguration__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _configurationDidLoadWithResult:*(a1 + 48) error:*(a1 + 32)];
}

@end