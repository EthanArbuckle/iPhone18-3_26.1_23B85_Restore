@interface CKMentionSuggestionView
- (CGSize)intrinsicContentSize;
- (CKMentionSuggestionView)initWithFrame:(CGRect)a3;
- (CKMentionSuggestionViewDataSource)dataSource;
- (CKMentionSuggestionViewDelegate)delegate;
- (id)suggestionsLayout;
- (id)suggestionsLayoutSectionForEnvironment:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)reloadData;
- (void)setDataSource:(id)a3;
@end

@implementation CKMentionSuggestionView

- (id)suggestionsLayoutSectionForEnvironment:(id)a3
{
  v48[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 1.0;
  if (!CKIsRunningInMacCatalyst())
  {
    v6 = [v4 traitCollection];
    [v6 displayScale];
    v5 = 1.0 / v7;
  }

  v8 = [MEMORY[0x1E6995558] absoluteDimension:v5];
  v43 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  v44 = v8;
  v9 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v8 heightDimension:?];
  v10 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:8 absoluteOffset:{0.0, 0.0}];
  v11 = MEMORY[0x1E6995598];
  v12 = +[CKMentionSuggestionAccessoryCell supplementryViewKind];
  v41 = v10;
  v42 = v9;
  v46 = [v11 supplementaryItemWithLayoutSize:v9 elementKind:v12 containerAnchor:v10];

  v13 = [v4 container];
  [v13 contentSize];
  v15 = v14;

  v45 = v4;
  if ([(CKMentionSuggestionView *)self hasCompletedInitialLayoutPass])
  {
    v16 = [(CKMentionSuggestionView *)self dataSource];
    v17 = [v16 numberOfSuggestionsInSuggestionView:self forSection:0];

    if (v17)
    {
      v18 = 0;
      v19 = 86.0;
      do
      {
        v20 = [MEMORY[0x1E696AC88] indexPathForItem:v18 inSection:0];
        v21 = [(CKMentionSuggestionView *)self collectionView];
        v22 = [v21 cellForItemAtIndexPath:v20];

        if (v22)
        {
          [v22 frame];
          if (v23 >= v19)
          {
            v19 = v23;
          }

          [v22 frame];
          if (v24 >= v15)
          {
            v15 = v24;
          }
        }

        ++v18;
      }

      while (v17 != v18);
    }

    else
    {
      v19 = 86.0;
    }

    v25 = [MEMORY[0x1E6995558] absoluteDimension:v19];
    v26 = [MEMORY[0x1E6995558] absoluteDimension:v15];
  }

  else
  {
    v19 = 86.0;
    v25 = [MEMORY[0x1E6995558] estimatedDimension:86.0];
    v26 = [MEMORY[0x1E6995558] estimatedDimension:v15];
  }

  v27 = v26;
  v28 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v25 heightDimension:{v26, v25}];
  v29 = MEMORY[0x1E6995578];
  v48[0] = v46;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v31 = [v29 itemWithLayoutSize:v28 supplementaryItems:v30];

  v32 = [MEMORY[0x1E6995558] estimatedDimension:v19];
  v33 = [MEMORY[0x1E6995558] estimatedDimension:v15];
  v34 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v32 heightDimension:v33];
  v35 = MEMORY[0x1E6995568];
  v47 = v31;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v37 = [v35 horizontalGroupWithLayoutSize:v34 subitems:v36];

  v38 = [MEMORY[0x1E6995580] sectionWithGroup:v37];
  [(CKMentionSuggestionView *)self setHasCompletedInitialLayoutPass:1];

  return v38;
}

- (id)suggestionsLayout
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC810]);
  [v3 setScrollDirection:1];
  [v3 setContentInsetsReference:1];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x1E69DC808]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CKMentionSuggestionView_suggestionsLayout__block_invoke;
  v7[3] = &unk_1E72ECC10;
  objc_copyWeak(&v8, &location);
  v5 = [v4 initWithSectionProvider:v7 configuration:v3];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

id __44__CKMentionSuggestionView_suggestionsLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained suggestionsLayoutSectionForEnvironment:v5];
  }

  return v3;
}

- (CKMentionSuggestionView)initWithFrame:(CGRect)a3
{
  v40[4] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = CKMentionSuggestionView;
  v3 = [(CKMentionSuggestionView *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKMentionSuggestionView *)v3 suggestionsLayout];
    suggestionViewLayout = v4->_suggestionViewLayout;
    v4->_suggestionViewLayout = v5;

    v7 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v4->_suggestionViewLayout collectionViewLayout:{0.0, 0.0, 64.0, 64.0}];
    v8 = objc_opt_class();
    v9 = +[CKMentionSuggestionCell reuseIdentifier];
    [v7 registerClass:v8 forCellWithReuseIdentifier:v9];

    v10 = objc_opt_class();
    v11 = +[CKMentionSuggestionAccessoryCell supplementryViewKind];
    v12 = +[CKMentionSuggestionAccessoryCell reuseIdentifier];
    [v7 registerClass:v10 forSupplementaryViewOfKind:v11 withReuseIdentifier:v12];

    [v7 setClipsToBounds:1];
    [v7 setOpaque:0];
    v13 = [MEMORY[0x1E69DC888] clearColor];
    [v7 setBackgroundColor:v13];

    [v7 setAllowsSelection:1];
    [v7 setShowsVerticalScrollIndicator:0];
    [v7 setShowsHorizontalScrollIndicator:0];
    [v7 setAccessibilityIdentifier:@"suggestionSelectionIdentifier"];
    [v7 setDelegate:v4];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 paddleOverlayRadius];
    [v7 _setContinuousCornerRadius:?];

    objc_storeStrong(&v4->_collectionView, v7);
    [(CKMentionSuggestionView *)v4 addSubview:v7];
    v28 = MEMORY[0x1E696ACD8];
    v33 = [v7 topAnchor];
    v32 = [(CKMentionSuggestionView *)v4 topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v40[0] = v31;
    v30 = [v7 bottomAnchor];
    v29 = [(CKMentionSuggestionView *)v4 bottomAnchor];
    v15 = [v30 constraintEqualToAnchor:v29];
    v40[1] = v15;
    v16 = [v7 leadingAnchor];
    v17 = [(CKMentionSuggestionView *)v4 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v40[2] = v18;
    v19 = [v7 trailingAnchor];
    v20 = [(CKMentionSuggestionView *)v4 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v40[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
    [v28 activateConstraints:v22];

    objc_initWeak(&location, v4);
    v23 = objc_alloc(MEMORY[0x1E69DC820]);
    v24 = [(CKMentionSuggestionView *)v4 collectionView];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __41__CKMentionSuggestionView_initWithFrame___block_invoke;
    v36[3] = &unk_1E72F11A0;
    objc_copyWeak(&v37, &location);
    v25 = [v23 initWithCollectionView:v24 cellProvider:v36];
    [(CKMentionSuggestionView *)v4 setDiffableDataSource:v25];

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __41__CKMentionSuggestionView_initWithFrame___block_invoke_2;
    v34[3] = &unk_1E72F11C8;
    objc_copyWeak(&v35, &location);
    v26 = [(CKMentionSuggestionView *)v4 diffableDataSource];
    [v26 setSupplementaryViewProvider:v34];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v4;
}

id __41__CKMentionSuggestionView_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained dataSource];
  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v8 suggestionView:v9 entityAtIndex:{objc_msgSend(v5, "item")}];

  v11 = +[CKMentionSuggestionCell reuseIdentifier];
  v12 = [v6 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v5];

  [v12 setSuggestedEntity:v10];

  return v12;
}

id __41__CKMentionSuggestionView_initWithFrame___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = +[CKMentionSuggestionAccessoryCell supplementryViewKind];
  v9 = +[CKMentionSuggestionAccessoryCell reuseIdentifier];
  v10 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:v6];

  v11 = [v6 item];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = [WeakRetained dataSource];
  v14 = objc_loadWeakRetained((a1 + 32));
  [v10 setHidden:{v11 >= objc_msgSend(v13, "numberOfSuggestionsInSuggestionView:forSection:", v14, 0) - 1}];

  return v10;
}

- (void)dealloc
{
  [(UICollectionView *)self->_collectionView setDelegate:0];
  [(UICollectionView *)self->_collectionView setDataSource:0];
  collectionView = self->_collectionView;
  self->_collectionView = 0;

  suggestionViewLayout = self->_suggestionViewLayout;
  self->_suggestionViewLayout = 0;

  v5.receiver = self;
  v5.super_class = CKMentionSuggestionView;
  [(CKMentionSuggestionView *)&v5 dealloc];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(CKMentionSuggestionView *)self suggestionViewLayout];
  [v3 invalidateLayout];

  [(CKMentionSuggestionView *)self layoutIfNeeded];
  v4 = [(CKMentionSuggestionView *)self suggestionViewLayout];
  [v4 collectionViewContentSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setDataSource:(id)a3
{
  objc_storeWeak(&self->_dataSource, a3);

  [(CKMentionSuggestionView *)self reloadData];
}

- (void)reloadData
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v18[0] = @"MainSection";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v3 appendSectionsWithIdentifiers:v4];

  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [(CKMentionSuggestionView *)self dataSource];
  v7 = [v5 initWithCapacity:{objc_msgSend(v6, "numberOfSuggestionsInSuggestionView:forSection:", self, 0)}];

  v8 = [(CKMentionSuggestionView *)self dataSource];
  v9 = [v8 numberOfSuggestionsInSuggestionView:self forSection:0];

  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = [(CKMentionSuggestionView *)self dataSource];
      v12 = [v11 suggestionView:self entityAtIndex:v10];

      v13 = [v12 defaultIMHandle];
      v14 = [v13 ID];

      if ([v14 length])
      {
        [v7 addObject:v14];
      }

      ++v10;
      v15 = [(CKMentionSuggestionView *)self dataSource];
      v16 = [v15 numberOfSuggestionsInSuggestionView:self forSection:0];
    }

    while (v10 < v16);
  }

  [v3 appendItemsWithIdentifiers:v7];
  v17 = [(CKMentionSuggestionView *)self diffableDataSource];
  [v17 applySnapshot:v3 animatingDifferences:0];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CKMentionSuggestionView *)self dataSource];
  v7 = [v5 item];

  v9 = [v6 suggestionView:self entityAtIndex:v7];

  v8 = [(CKMentionSuggestionView *)self delegate];
  [v8 suggestionView:self didSelectEntity:v9];
}

- (CKMentionSuggestionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CKMentionSuggestionViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end