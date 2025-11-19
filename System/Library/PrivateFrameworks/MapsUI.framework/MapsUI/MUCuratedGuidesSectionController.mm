@interface MUCuratedGuidesSectionController
- (BOOL)shouldShowMoreButton;
- (MKPlaceCollectionsDelegate)collectionsDelegate;
- (MUCuratedGuidesSectionController)initWithDelegate:(id)a3 withPlaceCollections:(id)a4 usingSyncCoordinator:(id)a5 usingMapItem:(id)a6 usingCollectionIds:(id)a7 exploreGuides:(id)a8;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (id)_sectionHeaderTitle;
- (void)_seeAllTapped;
- (void)_setupCollectionView;
- (void)_setupViews;
- (void)collectionsCarouselDidScrollBackward;
- (void)collectionsCarouselDidScrollForward;
- (void)exploreGuidesButtonTapped;
- (void)setActive:(BOOL)a3;
@end

@implementation MUCuratedGuidesSectionController

- (MKPlaceCollectionsDelegate)collectionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionsDelegate);

  return WeakRetained;
}

- (BOOL)shouldShowMoreButton
{
  v3 = [(MUCuratedGuidesSectionController *)self carouselView];
  v4 = [v3 traitCollection];
  if ([v4 userInterfaceIdiom] == 5)
  {
    v5 = [(MUCuratedGuidesSectionController *)self placeCollections];
    v6 = [v5 count];

    if (v6 > 5)
    {
      return 1;
    }
  }

  else
  {
  }

  v8 = [(MUCuratedGuidesSectionController *)self carouselView];
  if ([v8 isShowingExploreGuides])
  {
    v7 = 0;
  }

  else
  {
    v9 = [(MUCuratedGuidesSectionController *)self placeCollections];
    v7 = [v9 count] > 5;
  }

  return v7;
}

- (id)_sectionHeaderTitle
{
  v3 = [(MUPlaceSectionController *)self mapItem];
  v4 = [v3 _isMapItemTypeSettlement];

  if (v4)
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
  v6 = [(MUCuratedGuidesSectionController *)self collectionsDelegate];
  v3 = [(MUCuratedGuidesSectionController *)self placeCollections];
  v4 = [(MUPlaceSectionHeaderViewModel *)self->_sectionHeaderViewModel titleString];
  v5 = [(MUCuratedGuidesSectionController *)self collectionIds];
  [v6 showAllCollections:v3 usingTitle:v4 usingCollectionIds:v5];
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (!sectionHeaderViewModel)
  {
    v4 = [(MUCuratedGuidesSectionController *)self shouldShowMoreButton];
    v5 = [MUPlaceSectionHeaderViewModel alloc];
    v6 = [(MUCuratedGuidesSectionController *)self _sectionHeaderTitle];
    v7 = [(MUPlaceSectionHeaderViewModel *)v5 initWithTitleString:v6 showSeeMore:v4];
    v8 = self->_sectionHeaderViewModel;
    self->_sectionHeaderViewModel = v7;

    sectionHeaderViewModel = self->_sectionHeaderViewModel;
    if (v4)
    {
      [(MUPlaceSectionHeaderViewModel *)sectionHeaderViewModel setTarget:self selector:sel__seeAllTapped];
      sectionHeaderViewModel = self->_sectionHeaderViewModel;
    }
  }

  return sectionHeaderViewModel;
}

- (void)exploreGuidesButtonTapped
{
  v2 = [(MUCuratedGuidesSectionController *)self analyticsManager];
  [v2 placecardExploreGuidesButtonTapped];
}

- (void)collectionsCarouselDidScrollBackward
{
  v2 = [(MUCuratedGuidesSectionController *)self analyticsManager];
  [v2 placecardCollectionsScrollBackward];
}

- (void)collectionsCarouselDidScrollForward
{
  v2 = [(MUCuratedGuidesSectionController *)self analyticsManager];
  [v2 placecardCollectionsScrollForward];
}

- (void)_setupCollectionView
{
  if (self->_active)
  {
    v3 = [(MUCuratedGuidesSectionController *)self carouselView];
    [v3 displayCollectionsIfNeeded];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_active = a3;
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
  v4 = [(MUCuratedGuidesSectionController *)self sectionHeaderViewModel];
  v5 = [(MUPlaceSectionView *)v3 initWithStyle:0 sectionHeaderViewModel:v4];
  sectionView = self->_sectionView;
  self->_sectionView = v5;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  [(MUPlaceSectionView *)self->_sectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = self->_sectionView;
  v8 = [(MUCuratedGuidesSectionController *)self carouselView];
  [(MUPlaceSectionView *)v7 attachViewToContentView:v8];
}

- (MUCuratedGuidesSectionController)initWithDelegate:(id)a3 withPlaceCollections:(id)a4 usingSyncCoordinator:(id)a5 usingMapItem:(id)a6 usingCollectionIds:(id)a7 exploreGuides:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v30.receiver = self;
  v30.super_class = MUCuratedGuidesSectionController;
  v19 = [(MUPlaceSectionController *)&v30 initWithMapItem:a6];
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

    v23 = [[MUCuratedGuidesSectionView alloc] initCollectionsCarouselViewWithPlaceCollections:v15 usingSyncCoordinator:v16 withRoutingDelegate:v14 withScrollViewDelegate:v19 withAnalyticsDelegate:v19 exploreGuides:v18];
    carouselView = v19->_carouselView;
    v19->_carouselView = v23;

    objc_storeWeak(&v19->_collectionsDelegate, v14);
    objc_storeStrong(&v19->_collectionIds, a7);
    v25 = [v15 copy];
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