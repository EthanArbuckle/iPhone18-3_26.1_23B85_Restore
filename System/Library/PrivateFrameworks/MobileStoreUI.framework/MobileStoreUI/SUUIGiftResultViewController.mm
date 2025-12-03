@interface SUUIGiftResultViewController
- (SUUIGiftResultViewController)initWithGift:(id)gift configuration:(id)configuration;
- (id)_itemImage;
- (id)_itemView;
- (void)_giftAgainAction:(id)action;
- (void)_setItemImage:(id)image error:(id)error;
- (void)dealloc;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUUIGiftResultViewController

- (SUUIGiftResultViewController)initWithGift:(id)gift configuration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SUUIGiftResultViewController;
  v7 = [(SUUIGiftStepViewController *)&v12 initWithGift:gift configuration:configurationCopy];
  if (v7)
  {
    clientContext = [configurationCopy clientContext];
    v9 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_RESULT_TITLE" inTable:@"Gifting"];
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
  giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
  clientContext = [giftConfiguration clientContext];

  v5 = objc_alloc_init(SUUIGiftResultView);
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(SUUIGiftResultView *)v5 setBackgroundColor:systemBackgroundColor];

  gift = [(SUUIGiftStepViewController *)self gift];
  item = [gift item];

  if (item)
  {
    _itemView = [(SUUIGiftResultViewController *)self _itemView];
    [(SUUIGiftResultView *)v5 setItemView:_itemView];

    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_RESULT_ITEM_MESSAGE" inTable:@"Gifting"];
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

    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_RESULT_AMOUNT_MESSAGE" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_RESULT_AMOUNT_MESSAGE" inBundles:0 inTable:@"Gifting"];
    }
    v11 = ;
    v12 = MEMORY[0x277CCACA8];
    gift2 = [(SUUIGiftStepViewController *)self gift];
    totalGiftAmountString = [gift2 totalGiftAmountString];
    v15 = [v12 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, totalGiftAmountString];
    [(SUUIGiftResultView *)v5 setTitle:v15];
  }

  giftAgainButton = [(SUUIGiftResultView *)v5 giftAgainButton];
  [giftAgainButton addTarget:self action:sel__giftAgainAction_ forControlEvents:64];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_RESULT_SEND_ANOTHER_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_RESULT_SEND_ANOTHER_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v17 = ;
  [giftAgainButton setTitle:v17 forState:0];

  [giftAgainButton sizeToFit];
  [(SUUIGiftResultViewController *)self setView:v5];
  navigationItem = [(SUUIGiftResultViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  v19 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v19 setAction:sel__doneButtonAction_];
  [v19 setStyle:2];
  [v19 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"GIFTING_DONE_BUTTON" inTable:@"Gifting"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"GIFTING_DONE_BUTTON" inBundles:0 inTable:@"Gifting"];
  }
  v20 = ;
  [v19 setTitle:v20];

  [navigationItem setRightBarButtonItem:v19];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  _itemView = [(SUUIGiftResultViewController *)self _itemView];
  artworkContext = [_itemView artworkContext];

  if (artworkContext && !self->_itemImage)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__SUUIGiftResultViewController_viewWillAppear___block_invoke;
    v8[3] = &unk_2798F5E28;
    objc_copyWeak(&v9, &location);
    [(SUUIGiftStepViewController *)self loadItemArtworkWithArtworkContext:artworkContext completionBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  v7.receiver = self;
  v7.super_class = SUUIGiftResultViewController;
  [(SUUIGiftResultViewController *)&v7 viewWillAppear:appearCopy];
}

void __47__SUUIGiftResultViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setItemImage:v6 error:v5];
}

- (void)_giftAgainAction:(id)action
{
  v12[1] = *MEMORY[0x277D85DE8];
  gift = [(SUUIGiftStepViewController *)self gift];
  v5 = [gift copy];

  [v5 reset];
  v6 = [SUUIGiftComposeViewController alloc];
  giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
  v8 = [(SUUIGiftComposeViewController *)v6 initWithGift:v5 configuration:giftConfiguration];

  operationQueue = [(SUUIGiftStepViewController *)self operationQueue];
  [(SUUIGiftStepViewController *)v8 setOperationQueue:operationQueue];

  navigationController = [(SUUIGiftResultViewController *)self navigationController];
  v12[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [navigationController setViewControllers:v11 animated:1];
}

- (id)_itemImage
{
  v3 = self->_itemImage;
  if (!v3)
  {
    artworkContext = [(SUUIGiftItemView *)self->_itemView artworkContext];
    gift = [(SUUIGiftStepViewController *)self gift];
    item = [gift item];
    v3 = [artworkContext placeholderImageForItem:item];
  }

  return v3;
}

- (id)_itemView
{
  gift = [(SUUIGiftStepViewController *)self gift];
  item = [gift item];

  if (item && !self->_itemView)
  {
    v5 = [SUUIGiftItemView alloc];
    giftConfiguration = [(SUUIGiftStepViewController *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];
    v8 = [(SUUIGiftItemView *)v5 initWithStyle:2 item:item clientContext:clientContext];
    itemView = self->_itemView;
    self->_itemView = v8;

    v10 = self->_itemView;
    artistName = [item artistName];
    [(SUUIGiftItemView *)v10 setArtistName:artistName];

    v12 = self->_itemView;
    categoryName = [item categoryName];
    [(SUUIGiftItemView *)v12 setCategoryName:categoryName];

    v14 = self->_itemView;
    _itemImage = [(SUUIGiftResultViewController *)self _itemImage];
    [(SUUIGiftItemView *)v14 setItemImage:_itemImage];

    -[SUUIGiftItemView setNumberOfUserRatings:](self->_itemView, "setNumberOfUserRatings:", [item numberOfUserRatings]);
    v16 = self->_itemView;
    primaryItemOffer = [item primaryItemOffer];
    buttonText = [primaryItemOffer buttonText];
    [(SUUIGiftItemView *)v16 setPrice:buttonText];

    v19 = self->_itemView;
    title = [item title];
    [(SUUIGiftItemView *)v19 setTitle:title];

    v21 = self->_itemView;
    [item userRating];
    *&v23 = v22 / 5.0;
    [(SUUIGiftItemView *)v21 setUserRating:v23];
    [(SUUIGiftItemView *)self->_itemView sizeToFit];
  }

  v24 = self->_itemView;
  v25 = v24;

  return v24;
}

- (void)_setItemImage:(id)image error:(id)error
{
  imageCopy = image;
  if (imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_itemImage, image);
    [(SUUIGiftItemView *)self->_itemView setItemImage:self->_itemImage];
    imageCopy = v7;
  }
}

@end