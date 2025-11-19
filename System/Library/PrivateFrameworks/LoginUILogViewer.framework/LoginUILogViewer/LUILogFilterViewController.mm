@interface LUILogFilterViewController
- (BOOL)textFieldShouldClear:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (LUILogFilterViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)predicateComparisonCandidates;
- (id)predicateKeyCandidates;
- (id)predicateValueCandidates;
- (id)predicateValueCandidatesSize;
- (id)sizeArrayWithStrings:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_clearCellsSelection;
- (void)_clearPredicateInput;
- (void)_setupButtons;
- (void)_setupCollectionView;
- (void)_setupTableView;
- (void)_shakeInputView:(id)a3;
- (void)_updatePredicateText;
- (void)addButtonTapped:(id)a3;
- (void)applyButtonTapped:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)predicateDataUpdated;
- (void)predicateTableViewCellDeleteButtonTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
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
  v3 = [(LUILogFilterViewController *)self filterView];
  v4 = [v3 predicateTextField];
  [v4 setDelegate:self];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = LUILogFilterViewController;
  [(LUILogFilterViewController *)&v10 viewDidAppear:a3];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];

  v6 = [(LUILogFilterViewController *)self delegate];
  v7 = [v6 logFilterViewControllerShouldAllowTextEditing:self];
  v8 = [(LUILogFilterViewController *)self filterView];
  v9 = [v8 predicateTextField];
  [v9 setEnabled:v7];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = LUILogFilterViewController;
  [(LUILogFilterViewController *)&v5 viewDidDisappear:a3];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = LUILogFilterViewController;
  [(LUILogFilterViewController *)&v9 viewWillLayoutSubviews];
  v3 = [(LUILogFilterViewController *)self filterView];
  v4 = [v3 predicatesKeyCandidateCollectionView];
  v5 = [v4 collectionViewLayout];
  [v5 invalidateLayout];

  v6 = [(LUILogFilterViewController *)self filterView];
  v7 = [v6 predicatesComparisonCandidateCollectionView];
  v8 = [v7 collectionViewLayout];
  [v8 invalidateLayout];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = LUILogFilterViewController;
  [(LUILogFilterViewController *)&v9 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  v5 = [(LUILogFilterViewController *)self delegate];
  v6 = [v5 logFilterViewControllerShouldAllowTextEditing:self];
  v7 = [(LUILogFilterViewController *)self filterView];
  v8 = [v7 predicateTextField];
  [v8 setUserInteractionEnabled:v6];
}

- (void)_setupTableView
{
  v3 = [(LUILogFilterViewController *)self filterView];
  v4 = [v3 existingPredicatesTableView];
  [v4 setDelegate:self];

  v5 = [(LUILogFilterViewController *)self filterView];
  v6 = [v5 existingPredicatesTableView];
  [v6 setDataSource:self];

  v8 = [(LUILogFilterViewController *)self filterView];
  v7 = [v8 existingPredicatesTableView];
  [v7 registerClass:objc_opt_class() forCellReuseIdentifier:@"currentPredicateCell"];
}

- (void)_setupCollectionView
{
  v3 = [(LUILogFilterViewController *)self filterView];
  v4 = [v3 predicatesKeyCandidateCollectionView];
  [v4 setDelegate:self];

  v5 = [(LUILogFilterViewController *)self filterView];
  v6 = [v5 predicatesKeyCandidateCollectionView];
  [v6 setDataSource:self];

  v7 = [(LUILogFilterViewController *)self filterView];
  v8 = [v7 predicatesComparisonCandidateCollectionView];
  [v8 setDelegate:self];

  v9 = [(LUILogFilterViewController *)self filterView];
  v10 = [v9 predicatesComparisonCandidateCollectionView];
  [v10 setDataSource:self];

  v11 = [(LUILogFilterViewController *)self filterView];
  v12 = [v11 predicatesValueCandidateCollectionView];
  [v12 setDelegate:self];

  v13 = [(LUILogFilterViewController *)self filterView];
  v14 = [v13 predicatesValueCandidateCollectionView];
  [v14 setDataSource:self];

  v15 = [(LUILogFilterViewController *)self filterView];
  v16 = [v15 predicatesKeyCandidateCollectionView];
  [v16 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"candidateCell"];

  v17 = [(LUILogFilterViewController *)self filterView];
  v18 = [v17 predicatesComparisonCandidateCollectionView];
  [v18 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"candidateCell"];

  v19 = [(LUILogFilterViewController *)self filterView];
  v20 = [v19 predicatesValueCandidateCollectionView];
  [v20 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"candidateCell"];

  v22 = [(LUILogFilterViewController *)self filterView];
  v21 = [v22 predicatesValueCandidateCollectionView];
  [v21 setAllowsMultipleSelection:1];
}

- (void)_setupButtons
{
  v3 = [(LUILogFilterViewController *)self filterView];
  v4 = [v3 addButton];
  [v4 addTarget:self action:sel_addButtonTapped_ forControlEvents:64];

  v6 = [(LUILogFilterViewController *)self filterView];
  v5 = [v6 applyButton];
  [v5 addTarget:self action:sel_applyButtonTapped_ forControlEvents:64];
}

- (void)predicateDataUpdated
{
  v3 = [(LUILogFilterViewController *)self filterView];
  v2 = [v3 existingPredicatesTableView];
  [v2 reloadData];
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

- (id)sizeArrayWithStrings:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
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
  v4 = [(LUILogFilterViewController *)self filterView];
  v5 = [v4 predicatesKeyCandidateCollectionView];
  v6 = [v5 indexPathsForSelectedItems];

  v7 = [(LUILogFilterViewController *)self filterView];
  v8 = [v7 predicatesComparisonCandidateCollectionView];
  v9 = [v8 indexPathsForSelectedItems];

  v10 = [(LUILogFilterViewController *)self filterView];
  v11 = [v10 predicatesValueCandidateCollectionView];
  v12 = [v11 indexPathsForSelectedItems];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __50__LUILogFilterViewController__updatePredicateText__block_invoke;
  v28[3] = &unk_279828788;
  v13 = v6;
  v29 = v13;
  v30 = self;
  v14 = v3;
  v31 = v14;
  v15 = v9;
  v32 = v15;
  v16 = MEMORY[0x259C5D960](v28);
  v17 = [v12 firstObject];

  if (v17)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __50__LUILogFilterViewController__updatePredicateText__block_invoke_2;
    v23 = &unk_2798287B0;
    v27 = v16;
    v24 = v14;
    v25 = self;
    v26 = v12;
    [v26 enumerateObjectsUsingBlock:&v20];
  }

  else
  {
    (v16)[2](v16, v14);
  }

  v18 = [(LUILogFilterViewController *)self filterView:v20];
  v19 = [v18 predicateTextField];
  [v19 setText:v14];
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
  v3 = [(LUILogFilterViewController *)self filterView];
  v4 = [v3 predicatesKeyCandidateCollectionView];
  v29[0] = v4;
  v5 = [(LUILogFilterViewController *)self filterView];
  v6 = [v5 predicatesComparisonCandidateCollectionView];
  v29[1] = v6;
  v7 = [(LUILogFilterViewController *)self filterView];
  v8 = [v7 predicatesValueCandidateCollectionView];
  v29[2] = v8;
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
        v15 = [v14 indexPathsForSelectedItems];
        v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(v15);
              }

              [v14 deselectItemAtIndexPath:*(*(&v20 + 1) + 8 * v19++) animated:0];
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
  v3 = [(LUILogFilterViewController *)self filterView];
  v4 = [v3 predicateTextField];
  [v4 setText:0];

  [(LUILogFilterViewController *)self _clearCellsSelection];
}

- (void)_shakeInputView:(id)a3
{
  v3 = MEMORY[0x277CD9E10];
  v4 = a3;
  v15 = [v3 animationWithKeyPath:@"position"];
  [v15 setDuration:0.05];
  LODWORD(v5) = 2.0;
  [v15 setRepeatCount:v5];
  [v15 setAutoreverses:1];
  v6 = MEMORY[0x277CCAE60];
  [v4 center];
  v8 = v7 + -15.0;
  [v4 center];
  v9 = [v6 valueWithCGPoint:v8];
  [v15 setFromValue:v9];

  v10 = MEMORY[0x277CCAE60];
  [v4 center];
  v12 = v11 + 15.0;
  [v4 center];
  v13 = [v10 valueWithCGPoint:v12];
  [v15 setToValue:v13];

  v14 = [v4 layer];

  [v14 addAnimation:v15 forKey:@"position"];
}

- (void)addButtonTapped:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v38 = a3;
  v4 = [(LUILogFilterViewController *)self filterView];
  v5 = [v4 predicateTextField];
  v39 = [v5 text];

  LODWORD(v5) = [v39 length] == 0;
  v6 = [(LUILogFilterViewController *)self filterView];
  v7 = v6;
  if (v5)
  {
    v16 = [v6 predicateTextField];
    [(LUILogFilterViewController *)self _shakeInputView:v16];
  }

  else
  {
    v8 = [v6 predicatesValueCandidateCollectionView];
    v9 = [v8 indexPathsForSelectedItems];
    if ([v9 count])
    {
      v10 = [(LUILogFilterViewController *)self filterView];
      v11 = [v10 predicatesKeyCandidateCollectionView];
      v12 = [v11 indexPathsForSelectedItems];
      if ([v12 count])
      {
        v13 = [(LUILogFilterViewController *)self filterView];
        v14 = [v13 predicatesComparisonCandidateCollectionView];
        v15 = [v14 indexPathsForSelectedItems];
        v37 = [v15 count] != 0;
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

    v17 = [(LUILogFilterViewController *)self filterView];
    v18 = [v17 predicatesValueCandidateCollectionView];
    v19 = [v18 indexPathsForSelectedItems];
    if ([v19 count])
    {
      v20 = 0;
    }

    else
    {
      v21 = [(LUILogFilterViewController *)self filterView];
      v22 = [v21 predicatesKeyCandidateCollectionView];
      v23 = [v22 indexPathsForSelectedItems];
      if ([v23 count])
      {
        v20 = 0;
      }

      else
      {
        v24 = [(LUILogFilterViewController *)self filterView];
        v25 = [v24 predicatesComparisonCandidateCollectionView];
        v26 = [v25 indexPathsForSelectedItems];
        v36 = v24;
        v20 = [v26 count] == 0;
      }
    }

    if (v37 || v20)
    {
      v27 = MEMORY[0x277CCAC30];
      v28 = [(LUILogFilterViewController *)self filterView];
      v29 = [v28 predicateTextField];
      v30 = [v29 text];
      v31 = [v27 predicateWithFormat:v30];

      v32 = [(LUILogFilterViewController *)self delegate];
      v40[0] = v31;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
      [v32 logFilterViewController:self didAddPredicates:v33];

      [(LUILogFilterViewController *)self _clearPredicateInput];
    }

    else
    {
      v34 = [(LUILogFilterViewController *)self filterView];
      v35 = [v34 predicateTextField];
      [(LUILogFilterViewController *)self _shakeInputView:v35];
    }
  }
}

- (void)applyButtonTapped:(id)a3
{
  v4 = [(LUILogFilterViewController *)self delegate];
  [v4 logFilterViewControllerApplyButtonTapped:self];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"candidateCell" forIndexPath:v7];
  v9 = [(LUILogFilterViewController *)self filterView];
  v10 = [v9 predicatesKeyCandidateCollectionView];

  if (v10 == v6)
  {
    v15 = [(LUILogFilterViewController *)self predicateKeyCandidates];
  }

  else
  {
    v11 = [(LUILogFilterViewController *)self filterView];
    v12 = [v11 predicatesComparisonCandidateCollectionView];

    if (v12 == v6)
    {
      v15 = [(LUILogFilterViewController *)self predicateComparisonCandidates];
    }

    else
    {
      v13 = [(LUILogFilterViewController *)self filterView];
      v14 = [v13 predicatesValueCandidateCollectionView];

      if (v14 != v6)
      {
        goto LABEL_8;
      }

      v15 = [(LUILogFilterViewController *)self predicateValueCandidates];
    }
  }

  v16 = v15;
  v17 = [v15 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  v18 = [v8 titleLabel];
  [v18 setText:v17];

LABEL_8:
  v19 = [MEMORY[0x277D75348] whiteColor];
  v20 = [v19 CGColor];
  v21 = [v8 layer];
  [v21 setBorderColor:v20];

  v22 = [v8 layer];
  [v22 setBorderWidth:1.5];

  v23 = [v8 layer];
  [v23 setCornerRadius:5.0];

  return v8;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = [(LUILogFilterViewController *)self filterView];
  v7 = [v6 predicatesKeyCandidateCollectionView];

  if (v7 == v5)
  {
    v13 = [(LUILogFilterViewController *)self predicateKeyCandidates];
LABEL_8:
    v14 = v13;
    v12 = [v13 count];

    goto LABEL_9;
  }

  v8 = [(LUILogFilterViewController *)self filterView];
  v9 = [v8 predicatesComparisonCandidateCollectionView];

  if (v9 == v5)
  {
    v13 = [(LUILogFilterViewController *)self predicateComparisonCandidates];
    goto LABEL_8;
  }

  v10 = [(LUILogFilterViewController *)self filterView];
  v11 = [v10 predicatesValueCandidateCollectionView];

  if (v11 == v5)
  {
    v13 = [(LUILogFilterViewController *)self predicateValueCandidates];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(LUILogFilterViewController *)self filterView];
  v10 = [v9 predicatesValueCandidateCollectionView];

  if (v10 == v7)
  {
    v12 = [(LUILogFilterViewController *)self predicateValueCandidatesSize];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];
    [v13 CGRectValue];
    v11 = v14;
  }

  else
  {
    [v7 frame];
    v11 = CGRectGetWidth(v18) + -20.0;
  }

  v15 = 30.0;
  v16 = v11;
  result.height = v15;
  result.width = v16;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"currentPredicateCell"];
  v8 = [(LUILogFilterViewController *)self delegate];
  v9 = [v8 currentPredicates:self];
  v10 = [v6 section];

  v11 = [v9 objectAtIndexedSubscript:v10];
  v12 = [v11 predicateFormat];
  v13 = [v7 titleLabel];
  [v13 setText:v12];

  [v7 setDelegate:self];

  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(LUILogFilterViewController *)self delegate];
  v5 = [v4 currentPredicates:self];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(LUILogFilterViewController *)self delegate:a3];
  v6 = [v5 currentPredicates:self];
  v7 = [v6 count] != 0;

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

- (void)predicateTableViewCellDeleteButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(LUILogFilterViewController *)self filterView];
  v6 = [v5 existingPredicatesTableView];
  v11 = [v6 indexPathForCell:v4];

  v7 = [(LUILogFilterViewController *)self delegate];
  v8 = [(LUILogFilterViewController *)self delegate];
  v9 = [v8 currentPredicates:self];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v11, "section")}];
  [v7 logFilterViewController:self didDeletePredicate:v10];
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = a3;
  [(LUILogFilterViewController *)self _clearPredicateInput];
  v5 = [v4 isFirstResponder];
  if ((v5 & 1) == 0)
  {
    [v4 setText:0];
  }

  return v5;
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [(LUILogFilterViewController *)self delegate];
  v5 = [v4 logFilterViewControllerShouldAllowTextEditing:self];

  if (v5)
  {
    CGAffineTransformMakeTranslation(&v8, 0.0, -200.0);
    v6 = [(LUILogFilterViewController *)self filterView];
    v7 = v8;
    [v6 setTransform:&v7];
  }
}

- (void)keyboardWillHide:(id)a3
{
  v4 = [(LUILogFilterViewController *)self delegate];
  v5 = [v4 logFilterViewControllerShouldAllowTextEditing:self];

  if (v5)
  {
    CGAffineTransformMakeTranslation(&v8, 0.0, 0.0);
    v6 = [(LUILogFilterViewController *)self filterView];
    v7 = v8;
    [v6 setTransform:&v7];
  }
}

- (LUILogFilterViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end