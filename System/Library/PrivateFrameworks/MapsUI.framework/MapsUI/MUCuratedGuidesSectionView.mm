@interface MUCuratedGuidesSectionView
- (MKPlaceCollectionsDelegate)collectionsDelegate;
- (id)initCollectionsCarouselViewWithPlaceCollections:(id)collections usingSyncCoordinator:(id)coordinator withRoutingDelegate:(id)delegate withScrollViewDelegate:(id)viewDelegate withAnalyticsDelegate:(id)analyticsDelegate exploreGuides:(id)guides;
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
  carouselView = [(MUCuratedGuidesSectionView *)self carouselView];
  isDisplayingCollections = [carouselView isDisplayingCollections];

  if ((isDisplayingCollections & 1) == 0)
  {
    carouselView2 = [(MUCuratedGuidesSectionView *)self carouselView];
    [carouselView2 displayCollections];
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

- (id)initCollectionsCarouselViewWithPlaceCollections:(id)collections usingSyncCoordinator:(id)coordinator withRoutingDelegate:(id)delegate withScrollViewDelegate:(id)viewDelegate withAnalyticsDelegate:(id)analyticsDelegate exploreGuides:(id)guides
{
  collectionsCopy = collections;
  coordinatorCopy = coordinator;
  delegateCopy = delegate;
  viewDelegateCopy = viewDelegate;
  analyticsDelegateCopy = analyticsDelegate;
  guidesCopy = guides;
  v24.receiver = self;
  v24.super_class = MUCuratedGuidesSectionView;
  v20 = [(MUCuratedGuidesSectionView *)&v24 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v20)
  {
    v21 = [objc_alloc(MEMORY[0x1E696F1B8]) initCollectionsCarouselViewWithContext:-[MUCuratedGuidesSectionView carouselContext](v20 withPlaceCollections:"carouselContext") usingSyncCoordinator:collectionsCopy withRoutingDelegate:coordinatorCopy withScrollViewDelegate:delegateCopy withAnalyticsDelegate:viewDelegateCopy exploreGuides:{analyticsDelegateCopy, guidesCopy}];
    carouselView = v20->_carouselView;
    v20->_carouselView = v21;

    v20->_isSingleCollection = [collectionsCopy count] == 1;
    [(MUCuratedGuidesSectionView *)v20 _setupSubviews];
  }

  return v20;
}

@end