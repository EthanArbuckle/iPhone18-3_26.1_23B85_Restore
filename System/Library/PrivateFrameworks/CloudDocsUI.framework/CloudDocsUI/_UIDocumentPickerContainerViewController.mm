@interface _UIDocumentPickerContainerViewController
+ (id)userDefaults;
- (CGPoint)contentOffset;
- (_UIDocumentPickerContainerViewController)initWithModel:(id)model;
- (_UIDocumentPickerServiceViewController)serviceViewController;
- (int)sortOrder;
- (int64_t)defaultDisplayMode;
- (int64_t)displayMode;
- (void)_sortOrderViewChanged:(id)changed;
- (void)_startSearchWithQueryString:(id)string becomeFirstResponder:(BOOL)responder;
- (void)_updateTraitCollection;
- (void)dealloc;
- (void)displayModeChanged;
- (void)ensureChildViewController;
- (void)invalidate;
- (void)setChildViewController:(id)controller animated:(BOOL)animated;
- (void)setContentOffset:(CGPoint)offset;
- (void)setDefaultDisplayMode:(int64_t)mode;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setExplicitDisplayMode:(int64_t)mode;
- (void)setServiceViewController:(id)controller;
- (void)setSortOrder:(int)order;
- (void)setupSearchController;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _UIDocumentPickerContainerViewController

- (_UIDocumentPickerContainerViewController)initWithModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = _UIDocumentPickerContainerViewController;
  v5 = [(_UIDocumentPickerContainerViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(_UIDocumentPickerContainerViewController *)v5 setModel:modelCopy];
    if ([modelCopy sortOrder] != 3)
    {
      [modelCopy setSortOrder:{-[_UIDocumentPickerContainerViewController sortOrder](v6, "sortOrder")}];
    }

    displayTitle = [modelCopy displayTitle];
    [(_UIDocumentPickerContainerViewController *)v6 setTitle:displayTitle];

    [(_UIDocumentPickerContainerViewController *)v6 setEdgesForExtendedLayout:0];
    v8 = objc_alloc_init(_UIDocumentPickerSortOrderView);
    sortView = v6->_sortView;
    v6->_sortView = v8;

    -[_UIDocumentPickerSortOrderView setValue:](v6->_sortView, "setValue:", [modelCopy sortOrder]);
    [(_UIDocumentPickerSortOrderView *)v6->_sortView setListMode:[(_UIDocumentPickerContainerViewController *)v6 displayMode]];
    [(_UIDocumentPickerSortOrderView *)v6->_sortView addTarget:v6 action:sel__sortOrderViewChanged_ forControlEvents:4096];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _UIDocumentPickerDisplayModeChangedHandler, @"_UIDocumentPickerDisplayModeChanged", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v6;
}

- (void)invalidate
{
  model = [(_UIDocumentPickerContainerViewController *)self model];
  [model stopMonitoringChanges];
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
  displayMode = [(_UIDocumentPickerContainerViewController *)self displayMode];
  childViewController = [(_UIDocumentPickerContainerViewController *)self childViewController];
  if (objc_opt_isKindOfClass())
  {
    childViewController2 = [(_UIDocumentPickerContainerViewController *)self childViewController];

    if (childViewController2)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v7 = self->_childViewController;
  v8 = [v3 alloc];
  model = [(_UIDocumentPickerContainerViewController *)self model];
  v10 = [v8 initWithModel:model];

  [v10 setDisplayMode:{-[_UIDocumentPickerContainerViewController displayMode](self, "displayMode")}];
  [(_UIDocumentPickerContainerViewController *)self setChildViewController:v10];
  if ([(_UIDocumentPickerContainedViewController *)v7 isEditing])
  {
    [(_UIDocumentPickerContainedViewController *)self->_childViewController setEditing:1];
    indexPathsForSelectedItems = [(_UIDocumentPickerContainedViewController *)v7 indexPathsForSelectedItems];
    [(_UIDocumentPickerContainedViewController *)self->_childViewController setIndexPathsForSelectedItems:indexPathsForSelectedItems];
  }

  if (displayMode != 3)
  {
    sortView = [(_UIDocumentPickerContainerViewController *)self sortView];
    [v10 setSortView:sortView];

    [(_UIDocumentPickerContainerViewController *)self setupSearchController];
  }

LABEL_10:
  displayMode2 = [(_UIDocumentPickerContainerViewController *)self displayMode];
  childViewController3 = [(_UIDocumentPickerContainerViewController *)self childViewController];
  [childViewController3 setDisplayMode:displayMode2];

  displayMode3 = [(_UIDocumentPickerContainerViewController *)self displayMode];
  sortView2 = [(_UIDocumentPickerContainerViewController *)self sortView];
  [sortView2 setListMode:displayMode3];
}

- (void)_updateTraitCollection
{
  v31[4] = *MEMORY[0x277D85DE8];
  view = [(_UIDocumentPickerContainerViewController *)self view];
  [view bounds];
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
    traitCollection = [(_UIDocumentPickerContainerViewController *)self traitCollection];
    v13 = [traitCollection userInterfaceIdiom] == 0;
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
  traitCollection2 = [(_UIDocumentPickerContainerViewController *)&v30 traitCollection];
  v31[0] = traitCollection2;
  v31[1] = v18;
  v31[2] = v21;
  v31[3] = v24;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  v28 = [v25 traitCollectionWithTraitsFromCollections:v27];

  parentViewController = [(_UIDocumentPickerContainerViewController *)self parentViewController];
  [parentViewController setOverrideTraitCollection:v28 forChildViewController:self];
}

- (void)setupSearchController
{
  if (self->_resultsController)
  {
    v3 = [_UIDocumentPickerSearchPaletteView alloc];
    view = [(_UIDocumentPickerContainerViewController *)self view];
    [view bounds];
    v5 = [(_UIDocumentPickerSearchPaletteView *)v3 initWithFrame:self->_resultsController resultsController:0.0, 0.0];
    searchView = self->_searchView;
    self->_searchView = v5;

    [(_UIDocumentPickerSearchPaletteView *)self->_searchView setAutoresizingMask:18];
    childViewController = self->_childViewController;
    searchController = [(_UIDocumentPickerSearchPaletteView *)self->_searchView searchController];
    [searchController setDelegate:childViewController];

    [(_UIDocumentPickerContainedViewController *)self->_childViewController setPinnedHeaderView:self->_searchView animated:0];
    searchController2 = [(_UIDocumentPickerSearchPaletteView *)self->_searchView searchController];
    searchBar = [searchController2 searchBar];
    [searchBar _setEnabled:-[_UIDocumentPickerContainerViewController isEditing](self animated:{"isEditing") ^ 1, 0}];
  }

  else
  {
    v10 = self->_searchView;
    self->_searchView = 0;

    v11 = self->_childViewController;

    [(_UIDocumentPickerContainedViewController *)v11 setPinnedHeaderView:0 animated:0];
  }
}

- (void)_startSearchWithQueryString:(id)string becomeFirstResponder:(BOOL)responder
{
  responderCopy = responder;
  stringCopy = string;
  searchController = [(_UIDocumentPickerSearchPaletteView *)self->_searchView searchController];
  searchBar = [searchController searchBar];
  v9 = searchBar;
  if (responderCopy)
  {
    [searchBar becomeFirstResponder];
  }

  else
  {
    [searchController setActive:1];
  }

  v10 = *MEMORY[0x277D76620];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93___UIDocumentPickerContainerViewController__startSearchWithQueryString_becomeFirstResponder___block_invoke;
  v13[3] = &unk_278DD6200;
  v14 = v9;
  v15 = stringCopy;
  v11 = stringCopy;
  v12 = v9;
  [v10 _performBlockAfterCATransactionCommits:v13];
}

- (void)setChildViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [controllerCopy beginAppearanceTransition:1 animated:animatedCopy];
  view = [controllerCopy view];
  view2 = [(_UIDocumentPickerContainerViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [(_UIDocumentPickerContainerViewController *)self addChildViewController:controllerCopy];
  view3 = [controllerCopy view];
  [view3 setAutoresizingMask:18];

  serviceViewController = [(_UIDocumentPickerContainerViewController *)self serviceViewController];
  [controllerCopy setServiceViewController:serviceViewController];

  view4 = [(_UIDocumentPickerContainerViewController *)self view];
  view5 = [controllerCopy view];
  [view4 addSubview:view5];

  v13 = self->_childViewController;
  v14 = MEMORY[0x277D75D18];
  view6 = [(_UIDocumentPickerContainedViewController *)self->_childViewController view];
  view7 = [controllerCopy view];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76___UIDocumentPickerContainerViewController_setChildViewController_animated___block_invoke;
  v21[3] = &unk_278DD6AD8;
  v17 = controllerCopy;
  v22 = v17;
  selfCopy = self;
  v24 = v13;
  v18 = v13;
  [v14 transitionFromView:view6 toView:view7 duration:5242880 options:v21 completion:0.3];

  childViewController = self->_childViewController;
  self->_childViewController = v17;
  v20 = v17;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerContainerViewController;
  [(_UIDocumentPickerContainerViewController *)&v5 viewWillAppear:appear];
  [(_UIDocumentPickerContainerViewController *)self setDefinesPresentationContext:1];
  serviceViewController = [(_UIDocumentPickerContainerViewController *)self serviceViewController];

  if (serviceViewController)
  {
    [(_UIDocumentPickerContainerViewController *)self ensureChildViewController];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerContainerViewController;
  [(_UIDocumentPickerContainerViewController *)&v4 viewWillDisappear:disappear];
  [(_UIDocumentPickerContainerViewController *)self setDefinesPresentationContext:0];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerContainerViewController;
  [(_UIDocumentPickerContainerViewController *)&v3 viewDidLayoutSubviews];
  [(_UIDocumentPickerContainerViewController *)self _updateTraitCollection];
}

- (void)_sortOrderViewChanged:(id)changed
{
  changedCopy = changed;
  value = [changedCopy value];
  if (value == [(_UIDocumentPickerContainerViewController *)self sortOrder])
  {
    -[_UIDocumentPickerContainerViewController setDefaultDisplayMode:](self, "setDefaultDisplayMode:", [changedCopy listMode]);
    [(_UIDocumentPickerContainerViewController *)self displayModeChanged];
    [(_UIDocumentPickerContainedViewController *)self->_childViewController scrollSortViewToVisible];
  }

  else
  {
    -[_UIDocumentPickerContainerViewController setSortOrder:](self, "setSortOrder:", [changedCopy value]);
    value2 = [changedCopy value];
    model = [(_UIDocumentPickerContainerViewController *)self model];
    [model setSortOrder:value2];
  }
}

- (void)setServiceViewController:(id)controller
{
  obj = controller;
  serviceViewController = [(_UIDocumentPickerContainerViewController *)self serviceViewController];

  v5 = obj;
  if (serviceViewController != obj)
  {
    objc_storeWeak(&self->_serviceViewController, obj);
    v5 = obj;
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  [_UIDocumentPickerContainedViewController setEditing:"setEditing:animated:" animated:?];
  searchView = [(_UIDocumentPickerContainerViewController *)self searchView];
  searchController = [searchView searchController];
  searchBar = [searchController searchBar];
  [searchBar _setEnabled:!editingCopy animated:animatedCopy];
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  scrollView = [(_UIDocumentPickerContainedViewController *)self->_childViewController scrollView];
  [scrollView setContentOffset:{x, y}];
}

- (CGPoint)contentOffset
{
  scrollView = [(_UIDocumentPickerContainedViewController *)self->_childViewController scrollView];
  [scrollView contentOffset];
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

- (void)setSortOrder:(int)order
{
  v3 = *&order;
  v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UIKit"];
  v4 = [v10 objectForKey:@"_UIDocumentPickerSettings"];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    dictionary = v5;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = dictionary;

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
    dictionary = v4;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = dictionary;

  v8 = [v7 objectForKey:@"sortOrder"];
  intValue = [v8 intValue];

  return intValue;
}

- (void)setDefaultDisplayMode:(int64_t)mode
{
  v11 = +[_UIDocumentPickerContainerViewController userDefaults];
  v4 = [v11 objectForKey:@"_UIDocumentPickerSettings"];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    dictionary = v5;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = dictionary;

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
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
    dictionary = v4;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = dictionary;

  v8 = [v7 objectForKey:@"listMode"];
  intValue = [v8 intValue];

  if (intValue <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = intValue;
  }

  v11 = v10;

  return v11;
}

- (void)setExplicitDisplayMode:(int64_t)mode
{
  self->_explicitDisplayMode = mode;
  v3 = mode != 0;
  sortView = [(_UIDocumentPickerContainerViewController *)self sortView];
  [sortView setListModeToggleHidden:v3];
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