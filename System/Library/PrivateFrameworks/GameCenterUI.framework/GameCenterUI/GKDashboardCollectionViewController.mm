@interface GKDashboardCollectionViewController
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)isLoading;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (GKDashboardCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSLayoutConstraint)keyboardConstraint;
- (UIEdgeInsets)contentInsetsBeforeKeyboard;
- (UIEdgeInsets)scrollInsetsBeforeKeyboard;
- (UIView)collectionContainerView;
- (UIView)keyboardAdjustedView;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)horizontalCollectionViewLayout;
- (id)preferredFocusEnvironments;
- (id)verticalCollectionViewLayout;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)clearSelectionForCollectionView:(id)view;
- (void)collectionView:(id)view didFocusItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnfocusItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)createCollectionViewInsideView:(id)view;
- (void)dataUpdated:(BOOL)updated withError:(id)error;
- (void)dealloc;
- (void)didEnterLoadingState;
- (void)hideNoContentPlaceholder;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadData;
- (void)loadView;
- (void)popoverDidClose:(id)close;
- (void)prepareForAutomaticTwoColumnLayout;
- (void)setAutoWidthColumns:(int64_t)columns;
- (void)setDataSource:(id)source;
- (void)setNeedsRefresh;
- (void)setToHorizontalLayout:(BOOL)layout;
- (void)setupDataSource;
- (void)setupNoContentView:(id)view withError:(id)error;
- (void)setupVisualEffect;
- (void)showNoContentPlaceholderForError:(id)error;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)windowDidEndSheet:(id)sheet;
@end

@implementation GKDashboardCollectionViewController

- (GKDashboardCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = GKDashboardCollectionViewController;
  v4 = [(GKLoadingViewController *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v4 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UICollectionView *)self->_collectionView setDelegate:0];
  v4.receiver = self;
  v4.super_class = GKDashboardCollectionViewController;
  [(GKDashboardCollectionViewController *)&v4 dealloc];
}

- (void)setToHorizontalLayout:(BOOL)layout
{
  layoutCopy = layout;
  view = [(GKDashboardCollectionViewController *)self view];
  if (layoutCopy)
  {
    [(GKDashboardCollectionViewController *)self horizontalCollectionViewLayout];
  }

  else
  {
    [(GKDashboardCollectionViewController *)self verticalCollectionViewLayout];
  }
  v6 = ;
  [(UICollectionView *)self->_collectionView setCollectionViewLayout:v6];

  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:layoutCopy ^ 1];
  [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:layoutCopy];
  if (self->_dataSource)
  {

    [(GKDashboardCollectionViewController *)self setupDataSource];
  }
}

- (id)horizontalCollectionViewLayout
{
  v2 = objc_alloc_init(GKCollectionHorizontalLayout);
  [(UICollectionViewFlowLayout *)v2 setMinimumLineSpacing:0.0];

  return v2;
}

- (id)verticalCollectionViewLayout
{
  v2 = objc_alloc_init(GKCollectionGridLayout);

  return v2;
}

- (void)loadView
{
  nibName = [(GKDashboardCollectionViewController *)self nibName];

  if (nibName)
  {
    v10.receiver = self;
    v10.super_class = GKDashboardCollectionViewController;
    [(GKDashboardCollectionViewController *)&v10 loadView];
    collectionView = self->_collectionView;
    if (collectionView)
    {
      goto LABEL_6;
    }

    WeakRetained = objc_loadWeakRetained(&self->_collectionContainerView);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&self->_collectionContainerView);
      [(GKDashboardCollectionViewController *)self createCollectionViewInsideView:v6];
    }

    collectionView = self->_collectionView;
    if (collectionView)
    {
LABEL_6:
      collectionViewLayout = [(UICollectionView *)collectionView collectionViewLayout];

      if (!collectionViewLayout)
      {
        [(GKDashboardCollectionViewController *)self setToHorizontalLayout:0];
      }
    }

    [(UICollectionView *)self->_collectionView setContentInsetAdjustmentBehavior:0];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v9 setBackgroundColor:0];
    [v9 setOpaque:0];
    [v9 setAutoresizingMask:18];
    [(GKDashboardCollectionViewController *)self setView:v9];
    [(GKDashboardCollectionViewController *)self createCollectionViewInsideView:v9];
  }
}

- (void)createCollectionViewInsideView:(id)view
{
  viewCopy = view;
  v9 = objc_alloc_init(GKCollectionGridLayout);
  v5 = objc_alloc(MEMORY[0x277D752A0]);
  v6 = [v5 initWithFrame:v9 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(GKDashboardCollectionViewController *)self setCollectionView:v6];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor];

  [(UICollectionView *)self->_collectionView setOpaque:0];
  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:1];
  [viewCopy addSubview:self->_collectionView];
  v8 = [MEMORY[0x277CCAAD0] _gkConstraintsForView:self->_collectionView withinView:viewCopy insets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [viewCopy addConstraints:v8];
}

- (void)viewDidLoad
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = GKDashboardCollectionViewController;
  [(GKDashboardCollectionViewController *)&v7 viewDidLoad];
  if (self->_collectionView)
  {
    v8[0] = self->_collectionView;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(GKLoadingViewController *)self setViewsToHideWhileLoading:v3];
  }

  [(GKDashboardCollectionViewController *)self setupDataSource];
  WeakRetained = objc_loadWeakRetained(&self->_keyboardConstraint);
  [WeakRetained constant];
  [(GKDashboardCollectionViewController *)self setKeyboardConstraintDefaultConstant:?];

  v5 = objc_loadWeakRetained(&self->_keyboardAdjustedView);
  if (!v5)
  {
    [(GKDashboardCollectionViewController *)self setKeyboardAdjustedView:self->_collectionView];
  }

  collectionView = [(GKDashboardCollectionViewController *)self collectionView];
  [(GKDashboardCollectionViewController *)self setContentScrollView:collectionView forEdge:15];

  [(GKDashboardCollectionViewController *)self prepareForAutomaticTwoColumnLayout];
  [(GKDashboardCollectionViewController *)self setupVisualEffect];
}

- (void)setupVisualEffect
{
  v7 = objc_opt_new();
  _gkGameLayerBackgroundVisualEffect = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v7 setBackgroundEffects:_gkGameLayerBackgroundVisualEffect];

  [v7 _setGroupName:@"gameLayerGroup"];
  view = [(GKDashboardCollectionViewController *)self view];
  [view insertSubview:v7 atIndex:0];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = MEMORY[0x277CCAAD0];
  view2 = [(GKDashboardCollectionViewController *)self view];
  [v5 _gkInstallEdgeConstraintsForView:v7 containedWithinParentView:view2];
}

- (void)prepareForAutomaticTwoColumnLayout
{
  if (self->_autoWidthUsesTwoColumnsWhenSpace)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v6 = 1;
    }

    else
    {
      traitCollection = [(GKDashboardCollectionViewController *)self traitCollection];
      if ([traitCollection verticalSizeClass] == 1)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }

    [(GKDashboardCollectionViewController *)self setAutoWidthColumns:v6];
  }
}

- (id)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x277D85DE8];
  collectionView = self->_collectionView;
  if (collectionView)
  {
    view = collectionView;
LABEL_4:
    v6[0] = view;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

    goto LABEL_5;
  }

  view = [(GKDashboardCollectionViewController *)self view];
  if (view)
  {
    goto LABEL_4;
  }

  v4 = MEMORY[0x277CBEBF8];
LABEL_5:

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = GKDashboardCollectionViewController;
  [(GKDashboardCollectionViewController *)&v4 traitCollectionDidChange:change];
  [(GKDashboardCollectionViewController *)self prepareForAutomaticTwoColumnLayout];
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  dataSource = self->_dataSource;
  if (dataSource != sourceCopy)
  {
    v7 = sourceCopy;
    [(GKCollectionDataSource *)dataSource setPresentationViewController:0];
    objc_storeStrong(&self->_dataSource, source);
    dataSource = [(GKDashboardCollectionViewController *)self setupDataSource];
    sourceCopy = v7;
  }

  MEMORY[0x2821F96F8](dataSource, sourceCopy);
}

- (void)setupDataSource
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    [(GKCollectionDataSource *)dataSource setupCollectionView:self->_collectionView];
    v4 = self->_dataSource;

    [(GKCollectionDataSource *)v4 setPresentationViewController:self];
  }

  else
  {
    [(UICollectionView *)self->_collectionView setDataSource:self];
    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView setDelegate:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = GKDashboardCollectionViewController;
  [(GKDashboardCollectionViewController *)&v5 viewWillAppear:appear];
  loadingState = [(GKLoadingViewController *)self loadingState];
  if (loadingState == @"Initial")
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadingState"];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = GKDashboardCollectionViewController;
  [(GKDashboardCollectionViewController *)&v5 viewDidAppear:appear];
  loadingState = [(GKLoadingViewController *)self loadingState];
  if (loadingState == @"Initial")
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadingState"];
  }

  [(GKDashboardCollectionViewController *)self clearSelection];
  [(GKDashboardCollectionViewController *)self setNeedsFocusUpdate];
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  if (![(GKDashboardCollectionViewController *)self isLoading])
  {
    v4 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, -[UICollectionView numberOfSections](self->_collectionView, "numberOfSections")}];
    [(UICollectionView *)self->_collectionView reloadSections:v4];
  }
}

- (void)setAutoWidthColumns:(int64_t)columns
{
  view = [(GKDashboardCollectionViewController *)self view];
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [collectionViewLayout setAutoWidthColumns:columns];
  }
}

- (BOOL)isLoading
{
  loadingState = [(GKLoadingViewController *)self loadingState];
  v3 = 1;
  if (loadingState)
  {
    if (loadingState != @"Initial" && loadingState != @"LoadingState")
    {
      v3 = loadingState == @"RefreshingState";
    }
  }

  return v3;
}

- (void)didEnterLoadingState
{
  v3.receiver = self;
  v3.super_class = GKDashboardCollectionViewController;
  [(GKLoadingViewController *)&v3 didEnterLoadingState];
  [(GKDashboardCollectionViewController *)self loadData];
}

- (void)setNeedsRefresh
{
  if (![(GKDashboardCollectionViewController *)self isLoading])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__GKDashboardCollectionViewController_setNeedsRefresh__block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __54__GKDashboardCollectionViewController_setNeedsRefresh__block_invoke()
{
  gk_dispatch_debounce();
  v0 = dispatch_time(0, 1000000000);
  dispatch_after(v0, MEMORY[0x277D85CD0], &__block_literal_global_17);
}

uint64_t __54__GKDashboardCollectionViewController_setNeedsRefresh__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isLoading];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setLoadingState:@"RefreshingState"];
  }

  return result;
}

- (void)loadData
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__GKDashboardCollectionViewController_loadData__block_invoke;
    v4[3] = &unk_27966B138;
    v4[4] = self;
    [(GKCollectionDataSource *)dataSource loadDataWithCompletionHandler:v4];
  }

  else
  {

    [(GKDashboardCollectionViewController *)self dataUpdated:1 withError:0];
  }
}

- (void)dataUpdated:(BOOL)updated withError:(id)error
{
  updatedCopy = updated;
  errorCopy = error;
  if ([(GKDashboardCollectionViewController *)self hasData])
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadedState"];
    [(GKDashboardCollectionViewController *)self hideNoContentPlaceholder];
    if (!updatedCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [(GKLoadingViewController *)self setLoadingState:@"NoContentState"];
    [(GKDashboardCollectionViewController *)self showNoContentPlaceholderForError:errorCopy];
    if (!updatedCopy)
    {
      goto LABEL_10;
    }
  }

  sectionsToReload = self->_sectionsToReload;
  if (sectionsToReload && [(NSMutableIndexSet *)sectionsToReload count])
  {
    [(UICollectionView *)self->_collectionView reloadSections:self->_sectionsToReload];
    [(NSMutableIndexSet *)self->_sectionsToReload removeAllIndexes];
  }

  else
  {
    [(UICollectionView *)self->_collectionView reloadData];
  }

  [(GKDashboardCollectionViewController *)self setNeedsFocusUpdate];
  navigationController = [(GKDashboardCollectionViewController *)self navigationController];
  [navigationController setNeedsFocusUpdate];

LABEL_10:
}

- (void)showNoContentPlaceholderForError:(id)error
{
  v13[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  collectionView = self->_collectionView;
  if (collectionView)
  {
    [(UICollectionView *)collectionView setHidden:1];
    noContentView = self->_noContentView;
    if (!noContentView)
    {
      v7 = [GKNoContentView alloc];
      [(UICollectionView *)self->_collectionView bounds];
      v8 = [(GKNoContentView *)v7 initWithFrame:?];
      [(GKDashboardCollectionViewController *)self setNoContentView:v8];

      [(GKNoContentView *)self->_noContentView setTranslatesAutoresizingMaskIntoConstraints:0];
      superview = [(UICollectionView *)self->_collectionView superview];
      [superview insertSubview:self->_noContentView aboveSubview:self->_collectionView];
      v10 = [MEMORY[0x277CCAAD0] _gkConstraintsForView:self->_noContentView withinView:self->_collectionView insets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
      [superview addConstraints:v10];

      v11 = self->_noContentView;
      v13[0] = self->_collectionView;
      v13[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
      [(GKLoadingViewController *)self setViewsToHideWhileLoading:v12];

      noContentView = self->_noContentView;
    }

    [(GKDashboardCollectionViewController *)self setupNoContentView:noContentView withError:errorCopy];
    [(GKNoContentView *)self->_noContentView setHidden:0];
  }
}

- (void)hideNoContentPlaceholder
{
  [(GKNoContentView *)self->_noContentView setHidden:1];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView setHidden:0];
}

- (void)setupNoContentView:(id)view withError:(id)error
{
  viewCopy = view;
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  [viewCopy setTitle:v6];

  if (error)
  {
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    [viewCopy setMessage:v8];
  }

  else
  {
    [viewCopy setMessage:0];
  }
}

- (void)clearSelectionForCollectionView:(id)view
{
  v14 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [indexPathsForSelectedItems countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [viewCopy deselectItemAtIndexPath:*(*(&v9 + 1) + 8 * v8++) animated:1];
      }

      while (v6 != v8);
      v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)popoverDidClose:(id)close
{
  v4 = MEMORY[0x277CCAB98];
  closeCopy = close;
  defaultCenter = [v4 defaultCenter];
  name = [closeCopy name];

  [defaultCenter removeObserver:self name:name object:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__GKDashboardCollectionViewController_popoverDidClose___block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)windowDidEndSheet:(id)sheet
{
  v4 = MEMORY[0x277CCAB98];
  sheetCopy = sheet;
  defaultCenter = [v4 defaultCenter];
  name = [sheetCopy name];

  [defaultCenter removeObserver:self name:name object:0];

  [(GKDashboardCollectionViewController *)self clearSelection];
}

- (void)keyboardWillShow:(id)show
{
  showCopy = show;
  view = [(GKDashboardCollectionViewController *)self view];
  window = [view window];
  if (window)
  {
    WeakRetained = objc_loadWeakRetained(&self->_keyboardConstraint);
    if (WeakRetained)
    {
      userInfo = WeakRetained;
      popoverPresentationController = [(GKDashboardCollectionViewController *)self popoverPresentationController];
      if (popoverPresentationController)
      {
      }

      else
      {
        navigationController = [(GKDashboardCollectionViewController *)self navigationController];
        popoverPresentationController2 = [navigationController popoverPresentationController];

        if (popoverPresentationController2)
        {
          goto LABEL_7;
        }

        userInfo = [showCopy userInfo];
        v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
        [v12 CGRectValue];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;

        [window convertRect:0 fromWindow:{v14, v16, v18, v20}];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        if (*MEMORY[0x277D0C258] == 1)
        {
          currentDevice = [MEMORY[0x277D75418] currentDevice];
          userInterfaceIdiom = [currentDevice userInterfaceIdiom];

          if (userInterfaceIdiom == 1 && v24 == v16)
          {
            screen = [window screen];
            [screen bounds];
            v33 = v32;
            [screen bounds];
            if (v33 <= v34)
            {
              [screen bounds];
              v40 = v39;
              [window bounds];
              v38 = (v40 + v41) * 0.5;
            }

            else
            {
              [window bounds];
              v36 = v35;
              mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
              if ([mEMORY[0x277D75128] isStatusBarHidden])
              {
                v38 = v36 + 0.0;
              }

              else
              {
                mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
                [mEMORY[0x277D75128]2 statusBarHeight];
                v38 = v36 + v43;
              }
            }

            [window bounds];
            v24 = v44 - (v38 - v16);
          }
        }

        [view convertRect:0 fromView:{v22, v24, v26, v28}];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v53 = objc_loadWeakRetained(&self->_keyboardAdjustedView);
        v54 = v53;
        if (v53)
        {
          v55 = v53;
        }

        else
        {
          v55 = view;
        }

        v56 = v55;

        [v56 frame];
        MaxY = CGRectGetMaxY(v67);
        v68.origin.x = v46;
        v68.origin.y = v48;
        v68.size.width = v50;
        v68.size.height = v52;
        v58 = MaxY - CGRectGetMinY(v68);
        if (v58 >= 0.0)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0.0;
        }

        v60 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76B78]];
        [v60 doubleValue];
        v62 = v61;

        v63 = MEMORY[0x277D75D18];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __56__GKDashboardCollectionViewController_keyboardWillShow___block_invoke;
        v64[3] = &unk_27966A7D0;
        v64[4] = self;
        v66 = v59;
        v65 = view;
        [v63 animateWithDuration:0x10000 delay:v64 options:0 animations:v62 completion:0.0];
      }
    }
  }

LABEL_7:
}

uint64_t __56__GKDashboardCollectionViewController_keyboardWillShow___block_invoke(uint64_t a1)
{
  [*(a1 + 32) keyboardConstraintDefaultConstant];
  v3 = v2 + *(a1 + 48);
  v4 = [*(a1 + 32) keyboardConstraint];
  [v4 setConstant:v3];

  v5 = *(a1 + 40);

  return [v5 layoutIfNeeded];
}

- (void)keyboardWillHide:(id)hide
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardConstraint);
  [WeakRetained constant];
  v6 = v5;
  keyboardConstraintDefaultConstant = self->_keyboardConstraintDefaultConstant;

  if (v6 != keyboardConstraintDefaultConstant)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__GKDashboardCollectionViewController_keyboardWillHide___block_invoke;
    v8[3] = &unk_2796699A8;
    v8[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v8];
  }
}

void __56__GKDashboardCollectionViewController_keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1080);
  WeakRetained = objc_loadWeakRetained((v1 + 1072));
  [WeakRetained setConstant:v2];
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    return [(GKCollectionDataSource *)dataSource numberOfSectionsInCollectionView:view];
  }

  else
  {
    return 1;
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  result = self->_dataSource;
  if (result)
  {
    return [result collectionView:view numberOfItemsInSection:section];
  }

  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    v5 = [(GKCollectionDataSource *)dataSource collectionView:view cellForItemAtIndexPath:path];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    path = [MEMORY[0x277CCACA8] stringWithFormat:@"No datasource. Subclass needs to override collectionView:cellForItemAtIndexPath:", path];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardCollectionViewController.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = [v6 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", path, "-[GKDashboardCollectionViewController collectionView:cellForItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 555];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v10}];
    v5 = 0;
  }

  return v5;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    v6 = [(GKCollectionDataSource *)dataSource collectionView:view viewForSupplementaryElementOfKind:kind atIndexPath:path];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    path = [MEMORY[0x277CCACA8] stringWithFormat:@"No datasource. Subclass needs to override collectionView:viewForSupplementaryElementOfKind:atIndexPath:", kind, path];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardCollectionViewController.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = [v7 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", path, "-[GKDashboardCollectionViewController collectionView:viewForSupplementaryElementOfKind:atIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 567];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
    v6 = 0;
  }

  return v6;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  layoutCopy = layout;
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    [(GKCollectionDataSource *)self->_dataSource collectionView:viewCopy layout:layoutCopy sizeForItemAtIndexPath:pathCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = *MEMORY[0x277CBF3A8];
      v14 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_7;
    }

    [layoutCopy itemSize];
  }

  v13 = v11;
  v14 = v12;
LABEL_7:

  v15 = v13;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  if (objc_opt_respondsToSelector())
  {
    [(GKCollectionDataSource *)self->_dataSource collectionView:viewCopy layout:layoutCopy referenceSizeForHeaderInSection:section];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = *MEMORY[0x277CBF3A8];
      v13 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_7;
    }

    [layoutCopy headerReferenceSize];
  }

  v12 = v10;
  v13 = v11;
LABEL_7:

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  if (objc_opt_respondsToSelector())
  {
    [(GKCollectionDataSource *)self->_dataSource collectionView:viewCopy layout:layoutCopy referenceSizeForFooterInSection:section];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = *MEMORY[0x277CBF3A8];
      v13 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_7;
    }

    [layoutCopy footerReferenceSize];
  }

  v12 = v10;
  v13 = v11;
LABEL_7:

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(GKCollectionDataSource *)self->_dataSource collectionView:viewCopy shouldSelectItemAtIndexPath:pathCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(GKCollectionDataSource *)self->_dataSource collectionView:viewCopy shouldDeselectItemAtIndexPath:pathCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    [(GKCollectionDataSource *)self->_dataSource collectionView:viewCopy willDisplayCell:cellCopy forItemAtIndexPath:pathCopy];
  }
}

- (void)collectionView:(id)view didUnfocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = self->_dataSource;
  v12 = pathCopy;
  if (dataSource)
  {
    [(GKCollectionDataSource *)dataSource collectionView:view didUnfocusItemAtIndexPath:pathCopy];
  }

  else
  {
    _gkFocusingLayout = [view _gkFocusingLayout];
    v9 = _gkFocusingLayout;
    if (_gkFocusingLayout)
    {
      focusedIndexPath = [_gkFocusingLayout focusedIndexPath];
      v11 = [focusedIndexPath isEqual:v12];

      if (v11)
      {
        [v9 setFocusedIndexPath:0];
      }
    }
  }
}

- (void)collectionView:(id)view didFocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = self->_dataSource;
  v12 = pathCopy;
  if (dataSource)
  {
    [(GKCollectionDataSource *)dataSource collectionView:view didFocusItemAtIndexPath:pathCopy];
  }

  else
  {
    _gkFocusingLayout = [view _gkFocusingLayout];
    v9 = _gkFocusingLayout;
    if (_gkFocusingLayout)
    {
      focusedIndexPath = [_gkFocusingLayout focusedIndexPath];
      v11 = [focusedIndexPath isEqual:v12];

      if ((v11 & 1) == 0)
      {
        [v9 setFocusedIndexPath:v12];
      }
    }
  }
}

- (UIEdgeInsets)contentInsetsBeforeKeyboard
{
  top = self->_contentInsetsBeforeKeyboard.top;
  left = self->_contentInsetsBeforeKeyboard.left;
  bottom = self->_contentInsetsBeforeKeyboard.bottom;
  right = self->_contentInsetsBeforeKeyboard.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)scrollInsetsBeforeKeyboard
{
  top = self->_scrollInsetsBeforeKeyboard.top;
  left = self->_scrollInsetsBeforeKeyboard.left;
  bottom = self->_scrollInsetsBeforeKeyboard.bottom;
  right = self->_scrollInsetsBeforeKeyboard.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSLayoutConstraint)keyboardConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardConstraint);

  return WeakRetained;
}

- (UIView)keyboardAdjustedView
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardAdjustedView);

  return WeakRetained;
}

- (UIView)collectionContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionContainerView);

  return WeakRetained;
}

@end