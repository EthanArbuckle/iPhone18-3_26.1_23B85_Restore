@interface SUUIProductPageReviewsViewController
- (NSOperationQueue)operationQueue;
- (SUUIProductPageChildViewControllerDelegate)delegate;
- (SUUIProductPageReviewsViewController)initWithProductPage:(id)a3;
- (double)_defaultPageWidth;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_bottomBorderColorForScheme:(id)a3;
- (id)_histogramViewController;
- (id)_loadMoreCellForTableView:(id)a3 indexPath:(id)a4;
- (id)_reviewsHeaderView;
- (id)_tableView;
- (id)_textBoxCellForTableView:(id)a3 indexPath:(id)a4;
- (id)_textLayoutRequestWithText:(id)a3;
- (id)_urlStringWithPageNumber:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addHeaderView;
- (void)_addReviewsFromResponse:(id)a3 error:(id)a4;
- (void)_appSupportAction:(id)a3;
- (void)_loadNextPageIfNecessaryForOffset:(CGPoint)a3;
- (void)_reloadData;
- (void)_setReviewListWithResponse:(id)a3 error:(id)a4;
- (void)_sortSelectionAction:(id)a3;
- (void)_starRatingAction:(id)a3;
- (void)_versionSelectionAction:(id)a3;
- (void)_writeAReviewAction:(id)a3;
- (void)dealloc;
- (void)layoutCacheDidFinishBatch:(id)a3;
- (void)loadView;
- (void)reloadData;
- (void)reviewComposeViewControllerDidFinish:(id)a3;
- (void)reviewsFacebookViewControllerDidChange:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setAskPermission:(BOOL)a3;
- (void)setClientContext:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setFacebookLikeStatus:(id)a3;
- (void)setHeaderViewController:(id)a3;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUUIProductPageReviewsViewController

- (SUUIProductPageReviewsViewController)initWithProductPage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIProductPageReviewsViewController;
  v6 = [(SUUIProductPageReviewsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isPad = SUUIUserInterfaceIdiom(v6->_clientContext) == 1;
    objc_storeStrong(&v7->_productPage, a3);
    v7->_sortOrder = 1;
  }

  return v7;
}

- (void)dealloc
{
  [(SKComposeReviewViewController *)self->_composeViewController setDelegate:0];
  v3 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController appSupportButton];
  [v3 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v4 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController segmentedControl];
  [v4 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v5 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController starRatingControl];
  [v5 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v6 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
  [v6 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v7 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
  [v7 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v8 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
  [v8 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v9.receiver = self;
  v9.super_class = SUUIProductPageReviewsViewController;
  [(SUUIProductPageReviewsViewController *)&v9 dealloc];
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)reloadData
{
  v3 = [(SUUIProductPageReviewsViewController *)self _urlStringWithPageNumber:0];
  if (v3 && !self->_reviewList)
  {
    loadOperation = self->_loadOperation;

    if (!loadOperation)
    {

      [(SUUIProductPageReviewsViewController *)self _reloadData];
    }
  }

  else
  {
  }
}

- (void)setFacebookLikeStatus:(id)a3
{
  v18 = a3;
  v4 = [(SUUIReviewsFacebookViewController *)self->_facebookViewController facebookLikeStatus];

  if (v4 != v18)
  {
    facebookViewController = self->_facebookViewController;
    if (v18)
    {
      if (!facebookViewController)
      {
        v7 = objc_alloc_init(SUUIReviewsFacebookViewController);
        v8 = self->_facebookViewController;
        self->_facebookViewController = v7;

        [(SUUIReviewsFacebookViewController *)self->_facebookViewController setClientContext:self->_clientContext];
        [(SUUIReviewsFacebookViewController *)self->_facebookViewController setDelegate:self];
        v9 = [(SUUIReviewsFacebookViewController *)self->_facebookViewController view];
        v10 = [(SUUIProductPage *)self->_productPage uber];
        v11 = [v10 colorScheme];
        [v9 setColorScheme:v11];

        [(SUUIProductPageReviewsViewController *)self addChildViewController:self->_facebookViewController];
        facebookViewController = self->_facebookViewController;
      }

      [(SUUIReviewsFacebookViewController *)facebookViewController setFacebookLikeStatus:?];
      v12 = [(SUUIReviewsFacebookViewController *)self->_facebookViewController view];
      [v12 setAutoresizingMask:2];
      v13 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [v12 setBackgroundColor:v13];

      [(SUUIProductPageReviewsViewController *)self _defaultPageWidth];
      [v12 sizeThatFits:?];
      [v12 setFrame:{0.0, 0.0, v14, v15}];
    }

    else
    {
      if (!facebookViewController)
      {
LABEL_9:
        tableView = self->_tableView;
        v17 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
        [(SUUIProductPageTableView *)tableView reloadSections:v17 withRowAnimation:100];

        goto LABEL_10;
      }

      [(SUUIReviewsFacebookViewController *)facebookViewController removeFromParentViewController];
      v12 = self->_facebookViewController;
      self->_facebookViewController = 0;
    }

    goto LABEL_9;
  }

LABEL_10:

  MEMORY[0x2821F9730](v5);
}

- (void)setClientContext:(id)a3
{
  v5 = a3;
  if (self->_clientContext != v5)
  {
    v14 = v5;
    objc_storeStrong(&self->_clientContext, a3);
    self->_isPad = SUUIUserInterfaceIdiom(self->_clientContext) == 1;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_REVIEWS_TAB" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_REVIEWS_TAB" inBundles:0 inTable:@"ProductPage"];
    }
    v7 = ;
    [(SUUIProductPageReviewsViewController *)self setTitle:v7];

    v8 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
    v9 = [(SUUIClientContext *)self->_clientContext clientInterface];
    v10 = [v9 clientIdentifier];
    [v8 setEnabled:v10 == 0];

    v11 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
    v12 = [(SUUIClientContext *)self->_clientContext clientInterface];
    v13 = [v12 clientIdentifier];
    [v11 setEnabled:v13 == 0];

    v5 = v14;
  }
}

- (void)setAskPermission:(BOOL)a3
{
  if (self->_askPermission != a3)
  {
    self->_askPermission = a3;
    v4 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
    [v4 setEnabled:!self->_askPermission];
  }
}

- (void)loadView
{
  v3 = [(SUUIProductPageReviewsViewController *)self _tableView];
  [(SUUIProductPageReviewsViewController *)self setView:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(SUUIProductPageTableView *)self->_tableView contentOffset];
  [(SUUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
  v5.receiver = self;
  v5.super_class = SUUIProductPageReviewsViewController;
  [(SUUIProductPageReviewsViewController *)&v5 viewDidAppear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SUUIProductPageReviewsViewController *)self reloadData];
  v5.receiver = self;
  v5.super_class = SUUIProductPageReviewsViewController;
  [(SUUIProductPageReviewsViewController *)&v5 viewWillAppear:v3];
}

- (void)setHeaderViewController:(id)a3
{
  v6 = a3;
  if (self->_headerViewController != v6)
  {
    [(SUUIProductPageTableView *)self->_tableView setProductPageHeaderView:0];
    v5 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
    [v5 removeFromSuperview];

    [(SUUIProductPageHeaderViewController *)self->_headerViewController removeFromParentViewController];
    objc_storeStrong(&self->_headerViewController, a3);
    if (self->_headerViewController)
    {
      [(SUUIProductPageReviewsViewController *)self addChildViewController:?];
      if ([(SUUIProductPageReviewsViewController *)self isViewLoaded])
      {
        [(SUUIProductPageReviewsViewController *)self _addHeaderView];
      }
    }
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (self->_tableView)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 productPageChildViewControllerDidLoadScrollView:self];

      v5 = obj;
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained productPageChildViewControllerDidScroll:self];
}

- (void)reviewsFacebookViewControllerDidChange:(id)a3
{
  [(SUUIProductPageTableView *)self->_tableView beginUpdates];
  tableView = self->_tableView;

  [(SUUIProductPageTableView *)tableView endUpdates];
}

- (void)layoutCacheDidFinishBatch:(id)a3
{
  [(SUUIProductPageTableView *)self->_tableView reloadData];
  [(SUUIProductPageTableView *)self->_tableView contentOffset];

  [(SUUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
}

- (void)reviewComposeViewControllerDidFinish:(id)a3
{
  composeViewController = self->_composeViewController;
  if (composeViewController == a3)
  {
    [(SKComposeReviewViewController *)composeViewController setDelegate:0];
    [(SKComposeReviewViewController *)self->_composeViewController dismissViewControllerAnimated:1 completion:0];
    v5 = self->_composeViewController;
    self->_composeViewController = 0;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == 3)
  {
    v9 = [(SUUIProductPageReviewsViewController *)self _loadMoreCellForTableView:v6 indexPath:v7];
    goto LABEL_5;
  }

  if (v8 == 2)
  {
    v9 = [(SUUIProductPageReviewsViewController *)self _textBoxCellForTableView:v6 indexPath:v7];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v8 = [(SUUIReviewList *)self->_reviewList reviews];
    v7 = [v8 count];
  }

  else if (a4 == 3)
  {
    v7 = [(SUUIProductPageReviewsViewController *)self _shouldShowLoadMoreCell];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  if ([a5 section] == 3)
  {
    [v6 stopAnimating];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  expandedIndexSet = self->_expandedIndexSet;
  if (!expandedIndexSet)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v8 = self->_expandedIndexSet;
    self->_expandedIndexSet = v7;

    expandedIndexSet = self->_expandedIndexSet;
  }

  -[NSMutableIndexSet addIndex:](expandedIndexSet, "addIndex:", [v5 row]);
  tableView = self->_tableView;
  v11[0] = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(SUUIProductPageTableView *)tableView reloadRowsAtIndexPaths:v10 withRowAnimation:100];
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v12 = [(SUUIProductPageReviewsViewController *)self _reviewsHeaderView];
    v9 = v12;
    if (v12)
    {
      [v12 frame];
      v7 = v13;
    }

    else
    {
      v7 = 0.0;
    }

    goto LABEL_12;
  }

  v7 = 0.0;
  if (a4 == 1)
  {
    if (self->_reviewList)
    {
      v10 = [(SUUIProductPageReviewsViewController *)self _histogramViewController];
      v9 = [v10 view];

      goto LABEL_8;
    }
  }

  else if (!a4)
  {
    facebookViewController = self->_facebookViewController;
    if (facebookViewController)
    {
      v9 = [(SUUIReviewsFacebookViewController *)facebookViewController view];
LABEL_8:
      [(SUUIProductPageReviewsViewController *)self _defaultPageWidth];
      [v9 sizeThatFits:?];
      v7 = v11;
LABEL_12:
    }
  }

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section] == 2)
  {
    v6 = [v5 row];
    v7 = [(SUUILayoutCache *)self->_layoutCache layoutForIndex:v6];
    v8 = v7;
    if (v7)
    {
      if ([v7 requiresTruncation] && (-[NSMutableIndexSet containsIndex:](self->_expandedIndexSet, "containsIndex:", v6) & 1) == 0)
      {
        [v8 truncatedSize];
      }

      else
      {
        [v8 textSize];
      }

      if (self->_isPad)
      {
        v11 = &kSUUITextBoxLayoutMarginTopIPad;
      }

      else
      {
        v11 = &kSUUITextBoxLayoutMarginTopIPhone;
      }

      v12 = *v11;
      v13 = &kSUUITextBoxLayoutTitleHeightIPad;
      if (!self->_isPad)
      {
        v13 = &kSUUITextBoxLayoutTitleHeightIPhone;
      }

      v14 = v12 + *v13;
      v15 = &kSUUITextBoxLayoutTextRatingBottomPaddingIPad;
      if (!self->_isPad)
      {
        v15 = &kSUUITextBoxLayoutTextRatingBottomPaddingIPhone;
      }

      v16 = v14 + *v15 + 14.0 + 5.0;
      v17 = &kSUUITextBoxLayoutMarginBottomIPad;
      if (!self->_isPad)
      {
        v17 = &kSUUITextBoxLayoutMarginBottomIPhone;
      }

      v10 = v9 + v16 + *v17;
    }

    else
    {
      v10 = 100.0;
    }
  }

  else
  {
    v10 = 100.0;
  }

  return v10;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [(SUUIProductPage *)self->_productPage uber];
  v7 = [v6 colorScheme];
  v8 = [v7 backgroundColor];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
  }

  v11 = v10;

  if (a4 == 2)
  {
    v12 = [(SUUIProductPageReviewsViewController *)self _reviewsHeaderView];
    goto LABEL_12;
  }

  if (a4 == 1)
  {
    if (self->_reviewList)
    {
      v13 = [(SUUIProductPageReviewsViewController *)self _histogramViewController];
      v14 = [v13 view];

      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a4)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_13;
  }

  v12 = [(SUUIReviewsFacebookViewController *)self->_facebookViewController view];
LABEL_12:
  v14 = v12;
LABEL_13:
  [v14 setBackgroundColor:v11];

  return v14;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v16 = a3;
  v8 = a4;
  productPage = self->_productPage;
  v10 = a5;
  v11 = [(SUUIProductPage *)productPage uber];
  v12 = [v11 colorScheme];
  v13 = [v12 backgroundColor];
  if (v13)
  {
    [v8 setBackgroundColor:v13];
  }

  else
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    [v8 setBackgroundColor:v14];
  }

  v15 = [v10 section];
  if (v15 == 3)
  {
    [v8 startAnimating];
    [v16 contentOffset];
    [(SUUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
  }
}

- (void)_appSupportAction:(id)a3
{
  v3 = [(SUUIProductPage *)self->_productPage item];
  v6 = [v3 supportURLString];

  v4 = v6;
  if (v6)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    SUUIMetricsOpenURL(v5);

    v4 = v6;
  }
}

- (void)_sortSelectionAction:(id)a3
{
  sortOrder = self->_sortOrder;
  v5 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView selectedSortIndex];
  if (v5 <= 3)
  {
    sortOrder = qword_259FCACB8[v5];
  }

  if (self->_sortOrder != sortOrder)
  {
    self->_sortOrder = sortOrder;
    [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
    [(SSVLoadURLOperation *)self->_loadOperation cancel];
    loadOperation = self->_loadOperation;
    self->_loadOperation = 0;

    [(SUUIProductPageReviewsViewController *)self _reloadData];
  }
}

- (void)_starRatingAction:(id)a3
{
  v4 = a3;
  v5 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController personalStarRating];
  if (!self->_starRatingQueue)
  {
    v6 = [SUUIStarRatingQueue alloc];
    clientContext = self->_clientContext;
    v8 = [(SUUIProductPage *)self->_productPage reviewConfiguration];
    v9 = [(SUUIStarRatingQueue *)v6 initWithClientContext:clientContext reviewConfiguration:v8];
    starRatingQueue = self->_starRatingQueue;
    self->_starRatingQueue = v9;

    v11 = self->_starRatingQueue;
    v12 = [(SUUIProductPageReviewsViewController *)self view];
    v13 = [v12 window];
    [(SUUIStarRatingQueue *)v11 setWindow:v13];
  }

  objc_initWeak(&location, self);
  v14 = MEMORY[0x277CCACA8];
  v15 = [(SUUIProductPage *)self->_productPage item];
  v16 = [v14 stringWithFormat:@"%lld", objc_msgSend(v15, "itemIdentifier")];

  v17 = self->_starRatingQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__SUUIProductPageReviewsViewController__starRatingAction___block_invoke;
  v18[3] = &unk_2798F6AF8;
  objc_copyWeak(&v19, &location);
  [(SUUIStarRatingQueue *)v17 setRating:v5 forItemID:v16 completionBlock:v18];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

void __58__SUUIProductPageReviewsViewController__starRatingAction___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SUUIProductPageReviewsViewController__starRatingAction___block_invoke_2;
    block[3] = &unk_2798F67A0;
    objc_copyWeak(&v3, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v3);
  }
}

void __58__SUUIProductPageReviewsViewController__starRatingAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetPersonalStarRating];
}

- (void)_versionSelectionAction:(id)a3
{
  v4 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController selectedSegmentIndex]== 1;
  if (self->_showAllVersions != v4)
  {
    self->_showAllVersions = v4;
    [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
    [(SSVLoadURLOperation *)self->_loadOperation cancel];
    loadOperation = self->_loadOperation;
    self->_loadOperation = 0;

    [(SUUIProductPageReviewsViewController *)self _reloadData];
  }
}

- (void)_writeAReviewAction:(id)a3
{
  v4 = a3;
  if (!self->_composeViewController)
  {
    v5 = objc_alloc(MEMORY[0x277CDD350]);
    v6 = [(SUUIReviewList *)self->_reviewList writeReviewURL];
    v7 = [v5 initWithCompositionURL:v6];

    [v7 setDelegate:self];
    objc_storeStrong(&self->_composeViewController, v7);
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__SUUIProductPageReviewsViewController__writeAReviewAction___block_invoke;
    v9[3] = &unk_2798F6170;
    objc_copyWeak(&v11, &location);
    v8 = v7;
    v10 = v8;
    [v8 prepareWithCompletionBlock:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __60__SUUIProductPageReviewsViewController__writeAReviewAction___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained presentViewController:*(a1 + 32) animated:1 completion:0];
  }
}

- (void)_addHeaderView
{
  v8 = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [v8 setAutoresizingMask:2];
  [v8 frame];
  v4 = v3;
  [(SUUIProductPageTableView *)self->_tableView bounds];
  [v8 setFrame:{0.0, v4}];
  [(SUUIProductPageTableView *)self->_tableView _addContentSubview:v8 atBack:0];
  v5 = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [v5 setAutoresizingMask:2];
  [v5 frame];
  v7 = v6;
  [(SUUIProductPageTableView *)self->_tableView bounds];
  [v5 setFrame:{0.0, v7}];
  [(SUUIProductPageTableView *)self->_tableView setProductPageHeaderView:v5];
}

- (void)_addReviewsFromResponse:(id)a3 error:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[SUUIReviewList alloc] initWithReviewListDictionary:v5];
    v8 = [(SUUIReviewList *)v7 reviews];
    v9 = [v8 count];
    if (v9 > 0)
    {
      v28 = v9;
      v31 = v7;
      v32 = v5;
      v10 = [(SUUIReviewList *)self->_reviewList reviews];
      v11 = [v10 count];

      v29 = [(SUUIProductPageReviewsViewController *)self _shouldShowLoadMoreCell];
      [(SUUIReviewList *)self->_reviewList addReviews:v8];
      ++self->_loadedPageCount;
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v30 = v8;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v34;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v33 + 1) + 8 * i) body];
            v19 = v18;
            if (v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = &stru_286AECDE0;
            }

            v21 = [(SUUIProductPageReviewsViewController *)self _textLayoutRequestWithText:v20];
            [v12 addObject:v21];
          }

          v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v15);
      }

      [(SUUILayoutCache *)self->_layoutCache populateCacheWithLayoutRequests:v12];
      [(SUUIProductPageTableView *)self->_tableView beginUpdates];
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v23 = v11 + v28;
      do
      {
        v24 = [MEMORY[0x277CCAA70] indexPathForRow:v11 inSection:2];
        [v22 addObject:v24];

        ++v11;
      }

      while (v11 < v23);
      [(SUUIProductPageTableView *)self->_tableView insertRowsAtIndexPaths:v22 withRowAnimation:5];
      if (v29 && ![(SUUIProductPageReviewsViewController *)self _shouldShowLoadMoreCell])
      {
        tableView = self->_tableView;
        v26 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:3];
        v37 = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        [(SUUIProductPageTableView *)tableView deleteRowsAtIndexPaths:v27 withRowAnimation:5];
      }

      [(SUUIProductPageTableView *)self->_tableView endUpdates];

      v7 = v31;
      v5 = v32;
      v8 = v30;
    }

    [(SUUIProductPageTableView *)self->_tableView contentOffset];
    [(SUUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
  }
}

- (id)_bottomBorderColorForScheme:(id)a3
{
  v3 = [a3 primaryTextColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  }

  v6 = v5;

  return v6;
}

- (double)_defaultPageWidth
{
  if (self->_isPad)
  {
    return 630.0;
  }

  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 320.0;
  }

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
  v2 = v6;

  return v2;
}

- (id)_histogramViewController
{
  v31[2] = *MEMORY[0x277D85DE8];
  histogramViewController = self->_histogramViewController;
  if (!histogramViewController)
  {
    v4 = objc_alloc_init(SUUIReviewsHistogramViewController);
    v5 = self->_histogramViewController;
    self->_histogramViewController = v4;

    [(SUUIReviewsHistogramViewController *)self->_histogramViewController setClientContext:self->_clientContext];
    [(SUUIReviewsHistogramViewController *)self->_histogramViewController setReviewList:self->_reviewList];
    v6 = [(SUUIProductPage *)self->_productPage item];
    v7 = [v6 itemKind];

    if (v7 != 17)
    {
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_CURRENT_VERSION" inTable:@"ProductPage"];
      }

      else
      {
        v9 = 0;
        [SUUIClientContext localizedStringForKey:@"REVIEWS_CURRENT_VERSION" inBundles:0 inTable:@"ProductPage"];
      }
      v10 = ;

      v11 = self->_clientContext;
      if (v11)
      {
        [(SUUIClientContext *)v11 localizedStringForKey:@"REVIEWS_ALL_VERSIONS" inTable:@"ProductPage"];
      }

      else
      {
        v12 = 0;
        [SUUIClientContext localizedStringForKey:@"REVIEWS_ALL_VERSIONS" inBundles:0 inTable:@"ProductPage"];
      }
      v13 = ;

      v14 = self->_histogramViewController;
      v31[0] = v10;
      v31[1] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
      [(SUUIReviewsHistogramViewController *)v14 setSegmentedControlTitles:v15];

      [(SUUIReviewsHistogramViewController *)self->_histogramViewController setSelectedSegmentIndex:self->_showAllVersions];
      v16 = self->_histogramViewController;
      if (self->_showAllVersions)
      {
        [(SUUIReviewsHistogramViewController *)self->_histogramViewController setVersionString:0];
      }

      else
      {
        v17 = [(SUUIProductPage *)self->_productPage item];
        v18 = [v17 versionString];
        [(SUUIReviewsHistogramViewController *)v16 setVersionString:v18];
      }
    }

    v19 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController view];
    [v19 setAutoresizingMask:2];
    v20 = [(SUUIProductPage *)self->_productPage uber];
    v21 = [v20 colorScheme];
    [v19 setColorScheme:v21];

    v22 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController appSupportButton];
    [v22 addTarget:self action:sel__appSupportAction_ forControlEvents:64];

    v23 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController segmentedControl];
    [v23 addTarget:self action:sel__versionSelectionAction_ forControlEvents:4096];

    v24 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController starRatingControl];
    [v24 addTarget:self action:sel__starRatingAction_ forControlEvents:4096];

    v25 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
    [v25 addTarget:self action:sel__writeAReviewAction_ forControlEvents:64];

    v26 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController appSupportButton];
    [v26 setEnabled:!self->_askPermission];

    v27 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
    v28 = [(SUUIClientContext *)self->_clientContext clientInterface];
    v29 = [v28 clientIdentifier];
    [v27 setEnabled:v29 == 0];

    [(SUUIProductPageReviewsViewController *)self addChildViewController:self->_histogramViewController];
    histogramViewController = self->_histogramViewController;
  }

  return histogramViewController;
}

- (id)_loadMoreCellForTableView:(id)a3 indexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:{@"1", a4}];
  if (!v4)
  {
    v4 = [[SUUILoadMoreCell alloc] initWithStyle:0 reuseIdentifier:@"1"];
  }

  return v4;
}

- (void)_loadNextPageIfNecessaryForOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(SUUIProductPageReviewsViewController *)self isViewLoaded])
  {
    v27 = [(SUUIProductPageReviewsViewController *)self view];
    if ([v27 isHidden])
    {
    }

    else
    {
      v6 = [v27 window];

      if (v6)
      {
        if (!self->_loadOperation)
        {
          loadedPageCount = self->_loadedPageCount;
          if (loadedPageCount >= 1 && loadedPageCount < [(SUUIReviewList *)self->_reviewList numberOfPages])
          {
            [(SUUIProductPageTableView *)self->_tableView contentInset];
            v9 = [(SUUIProductPageTableView *)self->_tableView indexPathForRowAtPoint:x, y + v8];
            if (v9)
            {
              v10 = [(SUUIReviewList *)self->_reviewList reviews];
              v11 = [v10 count];

              v12 = [v9 row];
              if (v11 > v12 && v11 - v12 <= 10)
              {
                v14 = [(SUUIProductPageReviewsViewController *)self _urlStringWithPageNumber:self->_loadedPageCount + 1];
                v15 = objc_alloc(MEMORY[0x277D69CD8]);
                v16 = [MEMORY[0x277CBEBC0] URLWithString:v14];
                v17 = [v15 initWithURL:v16];
                loadOperation = self->_loadOperation;
                self->_loadOperation = v17;

                v19 = self->_loadOperation;
                v20 = +[(SSVURLDataConsumer *)SUUIJSONDataConsumer];
                [(SSVLoadURLOperation *)v19 setDataConsumer:v20];

                [(SSVLoadURLOperation *)self->_loadOperation setQueuePriority:-4];
                v21 = self->_loadOperation;
                v22 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
                [(SSVLoadURLOperation *)v21 setStoreFrontSuffix:v22];

                v23 = [MEMORY[0x277D69D50] weakReferenceWithObject:self];
                v24 = self->_loadOperation;
                v28[0] = MEMORY[0x277D85DD0];
                v28[1] = 3221225472;
                v28[2] = __74__SUUIProductPageReviewsViewController__loadNextPageIfNecessaryForOffset___block_invoke;
                v28[3] = &unk_2798F6B20;
                v29 = v23;
                v25 = v23;
                [(SSVLoadURLOperation *)v24 setOutputBlock:v28];
                v26 = [(SUUIProductPageReviewsViewController *)self operationQueue];
                [v26 addOperation:self->_loadOperation];
              }
            }
          }
        }
      }
    }
  }
}

void __74__SUUIProductPageReviewsViewController__loadNextPageIfNecessaryForOffset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SUUIProductPageReviewsViewController__loadNextPageIfNecessaryForOffset___block_invoke_2;
  block[3] = &unk_2798F5BC0;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__SUUIProductPageReviewsViewController__loadNextPageIfNecessaryForOffset___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _addReviewsFromResponse:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_reloadData
{
  v3 = [(SUUIProductPageReviewsViewController *)self _urlStringWithPageNumber:0];
  v4 = objc_alloc(MEMORY[0x277D69CD8]);
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v6 = [v4 initWithURL:v5];
  loadOperation = self->_loadOperation;
  self->_loadOperation = v6;

  v8 = self->_loadOperation;
  v9 = +[(SSVURLDataConsumer *)SUUIJSONDataConsumer];
  [(SSVLoadURLOperation *)v8 setDataConsumer:v9];

  v10 = self->_loadOperation;
  v11 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
  [(SSVLoadURLOperation *)v10 setStoreFrontSuffix:v11];

  v12 = [MEMORY[0x277D69D50] weakReferenceWithObject:self];
  v13 = self->_loadOperation;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__SUUIProductPageReviewsViewController__reloadData__block_invoke;
  v16[3] = &unk_2798F6B20;
  v17 = v12;
  v14 = v12;
  [(SSVLoadURLOperation *)v13 setOutputBlock:v16];
  v15 = [(SUUIProductPageReviewsViewController *)self operationQueue];
  [v15 addOperation:self->_loadOperation];
}

void __51__SUUIProductPageReviewsViewController__reloadData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUUIProductPageReviewsViewController__reloadData__block_invoke_2;
  block[3] = &unk_2798F5BC0;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__SUUIProductPageReviewsViewController__reloadData__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _setReviewListWithResponse:*(a1 + 40) error:*(a1 + 48)];
}

- (id)_reviewsHeaderView
{
  v30[4] = *MEMORY[0x277D85DE8];
  reviewsHeaderView = self->_reviewsHeaderView;
  if (!reviewsHeaderView)
  {
    if (self->_isPad)
    {
      v4 = [[SUUIIPadCustomerReviewsHeaderView alloc] initWithClientContext:self->_clientContext];
      v5 = self->_reviewsHeaderView;
      self->_reviewsHeaderView = v4;

      v6 = self->_reviewsHeaderView;
      v7 = [(SUUIProductPage *)self->_productPage uber];
      v8 = [v7 colorScheme];
      [(SUUIIPadCustomerReviewsHeaderView *)v6 setColorScheme:v8];

      [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView addTarget:self action:sel__sortSelectionAction_ forControlEvents:4096];
      [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView setAutoresizingMask:2];
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_SORT_MOST_CRITICAL" inTable:@"ProductPage"];
      }

      else
      {
        v10 = 0;
        [SUUIClientContext localizedStringForKey:@"REVIEWS_SORT_MOST_CRITICAL" inBundles:0 inTable:@"ProductPage"];
      }
      v11 = ;

      v12 = self->_clientContext;
      if (v12)
      {
        [(SUUIClientContext *)v12 localizedStringForKey:@"REVIEWS_SORT_MOST_FAVORABLE" inTable:@"ProductPage"];
      }

      else
      {
        v13 = 0;
        [SUUIClientContext localizedStringForKey:@"REVIEWS_SORT_MOST_FAVORABLE" inBundles:0 inTable:@"ProductPage"];
      }
      v14 = ;

      v15 = self->_clientContext;
      if (v15)
      {
        [(SUUIClientContext *)v15 localizedStringForKey:@"REVIEWS_SORT_MOST_RECENT" inTable:@"ProductPage"];
      }

      else
      {
        v16 = 0;
        [SUUIClientContext localizedStringForKey:@"REVIEWS_SORT_MOST_RECENT" inBundles:0 inTable:@"ProductPage"];
      }
      v17 = ;

      v18 = self->_clientContext;
      if (v18)
      {
        [(SUUIClientContext *)v18 localizedStringForKey:@"REVIEWS_SORT_MOST_HELPFUL" inTable:@"ProductPage"];
      }

      else
      {
        v19 = 0;
        [SUUIClientContext localizedStringForKey:@"REVIEWS_SORT_MOST_HELPFUL" inBundles:0 inTable:@"ProductPage"];
      }
      v20 = ;

      v21 = self->_reviewsHeaderView;
      v30[0] = v20;
      v30[1] = v17;
      v30[2] = v14;
      v30[3] = v11;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
      [(SUUIIPadCustomerReviewsHeaderView *)v21 setSortTitles:v22];

      [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView sizeToFit];
      v23 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
      [v23 addTarget:self action:sel__appSupportAction_ forControlEvents:64];

      v24 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
      [v24 addTarget:self action:sel__writeAReviewAction_ forControlEvents:64];

      v25 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
      [v25 setEnabled:!self->_askPermission];

      v26 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
      v27 = [(SUUIClientContext *)self->_clientContext clientInterface];
      v28 = [v27 clientIdentifier];
      [v26 setEnabled:v28 == 0];

      reviewsHeaderView = self->_reviewsHeaderView;
    }

    else
    {
      reviewsHeaderView = 0;
    }
  }

  return reviewsHeaderView;
}

- (void)_setReviewListWithResponse:(id)a3 error:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v5;
    v7 = [[SUUIReviewList alloc] initWithReviewListDictionary:v5];
    reviewList = self->_reviewList;
    self->_reviewList = v7;

    self->_loadedPageCount = 1;
    [(SUUILayoutCache *)self->_layoutCache setDelegate:0];
    layoutCache = self->_layoutCache;
    self->_layoutCache = 0;

    v10 = objc_alloc_init(SUUILayoutCache);
    v11 = self->_layoutCache;
    self->_layoutCache = v10;

    [(SUUILayoutCache *)self->_layoutCache setDelegate:self];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [(SUUIReviewList *)self->_reviewList reviews];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v26 + 1) + 8 * i) body];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = &stru_286AECDE0;
          }

          v21 = [(SUUIProductPageReviewsViewController *)self _textLayoutRequestWithText:v20];
          [v12 addObject:v21];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    [(SUUILayoutCache *)self->_layoutCache populateCacheWithLayoutRequests:v12];
    [(SUUIReviewsHistogramViewController *)self->_histogramViewController setReviewList:self->_reviewList];
    histogramViewController = self->_histogramViewController;
    if (self->_showAllVersions)
    {
      [(SUUIReviewsHistogramViewController *)self->_histogramViewController setVersionString:0];
    }

    else
    {
      v23 = [(SUUIProductPage *)self->_productPage item];
      v24 = [v23 versionString];
      [(SUUIReviewsHistogramViewController *)histogramViewController setVersionString:v24];
    }

    v5 = v25;
    [(SUUIProductPageTableView *)self->_tableView reloadData];
  }
}

- (id)_tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = objc_alloc_init(SUUIProductPageTableView);
    v5 = self->_tableView;
    self->_tableView = v4;

    v6 = self->_tableView;
    v7 = [(SUUIProductPage *)self->_productPage uber];
    v8 = [v7 colorScheme];
    v9 = [v8 backgroundColor];
    if (v9)
    {
      [(SUUIProductPageTableView *)v6 setBackgroundColor:v9];
    }

    else
    {
      v10 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [(SUUIProductPageTableView *)v6 setBackgroundColor:v10];
    }

    [(SUUIProductPageTableView *)self->_tableView setDataSource:self];
    [(SUUIProductPageTableView *)self->_tableView setDelegate:self];
    [(SUUIProductPageTableView *)self->_tableView _setHeaderAndFooterViewsFloat:0];
    [(SUUIProductPageTableView *)self->_tableView setSeparatorStyle:0];
    if (self->_headerViewController)
    {
      [(SUUIProductPageReviewsViewController *)self _addHeaderView];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained productPageChildViewControllerDidLoadScrollView:self];

    tableView = self->_tableView;
  }

  return tableView;
}

- (id)_textBoxCellForTableView:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"0"];
  if (v7)
  {
    v8 = v7;
    v9 = [(SUUITextBoxTableViewCell *)v7 textBoxView];
  }

  else
  {
    v8 = [[SUUITextBoxTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"0"];
    [(SUUITextBoxTableViewCell *)v8 setSelectionStyle:0];
    v10 = [(SUUIProductPage *)self->_productPage uber];
    v11 = [v10 colorScheme];

    v12 = [(SUUIProductPageReviewsViewController *)self _bottomBorderColorForScheme:v11];
    [(SUUITableViewCell *)v8 setBottomBorderColor:v12];

    v9 = [(SUUITextBoxTableViewCell *)v8 textBoxView];
    [v9 setColorScheme:v11];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"MORE_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
    }
    v14 = ;
    [v9 setMoreButtonTitle:v14];
  }

  v15 = [v6 row];

  v16 = [(SUUILayoutCache *)self->_layoutCache layoutForIndex:v15];
  if (v16)
  {
    v17 = [(SUUIReviewList *)self->_reviewList reviews];
    v18 = [v17 objectAtIndex:v15];

    [v9 setFixedWidthTextFrame:{objc_msgSend(v16, "textFrame")}];
    if ([(NSMutableIndexSet *)self->_expandedIndexSet containsIndex:v15])
    {
      v19 = 0;
    }

    else
    {
      v19 = 5;
    }

    [v9 setNumberOfVisibleLines:v19];
    [v18 rating];
    [v9 setRating:(v20 / 5.0)];
    v21 = [v18 formattedBylineWithClientContext:self->_clientContext];
    [v9 setRatingText:v21];

    v22 = MEMORY[0x277CCACA8];
    v23 = v15 + 1;
    v24 = [v18 title];
    v25 = [v22 stringWithFormat:@"%ld. %@", v23, v24];
    [v9 setTitle:v25];
  }

  else
  {
    [v9 reset];
  }

  return v8;
}

- (id)_textLayoutRequestWithText:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SUUITextLayoutRequest);
  [(SUUITextLayoutRequest *)v5 setNumberOfLines:5];
  [(SUUITextLayoutRequest *)v5 setText:v4];

  [(SUUIProductPageReviewsViewController *)self _defaultPageWidth];
  [(SUUITextLayoutRequest *)v5 setWidth:v6 + -30.0];

  return v5;
}

- (id)_urlStringWithPageNumber:(int64_t)a3
{
  v5 = [(SUUIProductPage *)self->_productPage reviewConfiguration];
  v6 = v5;
  if (v5)
  {
    if (self->_showAllVersions)
    {
      [v5 allVersionsURLString];
    }

    else
    {
      [v5 currentVersionURLString];
    }
    v10 = ;
    v13 = [v6 pageNumberQueryParameter];
    v12 = v13;
    if (a3)
    {
      if (v13)
      {
LABEL_12:
        [v10 stringByAppendingFormat:@"&sort-key=%ld&%@=%ld", self->_sortOrder, v12, a3];
        goto LABEL_14;
      }

LABEL_11:
      v12 = @"page-number";
      goto LABEL_12;
    }
  }

  else
  {
    v7 = [(SUUIProductPage *)self->_productPage item];
    showAllVersions = self->_showAllVersions;
    v9 = [v7 reviewsURLString];
    v10 = v9;
    if (!showAllVersions)
    {
      v11 = [v9 stringByAppendingString:@"&appVersion=current"];

      v10 = v11;
    }

    if (a3)
    {
      goto LABEL_11;
    }

    v12 = 0;
  }

  [v10 stringByAppendingFormat:@"&sort-key=%ld", self->_sortOrder, v16, v17];
  v14 = LABEL_14:;

  return v14;
}

- (SUUIProductPageChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end