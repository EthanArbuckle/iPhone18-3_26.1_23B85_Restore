@interface SUUIGiftConfirmViewController
- (SUUIGiftConfirmViewController)initWithGift:(id)a3 configuration:(id)a4;
- (id)_buyButtonTitle;
- (id)_confirmButtonTitle;
- (id)_newBuyBarButtonItemWithTitle:(id)a3;
- (void)_buyButtonAction:(id)a3;
- (void)_cancelBuyConfirmation:(id)a3;
- (void)_finishPurchaseWithResult:(BOOL)a3 errorMessage:(id)a4;
- (void)_purchaseGift;
- (void)_removeCancelGestureRecognizer;
- (void)_setShowingConfirmation:(BOOL)a3 animated:(BOOL)a4;
- (void)_showSuccessPage;
- (void)_termsButtonAction:(id)a3;
- (void)dealloc;
- (void)loadView;
@end

@implementation SUUIGiftConfirmViewController

- (SUUIGiftConfirmViewController)initWithGift:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SUUIGiftConfirmViewController;
  v7 = [(SUUIGiftStepViewController *)&v12 initWithGift:a3 configuration:v6];
  if (v7)
  {
    v8 = [v6 clientContext];
    v9 = v8;
    if (v8)
    {
      [v8 localizedStringForKey:@"GIFTING_REVIEW_TITLE" inTable:@"Gifting"];
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
  v3 = [(SUUIGiftConfirmView *)self->_confirmView termsButton];
  [v3 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

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
    v5 = [(SUUIGiftStepViewController *)self gift];
    v6 = [(SUUIGiftStepViewController *)self giftConfiguration];
    v7 = [(SUUIGiftConfirmView *)v4 initWithGift:v5 configuration:v6];
    v8 = self->_confirmView;
    self->_confirmView = v7;

    v9 = self->_confirmView;
    v10 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUUIGiftConfirmView *)v9 setBackgroundColor:v10];

    v11 = [(SUUIGiftConfirmView *)self->_confirmView termsButton];
    [v11 addTarget:self action:sel__termsButtonAction_ forControlEvents:64];

    confirmView = self->_confirmView;
  }

  [(SUUIGiftConfirmViewController *)self setView:confirmView];
  v12 = [(SUUIGiftStepViewController *)self giftConfiguration];
  v16 = [v12 clientContext];

  v13 = [(SUUIGiftConfirmViewController *)self _buyButtonTitle];
  v14 = [(SUUIGiftConfirmViewController *)self _newBuyBarButtonItemWithTitle:v13];
  v15 = [(SUUIGiftConfirmViewController *)self navigationItem];
  [v15 setRightBarButtonItem:v14];
}

- (void)_buyButtonAction:(id)a3
{
  v12 = a3;
  if (self->_isShowingConfirmation)
  {
    [(SUUIGiftConfirmViewController *)self _purchaseGift];
    [(SUUIGiftConfirmViewController *)self _setShowingConfirmation:0 animated:1];
    [(SUUIGiftConfirmViewController *)self _removeCancelGestureRecognizer];
    v4 = [(SUUIGiftConfirmViewController *)self navigationItem];
    v5 = [v4 rightBarButtonItem];
    [v5 setEnabled:0];
  }

  else
  {
    [(SUUIGiftConfirmViewController *)self _setShowingConfirmation:1 animated:1];
    if (self->_touchRecognizer)
    {
      goto LABEL_6;
    }

    v6 = [(SUUIGiftConfirmViewController *)self navigationItem];
    v7 = [v6 rightBarButtonItem];
    v4 = [v7 customView];

    v8 = [SUUIFocusedTouchGestureRecognizer alloc];
    v9 = [(SUUIFocusedTouchGestureRecognizer *)v8 initWithFocusedView:v4 touchAllowance:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    touchRecognizer = self->_touchRecognizer;
    self->_touchRecognizer = v9;

    [(SUUIFocusedTouchGestureRecognizer *)self->_touchRecognizer addTarget:self action:sel__cancelBuyConfirmation_];
    v5 = [(SUUIGiftConfirmViewController *)self navigationController];
    v11 = [v5 view];
    [v11 addGestureRecognizer:self->_touchRecognizer];
  }

LABEL_6:
}

- (void)_cancelBuyConfirmation:(id)a3
{
  [(SUUIGiftConfirmViewController *)self _setShowingConfirmation:0 animated:1];

  [(SUUIGiftConfirmViewController *)self _removeCancelGestureRecognizer];
}

- (void)_termsButtonAction:(id)a3
{
  v3 = [MEMORY[0x277CBEBC0] termsAndConditionsURL];
  SUUIMetricsOpenURL(v3);
}

- (void)_finishPurchaseWithResult:(BOOL)a3 errorMessage:(id)a4
{
  v4 = a3;
  v6 = a4;
  v18 = v6;
  if (v4)
  {
    [(SUUIGiftConfirmViewController *)self _showSuccessPage];
  }

  else if (v6)
  {
    v7 = [(SUUIGiftStepViewController *)self giftConfiguration];
    v8 = [v7 clientContext];

    v9 = MEMORY[0x277D75110];
    if (v8)
    {
      [v8 localizedStringForKey:@"GIFTING_UNABLE_TO_GIFT" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_UNABLE_TO_GIFT" inBundles:0 inTable:@"Gifting"];
    }
    v10 = ;
    v11 = [v9 alertControllerWithTitle:v10 message:v18 preferredStyle:1];

    v12 = MEMORY[0x277D750F8];
    if (v8)
    {
      [v8 localizedStringForKey:@"GIFTING_OK_BUTTON" inTable:@"Gifting"];
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

  v16 = [(SUUIGiftConfirmViewController *)self navigationItem];
  v17 = [v16 rightBarButtonItem];
  [v17 setEnabled:1];
}

- (void)_purchaseGift
{
  if (!self->_purchaseRequest)
  {
    objc_initWeak(&location, self);
    v3 = [SUUIGiftPurchaseRequest alloc];
    v4 = [(SUUIGiftStepViewController *)self gift];
    v5 = [(SUUIGiftStepViewController *)self giftConfiguration];
    v6 = [(SUUIGiftPurchaseRequest *)v3 initWithGift:v4 configuration:v5];
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
  v3 = [(SUUIFocusedTouchGestureRecognizer *)self->_touchRecognizer view];
  [v3 removeGestureRecognizer:self->_touchRecognizer];

  touchRecognizer = self->_touchRecognizer;
  self->_touchRecognizer = 0;
}

- (void)_setShowingConfirmation:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_isShowingConfirmation != a3)
  {
    v4 = a4;
    if (a3)
    {
      [(SUUIGiftConfirmViewController *)self _confirmButtonTitle];
    }

    else
    {
      [(SUUIGiftConfirmViewController *)self _buyButtonTitle];
    }
    v9 = ;
    v7 = [(SUUIGiftConfirmViewController *)self _newBuyBarButtonItemWithTitle:v9];
    v8 = [(SUUIGiftConfirmViewController *)self navigationItem];
    [v8 setRightBarButtonItem:v7 animated:v4];

    self->_isShowingConfirmation = a3;
  }
}

- (void)_showSuccessPage
{
  v3 = [SUUIGiftResultViewController alloc];
  v4 = [(SUUIGiftStepViewController *)self gift];
  v5 = [(SUUIGiftStepViewController *)self giftConfiguration];
  v8 = [(SUUIGiftResultViewController *)v3 initWithGift:v4 configuration:v5];

  v6 = [(SUUIGiftStepViewController *)self operationQueue];
  [(SUUIGiftStepViewController *)v8 setOperationQueue:v6];

  v7 = [(SUUIGiftConfirmViewController *)self navigationController];
  [v7 pushViewController:v8 animated:1];

  [(SUUIGiftConfirmViewController *)self _removeCancelGestureRecognizer];
}

- (id)_newBuyBarButtonItemWithTitle:(id)a3
{
  v4 = MEMORY[0x277D75220];
  v5 = a3;
  v6 = [v4 buttonWithType:1];
  v7 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
  v8 = [v6 titleLabel];
  [v8 setFont:v7];

  [v6 addTarget:self action:sel__buyButtonAction_ forEvents:64];
  [v6 setTitle:v5 forState:0];

  [v6 sizeToFit];
  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v6];

  return v9;
}

- (id)_buyButtonTitle
{
  v2 = [(SUUIGiftStepViewController *)self giftConfiguration];
  v3 = [v2 clientContext];
  v4 = v3;
  if (v3)
  {
    [v3 localizedStringForKey:@"GIFTING_BUY_GIFT_BUTTON" inTable:@"Gifting"];
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
  v2 = [(SUUIGiftStepViewController *)self giftConfiguration];
  v3 = [v2 clientContext];
  v4 = v3;
  if (v3)
  {
    [v3 localizedStringForKey:@"GIFTING_BUY_CONFIRM_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_BUY_CONFIRM_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v5 = ;

  return v5;
}

@end