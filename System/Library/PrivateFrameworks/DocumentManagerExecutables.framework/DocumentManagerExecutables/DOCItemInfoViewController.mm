@interface DOCItemInfoViewController
+ (CGSize)ensureNonZeroPreferredSize:(CGSize)size traits:(id)traits;
- (DOCItemInfoViewController)initWithNodes:(id)nodes configuration:(id)configuration actionReporting:(id)reporting;
- (void)_updateNavigationBarVisibilityAnimated:(BOOL)animated;
- (void)_updatePreferredContentSizeForFirstAppearance;
- (void)displayAddTagsViewWithItems:(id)items;
- (void)displayTagView;
- (void)doc_startPreheatIfNecessary;
- (void)forceUpdatePreferredContentSize;
- (void)setIsInfoInPopoverMode:(BOOL)mode;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container;
- (void)tagsCollectionItem:(id)item didDeleteTag:(id)tag;
- (void)tagsCollectionView:(id)view didSelectAddTagButton:(id)button;
- (void)updatePreferredContentSize;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DOCItemInfoViewController

- (DOCItemInfoViewController)initWithNodes:(id)nodes configuration:(id)configuration actionReporting:(id)reporting
{
  nodesCopy = nodes;
  configurationCopy = configuration;
  reportingCopy = reporting;
  v24.receiver = self;
  v24.super_class = DOCItemInfoViewController;
  v12 = [(DOCItemInfoViewController *)&v24 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_nodes, nodes);
    if ([nodesCopy count] == 1)
    {
      firstObject = [nodesCopy firstObject];
      if (firstObject && [DOCItemInfoContentViewController itemTapDrillsIntoNode:firstObject])
      {
        v15 = [reportingCopy isBrowserCurrentLocation:firstObject] ^ 1;
LABEL_8:
        objc_storeWeak(&v13->_actionReporting, reportingCopy);
        v16 = [[DOCItemInfoContentViewController alloc] initWithConfiguration:configurationCopy nodes:nodesCopy allowOpenButton:v15 documentManager:0 actionManager:0 actionDelegate:0];
        contentViewController = v13->_contentViewController;
        v13->_contentViewController = v16;

        WeakRetained = objc_loadWeakRetained(&v13->_actionReporting);
        [(DOCItemInfoContentViewController *)v13->_contentViewController setActionReporting:WeakRetained];

        [(DOCItemInfoContentViewController *)v13->_contentViewController setShowsShareButton:0];
        scrollView = [(DOCItemInfoContentViewController *)v13->_contentViewController scrollView];
        [scrollView setShowsVerticalScrollIndicator:0];

        view = [(DOCItemInfoContentViewController *)v13->_contentViewController view];
        [view setTranslatesAutoresizingMaskIntoConstraints:0];

        v21 = _DocumentManagerBundle();
        v22 = [v21 localizedStringForKey:@"Info [View Controller Title]" value:@"Info" table:@"Localizable"];
        [(DOCItemInfoViewController *)v13 setTitle:v22];

        goto LABEL_9;
      }
    }

    else
    {
      firstObject = 0;
    }

    v15 = 1;
    goto LABEL_8;
  }

LABEL_9:

  return v13;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = DOCItemInfoViewController;
  [(DOCItemInfoViewController *)&v17 viewDidLoad];
  self->_needsInitialPreferredContentSize = 1;
  self->_viewDidAppear = 0;
  contentViewController = [(DOCItemInfoViewController *)self contentViewController];
  [contentViewController setTagsWorkflowDelegate:self];

  contentViewController2 = [(DOCItemInfoViewController *)self contentViewController];
  view = [contentViewController2 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  contentViewController3 = [(DOCItemInfoViewController *)self contentViewController];
  [(DOCItemInfoViewController *)self addChildViewController:contentViewController3];

  view2 = [(DOCItemInfoViewController *)self view];
  contentViewController4 = [(DOCItemInfoViewController *)self contentViewController];
  view3 = [contentViewController4 view];
  [view2 addSubview:view3];

  v10 = MEMORY[0x277CCAAD0];
  contentViewController5 = [(DOCItemInfoViewController *)self contentViewController];
  view4 = [contentViewController5 view];
  v13 = DOCConstraintsToResizeWithSuperview();
  [v10 activateConstraints:v13];

  contentViewController6 = [(DOCItemInfoViewController *)self contentViewController];
  [contentViewController6 didMoveToParentViewController:self];

  contentViewController7 = [(DOCItemInfoViewController *)self contentViewController];
  scrollView = [contentViewController7 scrollView];
  [(DOCItemInfoViewController *)self setContentScrollView:scrollView forEdge:15];
}

- (void)_updatePreferredContentSizeForFirstAppearance
{
  view = [(DOCItemInfoViewController *)self view];
  [view layoutIfNeeded];

  [(DOCItemInfoViewController *)self updatePreferredContentSize];
  self->_needsInitialPreferredContentSize = 0;
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container
{
  v7.receiver = self;
  v7.super_class = DOCItemInfoViewController;
  [(DOCItemInfoViewController *)&v7 systemLayoutFittingSizeDidChangeForChildContentContainer:container];
  view = [(DOCItemInfoViewController *)self view];
  window = [view window];
  if (window)
  {
    viewDidAppear = self->_viewDidAppear;

    if (viewDidAppear)
    {
      [(DOCItemInfoViewController *)self updatePreferredContentSize];
    }
  }

  else
  {
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = DOCItemInfoViewController;
  [(DOCItemInfoViewController *)&v7 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  view = [(DOCItemInfoViewController *)self view];
  window = [view window];

  if (window)
  {
    [(DOCItemInfoViewController *)self updatePreferredContentSize];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  if (windowCopy && self->_needsInitialPreferredContentSize)
  {
    [(DOCItemInfoViewController *)self _updatePreferredContentSizeForFirstAppearance];
  }

  [(DOCItemInfoViewController *)self _updateNavigationBarVisibilityAnimated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  self->_viewDidAppear = 1;
  [(DOCItemInfoViewController *)self updatePreferredContentSize];
  v5.receiver = self;
  v5.super_class = DOCItemInfoViewController;
  [(DOCItemInfoViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  self->_viewDidAppear = 0;
  v3.receiver = self;
  v3.super_class = DOCItemInfoViewController;
  [(DOCItemInfoViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = DOCItemInfoViewController;
  [(DOCItemInfoViewController *)&v3 viewDidLayoutSubviews];
  if (self->_viewDidAppear)
  {
    [(DOCItemInfoViewController *)self updatePreferredContentSize];
  }
}

- (void)updatePreferredContentSize
{
  view = [(DOCItemInfoViewController *)self view];
  window = [view window];

  if (window)
  {

    [(DOCItemInfoViewController *)self forceUpdatePreferredContentSize];
  }
}

- (void)forceUpdatePreferredContentSize
{
  self->_needsInitialPreferredContentSize = 0;
  [(DOCItemInfoViewController *)self preferredContentSize];
  v4 = v3;
  if (v3 == 0.0)
  {
    navigationController = [(DOCItemInfoViewController *)self navigationController];

    if (navigationController)
    {
      traitCollection = [(DOCItemInfoViewController *)self traitCollection];
      navigationController2 = [(DOCItemInfoViewController *)self navigationController];
      [navigationController2 preferredContentSize];
      v9 = v8;
      v11 = v10;

      [DOCItemInfoViewController ensureNonZeroPreferredSize:traitCollection traits:v9, v11];
      v4 = v12;
    }
  }

  [(DOCItemInfoContentViewController *)self->_contentViewController layoutHeightForWidth:v4];
  v14 = v13;
  presentationController = [(DOCItemInfoViewController *)self presentationController];
  presentedViewController = [presentationController presentedViewController];

  if (presentedViewController == self)
  {
    selfCopy = [(DOCItemInfoViewController *)self navigationController];
  }

  else
  {
    selfCopy = self;
  }

  v20 = selfCopy;
  [(DOCItemInfoViewController *)selfCopy preferredContentSize];
  if (v19 != v4 || v18 != v14)
  {
    [(DOCItemInfoViewController *)v20 setPreferredContentSize:v4, v14];
  }
}

- (void)_updateNavigationBarVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationController = [(DOCItemInfoViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if ([(DOCItemInfoViewController *)self isInfoInPopoverMode])
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  navigationController2 = [(DOCItemInfoViewController *)self navigationController];
  [navigationController2 setNavigationBarHidden:v6 & 1 animated:animatedCopy];
}

- (void)setIsInfoInPopoverMode:(BOOL)mode
{
  modeCopy = mode;
  self->_isInfoInPopoverMode = mode;
  [(DOCItemInfoViewController *)self _updateNavigationBarVisibilityAnimated:0];
  navigationController = [(DOCItemInfoViewController *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController2 = [(DOCItemInfoViewController *)self navigationController];
    topViewController = [navigationController2 topViewController];
    [topViewController setIsInfoInPopoverMode:modeCopy];
  }
}

- (void)tagsCollectionView:(id)view didSelectAddTagButton:(id)button
{
  v5 = [(DOCItemInfoViewController *)self items:view];
  [(DOCItemInfoViewController *)self displayAddTagsViewWithItems:v5];
}

- (void)displayTagView
{
  v11 = objc_alloc_init(DOCTagEditorViewController);
  [(DOCTagEditorViewController *)v11 setUseCompactColorPicker:1];
  [(DOCTagEditorViewController *)v11 setDelayResizingUntilAppeared:0];
  items = [(DOCItemInfoViewController *)self items];
  [(DOCTagEditorViewController *)v11 setItems:items];

  [(DOCTagEditorViewController *)v11 setIsInfoInPopoverMode:[(DOCItemInfoViewController *)self isInfoInPopoverMode]];
  [(DOCTagEditorViewController *)v11 setInTagListMode:1];
  [(DOCTagEditorViewController *)v11 maxListPresentationHeight];
  v5 = v4;
  view = [(DOCTagEditorViewController *)v11 view];
  heightAnchor = [view heightAnchor];
  v8 = [heightAnchor constraintLessThanOrEqualToConstant:v5];

  LODWORD(v9) = 1148829696;
  [v8 setPriority:v9];
  [v8 setActive:1];
  navigationController = [(DOCItemInfoViewController *)self navigationController];
  [navigationController pushViewController:v11 animated:0];

  [(DOCItemInfoViewController *)self _updateNavigationBarVisibilityAnimated:1];
}

- (void)displayAddTagsViewWithItems:(id)items
{
  itemsCopy = items;
  v12 = objc_alloc_init(DOCTagEditorViewController);
  [(DOCTagEditorViewController *)v12 setUseCompactColorPicker:1];
  [(DOCTagEditorViewController *)v12 setDelayResizingUntilAppeared:1];
  [(DOCTagEditorViewController *)v12 setItems:itemsCopy];

  [(DOCTagEditorViewController *)v12 setIsInfoInPopoverMode:[(DOCItemInfoViewController *)self isInfoInPopoverMode]];
  [(DOCTagEditorViewController *)v12 setInTagListMode:0];
  [(DOCTagEditorViewController *)v12 maxListPresentationHeight];
  v6 = v5;
  view = [(DOCTagEditorViewController *)v12 view];
  heightAnchor = [view heightAnchor];
  v9 = [heightAnchor constraintLessThanOrEqualToConstant:v6];

  LODWORD(v10) = 1148829696;
  [v9 setPriority:v10];
  [v9 setActive:1];
  navigationController = [(DOCItemInfoViewController *)self navigationController];
  [navigationController pushViewController:v12 animated:1];

  [(DOCItemInfoViewController *)self _updateNavigationBarVisibilityAnimated:1];
}

- (void)tagsCollectionItem:(id)item didDeleteTag:(id)tag
{
  v31 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(DOCItemInfoViewController *)self items];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        tags = [v9 tags];
        v11 = [tags mutableCopy];

        v12 = FPTagFromDOCTag();
        [v11 removeObject:v12];

        v13 = objc_alloc(MEMORY[0x277D06258]);
        v29 = v9;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
        v28 = v11;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
        mEMORY[0x277D06278] = [MEMORY[0x277D06278] shared];
        v17 = [v13 initWithItems:v14 tagsLists:v15 isUndoable:1 shouldClearUndoStack:0 undoManager:mEMORY[0x277D06278]];

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __61__DOCItemInfoViewController_tagsCollectionItem_didDeleteTag___block_invoke;
        v21[3] = &unk_278FA2380;
        v22 = tagCopy;
        v23 = v9;
        [v17 setActionCompletionBlock:v21];
        defaultManager = [MEMORY[0x277CC6408] defaultManager];
        [defaultManager scheduleAction:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }
}

void __61__DOCItemInfoViewController_tagsCollectionItem_didDeleteTag___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D062B8];
  v5 = *MEMORY[0x277D062B8];
  if (v3)
  {
    if (!v5)
    {
      DOCInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__DOCItemInfoViewController_tagsCollectionItem_didDeleteTag___block_invoke_cold_1(a1, v5, v3);
    }
  }

  else
  {
    if (!v5)
    {
      DOCInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __61__DOCItemInfoViewController_tagsCollectionItem_didDeleteTag___block_invoke_cold_2(a1, v5);
    }
  }
}

- (void)doc_startPreheatIfNecessary
{
  contentViewController = self->_contentViewController;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84__DOCItemInfoViewController_DOCPresentationPreheatable__doc_startPreheatIfNecessary__block_invoke;
  v3[3] = &unk_278FA1C30;
  v3[4] = self;
  [(DOCItemInfoContentViewController *)contentViewController objc_doc_preheatForPresentingWithCompletion:v3];
}

uint64_t __84__DOCItemInfoViewController_DOCPresentationPreheatable__doc_startPreheatIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) forceUpdatePreferredContentSize];
  v2 = *(a1 + 32);

  return [v2 objc_doc_preheatDidFinish];
}

+ (CGSize)ensureNonZeroPreferredSize:(CGSize)size traits:(id)traits
{
  traitsCopy = traits;
  specialized static DOCItemInfoViewController.ensureNonZeroPreferredSize(for:traits:)(traitsCopy);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

void __61__DOCItemInfoViewController_tagsCollectionItem_didDeleteTag___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 displayName];
  v8 = [*(a1 + 40) displayName];
  v9 = 138412802;
  v10 = v7;
  v11 = 2112;
  v12 = v8;
  v13 = 2112;
  v14 = a3;
  _os_log_error_impl(&dword_2493AC000, v6, OS_LOG_TYPE_ERROR, "Failed to delete tag %@ on item %@. Error: %@", &v9, 0x20u);
}

void __61__DOCItemInfoViewController_tagsCollectionItem_didDeleteTag___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 displayName];
  v6 = [*(a1 + 40) displayName];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_2493AC000, v4, OS_LOG_TYPE_DEBUG, "User did delete tag %@ on item %@", &v7, 0x16u);
}

@end