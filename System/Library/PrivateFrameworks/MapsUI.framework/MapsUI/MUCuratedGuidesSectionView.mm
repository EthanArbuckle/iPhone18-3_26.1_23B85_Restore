@interface MUCuratedGuidesSectionView
- (MKPlaceCollectionsDelegate)collectionsDelegate;
- (id)initCollectionsCarouselViewWithPlaceCollections:(id)a3 usingSyncCoordinator:(id)a4 withRoutingDelegate:(id)a5 withScrollViewDelegate:(id)a6 withAnalyticsDelegate:(id)a7 exploreGuides:(id)a8;
- (int64_t)carouselContext;
- (void)_setupSubviews;
- (void)displayCollectionsIfNeeded;
@end

@implementation MUCuratedGuidesSectionView

- (MKPlaceCollectionsDelegate)collectionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionsDelegate);

  return WeakRetained;
}

- (void)displayCollectionsIfNeeded
{
  v3 = [(MUCuratedGuidesSectionView *)self carouselView];
  v4 = [v3 isDisplayingCollections];

  if ((v4 & 1) == 0)
  {
    v5 = [(MUCuratedGuidesSectionView *)self carouselView];
    [v5 displayCollections];
  }
}

- (int64_t)carouselContext
{
  if (MapKitIdiomIsMacCatalyst())
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

- (void)_setupSubviews
{
  v10[2] = *MEMORY[0x1E69E9840];
  [(MUCuratedGuidesSectionView *)self addSubview:self->_carouselView];
  v3 = [[MUEdgeLayout alloc] initWithItem:self->_carouselView container:self];
  [MEMORY[0x1E696F1B8] horizontalLayoutHeightInContext:-[MUCuratedGuidesSectionView carouselContext](self includeExploreGuidesHeight:"carouselContext") isSingleCollection:{-[MKCollectionsCarouselView isShowingExploreGuides](self->_carouselView, "isShowingExploreGuides"), self->_isSingleCollection}];
  v4 = [MUSizeLayout alloc];
  carouselView = self->_carouselView;
  +[MUSizeLayout useIntrinsicContentSize];
  v6 = [(MUSizeLayout *)v4 initWithItem:carouselView size:?];
  v7 = MEMORY[0x1E696ACD8];
  v10[0] = v3;
  v10[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v7 _mapsui_activateLayouts:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (id)initCollectionsCarouselViewWithPlaceCollections:(id)a3 usingSyncCoordinator:(id)a4 withRoutingDelegate:(id)a5 withScrollViewDelegate:(id)a6 withAnalyticsDelegate:(id)a7 exploreGuides:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v24.receiver = self;
  v24.super_class = MUCuratedGuidesSectionView;
  v20 = [(MUCuratedGuidesSectionView *)&v24 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v20)
  {
    v21 = [objc_alloc(MEMORY[0x1E696F1B8]) initCollectionsCarouselViewWithContext:-[MUCuratedGuidesSectionView carouselContext](v20 withPlaceCollections:"carouselContext") usingSyncCoordinator:v14 withRoutingDelegate:v15 withScrollViewDelegate:v16 withAnalyticsDelegate:v17 exploreGuides:{v18, v19}];
    carouselView = v20->_carouselView;
    v20->_carouselView = v21;

    v20->_isSingleCollection = [v14 count] == 1;
    [(MUCuratedGuidesSectionView *)v20 _setupSubviews];
  }

  return v20;
}

@end