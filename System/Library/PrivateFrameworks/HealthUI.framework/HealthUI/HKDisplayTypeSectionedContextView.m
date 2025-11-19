@interface HKDisplayTypeSectionedContextView
- (BOOL)_appendHeaderForSectionIndex:(int64_t)a3;
- (BOOL)_isHorizontalInTwoOverlaysMode;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)intrinsicContentSize;
- (HKDisplayTypeContextItem)sizingItem;
- (HKDisplayTypeContextVerticalCollectionViewCell)sizingCell;
- (HKDisplayTypeSectionedContextView)initWithStyle:(int64_t)a3;
- (HKDisplayTypeSectionedContextViewDelegate)delegate;
- (NSDirectionalEdgeInsets)_contentItemInsetsWithTopInsets:(BOOL)a3 BottomInsets:(BOOL)a4 horizontalInsets:(BOOL)a5;
- (double)_cellSizingWidth;
- (double)_collectionViewLineSpacing;
- (double)_contentHeight;
- (double)_contentWidth;
- (double)_estimateCellHeightForCell:(id)a3;
- (double)_estimatedDynamicCellHeight;
- (double)_interItemSpacing;
- (double)_maximumHeaderLabelLength;
- (double)_preferredCollectionViewHeightForCount:(int64_t)a3;
- (id)_buildCollectionViewLayoutWithBottomInsets:(BOOL)a3 horizontalInsets:(BOOL)a4 topInsetsWithNoHeader:(BOOL)a5;
- (id)_collectionViewLayoutForHorizontalTwoOverlaysWithConfig:(id)a3;
- (id)_collectionViewLayoutWithLayoutGroup:(id)a3 bottomInsets:(BOOL)a4 horizontalInsets:(BOOL)a5 topInsetsWithNoHeader:(BOOL)a6;
- (id)_currentConfigurationWithBottomInsets:(BOOL)a3 horizontalInsets:(BOOL)a4 topInsetsWithNoHeader:(BOOL)a5;
- (id)_defaultCollectionViewLayoutWithConfiguration:(id)a3;
- (id)_makeDummySizingItem;
- (id)_makeSizingItemWithItem:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)createCellWithItem:(id)a3;
- (int64_t)_rowsForScreenSize;
- (int64_t)_widthDesignationFromTraitCollection:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_handleSelection:(id)a3 indexPath:(id)a4 informDelegate:(BOOL)a5;
- (void)_reconfigureCollectionViewLayoutAndInsetsIfNecessary;
- (void)_registerForTraitChange;
- (void)_reloadCollectionViewWithSelectedItems;
- (void)_updateSelfSizingHeightConstraintIfNecessary;
- (void)_updateSizingCellEstimatedHeightIfNecessary;
- (void)_updateSizingCellWithContextItemSections:(id)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)deselectAllItemsAnimated:(BOOL)a3;
- (void)didTapOnInfoButtonForCollectionViewCell:(id)a3;
- (void)layoutSubviews;
- (void)scrollToTop;
- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
- (void)setContentViewTopInset:(double)a3;
- (void)setDisplayTypeContextSections:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setUseBottomInsets:(BOOL)a3;
- (void)setUseHorizontalInsets:(BOOL)a3;
- (void)setUseTopInsetsWithNoHeader:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation HKDisplayTypeSectionedContextView

- (HKDisplayTypeSectionedContextView)initWithStyle:(int64_t)a3
{
  v51[4] = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = HKDisplayTypeSectionedContextView;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(HKDisplayTypeSectionedContextView *)&v50 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    v8->_style = a3;
    v10 = a3;
    v49 = a3;
    v8->_bottomInsetsEnabled = 0;
    v8->_horizontalInsetsEnabled = 0;
    v8->_topInsetsWithNoHeaderEnabled = 1;
    v8->_contentViewTopInset = 0.0;
    v8->_sizingCellEstimatedHeight = -1.0;
    v8->_lastRowsForScreenSize = -1;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    collectionViewLayoutCache = v9->_collectionViewLayoutCache;
    v9->_collectionViewLayoutCache = v11;

    v13 = [(HKDisplayTypeSectionedContextView *)v9 _buildCollectionViewLayoutWithBottomInsets:v9->_bottomInsetsEnabled horizontalInsets:v9->_horizontalInsetsEnabled topInsetsWithNoHeader:v9->_topInsetsWithNoHeaderEnabled];
    collectionViewLayout = v9->_collectionViewLayout;
    v9->_collectionViewLayout = v13;

    v15 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v9->_collectionViewLayout collectionViewLayout:{v4, v5, v6, v7}];
    collectionView = v9->_collectionView;
    v9->_collectionView = v15;

    [(UICollectionView *)v9->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v9->_collectionView setBackgroundColor:v17];

    [(UICollectionView *)v9->_collectionView setDelegate:v9];
    [(UICollectionView *)v9->_collectionView setDataSource:v9];
    [(UICollectionView *)v9->_collectionView setAllowsSelection:1];
    [(UICollectionView *)v9->_collectionView setAllowsMultipleSelection:1];
    [(UICollectionView *)v9->_collectionView setScrollEnabled:v10 == 3];
    [(UICollectionView *)v9->_collectionView setAlwaysBounceVertical:1];
    [(HKDisplayTypeSectionedContextView *)v9 addSubview:v9->_collectionView];
    v18 = v9->_collectionView;
    v19 = objc_opt_class();
    v20 = +[HKDisplayTypeContextVerticalCollectionViewCell reuseIdentifier];
    [(UICollectionView *)v18 registerClass:v19 forCellWithReuseIdentifier:v20];

    v21 = v9->_collectionView;
    v22 = objc_opt_class();
    v23 = *MEMORY[0x1E69DDC08];
    v24 = +[_HKDisplayTypeSectionedHeaderView reuseIdentifier];
    [(UICollectionView *)v21 registerClass:v22 forSupplementaryViewOfKind:v23 withReuseIdentifier:v24];

    v25 = v9->_collectionView;
    v26 = objc_opt_class();
    v27 = +[_HKDisplayTypeSectionedHeaderWithButtonView reuseIdentifier];
    [(UICollectionView *)v25 registerClass:v26 forSupplementaryViewOfKind:v23 withReuseIdentifier:v27];

    v43 = MEMORY[0x1E696ACD8];
    v48 = [(UICollectionView *)v9->_collectionView leadingAnchor];
    v47 = [(HKDisplayTypeSectionedContextView *)v9 leadingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v51[0] = v46;
    v45 = [(UICollectionView *)v9->_collectionView trailingAnchor];
    v44 = [(HKDisplayTypeSectionedContextView *)v9 trailingAnchor];
    v28 = [v45 constraintEqualToAnchor:v44];
    v51[1] = v28;
    v29 = [(UICollectionView *)v9->_collectionView topAnchor];
    v30 = [(HKDisplayTypeSectionedContextView *)v9 topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v51[2] = v31;
    v32 = [(UICollectionView *)v9->_collectionView bottomAnchor];
    v33 = [(HKDisplayTypeSectionedContextView *)v9 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    v51[3] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];
    [v43 activateConstraints:v35];

    if (v49 != 3)
    {
      v36 = [(UICollectionView *)v9->_collectionView heightAnchor];
      v37 = [v36 constraintEqualToConstant:48.0];
      collectionViewHeightConstraint = v9->_collectionViewHeightConstraint;
      v9->_collectionViewHeightConstraint = v37;

      [(NSLayoutConstraint *)v9->_collectionViewHeightConstraint setActive:1];
    }

    v39 = [MEMORY[0x1E696AC88] indexPathWithIndex:-1];
    lastSelectedIndex = v9->_lastSelectedIndex;
    v9->_lastSelectedIndex = v39;

    v41 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"Overlays"];
    [(HKDisplayTypeSectionedContextView *)v9 setAccessibilityIdentifier:v41];

    [(HKDisplayTypeSectionedContextView *)v9 _registerForTraitChange];
  }

  return v9;
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HKDisplayTypeSectionedContextView;
  [(HKDisplayTypeSectionedContextView *)&v5 setSemanticContentAttribute:?];
  [(UICollectionView *)self->_collectionView setSemanticContentAttribute:a3];
}

- (void)setUseBottomInsets:(BOOL)a3
{
  if (self->_bottomInsetsEnabled != a3)
  {
    self->_bottomInsetsEnabled = a3;
    [(HKDisplayTypeSectionedContextView *)self _reconfigureCollectionViewLayoutAndInsetsIfNecessary];
  }
}

- (void)setUseHorizontalInsets:(BOOL)a3
{
  if (self->_horizontalInsetsEnabled != a3)
  {
    self->_horizontalInsetsEnabled = a3;
    [(HKDisplayTypeSectionedContextView *)self _reconfigureCollectionViewLayoutAndInsetsIfNecessary];
  }
}

- (void)setUseTopInsetsWithNoHeader:(BOOL)a3
{
  if (self->_topInsetsWithNoHeaderEnabled != a3)
  {
    self->_topInsetsWithNoHeaderEnabled = a3;
    [(HKDisplayTypeSectionedContextView *)self _reconfigureCollectionViewLayoutAndInsetsIfNecessary];
  }
}

- (void)setContentViewTopInset:(double)a3
{
  if (a3 >= 0.0 && self->_contentViewTopInset != a3)
  {
    self->_contentViewTopInset = a3;
    [(UICollectionView *)self->_collectionView setContentInset:?];

    [(HKDisplayTypeSectionedContextView *)self _reconfigureCollectionViewLayoutAndInsetsIfNecessary];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = HKDisplayTypeSectionedContextView;
  [(HKDisplayTypeSectionedContextView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(HKDisplayTypeSectionedContextView *)self _reloadCollectionViewWithSelectedItems];
}

- (void)_reloadCollectionViewWithSelectedItems
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  [(UICollectionView *)self->_collectionView reloadData];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
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

        [(UICollectionView *)self->_collectionView selectItemAtIndexPath:*(*(&v9 + 1) + 8 * v8++) animated:0 scrollPosition:0, v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_registerForTraitChange
{
  v8[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__HKDisplayTypeSectionedContextView__registerForTraitChange__block_invoke;
  v5[3] = &unk_1E81BA988;
  objc_copyWeak(&v6, &location);
  v4 = [(HKDisplayTypeSectionedContextView *)self registerForTraitChanges:v3 withHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __60__HKDisplayTypeSectionedContextView__registerForTraitChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v13 traitCollection];
    v8 = [WeakRetained _widthDesignationFromTraitCollection:v7];

    v9 = [WeakRetained _widthDesignationFromTraitCollection:v5];
    v10 = [v13 traitCollection];
    v11 = [v10 preferredContentSizeCategory];
    v12 = [v5 preferredContentSizeCategory];

    if (v8 != v9 || v11 != v12)
    {
      WeakRetained[62] = 0xBFF0000000000000;
      [WeakRetained invalidateIntrinsicContentSize];
      [WeakRetained setNeedsLayout];
      [WeakRetained setNeedsUpdateConstraints];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HKDisplayTypeSectionedContextView;
  [(HKDisplayTypeSectionedContextView *)&v3 layoutSubviews];
  [(HKDisplayTypeSectionedContextView *)self _reconfigureCollectionViewLayoutAndInsetsIfNecessary];
  if (self->_style == 2)
  {
    [(HKDisplayTypeSectionedContextView *)self _updateSizingCellWithContextItemSections:self->_displayTypeContextSections];
  }

  else
  {
    [(HKDisplayTypeSectionedContextView *)self _updateSizingCellEstimatedHeightIfNecessary];
  }
}

- (void)updateConstraints
{
  [(HKDisplayTypeSectionedContextView *)self _updateSelfSizingHeightConstraintIfNecessary];
  v3.receiver = self;
  v3.super_class = HKDisplayTypeSectionedContextView;
  [(HKDisplayTypeSectionedContextView *)&v3 updateConstraints];
}

- (void)_updateSelfSizingHeightConstraintIfNecessary
{
  if (self->_style != 3)
  {
    block[5] = v5;
    block[6] = v4;
    block[9] = v2;
    block[10] = v3;
    [(HKDisplayTypeSectionedContextView *)self _contentHeight];
    v8 = v7;
    [(NSLayoutConstraint *)self->_collectionViewHeightConstraint constant];
    if (vabdd_f64(v8, v9) > 0.00000011920929)
    {
      [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setConstant:v8];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81__HKDisplayTypeSectionedContextView__updateSelfSizingHeightConstraintIfNecessary__block_invoke;
      block[3] = &unk_1E81B55A8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (id)_currentConfigurationWithBottomInsets:(BOOL)a3 horizontalInsets:(BOOL)a4 topInsetsWithNoHeader:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = objc_alloc_init(_HKSectionedContextViewConfiguration);
  [(_HKSectionedContextViewConfiguration *)v9 setIsHorizontalInTwoOverlaysMode:[(HKDisplayTypeSectionedContextView *)self _isHorizontalInTwoOverlaysMode]];
  [(_HKSectionedContextViewConfiguration *)v9 setBottomInsetsEnabled:v7];
  [(_HKSectionedContextViewConfiguration *)v9 setHorizontalInsetsEnabled:v6];
  [(_HKSectionedContextViewConfiguration *)v9 setTopInsetsWithNoHeaderEnabled:v5];

  return v9;
}

- (id)_buildCollectionViewLayoutWithBottomInsets:(BOOL)a3 horizontalInsets:(BOOL)a4 topInsetsWithNoHeader:(BOOL)a5
{
  v6 = [(HKDisplayTypeSectionedContextView *)self _currentConfigurationWithBottomInsets:a3 horizontalInsets:a4 topInsetsWithNoHeader:a5];
  if ([v6 isHorizontalInTwoOverlaysMode])
  {
    [(HKDisplayTypeSectionedContextView *)self _collectionViewLayoutForHorizontalTwoOverlaysWithConfig:v6];
  }

  else
  {
    [(HKDisplayTypeSectionedContextView *)self _defaultCollectionViewLayoutWithConfiguration:v6];
  }
  v7 = ;

  return v7;
}

- (id)_collectionViewLayoutForHorizontalTwoOverlaysWithConfig:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_collectionViewLayoutCache objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_collectionViewLayoutCache objectForKeyedSubscript:v4];
  }

  else
  {
    v7 = MEMORY[0x1E6995588];
    v8 = [MEMORY[0x1E6995558] fractionalWidthDimension:0.5];
    v9 = [MEMORY[0x1E6995558] estimatedDimension:50.0];
    v10 = [v7 sizeWithWidthDimension:v8 heightDimension:v9];

    v11 = [MEMORY[0x1E6995578] itemWithLayoutSize:v10];
    v12 = [MEMORY[0x1E6995578] itemWithLayoutSize:v10];
    v13 = MEMORY[0x1E6995588];
    v14 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v15 = [MEMORY[0x1E6995558] estimatedDimension:50.0];
    v16 = [v13 sizeWithWidthDimension:v14 heightDimension:v15];

    v17 = MEMORY[0x1E6995568];
    v23[0] = v11;
    v23[1] = v12;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v19 = [v17 horizontalGroupWithLayoutSize:v16 subitems:v18];

    v20 = MEMORY[0x1E6995590];
    [(HKDisplayTypeSectionedContextView *)self _interItemSpacing];
    v21 = [v20 fixedSpacing:?];
    [v19 setInterItemSpacing:v21];

    v6 = -[HKDisplayTypeSectionedContextView _collectionViewLayoutWithLayoutGroup:bottomInsets:horizontalInsets:topInsetsWithNoHeader:](self, "_collectionViewLayoutWithLayoutGroup:bottomInsets:horizontalInsets:topInsetsWithNoHeader:", v19, [v4 bottomInsetsEnabled], objc_msgSend(v4, "horizontalInsetsEnabled"), objc_msgSend(v4, "topInsetsWithNoHeaderEnabled"));
    [(NSMutableDictionary *)self->_collectionViewLayoutCache setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (id)_defaultCollectionViewLayoutWithConfiguration:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_collectionViewLayoutCache objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_collectionViewLayoutCache objectForKeyedSubscript:v4];
  }

  else
  {
    v7 = MEMORY[0x1E6995588];
    v8 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v9 = [MEMORY[0x1E6995558] estimatedDimension:50.0];
    v10 = [v7 sizeWithWidthDimension:v8 heightDimension:v9];

    v11 = [MEMORY[0x1E6995578] itemWithLayoutSize:v10];
    v12 = [v10 copy];
    v13 = MEMORY[0x1E6995568];
    v17[0] = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v15 = [v13 horizontalGroupWithLayoutSize:v12 subitems:v14];

    v6 = -[HKDisplayTypeSectionedContextView _collectionViewLayoutWithLayoutGroup:bottomInsets:horizontalInsets:topInsetsWithNoHeader:](self, "_collectionViewLayoutWithLayoutGroup:bottomInsets:horizontalInsets:topInsetsWithNoHeader:", v15, [v4 bottomInsetsEnabled], objc_msgSend(v4, "horizontalInsetsEnabled"), objc_msgSend(v4, "topInsetsWithNoHeaderEnabled"));
    [(NSMutableDictionary *)self->_collectionViewLayoutCache setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (double)_collectionViewLineSpacing
{
  v2 = [MEMORY[0x1E696C608] sharedBehavior];
  if ([v2 isiPad])
  {
    v3 = 16.0;
  }

  else
  {
    v3 = 10.0;
  }

  return v3;
}

- (id)_collectionViewLayoutWithLayoutGroup:(id)a3 bottomInsets:(BOOL)a4 horizontalInsets:(BOOL)a5 topInsetsWithNoHeader:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = MEMORY[0x1E6995588];
  v12 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v13 = [MEMORY[0x1E6995558] estimatedDimension:50.0];
  v14 = [v11 sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v14 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
  v16 = [MEMORY[0x1E6995580] sectionWithGroup:v10];
  [(HKDisplayTypeSectionedContextView *)self _collectionViewLineSpacing];
  [v16 setInterGroupSpacing:?];
  [(HKDisplayTypeSectionedContextView *)self _contentItemInsetsWithTopInsets:v6 BottomInsets:v8 horizontalInsets:v7];
  [v16 setContentInsets:?];
  v17 = [MEMORY[0x1E6995580] sectionWithGroup:v10];
  [(HKDisplayTypeSectionedContextView *)self _collectionViewLineSpacing];
  [v17 setInterGroupSpacing:?];
  [(HKDisplayTypeSectionedContextView *)self _contentItemInsetsWithTopInsets:1 BottomInsets:v8 horizontalInsets:v7];
  [v17 setContentInsets:?];
  v29[0] = v15;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v17 setBoundarySupplementaryItems:v18];

  objc_initWeak(&location, self);
  v19 = objc_alloc(MEMORY[0x1E69DC808]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __126__HKDisplayTypeSectionedContextView__collectionViewLayoutWithLayoutGroup_bottomInsets_horizontalInsets_topInsetsWithNoHeader___block_invoke;
  v24[3] = &unk_1E81BB1F8;
  objc_copyWeak(&v27, &location);
  v20 = v17;
  v25 = v20;
  v21 = v16;
  v26 = v21;
  v22 = [v19 initWithSectionProvider:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v22;
}

id __126__HKDisplayTypeSectionedContextView__collectionViewLayoutWithLayoutGroup_bottomInsets_horizontalInsets_topInsetsWithNoHeader___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _appendHeaderForSectionIndex:a2];
    v7 = 40;
    if (v6)
    {
      v7 = 32;
    }

    v8 = *(a1 + v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_appendHeaderForSectionIndex:(int64_t)a3
{
  displayTypeContextSections = self->_displayTypeContextSections;
  if (!displayTypeContextSections)
  {
    return 0;
  }

  v4 = [(NSArray *)displayTypeContextSections objectAtIndexedSubscript:a3];
  v5 = [v4 title];

  if (v5)
  {
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDirectionalEdgeInsets)_contentItemInsetsWithTopInsets:(BOOL)a3 BottomInsets:(BOOL)a4 horizontalInsets:(BOOL)a5
{
  v5 = 0.0;
  if (a3)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (a5)
  {
    v7 = 16.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (a4)
  {
    v5 = 16.0;
  }

  v8 = v7;
  result.trailing = v8;
  result.bottom = v5;
  result.leading = v7;
  result.top = v6;
  return result;
}

- (int64_t)_widthDesignationFromTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForNSIntegerTrait:objc_opt_class()];

  return v4;
}

- (BOOL)_isHorizontalInTwoOverlaysMode
{
  if (self->_style != 2)
  {
    return 0;
  }

  v3 = [(HKDisplayTypeSectionedContextView *)self traitCollection];
  v4 = [(HKDisplayTypeSectionedContextView *)self _widthDesignationFromTraitCollection:v3];

  return (v4 - 4) < 3;
}

- (double)_interItemSpacing
{
  if (![(HKDisplayTypeSectionedContextView *)self _isHorizontalInTwoOverlaysMode])
  {
    return 0.0;
  }

  v3 = [(HKDisplayTypeSectionedContextView *)self traitCollection];
  v4 = [(HKDisplayTypeSectionedContextView *)self _widthDesignationFromTraitCollection:v3];

  return HKCollectionViewLayoutDefaultInterItemSpacingForWidthDesignation(v4);
}

- (void)_reconfigureCollectionViewLayoutAndInsetsIfNecessary
{
  v5 = [(HKDisplayTypeSectionedContextView *)self _buildCollectionViewLayoutWithBottomInsets:self->_bottomInsetsEnabled horizontalInsets:self->_horizontalInsetsEnabled topInsetsWithNoHeader:self->_topInsetsWithNoHeaderEnabled];
  v3 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v4 = [v5 isEqual:v3];

  if ((v4 & 1) == 0)
  {
    [(UICollectionView *)self->_collectionView setCollectionViewLayout:v5];
    [(HKDisplayTypeSectionedContextView *)self invalidateIntrinsicContentSize];
    [(HKDisplayTypeSectionedContextView *)self setNeedsLayout];
    [(UICollectionView *)self->_collectionView setNeedsDisplay];
    [(HKDisplayTypeSectionedContextView *)self setNeedsUpdateConstraints];
  }
}

- (void)setDisplayTypeContextSections:(id)a3
{
  objc_storeStrong(&self->_displayTypeContextSections, a3);
  v5 = a3;
  [(HKDisplayTypeSectionedContextView *)self _updateSizingCellWithContextItemSections:v5];
  [(UICollectionView *)self->_collectionView reloadData];
}

- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  collectionView = self->_collectionView;
  v7 = a3;
  [(UICollectionView *)collectionView selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
  [(HKDisplayTypeSectionedContextView *)self _handleSelection:self->_collectionView indexPath:v7 informDelegate:0];
}

- (void)deselectAllItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AC88] indexPathWithIndex:-1];
  lastSelectedIndex = self->_lastSelectedIndex;
  self->_lastSelectedIndex = v5;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v12 + 1) + 8 * v11++) animated:v3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)scrollToTop
{
  if ([(UICollectionView *)self->_collectionView isScrollEnabled])
  {
    collectionView = self->_collectionView;
    [(UICollectionView *)collectionView contentInset];

    [(UICollectionView *)collectionView setContentOffset:0 animated:0.0, -v4];
  }
}

- (CGSize)intrinsicContentSize
{
  [(HKDisplayTypeSectionedContextView *)self _contentWidth];
  v4 = v3;
  [(HKDisplayTypeSectionedContextView *)self _contentHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (HKDisplayTypeContextVerticalCollectionViewCell)sizingCell
{
  sizingCell = self->_sizingCell;
  if (!sizingCell)
  {
    [(HKDisplayTypeSectionedContextView *)self _cellSizingWidth];
    v5 = [[HKDisplayTypeContextVerticalCollectionViewCell alloc] initWithFrame:0.0, 0.0, v4, 48.0];
    v6 = self->_sizingCell;
    self->_sizingCell = v5;

    [(HKDisplayTypeContextVerticalCollectionViewCell *)self->_sizingCell setHidden:1];
    v7 = self->_sizingCell;
    v8 = [(HKDisplayTypeSectionedContextView *)self sizingItem];
    [(HKDisplayTypeContextVerticalCollectionViewCell *)v7 updateWithContextItem:v8 mode:self->_style];

    sizingCell = self->_sizingCell;
  }

  return sizingCell;
}

- (id)createCellWithItem:(id)a3
{
  v4 = a3;
  [(HKDisplayTypeSectionedContextView *)self _cellSizingWidth];
  v6 = [[HKDisplayTypeContextVerticalCollectionViewCell alloc] initWithFrame:0.0, 0.0, v5, 48.0];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)v6 updateWithContextItem:v4 mode:self->_style];

  return v6;
}

- (HKDisplayTypeContextItem)sizingItem
{
  sizingItem = self->_sizingItem;
  if (!sizingItem)
  {
    v4 = [(HKDisplayTypeSectionedContextView *)self _makeSizingItemWithItem:0];
    v5 = self->_sizingItem;
    self->_sizingItem = v4;

    sizingItem = self->_sizingItem;
  }

  return sizingItem;
}

- (id)_makeDummySizingItem
{
  v2 = objc_alloc_init(HKDisplayTypeContextItem);
  [(HKDisplayTypeContextItem *)v2 setTitle:@"Fake Title"];
  [(HKDisplayTypeContextItem *)v2 setAccessibilityIdentifier:@"Fake Id"];
  [(HKDisplayTypeContextItem *)v2 setValue:@"Fake Value"];
  [(HKDisplayTypeContextItem *)v2 setUnit:@"Fake Unit"];
  [(HKDisplayTypeContextItem *)v2 setValueContext:@"Fake"];

  return v2;
}

- (id)_makeSizingItemWithItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(HKDisplayTypeContextItem);
    v6 = [v4 title];
    [(HKDisplayTypeContextItem *)v5 setTitle:v6];

    v7 = [v4 accessibilityIdentifier];
    [(HKDisplayTypeContextItem *)v5 setAccessibilityIdentifier:v7];

    v8 = [v4 value];
    [(HKDisplayTypeContextItem *)v5 setValue:v8];

    v9 = [v4 unit];
    [(HKDisplayTypeContextItem *)v5 setUnit:v9];

    v10 = [v4 attributedLabelTextOverride];
    [(HKDisplayTypeContextItem *)v5 setAttributedLabelTextOverride:v10];

    v11 = [v4 valueContext];
    [(HKDisplayTypeContextItem *)v5 setValueContext:v11];

    -[HKDisplayTypeContextItem setIsUnitIncludedInValue:](v5, "setIsUnitIncludedInValue:", [v4 isUnitIncludedInValue]);
  }

  else
  {
    v5 = [(HKDisplayTypeSectionedContextView *)self _makeDummySizingItem];
  }

  return v5;
}

- (void)_updateSizingCellWithContextItemSections:(id)a3
{
  if ((self->_style - 1) <= 1)
  {
    v21 = [a3 firstObject];
    v4 = [v21 items];
    v5 = [v4 firstObject];
    v6 = [(HKDisplayTypeSectionedContextView *)self _makeSizingItemWithItem:v5];

    if (self->_style == 2)
    {
      v7 = [v21 items];
      v8 = [v7 objectAtIndexedSubscript:1];
      v9 = [(HKDisplayTypeSectionedContextView *)self _makeSizingItemWithItem:v8];

      v10 = [(HKDisplayTypeSectionedContextView *)self createCellWithItem:v6];
      v11 = [(HKDisplayTypeSectionedContextView *)self createCellWithItem:v9];
      [(HKDisplayTypeSectionedContextView *)self _estimateCellHeightForCell:v10];
      v13 = v12;
      [(HKDisplayTypeSectionedContextView *)self _estimateCellHeightForCell:v11];
      if (v14 > v13)
      {
        v15 = v14;
        v16 = v9;

        v13 = v15;
        v6 = v16;
      }

      v17 = vabdd_f64(v13, self->_sizingCellEstimatedHeight) > 0.00000011920929;
    }

    else
    {
      v17 = 0;
    }

    v18 = [(HKDisplayTypeSectionedContextView *)self sizingItem];
    v19 = [v6 isEqualToContextItem:v18];

    if (v17 || !v19)
    {
      objc_storeStrong(&self->_sizingItem, v6);
      v20 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
      [v20 updateWithContextItem:self->_sizingItem mode:self->_style];

      [(HKDisplayTypeSectionedContextView *)self _updateSizingCellEstimatedHeightIfNecessary];
    }
  }
}

- (void)_updateSizingCellEstimatedHeightIfNecessary
{
  [(HKDisplayTypeSectionedContextView *)self _estimatedDynamicCellHeight];
  v4 = v3;
  v5 = [(HKDisplayTypeSectionedContextView *)self _rowsForScreenSize];
  if (vabdd_f64(v4, self->_sizingCellEstimatedHeight) > 0.00000011920929 || v5 != self->_lastRowsForScreenSize)
  {
    self->_sizingCellEstimatedHeight = v4;
    self->_lastRowsForScreenSize = v5;
    [(HKDisplayTypeSectionedContextView *)self invalidateIntrinsicContentSize];
    [(HKDisplayTypeSectionedContextView *)self setNeedsLayout];

    [(HKDisplayTypeSectionedContextView *)self setNeedsUpdateConstraints];
  }
}

- (double)_estimatedDynamicCellHeight
{
  v3 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [(HKDisplayTypeSectionedContextView *)self addSubview:v3];

  v4 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [v4 configureForTraitCollection];

  v5 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [v5 setNeedsLayout];

  v6 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [v6 layoutIfNeeded];

  v7 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [(HKDisplayTypeSectionedContextView *)self _estimateCellHeightForCell:v7];
  v9 = v8;

  v10 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [v10 removeFromSuperview];

  return v9;
}

- (double)_estimateCellHeightForCell:(id)a3
{
  v4 = a3;
  [(HKDisplayTypeSectionedContextView *)self _cellSizingWidth];
  [v4 systemLayoutSizeFittingSize:? withHorizontalFittingPriority:? verticalFittingPriority:?];
  v6 = v5;

  return v6;
}

- (double)_preferredCollectionViewHeightForCount:(int64_t)a3
{
  v5 = 16.0;
  if (!self->_bottomInsetsEnabled)
  {
    v5 = 0.0;
  }

  v6 = self->_contentViewTopInset + 16.0 + v5;
  [(HKDisplayTypeSectionedContextView *)self _collectionViewLineSpacing];
  v8 = v6 + v7 * (a3 - 1);
  if (a3 < 3)
  {
    sizingCellEstimatedHeight = self->_sizingCellEstimatedHeight;
    if (sizingCellEstimatedHeight == -1.0)
    {
      [(HKDisplayTypeSectionedContextView *)self _estimatedDynamicCellHeight];
    }

    return v8 + sizingCellEstimatedHeight * a3;
  }

  else
  {
    v9 = v8 + a3 * 48.0;
    if (([MEMORY[0x1E69DCEB0] hk_currentDeviceHas4InchScreen] & 1) != 0 || objc_msgSend(MEMORY[0x1E69DCEB0], "hk_currentDeviceHas4Point7InchScreen"))
    {
      return fmin(v9, 125.0);
    }

    return v9;
  }
}

- (double)_contentHeight
{
  style = self->_style;
  if (style != 1)
  {
    if (style == 3)
    {
      style = [(HKDisplayTypeSectionedContextView *)self _rowsForScreenSize];
    }

    else
    {
      if (style != 2)
      {
        return 0.0;
      }

      if ([(HKDisplayTypeSectionedContextView *)self _isHorizontalInTwoOverlaysMode])
      {
        style = 1;
      }

      else
      {
        style = 2;
      }
    }
  }

  [(HKDisplayTypeSectionedContextView *)self _preferredCollectionViewHeightForCount:style];
  return result;
}

- (double)_contentWidth
{
  [(HKDisplayTypeSectionedContextView *)self frame];
  if (v3 == 0.0)
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 bounds];
    v6 = v5;
  }

  else
  {
    [(HKDisplayTypeSectionedContextView *)self frame];
    return v7;
  }

  return v6;
}

- (double)_cellSizingWidth
{
  if (self->_horizontalInsetsEnabled)
  {
    v3 = 32.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [(HKDisplayTypeSectionedContextView *)self _isHorizontalInTwoOverlaysMode];
  [(HKDisplayTypeSectionedContextView *)self _contentWidth];
  v6 = v5;
  if (v4)
  {
    [(HKDisplayTypeSectionedContextView *)self _interItemSpacing];
    v8 = (v6 - v7 - v3) * 0.5;
  }

  else
  {
    v8 = v5 - v3;
  }

  return fmax(v8, 0.0);
}

- (int64_t)_rowsForScreenSize
{
  v2 = [(HKDisplayTypeSectionedContextView *)self window];
  v3 = v2;
  if (v2)
  {
    [v2 bounds];
    v5 = 2;
    if (v4 > 800.0)
    {
      v5 = 4;
    }

    if (v4 <= 600.0)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  result = self->_displayTypeContextSections;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  displayTypeContextSections = self->_displayTypeContextSections;
  if (displayTypeContextSections && [(NSArray *)displayTypeContextSections count]- 1 >= a4)
  {
    v9 = [(NSArray *)self->_displayTypeContextSections objectAtIndexedSubscript:a4];
    v10 = [v9 items];
    v8 = [v10 count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HKDisplayTypeContextVerticalCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [v9 setDelegate:self];
  v10 = -[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [v6 section]);
  v11 = [v10 items];
  v12 = [v6 item];

  v13 = [v11 objectAtIndexedSubscript:v12];

  [v9 updateWithContextItem:v13 mode:self->_style];

  return v9;
}

- (void)_handleSelection:(id)a3 indexPath:(id)a4 informDelegate:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v8 indexPathsForSelectedItems];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        if (v15 != v9)
        {
          [v8 deselectItemAtIndexPath:v15 animated:0];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  if (self->_lastSelectedIndex == v9)
  {
    if (v5)
    {
      [v8 deselectItemAtIndexPath:v9 animated:0];
      v17 = [MEMORY[0x1E696AC88] indexPathWithIndex:-1];
      lastSelectedIndex = self->_lastSelectedIndex;
      self->_lastSelectedIndex = v17;

      v16 = [(HKDisplayTypeSectionedContextView *)self delegate];
      [v16 contextView:self didDeselectItemAtIndexPath:v9];
      goto LABEL_15;
    }
  }

  else
  {
    objc_storeStrong(&self->_lastSelectedIndex, a4);
    if (v5)
    {
      v16 = [(HKDisplayTypeSectionedContextView *)self delegate];
      [v16 contextView:self didSelectItemAtIndexPath:v9];
LABEL_15:
    }
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v5 = MEMORY[0x1E696AC88];
  v6 = a4;
  v7 = [v5 indexPathWithIndex:-1];
  lastSelectedIndex = self->_lastSelectedIndex;
  self->_lastSelectedIndex = v7;

  v9 = [(HKDisplayTypeSectionedContextView *)self delegate];
  [v9 contextView:self didDeselectItemAtIndexPath:v6];
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HKDisplayTypeSectionedContextView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HKDisplayTypeSectionedContextView *)self delegate];
    v9 = [v8 contextView:self canSelectItemAtIndexPath:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HKDisplayTypeSectionedContextView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HKDisplayTypeSectionedContextView *)self delegate];
    v9 = [v8 contextView:self canSelectItemAtIndexPath:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = -[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [v8 section]);
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) != 0 && (-[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [v8 section]), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "accessoryButtonAction"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    v13 = *MEMORY[0x1E69DDC08];
    v14 = +[_HKDisplayTypeSectionedHeaderWithButtonView reuseIdentifier];
    v15 = [v7 dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:v14 forIndexPath:v8];

    v16 = -[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [v8 section]);
    v17 = [v16 title];

    [v15 setTitle:v17];
    v18 = -[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [v8 section]);
    v19 = [v18 accessoryButtonAction];
    [v15 setAccessoryButtonAction:v19];
  }

  else
  {
    v20 = *MEMORY[0x1E69DDC08];
    v21 = +[_HKDisplayTypeSectionedHeaderView reuseIdentifier];
    v15 = [v7 dequeueReusableSupplementaryViewOfKind:v20 withReuseIdentifier:v21 forIndexPath:v8];

    v22 = -[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [v8 section]);
    v17 = [v22 title];

    [v15 setTitle:v17];
  }

  return v15;
}

- (double)_maximumHeaderLabelLength
{
  [(UICollectionView *)self->_collectionView frame];
  Width = CGRectGetWidth(v8);
  [(UICollectionView *)self->_collectionView contentInset];
  v5 = Width - v4;
  [(UICollectionView *)self->_collectionView contentInset];
  return v5 + v6;
}

- (void)didTapOnInfoButtonForCollectionViewCell:(id)a3
{
  v7 = [(UICollectionView *)self->_collectionView indexPathForCell:a3];
  v4 = [(HKDisplayTypeSectionedContextView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HKDisplayTypeSectionedContextView *)self delegate];
    [v6 contextView:self didTapOnInfoButtonAtIndex:{objc_msgSend(v7, "row")}];
  }
}

- (HKDisplayTypeSectionedContextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end