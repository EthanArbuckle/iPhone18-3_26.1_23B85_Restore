@interface GKDashboardCollectionViewController
- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)isLoading;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (GKDashboardCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSLayoutConstraint)keyboardConstraint;
- (UIEdgeInsets)contentInsetsBeforeKeyboard;
- (UIEdgeInsets)scrollInsetsBeforeKeyboard;
- (UIView)collectionContainerView;
- (UIView)keyboardAdjustedView;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)horizontalCollectionViewLayout;
- (id)preferredFocusEnvironments;
- (id)verticalCollectionViewLayout;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)clearSelectionForCollectionView:(id)a3;
- (void)collectionView:(id)a3 didFocusItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnfocusItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)createCollectionViewInsideView:(id)a3;
- (void)dataUpdated:(BOOL)a3 withError:(id)a4;
- (void)dealloc;
- (void)didEnterLoadingState;
- (void)hideNoContentPlaceholder;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadData;
- (void)loadView;
- (void)popoverDidClose:(id)a3;
- (void)prepareForAutomaticTwoColumnLayout;
- (void)setAutoWidthColumns:(int64_t)a3;
- (void)setDataSource:(id)a3;
- (void)setNeedsRefresh;
- (void)setToHorizontalLayout:(BOOL)a3;
- (void)setupDataSource;
- (void)setupNoContentView:(id)a3 withError:(id)a4;
- (void)setupVisualEffect;
- (void)showNoContentPlaceholderForError:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)windowDidEndSheet:(id)a3;
@end

@implementation GKDashboardCollectionViewController

- (GKDashboardCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = GKDashboardCollectionViewController;
  v4 = [(GKLoadingViewController *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v4 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v4 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v4 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(UICollectionView *)self->_collectionView setDelegate:0];
  v4.receiver = self;
  v4.super_class = GKDashboardCollectionViewController;
  [(GKDashboardCollectionViewController *)&v4 dealloc];
}

- (void)setToHorizontalLayout:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKDashboardCollectionViewController *)self view];
  if (v3)
  {
    [(GKDashboardCollectionViewController *)self horizontalCollectionViewLayout];
  }

  else
  {
    [(GKDashboardCollectionViewController *)self verticalCollectionViewLayout];
  }
  v6 = ;
  [(UICollectionView *)self->_collectionView setCollectionViewLayout:v6];

  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:v3 ^ 1];
  [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:v3];
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
  v3 = [(GKDashboardCollectionViewController *)self nibName];

  if (v3)
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
      v7 = [(UICollectionView *)collectionView collectionViewLayout];

      if (!v7)
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

- (void)createCollectionViewInsideView:(id)a3
{
  v4 = a3;
  v9 = objc_alloc_init(GKCollectionGridLayout);
  v5 = objc_alloc(MEMORY[0x277D752A0]);
  v6 = [v5 initWithFrame:v9 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(GKDashboardCollectionViewController *)self setCollectionView:v6];

  v7 = [MEMORY[0x277D75348] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v7];

  [(UICollectionView *)self->_collectionView setOpaque:0];
  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:1];
  [v4 addSubview:self->_collectionView];
  v8 = [MEMORY[0x277CCAAD0] _gkConstraintsForView:self->_collectionView withinView:v4 insets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v4 addConstraints:v8];
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

  v6 = [(GKDashboardCollectionViewController *)self collectionView];
  [(GKDashboardCollectionViewController *)self setContentScrollView:v6 forEdge:15];

  [(GKDashboardCollectionViewController *)self prepareForAutomaticTwoColumnLayout];
  [(GKDashboardCollectionViewController *)self setupVisualEffect];
}

- (void)setupVisualEffect
{
  v7 = objc_opt_new();
  v3 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
  [v7 setBackgroundEffects:v3];

  [v7 _setGroupName:@"gameLayerGroup"];
  v4 = [(GKDashboardCollectionViewController *)self view];
  [v4 insertSubview:v7 atIndex:0];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = MEMORY[0x277CCAAD0];
  v6 = [(GKDashboardCollectionViewController *)self view];
  [v5 _gkInstallEdgeConstraintsForView:v7 containedWithinParentView:v6];
}

- (void)prepareForAutomaticTwoColumnLayout
{
  if (self->_autoWidthUsesTwoColumnsWhenSpace)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v7 = [(GKDashboardCollectionViewController *)self traitCollection];
      if ([v7 verticalSizeClass] == 1)
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
    v3 = collectionView;
LABEL_4:
    v6[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

    goto LABEL_5;
  }

  v3 = [(GKDashboardCollectionViewController *)self view];
  if (v3)
  {
    goto LABEL_4;
  }

  v4 = MEMORY[0x277CBEBF8];
LABEL_5:

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKDashboardCollectionViewController;
  [(GKDashboardCollectionViewController *)&v4 traitCollectionDidChange:a3];
  [(GKDashboardCollectionViewController *)self prepareForAutomaticTwoColumnLayout];
}

- (void)setDataSource:(id)a3
{
  v5 = a3;
  dataSource = self->_dataSource;
  if (dataSource != v5)
  {
    v7 = v5;
    [(GKCollectionDataSource *)dataSource setPresentationViewController:0];
    objc_storeStrong(&self->_dataSource, a3);
    dataSource = [(GKDashboardCollectionViewController *)self setupDataSource];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](dataSource, v5);
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = GKDashboardCollectionViewController;
  [(GKDashboardCollectionViewController *)&v5 viewWillAppear:a3];
  v4 = [(GKLoadingViewController *)self loadingState];
  if (v4 == @"Initial")
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadingState"];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = GKDashboardCollectionViewController;
  [(GKDashboardCollectionViewController *)&v5 viewDidAppear:a3];
  v4 = [(GKLoadingViewController *)self loadingState];
  if (v4 == @"Initial")
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadingState"];
  }

  [(GKDashboardCollectionViewController *)self clearSelection];
  [(GKDashboardCollectionViewController *)self setNeedsFocusUpdate];
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  if (![(GKDashboardCollectionViewController *)self isLoading])
  {
    v4 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, -[UICollectionView numberOfSections](self->_collectionView, "numberOfSections")}];
    [(UICollectionView *)self->_collectionView reloadSections:v4];
  }
}

- (void)setAutoWidthColumns:(int64_t)a3
{
  v5 = [(GKDashboardCollectionViewController *)self view];
  v6 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setAutoWidthColumns:a3];
  }
}

- (BOOL)isLoading
{
  v2 = [(GKLoadingViewController *)self loadingState];
  v3 = 1;
  if (v2)
  {
    if (v2 != @"Initial" && v2 != @"LoadingState")
    {
      v3 = v2 == @"RefreshingState";
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

- (void)dataUpdated:(BOOL)a3 withError:(id)a4
{
  v4 = a3;
  v8 = a4;
  if ([(GKDashboardCollectionViewController *)self hasData])
  {
    [(GKLoadingViewController *)self setLoadingState:@"LoadedState"];
    [(GKDashboardCollectionViewController *)self hideNoContentPlaceholder];
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [(GKLoadingViewController *)self setLoadingState:@"NoContentState"];
    [(GKDashboardCollectionViewController *)self showNoContentPlaceholderForError:v8];
    if (!v4)
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
  v7 = [(GKDashboardCollectionViewController *)self navigationController];
  [v7 setNeedsFocusUpdate];

LABEL_10:
}

- (void)showNoContentPlaceholderForError:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v9 = [(UICollectionView *)self->_collectionView superview];
      [v9 insertSubview:self->_noContentView aboveSubview:self->_collectionView];
      v10 = [MEMORY[0x277CCAAD0] _gkConstraintsForView:self->_noContentView withinView:self->_collectionView insets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
      [v9 addConstraints:v10];

      v11 = self->_noContentView;
      v13[0] = self->_collectionView;
      v13[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
      [(GKLoadingViewController *)self setViewsToHideWhileLoading:v12];

      noContentView = self->_noContentView;
    }

    [(GKDashboardCollectionViewController *)self setupNoContentView:noContentView withError:v4];
    [(GKNoContentView *)self->_noContentView setHidden:0];
  }
}

- (void)hideNoContentPlaceholder
{
  [(GKNoContentView *)self->_noContentView setHidden:1];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView setHidden:0];
}

- (void)setupNoContentView:(id)a3 withError:(id)a4
{
  v9 = a3;
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();
  [v9 setTitle:v6];

  if (a4)
  {
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    [v9 setMessage:v8];
  }

  else
  {
    [v9 setMessage:0];
  }
}

- (void)clearSelectionForCollectionView:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 indexPathsForSelectedItems];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 deselectItemAtIndexPath:*(*(&v9 + 1) + 8 * v8++) animated:1];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)popoverDidClose:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v7 = [v5 name];

  [v6 removeObserver:self name:v7 object:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__GKDashboardCollectionViewController_popoverDidClose___block_invoke;
  block[3] = &unk_2796699A8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)windowDidEndSheet:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v7 = [v5 name];

  [v6 removeObserver:self name:v7 object:0];

  [(GKDashboardCollectionViewController *)self clearSelection];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = a3;
  v5 = [(GKDashboardCollectionViewController *)self view];
  v6 = [v5 window];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_keyboardConstraint);
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = [(GKDashboardCollectionViewController *)self popoverPresentationController];
      if (v9)
      {
      }

      else
      {
        v10 = [(GKDashboardCollectionViewController *)self navigationController];
        v11 = [v10 popoverPresentationController];

        if (v11)
        {
          goto LABEL_7;
        }

        v8 = [v4 userInfo];
        v12 = [v8 objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
        [v12 CGRectValue];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;

        [v6 convertRect:0 fromWindow:{v14, v16, v18, v20}];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        if (*MEMORY[0x277D0C258] == 1)
        {
          v29 = [MEMORY[0x277D75418] currentDevice];
          v30 = [v29 userInterfaceIdiom];

          if (v30 == 1 && v24 == v16)
          {
            v31 = [v6 screen];
            [v31 bounds];
            v33 = v32;
            [v31 bounds];
            if (v33 <= v34)
            {
              [v31 bounds];
              v40 = v39;
              [v6 bounds];
              v38 = (v40 + v41) * 0.5;
            }

            else
            {
              [v6 bounds];
              v36 = v35;
              v37 = [MEMORY[0x277D75128] sharedApplication];
              if ([v37 isStatusBarHidden])
              {
                v38 = v36 + 0.0;
              }

              else
              {
                v42 = [MEMORY[0x277D75128] sharedApplication];
                [v42 statusBarHeight];
                v38 = v36 + v43;
              }
            }

            [v6 bounds];
            v24 = v44 - (v38 - v16);
          }
        }

        [v5 convertRect:0 fromView:{v22, v24, v26, v28}];
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
          v55 = v5;
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

        v60 = [v8 objectForKeyedSubscript:*MEMORY[0x277D76B78]];
        [v60 doubleValue];
        v62 = v61;

        v63 = MEMORY[0x277D75D18];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __56__GKDashboardCollectionViewController_keyboardWillShow___block_invoke;
        v64[3] = &unk_27966A7D0;
        v64[4] = self;
        v66 = v59;
        v65 = v5;
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

- (void)keyboardWillHide:(id)a3
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

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    return [(GKCollectionDataSource *)dataSource numberOfSectionsInCollectionView:a3];
  }

  else
  {
    return 1;
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  result = self->_dataSource;
  if (result)
  {
    return [result collectionView:a3 numberOfItemsInSection:a4];
  }

  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    v5 = [(GKCollectionDataSource *)dataSource collectionView:a3 cellForItemAtIndexPath:a4];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No datasource. Subclass needs to override collectionView:cellForItemAtIndexPath:", a4];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardCollectionViewController.m"];
    v9 = [v8 lastPathComponent];
    v10 = [v6 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v7, "-[GKDashboardCollectionViewController collectionView:cellForItemAtIndexPath:]", objc_msgSend(v9, "UTF8String"), 555];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v10}];
    v5 = 0;
  }

  return v5;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    v6 = [(GKCollectionDataSource *)dataSource collectionView:a3 viewForSupplementaryElementOfKind:a4 atIndexPath:a5];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"No datasource. Subclass needs to override collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a4, a5];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardCollectionViewController.m"];
    v10 = [v9 lastPathComponent];
    v11 = [v7 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v8, "-[GKDashboardCollectionViewController collectionView:viewForSupplementaryElementOfKind:atIndexPath:]", objc_msgSend(v10, "UTF8String"), 567];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
    v6 = 0;
  }

  return v6;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    [(GKCollectionDataSource *)self->_dataSource collectionView:v8 layout:v9 sizeForItemAtIndexPath:v10];
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

    [v9 itemSize];
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(GKCollectionDataSource *)self->_dataSource collectionView:v8 layout:v9 referenceSizeForHeaderInSection:a5];
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

    [v9 headerReferenceSize];
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(GKCollectionDataSource *)self->_dataSource collectionView:v8 layout:v9 referenceSizeForFooterInSection:a5];
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

    [v9 footerReferenceSize];
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

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(GKCollectionDataSource *)self->_dataSource collectionView:v6 shouldSelectItemAtIndexPath:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(GKCollectionDataSource *)self->_dataSource collectionView:v6 shouldDeselectItemAtIndexPath:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (objc_opt_respondsToSelector())
  {
    [(GKCollectionDataSource *)self->_dataSource collectionView:v10 willDisplayCell:v8 forItemAtIndexPath:v9];
  }
}

- (void)collectionView:(id)a3 didUnfocusItemAtIndexPath:(id)a4
{
  v6 = a4;
  dataSource = self->_dataSource;
  v12 = v6;
  if (dataSource)
  {
    [(GKCollectionDataSource *)dataSource collectionView:a3 didUnfocusItemAtIndexPath:v6];
  }

  else
  {
    v8 = [a3 _gkFocusingLayout];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 focusedIndexPath];
      v11 = [v10 isEqual:v12];

      if (v11)
      {
        [v9 setFocusedIndexPath:0];
      }
    }
  }
}

- (void)collectionView:(id)a3 didFocusItemAtIndexPath:(id)a4
{
  v6 = a4;
  dataSource = self->_dataSource;
  v12 = v6;
  if (dataSource)
  {
    [(GKCollectionDataSource *)dataSource collectionView:a3 didFocusItemAtIndexPath:v6];
  }

  else
  {
    v8 = [a3 _gkFocusingLayout];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 focusedIndexPath];
      v11 = [v10 isEqual:v12];

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