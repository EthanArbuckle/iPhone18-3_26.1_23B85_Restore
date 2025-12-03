@interface LUILogFilterViewController
- (BOOL)textFieldShouldClear:(id)clear;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (LUILogFilterViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)predicateComparisonCandidates;
- (id)predicateKeyCandidates;
- (id)predicateValueCandidates;
- (id)predicateValueCandidatesSize;
- (id)sizeArrayWithStrings:(id)strings;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_clearCellsSelection;
- (void)_clearPredicateInput;
- (void)_setupButtons;
- (void)_setupCollectionView;
- (void)_setupTableView;
- (void)_shakeInputView:(id)view;
- (void)_updatePredicateText;
- (void)addButtonTapped:(id)tapped;
- (void)applyButtonTapped:(id)tapped;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)predicateDataUpdated;
- (void)predicateTableViewCellDeleteButtonTapped:(id)tapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation LUILogFilterViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(LUILogFilterViewController *)self setFilterView:v3];
  [(LUILogFilterViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = LUILogFilterViewController;
  [(LUILogFilterViewController *)&v5 viewDidLoad];
  [(LUILogFilterViewController *)self _setupTableView];
  [(LUILogFilterViewController *)self _setupCollectionView];
  [(LUILogFilterViewController *)self _setupButtons];
  filterView = [(LUILogFilterViewController *)self filterView];
  predicateTextField = [filterView predicateTextField];
  [predicateTextField setDelegate:self];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = LUILogFilterViewController;
  [(LUILogFilterViewController *)&v10 viewDidAppear:appear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

  delegate = [(LUILogFilterViewController *)self delegate];
  v7 = [delegate logFilterViewControllerShouldAllowTextEditing:self];
  filterView = [(LUILogFilterViewController *)self filterView];
  predicateTextField = [filterView predicateTextField];
  [predicateTextField setEnabled:v7];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = LUILogFilterViewController;
  [(LUILogFilterViewController *)&v5 viewDidDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = LUILogFilterViewController;
  [(LUILogFilterViewController *)&v9 viewWillLayoutSubviews];
  filterView = [(LUILogFilterViewController *)self filterView];
  predicatesKeyCandidateCollectionView = [filterView predicatesKeyCandidateCollectionView];
  collectionViewLayout = [predicatesKeyCandidateCollectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  filterView2 = [(LUILogFilterViewController *)self filterView];
  predicatesComparisonCandidateCollectionView = [filterView2 predicatesComparisonCandidateCollectionView];
  collectionViewLayout2 = [predicatesComparisonCandidateCollectionView collectionViewLayout];
  [collectionViewLayout2 invalidateLayout];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = LUILogFilterViewController;
  [(LUILogFilterViewController *)&v9 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  delegate = [(LUILogFilterViewController *)self delegate];
  v6 = [delegate logFilterViewControllerShouldAllowTextEditing:self];
  filterView = [(LUILogFilterViewController *)self filterView];
  predicateTextField = [filterView predicateTextField];
  [predicateTextField setUserInteractionEnabled:v6];
}

- (void)_setupTableView
{
  filterView = [(LUILogFilterViewController *)self filterView];
  existingPredicatesTableView = [filterView existingPredicatesTableView];
  [existingPredicatesTableView setDelegate:self];

  filterView2 = [(LUILogFilterViewController *)self filterView];
  existingPredicatesTableView2 = [filterView2 existingPredicatesTableView];
  [existingPredicatesTableView2 setDataSource:self];

  filterView3 = [(LUILogFilterViewController *)self filterView];
  existingPredicatesTableView3 = [filterView3 existingPredicatesTableView];
  [existingPredicatesTableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"currentPredicateCell"];
}

- (void)_setupCollectionView
{
  filterView = [(LUILogFilterViewController *)self filterView];
  predicatesKeyCandidateCollectionView = [filterView predicatesKeyCandidateCollectionView];
  [predicatesKeyCandidateCollectionView setDelegate:self];

  filterView2 = [(LUILogFilterViewController *)self filterView];
  predicatesKeyCandidateCollectionView2 = [filterView2 predicatesKeyCandidateCollectionView];
  [predicatesKeyCandidateCollectionView2 setDataSource:self];

  filterView3 = [(LUILogFilterViewController *)self filterView];
  predicatesComparisonCandidateCollectionView = [filterView3 predicatesComparisonCandidateCollectionView];
  [predicatesComparisonCandidateCollectionView setDelegate:self];

  filterView4 = [(LUILogFilterViewController *)self filterView];
  predicatesComparisonCandidateCollectionView2 = [filterView4 predicatesComparisonCandidateCollectionView];
  [predicatesComparisonCandidateCollectionView2 setDataSource:self];

  filterView5 = [(LUILogFilterViewController *)self filterView];
  predicatesValueCandidateCollectionView = [filterView5 predicatesValueCandidateCollectionView];
  [predicatesValueCandidateCollectionView setDelegate:self];

  filterView6 = [(LUILogFilterViewController *)self filterView];
  predicatesValueCandidateCollectionView2 = [filterView6 predicatesValueCandidateCollectionView];
  [predicatesValueCandidateCollectionView2 setDataSource:self];

  filterView7 = [(LUILogFilterViewController *)self filterView];
  predicatesKeyCandidateCollectionView3 = [filterView7 predicatesKeyCandidateCollectionView];
  [predicatesKeyCandidateCollectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"candidateCell"];

  filterView8 = [(LUILogFilterViewController *)self filterView];
  predicatesComparisonCandidateCollectionView3 = [filterView8 predicatesComparisonCandidateCollectionView];
  [predicatesComparisonCandidateCollectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"candidateCell"];

  filterView9 = [(LUILogFilterViewController *)self filterView];
  predicatesValueCandidateCollectionView3 = [filterView9 predicatesValueCandidateCollectionView];
  [predicatesValueCandidateCollectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"candidateCell"];

  filterView10 = [(LUILogFilterViewController *)self filterView];
  predicatesValueCandidateCollectionView4 = [filterView10 predicatesValueCandidateCollectionView];
  [predicatesValueCandidateCollectionView4 setAllowsMultipleSelection:1];
}

- (void)_setupButtons
{
  filterView = [(LUILogFilterViewController *)self filterView];
  addButton = [filterView addButton];
  [addButton addTarget:self action:sel_addButtonTapped_ forControlEvents:64];

  filterView2 = [(LUILogFilterViewController *)self filterView];
  applyButton = [filterView2 applyButton];
  [applyButton addTarget:self action:sel_applyButtonTapped_ forControlEvents:64];
}

- (void)predicateDataUpdated
{
  filterView = [(LUILogFilterViewController *)self filterView];
  existingPredicatesTableView = [filterView existingPredicatesTableView];
  [existingPredicatesTableView reloadData];
}

- (id)predicateKeyCandidates
{
  if (predicateKeyCandidates_onceToken != -1)
  {
    [LUILogFilterViewController predicateKeyCandidates];
  }

  v3 = predicateKeyCandidates_candidates;

  return v3;
}

void __52__LUILogFilterViewController_predicateKeyCandidates__block_invoke()
{
  v0 = predicateKeyCandidates_candidates;
  predicateKeyCandidates_candidates = &unk_286841AD8;
}

- (id)predicateComparisonCandidates
{
  if (predicateComparisonCandidates_onceToken != -1)
  {
    [LUILogFilterViewController predicateComparisonCandidates];
  }

  v3 = predicateComparisonCandidates_candidates;

  return v3;
}

void __59__LUILogFilterViewController_predicateComparisonCandidates__block_invoke()
{
  v0 = predicateComparisonCandidates_candidates;
  predicateComparisonCandidates_candidates = &unk_286841AF0;
}

- (id)predicateValueCandidates
{
  if (predicateValueCandidates_onceToken != -1)
  {
    [LUILogFilterViewController predicateValueCandidates];
  }

  v3 = predicateValueCandidates_candidates;

  return v3;
}

void __54__LUILogFilterViewController_predicateValueCandidates__block_invoke()
{
  v0 = predicateValueCandidates_candidates;
  predicateValueCandidates_candidates = &unk_286841B08;
}

- (id)predicateValueCandidatesSize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__LUILogFilterViewController_predicateValueCandidatesSize__block_invoke;
  block[3] = &unk_2798284C0;
  block[4] = self;
  if (predicateValueCandidatesSize_onceToken != -1)
  {
    dispatch_once(&predicateValueCandidatesSize_onceToken, block);
  }

  return predicateValueCandidatesSize_candidatesSize;
}

void __58__LUILogFilterViewController_predicateValueCandidatesSize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 predicateValueCandidates];
  v2 = [v1 sizeArrayWithStrings:v4];
  v3 = predicateValueCandidatesSize_candidatesSize;
  predicateValueCandidatesSize_candidatesSize = v2;
}

- (id)sizeArrayWithStrings:(id)strings
{
  v34 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = stringsCopy;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v8 = *MEMORY[0x277D740A8];
    v9 = *MEMORY[0x277D74410];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v31 = v8;
        v12 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:v9];
        v32 = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        [v11 boundingRectWithSize:1 options:v13 attributes:0 context:{1000.0, 30.0}];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v26[0] = v15;
        v26[1] = v17;
        *&v26[2] = v19 + 22.0;
        v26[3] = v21;
        v22 = [MEMORY[0x277CCAE60] valueWithBytes:v26 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        [v4 addObject:v22];
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v6);
  }

  v23 = [v4 copy];

  return v23;
}

- (void)_updatePredicateText
{
  v3 = objc_opt_new();
  filterView = [(LUILogFilterViewController *)self filterView];
  predicatesKeyCandidateCollectionView = [filterView predicatesKeyCandidateCollectionView];
  indexPathsForSelectedItems = [predicatesKeyCandidateCollectionView indexPathsForSelectedItems];

  filterView2 = [(LUILogFilterViewController *)self filterView];
  predicatesComparisonCandidateCollectionView = [filterView2 predicatesComparisonCandidateCollectionView];
  indexPathsForSelectedItems2 = [predicatesComparisonCandidateCollectionView indexPathsForSelectedItems];

  filterView3 = [(LUILogFilterViewController *)self filterView];
  predicatesValueCandidateCollectionView = [filterView3 predicatesValueCandidateCollectionView];
  indexPathsForSelectedItems3 = [predicatesValueCandidateCollectionView indexPathsForSelectedItems];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __50__LUILogFilterViewController__updatePredicateText__block_invoke;
  v28[3] = &unk_279828788;
  v13 = indexPathsForSelectedItems;
  v29 = v13;
  selfCopy = self;
  v14 = v3;
  v31 = v14;
  v15 = indexPathsForSelectedItems2;
  v32 = v15;
  v16 = MEMORY[0x259C5D960](v28);
  firstObject = [indexPathsForSelectedItems3 firstObject];

  if (firstObject)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __50__LUILogFilterViewController__updatePredicateText__block_invoke_2;
    v23 = &unk_2798287B0;
    v27 = v16;
    v24 = v14;
    selfCopy2 = self;
    v26 = indexPathsForSelectedItems3;
    [v26 enumerateObjectsUsingBlock:&v20];
  }

  else
  {
    (v16)[2](v16, v14);
  }

  v18 = [(LUILogFilterViewController *)self filterView:v20];
  predicateTextField = [v18 predicateTextField];
  [predicateTextField setText:v14];
}

void __50__LUILogFilterViewController__updatePredicateText__block_invoke(id *a1)
{
  v2 = [a1[4] firstObject];

  if (v2)
  {
    v3 = [a1[5] predicateKeyCandidates];
    v4 = [a1[4] firstObject];
    v5 = [v3 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

    v6 = a1[6];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", v5];
    [v6 appendString:v7];
  }

  v8 = [a1[7] firstObject];

  if (v8)
  {
    v9 = [a1[5] predicateComparisonCandidates];
    v10 = [a1[7] firstObject];
    v11 = [v9 objectAtIndexedSubscript:{objc_msgSend(v10, "row")}];

    [a1[6] appendString:v11];
  }
}

void __50__LUILogFilterViewController__updatePredicateText__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(v5 + 16);
  v8 = a2;
  v7(v5, v6);
  v9 = [*(a1 + 40) predicateValueCandidates];
  v10 = [v8 row];

  v15 = [v9 objectAtIndexedSubscript:v10];

  v11 = *(a1 + 32);
  v12 = MEMORY[0x277CCACA8];
  if ([*(a1 + 48) count] - 1 == a3)
  {
    v13 = &stru_28683EB38;
  }

  else
  {
    v13 = @" OR ";
  }

  v14 = [v12 stringWithFormat:@" '%@'%@", v15, v13];
  [v11 appendString:v14];
}

- (void)_clearCellsSelection
{
  v31 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  filterView = [(LUILogFilterViewController *)self filterView];
  predicatesKeyCandidateCollectionView = [filterView predicatesKeyCandidateCollectionView];
  v29[0] = predicatesKeyCandidateCollectionView;
  filterView2 = [(LUILogFilterViewController *)self filterView];
  predicatesComparisonCandidateCollectionView = [filterView2 predicatesComparisonCandidateCollectionView];
  v29[1] = predicatesComparisonCandidateCollectionView;
  filterView3 = [(LUILogFilterViewController *)self filterView];
  predicatesValueCandidateCollectionView = [filterView3 predicatesValueCandidateCollectionView];
  v29[2] = predicatesValueCandidateCollectionView;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];

  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        indexPathsForSelectedItems = [v14 indexPathsForSelectedItems];
        v16 = [indexPathsForSelectedItems countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v21;
          do
          {
            v19 = 0;
            do
            {
              if (*v21 != v18)
              {
                objc_enumerationMutation(indexPathsForSelectedItems);
              }

              [v14 deselectItemAtIndexPath:*(*(&v20 + 1) + 8 * v19++) animated:0];
            }

            while (v17 != v19);
            v17 = [indexPathsForSelectedItems countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v17);
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }
}

- (void)_clearPredicateInput
{
  filterView = [(LUILogFilterViewController *)self filterView];
  predicateTextField = [filterView predicateTextField];
  [predicateTextField setText:0];

  [(LUILogFilterViewController *)self _clearCellsSelection];
}

- (void)_shakeInputView:(id)view
{
  v3 = MEMORY[0x277CD9E10];
  viewCopy = view;
  v15 = [v3 animationWithKeyPath:@"position"];
  [v15 setDuration:0.05];
  LODWORD(v5) = 2.0;
  [v15 setRepeatCount:v5];
  [v15 setAutoreverses:1];
  v6 = MEMORY[0x277CCAE60];
  [viewCopy center];
  v8 = v7 + -15.0;
  [viewCopy center];
  v9 = [v6 valueWithCGPoint:v8];
  [v15 setFromValue:v9];

  v10 = MEMORY[0x277CCAE60];
  [viewCopy center];
  v12 = v11 + 15.0;
  [viewCopy center];
  v13 = [v10 valueWithCGPoint:v12];
  [v15 setToValue:v13];

  layer = [viewCopy layer];

  [layer addAnimation:v15 forKey:@"position"];
}

- (void)addButtonTapped:(id)tapped
{
  v40[1] = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  filterView = [(LUILogFilterViewController *)self filterView];
  predicateTextField = [filterView predicateTextField];
  text = [predicateTextField text];

  LODWORD(predicateTextField) = [text length] == 0;
  filterView2 = [(LUILogFilterViewController *)self filterView];
  v7 = filterView2;
  if (predicateTextField)
  {
    predicateTextField2 = [filterView2 predicateTextField];
    [(LUILogFilterViewController *)self _shakeInputView:predicateTextField2];
  }

  else
  {
    predicatesValueCandidateCollectionView = [filterView2 predicatesValueCandidateCollectionView];
    indexPathsForSelectedItems = [predicatesValueCandidateCollectionView indexPathsForSelectedItems];
    if ([indexPathsForSelectedItems count])
    {
      filterView3 = [(LUILogFilterViewController *)self filterView];
      predicatesKeyCandidateCollectionView = [filterView3 predicatesKeyCandidateCollectionView];
      indexPathsForSelectedItems2 = [predicatesKeyCandidateCollectionView indexPathsForSelectedItems];
      if ([indexPathsForSelectedItems2 count])
      {
        filterView4 = [(LUILogFilterViewController *)self filterView];
        predicatesComparisonCandidateCollectionView = [filterView4 predicatesComparisonCandidateCollectionView];
        indexPathsForSelectedItems3 = [predicatesComparisonCandidateCollectionView indexPathsForSelectedItems];
        v37 = [indexPathsForSelectedItems3 count] != 0;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }

    filterView5 = [(LUILogFilterViewController *)self filterView];
    predicatesValueCandidateCollectionView2 = [filterView5 predicatesValueCandidateCollectionView];
    indexPathsForSelectedItems4 = [predicatesValueCandidateCollectionView2 indexPathsForSelectedItems];
    if ([indexPathsForSelectedItems4 count])
    {
      v20 = 0;
    }

    else
    {
      filterView6 = [(LUILogFilterViewController *)self filterView];
      predicatesKeyCandidateCollectionView2 = [filterView6 predicatesKeyCandidateCollectionView];
      indexPathsForSelectedItems5 = [predicatesKeyCandidateCollectionView2 indexPathsForSelectedItems];
      if ([indexPathsForSelectedItems5 count])
      {
        v20 = 0;
      }

      else
      {
        filterView7 = [(LUILogFilterViewController *)self filterView];
        predicatesComparisonCandidateCollectionView2 = [filterView7 predicatesComparisonCandidateCollectionView];
        indexPathsForSelectedItems6 = [predicatesComparisonCandidateCollectionView2 indexPathsForSelectedItems];
        v36 = filterView7;
        v20 = [indexPathsForSelectedItems6 count] == 0;
      }
    }

    if (v37 || v20)
    {
      v27 = MEMORY[0x277CCAC30];
      filterView8 = [(LUILogFilterViewController *)self filterView];
      predicateTextField3 = [filterView8 predicateTextField];
      text2 = [predicateTextField3 text];
      v31 = [v27 predicateWithFormat:text2];

      delegate = [(LUILogFilterViewController *)self delegate];
      v40[0] = v31;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
      [delegate logFilterViewController:self didAddPredicates:v33];

      [(LUILogFilterViewController *)self _clearPredicateInput];
    }

    else
    {
      filterView9 = [(LUILogFilterViewController *)self filterView];
      predicateTextField4 = [filterView9 predicateTextField];
      [(LUILogFilterViewController *)self _shakeInputView:predicateTextField4];
    }
  }
}

- (void)applyButtonTapped:(id)tapped
{
  delegate = [(LUILogFilterViewController *)self delegate];
  [delegate logFilterViewControllerApplyButtonTapped:self];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"candidateCell" forIndexPath:pathCopy];
  filterView = [(LUILogFilterViewController *)self filterView];
  predicatesKeyCandidateCollectionView = [filterView predicatesKeyCandidateCollectionView];

  if (predicatesKeyCandidateCollectionView == viewCopy)
  {
    predicateKeyCandidates = [(LUILogFilterViewController *)self predicateKeyCandidates];
  }

  else
  {
    filterView2 = [(LUILogFilterViewController *)self filterView];
    predicatesComparisonCandidateCollectionView = [filterView2 predicatesComparisonCandidateCollectionView];

    if (predicatesComparisonCandidateCollectionView == viewCopy)
    {
      predicateKeyCandidates = [(LUILogFilterViewController *)self predicateComparisonCandidates];
    }

    else
    {
      filterView3 = [(LUILogFilterViewController *)self filterView];
      predicatesValueCandidateCollectionView = [filterView3 predicatesValueCandidateCollectionView];

      if (predicatesValueCandidateCollectionView != viewCopy)
      {
        goto LABEL_8;
      }

      predicateKeyCandidates = [(LUILogFilterViewController *)self predicateValueCandidates];
    }
  }

  v16 = predicateKeyCandidates;
  v17 = [predicateKeyCandidates objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  titleLabel = [v8 titleLabel];
  [titleLabel setText:v17];

LABEL_8:
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  cGColor = [whiteColor CGColor];
  layer = [v8 layer];
  [layer setBorderColor:cGColor];

  layer2 = [v8 layer];
  [layer2 setBorderWidth:1.5];

  layer3 = [v8 layer];
  [layer3 setCornerRadius:5.0];

  return v8;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  filterView = [(LUILogFilterViewController *)self filterView];
  predicatesKeyCandidateCollectionView = [filterView predicatesKeyCandidateCollectionView];

  if (predicatesKeyCandidateCollectionView == viewCopy)
  {
    predicateKeyCandidates = [(LUILogFilterViewController *)self predicateKeyCandidates];
LABEL_8:
    v14 = predicateKeyCandidates;
    v12 = [predicateKeyCandidates count];

    goto LABEL_9;
  }

  filterView2 = [(LUILogFilterViewController *)self filterView];
  predicatesComparisonCandidateCollectionView = [filterView2 predicatesComparisonCandidateCollectionView];

  if (predicatesComparisonCandidateCollectionView == viewCopy)
  {
    predicateKeyCandidates = [(LUILogFilterViewController *)self predicateComparisonCandidates];
    goto LABEL_8;
  }

  filterView3 = [(LUILogFilterViewController *)self filterView];
  predicatesValueCandidateCollectionView = [filterView3 predicatesValueCandidateCollectionView];

  if (predicatesValueCandidateCollectionView == viewCopy)
  {
    predicateKeyCandidates = [(LUILogFilterViewController *)self predicateValueCandidates];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  filterView = [(LUILogFilterViewController *)self filterView];
  predicatesValueCandidateCollectionView = [filterView predicatesValueCandidateCollectionView];

  if (predicatesValueCandidateCollectionView == viewCopy)
  {
    predicateValueCandidatesSize = [(LUILogFilterViewController *)self predicateValueCandidatesSize];
    v13 = [predicateValueCandidatesSize objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [v13 CGRectValue];
    v11 = v14;
  }

  else
  {
    [viewCopy frame];
    v11 = CGRectGetWidth(v18) + -20.0;
  }

  v15 = 30.0;
  v16 = v11;
  result.height = v15;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v5 = 0.0;
  v6 = 10.0;
  v7 = 0.0;
  v8 = 10.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"currentPredicateCell"];
  delegate = [(LUILogFilterViewController *)self delegate];
  v9 = [delegate currentPredicates:self];
  section = [pathCopy section];

  v11 = [v9 objectAtIndexedSubscript:section];
  predicateFormat = [v11 predicateFormat];
  titleLabel = [v7 titleLabel];
  [titleLabel setText:predicateFormat];

  [v7 setDelegate:self];

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  delegate = [(LUILogFilterViewController *)self delegate];
  v5 = [delegate currentPredicates:self];
  v6 = [v5 count];

  if (v6 <= 1)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(LUILogFilterViewController *)self delegate:view];
  v6 = [v5 currentPredicates:self];
  v7 = [v6 count] != 0;

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = objc_opt_new();
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:clearColor];

  return v4;
}

- (void)predicateTableViewCellDeleteButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  filterView = [(LUILogFilterViewController *)self filterView];
  existingPredicatesTableView = [filterView existingPredicatesTableView];
  v11 = [existingPredicatesTableView indexPathForCell:tappedCopy];

  delegate = [(LUILogFilterViewController *)self delegate];
  delegate2 = [(LUILogFilterViewController *)self delegate];
  v9 = [delegate2 currentPredicates:self];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v11, "section")}];
  [delegate logFilterViewController:self didDeletePredicate:v10];
}

- (BOOL)textFieldShouldClear:(id)clear
{
  clearCopy = clear;
  [(LUILogFilterViewController *)self _clearPredicateInput];
  isFirstResponder = [clearCopy isFirstResponder];
  if ((isFirstResponder & 1) == 0)
  {
    [clearCopy setText:0];
  }

  return isFirstResponder;
}

- (void)keyboardWillShow:(id)show
{
  delegate = [(LUILogFilterViewController *)self delegate];
  v5 = [delegate logFilterViewControllerShouldAllowTextEditing:self];

  if (v5)
  {
    CGAffineTransformMakeTranslation(&v8, 0.0, -200.0);
    filterView = [(LUILogFilterViewController *)self filterView];
    v7 = v8;
    [filterView setTransform:&v7];
  }
}

- (void)keyboardWillHide:(id)hide
{
  delegate = [(LUILogFilterViewController *)self delegate];
  v5 = [delegate logFilterViewControllerShouldAllowTextEditing:self];

  if (v5)
  {
    CGAffineTransformMakeTranslation(&v8, 0.0, 0.0);
    filterView = [(LUILogFilterViewController *)self filterView];
    v7 = v8;
    [filterView setTransform:&v7];
  }
}

- (LUILogFilterViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end