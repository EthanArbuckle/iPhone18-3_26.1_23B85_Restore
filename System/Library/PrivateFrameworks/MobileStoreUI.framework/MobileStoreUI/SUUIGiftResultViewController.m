@interface SUUIGiftResultViewController
- (SUUIGiftResultViewController)initWithGift:(id)a3 configuration:(id)a4;
- (id)_itemImage;
- (id)_itemView;
- (void)_giftAgainAction:(id)a3;
- (void)_setItemImage:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUUIGiftResultViewController

- (SUUIGiftResultViewController)initWithGift:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SUUIGiftResultViewController;
  v7 = [(SUUIGiftStepViewController *)&v12 initWithGift:a3 configuration:v6];
  if (v7)
  {
    v8 = [v6 clientContext];
    v9 = v8;
    if (v8)
    {
      [v8 localizedStringForKey:@"GIFTING_RESULT_TITLE" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_RESULT_TITLE" inBundles:0 inTable:@"Gifting"];
    }
    v10 = ;
    [(SUUIGiftResultViewController *)v7 setTitle:v10];
  }

  return v7;
}

- (void)dealloc
{
  [(UIButton *)self->_giftAgainButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SUUIGiftResultViewController;
  [(SUUIGiftResultViewController *)&v3 dealloc];
}

- (void)loadView
{
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [(SUUIGiftStepViewController *)self giftConfiguration];
  v4 = [v3 clientContext];

  v5 = objc_alloc_init(SUUIGiftResultView);
  v6 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(SUUIGiftResultView *)v5 setBackgroundColor:v6];

  v7 = [(SUUIGiftStepViewController *)self gift];
  v8 = [v7 item];

  if (v8)
  {
    v9 = [(SUUIGiftResultViewController *)self _itemView];
    [(SUUIGiftResultView *)v5 setItemView:v9];

    if (v4)
    {
      [v4 localizedStringForKey:@"GIFTING_RESULT_ITEM_MESSAGE" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_RESULT_ITEM_MESSAGE" inBundles:0 inTable:@"Gifting"];
    }
    v11 = ;
    [(SUUIGiftResultView *)v5 setTitle:v11];
  }

  else
  {
    v10 = [MEMORY[0x277D755B8] imageNamed:@"RedemptionCardStack" inBundle:v21];
    [(SUUIGiftResultView *)v5 setImage:v10];

    if (v4)
    {
      [v4 localizedStringForKey:@"GIFTING_RESULT_AMOUNT_MESSAGE" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_RESULT_AMOUNT_MESSAGE" inBundles:0 inTable:@"Gifting"];
    }
    v11 = ;
    v12 = MEMORY[0x277CCACA8];
    v13 = [(SUUIGiftStepViewController *)self gift];
    v14 = [v13 totalGiftAmountString];
    v15 = [v12 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v14];
    [(SUUIGiftResultView *)v5 setTitle:v15];
  }

  v16 = [(SUUIGiftResultView *)v5 giftAgainButton];
  [v16 addTarget:self action:sel__giftAgainAction_ forControlEvents:64];
  if (v4)
  {
    [v4 localizedStringForKey:@"GIFTING_RESULT_SEND_ANOTHER_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_RESULT_SEND_ANOTHER_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v17 = ;
  [v16 setTitle:v17 forState:0];

  [v16 sizeToFit];
  [(SUUIGiftResultViewController *)self setView:v5];
  v18 = [(SUUIGiftResultViewController *)self navigationItem];
  [v18 setHidesBackButton:1];
  v19 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v19 setAction:sel__doneButtonAction_];
  [v19 setStyle:2];
  [v19 setTarget:self];
  if (v4)
  {
    [v4 localizedStringForKey:@"GIFTING_DONE_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_DONE_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v20 = ;
  [v19 setTitle:v20];

  [v18 setRightBarButtonItem:v19];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIGiftResultViewController *)self _itemView];
  v6 = [v5 artworkContext];

  if (v6 && !self->_itemImage)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__SUUIGiftResultViewController_viewWillAppear___block_invoke;
    v8[3] = &unk_2798F5E28;
    objc_copyWeak(&v9, &location);
    [(SUUIGiftStepViewController *)self loadItemArtworkWithArtworkContext:v6 completionBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  v7.receiver = self;
  v7.super_class = SUUIGiftResultViewController;
  [(SUUIGiftResultViewController *)&v7 viewWillAppear:v3];
}

void __47__SUUIGiftResultViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setItemImage:v6 error:v5];
}

- (void)_giftAgainAction:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(SUUIGiftStepViewController *)self gift];
  v5 = [v4 copy];

  [v5 reset];
  v6 = [SUUIGiftComposeViewController alloc];
  v7 = [(SUUIGiftStepViewController *)self giftConfiguration];
  v8 = [(SUUIGiftComposeViewController *)v6 initWithGift:v5 configuration:v7];

  v9 = [(SUUIGiftStepViewController *)self operationQueue];
  [(SUUIGiftStepViewController *)v8 setOperationQueue:v9];

  v10 = [(SUUIGiftResultViewController *)self navigationController];
  v12[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v10 setViewControllers:v11 animated:1];
}

- (id)_itemImage
{
  v3 = self->_itemImage;
  if (!v3)
  {
    v4 = [(SUUIGiftItemView *)self->_itemView artworkContext];
    v5 = [(SUUIGiftStepViewController *)self gift];
    v6 = [v5 item];
    v3 = [v4 placeholderImageForItem:v6];
  }

  return v3;
}

- (id)_itemView
{
  v3 = [(SUUIGiftStepViewController *)self gift];
  v4 = [v3 item];

  if (v4 && !self->_itemView)
  {
    v5 = [SUUIGiftItemView alloc];
    v6 = [(SUUIGiftStepViewController *)self giftConfiguration];
    v7 = [v6 clientContext];
    v8 = [(SUUIGiftItemView *)v5 initWithStyle:2 item:v4 clientContext:v7];
    itemView = self->_itemView;
    self->_itemView = v8;

    v10 = self->_itemView;
    v11 = [v4 artistName];
    [(SUUIGiftItemView *)v10 setArtistName:v11];

    v12 = self->_itemView;
    v13 = [v4 categoryName];
    [(SUUIGiftItemView *)v12 setCategoryName:v13];

    v14 = self->_itemView;
    v15 = [(SUUIGiftResultViewController *)self _itemImage];
    [(SUUIGiftItemView *)v14 setItemImage:v15];

    -[SUUIGiftItemView setNumberOfUserRatings:](self->_itemView, "setNumberOfUserRatings:", [v4 numberOfUserRatings]);
    v16 = self->_itemView;
    v17 = [v4 primaryItemOffer];
    v18 = [v17 buttonText];
    [(SUUIGiftItemView *)v16 setPrice:v18];

    v19 = self->_itemView;
    v20 = [v4 title];
    [(SUUIGiftItemView *)v19 setTitle:v20];

    v21 = self->_itemView;
    [v4 userRating];
    *&v23 = v22 / 5.0;
    [(SUUIGiftItemView *)v21 setUserRating:v23];
    [(SUUIGiftItemView *)self->_itemView sizeToFit];
  }

  v24 = self->_itemView;
  v25 = v24;

  return v24;
}

- (void)_setItemImage:(id)a3 error:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong(&self->_itemImage, a3);
    [(SUUIGiftItemView *)self->_itemView setItemImage:self->_itemImage];
    v6 = v7;
  }
}

@end