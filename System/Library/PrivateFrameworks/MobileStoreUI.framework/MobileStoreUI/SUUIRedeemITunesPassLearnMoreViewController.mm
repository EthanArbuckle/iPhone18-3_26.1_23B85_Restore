@interface SUUIRedeemITunesPassLearnMoreViewController
- (SUUIRedeemITunesPassLearnMoreViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_existingPass;
- (void)_didLoadPassbookURLString:(id)string;
- (void)_loadPassbookPass;
- (void)_loadPassbookURL;
- (void)_passButtonAction:(id)action;
- (void)_showErrorDialog;
- (void)dealloc;
- (void)loadView;
- (void)passbookLoaderDidFinish:(id)finish;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUUIRedeemITunesPassLearnMoreViewController

- (SUUIRedeemITunesPassLearnMoreViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SUUIRedeemITunesPassLearnMoreViewController;
  v4 = [(SUUIRedeemITunesPassLearnMoreViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(SUUIRedeemITunesPassLearnMoreViewController *)v4 setEdgesForExtendedLayout:0];
  }

  return v5;
}

- (void)dealloc
{
  button = [(SUUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
  [button removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SUUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  v4.receiver = self;
  v4.super_class = SUUIRedeemITunesPassLearnMoreViewController;
  [(SUUIRedeemITunesPassLearnMoreViewController *)&v4 dealloc];
}

- (void)loadView
{
  learnMoreView = self->_learnMoreView;
  if (!learnMoreView)
  {
    v4 = objc_alloc_init(SUUIRedeemITunesPassLearnMoreView);
    v5 = self->_learnMoreView;
    self->_learnMoreView = v4;

    v6 = self->_learnMoreView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(SUUIRedeemITunesPassLearnMoreView *)v6 setBackgroundColor:whiteColor];

    configuration = [(SUUIRedeemStepViewController *)self configuration];
    v9 = self->_learnMoreView;
    successImage = [configuration successImage];
    [(SUUIRedeemITunesPassLearnMoreView *)v9 setHeaderImage:successImage];

    iTunesPassConfiguration = [configuration ITunesPassConfiguration];
    v12 = self->_learnMoreView;
    learnMoreExplanation = [iTunesPassConfiguration learnMoreExplanation];
    [(SUUIRedeemITunesPassLearnMoreView *)v12 setExplanationString:learnMoreExplanation];

    _existingPass = [(SUUIRedeemITunesPassLearnMoreViewController *)self _existingPass];

    v15 = self->_learnMoreView;
    if (_existingPass)
    {
      [iTunesPassConfiguration learnMoreViewPassButtonTitle];
    }

    else
    {
      [iTunesPassConfiguration learnMoreAddPassButtonTitle];
    }
    v16 = ;
    [(SUUIRedeemITunesPassLearnMoreView *)v15 setButtonTitle:v16];

    button = [(SUUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
    [button addTarget:self action:sel__passButtonAction_ forControlEvents:64];

    learnMoreView = self->_learnMoreView;
  }

  [(SUUIRedeemITunesPassLearnMoreViewController *)self setView:learnMoreView];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  +[SUUIITunesPassLearnMoreAlertDelegate beginThrottleInterval];
  v5.receiver = self;
  v5.super_class = SUUIRedeemITunesPassLearnMoreViewController;
  [(SUUIRedeemITunesPassLearnMoreViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  configuration = [(SUUIRedeemStepViewController *)self configuration];
  iTunesPassConfiguration = [configuration ITunesPassConfiguration];

  learnMoreTitle = [iTunesPassConfiguration learnMoreTitle];
  [(SUUIRedeemITunesPassLearnMoreViewController *)self setTitle:learnMoreTitle];

  v8 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v8 setAction:sel__doneButtonAction_];
  [v8 setStyle:2];
  [v8 setTarget:self];
  learnMoreDoneButtonTitle = [iTunesPassConfiguration learnMoreDoneButtonTitle];
  [v8 setTitle:learnMoreDoneButtonTitle];

  navigationItem = [(SUUIRedeemITunesPassLearnMoreViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v8];

  v11.receiver = self;
  v11.super_class = SUUIRedeemITunesPassLearnMoreViewController;
  [(SUUIRedeemITunesPassLearnMoreViewController *)&v11 viewWillAppear:appearCopy];
}

- (void)passbookLoaderDidFinish:(id)finish
{
  [(SUUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  passbookLoader = self->_passbookLoader;
  self->_passbookLoader = 0;

  _existingPass = [(SUUIRedeemITunesPassLearnMoreViewController *)self _existingPass];

  if (_existingPass)
  {
    configuration = [(SUUIRedeemStepViewController *)self configuration];
    iTunesPassConfiguration = [configuration ITunesPassConfiguration];

    learnMoreView = self->_learnMoreView;
    learnMoreViewPassButtonTitle = [iTunesPassConfiguration learnMoreViewPassButtonTitle];
    [(SUUIRedeemITunesPassLearnMoreView *)learnMoreView setButtonTitle:learnMoreViewPassButtonTitle];
  }

  button = [(SUUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
  [button setEnabled:1];
}

- (void)_passButtonAction:(id)action
{
  actionCopy = action;
  _existingPass = [(SUUIRedeemITunesPassLearnMoreViewController *)self _existingPass];
  v5 = _existingPass;
  if (_existingPass)
  {
    passURL = [_existingPass passURL];
    SUUIMetricsOpenURL(passURL);
  }

  else
  {
    self->_didTapAddPassbookButton = 1;
    [actionCopy setEnabled:0];
    if (self->_passbookURL)
    {
      [(SUUIRedeemITunesPassLearnMoreViewController *)self _loadPassbookPass];
    }

    else
    {
      [(SUUIRedeemITunesPassLearnMoreViewController *)self _loadPassbookURL];
    }
  }
}

- (void)_didLoadPassbookURLString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:stringCopy];
    passbookURL = self->_passbookURL;
    self->_passbookURL = v4;

    if (self->_didTapAddPassbookButton)
    {
      [(SUUIRedeemITunesPassLearnMoreViewController *)self _loadPassbookPass];
    }
  }

  else
  {
    [(SUUIRedeemITunesPassLearnMoreViewController *)self _showErrorDialog];
    button = [(SUUIRedeemITunesPassLearnMoreView *)self->_learnMoreView button];
    [button setEnabled:1];
  }
}

- (id)_existingPass
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  iTunesPassSerialNumber = [activeAccount ITunesPassSerialNumber];

  if (iTunesPassSerialNumber)
  {
    v5 = SUUIPassKitUIFramework();
    v6 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Pkpasslibrary.isa, v5));
    v7 = [v6 passWithPassTypeIdentifier:@"pass.com.apple.itunes.storecredit" serialNumber:iTunesPassSerialNumber];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_loadPassbookPass
{
  if (!self->_passbookLoader && self->_passbookURL)
  {
    v3 = [SUUIPassbookLoader alloc];
    clientContext = [(SUUIRedeemStepViewController *)self clientContext];
    v5 = [(SUUIPassbookLoader *)v3 initWithClientContext:clientContext];
    passbookLoader = self->_passbookLoader;
    self->_passbookLoader = v5;

    [(SUUIPassbookLoader *)self->_passbookLoader setDelegate:self];
    v7 = self->_passbookLoader;
    operationQueue = [(SUUIRedeemStepViewController *)self operationQueue];
    [(SUUIPassbookLoader *)v7 setOperationQueue:operationQueue];

    v9 = self->_passbookLoader;
    passbookURL = self->_passbookURL;

    [(SUUIPassbookLoader *)v9 loadPassWithURL:passbookURL];
  }
}

- (void)_loadPassbookURL
{
  if (!self->_passbookURL)
  {
    objc_initWeak(&location, self);
    clientContext = [(SUUIRedeemStepViewController *)self clientContext];
    uRLBag = [clientContext URLBag];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__SUUIRedeemITunesPassLearnMoreViewController__loadPassbookURL__block_invoke;
    v5[3] = &unk_2798F7588;
    objc_copyWeak(&v6, &location);
    [uRLBag loadValueForKey:@"getAddCreditPassUrl" completionBlock:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __63__SUUIRedeemITunesPassLearnMoreViewController__loadPassbookURL__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SUUIRedeemITunesPassLearnMoreViewController__loadPassbookURL__block_invoke_2;
  v5[3] = &unk_2798F7560;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __63__SUUIRedeemITunesPassLearnMoreViewController__loadPassbookURL__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didLoadPassbookURLString:*(a1 + 32)];
}

- (void)_showErrorDialog
{
  clientContext = [(SUUIRedeemStepViewController *)self clientContext];
  v4 = MEMORY[0x277D75110];
  v10 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"ITUNES_PASS_LOAD_ERROR_TITLE" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_LOAD_ERROR_TITLE" inBundles:0 inTable:@"Redeem"];
  }
  v5 = ;
  v6 = [v4 alertControllerWithTitle:v5 message:0 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  if (v10)
  {
    [v10 localizedStringForKey:@"ITUNES_PASS_LOAD_ERROR_DISMISS_BUTTON" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_LOAD_ERROR_DISMISS_BUTTON" inBundles:0 inTable:@"Redeem"];
  }
  v8 = ;
  v9 = [v7 actionWithTitle:v8 style:0 handler:0];
  [v6 addAction:v9];

  [(SUUIRedeemITunesPassLearnMoreViewController *)self presentViewController:v6 animated:1 completion:0];
}

@end