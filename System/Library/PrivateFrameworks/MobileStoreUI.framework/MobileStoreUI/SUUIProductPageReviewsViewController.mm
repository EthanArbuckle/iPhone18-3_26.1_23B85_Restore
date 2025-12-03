@interface SUUIProductPageReviewsViewController
- (NSOperationQueue)operationQueue;
- (SUUIProductPageChildViewControllerDelegate)delegate;
- (SUUIProductPageReviewsViewController)initWithProductPage:(id)page;
- (double)_defaultPageWidth;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_bottomBorderColorForScheme:(id)scheme;
- (id)_histogramViewController;
- (id)_loadMoreCellForTableView:(id)view indexPath:(id)path;
- (id)_reviewsHeaderView;
- (id)_tableView;
- (id)_textBoxCellForTableView:(id)view indexPath:(id)path;
- (id)_textLayoutRequestWithText:(id)text;
- (id)_urlStringWithPageNumber:(int64_t)number;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addHeaderView;
- (void)_addReviewsFromResponse:(id)response error:(id)error;
- (void)_appSupportAction:(id)action;
- (void)_loadNextPageIfNecessaryForOffset:(CGPoint)offset;
- (void)_reloadData;
- (void)_setReviewListWithResponse:(id)response error:(id)error;
- (void)_sortSelectionAction:(id)action;
- (void)_starRatingAction:(id)action;
- (void)_versionSelectionAction:(id)action;
- (void)_writeAReviewAction:(id)action;
- (void)dealloc;
- (void)layoutCacheDidFinishBatch:(id)batch;
- (void)loadView;
- (void)reloadData;
- (void)reviewComposeViewControllerDidFinish:(id)finish;
- (void)reviewsFacebookViewControllerDidChange:(id)change;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAskPermission:(BOOL)permission;
- (void)setClientContext:(id)context;
- (void)setDelegate:(id)delegate;
- (void)setFacebookLikeStatus:(id)status;
- (void)setHeaderViewController:(id)controller;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUUIProductPageReviewsViewController

- (SUUIProductPageReviewsViewController)initWithProductPage:(id)page
{
  pageCopy = page;
  v9.receiver = self;
  v9.super_class = SUUIProductPageReviewsViewController;
  v6 = [(SUUIProductPageReviewsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isPad = SUUIUserInterfaceIdiom(v6->_clientContext) == 1;
    objc_storeStrong(&v7->_productPage, page);
    v7->_sortOrder = 1;
  }

  return v7;
}

- (void)dealloc
{
  [(SKComposeReviewViewController *)self->_composeViewController setDelegate:0];
  appSupportButton = [(SUUIReviewsHistogramViewController *)self->_histogramViewController appSupportButton];
  [appSupportButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  segmentedControl = [(SUUIReviewsHistogramViewController *)self->_histogramViewController segmentedControl];
  [segmentedControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  starRatingControl = [(SUUIReviewsHistogramViewController *)self->_histogramViewController starRatingControl];
  [starRatingControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  writeAReviewButton = [(SUUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
  [writeAReviewButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  appSupportButton2 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
  [appSupportButton2 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  writeAReviewButton2 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
  [writeAReviewButton2 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

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

- (void)setFacebookLikeStatus:(id)status
{
  statusCopy = status;
  facebookLikeStatus = [(SUUIReviewsFacebookViewController *)self->_facebookViewController facebookLikeStatus];

  if (facebookLikeStatus != statusCopy)
  {
    facebookViewController = self->_facebookViewController;
    if (statusCopy)
    {
      if (!facebookViewController)
      {
        v7 = objc_alloc_init(SUUIReviewsFacebookViewController);
        v8 = self->_facebookViewController;
        self->_facebookViewController = v7;

        [(SUUIReviewsFacebookViewController *)self->_facebookViewController setClientContext:self->_clientContext];
        [(SUUIReviewsFacebookViewController *)self->_facebookViewController setDelegate:self];
        view = [(SUUIReviewsFacebookViewController *)self->_facebookViewController view];
        uber = [(SUUIProductPage *)self->_productPage uber];
        colorScheme = [uber colorScheme];
        [view setColorScheme:colorScheme];

        [(SUUIProductPageReviewsViewController *)self addChildViewController:self->_facebookViewController];
        facebookViewController = self->_facebookViewController;
      }

      [(SUUIReviewsFacebookViewController *)facebookViewController setFacebookLikeStatus:?];
      view2 = [(SUUIReviewsFacebookViewController *)self->_facebookViewController view];
      [view2 setAutoresizingMask:2];
      v13 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [view2 setBackgroundColor:v13];

      [(SUUIProductPageReviewsViewController *)self _defaultPageWidth];
      [view2 sizeThatFits:?];
      [view2 setFrame:{0.0, 0.0, v14, v15}];
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
      view2 = self->_facebookViewController;
      self->_facebookViewController = 0;
    }

    goto LABEL_9;
  }

LABEL_10:

  MEMORY[0x2821F9730](v5);
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  if (self->_clientContext != contextCopy)
  {
    v14 = contextCopy;
    objc_storeStrong(&self->_clientContext, context);
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

    writeAReviewButton = [(SUUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
    clientInterface = [(SUUIClientContext *)self->_clientContext clientInterface];
    clientIdentifier = [clientInterface clientIdentifier];
    [writeAReviewButton setEnabled:clientIdentifier == 0];

    writeAReviewButton2 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
    clientInterface2 = [(SUUIClientContext *)self->_clientContext clientInterface];
    clientIdentifier2 = [clientInterface2 clientIdentifier];
    [writeAReviewButton2 setEnabled:clientIdentifier2 == 0];

    contextCopy = v14;
  }
}

- (void)setAskPermission:(BOOL)permission
{
  if (self->_askPermission != permission)
  {
    self->_askPermission = permission;
    appSupportButton = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
    [appSupportButton setEnabled:!self->_askPermission];
  }
}

- (void)loadView
{
  _tableView = [(SUUIProductPageReviewsViewController *)self _tableView];
  [(SUUIProductPageReviewsViewController *)self setView:_tableView];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUUIProductPageTableView *)self->_tableView contentOffset];
  [(SUUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
  v5.receiver = self;
  v5.super_class = SUUIProductPageReviewsViewController;
  [(SUUIProductPageReviewsViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUUIProductPageReviewsViewController *)self reloadData];
  v5.receiver = self;
  v5.super_class = SUUIProductPageReviewsViewController;
  [(SUUIProductPageReviewsViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)setHeaderViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_headerViewController != controllerCopy)
  {
    [(SUUIProductPageTableView *)self->_tableView setProductPageHeaderView:0];
    view = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
    [view removeFromSuperview];

    [(SUUIProductPageHeaderViewController *)self->_headerViewController removeFromParentViewController];
    objc_storeStrong(&self->_headerViewController, controller);
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)scrollViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained productPageChildViewControllerDidScroll:self];
}

- (void)reviewsFacebookViewControllerDidChange:(id)change
{
  [(SUUIProductPageTableView *)self->_tableView beginUpdates];
  tableView = self->_tableView;

  [(SUUIProductPageTableView *)tableView endUpdates];
}

- (void)layoutCacheDidFinishBatch:(id)batch
{
  [(SUUIProductPageTableView *)self->_tableView reloadData];
  [(SUUIProductPageTableView *)self->_tableView contentOffset];

  [(SUUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
}

- (void)reviewComposeViewControllerDidFinish:(id)finish
{
  composeViewController = self->_composeViewController;
  if (composeViewController == finish)
  {
    [(SKComposeReviewViewController *)composeViewController setDelegate:0];
    [(SKComposeReviewViewController *)self->_composeViewController dismissViewControllerAnimated:1 completion:0];
    v5 = self->_composeViewController;
    self->_composeViewController = 0;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == 3)
  {
    v9 = [(SUUIProductPageReviewsViewController *)self _loadMoreCellForTableView:viewCopy indexPath:pathCopy];
    goto LABEL_5;
  }

  if (section == 2)
  {
    v9 = [(SUUIProductPageReviewsViewController *)self _textBoxCellForTableView:viewCopy indexPath:pathCopy];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 2)
  {
    reviews = [(SUUIReviewList *)self->_reviewList reviews];
    _shouldShowLoadMoreCell = [reviews count];
  }

  else if (section == 3)
  {
    _shouldShowLoadMoreCell = [(SUUIProductPageReviewsViewController *)self _shouldShowLoadMoreCell];
  }

  else
  {
    _shouldShowLoadMoreCell = 0;
  }

  return _shouldShowLoadMoreCell;
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  if ([path section] == 3)
  {
    [cellCopy stopAnimating];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  expandedIndexSet = self->_expandedIndexSet;
  if (!expandedIndexSet)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v8 = self->_expandedIndexSet;
    self->_expandedIndexSet = v7;

    expandedIndexSet = self->_expandedIndexSet;
  }

  -[NSMutableIndexSet addIndex:](expandedIndexSet, "addIndex:", [pathCopy row]);
  tableView = self->_tableView;
  v11[0] = pathCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(SUUIProductPageTableView *)tableView reloadRowsAtIndexPaths:v10 withRowAnimation:100];
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 2)
  {
    _reviewsHeaderView = [(SUUIProductPageReviewsViewController *)self _reviewsHeaderView];
    view = _reviewsHeaderView;
    if (_reviewsHeaderView)
    {
      [_reviewsHeaderView frame];
      v7 = v13;
    }

    else
    {
      v7 = 0.0;
    }

    goto LABEL_12;
  }

  v7 = 0.0;
  if (section == 1)
  {
    if (self->_reviewList)
    {
      _histogramViewController = [(SUUIProductPageReviewsViewController *)self _histogramViewController];
      view = [_histogramViewController view];

      goto LABEL_8;
    }
  }

  else if (!section)
  {
    facebookViewController = self->_facebookViewController;
    if (facebookViewController)
    {
      view = [(SUUIReviewsFacebookViewController *)facebookViewController view];
LABEL_8:
      [(SUUIProductPageReviewsViewController *)self _defaultPageWidth];
      [view sizeThatFits:?];
      v7 = v11;
LABEL_12:
    }
  }

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 2)
  {
    v6 = [pathCopy row];
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  uber = [(SUUIProductPage *)self->_productPage uber];
  colorScheme = [uber colorScheme];
  backgroundColor = [colorScheme backgroundColor];
  v9 = backgroundColor;
  if (backgroundColor)
  {
    v10 = backgroundColor;
  }

  else
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
  }

  v11 = v10;

  if (section == 2)
  {
    _reviewsHeaderView = [(SUUIProductPageReviewsViewController *)self _reviewsHeaderView];
    goto LABEL_12;
  }

  if (section == 1)
  {
    if (self->_reviewList)
    {
      _histogramViewController = [(SUUIProductPageReviewsViewController *)self _histogramViewController];
      view = [_histogramViewController view];

      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (section)
  {
LABEL_10:
    view = 0;
    goto LABEL_13;
  }

  _reviewsHeaderView = [(SUUIReviewsFacebookViewController *)self->_facebookViewController view];
LABEL_12:
  view = _reviewsHeaderView;
LABEL_13:
  [view setBackgroundColor:v11];

  return view;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  productPage = self->_productPage;
  pathCopy = path;
  uber = [(SUUIProductPage *)productPage uber];
  colorScheme = [uber colorScheme];
  backgroundColor = [colorScheme backgroundColor];
  if (backgroundColor)
  {
    [cellCopy setBackgroundColor:backgroundColor];
  }

  else
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    [cellCopy setBackgroundColor:v14];
  }

  section = [pathCopy section];
  if (section == 3)
  {
    [cellCopy startAnimating];
    [viewCopy contentOffset];
    [(SUUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
  }
}

- (void)_appSupportAction:(id)action
{
  item = [(SUUIProductPage *)self->_productPage item];
  supportURLString = [item supportURLString];

  v4 = supportURLString;
  if (supportURLString)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:supportURLString];
    SUUIMetricsOpenURL(v5);

    v4 = supportURLString;
  }
}

- (void)_sortSelectionAction:(id)action
{
  sortOrder = self->_sortOrder;
  selectedSortIndex = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView selectedSortIndex];
  if (selectedSortIndex <= 3)
  {
    sortOrder = qword_259FCACB8[selectedSortIndex];
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

- (void)_starRatingAction:(id)action
{
  actionCopy = action;
  personalStarRating = [(SUUIReviewsHistogramViewController *)self->_histogramViewController personalStarRating];
  if (!self->_starRatingQueue)
  {
    v6 = [SUUIStarRatingQueue alloc];
    clientContext = self->_clientContext;
    reviewConfiguration = [(SUUIProductPage *)self->_productPage reviewConfiguration];
    v9 = [(SUUIStarRatingQueue *)v6 initWithClientContext:clientContext reviewConfiguration:reviewConfiguration];
    starRatingQueue = self->_starRatingQueue;
    self->_starRatingQueue = v9;

    v11 = self->_starRatingQueue;
    view = [(SUUIProductPageReviewsViewController *)self view];
    window = [view window];
    [(SUUIStarRatingQueue *)v11 setWindow:window];
  }

  objc_initWeak(&location, self);
  v14 = MEMORY[0x277CCACA8];
  item = [(SUUIProductPage *)self->_productPage item];
  v16 = [v14 stringWithFormat:@"%lld", objc_msgSend(item, "itemIdentifier")];

  v17 = self->_starRatingQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__SUUIProductPageReviewsViewController__starRatingAction___block_invoke;
  v18[3] = &unk_2798F6AF8;
  objc_copyWeak(&v19, &location);
  [(SUUIStarRatingQueue *)v17 setRating:personalStarRating forItemID:v16 completionBlock:v18];
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

- (void)_versionSelectionAction:(id)action
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

- (void)_writeAReviewAction:(id)action
{
  actionCopy = action;
  if (!self->_composeViewController)
  {
    v5 = objc_alloc(MEMORY[0x277CDD350]);
    writeReviewURL = [(SUUIReviewList *)self->_reviewList writeReviewURL];
    v7 = [v5 initWithCompositionURL:writeReviewURL];

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
  view = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [view setAutoresizingMask:2];
  [view frame];
  v4 = v3;
  [(SUUIProductPageTableView *)self->_tableView bounds];
  [view setFrame:{0.0, v4}];
  [(SUUIProductPageTableView *)self->_tableView _addContentSubview:view atBack:0];
  floatingView = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [floatingView setAutoresizingMask:2];
  [floatingView frame];
  v7 = v6;
  [(SUUIProductPageTableView *)self->_tableView bounds];
  [floatingView setFrame:{0.0, v7}];
  [(SUUIProductPageTableView *)self->_tableView setProductPageHeaderView:floatingView];
}

- (void)_addReviewsFromResponse:(id)response error:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[SUUIReviewList alloc] initWithReviewListDictionary:responseCopy];
    reviews = [(SUUIReviewList *)v7 reviews];
    v9 = [reviews count];
    if (v9 > 0)
    {
      v28 = v9;
      v31 = v7;
      v32 = responseCopy;
      reviews2 = [(SUUIReviewList *)self->_reviewList reviews];
      v11 = [reviews2 count];

      _shouldShowLoadMoreCell = [(SUUIProductPageReviewsViewController *)self _shouldShowLoadMoreCell];
      [(SUUIReviewList *)self->_reviewList addReviews:reviews];
      ++self->_loadedPageCount;
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v30 = reviews;
      v13 = reviews;
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

            body = [*(*(&v33 + 1) + 8 * i) body];
            v19 = body;
            if (body)
            {
              v20 = body;
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
      if (_shouldShowLoadMoreCell && ![(SUUIProductPageReviewsViewController *)self _shouldShowLoadMoreCell])
      {
        tableView = self->_tableView;
        v26 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:3];
        v37 = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        [(SUUIProductPageTableView *)tableView deleteRowsAtIndexPaths:v27 withRowAnimation:5];
      }

      [(SUUIProductPageTableView *)self->_tableView endUpdates];

      v7 = v31;
      responseCopy = v32;
      reviews = v30;
    }

    [(SUUIProductPageTableView *)self->_tableView contentOffset];
    [(SUUIProductPageReviewsViewController *)self _loadNextPageIfNecessaryForOffset:?];
  }
}

- (id)_bottomBorderColorForScheme:(id)scheme
{
  primaryTextColor = [scheme primaryTextColor];
  v4 = primaryTextColor;
  if (primaryTextColor)
  {
    v5 = primaryTextColor;
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

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 320.0;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
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
    item = [(SUUIProductPage *)self->_productPage item];
    itemKind = [item itemKind];

    if (itemKind != 17)
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
        item2 = [(SUUIProductPage *)self->_productPage item];
        versionString = [item2 versionString];
        [(SUUIReviewsHistogramViewController *)v16 setVersionString:versionString];
      }
    }

    view = [(SUUIReviewsHistogramViewController *)self->_histogramViewController view];
    [view setAutoresizingMask:2];
    uber = [(SUUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    [view setColorScheme:colorScheme];

    appSupportButton = [(SUUIReviewsHistogramViewController *)self->_histogramViewController appSupportButton];
    [appSupportButton addTarget:self action:sel__appSupportAction_ forControlEvents:64];

    segmentedControl = [(SUUIReviewsHistogramViewController *)self->_histogramViewController segmentedControl];
    [segmentedControl addTarget:self action:sel__versionSelectionAction_ forControlEvents:4096];

    starRatingControl = [(SUUIReviewsHistogramViewController *)self->_histogramViewController starRatingControl];
    [starRatingControl addTarget:self action:sel__starRatingAction_ forControlEvents:4096];

    writeAReviewButton = [(SUUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
    [writeAReviewButton addTarget:self action:sel__writeAReviewAction_ forControlEvents:64];

    appSupportButton2 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController appSupportButton];
    [appSupportButton2 setEnabled:!self->_askPermission];

    writeAReviewButton2 = [(SUUIReviewsHistogramViewController *)self->_histogramViewController writeAReviewButton];
    clientInterface = [(SUUIClientContext *)self->_clientContext clientInterface];
    clientIdentifier = [clientInterface clientIdentifier];
    [writeAReviewButton2 setEnabled:clientIdentifier == 0];

    [(SUUIProductPageReviewsViewController *)self addChildViewController:self->_histogramViewController];
    histogramViewController = self->_histogramViewController;
  }

  return histogramViewController;
}

- (id)_loadMoreCellForTableView:(id)view indexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:{@"1", path}];
  if (!v4)
  {
    v4 = [[SUUILoadMoreCell alloc] initWithStyle:0 reuseIdentifier:@"1"];
  }

  return v4;
}

- (void)_loadNextPageIfNecessaryForOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if ([(SUUIProductPageReviewsViewController *)self isViewLoaded])
  {
    view = [(SUUIProductPageReviewsViewController *)self view];
    if ([view isHidden])
    {
    }

    else
    {
      window = [view window];

      if (window)
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
              reviews = [(SUUIReviewList *)self->_reviewList reviews];
              v11 = [reviews count];

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
                operationQueue = [(SUUIProductPageReviewsViewController *)self operationQueue];
                [operationQueue addOperation:self->_loadOperation];
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
  operationQueue = [(SUUIProductPageReviewsViewController *)self operationQueue];
  [operationQueue addOperation:self->_loadOperation];
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
      uber = [(SUUIProductPage *)self->_productPage uber];
      colorScheme = [uber colorScheme];
      [(SUUIIPadCustomerReviewsHeaderView *)v6 setColorScheme:colorScheme];

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
      appSupportButton = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
      [appSupportButton addTarget:self action:sel__appSupportAction_ forControlEvents:64];

      writeAReviewButton = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
      [writeAReviewButton addTarget:self action:sel__writeAReviewAction_ forControlEvents:64];

      appSupportButton2 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView appSupportButton];
      [appSupportButton2 setEnabled:!self->_askPermission];

      writeAReviewButton2 = [(SUUIIPadCustomerReviewsHeaderView *)self->_reviewsHeaderView writeAReviewButton];
      clientInterface = [(SUUIClientContext *)self->_clientContext clientInterface];
      clientIdentifier = [clientInterface clientIdentifier];
      [writeAReviewButton2 setEnabled:clientIdentifier == 0];

      reviewsHeaderView = self->_reviewsHeaderView;
    }

    else
    {
      reviewsHeaderView = 0;
    }
  }

  return reviewsHeaderView;
}

- (void)_setReviewListWithResponse:(id)response error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = responseCopy;
    v7 = [[SUUIReviewList alloc] initWithReviewListDictionary:responseCopy];
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
    reviews = [(SUUIReviewList *)self->_reviewList reviews];
    v14 = [reviews countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(reviews);
          }

          body = [*(*(&v26 + 1) + 8 * i) body];
          v19 = body;
          if (body)
          {
            v20 = body;
          }

          else
          {
            v20 = &stru_286AECDE0;
          }

          v21 = [(SUUIProductPageReviewsViewController *)self _textLayoutRequestWithText:v20];
          [v12 addObject:v21];
        }

        v15 = [reviews countByEnumeratingWithState:&v26 objects:v30 count:16];
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
      item = [(SUUIProductPage *)self->_productPage item];
      versionString = [item versionString];
      [(SUUIReviewsHistogramViewController *)histogramViewController setVersionString:versionString];
    }

    responseCopy = v25;
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
    uber = [(SUUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    backgroundColor = [colorScheme backgroundColor];
    if (backgroundColor)
    {
      [(SUUIProductPageTableView *)v6 setBackgroundColor:backgroundColor];
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

- (id)_textBoxCellForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"0"];
  if (v7)
  {
    v8 = v7;
    textBoxView = [(SUUITextBoxTableViewCell *)v7 textBoxView];
  }

  else
  {
    v8 = [[SUUITextBoxTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"0"];
    [(SUUITextBoxTableViewCell *)v8 setSelectionStyle:0];
    uber = [(SUUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];

    v12 = [(SUUIProductPageReviewsViewController *)self _bottomBorderColorForScheme:colorScheme];
    [(SUUITableViewCell *)v8 setBottomBorderColor:v12];

    textBoxView = [(SUUITextBoxTableViewCell *)v8 textBoxView];
    [textBoxView setColorScheme:colorScheme];
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
    [textBoxView setMoreButtonTitle:v14];
  }

  v15 = [pathCopy row];

  v16 = [(SUUILayoutCache *)self->_layoutCache layoutForIndex:v15];
  if (v16)
  {
    reviews = [(SUUIReviewList *)self->_reviewList reviews];
    v18 = [reviews objectAtIndex:v15];

    [textBoxView setFixedWidthTextFrame:{objc_msgSend(v16, "textFrame")}];
    if ([(NSMutableIndexSet *)self->_expandedIndexSet containsIndex:v15])
    {
      v19 = 0;
    }

    else
    {
      v19 = 5;
    }

    [textBoxView setNumberOfVisibleLines:v19];
    [v18 rating];
    [textBoxView setRating:(v20 / 5.0)];
    v21 = [v18 formattedBylineWithClientContext:self->_clientContext];
    [textBoxView setRatingText:v21];

    v22 = MEMORY[0x277CCACA8];
    v23 = v15 + 1;
    title = [v18 title];
    v25 = [v22 stringWithFormat:@"%ld. %@", v23, title];
    [textBoxView setTitle:v25];
  }

  else
  {
    [textBoxView reset];
  }

  return v8;
}

- (id)_textLayoutRequestWithText:(id)text
{
  textCopy = text;
  v5 = objc_alloc_init(SUUITextLayoutRequest);
  [(SUUITextLayoutRequest *)v5 setNumberOfLines:5];
  [(SUUITextLayoutRequest *)v5 setText:textCopy];

  [(SUUIProductPageReviewsViewController *)self _defaultPageWidth];
  [(SUUITextLayoutRequest *)v5 setWidth:v6 + -30.0];

  return v5;
}

- (id)_urlStringWithPageNumber:(int64_t)number
{
  reviewConfiguration = [(SUUIProductPage *)self->_productPage reviewConfiguration];
  v6 = reviewConfiguration;
  if (reviewConfiguration)
  {
    if (self->_showAllVersions)
    {
      [reviewConfiguration allVersionsURLString];
    }

    else
    {
      [reviewConfiguration currentVersionURLString];
    }
    v10 = ;
    pageNumberQueryParameter = [v6 pageNumberQueryParameter];
    v12 = pageNumberQueryParameter;
    if (number)
    {
      if (pageNumberQueryParameter)
      {
LABEL_12:
        [v10 stringByAppendingFormat:@"&sort-key=%ld&%@=%ld", self->_sortOrder, v12, number];
        goto LABEL_14;
      }

LABEL_11:
      v12 = @"page-number";
      goto LABEL_12;
    }
  }

  else
  {
    item = [(SUUIProductPage *)self->_productPage item];
    showAllVersions = self->_showAllVersions;
    reviewsURLString = [item reviewsURLString];
    v10 = reviewsURLString;
    if (!showAllVersions)
    {
      v11 = [reviewsURLString stringByAppendingString:@"&appVersion=current"];

      v10 = v11;
    }

    if (number)
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