@interface MUPlacePhotoSliderView
- (CGSize)_sizeForAttribution;
- (CGSize)_sizeReplacingByZeroIfNegative:(CGSize)result;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (MUPlacePhotoSliderDelegate)delegate;
- (MUPlacePhotoSliderView)initWithDataSource:(id)source photoTileSize:(CGSize)size;
- (MUScrollAnalyticActionObserving)analyticsDelegate;
- (id)attributionViewForAttribution:(id)attribution;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)imageViewForIndex:(unint64_t)index;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)enumerateImageViewsWithBlock:(id)block;
- (void)layoutSubviews;
- (void)scrollToViewAtIndex:(unint64_t)index;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)updateViewsWithAlpha:(double)alpha;
@end

@implementation MUPlacePhotoSliderView

- (MUPlacePhotoSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MUScrollAnalyticActionObserving)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (CGSize)_sizeReplacingByZeroIfNegative:(CGSize)result
{
  if (result.width < 0.0 || result.height < 0.0)
  {
    return **&MEMORY[0x1E695F060];
  }

  return result;
}

- (void)layoutSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC848]);
  [v3 setInvalidateFlowLayoutDelegateMetrics:1];
  collectionViewLayout = [(UICollectionView *)self->_contentCollectionView collectionViewLayout];
  [collectionViewLayout invalidateLayoutWithContext:v3];

  v5.receiver = self;
  v5.super_class = MUPlacePhotoSliderView;
  [(MUPlacePhotoSliderView *)&v5 layoutSubviews];
}

- (CGSize)_sizeForAttribution
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained numberOfAttributionsForPhotoSliderView:self];

  +[MUPunchoutView preferredWidth];
  height = self->_photoTileSize.height;
  if (v4 != 1)
  {
    height = height * 0.5 + -5.0;
  }

  result.height = height;
  result.width = v5;
  return result;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = self->_beginAnalyticsScrollingPoint.x;
  v6 = offset->x;
  v7 = [(MUPlacePhotoSliderView *)self analyticsDelegate:dragging];
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  p_beginAnalyticsScrollingPoint = &self->_beginAnalyticsScrollingPoint;
  [dragging contentOffset];
  p_beginAnalyticsScrollingPoint->x = v4;
  p_beginAnalyticsScrollingPoint->y = v5;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:pathCopy];
  if (objc_opt_respondsToSelector() & 1) != 0 && (WeakRetained = objc_loadWeakRetained(&self->_dataSource), v9 = objc_opt_respondsToSelector(), WeakRetained, (v9) && (v10 = objc_loadWeakRetained(&self->_dataSource), v11 = [v10 photoSliderView:self shouldShowFullWidthForModel:v7], v10, v11))
  {
    [(UICollectionView *)self->_contentCollectionView frame];
    v13 = v12;
    height = v14;
    [(UICollectionView *)self->_contentCollectionView contentInset];
    v17 = v16;
    [(UICollectionView *)self->_contentCollectionView contentInset];
    width = v13 - (v17 + v18);
  }

  else
  {
    v20 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:pathCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(MUPlacePhotoSliderView *)self _sizeForAttribution];
      height = v22;
    }

    else
    {
      width = self->_photoTileSize.width;
      height = self->_photoTileSize.height;
    }
  }

  [(MUPlacePhotoSliderView *)self _sizeReplacingByZeroIfNegative:width, height];
  v24 = v23;
  v26 = v25;

  v27 = v24;
  v28 = v26;
  result.height = v28;
  result.width = v27;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(MUPlacePhotoSliderView *)self delegate];
    [delegate photoSliderView:self didTapAttribution:v6];
  }

  else
  {
    if (![v6 conformsToProtocol:&unk_1F454DD90])
    {
      goto LABEL_6;
    }

    delegate = [(MUPlacePhotoSliderView *)self delegate];
    [delegate photoSliderView:self didTapViewModel:v6];
  }

LABEL_6:
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = +[MUPunchoutCollectionViewCell reuseIdentifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

    [v12 setViewModel:identifierCopy];
  }

  else if ([identifierCopy conformsToProtocol:&unk_1F454DD90])
  {
    v13 = identifierCopy;
    v14 = +[MUPhotoTileCollectionViewCell reuseIdentifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:pathCopy];

    [v12 setTargetFrameSize:{self->_photoTileSize.width, self->_photoTileSize.height}];
    [v12 setViewModel:v13];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v16 = [WeakRetained photoSliderView:self photoOverlayForModel:v13];

    [v12 setPhotoOverlay:v16];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)enumerateImageViewsWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  visibleCells = [(UICollectionView *)self->_contentCollectionView visibleCells];
  v6 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          contentImageView = [v10 contentImageView];
          blockCopy[2](blockCopy, contentImageView);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)scrollToViewAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_photoModels count]> index)
  {
    contentCollectionView = self->_contentCollectionView;
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
    [(UICollectionView *)contentCollectionView scrollToItemAtIndexPath:v6 atScrollPosition:16 animated:0];
  }
}

- (id)attributionViewForAttribution:(id)attribution
{
  v4 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource indexPathForItemIdentifier:attribution];
  if (v4)
  {
    v5 = [(UICollectionView *)self->_contentCollectionView cellForItemAtIndexPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateViewsWithAlpha:(double)alpha
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  visibleCells = [(UICollectionView *)self->_contentCollectionView visibleCells];
  v5 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v10 + 1) + 8 * v8++) setAlpha:alpha];
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)imageViewForIndex:(unint64_t)index
{
  contentCollectionView = self->_contentCollectionView;
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
  v5 = [(UICollectionView *)contentCollectionView cellForItemAtIndexPath:v4];

  objc_opt_class();
  contentImageView = 0;
  if (objc_opt_isKindOfClass())
  {
    contentImageView = [v5 contentImageView];
  }

  return contentImageView;
}

- (void)_setupConstraints
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = self->_contentCollectionView;
  v4 = [[MUEdgeLayout alloc] initWithItem:v3 container:self];
  v5 = [MUSizeLayout alloc];
  +[MUSizeLayout useIntrinsicContentSize];
  height = self->_photoTileSize.height;
  v7 = [(MUSizeLayout *)v5 initWithItem:v3 size:?];
  v8 = MEMORY[0x1E696ACD8];
  v11[0] = v4;
  v11[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v8 _mapsui_activateLayouts:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v19 = objc_alloc_init(_MUPhotoSliderViewFlowLayout);
  [(UICollectionViewFlowLayout *)v19 setScrollDirection:1];
  [(UICollectionViewFlowLayout *)v19 setMinimumInteritemSpacing:10.0];
  [(UICollectionViewFlowLayout *)v19 setMinimumLineSpacing:10.0];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v4 = [v3 initWithFrame:v19 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  contentCollectionView = self->_contentCollectionView;
  self->_contentCollectionView = v4;

  [(UICollectionView *)self->_contentCollectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_contentCollectionView setBackgroundColor:clearColor];

  [(UICollectionView *)self->_contentCollectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_contentCollectionView setDelegate:self];
  MKPlaceHorizontalPlatterMargin();
  [(UICollectionView *)self->_contentCollectionView setContentInset:0.0, v7, 0.0, v7];
  v8 = self->_contentCollectionView;
  v9 = objc_opt_class();
  v10 = +[MUPhotoTileCollectionViewCell reuseIdentifier];
  [(UICollectionView *)v8 registerClass:v9 forCellWithReuseIdentifier:v10];

  v11 = self->_contentCollectionView;
  v12 = objc_opt_class();
  v13 = +[MUPunchoutCollectionViewCell reuseIdentifier];
  [(UICollectionView *)v11 registerClass:v12 forCellWithReuseIdentifier:v13];

  v14 = objc_alloc(MEMORY[0x1E69DC820]);
  v15 = self->_contentCollectionView;
  v16 = MUCollectionViewDiffableDataSourceCellProviderForwardingBlock(self);
  v17 = [v14 initWithCollectionView:v15 cellProvider:v16];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v17;

  [(MUPlacePhotoSliderView *)self addSubview:self->_contentCollectionView];
}

- (MUPlacePhotoSliderView)initWithDataSource:(id)source photoTileSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = MUPlacePhotoSliderView;
  v8 = [(MUPlacePhotoSliderView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    v9->_photoTileSize.width = width;
    v9->_photoTileSize.height = height;
    [(MUPlacePhotoSliderView *)v9 _setupSubviews];
    [(MUPlacePhotoSliderView *)v9 _setupConstraints];
    [(MUPlacePhotoSliderView *)v9 setAccessibilityIdentifier:@"PhotoSliderView"];
  }

  return v9;
}

@end