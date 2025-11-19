@interface DOCTagEditorViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)commitNewTag;
- (BOOL)tagEditorCellShouldBeginEditing:(id)a3;
- (BOOL)tagEditorCellShouldEndEditing:(id)a3;
- (DOCTagEditorDelegate)delegate;
- (DOCTagEditorViewController)init;
- (DOCTagEditorViewController)initWithCoder:(id)a3;
- (DOCTagEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSArray)combinedTags;
- (NSOrderedSet)userTags;
- (double)bottomEdgeSpacing;
- (double)maxListPresentationHeight;
- (double)topEdgeSpacing;
- (id)_panelAppearance;
- (id)_tagForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3 dequeueCell:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)effectiveNavigationItem;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_updateMixedSelectionForCell:(id)a3;
- (void)_updateNavigationItem;
- (void)_updatePreferredContentSize:(BOOL)a3;
- (void)_updateSelection;
- (void)_updateSelectionForSection:(unint64_t)a3 withTags:(id)a4;
- (void)cancelButtonTapped:(id)a3;
- (void)cleanUpAfterNewTag;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)deselectTag:(id)a3;
- (void)doneButtonTapped:(id)a3;
- (void)registerCells:(id)a3;
- (void)scheduleSetTagsOperationWithTag:(id)a3 adding:(BOOL)a4;
- (void)selectTag:(id)a3;
- (void)setAddingTag:(BOOL)a3;
- (void)setItems:(id)a3;
- (void)setSelectedTags:(id)a3;
- (void)setTagsWithItems:(id)a3;
- (void)startNewTag;
- (void)tagEditorCell:(id)a3 didEndEditingWithText:(id)a4;
- (void)tagEditorCell:(id)a3 didUpdateText:(id)a4;
- (void)tagRegistryDidUpdate;
- (void)updateDiscoveredTags;
- (void)updateSelectedTags;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DOCTagEditorViewController

- (DOCTagEditorViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DOCTagEditorViewController;
  v3 = [(DOCTagEditorViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(DOCTagEditorViewController *)v3 doc_commonInit];
  }

  return v4;
}

- (DOCTagEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = DOCTagEditorViewController;
  v4 = [(DOCTagEditorViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(DOCTagEditorViewController *)v4 doc_commonInit];
  }

  return v5;
}

- (void)registerCells:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [(DOCTagEditorViewController *)self collectionView];
        [v11 registerClass:v10 forCellWithReuseIdentifier:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (DOCTagEditorViewController)init
{
  v3 = objc_alloc_init(MEMORY[0x277D752C0]);
  v4 = [objc_alloc(MEMORY[0x277D752B8]) initWithSectionProvider:&__block_literal_global_4 configuration:v3];
  v7.receiver = self;
  v7.super_class = DOCTagEditorViewController;
  v5 = [(DOCTagEditorViewController *)&v7 initWithCollectionViewLayout:v4];

  return v5;
}

id __34__DOCTagEditorViewController_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277D75290]) initWithAppearance:2];
  [v4 setShowsSeparators:1];
  v5 = [objc_alloc(MEMORY[0x277D756F0]) initWithListAppearance:2];
  [v4 setSeparatorConfiguration:v5];

  if (_UISolariumEnabled())
  {
    v6 = [MEMORY[0x277D75348] clearColor];
    [v4 setBackgroundColor:v6];
  }

  v7 = [MEMORY[0x277CFB868] sectionWithListConfiguration:v4 layoutEnvironment:v3];

  return v7;
}

- (void)viewDidLoad
{
  v27[3] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = DOCTagEditorViewController;
  [(DOCTagEditorViewController *)&v24 viewDidLoad];
  v26[0] = @"DOCTagEditorAddTagCell";
  v27[0] = objc_opt_class();
  v26[1] = @"DOCTagEditorNewTagCell";
  v27[1] = objc_opt_class();
  v26[2] = @"DOCTagEditorTagCell";
  v27[2] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  [(DOCTagEditorViewController *)self registerCells:v3];

  v4 = [(DOCTagEditorViewController *)self collectionView];
  [v4 setAllowsMultipleSelection:1];

  if (_UISolariumEnabled())
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v5 = ;
  v6 = [(DOCTagEditorViewController *)self collectionView];
  [v6 setBackgroundColor:v5];

  v7 = _DocumentManagerBundle();
  v8 = [v7 localizedStringForKey:@"Tags [Navigation Bar]" value:@"Tags" table:@"Localizable"];
  [(DOCTagEditorViewController *)self setNavigationTitleForTagListOnly:v8];

  v9 = _DocumentManagerBundle();
  v10 = [v9 localizedStringForKey:@"Add Tag [Navigation Bar]" value:@"Add Tag" table:@"Localizable"];
  [(DOCTagEditorViewController *)self setNavigationTitleForTagListInInfoPanel:v10];

  v11 = _DocumentManagerBundle();
  v12 = [v11 localizedStringForKey:@"Add Tag [Create Tag Navigation Bar]" value:@"Add Tag" table:@"Localizable"];
  [(DOCTagEditorViewController *)self setNavigationTitleForTagMaker:v12];

  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped_];
  [(DOCTagEditorViewController *)self setDoneButton:v13];

  v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel_doneButtonTapped_];
  [(DOCTagEditorViewController *)self setCloseButton:v14];

  v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped_];
  [(DOCTagEditorViewController *)self setCancelButton:v15];

  [(DOCTagEditorViewController *)self _updateSelection];
  [(DOCTagEditorViewController *)self _updateNavigationItem];
  v16 = [(DOCTagEditorViewController *)self collectionView];
  v17 = [v16 heightAnchor];
  v18 = [v17 constraintEqualToConstant:0.0];
  v19 = DOCConstraintWithPriority();
  collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
  self->_collectionViewHeightConstraint = v19;

  v21 = MEMORY[0x277CCAAD0];
  v25 = self->_collectionViewHeightConstraint;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [v21 activateConstraints:v22];

  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 addObserver:self selector:sel_tagRegistryDidUpdate name:*MEMORY[0x277D061D0] object:0];

  if ([(DOCTagEditorViewController *)self modalTransitionStyle]== 2)
  {
    [(DOCTagEditorViewController *)self _updatePreferredContentSize:1];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = DOCTagEditorViewController;
  [(DOCTagEditorViewController *)&v4 viewWillAppear:a3];
  [(DOCTagEditorViewController *)self _updateNavigationItem];
  if (![(DOCTagEditorViewController *)self delayResizingUntilAppeared])
  {
    [(DOCTagEditorViewController *)self _updatePreferredContentSize:1];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DOCTagEditorViewController;
  [(DOCTagEditorViewController *)&v5 viewWillDisappear:a3];
  if ([(DOCTagEditorViewController *)self userChangedTags])
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"DOCTagEditorTagsDidChangeNotification" object:self];

    [(DOCTagEditorViewController *)self scheduleSetTagsOperationWithTag:0 adding:1];
    [(DOCTagEditorViewController *)self setUserChangedTags:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if ([(DOCTagEditorViewController *)self delayResizingUntilAppeared])
  {
    [(DOCTagEditorViewController *)self _updatePreferredContentSize:0];
  }

  v5.receiver = self;
  v5.super_class = DOCTagEditorViewController;
  [(DOCTagEditorViewController *)&v5 viewDidAppear:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = DOCTagEditorViewController;
  v7 = a4;
  [(DOCTagEditorViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__DOCTagEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278FA23F8;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DOCTagEditorViewController;
  [(DOCTagEditorViewController *)&v4 dealloc];
}

- (NSOrderedSet)userTags
{
  userTags = self->_userTags;
  if (!userTags)
  {
    v4 = [MEMORY[0x277D06268] sharedInstance];
    v5 = [v4 userTags];
    v6 = [v5 copy];
    v7 = self->_userTags;
    self->_userTags = v6;

    userTags = self->_userTags;
  }

  return userTags;
}

- (NSArray)combinedTags
{
  v3 = [(DOCTagEditorViewController *)self userTags];
  v4 = [v3 array];
  v5 = [(DOCTagEditorViewController *)self discoveredTags];
  v6 = [v5 array];
  v7 = [v4 arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (void)tagRegistryDidUpdate
{
  userTags = self->_userTags;
  self->_userTags = 0;

  [(DOCTagEditorViewController *)self updateDiscoveredTags];
  v5 = [MEMORY[0x277CCAB58] indexSet];
  [v5 addIndex:0];
  v4 = [(DOCTagEditorViewController *)self collectionView];
  [v4 reloadSections:v5];

  [(DOCTagEditorViewController *)self _updateSelection];
  [(DOCTagEditorViewController *)self _updatePreferredContentSize:0];
}

- (void)doneButtonTapped:(id)a3
{
  if ([(DOCTagEditorViewController *)self isAddingTag])
  {
    v4 = [(DOCTagEditorViewController *)self commitNewTag];
    [(DOCTagEditorViewController *)self setAddingTag:0];
    if (v4)
    {

      [(DOCTagEditorViewController *)self cleanUpAfterNewTag];
    }
  }

  else
  {

    [(DOCTagEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)cancelButtonTapped:(id)a3
{
  [(DOCTagEditorViewController *)self setAddTagCurrentTextValue:0];
  [(DOCTagEditorViewController *)self setAddTagCurrentColor:0];

  [(DOCTagEditorViewController *)self setAddingTag:0];
}

- (id)_panelAppearance
{
  if ([(DOCTagEditorViewController *)self isAddingTag])
  {
    +[DOCTagAppearance makerUI];
  }

  else
  {
    +[DOCTagAppearance pickerList];
  }
  v2 = ;
  v3 = [v2 container];

  return v3;
}

- (double)topEdgeSpacing
{
  v2 = [(DOCTagEditorViewController *)self _panelAppearance];
  [v2 topMargin];
  v4 = v3;

  return v4;
}

- (double)bottomEdgeSpacing
{
  v2 = [(DOCTagEditorViewController *)self _panelAppearance];
  [v2 bottomMargin];
  v4 = v3;

  return v4;
}

- (void)updateDiscoveredTags
{
  v13[1] = *MEMORY[0x277D85DE8];
  discoveredTags = self->_discoveredTags;
  if (!discoveredTags)
  {
    v4 = [MEMORY[0x277CBEB40] orderedSet];
    v5 = self->_discoveredTags;
    self->_discoveredTags = v4;

    discoveredTags = self->_discoveredTags;
  }

  v6 = [(DOCTagEditorViewController *)self unionSelectedTags];
  v7 = [v6 set];
  [(NSMutableOrderedSet *)discoveredTags unionSet:v7];

  v8 = self->_discoveredTags;
  v9 = [(DOCTagEditorViewController *)self userTags];
  [(NSMutableOrderedSet *)v8 minusOrderedSet:v9];

  v10 = self->_discoveredTags;
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"displayName" ascending:1 selector:sel_localizedStandardCompare_];
  v13[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(NSMutableOrderedSet *)v10 sortUsingDescriptors:v12];
}

- (void)_updatePreferredContentSize:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__DOCTagEditorViewController__updatePreferredContentSize___block_invoke;
  aBlock[3] = &unk_278FA2420;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [(DOCTagEditorViewController *)self collectionView];
  v7 = v6;
  if (v3)
  {
    [v6 setNeedsLayout];

    v8 = [(DOCTagEditorViewController *)self collectionView];
    [v8 layoutIfNeeded];

    v5[2](v5, 1);
  }

  else
  {
    [v6 performBatchUpdates:&__block_literal_global_79 completion:v5];
  }
}

void __58__DOCTagEditorViewController__updatePreferredContentSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 collectionViewLayout];
  [v3 collectionViewContentSize];
  v5 = v4;

  v6 = [*(a1 + 32) collectionViewHeightConstraint];
  [v6 setConstant:v5];

  v7 = [*(a1 + 32) navigationController];
  v8 = v7;
  if (!v7)
  {
    v8 = *(a1 + 32);
  }

  v22 = v8;

  v9 = [*(a1 + 32) view];
  [v9 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v11 = v10;

  v12 = [*(a1 + 32) view];
  [v12 frame];
  Width = CGRectGetWidth(v24);

  if ([*(a1 + 32) _isInPopoverPresentation])
  {
    v14 = [*(a1 + 32) _existingPresentationControllerImmediate:0 effective:0];
    v15 = [v14 presentedViewController];

    if (v15)
    {
      [v15 preferredContentSize];
    }

    else
    {
      v16 = 0.0;
    }

    if (v16 != 0.0)
    {
      Width = v16;
    }
  }

  if ([*(a1 + 32) modalTransitionStyle] == 2 && Width > 0.0 && v11 == 0.0)
  {
    v17 = [*(a1 + 32) view];
    [v17 frame];
    v11 = v18;

    if (v11 == 0.0)
    {
      v19 = objc_alloc_init(MEMORY[0x277D75D28]);
      v20 = [v19 view];
      [v20 frame];
      v11 = v21;

      if (v11 == 0.0)
      {
        v11 = 1024.0;
      }
    }
  }

  [v22 setPreferredContentSize:{Width, v11}];
}

- (void)_updateSelectionForSection:(unint64_t)a3 withTags:(id)a4
{
  v15 = a4;
  v6 = [v15 count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v15 objectAtIndexedSubscript:i];
      v10 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:a3];
      v11 = [(DOCTagEditorViewController *)self intersectionSelectedTags];
      v12 = [v11 containsObject:v9];

      v13 = [(DOCTagEditorViewController *)self collectionView];
      v14 = v13;
      if (v12)
      {
        [v13 selectItemAtIndexPath:v10 animated:0 scrollPosition:0];
      }

      else
      {
        [v13 deselectItemAtIndexPath:v10 animated:0];
      }
    }
  }
}

- (void)_updateMixedSelectionForCell:(id)a3
{
  v7 = a3;
  v4 = [v7 tagValue];
  v5 = [(DOCTagEditorViewController *)self intersectionSelectedTags];
  if ([v5 containsObject:v4])
  {
    [v7 setMixedSelection:0];
  }

  else
  {
    v6 = [(DOCTagEditorViewController *)self unionSelectedTags];
    [v7 setMixedSelection:{objc_msgSend(v6, "containsObject:", v4)}];
  }
}

- (void)_updateSelection
{
  v3 = [(DOCTagEditorViewController *)self collectionView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__DOCTagEditorViewController__updateSelection__block_invoke_2;
  v4[3] = &unk_278FA2420;
  v4[4] = self;
  [v3 performBatchUpdates:&__block_literal_global_82 completion:v4];
}

void __46__DOCTagEditorViewController__updateSelection__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 combinedTags];
  [v2 _updateSelectionForSection:0 withTags:v3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 preparedCells];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 32) _updateMixedSelectionForCell:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)effectiveNavigationItem
{
  if (!self->_useParentNavigationItem || (-[DOCTagEditorViewController parentViewController](self, "parentViewController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 navigationItem], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v4 = [(DOCTagEditorViewController *)self navigationItem];
  }

  return v4;
}

- (void)_updateNavigationItem
{
  if ([(DOCTagEditorViewController *)self isAddingTag])
  {
    v3 = [(DOCTagEditorViewController *)self navigationTitleForTagMaker];
  }

  else
  {
    if ([(DOCTagEditorViewController *)self inTagListMode])
    {
      [(DOCTagEditorViewController *)self navigationTitleForTagListOnly];
    }

    else
    {
      [(DOCTagEditorViewController *)self navigationTitleForTagListInInfoPanel];
    }
    v3 = ;
  }

  v4 = v3;
  [(DOCTagEditorViewController *)self setTitle:v3];

  v26 = [(DOCTagEditorViewController *)self effectiveNavigationItem];
  if (self->_useParentNavigationItem)
  {
    v5 = [(DOCTagEditorViewController *)self title];
    v6 = [(DOCTagEditorViewController *)self parentViewController];
    [v6 setTitle:v5];

    v7 = [(DOCTagEditorViewController *)self isAddingTag];
  }

  else
  {
    v7 = [(DOCTagEditorViewController *)self inTagListMode];
  }

  [v26 setHidesBackButton:v7];
  v8 = _DocumentManagerBundle();
  v9 = [v8 localizedStringForKey:@"Back" value:@"Back" table:@"Localizable"];
  [v26 setBackButtonTitle:v9];

  if ([(DOCTagEditorViewController *)self isAddingTag])
  {
    v10 = [(DOCTagEditorViewController *)self cancelButton];
    [v26 setLeftBarButtonItem:v10];

    v11 = [MEMORY[0x277D06268] sharedInstance];
    v12 = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
    v13 = [v11 isValidNewTagName:v12];
    v14 = [(DOCTagEditorViewController *)self doneButton];
    [v14 setEnabled:v13];

    v15 = [(DOCTagEditorViewController *)self doneButton];
    v16 = v26;
    v17 = v15;
  }

  else
  {
    if ([(DOCTagEditorViewController *)self isInfoInPopoverMode]|| ([(DOCTagEditorViewController *)self _isInPopoverPresentation]& 1) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = [(DOCTagEditorViewController *)self closeButton];
    }

    v18 = [(DOCTagEditorViewController *)self closeButton];
    [v18 setEnabled:1];

    v19 = [(DOCTagEditorViewController *)self navigationController];
    if (v19)
    {
      v20 = v19;
      v21 = [(DOCTagEditorViewController *)self navigationController];
      v22 = [v21 viewControllers];
      v23 = [v22 firstObject];
      v24 = v23;
      if (v23 == self)
      {
      }

      else
      {
        v25 = [v26 hidesBackButton];

        if ((v25 & 1) == 0)
        {
          [v26 setRightBarButtonItem:v15];
          [v26 setLeftBarButtonItem:0];
          goto LABEL_23;
        }
      }
    }

    [v26 setLeftBarButtonItem:v15];
    v16 = v26;
    v17 = 0;
  }

  [v16 setRightBarButtonItem:v17];
LABEL_23:
}

- (void)setItems:(id)a3
{
  v6 = a3;
  if (self->_items != v6)
  {
    v7 = v6;
    if (![(NSArray *)v6 count])
    {
      [(DOCTagEditorViewController *)a2 setItems:?];
    }

    objc_storeStrong(&self->_items, a3);
    [(DOCTagEditorViewController *)self setUserChangedTags:0];
    [(DOCTagEditorViewController *)self setTagsWithItems:v7];
    v6 = v7;
  }
}

- (void)setTagsWithItems:(id)a3
{
  v4 = [(DOCTagEditorViewController *)self items];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 tags];
  v18 = DOCTagsFromFPTags();

  v7 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v18];
  v8 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v18];
  v9 = [(DOCTagEditorViewController *)self items];
  v10 = [v9 count];

  if (v10 >= 2)
  {
    for (i = 1; i != v10; ++i)
    {
      v12 = MEMORY[0x277CBEB98];
      v13 = [(DOCTagEditorViewController *)self items];
      v14 = [v13 objectAtIndexedSubscript:i];
      v15 = [v14 tags];
      v16 = DOCTagsFromFPTags();
      v17 = [v12 setWithArray:v16];

      [v7 intersectSet:v17];
      [v8 unionSet:v17];
    }
  }

  [(DOCTagEditorViewController *)self setIntersectionSelectedTags:v7];
  [(DOCTagEditorViewController *)self setUnionSelectedTags:v8];
  [(DOCTagEditorViewController *)self updateSelectedTags];
}

- (void)setSelectedTags:(id)a3
{
  v4 = MEMORY[0x277CBEB40];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5];
  [(DOCTagEditorViewController *)self setIntersectionSelectedTags:v6];

  v7 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v5];
  [(DOCTagEditorViewController *)self setUnionSelectedTags:v7];

  [(DOCTagEditorViewController *)self updateSelectedTags];
}

- (void)updateSelectedTags
{
  [(DOCTagEditorViewController *)self updateDiscoveredTags];
  v4 = [MEMORY[0x277CCAB58] indexSet];
  [v4 addIndex:0];
  v3 = [(DOCTagEditorViewController *)self collectionView];
  [v3 reloadSections:v4];

  [(DOCTagEditorViewController *)self _updateSelection];
}

- (void)setAddingTag:(BOOL)a3
{
  if (self->_addingTag != a3)
  {
    self->_addingTag = a3;
    v5 = [MEMORY[0x277CCAB58] indexSet];
    [v5 addIndex:0];
    v4 = [(DOCTagEditorViewController *)self collectionView];
    [v4 reloadSections:v5];

    if (!self->_addingTag)
    {
      [(DOCTagEditorViewController *)self _updateSelection];
    }

    [(DOCTagEditorViewController *)self _updateNavigationItem];
    [(DOCTagEditorViewController *)self _updatePreferredContentSize:0];
  }
}

- (double)maxListPresentationHeight
{
  v2 = +[DOCTagAppearance pickerList];
  v3 = [v2 container];
  [v3 maxHeight];
  v5 = v4;

  return v5;
}

- (void)scheduleSetTagsOperationWithTag:(id)a3 adding:(BOOL)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  items = self->_items;
  if (items)
  {
    v37 = v5;
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](items, "count")}];
    v8 = MEMORY[0x277CBEB70];
    v9 = [(DOCTagEditorViewController *)self intersectionSelectedTags];
    v10 = [v9 array];
    v11 = FPTagsFromDOCTags();
    v12 = [v8 orderedSetWithArray:v11];

    v13 = MEMORY[0x277CBEB70];
    v14 = [(DOCTagEditorViewController *)self unionSelectedTags];
    v15 = [v14 array];
    v16 = FPTagsFromDOCTags();
    v17 = [v13 orderedSetWithArray:v16];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = self;
    v18 = self->_items;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = MEMORY[0x277CBEB40];
          v24 = [*(*(&v41 + 1) + 8 * i) tags];
          v25 = [v23 orderedSetWithArray:v24];

          v26 = [v12 set];
          [v25 unionSet:v26];

          v27 = [v17 set];
          [v25 intersectSet:v27];

          v28 = [v25 array];
          [v7 addObject:v28];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v20);
    }

    v29 = objc_alloc(MEMORY[0x277D06258]);
    v30 = v36->_items;
    v31 = [MEMORY[0x277D06278] shared];
    v32 = [v29 initWithItems:v30 tagsLists:v7 isUndoable:1 shouldClearUndoStack:0 undoManager:v31];

    v33 = v36->_items;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __69__DOCTagEditorViewController_scheduleSetTagsOperationWithTag_adding___block_invoke;
    v38[3] = &unk_278FA2380;
    v5 = v37;
    v39 = v37;
    v40 = v33;
    v34 = v33;
    [v32 setActionCompletionBlock:v38];
    v35 = [MEMORY[0x277CC6408] defaultManager];
    [v35 scheduleAction:v32];
  }
}

void __69__DOCTagEditorViewController_scheduleSetTagsOperationWithTag_adding___block_invoke(uint64_t a1, void *a2)
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
      __69__DOCTagEditorViewController_scheduleSetTagsOperationWithTag_adding___block_invoke_cold_1(a1, v5, v3);
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
      __69__DOCTagEditorViewController_scheduleSetTagsOperationWithTag_adding___block_invoke_cold_2(a1, v5);
    }
  }
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v4 = a4;
  if ([v4 section])
  {
    v5 = [v4 section] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_tagForIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 section] || (v5 = objc_msgSend(v4, "item"), -[DOCTagEditorViewController combinedTags](self, "combinedTags"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v9 = 0;
  }

  else
  {
    v8 = [(DOCTagEditorViewController *)self combinedTags];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  return v9;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  if ([v6 section] != 1)
  {
    v13 = [(DOCTagEditorViewController *)self collectionView];
    v9 = [v13 cellForItemAtIndexPath:v6];

    v11 = [(DOCTagEditorViewController *)self _tagForIndexPath:v6];
    if (v11)
    {
      [v9 setMixedSelection:0];
      [(DOCTagEditorViewController *)self selectTag:v11];
    }

    goto LABEL_6;
  }

  [v14 deselectItemAtIndexPath:v6 animated:1];
  if ([(DOCTagEditorViewController *)self isAddingTag])
  {
    v7 = MEMORY[0x277CCAA70];
    v8 = [(DOCTagEditorViewController *)self combinedTags];
    v9 = [v7 indexPathForItem:objc_msgSend(v8 inSection:{"count"), 0}];

    v10 = [(DOCTagEditorViewController *)self collectionView];
    v11 = [v10 cellForItemAtIndexPath:v9];

    v12 = [v11 contentView];
    [v12 becomeFirstResponder];

LABEL_6:
    goto LABEL_8;
  }

  [(DOCTagEditorViewController *)self startNewTag];
LABEL_8:
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v8 = a4;
  v5 = [(DOCTagEditorViewController *)self _tagForIndexPath:?];
  if (v5)
  {
    v6 = [(DOCTagEditorViewController *)self collectionView];
    v7 = [v6 cellForItemAtIndexPath:v8];

    [v7 setMixedSelection:0];
    [(DOCTagEditorViewController *)self deselectTag:v5];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = a4;
  if (a4 != 1)
  {
    if (a4)
    {
      return 0;
    }

    else
    {
      v6 = [(DOCTagEditorViewController *)self combinedTags];
      v7 = [(DOCTagEditorViewController *)self isAddingTag];
      v4 = [v6 count] + v7;
    }
  }

  return v4;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__DOCTagEditorViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v23[3] = &unk_278FA2448;
  v9 = v7;
  v24 = v9;
  v10 = v8;
  v25 = v10;
  v11 = [(DOCTagEditorViewController *)self cellForIndexPath:v10 dequeueCell:v23];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"DOCTagEditorViewController.m" lineNumber:620 description:{@"Unexpected class type of cell: %@", v11}];
  }

  if ([v10 section] != 1 && !objc_msgSend(v10, "section"))
  {
    v13 = v11;
    if ([(DOCTagEditorViewController *)self isAddingTag])
    {
      v14 = [v10 item];
      v15 = [(DOCTagEditorViewController *)self combinedTags];
      if (v14 != [v15 count])
      {
LABEL_10:

        goto LABEL_11;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = v13;
        [v15 layoutIfNeeded];
        [v15 setTextEditingDelegate:self];
        [v15 setTagValue:0];
        [v15 updateContentConfiguration];
        v17 = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
        v18 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v19 = [v17 stringByTrimmingCharactersInSet:v18];
        v20 = [v19 length];

        if (v20)
        {
          v21 = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
          [v15 updateTextFieldLayoutWithText:v21];
        }

        goto LABEL_10;
      }
    }

LABEL_11:
  }

  return v11;
}

- (id)cellForIndexPath:(id)a3 dequeueCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 section];
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = v7[2](v7, @"DOCTagEditorAddTagCell");
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (-[DOCTagEditorViewController isAddingTag](self, "isAddingTag") && (v10 = [v6 item], -[DOCTagEditorViewController combinedTags](self, "combinedTags"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10 == v12))
    {
      v13 = @"DOCTagEditorNewTagCell";
    }

    else
    {
      v13 = @"DOCTagEditorTagCell";
    }

    v9 = v7[2](v7, v13);
    v14 = [(DOCTagEditorViewController *)self _tagForIndexPath:v6];
    [v9 setTagValue:v14];

    [(DOCTagEditorViewController *)self _updateMixedSelectionForCell:v9];
  }

  return v9;
}

- (void)startNewTag
{
  [(DOCTagEditorViewController *)self setAddingTag:1];
  [(DOCTagEditorViewController *)self tagRegistryDidUpdate];
  v3 = MEMORY[0x277CCAA70];
  v4 = [(DOCTagEditorViewController *)self combinedTags];
  v9 = [v3 indexPathForItem:objc_msgSend(v4 inSection:{"count"), 0}];

  v5 = [(DOCTagEditorViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v9];

  v7 = [v6 contentView];
  [v7 becomeFirstResponder];

  [v6 updateTextFieldLayoutWithText:0];
  [v6 setCurrentNewTagInputText:0];
  v8 = [(DOCTagEditorViewController *)self collectionView];
  [v8 selectItemAtIndexPath:v9 animated:1 scrollPosition:0];
}

- (BOOL)commitNewTag
{
  v3 = MEMORY[0x277D06268];
  v4 = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
  v5 = [v3 sanitizedTagName:v4];

  if ([(DOCTagEditorViewController *)self isAddingTag]|| !v5)
  {
    v7 = [(DOCTagEditorViewController *)self collectionView];
    v8 = MEMORY[0x277CCAA70];
    v9 = [(DOCTagEditorViewController *)self combinedTags];
    v10 = [v8 indexPathForRow:objc_msgSend(v9 inSection:{"count"), 0}];
    v11 = [v7 cellForItemAtIndexPath:v10];

    [v11 setCurrentNewTagInputText:0];
    -[DOCTagEditorViewController setAddTagCurrentColor:](self, "setAddTagCurrentColor:", [v11 newTagColor]);
    v12 = [objc_alloc(MEMORY[0x277D06260]) initWithDisplayName:v5 labelIndex:-[DOCTagEditorViewController addTagCurrentColor](self type:{"addTagCurrentColor"), 1}];
    v13 = [MEMORY[0x277D06268] sharedInstance];
    v6 = [v13 insertTag:v12 atIndex:0];

    if (v6)
    {
      v14 = [(DOCTagEditorViewController *)self delegate];
      [v14 tagEditor:self userDidCreateTag:v12];

      [(DOCTagEditorViewController *)self selectTag:v12];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)cleanUpAfterNewTag
{
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
  v3 = [(DOCTagEditorViewController *)self collectionView];
  [v3 scrollToItemAtIndexPath:v4 atScrollPosition:1 animated:1];
}

- (void)tagEditorCell:(id)a3 didEndEditingWithText:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v7 copy];
  [(DOCTagEditorViewController *)self setAddTagCurrentTextValue:v9];

  -[DOCTagEditorViewController setAddTagCurrentColor:](self, "setAddTagCurrentColor:", [v8 newTagColor]);
  v10 = MEMORY[0x277D062B8];
  v11 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v8 recursiveDescription];
    v14 = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
    v15 = 136316162;
    v16 = "[DOCTagEditorViewController tagEditorCell:didEndEditingWithText:]";
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2048;
    v24 = [(DOCTagEditorViewController *)self addTagCurrentColor];
    _os_log_impl(&dword_2493AC000, v12, OS_LOG_TYPE_INFO, "%s User did end editing with text: %@, cell: %@, addTagCurrentTextValue: %@, addTagCurrentColor: %ld", &v15, 0x34u);
  }
}

- (void)tagEditorCell:(id)a3 didUpdateText:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 copy];
  [(DOCTagEditorViewController *)self setAddTagCurrentTextValue:v8];

  v9 = MEMORY[0x277D062B8];
  v10 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v10 = *v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v6 recursiveDescription];
    v13 = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
    v14 = 136316162;
    v15 = "[DOCTagEditorViewController tagEditorCell:didUpdateText:]";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2048;
    v23 = [(DOCTagEditorViewController *)self addTagCurrentColor];
    _os_log_impl(&dword_2493AC000, v11, OS_LOG_TYPE_INFO, "%s User did update text: %@, cell: %@, addTagCurrentTextValue: %@, addTagCurrentColor: %ld", &v14, 0x34u);
  }

  [(DOCTagEditorViewController *)self _updateNavigationItem];
}

- (BOOL)tagEditorCellShouldBeginEditing:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D062B8];
  v6 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v4 recursiveDescription];
    v9 = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
    v11 = 136315906;
    v12 = "[DOCTagEditorViewController tagEditorCellShouldBeginEditing:]";
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2048;
    v18 = [(DOCTagEditorViewController *)self addTagCurrentColor];
    _os_log_impl(&dword_2493AC000, v7, OS_LOG_TYPE_INFO, "%s Cell should begin editing, cell: %@, addTagCurrentTextValue: %@, addTagCurrentColor: %ld", &v11, 0x2Au);
  }

  return 1;
}

- (BOOL)tagEditorCellShouldEndEditing:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D062B8];
  v6 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v4 recursiveDescription];
    v9 = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
    v14 = 136315906;
    v15 = "[DOCTagEditorViewController tagEditorCellShouldEndEditing:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2048;
    v21 = [(DOCTagEditorViewController *)self addTagCurrentColor];
    _os_log_impl(&dword_2493AC000, v7, OS_LOG_TYPE_INFO, "%s Cell should end editing, cell: %@, addTagCurrentTextValue: %@, addTagCurrentColor: %ld", &v14, 0x2Au);
  }

  if ([(DOCTagEditorViewController *)self isAddingTag])
  {
    v10 = [(DOCTagEditorViewController *)self _existingPresentationControllerImmediate:0 effective:0];
    v11 = [v10 dismissing];

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)selectTag:(id)a3
{
  v4 = a3;
  v5 = [(DOCTagEditorViewController *)self intersectionSelectedTags];
  [v5 addObject:v4];

  v6 = [(DOCTagEditorViewController *)self unionSelectedTags];
  [v6 addObject:v4];

  [(DOCTagEditorViewController *)self setUserChangedTags:1];
  v7 = [(DOCTagEditorViewController *)self delegate];
  [v7 tagEditor:self userDidSelectTag:v4];
}

- (void)deselectTag:(id)a3
{
  v4 = a3;
  v5 = [(DOCTagEditorViewController *)self intersectionSelectedTags];
  [v5 removeObject:v4];

  v6 = [(DOCTagEditorViewController *)self unionSelectedTags];
  [v6 removeObject:v4];

  [(DOCTagEditorViewController *)self setUserChangedTags:1];
  v7 = [(DOCTagEditorViewController *)self delegate];
  [v7 tagEditor:self userDidDeselectTag:v4];
}

- (DOCTagEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setItems:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCTagEditorViewController.m" lineNumber:439 description:@"Number of items must be greater than 0."];
}

void __69__DOCTagEditorViewController_scheduleSetTagsOperationWithTag_adding___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 displayName];
  OUTLINED_FUNCTION_0_2();
  v9 = v7;
  v10 = a3;
  _os_log_error_impl(&dword_2493AC000, v5, OS_LOG_TYPE_ERROR, "Failed to add tag %@ on items: %@. Error: %@", v8, 0x20u);
}

void __69__DOCTagEditorViewController_scheduleSetTagsOperationWithTag_adding___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 displayName];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_2493AC000, v3, OS_LOG_TYPE_DEBUG, "User did add tag %@ to items: %@", v5, 0x16u);
}

@end