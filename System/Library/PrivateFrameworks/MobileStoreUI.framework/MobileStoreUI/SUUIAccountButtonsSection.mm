@interface SUUIAccountButtonsSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SUUIAccountButtonsSection)initWithPageComponent:(id)a3;
- (id)_accountButtonsViewController;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (void)accountButtonsViewControllerDidSignIn:(id)a3;
- (void)accountButtonsViewControllerDidSignOut:(id)a3;
- (void)accountButtonsViewControllerDidTapECommerceLink:(id)a3;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)dealloc;
- (void)willAppearInContext:(id)a3;
@end

@implementation SUUIAccountButtonsSection

- (SUUIAccountButtonsSection)initWithPageComponent:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUIAccountButtonsSection;
  return [(SUUIStorePageSection *)&v4 initWithPageComponent:a3];
}

- (void)dealloc
{
  [(SUUIAccountButtonsViewController *)self->_accountButtonsViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIAccountButtonsSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v5 = a4;
  v7 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v7 viewElement];
  [v5 addItemViewElement:v6];
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];
  v7 = [v6 style];

  v8 = [v7 ikBackgroundColor];
  v9 = [v8 color];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUIAccountButtonsSection;
    v10 = [(SUUIStorePageSection *)&v13 backgroundColorForIndexPath:v4];
  }

  v11 = v10;

  return v11;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"SUUIAccountButtonsSectionReuseIdentifier" forIndexPath:v4];

  v8 = [(SUUIAccountButtonsSection *)self _accountButtonsViewController];
  v9 = [v8 view];

  v10 = [v7 contentChildView];

  if (v9 != v10)
  {
    v11 = [(SUUIAccountButtonsSection *)self backgroundColorForIndexPath:v4];
    [v9 setBackgroundColor:v11];

    [v7 setContentChildView:v9];
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SUUIStorePageSection *)self context];
  [v4 activePageWidth];
  v6 = v5;

  v7 = [(SUUIAccountButtonsSection *)self _accountButtonsViewController];
  v8 = [v7 view];
  [v8 sizeThatFits:{v6, 0.0}];
  v10 = v9;

  v11 = v6;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [(SUUIStorePageSection *)self context];
  v8 = [v7 activeMetricsImpressionSession];
  [v8 beginActiveImpressionForViewElement:v6];

  v9.receiver = self;
  v9.super_class = SUUIAccountButtonsSection;
  [(SUUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:v4];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [(SUUIStorePageSection *)self context];
  v8 = [v7 activeMetricsImpressionSession];
  [v8 endActiveImpressionForViewElement:v6];

  v9.receiver = self;
  v9.super_class = SUUIAccountButtonsSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUIAccountButtonsSectionReuseIdentifier"];
  v6.receiver = self;
  v6.super_class = SUUIAccountButtonsSection;
  [(SUUIStorePageSection *)&v6 willAppearInContext:v4];
}

- (void)accountButtonsViewControllerDidSignIn:(id)a3
{
  v6 = objc_alloc_init(MEMORY[0x277D69B60]);
  [v6 setAccountEventTypeWithEventIdentifier:0];
  v4 = [(SUUIStorePageSection *)self context];
  v5 = [v4 metricsController];
  [v5 recordEvent:v6];
}

- (void)accountButtonsViewControllerDidSignOut:(id)a3
{
  v6 = objc_alloc_init(MEMORY[0x277D69B60]);
  [v6 setAccountEventTypeWithEventIdentifier:1];
  v4 = [(SUUIStorePageSection *)self context];
  v5 = [v4 metricsController];
  [v5 recordEvent:v6];
}

- (void)accountButtonsViewControllerDidTapECommerceLink:(id)a3
{
  v8 = [(SUUIStorePageSection *)self pageComponent];
  v3 = [v8 ECommerceLink];
  v4 = [v3 URL];

  v5 = [v8 viewElement];
  v6 = v5;
  if (v4)
  {
    SUUIMetricsOpenURL(v4);
  }

  else if (v5)
  {
    v7 = [v5 firstChildForElementType:12];
    [v7 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (id)_accountButtonsViewController
{
  accountButtonsViewController = self->_accountButtonsViewController;
  if (!accountButtonsViewController)
  {
    v4 = [(SUUIStorePageSection *)self context];
    v5 = [(SUUIStorePageSection *)self pageComponent];
    v6 = [v5 viewElement];

    v7 = [v4 parentViewController];
    v8 = [v7 clientContext];
    v9 = objc_alloc_init(SUUIAccountButtonsViewController);
    v10 = self->_accountButtonsViewController;
    self->_accountButtonsViewController = v9;

    [(SUUIAccountButtonsViewController *)self->_accountButtonsViewController setClientContext:v8];
    [(SUUIAccountButtonsViewController *)self->_accountButtonsViewController setDelegate:self];
    v11 = [(SUUIStorePageSection *)self pageComponent];
    -[SUUIAccountButtonsViewController setTermsAndConditionsHidden:](self->_accountButtonsViewController, "setTermsAndConditionsHidden:", [v11 hidesTermsAndConditions]);
    v12 = [v6 firstChildForElementType:12];
    v13 = [v11 ECommerceLink];
    v25 = v12;
    if (!v13 && v12)
    {
      v14 = [v12 buttonText];
      v15 = [v14 string];

      if ([v15 length])
      {
        v13 = [[SUUILink alloc] initWithURL:0 title:v15 targetString:0];
      }

      else
      {
        v13 = 0;
      }
    }

    [(SUUIAccountButtonsViewController *)self->_accountButtonsViewController setECommerceLink:v13];
    v16 = [v8 valueForConfigurationKey:@"mgift"];
    v17 = v16;
    if (v16 && ([v16 BOOLValue] & 1) == 0)
    {
      [(SUUIAccountButtonsViewController *)self->_accountButtonsViewController setGiftingHidden:1];
    }

    v26 = v8;
    [v7 addChildViewController:self->_accountButtonsViewController];
    v27 = v6;
    if (v6)
    {
      v18 = [v6 style];
      [v18 ikColor];
      v19 = v7;
      v21 = v20 = v4;
      v22 = [v21 color];

      v4 = v20;
      v7 = v19;
    }

    else
    {
      v18 = [v4 colorScheme];
      v22 = [v18 primaryTextColor];
    }

    if (!v22)
    {
      v22 = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:1.0];
    }

    v23 = [(SUUIAccountButtonsViewController *)self->_accountButtonsViewController view];
    [v23 setTintColor:v22];

    accountButtonsViewController = self->_accountButtonsViewController;
  }

  return accountButtonsViewController;
}

@end