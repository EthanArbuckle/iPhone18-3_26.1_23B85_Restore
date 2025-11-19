@interface DOCItemInfoViewController
+ (CGSize)ensureNonZeroPreferredSize:(CGSize)a3 traits:(id)a4;
- (DOCItemInfoViewController)initWithNodes:(id)a3 configuration:(id)a4 actionReporting:(id)a5;
- (void)_updateNavigationBarVisibilityAnimated:(BOOL)a3;
- (void)_updatePreferredContentSizeForFirstAppearance;
- (void)displayAddTagsViewWithItems:(id)a3;
- (void)displayTagView;
- (void)doc_startPreheatIfNecessary;
- (void)forceUpdatePreferredContentSize;
- (void)setIsInfoInPopoverMode:(BOOL)a3;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3;
- (void)tagsCollectionItem:(id)a3 didDeleteTag:(id)a4;
- (void)tagsCollectionView:(id)a3 didSelectAddTagButton:(id)a4;
- (void)updatePreferredContentSize;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DOCItemInfoViewController

- (DOCItemInfoViewController)initWithNodes:(id)a3 configuration:(id)a4 actionReporting:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = DOCItemInfoViewController;
  v12 = [(DOCItemInfoViewController *)&v24 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_nodes, a3);
    if ([v9 count] == 1)
    {
      v14 = [v9 firstObject];
      if (v14 && [DOCItemInfoContentViewController itemTapDrillsIntoNode:v14])
      {
        v15 = [v11 isBrowserCurrentLocation:v14] ^ 1;
LABEL_8:
        objc_storeWeak(&v13->_actionReporting, v11);
        v16 = [[DOCItemInfoContentViewController alloc] initWithConfiguration:v10 nodes:v9 allowOpenButton:v15 documentManager:0 actionManager:0 actionDelegate:0];
        contentViewController = v13->_contentViewController;
        v13->_contentViewController = v16;

        WeakRetained = objc_loadWeakRetained(&v13->_actionReporting);
        [(DOCItemInfoContentViewController *)v13->_contentViewController setActionReporting:WeakRetained];

        [(DOCItemInfoContentViewController *)v13->_contentViewController setShowsShareButton:0];
        v19 = [(DOCItemInfoContentViewController *)v13->_contentViewController scrollView];
        [v19 setShowsVerticalScrollIndicator:0];

        v20 = [(DOCItemInfoContentViewController *)v13->_contentViewController view];
        [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

        v21 = _DocumentManagerBundle();
        v22 = [v21 localizedStringForKey:@"Info [View Controller Title]" value:@"Info" table:@"Localizable"];
        [(DOCItemInfoViewController *)v13 setTitle:v22];

        goto LABEL_9;
      }
    }

    else
    {
      v14 = 0;
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
  v3 = [(DOCItemInfoViewController *)self contentViewController];
  [v3 setTagsWorkflowDelegate:self];

  v4 = [(DOCItemInfoViewController *)self contentViewController];
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(DOCItemInfoViewController *)self contentViewController];
  [(DOCItemInfoViewController *)self addChildViewController:v6];

  v7 = [(DOCItemInfoViewController *)self view];
  v8 = [(DOCItemInfoViewController *)self contentViewController];
  v9 = [v8 view];
  [v7 addSubview:v9];

  v10 = MEMORY[0x277CCAAD0];
  v11 = [(DOCItemInfoViewController *)self contentViewController];
  v12 = [v11 view];
  v13 = DOCConstraintsToResizeWithSuperview();
  [v10 activateConstraints:v13];

  v14 = [(DOCItemInfoViewController *)self contentViewController];
  [v14 didMoveToParentViewController:self];

  v15 = [(DOCItemInfoViewController *)self contentViewController];
  v16 = [v15 scrollView];
  [(DOCItemInfoViewController *)self setContentScrollView:v16 forEdge:15];
}

- (void)_updatePreferredContentSizeForFirstAppearance
{
  v3 = [(DOCItemInfoViewController *)self view];
  [v3 layoutIfNeeded];

  [(DOCItemInfoViewController *)self updatePreferredContentSize];
  self->_needsInitialPreferredContentSize = 0;
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3
{
  v7.receiver = self;
  v7.super_class = DOCItemInfoViewController;
  [(DOCItemInfoViewController *)&v7 systemLayoutFittingSizeDidChangeForChildContentContainer:a3];
  v4 = [(DOCItemInfoViewController *)self view];
  v5 = [v4 window];
  if (v5)
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = DOCItemInfoViewController;
  [(DOCItemInfoViewController *)&v7 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(DOCItemInfoViewController *)self view];
  v6 = [v5 window];

  if (v6)
  {
    [(DOCItemInfoViewController *)self updatePreferredContentSize];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5 = a3;
  if (v5 && self->_needsInitialPreferredContentSize)
  {
    [(DOCItemInfoViewController *)self _updatePreferredContentSizeForFirstAppearance];
  }

  [(DOCItemInfoViewController *)self _updateNavigationBarVisibilityAnimated:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  self->_viewDidAppear = 1;
  [(DOCItemInfoViewController *)self updatePreferredContentSize];
  v5.receiver = self;
  v5.super_class = DOCItemInfoViewController;
  [(DOCItemInfoViewController *)&v5 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  self->_viewDidAppear = 0;
  v3.receiver = self;
  v3.super_class = DOCItemInfoViewController;
  [(DOCItemInfoViewController *)&v3 viewWillDisappear:a3];
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
  v3 = [(DOCItemInfoViewController *)self view];
  v4 = [v3 window];

  if (v4)
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
    v5 = [(DOCItemInfoViewController *)self navigationController];

    if (v5)
    {
      v6 = [(DOCItemInfoViewController *)self traitCollection];
      v7 = [(DOCItemInfoViewController *)self navigationController];
      [v7 preferredContentSize];
      v9 = v8;
      v11 = v10;

      [DOCItemInfoViewController ensureNonZeroPreferredSize:v6 traits:v9, v11];
      v4 = v12;
    }
  }

  [(DOCItemInfoContentViewController *)self->_contentViewController layoutHeightForWidth:v4];
  v14 = v13;
  v15 = [(DOCItemInfoViewController *)self presentationController];
  v16 = [v15 presentedViewController];

  if (v16 == self)
  {
    v17 = [(DOCItemInfoViewController *)self navigationController];
  }

  else
  {
    v17 = self;
  }

  v20 = v17;
  [(DOCItemInfoViewController *)v17 preferredContentSize];
  if (v19 != v4 || v18 != v14)
  {
    [(DOCItemInfoViewController *)v20 setPreferredContentSize:v4, v14];
  }
}

- (void)_updateNavigationBarVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(DOCItemInfoViewController *)self navigationController];
  v8 = [v5 topViewController];

  if ([(DOCItemInfoViewController *)self isInfoInPopoverMode])
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(DOCItemInfoViewController *)self navigationController];
  [v7 setNavigationBarHidden:v6 & 1 animated:v3];
}

- (void)setIsInfoInPopoverMode:(BOOL)a3
{
  v3 = a3;
  self->_isInfoInPopoverMode = a3;
  [(DOCItemInfoViewController *)self _updateNavigationBarVisibilityAnimated:0];
  v5 = [(DOCItemInfoViewController *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(DOCItemInfoViewController *)self navigationController];
    v7 = [v8 topViewController];
    [v7 setIsInfoInPopoverMode:v3];
  }
}

- (void)tagsCollectionView:(id)a3 didSelectAddTagButton:(id)a4
{
  v5 = [(DOCItemInfoViewController *)self items:a3];
  [(DOCItemInfoViewController *)self displayAddTagsViewWithItems:v5];
}

- (void)displayTagView
{
  v11 = objc_alloc_init(DOCTagEditorViewController);
  [(DOCTagEditorViewController *)v11 setUseCompactColorPicker:1];
  [(DOCTagEditorViewController *)v11 setDelayResizingUntilAppeared:0];
  v3 = [(DOCItemInfoViewController *)self items];
  [(DOCTagEditorViewController *)v11 setItems:v3];

  [(DOCTagEditorViewController *)v11 setIsInfoInPopoverMode:[(DOCItemInfoViewController *)self isInfoInPopoverMode]];
  [(DOCTagEditorViewController *)v11 setInTagListMode:1];
  [(DOCTagEditorViewController *)v11 maxListPresentationHeight];
  v5 = v4;
  v6 = [(DOCTagEditorViewController *)v11 view];
  v7 = [v6 heightAnchor];
  v8 = [v7 constraintLessThanOrEqualToConstant:v5];

  LODWORD(v9) = 1148829696;
  [v8 setPriority:v9];
  [v8 setActive:1];
  v10 = [(DOCItemInfoViewController *)self navigationController];
  [v10 pushViewController:v11 animated:0];

  [(DOCItemInfoViewController *)self _updateNavigationBarVisibilityAnimated:1];
}

- (void)displayAddTagsViewWithItems:(id)a3
{
  v4 = a3;
  v12 = objc_alloc_init(DOCTagEditorViewController);
  [(DOCTagEditorViewController *)v12 setUseCompactColorPicker:1];
  [(DOCTagEditorViewController *)v12 setDelayResizingUntilAppeared:1];
  [(DOCTagEditorViewController *)v12 setItems:v4];

  [(DOCTagEditorViewController *)v12 setIsInfoInPopoverMode:[(DOCItemInfoViewController *)self isInfoInPopoverMode]];
  [(DOCTagEditorViewController *)v12 setInTagListMode:0];
  [(DOCTagEditorViewController *)v12 maxListPresentationHeight];
  v6 = v5;
  v7 = [(DOCTagEditorViewController *)v12 view];
  v8 = [v7 heightAnchor];
  v9 = [v8 constraintLessThanOrEqualToConstant:v6];

  LODWORD(v10) = 1148829696;
  [v9 setPriority:v10];
  [v9 setActive:1];
  v11 = [(DOCItemInfoViewController *)self navigationController];
  [v11 pushViewController:v12 animated:1];

  [(DOCItemInfoViewController *)self _updateNavigationBarVisibilityAnimated:1];
}

- (void)tagsCollectionItem:(id)a3 didDeleteTag:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
        v10 = [v9 tags];
        v11 = [v10 mutableCopy];

        v12 = FPTagFromDOCTag();
        [v11 removeObject:v12];

        v13 = objc_alloc(MEMORY[0x277D06258]);
        v29 = v9;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
        v28 = v11;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
        v16 = [MEMORY[0x277D06278] shared];
        v17 = [v13 initWithItems:v14 tagsLists:v15 isUndoable:1 shouldClearUndoStack:0 undoManager:v16];

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __61__DOCItemInfoViewController_tagsCollectionItem_didDeleteTag___block_invoke;
        v21[3] = &unk_278FA2380;
        v22 = v5;
        v23 = v9;
        [v17 setActionCompletionBlock:v21];
        v18 = [MEMORY[0x277CC6408] defaultManager];
        [v18 scheduleAction:v17];
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

+ (CGSize)ensureNonZeroPreferredSize:(CGSize)a3 traits:(id)a4
{
  v4 = a4;
  specialized static DOCItemInfoViewController.ensureNonZeroPreferredSize(for:traits:)(v4);
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