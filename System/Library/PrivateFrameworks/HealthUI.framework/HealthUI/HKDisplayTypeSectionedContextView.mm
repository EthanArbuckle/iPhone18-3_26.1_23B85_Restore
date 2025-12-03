@interface HKDisplayTypeSectionedContextView
- (BOOL)_appendHeaderForSectionIndex:(int64_t)index;
- (BOOL)_isHorizontalInTwoOverlaysMode;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)intrinsicContentSize;
- (HKDisplayTypeContextItem)sizingItem;
- (HKDisplayTypeContextVerticalCollectionViewCell)sizingCell;
- (HKDisplayTypeSectionedContextView)initWithStyle:(int64_t)style;
- (HKDisplayTypeSectionedContextViewDelegate)delegate;
- (NSDirectionalEdgeInsets)_contentItemInsetsWithTopInsets:(BOOL)insets BottomInsets:(BOOL)bottomInsets horizontalInsets:(BOOL)horizontalInsets;
- (double)_cellSizingWidth;
- (double)_collectionViewLineSpacing;
- (double)_contentHeight;
- (double)_contentWidth;
- (double)_estimateCellHeightForCell:(id)cell;
- (double)_estimatedDynamicCellHeight;
- (double)_interItemSpacing;
- (double)_maximumHeaderLabelLength;
- (double)_preferredCollectionViewHeightForCount:(int64_t)count;
- (id)_buildCollectionViewLayoutWithBottomInsets:(BOOL)insets horizontalInsets:(BOOL)horizontalInsets topInsetsWithNoHeader:(BOOL)header;
- (id)_collectionViewLayoutForHorizontalTwoOverlaysWithConfig:(id)config;
- (id)_collectionViewLayoutWithLayoutGroup:(id)group bottomInsets:(BOOL)insets horizontalInsets:(BOOL)horizontalInsets topInsetsWithNoHeader:(BOOL)header;
- (id)_currentConfigurationWithBottomInsets:(BOOL)insets horizontalInsets:(BOOL)horizontalInsets topInsetsWithNoHeader:(BOOL)header;
- (id)_defaultCollectionViewLayoutWithConfiguration:(id)configuration;
- (id)_makeDummySizingItem;
- (id)_makeSizingItemWithItem:(id)item;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)createCellWithItem:(id)item;
- (int64_t)_rowsForScreenSize;
- (int64_t)_widthDesignationFromTraitCollection:(id)collection;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_handleSelection:(id)selection indexPath:(id)path informDelegate:(BOOL)delegate;
- (void)_reconfigureCollectionViewLayoutAndInsetsIfNecessary;
- (void)_registerForTraitChange;
- (void)_reloadCollectionViewWithSelectedItems;
- (void)_updateSelfSizingHeightConstraintIfNecessary;
- (void)_updateSizingCellEstimatedHeightIfNecessary;
- (void)_updateSizingCellWithContextItemSections:(id)sections;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)deselectAllItemsAnimated:(BOOL)animated;
- (void)didTapOnInfoButtonForCollectionViewCell:(id)cell;
- (void)layoutSubviews;
- (void)scrollToTop;
- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position;
- (void)setContentViewTopInset:(double)inset;
- (void)setDisplayTypeContextSections:(id)sections;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setUseBottomInsets:(BOOL)insets;
- (void)setUseHorizontalInsets:(BOOL)insets;
- (void)setUseTopInsetsWithNoHeader:(BOOL)header;
- (void)updateConstraints;
@end

@implementation HKDisplayTypeSectionedContextView

- (HKDisplayTypeSectionedContextView)initWithStyle:(int64_t)style
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
    v8->_style = style;
    styleCopy = style;
    styleCopy2 = style;
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v9->_collectionView setBackgroundColor:clearColor];

    [(UICollectionView *)v9->_collectionView setDelegate:v9];
    [(UICollectionView *)v9->_collectionView setDataSource:v9];
    [(UICollectionView *)v9->_collectionView setAllowsSelection:1];
    [(UICollectionView *)v9->_collectionView setAllowsMultipleSelection:1];
    [(UICollectionView *)v9->_collectionView setScrollEnabled:styleCopy == 3];
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
    leadingAnchor = [(UICollectionView *)v9->_collectionView leadingAnchor];
    leadingAnchor2 = [(HKDisplayTypeSectionedContextView *)v9 leadingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v51[0] = v46;
    trailingAnchor = [(UICollectionView *)v9->_collectionView trailingAnchor];
    trailingAnchor2 = [(HKDisplayTypeSectionedContextView *)v9 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v51[1] = v28;
    topAnchor = [(UICollectionView *)v9->_collectionView topAnchor];
    topAnchor2 = [(HKDisplayTypeSectionedContextView *)v9 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v51[2] = v31;
    bottomAnchor = [(UICollectionView *)v9->_collectionView bottomAnchor];
    bottomAnchor2 = [(HKDisplayTypeSectionedContextView *)v9 bottomAnchor];
    v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v51[3] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];
    [v43 activateConstraints:v35];

    if (styleCopy2 != 3)
    {
      heightAnchor = [(UICollectionView *)v9->_collectionView heightAnchor];
      v37 = [heightAnchor constraintEqualToConstant:48.0];
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

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = HKDisplayTypeSectionedContextView;
  [(HKDisplayTypeSectionedContextView *)&v5 setSemanticContentAttribute:?];
  [(UICollectionView *)self->_collectionView setSemanticContentAttribute:attribute];
}

- (void)setUseBottomInsets:(BOOL)insets
{
  if (self->_bottomInsetsEnabled != insets)
  {
    self->_bottomInsetsEnabled = insets;
    [(HKDisplayTypeSectionedContextView *)self _reconfigureCollectionViewLayoutAndInsetsIfNecessary];
  }
}

- (void)setUseHorizontalInsets:(BOOL)insets
{
  if (self->_horizontalInsetsEnabled != insets)
  {
    self->_horizontalInsetsEnabled = insets;
    [(HKDisplayTypeSectionedContextView *)self _reconfigureCollectionViewLayoutAndInsetsIfNecessary];
  }
}

- (void)setUseTopInsetsWithNoHeader:(BOOL)header
{
  if (self->_topInsetsWithNoHeaderEnabled != header)
  {
    self->_topInsetsWithNoHeaderEnabled = header;
    [(HKDisplayTypeSectionedContextView *)self _reconfigureCollectionViewLayoutAndInsetsIfNecessary];
  }
}

- (void)setContentViewTopInset:(double)inset
{
  if (inset >= 0.0 && self->_contentViewTopInset != inset)
  {
    self->_contentViewTopInset = inset;
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
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  [(UICollectionView *)self->_collectionView reloadData];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = indexPathsForSelectedItems;
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

- (id)_currentConfigurationWithBottomInsets:(BOOL)insets horizontalInsets:(BOOL)horizontalInsets topInsetsWithNoHeader:(BOOL)header
{
  headerCopy = header;
  horizontalInsetsCopy = horizontalInsets;
  insetsCopy = insets;
  v9 = objc_alloc_init(_HKSectionedContextViewConfiguration);
  [(_HKSectionedContextViewConfiguration *)v9 setIsHorizontalInTwoOverlaysMode:[(HKDisplayTypeSectionedContextView *)self _isHorizontalInTwoOverlaysMode]];
  [(_HKSectionedContextViewConfiguration *)v9 setBottomInsetsEnabled:insetsCopy];
  [(_HKSectionedContextViewConfiguration *)v9 setHorizontalInsetsEnabled:horizontalInsetsCopy];
  [(_HKSectionedContextViewConfiguration *)v9 setTopInsetsWithNoHeaderEnabled:headerCopy];

  return v9;
}

- (id)_buildCollectionViewLayoutWithBottomInsets:(BOOL)insets horizontalInsets:(BOOL)horizontalInsets topInsetsWithNoHeader:(BOOL)header
{
  v6 = [(HKDisplayTypeSectionedContextView *)self _currentConfigurationWithBottomInsets:insets horizontalInsets:horizontalInsets topInsetsWithNoHeader:header];
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

- (id)_collectionViewLayoutForHorizontalTwoOverlaysWithConfig:(id)config
{
  v23[2] = *MEMORY[0x1E69E9840];
  configCopy = config;
  v5 = [(NSMutableDictionary *)self->_collectionViewLayoutCache objectForKeyedSubscript:configCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_collectionViewLayoutCache objectForKeyedSubscript:configCopy];
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

    v6 = -[HKDisplayTypeSectionedContextView _collectionViewLayoutWithLayoutGroup:bottomInsets:horizontalInsets:topInsetsWithNoHeader:](self, "_collectionViewLayoutWithLayoutGroup:bottomInsets:horizontalInsets:topInsetsWithNoHeader:", v19, [configCopy bottomInsetsEnabled], objc_msgSend(configCopy, "horizontalInsetsEnabled"), objc_msgSend(configCopy, "topInsetsWithNoHeaderEnabled"));
    [(NSMutableDictionary *)self->_collectionViewLayoutCache setObject:v6 forKeyedSubscript:configCopy];
  }

  return v6;
}

- (id)_defaultCollectionViewLayoutWithConfiguration:(id)configuration
{
  v17[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = [(NSMutableDictionary *)self->_collectionViewLayoutCache objectForKeyedSubscript:configurationCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_collectionViewLayoutCache objectForKeyedSubscript:configurationCopy];
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

    v6 = -[HKDisplayTypeSectionedContextView _collectionViewLayoutWithLayoutGroup:bottomInsets:horizontalInsets:topInsetsWithNoHeader:](self, "_collectionViewLayoutWithLayoutGroup:bottomInsets:horizontalInsets:topInsetsWithNoHeader:", v15, [configurationCopy bottomInsetsEnabled], objc_msgSend(configurationCopy, "horizontalInsetsEnabled"), objc_msgSend(configurationCopy, "topInsetsWithNoHeaderEnabled"));
    [(NSMutableDictionary *)self->_collectionViewLayoutCache setObject:v6 forKeyedSubscript:configurationCopy];
  }

  return v6;
}

- (double)_collectionViewLineSpacing
{
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  if ([mEMORY[0x1E696C608] isiPad])
  {
    v3 = 16.0;
  }

  else
  {
    v3 = 10.0;
  }

  return v3;
}

- (id)_collectionViewLayoutWithLayoutGroup:(id)group bottomInsets:(BOOL)insets horizontalInsets:(BOOL)horizontalInsets topInsetsWithNoHeader:(BOOL)header
{
  headerCopy = header;
  horizontalInsetsCopy = horizontalInsets;
  insetsCopy = insets;
  v29[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v11 = MEMORY[0x1E6995588];
  v12 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v13 = [MEMORY[0x1E6995558] estimatedDimension:50.0];
  v14 = [v11 sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v14 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
  v16 = [MEMORY[0x1E6995580] sectionWithGroup:groupCopy];
  [(HKDisplayTypeSectionedContextView *)self _collectionViewLineSpacing];
  [v16 setInterGroupSpacing:?];
  [(HKDisplayTypeSectionedContextView *)self _contentItemInsetsWithTopInsets:headerCopy BottomInsets:insetsCopy horizontalInsets:horizontalInsetsCopy];
  [v16 setContentInsets:?];
  v17 = [MEMORY[0x1E6995580] sectionWithGroup:groupCopy];
  [(HKDisplayTypeSectionedContextView *)self _collectionViewLineSpacing];
  [v17 setInterGroupSpacing:?];
  [(HKDisplayTypeSectionedContextView *)self _contentItemInsetsWithTopInsets:1 BottomInsets:insetsCopy horizontalInsets:horizontalInsetsCopy];
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

- (BOOL)_appendHeaderForSectionIndex:(int64_t)index
{
  displayTypeContextSections = self->_displayTypeContextSections;
  if (!displayTypeContextSections)
  {
    return 0;
  }

  v4 = [(NSArray *)displayTypeContextSections objectAtIndexedSubscript:index];
  title = [v4 title];

  if (title)
  {
    v6 = [title length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDirectionalEdgeInsets)_contentItemInsetsWithTopInsets:(BOOL)insets BottomInsets:(BOOL)bottomInsets horizontalInsets:(BOOL)horizontalInsets
{
  v5 = 0.0;
  if (insets)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (horizontalInsets)
  {
    v7 = 16.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (bottomInsets)
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

- (int64_t)_widthDesignationFromTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy valueForNSIntegerTrait:objc_opt_class()];

  return v4;
}

- (BOOL)_isHorizontalInTwoOverlaysMode
{
  if (self->_style != 2)
  {
    return 0;
  }

  traitCollection = [(HKDisplayTypeSectionedContextView *)self traitCollection];
  v4 = [(HKDisplayTypeSectionedContextView *)self _widthDesignationFromTraitCollection:traitCollection];

  return (v4 - 4) < 3;
}

- (double)_interItemSpacing
{
  if (![(HKDisplayTypeSectionedContextView *)self _isHorizontalInTwoOverlaysMode])
  {
    return 0.0;
  }

  traitCollection = [(HKDisplayTypeSectionedContextView *)self traitCollection];
  v4 = [(HKDisplayTypeSectionedContextView *)self _widthDesignationFromTraitCollection:traitCollection];

  return HKCollectionViewLayoutDefaultInterItemSpacingForWidthDesignation(v4);
}

- (void)_reconfigureCollectionViewLayoutAndInsetsIfNecessary
{
  v5 = [(HKDisplayTypeSectionedContextView *)self _buildCollectionViewLayoutWithBottomInsets:self->_bottomInsetsEnabled horizontalInsets:self->_horizontalInsetsEnabled topInsetsWithNoHeader:self->_topInsetsWithNoHeaderEnabled];
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v4 = [v5 isEqual:collectionViewLayout];

  if ((v4 & 1) == 0)
  {
    [(UICollectionView *)self->_collectionView setCollectionViewLayout:v5];
    [(HKDisplayTypeSectionedContextView *)self invalidateIntrinsicContentSize];
    [(HKDisplayTypeSectionedContextView *)self setNeedsLayout];
    [(UICollectionView *)self->_collectionView setNeedsDisplay];
    [(HKDisplayTypeSectionedContextView *)self setNeedsUpdateConstraints];
  }
}

- (void)setDisplayTypeContextSections:(id)sections
{
  objc_storeStrong(&self->_displayTypeContextSections, sections);
  sectionsCopy = sections;
  [(HKDisplayTypeSectionedContextView *)self _updateSizingCellWithContextItemSections:sectionsCopy];
  [(UICollectionView *)self->_collectionView reloadData];
}

- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  collectionView = self->_collectionView;
  pathCopy = path;
  [(UICollectionView *)collectionView selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];
  [(HKDisplayTypeSectionedContextView *)self _handleSelection:self->_collectionView indexPath:pathCopy informDelegate:0];
}

- (void)deselectAllItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AC88] indexPathWithIndex:-1];
  lastSelectedIndex = self->_lastSelectedIndex;
  self->_lastSelectedIndex = v5;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v12 + 1) + 8 * v11++) animated:animatedCopy];
      }

      while (v9 != v11);
      v9 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    sizingItem = [(HKDisplayTypeSectionedContextView *)self sizingItem];
    [(HKDisplayTypeContextVerticalCollectionViewCell *)v7 updateWithContextItem:sizingItem mode:self->_style];

    sizingCell = self->_sizingCell;
  }

  return sizingCell;
}

- (id)createCellWithItem:(id)item
{
  itemCopy = item;
  [(HKDisplayTypeSectionedContextView *)self _cellSizingWidth];
  v6 = [[HKDisplayTypeContextVerticalCollectionViewCell alloc] initWithFrame:0.0, 0.0, v5, 48.0];
  [(HKDisplayTypeContextVerticalCollectionViewCell *)v6 updateWithContextItem:itemCopy mode:self->_style];

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

- (id)_makeSizingItemWithItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    _makeDummySizingItem = objc_alloc_init(HKDisplayTypeContextItem);
    title = [itemCopy title];
    [(HKDisplayTypeContextItem *)_makeDummySizingItem setTitle:title];

    accessibilityIdentifier = [itemCopy accessibilityIdentifier];
    [(HKDisplayTypeContextItem *)_makeDummySizingItem setAccessibilityIdentifier:accessibilityIdentifier];

    value = [itemCopy value];
    [(HKDisplayTypeContextItem *)_makeDummySizingItem setValue:value];

    unit = [itemCopy unit];
    [(HKDisplayTypeContextItem *)_makeDummySizingItem setUnit:unit];

    attributedLabelTextOverride = [itemCopy attributedLabelTextOverride];
    [(HKDisplayTypeContextItem *)_makeDummySizingItem setAttributedLabelTextOverride:attributedLabelTextOverride];

    valueContext = [itemCopy valueContext];
    [(HKDisplayTypeContextItem *)_makeDummySizingItem setValueContext:valueContext];

    -[HKDisplayTypeContextItem setIsUnitIncludedInValue:](_makeDummySizingItem, "setIsUnitIncludedInValue:", [itemCopy isUnitIncludedInValue]);
  }

  else
  {
    _makeDummySizingItem = [(HKDisplayTypeSectionedContextView *)self _makeDummySizingItem];
  }

  return _makeDummySizingItem;
}

- (void)_updateSizingCellWithContextItemSections:(id)sections
{
  if ((self->_style - 1) <= 1)
  {
    firstObject = [sections firstObject];
    items = [firstObject items];
    firstObject2 = [items firstObject];
    v6 = [(HKDisplayTypeSectionedContextView *)self _makeSizingItemWithItem:firstObject2];

    if (self->_style == 2)
    {
      items2 = [firstObject items];
      v8 = [items2 objectAtIndexedSubscript:1];
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

    sizingItem = [(HKDisplayTypeSectionedContextView *)self sizingItem];
    v19 = [v6 isEqualToContextItem:sizingItem];

    if (v17 || !v19)
    {
      objc_storeStrong(&self->_sizingItem, v6);
      sizingCell = [(HKDisplayTypeSectionedContextView *)self sizingCell];
      [sizingCell updateWithContextItem:self->_sizingItem mode:self->_style];

      [(HKDisplayTypeSectionedContextView *)self _updateSizingCellEstimatedHeightIfNecessary];
    }
  }
}

- (void)_updateSizingCellEstimatedHeightIfNecessary
{
  [(HKDisplayTypeSectionedContextView *)self _estimatedDynamicCellHeight];
  v4 = v3;
  _rowsForScreenSize = [(HKDisplayTypeSectionedContextView *)self _rowsForScreenSize];
  if (vabdd_f64(v4, self->_sizingCellEstimatedHeight) > 0.00000011920929 || _rowsForScreenSize != self->_lastRowsForScreenSize)
  {
    self->_sizingCellEstimatedHeight = v4;
    self->_lastRowsForScreenSize = _rowsForScreenSize;
    [(HKDisplayTypeSectionedContextView *)self invalidateIntrinsicContentSize];
    [(HKDisplayTypeSectionedContextView *)self setNeedsLayout];

    [(HKDisplayTypeSectionedContextView *)self setNeedsUpdateConstraints];
  }
}

- (double)_estimatedDynamicCellHeight
{
  sizingCell = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [(HKDisplayTypeSectionedContextView *)self addSubview:sizingCell];

  sizingCell2 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [sizingCell2 configureForTraitCollection];

  sizingCell3 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [sizingCell3 setNeedsLayout];

  sizingCell4 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [sizingCell4 layoutIfNeeded];

  sizingCell5 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [(HKDisplayTypeSectionedContextView *)self _estimateCellHeightForCell:sizingCell5];
  v9 = v8;

  sizingCell6 = [(HKDisplayTypeSectionedContextView *)self sizingCell];
  [sizingCell6 removeFromSuperview];

  return v9;
}

- (double)_estimateCellHeightForCell:(id)cell
{
  cellCopy = cell;
  [(HKDisplayTypeSectionedContextView *)self _cellSizingWidth];
  [cellCopy systemLayoutSizeFittingSize:? withHorizontalFittingPriority:? verticalFittingPriority:?];
  v6 = v5;

  return v6;
}

- (double)_preferredCollectionViewHeightForCount:(int64_t)count
{
  v5 = 16.0;
  if (!self->_bottomInsetsEnabled)
  {
    v5 = 0.0;
  }

  v6 = self->_contentViewTopInset + 16.0 + v5;
  [(HKDisplayTypeSectionedContextView *)self _collectionViewLineSpacing];
  v8 = v6 + v7 * (count - 1);
  if (count < 3)
  {
    sizingCellEstimatedHeight = self->_sizingCellEstimatedHeight;
    if (sizingCellEstimatedHeight == -1.0)
    {
      [(HKDisplayTypeSectionedContextView *)self _estimatedDynamicCellHeight];
    }

    return v8 + sizingCellEstimatedHeight * count;
  }

  else
  {
    v9 = v8 + count * 48.0;
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
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

  _isHorizontalInTwoOverlaysMode = [(HKDisplayTypeSectionedContextView *)self _isHorizontalInTwoOverlaysMode];
  [(HKDisplayTypeSectionedContextView *)self _contentWidth];
  v6 = v5;
  if (_isHorizontalInTwoOverlaysMode)
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
  window = [(HKDisplayTypeSectionedContextView *)self window];
  v3 = window;
  if (window)
  {
    [window bounds];
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

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  result = self->_displayTypeContextSections;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  displayTypeContextSections = self->_displayTypeContextSections;
  if (displayTypeContextSections && [(NSArray *)displayTypeContextSections count]- 1 >= section)
  {
    v9 = [(NSArray *)self->_displayTypeContextSections objectAtIndexedSubscript:section];
    items = [v9 items];
    v8 = [items count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[HKDisplayTypeContextVerticalCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [v9 setDelegate:self];
  v10 = -[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [pathCopy section]);
  items = [v10 items];
  item = [pathCopy item];

  v13 = [items objectAtIndexedSubscript:item];

  [v9 updateWithContextItem:v13 mode:self->_style];

  return v9;
}

- (void)_handleSelection:(id)selection indexPath:(id)path informDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v24 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  pathCopy = path;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  indexPathsForSelectedItems = [selectionCopy indexPathsForSelectedItems];
  v11 = [indexPathsForSelectedItems countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        if (v15 != pathCopy)
        {
          [selectionCopy deselectItemAtIndexPath:v15 animated:0];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [indexPathsForSelectedItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  if (self->_lastSelectedIndex == pathCopy)
  {
    if (delegateCopy)
    {
      [selectionCopy deselectItemAtIndexPath:pathCopy animated:0];
      v17 = [MEMORY[0x1E696AC88] indexPathWithIndex:-1];
      lastSelectedIndex = self->_lastSelectedIndex;
      self->_lastSelectedIndex = v17;

      delegate = [(HKDisplayTypeSectionedContextView *)self delegate];
      [delegate contextView:self didDeselectItemAtIndexPath:pathCopy];
      goto LABEL_15;
    }
  }

  else
  {
    objc_storeStrong(&self->_lastSelectedIndex, path);
    if (delegateCopy)
    {
      delegate = [(HKDisplayTypeSectionedContextView *)self delegate];
      [delegate contextView:self didSelectItemAtIndexPath:pathCopy];
LABEL_15:
    }
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v5 = MEMORY[0x1E696AC88];
  pathCopy = path;
  v7 = [v5 indexPathWithIndex:-1];
  lastSelectedIndex = self->_lastSelectedIndex;
  self->_lastSelectedIndex = v7;

  delegate = [(HKDisplayTypeSectionedContextView *)self delegate];
  [delegate contextView:self didDeselectItemAtIndexPath:pathCopy];
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(HKDisplayTypeSectionedContextView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(HKDisplayTypeSectionedContextView *)self delegate];
    v9 = [delegate2 contextView:self canSelectItemAtIndexPath:pathCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(HKDisplayTypeSectionedContextView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(HKDisplayTypeSectionedContextView *)self delegate];
    v9 = [delegate2 contextView:self canSelectItemAtIndexPath:pathCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = -[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [pathCopy section]);
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) != 0 && (-[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [pathCopy section]), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "accessoryButtonAction"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    v13 = *MEMORY[0x1E69DDC08];
    v14 = +[_HKDisplayTypeSectionedHeaderWithButtonView reuseIdentifier];
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:v14 forIndexPath:pathCopy];

    v16 = -[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [pathCopy section]);
    title = [v16 title];

    [v15 setTitle:title];
    v18 = -[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [pathCopy section]);
    accessoryButtonAction = [v18 accessoryButtonAction];
    [v15 setAccessoryButtonAction:accessoryButtonAction];
  }

  else
  {
    v20 = *MEMORY[0x1E69DDC08];
    v21 = +[_HKDisplayTypeSectionedHeaderView reuseIdentifier];
    v15 = [viewCopy dequeueReusableSupplementaryViewOfKind:v20 withReuseIdentifier:v21 forIndexPath:pathCopy];

    v22 = -[NSArray objectAtIndexedSubscript:](self->_displayTypeContextSections, "objectAtIndexedSubscript:", [pathCopy section]);
    title = [v22 title];

    [v15 setTitle:title];
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

- (void)didTapOnInfoButtonForCollectionViewCell:(id)cell
{
  v7 = [(UICollectionView *)self->_collectionView indexPathForCell:cell];
  delegate = [(HKDisplayTypeSectionedContextView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HKDisplayTypeSectionedContextView *)self delegate];
    [delegate2 contextView:self didTapOnInfoButtonAtIndex:{objc_msgSend(v7, "row")}];
  }
}

- (HKDisplayTypeSectionedContextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end