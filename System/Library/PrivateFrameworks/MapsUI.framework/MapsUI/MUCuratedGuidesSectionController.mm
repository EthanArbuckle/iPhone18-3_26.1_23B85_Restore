@interface MUCuratedGuidesSectionController
- (BOOL)shouldShowMoreButton;
- (MKPlaceCollectionsDelegate)collectionsDelegate;
- (MUCuratedGuidesSectionController)initWithDelegate:(id)delegate withPlaceCollections:(id)collections usingSyncCoordinator:(id)coordinator usingMapItem:(id)item usingCollectionIds:(id)ids exploreGuides:(id)guides;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (id)_sectionHeaderTitle;
- (void)_seeAllTapped;
- (void)_setupCollectionView;
- (void)_setupViews;
- (void)collectionsCarouselDidScrollBackward;
- (void)collectionsCarouselDidScrollForward;
- (void)exploreGuidesButtonTapped;
- (void)setActive:(BOOL)active;
@end

@implementation MUCuratedGuidesSectionController

- (MKPlaceCollectionsDelegate)collectionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionsDelegate);

  return WeakRetained;
}

- (BOOL)shouldShowMoreButton
{
  carouselView = [(MUCuratedGuidesSectionController *)self carouselView];
  traitCollection = [carouselView traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    placeCollections = [(MUCuratedGuidesSectionController *)self placeCollections];
    v6 = [placeCollections count];

    if (v6 > 5)
    {
      return 1;
    }
  }

  else
  {
  }

  carouselView2 = [(MUCuratedGuidesSectionController *)self carouselView];
  if ([carouselView2 isShowingExploreGuides])
  {
    v7 = 0;
  }

  else
  {
    placeCollections2 = [(MUCuratedGuidesSectionController *)self placeCollections];
    v7 = [placeCollections2 count] > 5;
  }

  return v7;
}

- (id)_sectionHeaderTitle
{
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _isMapItemTypeSettlement = [mapItem _isMapItemTypeSettlement];

  if (_isMapItemTypeSettlement)
  {
    v5 = @"[Curated Collections] Guides";
  }

  else if ([(NSArray *)self->_placeCollections count]== 1)
  {
    v5 = @"[Curated Collections] poi section title for single guide";
  }

  else
  {
    v5 = @"[Curated Collections] poi section title for more than 1 guide";
  }

  v6 = _MULocalizedStringFromThisBundle(v5);

  return v6;
}

- (void)_seeAllTapped
{
  collectionsDelegate = [(MUCuratedGuidesSectionController *)self collectionsDelegate];
  placeCollections = [(MUCuratedGuidesSectionController *)self placeCollections];
  titleString = [(MUPlaceSectionHeaderViewModel *)self->_sectionHeaderViewModel titleString];
  collectionIds = [(MUCuratedGuidesSectionController *)self collectionIds];
  [collectionsDelegate showAllCollections:placeCollections usingTitle:titleString usingCollectionIds:collectionIds];
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (!sectionHeaderViewModel)
  {
    shouldShowMoreButton = [(MUCuratedGuidesSectionController *)self shouldShowMoreButton];
    v5 = [MUPlaceSectionHeaderViewModel alloc];
    _sectionHeaderTitle = [(MUCuratedGuidesSectionController *)self _sectionHeaderTitle];
    v7 = [(MUPlaceSectionHeaderViewModel *)v5 initWithTitleString:_sectionHeaderTitle showSeeMore:shouldShowMoreButton];
    v8 = self->_sectionHeaderViewModel;
    self->_sectionHeaderViewModel = v7;

    sectionHeaderViewModel = self->_sectionHeaderViewModel;
    if (shouldShowMoreButton)
    {
      [(MUPlaceSectionHeaderViewModel *)sectionHeaderViewModel setTarget:self selector:sel__seeAllTapped];
      sectionHeaderViewModel = self->_sectionHeaderViewModel;
    }
  }

  return sectionHeaderViewModel;
}

- (void)exploreGuidesButtonTapped
{
  analyticsManager = [(MUCuratedGuidesSectionController *)self analyticsManager];
  [analyticsManager placecardExploreGuidesButtonTapped];
}

- (void)collectionsCarouselDidScrollBackward
{
  analyticsManager = [(MUCuratedGuidesSectionController *)self analyticsManager];
  [analyticsManager placecardCollectionsScrollBackward];
}

- (void)collectionsCarouselDidScrollForward
{
  analyticsManager = [(MUCuratedGuidesSectionController *)self analyticsManager];
  [analyticsManager placecardCollectionsScrollForward];
}

- (void)_setupCollectionView
{
  if (self->_active)
  {
    carouselView = [(MUCuratedGuidesSectionController *)self carouselView];
    [carouselView displayCollectionsIfNeeded];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    v10 = v3;
    v11 = v4;
    self->_active = active;
    v6 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUCuratedGuidesSectionControllerActivate", "", buf, 2u);
    }

    [(MUCuratedGuidesSectionController *)self _setupCollectionView];
    v7 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v7))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUCuratedGuidesSectionControllerActivate", "", v8, 2u);
    }
  }
}

- (void)_setupViews
{
  v3 = [MUPlaceSectionView alloc];
  sectionHeaderViewModel = [(MUCuratedGuidesSectionController *)self sectionHeaderViewModel];
  v5 = [(MUPlaceSectionView *)v3 initWithStyle:0 sectionHeaderViewModel:sectionHeaderViewModel];
  sectionView = self->_sectionView;
  self->_sectionView = v5;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  [(MUPlaceSectionView *)self->_sectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = self->_sectionView;
  carouselView = [(MUCuratedGuidesSectionController *)self carouselView];
  [(MUPlaceSectionView *)v7 attachViewToContentView:carouselView];
}

- (MUCuratedGuidesSectionController)initWithDelegate:(id)delegate withPlaceCollections:(id)collections usingSyncCoordinator:(id)coordinator usingMapItem:(id)item usingCollectionIds:(id)ids exploreGuides:(id)guides
{
  delegateCopy = delegate;
  collectionsCopy = collections;
  coordinatorCopy = coordinator;
  idsCopy = ids;
  guidesCopy = guides;
  v30.receiver = self;
  v30.super_class = MUCuratedGuidesSectionController;
  v19 = [(MUPlaceSectionController *)&v30 initWithMapItem:item];
  if (v19)
  {
    v20 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v20))
    {
      *v29 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUCuratedGuidesSectionControllerInit", "", v29, 2u);
    }

    v21 = objc_alloc_init(MUCuratedCollectionsPlacecardAnalyticsManager);
    analyticsManager = v19->_analyticsManager;
    v19->_analyticsManager = v21;

    v23 = [[MUCuratedGuidesSectionView alloc] initCollectionsCarouselViewWithPlaceCollections:collectionsCopy usingSyncCoordinator:coordinatorCopy withRoutingDelegate:delegateCopy withScrollViewDelegate:v19 withAnalyticsDelegate:v19 exploreGuides:guidesCopy];
    carouselView = v19->_carouselView;
    v19->_carouselView = v23;

    objc_storeWeak(&v19->_collectionsDelegate, delegateCopy);
    objc_storeStrong(&v19->_collectionIds, ids);
    v25 = [collectionsCopy copy];
    placeCollections = v19->_placeCollections;
    v19->_placeCollections = v25;

    [(MUCuratedGuidesSectionController *)v19 _setupViews];
    v27 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v27))
    {
      *v29 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUCuratedGuidesSectionControllerInit", "", v29, 2u);
    }
  }

  return v19;
}

@end