@interface DOCTagEditorViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)commitNewTag;
- (BOOL)tagEditorCellShouldBeginEditing:(id)editing;
- (BOOL)tagEditorCellShouldEndEditing:(id)editing;
- (DOCTagEditorDelegate)delegate;
- (DOCTagEditorViewController)init;
- (DOCTagEditorViewController)initWithCoder:(id)coder;
- (DOCTagEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSArray)combinedTags;
- (NSOrderedSet)userTags;
- (double)bottomEdgeSpacing;
- (double)maxListPresentationHeight;
- (double)topEdgeSpacing;
- (id)_panelAppearance;
- (id)_tagForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path dequeueCell:(id)cell;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)effectiveNavigationItem;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_updateMixedSelectionForCell:(id)cell;
- (void)_updateNavigationItem;
- (void)_updatePreferredContentSize:(BOOL)size;
- (void)_updateSelection;
- (void)_updateSelectionForSection:(unint64_t)section withTags:(id)tags;
- (void)cancelButtonTapped:(id)tapped;
- (void)cleanUpAfterNewTag;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)deselectTag:(id)tag;
- (void)doneButtonTapped:(id)tapped;
- (void)registerCells:(id)cells;
- (void)scheduleSetTagsOperationWithTag:(id)tag adding:(BOOL)adding;
- (void)selectTag:(id)tag;
- (void)setAddingTag:(BOOL)tag;
- (void)setItems:(id)items;
- (void)setSelectedTags:(id)tags;
- (void)setTagsWithItems:(id)items;
- (void)startNewTag;
- (void)tagEditorCell:(id)cell didEndEditingWithText:(id)text;
- (void)tagEditorCell:(id)cell didUpdateText:(id)text;
- (void)tagRegistryDidUpdate;
- (void)updateDiscoveredTags;
- (void)updateSelectedTags;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DOCTagEditorViewController

- (DOCTagEditorViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DOCTagEditorViewController;
  v3 = [(DOCTagEditorViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(DOCTagEditorViewController *)v3 doc_commonInit];
  }

  return v4;
}

- (DOCTagEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = DOCTagEditorViewController;
  v4 = [(DOCTagEditorViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(DOCTagEditorViewController *)v4 doc_commonInit];
  }

  return v5;
}

- (void)registerCells:(id)cells
{
  v17 = *MEMORY[0x277D85DE8];
  cellsCopy = cells;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [cellsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(cellsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [cellsCopy objectForKeyedSubscript:v9];
        collectionView = [(DOCTagEditorViewController *)self collectionView];
        [collectionView registerClass:v10 forCellWithReuseIdentifier:v9];
      }

      v6 = [cellsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

  collectionView = [(DOCTagEditorViewController *)self collectionView];
  [collectionView setAllowsMultipleSelection:1];

  if (_UISolariumEnabled())
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v5 = ;
  collectionView2 = [(DOCTagEditorViewController *)self collectionView];
  [collectionView2 setBackgroundColor:v5];

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
  collectionView3 = [(DOCTagEditorViewController *)self collectionView];
  heightAnchor = [collectionView3 heightAnchor];
  v18 = [heightAnchor constraintEqualToConstant:0.0];
  v19 = DOCConstraintWithPriority();
  collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
  self->_collectionViewHeightConstraint = v19;

  v21 = MEMORY[0x277CCAAD0];
  v25 = self->_collectionViewHeightConstraint;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [v21 activateConstraints:v22];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_tagRegistryDidUpdate name:*MEMORY[0x277D061D0] object:0];

  if ([(DOCTagEditorViewController *)self modalTransitionStyle]== 2)
  {
    [(DOCTagEditorViewController *)self _updatePreferredContentSize:1];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = DOCTagEditorViewController;
  [(DOCTagEditorViewController *)&v4 viewWillAppear:appear];
  [(DOCTagEditorViewController *)self _updateNavigationItem];
  if (![(DOCTagEditorViewController *)self delayResizingUntilAppeared])
  {
    [(DOCTagEditorViewController *)self _updatePreferredContentSize:1];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = DOCTagEditorViewController;
  [(DOCTagEditorViewController *)&v5 viewWillDisappear:disappear];
  if ([(DOCTagEditorViewController *)self userChangedTags])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"DOCTagEditorTagsDidChangeNotification" object:self];

    [(DOCTagEditorViewController *)self scheduleSetTagsOperationWithTag:0 adding:1];
    [(DOCTagEditorViewController *)self setUserChangedTags:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(DOCTagEditorViewController *)self delayResizingUntilAppeared])
  {
    [(DOCTagEditorViewController *)self _updatePreferredContentSize:0];
  }

  v5.receiver = self;
  v5.super_class = DOCTagEditorViewController;
  [(DOCTagEditorViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = DOCTagEditorViewController;
  coordinatorCopy = coordinator;
  [(DOCTagEditorViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__DOCTagEditorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278FA23F8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DOCTagEditorViewController;
  [(DOCTagEditorViewController *)&v4 dealloc];
}

- (NSOrderedSet)userTags
{
  userTags = self->_userTags;
  if (!userTags)
  {
    mEMORY[0x277D06268] = [MEMORY[0x277D06268] sharedInstance];
    userTags = [mEMORY[0x277D06268] userTags];
    v6 = [userTags copy];
    v7 = self->_userTags;
    self->_userTags = v6;

    userTags = self->_userTags;
  }

  return userTags;
}

- (NSArray)combinedTags
{
  userTags = [(DOCTagEditorViewController *)self userTags];
  array = [userTags array];
  discoveredTags = [(DOCTagEditorViewController *)self discoveredTags];
  array2 = [discoveredTags array];
  v7 = [array arrayByAddingObjectsFromArray:array2];

  return v7;
}

- (void)tagRegistryDidUpdate
{
  userTags = self->_userTags;
  self->_userTags = 0;

  [(DOCTagEditorViewController *)self updateDiscoveredTags];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  [indexSet addIndex:0];
  collectionView = [(DOCTagEditorViewController *)self collectionView];
  [collectionView reloadSections:indexSet];

  [(DOCTagEditorViewController *)self _updateSelection];
  [(DOCTagEditorViewController *)self _updatePreferredContentSize:0];
}

- (void)doneButtonTapped:(id)tapped
{
  if ([(DOCTagEditorViewController *)self isAddingTag])
  {
    commitNewTag = [(DOCTagEditorViewController *)self commitNewTag];
    [(DOCTagEditorViewController *)self setAddingTag:0];
    if (commitNewTag)
    {

      [(DOCTagEditorViewController *)self cleanUpAfterNewTag];
    }
  }

  else
  {

    [(DOCTagEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)cancelButtonTapped:(id)tapped
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
  container = [v2 container];

  return container;
}

- (double)topEdgeSpacing
{
  _panelAppearance = [(DOCTagEditorViewController *)self _panelAppearance];
  [_panelAppearance topMargin];
  v4 = v3;

  return v4;
}

- (double)bottomEdgeSpacing
{
  _panelAppearance = [(DOCTagEditorViewController *)self _panelAppearance];
  [_panelAppearance bottomMargin];
  v4 = v3;

  return v4;
}

- (void)updateDiscoveredTags
{
  v13[1] = *MEMORY[0x277D85DE8];
  discoveredTags = self->_discoveredTags;
  if (!discoveredTags)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v5 = self->_discoveredTags;
    self->_discoveredTags = orderedSet;

    discoveredTags = self->_discoveredTags;
  }

  unionSelectedTags = [(DOCTagEditorViewController *)self unionSelectedTags];
  v7 = [unionSelectedTags set];
  [(NSMutableOrderedSet *)discoveredTags unionSet:v7];

  v8 = self->_discoveredTags;
  userTags = [(DOCTagEditorViewController *)self userTags];
  [(NSMutableOrderedSet *)v8 minusOrderedSet:userTags];

  v10 = self->_discoveredTags;
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"displayName" ascending:1 selector:sel_localizedStandardCompare_];
  v13[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(NSMutableOrderedSet *)v10 sortUsingDescriptors:v12];
}

- (void)_updatePreferredContentSize:(BOOL)size
{
  sizeCopy = size;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__DOCTagEditorViewController__updatePreferredContentSize___block_invoke;
  aBlock[3] = &unk_278FA2420;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  collectionView = [(DOCTagEditorViewController *)self collectionView];
  v7 = collectionView;
  if (sizeCopy)
  {
    [collectionView setNeedsLayout];

    collectionView2 = [(DOCTagEditorViewController *)self collectionView];
    [collectionView2 layoutIfNeeded];

    v5[2](v5, 1);
  }

  else
  {
    [collectionView performBatchUpdates:&__block_literal_global_79 completion:v5];
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

- (void)_updateSelectionForSection:(unint64_t)section withTags:(id)tags
{
  tagsCopy = tags;
  v6 = [tagsCopy count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [tagsCopy objectAtIndexedSubscript:i];
      v10 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:section];
      intersectionSelectedTags = [(DOCTagEditorViewController *)self intersectionSelectedTags];
      v12 = [intersectionSelectedTags containsObject:v9];

      collectionView = [(DOCTagEditorViewController *)self collectionView];
      v14 = collectionView;
      if (v12)
      {
        [collectionView selectItemAtIndexPath:v10 animated:0 scrollPosition:0];
      }

      else
      {
        [collectionView deselectItemAtIndexPath:v10 animated:0];
      }
    }
  }
}

- (void)_updateMixedSelectionForCell:(id)cell
{
  cellCopy = cell;
  tagValue = [cellCopy tagValue];
  intersectionSelectedTags = [(DOCTagEditorViewController *)self intersectionSelectedTags];
  if ([intersectionSelectedTags containsObject:tagValue])
  {
    [cellCopy setMixedSelection:0];
  }

  else
  {
    unionSelectedTags = [(DOCTagEditorViewController *)self unionSelectedTags];
    [cellCopy setMixedSelection:{objc_msgSend(unionSelectedTags, "containsObject:", tagValue)}];
  }
}

- (void)_updateSelection
{
  collectionView = [(DOCTagEditorViewController *)self collectionView];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__DOCTagEditorViewController__updateSelection__block_invoke_2;
  v4[3] = &unk_278FA2420;
  v4[4] = self;
  [collectionView performBatchUpdates:&__block_literal_global_82 completion:v4];
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
  if (!self->_useParentNavigationItem || (-[DOCTagEditorViewController parentViewController](self, "parentViewController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 navigationItem], navigationItem = objc_claimAutoreleasedReturnValue(), v3, !navigationItem))
  {
    navigationItem = [(DOCTagEditorViewController *)self navigationItem];
  }

  return navigationItem;
}

- (void)_updateNavigationItem
{
  if ([(DOCTagEditorViewController *)self isAddingTag])
  {
    navigationTitleForTagMaker = [(DOCTagEditorViewController *)self navigationTitleForTagMaker];
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
    navigationTitleForTagMaker = ;
  }

  v4 = navigationTitleForTagMaker;
  [(DOCTagEditorViewController *)self setTitle:navigationTitleForTagMaker];

  effectiveNavigationItem = [(DOCTagEditorViewController *)self effectiveNavigationItem];
  if (self->_useParentNavigationItem)
  {
    title = [(DOCTagEditorViewController *)self title];
    parentViewController = [(DOCTagEditorViewController *)self parentViewController];
    [parentViewController setTitle:title];

    isAddingTag = [(DOCTagEditorViewController *)self isAddingTag];
  }

  else
  {
    isAddingTag = [(DOCTagEditorViewController *)self inTagListMode];
  }

  [effectiveNavigationItem setHidesBackButton:isAddingTag];
  v8 = _DocumentManagerBundle();
  v9 = [v8 localizedStringForKey:@"Back" value:@"Back" table:@"Localizable"];
  [effectiveNavigationItem setBackButtonTitle:v9];

  if ([(DOCTagEditorViewController *)self isAddingTag])
  {
    cancelButton = [(DOCTagEditorViewController *)self cancelButton];
    [effectiveNavigationItem setLeftBarButtonItem:cancelButton];

    mEMORY[0x277D06268] = [MEMORY[0x277D06268] sharedInstance];
    addTagCurrentTextValue = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
    v13 = [mEMORY[0x277D06268] isValidNewTagName:addTagCurrentTextValue];
    doneButton = [(DOCTagEditorViewController *)self doneButton];
    [doneButton setEnabled:v13];

    doneButton2 = [(DOCTagEditorViewController *)self doneButton];
    v16 = effectiveNavigationItem;
    v17 = doneButton2;
  }

  else
  {
    if ([(DOCTagEditorViewController *)self isInfoInPopoverMode]|| ([(DOCTagEditorViewController *)self _isInPopoverPresentation]& 1) != 0)
    {
      doneButton2 = 0;
    }

    else
    {
      doneButton2 = [(DOCTagEditorViewController *)self closeButton];
    }

    closeButton = [(DOCTagEditorViewController *)self closeButton];
    [closeButton setEnabled:1];

    navigationController = [(DOCTagEditorViewController *)self navigationController];
    if (navigationController)
    {
      v20 = navigationController;
      navigationController2 = [(DOCTagEditorViewController *)self navigationController];
      viewControllers = [navigationController2 viewControllers];
      firstObject = [viewControllers firstObject];
      v24 = firstObject;
      if (firstObject == self)
      {
      }

      else
      {
        hidesBackButton = [effectiveNavigationItem hidesBackButton];

        if ((hidesBackButton & 1) == 0)
        {
          [effectiveNavigationItem setRightBarButtonItem:doneButton2];
          [effectiveNavigationItem setLeftBarButtonItem:0];
          goto LABEL_23;
        }
      }
    }

    [effectiveNavigationItem setLeftBarButtonItem:doneButton2];
    v16 = effectiveNavigationItem;
    v17 = 0;
  }

  [v16 setRightBarButtonItem:v17];
LABEL_23:
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  if (self->_items != itemsCopy)
  {
    v7 = itemsCopy;
    if (![(NSArray *)itemsCopy count])
    {
      [(DOCTagEditorViewController *)a2 setItems:?];
    }

    objc_storeStrong(&self->_items, items);
    [(DOCTagEditorViewController *)self setUserChangedTags:0];
    [(DOCTagEditorViewController *)self setTagsWithItems:v7];
    itemsCopy = v7;
  }
}

- (void)setTagsWithItems:(id)items
{
  items = [(DOCTagEditorViewController *)self items];
  v5 = [items objectAtIndexedSubscript:0];
  tags = [v5 tags];
  v18 = DOCTagsFromFPTags();

  v7 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v18];
  v8 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v18];
  items2 = [(DOCTagEditorViewController *)self items];
  v10 = [items2 count];

  if (v10 >= 2)
  {
    for (i = 1; i != v10; ++i)
    {
      v12 = MEMORY[0x277CBEB98];
      items3 = [(DOCTagEditorViewController *)self items];
      v14 = [items3 objectAtIndexedSubscript:i];
      tags2 = [v14 tags];
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

- (void)setSelectedTags:(id)tags
{
  v4 = MEMORY[0x277CBEB40];
  tagsCopy = tags;
  v6 = [[v4 alloc] initWithArray:tagsCopy];
  [(DOCTagEditorViewController *)self setIntersectionSelectedTags:v6];

  v7 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:tagsCopy];
  [(DOCTagEditorViewController *)self setUnionSelectedTags:v7];

  [(DOCTagEditorViewController *)self updateSelectedTags];
}

- (void)updateSelectedTags
{
  [(DOCTagEditorViewController *)self updateDiscoveredTags];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  [indexSet addIndex:0];
  collectionView = [(DOCTagEditorViewController *)self collectionView];
  [collectionView reloadSections:indexSet];

  [(DOCTagEditorViewController *)self _updateSelection];
}

- (void)setAddingTag:(BOOL)tag
{
  if (self->_addingTag != tag)
  {
    self->_addingTag = tag;
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    [indexSet addIndex:0];
    collectionView = [(DOCTagEditorViewController *)self collectionView];
    [collectionView reloadSections:indexSet];

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
  container = [v2 container];
  [container maxHeight];
  v5 = v4;

  return v5;
}

- (void)scheduleSetTagsOperationWithTag:(id)tag adding:(BOOL)adding
{
  v46 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  items = self->_items;
  if (items)
  {
    v37 = tagCopy;
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](items, "count")}];
    v8 = MEMORY[0x277CBEB70];
    intersectionSelectedTags = [(DOCTagEditorViewController *)self intersectionSelectedTags];
    array = [intersectionSelectedTags array];
    v11 = FPTagsFromDOCTags();
    v12 = [v8 orderedSetWithArray:v11];

    v13 = MEMORY[0x277CBEB70];
    unionSelectedTags = [(DOCTagEditorViewController *)self unionSelectedTags];
    array2 = [unionSelectedTags array];
    v16 = FPTagsFromDOCTags();
    v17 = [v13 orderedSetWithArray:v16];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    selfCopy = self;
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
          tags = [*(*(&v41 + 1) + 8 * i) tags];
          v25 = [v23 orderedSetWithArray:tags];

          v26 = [v12 set];
          [v25 unionSet:v26];

          v27 = [v17 set];
          [v25 intersectSet:v27];

          array3 = [v25 array];
          [v7 addObject:array3];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v20);
    }

    v29 = objc_alloc(MEMORY[0x277D06258]);
    v30 = selfCopy->_items;
    mEMORY[0x277D06278] = [MEMORY[0x277D06278] shared];
    v32 = [v29 initWithItems:v30 tagsLists:v7 isUndoable:1 shouldClearUndoStack:0 undoManager:mEMORY[0x277D06278]];

    v33 = selfCopy->_items;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __69__DOCTagEditorViewController_scheduleSetTagsOperationWithTag_adding___block_invoke;
    v38[3] = &unk_278FA2380;
    tagCopy = v37;
    v39 = v37;
    v40 = v33;
    v34 = v33;
    [v32 setActionCompletionBlock:v38];
    defaultManager = [MEMORY[0x277CC6408] defaultManager];
    [defaultManager scheduleAction:v32];
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

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v5 = [pathCopy section] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_tagForIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] || (v5 = objc_msgSend(pathCopy, "item"), -[DOCTagEditorViewController combinedTags](self, "combinedTags"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v9 = 0;
  }

  else
  {
    combinedTags = [(DOCTagEditorViewController *)self combinedTags];
    v9 = [combinedTags objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  }

  return v9;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] != 1)
  {
    collectionView = [(DOCTagEditorViewController *)self collectionView];
    v9 = [collectionView cellForItemAtIndexPath:pathCopy];

    v11 = [(DOCTagEditorViewController *)self _tagForIndexPath:pathCopy];
    if (v11)
    {
      [v9 setMixedSelection:0];
      [(DOCTagEditorViewController *)self selectTag:v11];
    }

    goto LABEL_6;
  }

  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  if ([(DOCTagEditorViewController *)self isAddingTag])
  {
    v7 = MEMORY[0x277CCAA70];
    combinedTags = [(DOCTagEditorViewController *)self combinedTags];
    v9 = [v7 indexPathForItem:objc_msgSend(combinedTags inSection:{"count"), 0}];

    collectionView2 = [(DOCTagEditorViewController *)self collectionView];
    v11 = [collectionView2 cellForItemAtIndexPath:v9];

    contentView = [v11 contentView];
    [contentView becomeFirstResponder];

LABEL_6:
    goto LABEL_8;
  }

  [(DOCTagEditorViewController *)self startNewTag];
LABEL_8:
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(DOCTagEditorViewController *)self _tagForIndexPath:?];
  if (v5)
  {
    collectionView = [(DOCTagEditorViewController *)self collectionView];
    v7 = [collectionView cellForItemAtIndexPath:pathCopy];

    [v7 setMixedSelection:0];
    [(DOCTagEditorViewController *)self deselectTag:v5];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  sectionCopy = section;
  if (section != 1)
  {
    if (section)
    {
      return 0;
    }

    else
    {
      combinedTags = [(DOCTagEditorViewController *)self combinedTags];
      isAddingTag = [(DOCTagEditorViewController *)self isAddingTag];
      sectionCopy = [combinedTags count] + isAddingTag;
    }
  }

  return sectionCopy;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__DOCTagEditorViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v23[3] = &unk_278FA2448;
  v9 = viewCopy;
  v24 = v9;
  v10 = pathCopy;
  v25 = v10;
  v11 = [(DOCTagEditorViewController *)self cellForIndexPath:v10 dequeueCell:v23];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"DOCTagEditorViewController.m" lineNumber:620 description:{@"Unexpected class type of cell: %@", v11}];
  }

  if ([v10 section] != 1 && !objc_msgSend(v10, "section"))
  {
    v13 = v11;
    if ([(DOCTagEditorViewController *)self isAddingTag])
    {
      item = [v10 item];
      combinedTags = [(DOCTagEditorViewController *)self combinedTags];
      if (item != [combinedTags count])
      {
LABEL_10:

        goto LABEL_11;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        combinedTags = v13;
        [combinedTags layoutIfNeeded];
        [combinedTags setTextEditingDelegate:self];
        [combinedTags setTagValue:0];
        [combinedTags updateContentConfiguration];
        addTagCurrentTextValue = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v19 = [addTagCurrentTextValue stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
        v20 = [v19 length];

        if (v20)
        {
          addTagCurrentTextValue2 = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
          [combinedTags updateTextFieldLayoutWithText:addTagCurrentTextValue2];
        }

        goto LABEL_10;
      }
    }

LABEL_11:
  }

  return v11;
}

- (id)cellForIndexPath:(id)path dequeueCell:(id)cell
{
  pathCopy = path;
  cellCopy = cell;
  section = [pathCopy section];
  if (section)
  {
    if (section == 1)
    {
      v9 = cellCopy[2](cellCopy, @"DOCTagEditorAddTagCell");
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (-[DOCTagEditorViewController isAddingTag](self, "isAddingTag") && (v10 = [pathCopy item], -[DOCTagEditorViewController combinedTags](self, "combinedTags"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10 == v12))
    {
      v13 = @"DOCTagEditorNewTagCell";
    }

    else
    {
      v13 = @"DOCTagEditorTagCell";
    }

    v9 = cellCopy[2](cellCopy, v13);
    v14 = [(DOCTagEditorViewController *)self _tagForIndexPath:pathCopy];
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
  combinedTags = [(DOCTagEditorViewController *)self combinedTags];
  v9 = [v3 indexPathForItem:objc_msgSend(combinedTags inSection:{"count"), 0}];

  collectionView = [(DOCTagEditorViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:v9];

  contentView = [v6 contentView];
  [contentView becomeFirstResponder];

  [v6 updateTextFieldLayoutWithText:0];
  [v6 setCurrentNewTagInputText:0];
  collectionView2 = [(DOCTagEditorViewController *)self collectionView];
  [collectionView2 selectItemAtIndexPath:v9 animated:1 scrollPosition:0];
}

- (BOOL)commitNewTag
{
  v3 = MEMORY[0x277D06268];
  addTagCurrentTextValue = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
  v5 = [v3 sanitizedTagName:addTagCurrentTextValue];

  if ([(DOCTagEditorViewController *)self isAddingTag]|| !v5)
  {
    collectionView = [(DOCTagEditorViewController *)self collectionView];
    v8 = MEMORY[0x277CCAA70];
    combinedTags = [(DOCTagEditorViewController *)self combinedTags];
    v10 = [v8 indexPathForRow:objc_msgSend(combinedTags inSection:{"count"), 0}];
    v11 = [collectionView cellForItemAtIndexPath:v10];

    [v11 setCurrentNewTagInputText:0];
    -[DOCTagEditorViewController setAddTagCurrentColor:](self, "setAddTagCurrentColor:", [v11 newTagColor]);
    v12 = [objc_alloc(MEMORY[0x277D06260]) initWithDisplayName:v5 labelIndex:-[DOCTagEditorViewController addTagCurrentColor](self type:{"addTagCurrentColor"), 1}];
    mEMORY[0x277D06268] = [MEMORY[0x277D06268] sharedInstance];
    v6 = [mEMORY[0x277D06268] insertTag:v12 atIndex:0];

    if (v6)
    {
      delegate = [(DOCTagEditorViewController *)self delegate];
      [delegate tagEditor:self userDidCreateTag:v12];

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
  collectionView = [(DOCTagEditorViewController *)self collectionView];
  [collectionView scrollToItemAtIndexPath:v4 atScrollPosition:1 animated:1];
}

- (void)tagEditorCell:(id)cell didEndEditingWithText:(id)text
{
  v25 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  textCopy = text;
  v8 = cellCopy;
  v9 = [textCopy copy];
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
    recursiveDescription = [v8 recursiveDescription];
    addTagCurrentTextValue = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
    v15 = 136316162;
    v16 = "[DOCTagEditorViewController tagEditorCell:didEndEditingWithText:]";
    v17 = 2112;
    v18 = textCopy;
    v19 = 2112;
    v20 = recursiveDescription;
    v21 = 2112;
    v22 = addTagCurrentTextValue;
    v23 = 2048;
    addTagCurrentColor = [(DOCTagEditorViewController *)self addTagCurrentColor];
    _os_log_impl(&dword_2493AC000, v12, OS_LOG_TYPE_INFO, "%s User did end editing with text: %@, cell: %@, addTagCurrentTextValue: %@, addTagCurrentColor: %ld", &v15, 0x34u);
  }
}

- (void)tagEditorCell:(id)cell didUpdateText:(id)text
{
  v24 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  textCopy = text;
  v8 = [textCopy copy];
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
    recursiveDescription = [cellCopy recursiveDescription];
    addTagCurrentTextValue = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
    v14 = 136316162;
    v15 = "[DOCTagEditorViewController tagEditorCell:didUpdateText:]";
    v16 = 2112;
    v17 = textCopy;
    v18 = 2112;
    v19 = recursiveDescription;
    v20 = 2112;
    v21 = addTagCurrentTextValue;
    v22 = 2048;
    addTagCurrentColor = [(DOCTagEditorViewController *)self addTagCurrentColor];
    _os_log_impl(&dword_2493AC000, v11, OS_LOG_TYPE_INFO, "%s User did update text: %@, cell: %@, addTagCurrentTextValue: %@, addTagCurrentColor: %ld", &v14, 0x34u);
  }

  [(DOCTagEditorViewController *)self _updateNavigationItem];
}

- (BOOL)tagEditorCellShouldBeginEditing:(id)editing
{
  v19 = *MEMORY[0x277D85DE8];
  editingCopy = editing;
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
    recursiveDescription = [editingCopy recursiveDescription];
    addTagCurrentTextValue = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
    v11 = 136315906;
    v12 = "[DOCTagEditorViewController tagEditorCellShouldBeginEditing:]";
    v13 = 2112;
    v14 = recursiveDescription;
    v15 = 2112;
    v16 = addTagCurrentTextValue;
    v17 = 2048;
    addTagCurrentColor = [(DOCTagEditorViewController *)self addTagCurrentColor];
    _os_log_impl(&dword_2493AC000, v7, OS_LOG_TYPE_INFO, "%s Cell should begin editing, cell: %@, addTagCurrentTextValue: %@, addTagCurrentColor: %ld", &v11, 0x2Au);
  }

  return 1;
}

- (BOOL)tagEditorCellShouldEndEditing:(id)editing
{
  v22 = *MEMORY[0x277D85DE8];
  editingCopy = editing;
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
    recursiveDescription = [editingCopy recursiveDescription];
    addTagCurrentTextValue = [(DOCTagEditorViewController *)self addTagCurrentTextValue];
    v14 = 136315906;
    v15 = "[DOCTagEditorViewController tagEditorCellShouldEndEditing:]";
    v16 = 2112;
    v17 = recursiveDescription;
    v18 = 2112;
    v19 = addTagCurrentTextValue;
    v20 = 2048;
    addTagCurrentColor = [(DOCTagEditorViewController *)self addTagCurrentColor];
    _os_log_impl(&dword_2493AC000, v7, OS_LOG_TYPE_INFO, "%s Cell should end editing, cell: %@, addTagCurrentTextValue: %@, addTagCurrentColor: %ld", &v14, 0x2Au);
  }

  if ([(DOCTagEditorViewController *)self isAddingTag])
  {
    v10 = [(DOCTagEditorViewController *)self _existingPresentationControllerImmediate:0 effective:0];
    dismissing = [v10 dismissing];

    v12 = dismissing ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)selectTag:(id)tag
{
  tagCopy = tag;
  intersectionSelectedTags = [(DOCTagEditorViewController *)self intersectionSelectedTags];
  [intersectionSelectedTags addObject:tagCopy];

  unionSelectedTags = [(DOCTagEditorViewController *)self unionSelectedTags];
  [unionSelectedTags addObject:tagCopy];

  [(DOCTagEditorViewController *)self setUserChangedTags:1];
  delegate = [(DOCTagEditorViewController *)self delegate];
  [delegate tagEditor:self userDidSelectTag:tagCopy];
}

- (void)deselectTag:(id)tag
{
  tagCopy = tag;
  intersectionSelectedTags = [(DOCTagEditorViewController *)self intersectionSelectedTags];
  [intersectionSelectedTags removeObject:tagCopy];

  unionSelectedTags = [(DOCTagEditorViewController *)self unionSelectedTags];
  [unionSelectedTags removeObject:tagCopy];

  [(DOCTagEditorViewController *)self setUserChangedTags:1];
  delegate = [(DOCTagEditorViewController *)self delegate];
  [delegate tagEditor:self userDidDeselectTag:tagCopy];
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