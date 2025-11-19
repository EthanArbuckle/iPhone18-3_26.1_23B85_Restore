@interface MUPlaceTilesView
- (BOOL)shouldCalculateTileSizeAccordingToBounds;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (MUPlaceTilesView)initWithConfiguration:(id)a3;
- (MUPlaceTilesViewDelegate)delegate;
- (MUScrollAnalyticActionObserving)analyticsDelegate;
- (double)_calculatedTileWidthFromBounds;
- (double)heightForTileSize:(CGSize)a3;
- (id)accessoryView;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)imageViewForIndex:(unint64_t)a3;
- (void)_contentSizeDidChange;
- (void)_setupStackView;
- (void)_updateContent;
- (void)_updateTileMetrics;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)displayPlaceTiles;
- (void)enumerateImageViewsWithBlock:(id)a3;
- (void)layoutSubviews;
- (void)scrollToViewAtIndex:(unint64_t)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)updateViewsWithAlpha:(double)a3;
@end

@implementation MUPlaceTilesView

- (MUPlaceTilesViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MUScrollAnalyticActionObserving)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (double)heightForTileSize:(CGSize)a3
{
  height = a3.height;
  if (![(MUPlaceTilesViewConfiguration *)self->_configuration numberOfRows])
  {
    return 0.0;
  }

  v5 = 0;
  v6 = 0.0;
  do
  {
    v6 = v6 + height;
    if (v5 < [(MUPlaceTilesViewConfiguration *)self->_configuration numberOfRows]- 1)
    {
      v6 = v6 + 10.0;
    }

    ++v5;
  }

  while (v5 < [(MUPlaceTilesViewConfiguration *)self->_configuration numberOfRows]);
  return v6;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:a5, a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    +[MUPunchoutView preferredWidth];
    width = v7;
    [(MUPlaceTilesView *)self heightForTileSize:self->_tileSize.width, self->_tileSize.height];
    height = v9;
  }

  else
  {
    width = self->_tileSize.width;
    height = self->_tileSize.height;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (double)_calculatedTileWidthFromBounds
{
  MKPlaceHorizontalPlatterMargin();
  v4 = v3;
  [(MUPlaceTilesView *)self bounds];
  return (CGRectGetWidth(v6) + -10.0 - (v4 + v4)) * 0.5;
}

- (BOOL)shouldCalculateTileSizeAccordingToBounds
{
  if (MUIdiomInTraitEnvironment(self) == 5)
  {
    return 0;
  }

  [(MUPlaceTilesView *)self bounds];
  if (CGRectGetWidth(v9) > 430.0)
  {
    return 0;
  }

  [(MUPlaceTilesView *)self _calculatedTileWidthFromBounds];
  v5 = v4;
  v6 = +[MUPlaceTileMeasurements defaultMeasurements];
  [v6 tileWidth];
  v8 = v7;

  return v5 >= v8;
}

- (void)_contentSizeDidChange
{
  [(MUPlaceTilesView *)self _updateTileMetrics];
  diffableDataSource = self->_diffableDataSource;
  v4 = [(UICollectionViewDiffableDataSource *)diffableDataSource snapshot];
  [(UICollectionViewDiffableDataSource *)diffableDataSource applySnapshotUsingReloadData:v4];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MUPlaceTilesView;
  [(MUPlaceTilesView *)&v7 layoutSubviews];
  [(MUPlaceTilesView *)self bounds];
  if (!CGRectEqualToRect(v8, self->_cachedBounds))
  {
    [(MUPlaceTilesView *)self bounds];
    self->_cachedBounds.origin.x = v3;
    self->_cachedBounds.origin.y = v4;
    self->_cachedBounds.size.width = v5;
    self->_cachedBounds.size.height = v6;
    if ([(MUPlaceTilesView *)self shouldCalculateTileSizeAccordingToBounds])
    {
      [(MUPlaceTilesView *)self _updateTileMetrics];
      [(UICollectionViewFlowLayout *)self->_flowLayout invalidateLayout];
    }
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = self->_beginAnalyticsScrollingPoint.x;
  v6 = a5->x;
  v7 = [(MUPlaceTilesView *)self analyticsDelegate:a3];
  v8 = v7;
  if (x <= v6)
  {
    [v7 performInstrumentationForScrollRight];
  }

  else
  {
    [v7 performInstrumentationForScrollLeft];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  p_beginAnalyticsScrollingPoint = &self->_beginAnalyticsScrollingPoint;
  [a3 contentOffset];
  p_beginAnalyticsScrollingPoint->x = v4;
  p_beginAnalyticsScrollingPoint->y = v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MUPlaceTilesView *)self delegate];
    [v5 placeTileCollectionView:self didTapOnAccessoryViewModel:v6];
  }

  else
  {
    if (![v6 conformsToProtocol:&unk_1F455A298])
    {
      goto LABEL_6;
    }

    v5 = [(MUPlaceTilesView *)self delegate];
    [v5 placeTileCollectionView:self didTapOnViewModel:v6];
  }

LABEL_6:
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = +[MUPunchoutCollectionViewCell reuseIdentifier];
    v12 = [v8 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v9];

    [v12 setViewModel:v10];
  }

  else if ([v10 conformsToProtocol:&unk_1F455A298])
  {
    v13 = v10;
    v14 = +[MUPlaceTileCollectionViewCell reuseIdentifier];
    v12 = [v8 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v9];

    v15 = [(MUPlaceTilesViewConfiguration *)self->_configuration cellConfiguration];
    [v12 setCellConfiguration:v15];

    [v12 setClipsToBounds:0];
    v16 = [v12 contentView];
    [v16 setClipsToBounds:0];

    v17 = objc_alloc_init(MUPlatterView);
    [v12 setBackgroundView:v17];

    v18 = [v12 contentView];
    [v18 _mapsui_setCardCorner];

    [v12 setViewModel:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)accessoryView
{
  if (self->_accessoryViewModel)
  {
    v3 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource indexPathForItemIdentifier:?];
    if (v3)
    {
      v4 = [(UICollectionView *)self->_contentCollectionView cellForItemAtIndexPath:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)scrollToViewAtIndex:(unint64_t)a3
{
  contentCollectionView = self->_contentCollectionView;
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
  [(UICollectionView *)contentCollectionView scrollToItemAtIndexPath:v4 atScrollPosition:16 animated:0];
}

- (void)enumerateImageViewsWithBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UICollectionView *)self->_contentCollectionView visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 tileImageView];
          v4[2](v4, v11);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateViewsWithAlpha:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(UICollectionView *)self->_contentCollectionView visibleCells];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setAlpha:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)imageViewForIndex:(unint64_t)a3
{
  contentCollectionView = self->_contentCollectionView;
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
  v5 = [(UICollectionView *)contentCollectionView cellForItemAtIndexPath:v4];

  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 tileImageView];
  }

  return v6;
}

- (void)_updateContent
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MUGetMUPlaceTilesViewLog();
  if (os_signpost_enabled(v3))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceTilesViewUpdateContent", "", v9, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v11[0] = @"kPlaceTilesSection";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v4 appendSectionsWithIdentifiers:v5];

  [v4 appendItemsWithIdentifiers:self->_viewModels intoSectionWithIdentifier:@"kPlaceTilesSection"];
  if (self->_accessoryViewModel)
  {
    accessoryViewModel = self->_accessoryViewModel;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&accessoryViewModel count:1];
    [v4 appendItemsWithIdentifiers:v6 intoSectionWithIdentifier:@"kPlaceTilesSection"];
  }

  [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v4 animatingDifferences:0];
  v7 = MUGetMUPlaceTilesViewLog();
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceTilesViewUpdateContent", "", v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateTileMetrics
{
  v7 = +[MUPlaceTileMeasurements defaultMeasurements];
  if ([(MUPlaceTilesView *)self shouldCalculateTileSizeAccordingToBounds])
  {
    [(MUPlaceTilesView *)self _calculatedTileWidthFromBounds];
    [v7 setTileWidth:?];
  }

  v3 = [(NSArray *)self->_viewModels copy];
  v4 = [(MUPlaceTilesViewConfiguration *)self->_configuration cellConfiguration];
  [MUPlaceTileCollectionViewCell preferredSizeForViewModels:v3 cellConfiguration:v4 usingMeasurements:v7];
  self->_tileSize.width = v5;
  self->_tileSize.height = v6;

  [(MUPlaceTilesView *)self heightForTileSize:self->_tileSize.width, self->_tileSize.height];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];
}

- (void)displayPlaceTiles
{
  if ([(NSArray *)self->_viewModels count])
  {
    [(MUPlaceTilesView *)self _updateTileMetrics];

    [(MUPlaceTilesView *)self _updateContent];
  }
}

- (void)_setupStackView
{
  v46[5] = *MEMORY[0x1E69E9840];
  [(MUPlaceTilesView *)self setClipsToBounds:0];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [(UICollectionViewFlowLayout *)v3 setScrollDirection:1];
  [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:10.0];
  [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:10.0];
  flowLayout = self->_flowLayout;
  self->_flowLayout = v3;
  v44 = v3;

  v5 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v6 = [v5 initWithFrame:v44 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  contentCollectionView = self->_contentCollectionView;
  self->_contentCollectionView = v6;

  MKPlaceHorizontalPlatterMargin();
  [(UICollectionView *)self->_contentCollectionView setContentInset:0.0, v8, 0.0, v8];
  v9 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_contentCollectionView setBackgroundColor:v9];

  [(UICollectionView *)self->_contentCollectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_contentCollectionView setDelegate:self];
  [(UICollectionView *)self->_contentCollectionView setClipsToBounds:0];
  v10 = self->_contentCollectionView;
  v11 = objc_opt_class();
  v12 = +[MUPlaceTileCollectionViewCell reuseIdentifier];
  [(UICollectionView *)v10 registerClass:v11 forCellWithReuseIdentifier:v12];

  v13 = self->_contentCollectionView;
  v14 = objc_opt_class();
  v15 = +[MUPunchoutCollectionViewCell reuseIdentifier];
  [(UICollectionView *)v13 registerClass:v14 forCellWithReuseIdentifier:v15];

  v16 = objc_alloc(MEMORY[0x1E69DC820]);
  v17 = self->_contentCollectionView;
  v18 = MUCollectionViewDiffableDataSourceCellProviderForwardingBlock(self);
  v19 = [v16 initWithCollectionView:v17 cellProvider:v18];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v19;

  v21 = self->_contentCollectionView;
  [(UICollectionView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlaceTilesView *)self addSubview:v21];
  v22 = [(UICollectionView *)v21 heightAnchor];
  v23 = [v22 constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v23;

  v38 = MEMORY[0x1E696ACD8];
  v43 = [(UICollectionView *)v21 leadingAnchor];
  v42 = [(MUPlaceTilesView *)self leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v46[0] = v41;
  v40 = [(UICollectionView *)v21 trailingAnchor];
  v39 = [(MUPlaceTilesView *)self trailingAnchor];
  v25 = [v40 constraintEqualToAnchor:v39];
  v46[1] = v25;
  v26 = [(UICollectionView *)v21 topAnchor];
  v27 = [(MUPlaceTilesView *)self topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v46[2] = v28;
  v29 = [(UICollectionView *)v21 bottomAnchor];
  v30 = [(MUPlaceTilesView *)self bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v32 = self->_heightConstraint;
  v46[3] = v31;
  v46[4] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:5];
  [v38 activateConstraints:v33];

  v34 = objc_opt_self();
  v45 = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v36 = [(MUPlaceTilesView *)self registerForTraitChanges:v35 withAction:sel__contentSizeDidChange];

  v37 = *MEMORY[0x1E69E9840];
}

- (MUPlaceTilesView)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPlaceTilesView;
  v6 = [(MUPlaceTilesView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_tileSize = *MEMORY[0x1E695F060];
    objc_storeStrong(&v6->_configuration, a3);
    [(MUPlaceTilesView *)v7 _setupStackView];
  }

  return v7;
}

@end