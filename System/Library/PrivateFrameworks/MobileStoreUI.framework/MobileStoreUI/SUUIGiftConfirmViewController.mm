@interface SUUIGiftConfirmViewController
- (SUUIGiftConfirmViewController)initWithGift:(id)gift configuration:(id)configuration;
- (id)_buyButtonTitle;
- (id)_confirmButtonTitle;
- (id)_newBuyBarButtonItemWithTitle:(id)title;
- (void)_buyButtonAction:(id)action;
- (void)_cancelBuyConfirmation:(id)confirmation;
- (void)_finishPurchaseWithResult:(BOOL)result errorMessage:(id)message;
- (void)_purchaseGift;
- (void)_removeCancelGestureRecognizer;
- (void)_setShowingConfirmation:(BOOL)confirmation animated:(BOOL)animated;
- (void)_showSuccessPage;
- (void)_termsButtonAction:(id)action;
- (void)dealloc;
- (void)loadView;
@end

@implementation SUUIGiftConfirmViewController

- (SUUIGiftConfirmViewController)initWithGift:(id)gift configuration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SUUIGiftConfirmViewController;
  v7 = [(SUUIGiftStepViewController *)&v12 initWithGift:gift configuration:configurationCopy];
  if (v7)
  {
    clientContext = [configurationCopy clientContext];
    v9 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_REVIEW_TITLE" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_REVIEW_TITLE" inBundles:0 inTable:@"Gifting"];
    }
    v10 = ;
    [(SUUIGiftConfirmViewController *)v7 setTitle:v10];

    [(SUUIGiftConfirmViewController *)v7 setEdgesForExtendedLayout:0];
  }

  return v7;
}

- (void)dealloc
{
  termsButton = [(SUUIGiftConfirmView *)self->_confirmView termsButton];
  [termsButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SUUIFocusedTouchGestureRecognizer *)self->_touchRecognizer removeTarget:self action:0];
  v4.receiver = self;
  v4.super_class = SUUIGiftConfirmViewController;
  [(SUUIGiftConfirmViewController *)&v4 dealloc];
}

- (void)loadView
{
  confirmView = self->_confirmView;
  if (!confirmView)
  {
    v4 = [SUUIGiftConfirmView alloc];
    gift = [(SUUIGiftStepViewController *)self gift];
    giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
    v7 = [(SUUIGiftConfirmView *)v4 initWithGift:gift configuration:giftConfiguration];
    v8 = self->_confirmView;
    self->_confirmView = v7;

    v9 = self->_confirmView;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUUIGiftConfirmView *)v9 setBackgroundColor:systemBackgroundColor];

    termsButton = [(SUUIGiftConfirmView *)self->_confirmView termsButton];
    [termsButton addTarget:self action:sel__termsButtonAction_ forControlEvents:64];

    confirmView = self->_confirmView;
  }

  [(SUUIGiftConfirmViewController *)self setView:confirmView];
  giftConfiguration2 = [(SUUIGiftStepViewController *)self giftConfiguration];
  clientContext = [giftConfiguration2 clientContext];

  _buyButtonTitle = [(SUUIGiftConfirmViewController *)self _buyButtonTitle];
  v14 = [(SUUIGiftConfirmViewController *)self _newBuyBarButtonItemWithTitle:_buyButtonTitle];
  navigationItem = [(SUUIGiftConfirmViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v14];
}

- (void)_buyButtonAction:(id)action
{
  actionCopy = action;
  if (self->_isShowingConfirmation)
  {
    [(SUUIGiftConfirmViewController *)self _purchaseGift];
    [(SUUIGiftConfirmViewController *)self _setShowingConfirmation:0 animated:1];
    [(SUUIGiftConfirmViewController *)self _removeCancelGestureRecognizer];
    navigationItem = [(SUUIGiftConfirmViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];
  }

  else
  {
    [(SUUIGiftConfirmViewController *)self _setShowingConfirmation:1 animated:1];
    if (self->_touchRecognizer)
    {
      goto LABEL_6;
    }

    navigationItem2 = [(SUUIGiftConfirmViewController *)self navigationItem];
    rightBarButtonItem2 = [navigationItem2 rightBarButtonItem];
    navigationItem = [rightBarButtonItem2 customView];

    v8 = [SUUIFocusedTouchGestureRecognizer alloc];
    v9 = [(SUUIFocusedTouchGestureRecognizer *)v8 initWithFocusedView:navigationItem touchAllowance:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    touchRecognizer = self->_touchRecognizer;
    self->_touchRecognizer = v9;

    [(SUUIFocusedTouchGestureRecognizer *)self->_touchRecognizer addTarget:self action:sel__cancelBuyConfirmation_];
    rightBarButtonItem = [(SUUIGiftConfirmViewController *)self navigationController];
    view = [rightBarButtonItem view];
    [view addGestureRecognizer:self->_touchRecognizer];
  }

LABEL_6:
}

- (void)_cancelBuyConfirmation:(id)confirmation
{
  [(SUUIGiftConfirmViewController *)self _setShowingConfirmation:0 animated:1];

  [(SUUIGiftConfirmViewController *)self _removeCancelGestureRecognizer];
}

- (void)_termsButtonAction:(id)action
{
  termsAndConditionsURL = [MEMORY[0x277CBEBC0] termsAndConditionsURL];
  SUUIMetricsOpenURL(termsAndConditionsURL);
}

- (void)_finishPurchaseWithResult:(BOOL)result errorMessage:(id)message
{
  resultCopy = result;
  messageCopy = message;
  v18 = messageCopy;
  if (resultCopy)
  {
    [(SUUIGiftConfirmViewController *)self _showSuccessPage];
  }

  else if (messageCopy)
  {
    giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];

    v9 = MEMORY[0x277D75110];
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_UNABLE_TO_GIFT" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_UNABLE_TO_GIFT" inBundles:0 inTable:@"Gifting"];
    }
    v10 = ;
    v11 = [v9 alertControllerWithTitle:v10 message:v18 preferredStyle:1];

    v12 = MEMORY[0x277D750F8];
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_OK_BUTTON" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_OK_BUTTON" inBundles:0 inTable:@"Gifting"];
    }
    v13 = ;
    v14 = [v12 actionWithTitle:v13 style:0 handler:0];
    [v11 addAction:v14];

    [(SUUIGiftConfirmViewController *)self presentViewController:v11 animated:1 completion:0];
  }

  purchaseRequest = self->_purchaseRequest;
  self->_purchaseRequest = 0;

  navigationItem = [(SUUIGiftConfirmViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];
}

- (void)_purchaseGift
{
  if (!self->_purchaseRequest)
  {
    objc_initWeak(&location, self);
    v3 = [SUUIGiftPurchaseRequest alloc];
    gift = [(SUUIGiftStepViewController *)self gift];
    giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
    v6 = [(SUUIGiftPurchaseRequest *)v3 initWithGift:gift configuration:giftConfiguration];
    purchaseRequest = self->_purchaseRequest;
    self->_purchaseRequest = v6;

    v8 = self->_purchaseRequest;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__SUUIGiftConfirmViewController__purchaseGift__block_invoke;
    v9[3] = &unk_2798F8CA8;
    objc_copyWeak(&v10, &location);
    [(SUUIGiftPurchaseRequest *)v8 purchaseWithCompletionBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __46__SUUIGiftConfirmViewController__purchaseGift__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUUIGiftConfirmViewController__purchaseGift__block_invoke_2;
  block[3] = &unk_2798F8C80;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __46__SUUIGiftConfirmViewController__purchaseGift__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishPurchaseWithResult:*(a1 + 48) errorMessage:*(a1 + 32)];
}

- (void)_removeCancelGestureRecognizer
{
  [(SUUIFocusedTouchGestureRecognizer *)self->_touchRecognizer removeTarget:self action:0];
  view = [(SUUIFocusedTouchGestureRecognizer *)self->_touchRecognizer view];
  [view removeGestureRecognizer:self->_touchRecognizer];

  touchRecognizer = self->_touchRecognizer;
  self->_touchRecognizer = 0;
}

- (void)_setShowingConfirmation:(BOOL)confirmation animated:(BOOL)animated
{
  if (self->_isShowingConfirmation != confirmation)
  {
    animatedCopy = animated;
    if (confirmation)
    {
      [(SUUIGiftConfirmViewController *)self _confirmButtonTitle];
    }

    else
    {
      [(SUUIGiftConfirmViewController *)self _buyButtonTitle];
    }
    v9 = ;
    v7 = [(SUUIGiftConfirmViewController *)self _newBuyBarButtonItemWithTitle:v9];
    navigationItem = [(SUUIGiftConfirmViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v7 animated:animatedCopy];

    self->_isShowingConfirmation = confirmation;
  }
}

- (void)_showSuccessPage
{
  v3 = [SUUIGiftResultViewController alloc];
  gift = [(SUUIGiftStepViewController *)self gift];
  giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
  v8 = [(SUUIGiftResultViewController *)v3 initWithGift:gift configuration:giftConfiguration];

  operationQueue = [(SUUIGiftStepViewController *)self operationQueue];
  [(SUUIGiftStepViewController *)v8 setOperationQueue:operationQueue];

  navigationController = [(SUUIGiftConfirmViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];

  [(SUUIGiftConfirmViewController *)self _removeCancelGestureRecognizer];
}

- (id)_newBuyBarButtonItemWithTitle:(id)title
{
  v4 = MEMORY[0x277D75220];
  titleCopy = title;
  v6 = [v4 buttonWithType:1];
  v7 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  titleLabel = [v6 titleLabel];
  [titleLabel setFont:v7];

  [v6 addTarget:self action:sel__buyButtonAction_ forEvents:64];
  [v6 setTitle:titleCopy forState:0];

  [v6 sizeToFit];
  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v6];

  return v9;
}

- (id)_buyButtonTitle
{
  giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
  clientContext = [giftConfiguration clientContext];
  v4 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_BUY_GIFT_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_BUY_GIFT_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v5 = ;

  return v5;
}

- (id)_confirmButtonTitle
{
  giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
  clientContext = [giftConfiguration clientContext];
  v4 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_BUY_CONFIRM_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_BUY_CONFIRM_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v5 = ;

  return v5;
}

@end