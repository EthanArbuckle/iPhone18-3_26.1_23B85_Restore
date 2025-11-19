@interface _UIDocumentPickerContainerViewController
+ (id)userDefaults;
- (CGPoint)contentOffset;
- (_UIDocumentPickerContainerViewController)initWithModel:(id)a3;
- (_UIDocumentPickerServiceViewController)serviceViewController;
- (int)sortOrder;
- (int64_t)defaultDisplayMode;
- (int64_t)displayMode;
- (void)_sortOrderViewChanged:(id)a3;
- (void)_startSearchWithQueryString:(id)a3 becomeFirstResponder:(BOOL)a4;
- (void)_updateTraitCollection;
- (void)dealloc;
- (void)displayModeChanged;
- (void)ensureChildViewController;
- (void)invalidate;
- (void)setChildViewController:(id)a3 animated:(BOOL)a4;
- (void)setContentOffset:(CGPoint)a3;
- (void)setDefaultDisplayMode:(int64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setExplicitDisplayMode:(int64_t)a3;
- (void)setServiceViewController:(id)a3;
- (void)setSortOrder:(int)a3;
- (void)setupSearchController;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _UIDocumentPickerContainerViewController

- (_UIDocumentPickerContainerViewController)initWithModel:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIDocumentPickerContainerViewController;
  v5 = [(_UIDocumentPickerContainerViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(_UIDocumentPickerContainerViewController *)v5 setModel:v4];
    if ([v4 sortOrder] != 3)
    {
      [v4 setSortOrder:{-[_UIDocumentPickerContainerViewController sortOrder](v6, "sortOrder")}];
    }

    v7 = [v4 displayTitle];
    [(_UIDocumentPickerContainerViewController *)v6 setTitle:v7];

    [(_UIDocumentPickerContainerViewController *)v6 setEdgesForExtendedLayout:0];
    v8 = objc_alloc_init(_UIDocumentPickerSortOrderView);
    sortView = v6->_sortView;
    v6->_sortView = v8;

    -[_UIDocumentPickerSortOrderView setValue:](v6->_sortView, "setValue:", [v4 sortOrder]);
    [(_UIDocumentPickerSortOrderView *)v6->_sortView setListMode:[(_UIDocumentPickerContainerViewController *)v6 displayMode]];
    [(_UIDocumentPickerSortOrderView *)v6->_sortView addTarget:v6 action:sel__sortOrderViewChanged_ forControlEvents:4096];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _UIDocumentPickerDisplayModeChangedHandler, @"_UIDocumentPickerDisplayModeChanged", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v6;
}

- (void)invalidate
{
  v2 = [(_UIDocumentPickerContainerViewController *)self model];
  [v2 stopMonitoringChanges];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"_UIDocumentPickerDisplayModeChanged", 0);
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerContainerViewController;
  [(_UIDocumentPickerContainerViewController *)&v4 dealloc];
}

- (void)displayModeChanged
{
  [(_UIDocumentPickerContainerViewController *)self ensureChildViewController];

  [(_UIDocumentPickerContainerViewController *)self _updateTraitCollection];
}

- (void)ensureChildViewController
{
  v3 = objc_opt_class();
  v4 = [(_UIDocumentPickerContainerViewController *)self displayMode];
  v5 = [(_UIDocumentPickerContainerViewController *)self childViewController];
  if (objc_opt_isKindOfClass())
  {
    v6 = [(_UIDocumentPickerContainerViewController *)self childViewController];

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v7 = self->_childViewController;
  v8 = [v3 alloc];
  v9 = [(_UIDocumentPickerContainerViewController *)self model];
  v10 = [v8 initWithModel:v9];

  [v10 setDisplayMode:{-[_UIDocumentPickerContainerViewController displayMode](self, "displayMode")}];
  [(_UIDocumentPickerContainerViewController *)self setChildViewController:v10];
  if ([(_UIDocumentPickerContainedViewController *)v7 isEditing])
  {
    [(_UIDocumentPickerContainedViewController *)self->_childViewController setEditing:1];
    v11 = [(_UIDocumentPickerContainedViewController *)v7 indexPathsForSelectedItems];
    [(_UIDocumentPickerContainedViewController *)self->_childViewController setIndexPathsForSelectedItems:v11];
  }

  if (v4 != 3)
  {
    v12 = [(_UIDocumentPickerContainerViewController *)self sortView];
    [v10 setSortView:v12];

    [(_UIDocumentPickerContainerViewController *)self setupSearchController];
  }

LABEL_10:
  v13 = [(_UIDocumentPickerContainerViewController *)self displayMode];
  v14 = [(_UIDocumentPickerContainerViewController *)self childViewController];
  [v14 setDisplayMode:v13];

  v15 = [(_UIDocumentPickerContainerViewController *)self displayMode];
  v16 = [(_UIDocumentPickerContainerViewController *)self sortView];
  [v16 setListMode:v15];
}

- (void)_updateTraitCollection
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = [(_UIDocumentPickerContainerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  Height = CGRectGetHeight(v32);
  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  if (CGRectGetWidth(v33) >= 500.0 && (v34.origin.x = v5, v34.origin.y = v7, v34.size.width = v9, v34.size.height = v11, CGRectGetHeight(v34) >= 500.0))
  {
    v14 = [(_UIDocumentPickerContainerViewController *)self traitCollection];
    v13 = [v14 userInterfaceIdiom] == 0;
  }

  else
  {
    v13 = 1;
  }

  v15 = [(_UIDocumentPickerContainerViewController *)self displayMode]!= 1;
  v16 = MEMORY[0x277D75C80];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:Height <= 130.0];
  v18 = [v16 _traitCollectionWithValue:v17 forTraitNamed:@"TightMargins"];

  v19 = MEMORY[0x277D75C80];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v21 = [v19 _traitCollectionWithValue:v20 forTraitNamed:@"CompactIcons"];

  v22 = MEMORY[0x277D75C80];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:v15];
  v24 = [v22 _traitCollectionWithValue:v23 forTraitNamed:@"ListMode"];

  v25 = MEMORY[0x277D75C80];
  v30.receiver = self;
  v30.super_class = _UIDocumentPickerContainerViewController;
  v26 = [(_UIDocumentPickerContainerViewController *)&v30 traitCollection];
  v31[0] = v26;
  v31[1] = v18;
  v31[2] = v21;
  v31[3] = v24;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  v28 = [v25 traitCollectionWithTraitsFromCollections:v27];

  v29 = [(_UIDocumentPickerContainerViewController *)self parentViewController];
  [v29 setOverrideTraitCollection:v28 forChildViewController:self];
}

- (void)setupSearchController
{
  if (self->_resultsController)
  {
    v3 = [_UIDocumentPickerSearchPaletteView alloc];
    v4 = [(_UIDocumentPickerContainerViewController *)self view];
    [v4 bounds];
    v5 = [(_UIDocumentPickerSearchPaletteView *)v3 initWithFrame:self->_resultsController resultsController:0.0, 0.0];
    searchView = self->_searchView;
    self->_searchView = v5;

    [(_UIDocumentPickerSearchPaletteView *)self->_searchView setAutoresizingMask:18];
    childViewController = self->_childViewController;
    v8 = [(_UIDocumentPickerSearchPaletteView *)self->_searchView searchController];
    [v8 setDelegate:childViewController];

    [(_UIDocumentPickerContainedViewController *)self->_childViewController setPinnedHeaderView:self->_searchView animated:0];
    v12 = [(_UIDocumentPickerSearchPaletteView *)self->_searchView searchController];
    v9 = [v12 searchBar];
    [v9 _setEnabled:-[_UIDocumentPickerContainerViewController isEditing](self animated:{"isEditing") ^ 1, 0}];
  }

  else
  {
    v10 = self->_searchView;
    self->_searchView = 0;

    v11 = self->_childViewController;

    [(_UIDocumentPickerContainedViewController *)v11 setPinnedHeaderView:0 animated:0];
  }
}

- (void)_startSearchWithQueryString:(id)a3 becomeFirstResponder:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_UIDocumentPickerSearchPaletteView *)self->_searchView searchController];
  v8 = [v7 searchBar];
  v9 = v8;
  if (v4)
  {
    [v8 becomeFirstResponder];
  }

  else
  {
    [v7 setActive:1];
  }

  v10 = *MEMORY[0x277D76620];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93___UIDocumentPickerContainerViewController__startSearchWithQueryString_becomeFirstResponder___block_invoke;
  v13[3] = &unk_278DD6200;
  v14 = v9;
  v15 = v6;
  v11 = v6;
  v12 = v9;
  [v10 _performBlockAfterCATransactionCommits:v13];
}

- (void)setChildViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 beginAppearanceTransition:1 animated:v4];
  v7 = [v6 view];
  v8 = [(_UIDocumentPickerContainerViewController *)self view];
  [v8 bounds];
  [v7 setFrame:?];

  [(_UIDocumentPickerContainerViewController *)self addChildViewController:v6];
  v9 = [v6 view];
  [v9 setAutoresizingMask:18];

  v10 = [(_UIDocumentPickerContainerViewController *)self serviceViewController];
  [v6 setServiceViewController:v10];

  v11 = [(_UIDocumentPickerContainerViewController *)self view];
  v12 = [v6 view];
  [v11 addSubview:v12];

  v13 = self->_childViewController;
  v14 = MEMORY[0x277D75D18];
  v15 = [(_UIDocumentPickerContainedViewController *)self->_childViewController view];
  v16 = [v6 view];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76___UIDocumentPickerContainerViewController_setChildViewController_animated___block_invoke;
  v21[3] = &unk_278DD6AD8;
  v17 = v6;
  v22 = v17;
  v23 = self;
  v24 = v13;
  v18 = v13;
  [v14 transitionFromView:v15 toView:v16 duration:5242880 options:v21 completion:0.3];

  childViewController = self->_childViewController;
  self->_childViewController = v17;
  v20 = v17;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerContainerViewController;
  [(_UIDocumentPickerContainerViewController *)&v5 viewWillAppear:a3];
  [(_UIDocumentPickerContainerViewController *)self setDefinesPresentationContext:1];
  v4 = [(_UIDocumentPickerContainerViewController *)self serviceViewController];

  if (v4)
  {
    [(_UIDocumentPickerContainerViewController *)self ensureChildViewController];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerContainerViewController;
  [(_UIDocumentPickerContainerViewController *)&v4 viewWillDisappear:a3];
  [(_UIDocumentPickerContainerViewController *)self setDefinesPresentationContext:0];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerContainerViewController;
  [(_UIDocumentPickerContainerViewController *)&v3 viewDidLayoutSubviews];
  [(_UIDocumentPickerContainerViewController *)self _updateTraitCollection];
}

- (void)_sortOrderViewChanged:(id)a3
{
  v7 = a3;
  v4 = [v7 value];
  if (v4 == [(_UIDocumentPickerContainerViewController *)self sortOrder])
  {
    -[_UIDocumentPickerContainerViewController setDefaultDisplayMode:](self, "setDefaultDisplayMode:", [v7 listMode]);
    [(_UIDocumentPickerContainerViewController *)self displayModeChanged];
    [(_UIDocumentPickerContainedViewController *)self->_childViewController scrollSortViewToVisible];
  }

  else
  {
    -[_UIDocumentPickerContainerViewController setSortOrder:](self, "setSortOrder:", [v7 value]);
    v5 = [v7 value];
    v6 = [(_UIDocumentPickerContainerViewController *)self model];
    [v6 setSortOrder:v5];
  }
}

- (void)setServiceViewController:(id)a3
{
  obj = a3;
  v4 = [(_UIDocumentPickerContainerViewController *)self serviceViewController];

  v5 = obj;
  if (v4 != obj)
  {
    objc_storeWeak(&self->_serviceViewController, obj);
    v5 = obj;
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [_UIDocumentPickerContainedViewController setEditing:"setEditing:animated:" animated:?];
  v9 = [(_UIDocumentPickerContainerViewController *)self searchView];
  v7 = [v9 searchController];
  v8 = [v7 searchBar];
  [v8 _setEnabled:!v5 animated:v4];
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_UIDocumentPickerContainedViewController *)self->_childViewController scrollView];
  [v5 setContentOffset:{x, y}];
}

- (CGPoint)contentOffset
{
  v2 = [(_UIDocumentPickerContainedViewController *)self->_childViewController scrollView];
  [v2 contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

+ (id)userDefaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UIKit"];

  return v2;
}

- (void)setSortOrder:(int)a3
{
  v3 = *&a3;
  v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UIKit"];
  v4 = [v10 objectForKey:@"_UIDocumentPickerSettings"];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [v8 setObject:v9 forKey:@"sortOrder"];

  [v10 setObject:v8 forKey:@"_UIDocumentPickerSettings"];
}

- (int)sortOrder
{
  v2 = +[_UIDocumentPickerContainerViewController userDefaults];
  v3 = [v2 objectForKey:@"_UIDocumentPickerSettings"];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = v6;

  v8 = [v7 objectForKey:@"sortOrder"];
  v9 = [v8 intValue];

  return v9;
}

- (void)setDefaultDisplayMode:(int64_t)a3
{
  v11 = +[_UIDocumentPickerContainerViewController userDefaults];
  v4 = [v11 objectForKey:@"_UIDocumentPickerSettings"];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v8 setObject:v9 forKey:@"listMode"];

  [v11 setObject:v8 forKey:@"_UIDocumentPickerSettings"];
  [v11 synchronize];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_UIDocumentPickerDisplayModeChanged", 0, 0, 1u);
}

- (int64_t)defaultDisplayMode
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UIKit"];
  v3 = [v2 objectForKey:@"_UIDocumentPickerSettings"];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = v6;

  v8 = [v7 objectForKey:@"listMode"];
  v9 = [v8 intValue];

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v11;
}

- (void)setExplicitDisplayMode:(int64_t)a3
{
  self->_explicitDisplayMode = a3;
  v3 = a3 != 0;
  v4 = [(_UIDocumentPickerContainerViewController *)self sortView];
  [v4 setListModeToggleHidden:v3];
}

- (int64_t)displayMode
{
  if (self->_explicitDisplayMode)
  {
    return self->_explicitDisplayMode;
  }

  else
  {
    return [(_UIDocumentPickerContainerViewController *)self defaultDisplayMode];
  }
}

- (_UIDocumentPickerServiceViewController)serviceViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceViewController);

  return WeakRetained;
}

@end