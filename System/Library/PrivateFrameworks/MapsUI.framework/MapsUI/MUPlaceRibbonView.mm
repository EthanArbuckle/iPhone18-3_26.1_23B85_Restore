@interface MUPlaceRibbonView
- (BOOL)contentIsWiderThanView;
- (BOOL)hasContent;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (MUPlaceRibbonView)initWithFrame:(CGRect)a3;
- (MUPlaceRibbonViewDelegate)delegate;
- (MUScrollAnalyticActionObserving)analyticsDelegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_visibleRibbonItemViews;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (void)_setupCollectionView;
- (void)_updateAppearance;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setViewModels:(id)a3;
@end

@implementation MUPlaceRibbonView

- (MUPlaceRibbonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MUScrollAnalyticActionObserving)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = [(MUPlaceRibbonView *)self delegate];
    v13 = [v12 ribbonView:self shouldShowRibbonItem:v11];

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v8 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v9];

      [v11 setShouldCenterContents:{-[MUPlaceRibbonView contentIsWiderThanView](self, "contentIsWiderThanView") ^ 1}];
      [v16 setViewModel:v11];
      objc_initWeak(&location, self);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __74__MUPlaceRibbonView_collectionView_cellForItemAtIndexPath_itemIdentifier___block_invoke;
      v21[3] = &unk_1E821BAC8;
      objc_copyWeak(&v22, &location);
      [v16 setInvalidationHandler:v21];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __74__MUPlaceRibbonView_collectionView_cellForItemAtIndexPath_itemIdentifier___block_invoke_2;
      v18[3] = &unk_1E8219A18;
      objc_copyWeak(&v20, &location);
      v19 = v11;
      [v16 setActionHandler:v18];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __74__MUPlaceRibbonView_collectionView_cellForItemAtIndexPath_itemIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[53] invalidateLayout];
    WeakRetained = v2;
  }
}

void __74__MUPlaceRibbonView_collectionView_cellForItemAtIndexPath_itemIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = objc_alloc_init(MUPresentationOptions);
    [(MUPresentationOptions *)v4 setSourceView:v6];
    [v6 frame];
    [(MUPresentationOptions *)v4 setSourceRect:?];
    [(MUPresentationOptions *)v4 setProgressObserver:v6];
    v5 = [WeakRetained delegate];
    [v5 ribbonView:WeakRetained didTapItemWithViewModel:*(a1 + 32) withPresentationOptions:v4];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [a5 item];
  if (v6 <= [(NSArray *)self->_viewModels count])
  {
    v9 = [(NSArray *)self->_viewModels objectAtIndexedSubscript:v6];
    [(MUPlaceRibbonItemView *)self->_sizingView setViewModel:v9];

    [(UIView *)self->_sizingView _mapsui_fittingSize];
    v8 = v10;
    [(NSLayoutConstraint *)self->_heightConstraint constant];
    v7 = v11;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  v12 = v8;
  result.height = v7;
  result.width = v12;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [a3 frame];
  Width = CGRectGetWidth(v12);
  totalContentWidth = self->_totalContentWidth;
  if (totalContentWidth >= Width)
  {
    v8 = 2.0;
  }

  else
  {
    v8 = (Width - totalContentWidth) * 0.5;
  }

  v9 = 0.0;
  v10 = 0.0;
  v11 = v8;
  result.right = v11;
  result.bottom = v10;
  result.left = v8;
  result.top = v9;
  return result;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = self->_beginAnalyticsScrollingPoint.x;
  v6 = a5->x;
  v7 = [(MUPlaceRibbonView *)self analyticsDelegate:a3];
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

- (BOOL)contentIsWiderThanView
{
  totalContentWidth = self->_totalContentWidth;
  [(UICollectionView *)self->_contentCollectionView frame];
  return totalContentWidth > CGRectGetWidth(v4);
}

- (id)_visibleRibbonItemViews
{
  viewModels = self->_viewModels;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MUPlaceRibbonView__visibleRibbonItemViews__block_invoke;
  v6[3] = &unk_1E82199F0;
  v6[4] = self;
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:v6];
  v4 = [(NSArray *)viewModels filteredArrayUsingPredicate:v3];

  return v4;
}

uint64_t __44__MUPlaceRibbonView__visibleRibbonItemViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 ribbonView:*(a1 + 32) shouldShowRibbonItem:v4];

  return v6;
}

- (BOOL)hasContent
{
  v2 = self;
  v3 = [(MUPlaceRibbonView *)self _visibleRibbonItemViews];
  LOBYTE(v2) = v2->_minimumThresholdOfItems <= [v3 count];

  return v2;
}

- (void)_updateAppearance
{
  v21 = *MEMORY[0x1E69E9840];
  self->_totalContentWidth = 40.0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_viewModels;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MUPlaceRibbonItemView *)self->_sizingView setViewModel:*(*(&v15 + 1) + 8 * i), v15];
        [(UIView *)self->_sizingView _mapsui_fittingSize];
        v7 = fmax(v9, v7);
        self->_totalContentWidth = self->_totalContentWidth + v10;
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  if ([(NSArray *)self->_viewModels count])
  {
    [(UICollectionViewFlowLayout *)self->_flowLayout minimumLineSpacing];
    self->_totalContentWidth = self->_totalContentWidth + v11 * ([(NSArray *)self->_viewModels count]- 1);
  }

  [(NSLayoutConstraint *)self->_heightConstraint setConstant:v7, v15];
  v12 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v19 = @"PlaceRibbonSection";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  [v12 appendSectionsWithIdentifiers:v13];

  [v12 appendItemsWithIdentifiers:self->_viewModels intoSectionWithIdentifier:@"PlaceRibbonSection"];
  [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v12 animatingDifferences:0];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setViewModels:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_viewModels isEqualToArray:?])
  {
    v4 = [v6 copy];
    viewModels = self->_viewModels;
    self->_viewModels = v4;

    [(MUPlaceRibbonView *)self _updateAppearance];
  }
}

- (void)_setupCollectionView
{
  v42[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  viewModels = self->_viewModels;
  self->_viewModels = v3;

  v5 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [(UICollectionViewFlowLayout *)v5 setScrollDirection:1];
  [(UICollectionViewFlowLayout *)v5 setMinimumLineSpacing:30.0];
  [(UICollectionViewFlowLayout *)v5 setEstimatedItemSize:*MEMORY[0x1E69DDC10], *(MEMORY[0x1E69DDC10] + 8)];
  [(UICollectionViewFlowLayout *)v5 setMinimumInteritemSpacing:0.0];
  flowLayout = self->_flowLayout;
  self->_flowLayout = v5;
  v41 = v5;

  v7 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v8 = [v7 initWithFrame:v41 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  contentCollectionView = self->_contentCollectionView;
  self->_contentCollectionView = v8;

  v10 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_contentCollectionView setBackgroundColor:v10];

  [(UICollectionView *)self->_contentCollectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_contentCollectionView setDelegate:self];
  MKPlaceHorizontalPlatterMargin();
  [(UICollectionView *)self->_contentCollectionView setContentInset:0.0, v11, 0.0, v11];
  v12 = self->_contentCollectionView;
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [(UICollectionView *)v12 registerClass:v13 forCellWithReuseIdentifier:v15];

  v16 = objc_alloc(MEMORY[0x1E69DC820]);
  v17 = self->_contentCollectionView;
  v18 = MUCollectionViewDiffableDataSourceCellProviderForwardingBlock(self);
  v19 = [v16 initWithCollectionView:v17 cellProvider:v18];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v19;

  v21 = self->_contentCollectionView;
  [(UICollectionView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlaceRibbonView *)self addSubview:v21];
  v22 = [(UICollectionView *)v21 heightAnchor];
  v23 = [v22 constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v23;

  v35 = MEMORY[0x1E696ACD8];
  v40 = [(UICollectionView *)v21 leadingAnchor];
  v39 = [(MUPlaceRibbonView *)self leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v42[0] = v38;
  v37 = [(UICollectionView *)v21 trailingAnchor];
  v36 = [(MUPlaceRibbonView *)self trailingAnchor];
  v25 = [v37 constraintEqualToAnchor:v36];
  v42[1] = v25;
  v26 = [(UICollectionView *)v21 topAnchor];
  v27 = [(MUPlaceRibbonView *)self topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v42[2] = v28;
  v29 = [(UICollectionView *)v21 bottomAnchor];
  v30 = [(MUPlaceRibbonView *)self bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v32 = self->_heightConstraint;
  v42[3] = v31;
  v42[4] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:5];
  [v35 activateConstraints:v33];

  v34 = *MEMORY[0x1E69E9840];
}

- (MUPlaceRibbonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MUPlaceRibbonView;
  v3 = [(MUPlaceRibbonView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v3->_minimumThresholdOfItems = GEOConfigGetUInteger();
    v4 = objc_alloc_init(MUPlaceRibbonItemView);
    sizingView = v3->_sizingView;
    v3->_sizingView = v4;

    [(MUPlaceRibbonView *)v3 _setupCollectionView];
  }

  return v3;
}

@end