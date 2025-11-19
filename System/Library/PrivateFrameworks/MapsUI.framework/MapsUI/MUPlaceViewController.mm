@interface MUPlaceViewController
+ (void)_copyStringToPasteboard:(id)a3;
- (BOOL)_hasSerializedMapItemFile;
- (BOOL)_presentOfflineAlertIfNecessaryForUGC:(int64_t)a3;
- (BOOL)_transitDeparturesCanSelectDepartureSequence:(id)a3 usingMapItem:(id)a4;
- (BOOL)isLoading;
- (BOOL)placeSectionControllerShouldLayoutSubviews:(id)a3;
- (BOOL)scrollEnabled;
- (BOOL)shouldBlurChromeHeaderButtons;
- (BOOL)shouldStubPlacecard;
- (BOOL)supportsDynamicLayout;
- (CGSize)_systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (MUAMSResultProvider)amsResultProvider;
- (MUCuratedGuidesSectionController)curatedGuidesSectionController;
- (MUDeviceProvider)deviceProvider;
- (MUOfflineMapProvider)offlineMapProvider;
- (MUPersonalGuidesSectionController)personalGuidesSectionController;
- (MUPlaceActionRowSectionController)actionRowSectionController;
- (MUPlaceEnrichmentSectionController)placeEnrichmentSectionController;
- (MUPlaceHeaderButtonsSectionController)headerButtonsSectionController;
- (MUPlaceHeaderSectionController)headerSectionController;
- (MUPlaceInfoSectionController)placeInfoSectionController;
- (MUPlaceInlineMapSectionController)inlineMapSectionController;
- (MUPlacePhotoSectionController)photoSectionController;
- (MUPlaceUnifiedActionRowSectionController)unifiedActionRowSectionController;
- (MUPlaceViewController)initWithConfiguration:(id)a3;
- (MUPlaceViewController)initWithMapItem:(id)a3;
- (MUPlaceViewControllerDelegate)placeViewControllerDelegate;
- (MUPlaceViewControllerFeedbackDelegate)placeViewFeedbackDelegate;
- (MUPlaceViewControllerMapsAppDelegate)mapsAppDelegate;
- (NSArray)analyticModules;
- (UIImage)userIcon;
- (UILayoutGuide)headerViewTitleLabelToTopLayoutGuide;
- (UIScrollView)scrollView;
- (UIScrollViewDelegate)scrollViewDelegate;
- (UIView)draggableHeaderView;
- (UIView)viewForHeaderContainmentString;
- (_TtC6MapsUI36MUWebBasedPlacecardSectionController)webPlacecardSectionController;
- (double)contentAlpha;
- (double)currentHeight;
- (double)headerSecondaryNameLabelPadding;
- (double)heightForContentAboveTitle;
- (double)placeHeaderSectionControllerRequestsPaddingConstant:(id)a3;
- (double)placeHeaderSectionControllerRequestsTrailingConstant:(id)a3;
- (id)_actionBarSectionControllerForAvailability:(id)a3 moduleConfiguration:(id)a4;
- (id)_actionRowSectionControllerClientOverrideWithAvailability:(id)a3 buttonModuleConfiguration:(id)a4;
- (id)_actionRowSectionControllerWithButtonModuleConfiguration:(id)a3;
- (id)_amenitiesSectionControllerForAvailability:(id)a3 moduleConfiguration:(id)a4;
- (id)_annotatedItemSectionControllerForAvailability:(id)a3;
- (id)_browseCategorySectionControllerForAvailability:(id)a3;
- (id)_buildBrandCardSectionsWithAvailability:(id)a3;
- (id)_buildDeveloperPlaceCardSectionsWithAvailability:(id)a3;
- (id)_buildForLayoutWithAvailability:(id)a3;
- (id)_buildShortCardSections;
- (id)_buildStaticSectionsWithAvailability:(id)a3;
- (id)_callToActionSuggestionSectionControllerForAvailability:(id)a3;
- (id)_contactForEditOperations;
- (id)_contactSharedLocationSectionControllerForAvailability:(id)a3;
- (id)_curatedGuidesSectionControllerForAvailability:(id)a3;
- (id)_encyclopedicSectionControllerForAvailability:(id)a3;
- (id)_evChargingSectionControllerForForAvailability:(id)a3 mapItem:(id)a4;
- (id)_firstSectionControllerOfClass:(Class)a3;
- (id)_headerButtonsSectionControllerForModuleConfiguration:(id)a3;
- (id)_headerSectionControllerWithAvailability:(id)a3;
- (id)_hikingTipSectionControllerForAvailability:(id)a3;
- (id)_hikingTrailsSectionControllerForAvailability:(id)a3;
- (id)_inlineMapSectionControllerForAvailability:(id)a3;
- (id)_notesSectionControllerForAvailability:(id)a3;
- (id)_officialAppSectionControllerForAvailability:(id)a3;
- (id)_passiveCallToActionSectionControllerForAvailability:(id)a3;
- (id)_personalGuidesSectionController;
- (id)_photoSectionControllerForAvailability:(id)a3;
- (id)_placeDescriptionSectionControllerForAvailability:(id)a3;
- (id)_placeEnrichmentSectionControllerForAvailability:(id)a3;
- (id)_placeFooterSectionController;
- (id)_placeInfoSectionControllerForAvailability:(id)a3 moduleConfiguration:(id)a4;
- (id)_placeRibbonSectionControllerForAvailability:(id)a3 placeRibbonConfiguration:(id)a4;
- (id)_ratingsAndReviewsSectionControllerForAvailability:(id)a3;
- (id)_relatedPlaceConfigurationForRelatedPlaceList:(id)a3 moduleConfiguration:(id)a4;
- (id)_relatedPlaceSectionControllerForAvailability:(id)a3 config:(id)a4;
- (id)_relatedPlaceSectionControllerForAvailability:(id)a3 relatedPlaceList:(id)a4;
- (id)_sectionControllersForClass:(Class)a3;
- (id)_traits;
- (id)_transitDeparturesSectionControllerForAvailability:(id)a3;
- (id)_unifiedActionRowSectionControllerForAvailability:(id)a3 buttonModuleConfiguration:(id)a4;
- (id)_venueInfoSectionControllerForAvailability:(id)a3;
- (id)_webBasedPlacecardViewControllerForAvailability:(id)a3;
- (id)_webContentSectionControllerForConfiguration:(id)a3;
- (id)collectionViews;
- (id)contact;
- (id)contactStore;
- (id)contactsNavigationController;
- (id)createHeaderButtonsMenuWithPromotedSystemActionTypes:(id)a3 excludedSystemActionTypes:(id)a4 presentationOptions:(id)a5;
- (id)createHeaderMenuSortOrderWithPromotedActionTypes:(id)a3 excludedActionTypes:(id)a4;
- (id)createShareSheetFooterActions;
- (id)draggableContent;
- (id)generateAvailableActionForAnalytics;
- (id)generateUnactionableUIElementsForAnalytics;
- (id)hikingTipViewForHikingTipSectionController:(id)a3 viewModel:(id)a4;
- (id)inlineRatingsSectionController;
- (id)inlineRatingsSectionControllerRequestsContentViewController:(id)a3;
- (id)mapItemFromSerialized;
- (id)menuElementForActionItem:(id)a3;
- (id)notesSectionController;
- (id)placePhotoGalleryImageViewForPhotoAtIndex:(unint64_t)a3;
- (id)ratingsAndReviewsSectionController;
- (id)ribbonSectionController;
- (id)shareSheetPresenterRequestsOverridenActivityViewController:(id)a3;
- (id)suggestionViewForCallToActionSectionController:(id)a3;
- (id)unifiedActionRowConfigurationForAvailability:(id)a3 buttonModuleConfiguration:(id)a4;
- (id)visibleImpressionElements;
- (id)webPlacecardGuides;
- (int)getPlaceCardTypeForAnalytics;
- (int)mapTypeForETAProvider:(id)a3;
- (unint64_t)options;
- (void)ETAProviderLocationUpdated:(id)a3;
- (void)_activateSections;
- (void)_addActionBarWithConfiguration:(id)a3;
- (void)_applyCustomSpacings;
- (void)_authorized_contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)_buildSections;
- (void)_calculateShowingContactActionsWithCompletion:(id)a3;
- (void)_captureRevealEventIfNeeded;
- (void)_commonInitWithConfiguration:(id)a3;
- (void)_deactivateSections;
- (void)_didRequestSceneActivationForPhotoGalleryViewController:(id)a3;
- (void)_didResolveAttribution:(id)a3;
- (void)_didSelectAddOrEditNote;
- (void)_didSelectCreateCustomRouteWithOriginMapItem:(id)a3;
- (void)_didSelectDirectionsWithAddress:(id)a3 forContact:(id)a4;
- (void)_didSelectEditPlaceDetailsOfType:(int64_t)a3;
- (void)_didSelectPhotoCategoryAtIndex:(unint64_t)a3;
- (void)_didSelectRemoveMarkedLocation;
- (void)_didSelectSimulateLocation;
- (void)_didSelectViewContactButton;
- (void)_didTapOnSearchCategory:(id)a3;
- (void)_dismissModalViewController;
- (void)_handleMapsExtension:(id)a3 usingAppStoreApp:(id)a4 parameters:(id)a5;
- (void)_handleRoutingToPlaceWithMapItem:(id)a3;
- (void)_inlineRAPDidSelectAddMissingDataOfType:(int64_t)a3;
- (void)_invokeShareActionWithPresentationOptions:(id)a3 analyticsModuleMetadata:(id)a4;
- (void)_launchAttribution:(id)a3 withMapItem:(id)a4;
- (void)_launchAttributionURLs:(id)a3 withAttribution:(id)a4 completionHandler:(id)a5;
- (void)_localeDidChange;
- (void)_openAppClip:(id)a3;
- (void)_openDirections;
- (void)_openExploreGuidesWithGuideLocation:(id)a3;
- (void)_openThumbnailGalleryWithStartingIndex:(unint64_t)a3;
- (void)_openWebURL:(id)a3 forcePunchout:(BOOL)a4;
- (void)_performShareActionWithPresentationOptions:(id)a3;
- (void)_performWithNewUIBlock:(id)a3 oldUIBlock:(id)a4;
- (void)_placeSectionController:(id)a3 didSelectPrimaryType:(unint64_t)a4 withPresentationOptions:(id)a5;
- (void)_presentAddNewContactPickerForContact:(id)a3 withEnvironment:(id)a4;
- (void)_presentModalViewController:(id)a3 withEnvironment:(id)a4;
- (void)_presentStoreProductScreenWithMapItem:(id)a3 attribution:(id)a4 bundleIdentifier:(id)a5 attributionURLs:(id)a6 presentingViewController:(id)a7;
- (void)_ratingsAndReviewsDidSelectViewReview:(id)a3;
- (void)_relatedPlacesShowSeeAllWithTitle:(id)a3 relatedMapItems:(id)a4 originalMapItem:(id)a5;
- (void)_scrollToImpressionsFrame:(id)a3;
- (void)_setMapItem:(id)a3 contact:(id)a4 updateOriginalContact:(BOOL)a5;
- (void)_setPlaceItem:(id)a3 updateOriginalContact:(BOOL)a4;
- (void)_setupViews;
- (void)_showEditSheet:(id)a3;
- (void)_showShareSheetNoDeviceLockCheckWithEnvironment:(id)a3;
- (void)_showShareSheetWithEnvironment:(id)a3;
- (void)_tearDownContactPickersForCompletionWithViewController:(id)a3;
- (void)_transitDeparturesDidSelectDepartureSequence:(id)a3 usingMapItem:(id)a4;
- (void)_transitDeparturesDidSelectTransitLine:(id)a3 usingPresentationOptions:(id)a4 completion:(id)a5;
- (void)_unauthorized_contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)_updateActionBarDataSources;
- (void)_updateBottomInset;
- (void)_updateContentAlpha;
- (void)_updatePersonalizedSuggestionSectionArbiterWithSections;
- (void)_updatePocketInsets;
- (void)_updatePreferredContentSize;
- (void)_updateSections;
- (void)_updateSectionsForActionRowInfoChange;
- (void)_updateSectionsForAttributionChange;
- (void)_updateSectionsForSubmissionStatusChange;
- (void)_updateWebPlacecardForPhotoSubmissionWithURL:(id)a3;
- (void)_updateWebPlacecardForSubmissionStatusChange:(id)a3 userRatings:(id)a4;
- (void)actionBarDataSourceDidUpdate:(id)a3;
- (void)addLoadingView;
- (void)becomeActive;
- (void)collectionIdentifierSelected:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactStoreDidChange:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)contactViewController:(id)a3 didDeleteContact:(id)a4;
- (void)contentAboveTitleScrollPositionChanged:(double)a3;
- (void)dealloc;
- (void)didSelectARPRatingWithActionDispatcher:(id)a3 ratingCategory:(id)a4 value:(float)a5;
- (void)didSelectAddOrRemoveFromFavoritesGuideWithActionDispatcher:(id)a3;
- (void)didSelectCopyAddressWithActionDispatcher:(id)a3 addressString:(id)a4;
- (void)didSelectCopyCoordinatesWithActionDispatcher:(id)a3 coordinatesString:(id)a4;
- (void)didSelectCopyLinkWithActionDispatcher:(id)a3 urlString:(id)a4;
- (void)didSelectEditLocationOfMarkedLocationWithActionDispatcher:(id)a3;
- (void)didSelectFeaturedGuideWithActionDispatcher:(id)a3 mapItemIdentifier:(id)a4;
- (void)didSelectMarkMyLocationWithActionDispatcher:(id)a3;
- (void)didSelectRequestLocationButtonWithActionDispatcher:(id)a3;
- (void)didSelectSavePublisherGuideWithActionDispatcher:(id)a3 publisherGuide:(id)a4;
- (void)didSelectSharePublisherGuideWithActionDispatcher:(id)a3 publisherGuide:(id)a4;
- (void)didSelectShowPublisherWithActionDispatcher:(id)a3 publisherGuide:(id)a4;
- (void)didSelectTransitIncidentsWithActionDispatcher:(id)a3 incidents:(id)a4;
- (void)didTapAddPhotoWithActionDispatcher:(id)a3 entryPoint:(int64_t)a4 environment:(id)a5;
- (void)didTapCloseWithActionDispatcher:(id)a3;
- (void)didTapCreateCustomRouteWithActionDispatcher:(id)a3;
- (void)didTapHikingTip:(id)a3 originMapItem:(id)a4;
- (void)didTapOpenFindMyWithActionDispatcher:(id)a3;
- (void)didTapOpenPhotoViewerWithActionDispatcher:(id)a3 index:(float)a4;
- (void)didTapRemoveShortcutWithActionDispatcher:(id)a3;
- (void)didTapShareWithActionDispatcher:(id)a3 environment:(id)a4;
- (void)didTapTransitDepartureWithActionDispatcher:(id)a3 departureSequence:(id)a4 isActiveLine:(BOOL)a5;
- (void)handleAppClip:(id)a3 options:(id)a4;
- (void)handleQuickLink:(id)a3 options:(id)a4;
- (void)handleWebLink:(id)a3 options:(id)a4;
- (void)hideContentIfLoading;
- (void)hideTitle:(BOOL)a3;
- (void)openAppClipWithActionDispatcher:(id)a3 quickLink:(id)a4 completion:(id)a5;
- (void)openDirectionsWithActionDispatcher:(id)a3 contactIdentifier:(id)a4;
- (void)openExtensionWithActionDispatcher:(id)a3 vendorId:(id)a4 source:(int64_t)a5 completion:(id)a6;
- (void)openPlaceWithActionDispatcher:(id)a3 mapItemIdentifier:(id)a4;
- (void)performShareActionWithPresentationOptions:(id)a3;
- (void)pictureItemSectionController:(id)a3 requestsSceneActivationWithPhotoGallery:(id)a4;
- (void)placeActionManager:(id)a3 didSelectAddToContactsUsingEnvironment:(id)a4;
- (void)placeActionManager:(id)a3 didSelectAddToExistingContactWithEnvironment:(id)a4;
- (void)placeActionManager:(id)a3 didSelectAddToFavoritesGuideWithEnvironment:(id)a4;
- (void)placeActionManager:(id)a3 didSelectAddToGuidesWithEnvironment:(id)a4;
- (void)placeActionManager:(id)a3 didSelectDirectionsWithEnvironment:(id)a4;
- (void)placeActionManager:(id)a3 didSelectRateWithEnvironment:(id)a4;
- (void)placeCardActionControllerDidRequestCopy:(id)a3;
- (void)placeCardActionControllerDidSelectAddPhoto:(id)a3 presentingViewController:(id)a4 sourceView:(id)a5;
- (void)placeCardActionControllerDidSelectAddToMapsHome:(id)a3;
- (void)placeCardActionControllerDidSelectChangeAddress:(id)a3;
- (void)placeCardActionControllerDidSelectOfflineManagement:(id)a3;
- (void)placeCardActionControllerDidSelectPauseOfflineDownload:(id)a3;
- (void)placeCardActionControllerDidSelectPlaceEnrichementReportAProblem;
- (void)placeCardActionControllerDidSelectRefineLocation:(id)a3;
- (void)placeCardActionControllerDidSelectRemoveFromMapsHome:(id)a3;
- (void)placeCardActionControllerDidSelectReportAProblemViewReport:(id)a3;
- (void)placeDescriptionSectionControllerDidTapAttribution:(id)a3;
- (void)placeHeaderSectionController:(id)a3 didSelectShareWithPresentationOptions:(id)a4;
- (void)placeInfoSectionController:(id)a3 didTapAttribution:(id)a4;
- (void)placeInfoSectionController:(id)a3 selectedDirectionsWithAddress:(id)a4 forContact:(id)a5 options:(id)a6;
- (void)placeInfoSectionController:(id)a3 selectedDirectionsWithMapItem:(id)a4 options:(id)a5;
- (void)placeNotesSectionController:(id)a3 didRequestEditingNoteWithInitialText:(id)a4 completion:(id)a5;
- (void)placePhotoSectionController:(id)a3 didSelectPhotoToReport:(id)a4 withPhotoGalleryViewController:(id)a5;
- (void)placePhotoSectionController:(id)a3 didSelectViewPhoto:(id)a4 withID:(id)a5 presentingViewController:(id)a6;
- (void)placePhotoSectionController:(id)a3 requestsAddPhotosToMapsWithEntryPoint:(int64_t)a4 options:(id)a5;
- (void)placePhotoSectionController:(id)a3 requestsToOpenPhotoAttribution:(id)a4 presentationOptions:(id)a5;
- (void)placePhotoSectionControllerDidCloseFullscreenPhotos:(id)a3;
- (void)placePhotoSectionControllerDidOpenFullscreenPhotos:(id)a3;
- (void)placeSectionControllerDidUpdateContent:(id)a3;
- (void)placeSectionControllerRequestsLayoutChange:(id)a3;
- (void)presentAddPhotosWithPresentationOptions:(id)a3 entryPoint:(int64_t)a4 originTarget:(id)a5;
- (void)presentPOIEnrichmentWithPresentationOptions:(id)a3;
- (void)ratingsAndReviewsSectionControllerDidSelectViewAllReviews:(id)a3;
- (void)requestHikingToolTipRegionIDForLocationCoordinate:(CLLocationCoordinate2D)a3;
- (void)resetAnalyticsState;
- (void)resignActive;
- (void)ribbonSectionControllerDidTapAddRatings:(id)a3 initialRatingState:(int64_t)a4 withPresentationOptions:(id)a5;
- (void)ribbonSectionControllerDidTapHours:(id)a3;
- (void)routeToCuratedCollection:(id)a3;
- (void)routeToGuidesHomeFromExploreGuides:(id)a3;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)sectionController:(id)a3 didScroll:(id)a4;
- (void)sectionController:(id)a3 didSelectSendToDevice:(id)a4;
- (void)sectionController:(id)a3 updateInsetsForHeaderWithTopInset:(double)a4 bottom:(double)a5;
- (void)sectionControllerWebContentLoadCompleted:(id)a3;
- (void)setAutomobileOptions:(id)a3;
- (void)setContentAlpha:(double)a3;
- (void)setCyclingOptions:(id)a3;
- (void)setLibraryAccessProvider:(id)a3;
- (void)setLocation:(id)a3;
- (void)setMapItem:(id)a3;
- (void)setOfflineFeatureDiscoveryView:(id)a3;
- (void)setOfflineMapProvider:(id)a3;
- (void)setOptions:(unint64_t)a3;
- (void)setPlaceInShortcuts:(BOOL)a3;
- (void)setPlaceItem:(id)a3 updateOriginalContact:(BOOL)a4;
- (void)setPlaceNumberOfReportsInReview:(unint64_t)a3;
- (void)setScrollEnabled:(BOOL)a3;
- (void)setShowContactActions:(BOOL)a3;
- (void)setTransitOptions:(id)a3;
- (void)setVerifiedHeaderExpansionProgress:(double)a3;
- (void)setWalkingOptions:(id)a3;
- (void)set_mapkit_contentVisibility:(int64_t)a3;
- (void)showAllCollections:(id)a3 usingTitle:(id)a4 usingCollectionIds:(id)a5;
- (void)showContentIfLoaded;
- (void)showSeeAllRelatedPlacesWithActionDispatcher:(id)a3 title:(id)a4 relatedMapItemIdentifiers:(id)a5 originalMapItemIdentifier:(id)a6;
- (void)transitDeparturesSectionController:(id)a3 didSelectAttribution:(id)a4;
- (void)transitDeparturesSectionController:(id)a3 didSelectConnectionInformation:(id)a4;
- (void)transitDeparturesSectionController:(id)a3 showIncidents:(id)a4;
- (void)updateActionRowView;
- (void)updateAddNoteActionState;
- (void)updateAddToLibraryActionState;
- (void)updateCuratedCollectionsView;
- (void)updateHeaderTitle;
- (void)updateHeaderTrailingConstant;
- (void)updatePlaceEnrichment;
- (void)updatePlaceInfo;
- (void)updateSuggestionView;
- (void)updateUserSubmissionWithPhotoURL:(id)a3 photoID:(id)a4 numberOfPhotos:(int64_t)a5;
- (void)updateViewsWithSubmissionStatus:(id)a3 userRatings:(id)a4 animated:(BOOL)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MUPlaceViewController

- (MUPlaceViewControllerFeedbackDelegate)placeViewFeedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeViewFeedbackDelegate);

  return WeakRetained;
}

- (MUPlaceViewControllerMapsAppDelegate)mapsAppDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapsAppDelegate);

  return WeakRetained;
}

- (MUDeviceProvider)deviceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceProvider);

  return WeakRetained;
}

- (MUOfflineMapProvider)offlineMapProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);

  return WeakRetained;
}

- (MUPlaceViewControllerDelegate)placeViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeViewControllerDelegate);

  return WeakRetained;
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

- (void)didTapHikingTip:(id)a3 originMapItem:(id)a4
{
  v8 = a4;
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v7 placeViewControllerDidTapHikingTip:self originMapItem:v8];
  }
}

- (id)hikingTipViewForHikingTipSectionController:(id)a3 viewModel:(id)a4
{
  v5 = a4;
  v6 = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MUPlaceViewController *)self mapsAppDelegate];
    v9 = [v8 placeViewController:self hikingTipViewForTipModel:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)requestHikingToolTipRegionIDForLocationCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v8 placeViewController:self didRequestHikingToolTipRegionIDForLocation:{latitude, longitude}];
  }
}

- (void)placeNotesSectionController:(id)a3 didRequestEditingNoteWithInitialText:(id)a4 completion:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(MUPlaceViewController *)self mapsAppDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MUPlaceViewController *)self mapsAppDelegate];
    v11 = [(MUPlaceViewController *)self libraryAccessProvider];
    [v10 placeViewController:self didRequestEditingNoteWithInitialText:v12 libraryAccessProvider:v11 completion:v7];
  }
}

- (void)contactStoreDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MUPlaceViewController_contactStoreDidChange___block_invoke;
  v5[3] = &unk_1E8219D10;
  objc_copyWeak(&v6, &location);
  [(MUPlaceViewController *)self _calculateShowingContactActionsWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__MUPlaceViewController_contactStoreDidChange___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setShowContactActions:a2];
    WeakRetained = v4;
  }
}

- (MUAMSResultProvider)amsResultProvider
{
  amsResultProvider = self->_amsResultProvider;
  if (!amsResultProvider)
  {
    v4 = [MUAMSResultCache alloc];
    UInteger = GEOConfigGetUInteger();
    v6 = GEOConfigGetUInteger();
    v7 = GEOConfigGetUInteger();
    v8 = [(MUAMSResultCache *)v4 initWithAppAdamIdCacheCount:UInteger appAdamIdTimeToLive:v6 bundleIdCacheCount:v7 bundleIdTimeToLive:GEOConfigGetUInteger()];
    v9 = [[MUAMSResultProvider alloc] initWithCache:v8];
    v10 = self->_amsResultProvider;
    self->_amsResultProvider = v9;

    amsResultProvider = self->_amsResultProvider;
  }

  return amsResultProvider;
}

- (id)visibleImpressionElements
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_sectionControllers, "count")}];
  v4 = [(MUPlaceViewController *)self placeEnrichmentSectionController];
  v5 = [v4 hasContent];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_sectionControllers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 hasContent] && objc_msgSend(v12, "isImpressionable"))
        {
          v13 = [v12 impressionElement];
          [v12 impressionsFrame];
          [v13 setFrame:?];
          [v13 setSessionIdentifier:self->_impressionsSessionIdentifier];
          v14 = [v13 customData];
          [v14 setModuleIndex:v9];
          [v14 setEnriched:v5];
          [v3 addObject:v13];
          ++v9;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v3 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_handleMapsExtension:(id)a3 usingAppStoreApp:(id)a4 parameters:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MUPlaceViewController *)self mapsAppDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v13 placeViewController:self didSelectMapsExtension:v8 usingAppStoreApp:v9 parameters:v10];
  }

  else
  {
    v14 = [(MUPlaceViewController *)self mapItem];
    v17 = *MEMORY[0x1E696F098];
    v18[0] = MEMORY[0x1E695E118];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v14 openInMapsWithLaunchOptions:v15 completionHandler:&__block_literal_global_624];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __74__MUPlaceViewController__handleMapsExtension_usingAppStoreApp_parameters___block_invoke(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v2 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [MEMORY[0x1E696AAE8] mainBundle];
      v4 = [v3 bundleIdentifier];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C5620000, v2, OS_LOG_TYPE_INFO, "Couldn't launch Maps from Reservation button in %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_openWebURL:(id)a3 forcePunchout:(BOOL)a4
{
  v9 = a3;
  if (a4 || ([(MUPlaceViewController *)self mapsAppDelegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) == 0))
  {
    v8 = [MEMORY[0x1E696F3B8] sharedInstance];
    [v8 openURL:v9 completionHandler:0];
  }

  else
  {
    v8 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v8 placeViewController:self openURL:v9];
  }
}

- (void)handleWebLink:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 absoluteString];
  v9 = [v8 length];

  if (v9)
  {
    analyticsController = self->_analyticsController;
    v11 = [v7 analyticsTarget];
    v12 = [v7 analyticsEventValue];
    -[MUPlaceCardAnalyticsController instrumentAction:target:eventValue:moduleType:feedbackType:](analyticsController, "instrumentAction:target:eventValue:moduleType:feedbackType:", 6050, v11, v12, [v7 analyticsModuleType], 0);

    -[MUPlaceViewController _openWebURL:forcePunchout:](self, "_openWebURL:forcePunchout:", v6, [v7 forcePunchout]);
  }

  else
  {
    v13 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_ERROR, "The URL is empty", v14, 2u);
    }
  }
}

- (void)handleQuickLink:(id)a3 options:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 URLString];
  if ([v8 length])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
    if (v9)
    {
      analyticsController = self->_analyticsController;
      v11 = [v7 analyticsTarget];
      v12 = [v7 analyticsEventValue];
      -[MUPlaceCardAnalyticsController instrumentAction:target:eventValue:moduleType:feedbackType:](analyticsController, "instrumentAction:target:eventValue:moduleType:feedbackType:", 6050, v11, v12, [v7 analyticsModuleType], 0);

      [(MUPlaceViewController *)self _openWebURL:v9 forcePunchout:0];
    }

    else
    {
      v13 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_ERROR, "The URL associated with quicklink %@ is nil", &v15, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_openAppClip:(id)a3
{
  v4 = a3;
  v5 = [v4 appClipURL];
  objc_initWeak(&location, self);
  v6 = [MEMORY[0x1E696F1B0] sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__MUPlaceViewController__openAppClip___block_invoke;
  v8[3] = &unk_1E8218838;
  v7 = v5;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [v6 requestAppClip:v4 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __38__MUPlaceViewController__openAppClip___block_invoke(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    goto LABEL_9;
  }

  v6 = MUGetPlaceCardLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v5 description];
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_ERROR, "AppClip request for URL: %@ failed with error: %@", &v16, 0x16u);
    }
  }

  else if (v7)
  {
    v10 = *(a1 + 32);
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_ERROR, "AppClip request for URL: %@ failed", &v16, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    [WeakRetained _openWebURL:*(a1 + 32) forcePunchout:0];

LABEL_9:
    v13 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_INFO, "AppClip of url %@ is available", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)handleAppClip:(id)a3 options:(id)a4
{
  analyticsController = self->_analyticsController;
  v7 = a4;
  v10 = a3;
  v8 = [v7 analyticsEventValue];
  v9 = [v7 analyticsModuleType];

  [(MUPlaceCardAnalyticsController *)analyticsController instrumentAction:6105 target:670 eventValue:v8 moduleType:v9 feedbackType:0];
  [(MUPlaceViewController *)self _openAppClip:v10];
}

- (id)suggestionViewForCallToActionSectionController:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = [v6 suggestionViewForPlaceViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)presentPOIEnrichmentWithPresentationOptions:(id)a3
{
  v7 = a3;
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewController:self didSelectAddRatingsWithPresentationOptions:v7 overallState:0 originTarget:0];
  }
}

- (void)presentAddPhotosWithPresentationOptions:(id)a3 entryPoint:(int64_t)a4 originTarget:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(MUPlaceViewController *)self mapsAppDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v11 placeViewController:self didSelectAddPhotosWithPresentationOptions:v12 entryPoint:a4 originTarget:v8];
  }
}

- (id)menuElementForActionItem:(id)a3
{
  v4 = a3;
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceViewController *)self mapsAppDelegate];
    v8 = [v7 menuElementForActionItem:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGSize)_systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v21 = 0;
  v22 = 0;
  v20 = "";
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__MUPlaceViewController__systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke;
  v13[3] = &unk_1E8218810;
  v13[4] = self;
  v13[5] = &v17;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __108__MUPlaceViewController__systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke_2;
  v9[3] = &unk_1E8218810;
  v9[4] = self;
  v9[5] = &v17;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v13 oldUIBlock:v9];
  v5 = v18[4];
  v6 = v18[5];
  _Block_object_dispose(&v17, 8);
  v7 = v5;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

uint64_t __108__MUPlaceViewController__systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  LODWORD(a4) = *(a1 + 64);
  LODWORD(a5) = *(a1 + 68);
  result = [*(*(a1 + 32) + 1008) systemLayoutSizeFittingSize:*(a1 + 48) withHorizontalFittingPriority:*(a1 + 56) verticalFittingPriority:{a4, a5}];
  v7 = *(*(a1 + 40) + 8);
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  return result;
}

void __108__MUPlaceViewController__systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke_2(uint64_t a1)
{
  v7 = [*(*(a1 + 32) + 1000) view];
  LODWORD(v2) = *(a1 + 64);
  LODWORD(v3) = *(a1 + 68);
  [v7 systemLayoutSizeFittingSize:*(a1 + 48) withHorizontalFittingPriority:*(a1 + 56) verticalFittingPriority:{v2, v3}];
  v4 = *(*(a1 + 40) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
}

- (void)_updatePreferredContentSize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3010000000;
  v9 = 0;
  v10 = 0;
  v8 = "";
  v3[5] = &v5;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__MUPlaceViewController__updatePreferredContentSize__block_invoke;
  v4[3] = &unk_1E8219B98;
  v4[4] = self;
  v4[5] = &v5;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__MUPlaceViewController__updatePreferredContentSize__block_invoke_2;
  v3[3] = &unk_1E8219B98;
  v3[4] = self;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v4 oldUIBlock:v3];
  [(MUPlaceViewController *)self setPreferredContentSize:v6[4], v6[5]];
  _Block_object_dispose(&v5, 8);
}

void __52__MUPlaceViewController__updatePreferredContentSize__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 32);
  v10 = [v3 view];
  [v10 frame];
  v5 = v4;
  LODWORD(v4) = 1148846080;
  LODWORD(v6) = 1112014848;
  [v3 _systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v4, v6}];
  v7 = *(*(a1 + 40) + 8);
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
}

uint64_t __52__MUPlaceViewController__updatePreferredContentSize__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1000) preferredContentSize];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (void)didSelectCopyAddressWithActionDispatcher:(id)a3 addressString:(id)a4
{
  v4 = a4;
  [objc_opt_class() _copyStringToPasteboard:v4];
}

- (void)didSelectCopyLinkWithActionDispatcher:(id)a3 urlString:(id)a4
{
  v5 = a4;
  v6 = [MUURLShorteningSession alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__MUPlaceViewController_didSelectCopyLinkWithActionDispatcher_urlString___block_invoke;
  v12[3] = &unk_1E82187C0;
  v7 = v5;
  v13 = v7;
  v8 = [(MUURLShorteningSession *)v6 initWithOriginalURLProvider:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__MUPlaceViewController_didSelectCopyLinkWithActionDispatcher_urlString___block_invoke_2;
  v10[3] = &unk_1E82187E8;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [(MUURLShorteningSession *)v8 shortenWithCompletion:v10];
}

void __73__MUPlaceViewController_didSelectCopyLinkWithActionDispatcher_urlString___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 description];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_ERROR, "Failed to get short URL: %@", &v16, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = *(a1 + 40);
  }

  else
  {
    v12 = *(a1 + 32);
    v10 = objc_opt_class();
    v13 = v10;
    if (v5)
    {
      v14 = [v5 absoluteString];
      [v13 _copyStringToPasteboard:v14];

      goto LABEL_8;
    }

    v11 = *(a1 + 40);
  }

  [v10 _copyStringToPasteboard:v11];
LABEL_8:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)didSelectCopyCoordinatesWithActionDispatcher:(id)a3 coordinatesString:(id)a4
{
  v4 = a4;
  [objc_opt_class() _copyStringToPasteboard:v4];
}

- (void)didSelectSharePublisherGuideWithActionDispatcher:(id)a3 publisherGuide:(id)a4
{
  v8 = a4;
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v7 didSelectSharePublisherGuide:v8];
  }
}

- (void)didSelectSavePublisherGuideWithActionDispatcher:(id)a3 publisherGuide:(id)a4
{
  v8 = a4;
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v7 didSelectSavePublisherGuide:v8];
  }
}

- (void)didSelectShowPublisherWithActionDispatcher:(id)a3 publisherGuide:(id)a4
{
  v8 = a4;
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v7 didSelectShowPublisherForPublisherGuide:v8];
  }
}

- (void)didSelectTransitIncidentsWithActionDispatcher:(id)a3 incidents:(id)a4
{
  v8 = a4;
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v7 placeViewController:self showTransitIncidents:v8];
  }
}

- (void)didSelectAddOrRemoveFromFavoritesGuideWithActionDispatcher:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectAddOrRemoveFromFavoritesGuide:self];
  }
}

- (void)didTapOpenFindMyWithActionDispatcher:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectOpenFindMy:self];
  }
}

- (void)didSelectRequestLocationButtonWithActionDispatcher:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectRequestLocation:self];
  }
}

- (void)didSelectEditLocationOfMarkedLocationWithActionDispatcher:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  [v4 placeViewControllerDidSelectEditLocationOfMarkedLocation:self];
}

- (void)didSelectMarkMyLocationWithActionDispatcher:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectDropPin:self];
  }
}

- (void)openExtensionWithActionDispatcher:(id)a3 vendorId:(id)a4 source:(int64_t)a5 completion:(id)a6
{
  v36[1] = *MEMORY[0x1E69E9840];
  v31 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(MUPlaceViewController *)self mapItem];
  v13 = [v12 _geoMapItem];
  v14 = [v13 appBundleIDWithVendorID:v10];

  if (v14)
  {
    v15 = [[MUPlaceActionLinkExtensionParams alloc] initWithVendorId:v10 bundleId:v14];
    v16 = [MUPlaceExtensionDiscoveryManager alloc];
    v36[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v18 = [(MUPlaceExtensionDiscoveryManager *)v16 initWithExtensionDataItems:v17 amsResultProvider:self->_amsResultProvider];
    extensionDiscoveryManager = self->_extensionDiscoveryManager;
    self->_extensionDiscoveryManager = v18;

    v20 = [(MUPlaceExtensionDiscoveryManager *)self->_extensionDiscoveryManager discoveryResultForDataItem:v15];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 extension];
      v23 = [v21 appStoreApp];
      [(MUPlaceViewController *)self _handleMapsExtension:v22 usingAppStoreApp:v23 parameters:0];

      v11[2](v11, 1);
    }

    else
    {
      v25 = [MUAMSResultProviderFetchOptions alloc];
      v26 = [MEMORY[0x1E696F3B8] sharedInstance];
      [v26 screenScale];
      v27 = [MUAMSResultProviderFetchOptions initWithDisplayScale:v25 artworkSize:"initWithDisplayScale:artworkSize:source:" source:a5];

      objc_initWeak(buf, self);
      v28 = self->_extensionDiscoveryManager;
      v29 = MEMORY[0x1E69E96A0];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __86__MUPlaceViewController_openExtensionWithActionDispatcher_vendorId_source_completion___block_invoke;
      v32[3] = &unk_1E8218CD0;
      v33 = v11;
      objc_copyWeak(&v34, buf);
      [(MUPlaceExtensionDiscoveryManager *)v28 performExtensionDiscoveryWithOptions:v27 callbackQueue:MEMORY[0x1E69E96A0] completion:v32];

      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v24 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5620000, v24, OS_LOG_TYPE_INFO, "app bundle identifier is empty", buf, 2u);
    }

    v11[2](v11, 0);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __86__MUPlaceViewController_openExtensionWithActionDispatcher_vendorId_source_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_ERROR, "error performing extension discovery: %@", &v12, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [a2 firstObject];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v9 = [v7 extension];
      v10 = [v7 appStoreApp];
      [WeakRetained _handleMapsExtension:v9 usingAppStoreApp:v10 parameters:0];

      (*(*(a1 + 32) + 16))();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)openAppClipWithActionDispatcher:(id)a3 quickLink:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [MEMORY[0x1E696F1B0] sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__MUPlaceViewController_openAppClipWithActionDispatcher_quickLink_completion___block_invoke;
  v14[3] = &unk_1E8218798;
  objc_copyWeak(&v17, &location);
  v12 = v9;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [v11 appClipWithQuickLink:v12 completion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __78__MUPlaceViewController_openAppClipWithActionDispatcher_quickLink_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = MUGetPlaceCardLog();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = [*(a1 + 32) URLString];
        v8 = [*(a1 + 32) bundleID];
        v14 = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Opening app clip with url %@ bundle identifier %@", &v14, 0x16u);
      }

      [WeakRetained _openAppClip:v3];
      v9 = *(*(a1 + 40) + 16);
      goto LABEL_10;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) URLString];
      v11 = [*(a1 + 32) bundleID];
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_ERROR, "Failed to open app clip with url %@ bundle identifier %@", &v14, 0x16u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v9 = *(v12 + 16);
LABEL_10:
      v9();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)didTapCreateCustomRouteWithActionDispatcher:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapItem];
  v5 = [v4 _geoMapItem];
  v6 = [v5 _tooltip];
  if ([v6 usesOriginMapItem])
  {
    v7 = [(MUPlaceViewController *)self mapItem];
  }

  else
  {
    v7 = 0;
  }

  [(MUPlaceViewController *)self _didSelectCreateCustomRouteWithOriginMapItem:v7];
}

- (void)didTapTransitDepartureWithActionDispatcher:(id)a3 departureSequence:(id)a4 isActiveLine:(BOOL)a5
{
  v5 = a5;
  v16 = a3;
  v8 = a4;
  if (v5 && ([(MUPlaceViewController *)self mapItem], v9 = objc_claimAutoreleasedReturnValue(), v10 = [(MUPlaceViewController *)self _transitDeparturesCanSelectDepartureSequence:v8 usingMapItem:v9], v9, v10))
  {
    v11 = [(MUPlaceViewController *)self mapItem];
    [(MUPlaceViewController *)self _transitDeparturesDidSelectDepartureSequence:v8 usingMapItem:v11];
  }

  else
  {
    v12 = [_TtC6MapsUI17TransitLineMarker alloc];
    v13 = [v8 line];
    v14 = [(MUPlaceViewController *)self mapItem];
    [v14 _coordinate];
    v11 = [(TransitLineMarker *)v12 initWithTransitLine:v13 locationHint:?];

    v15 = objc_alloc_init(MUPresentationOptions);
    [(MUPlaceViewController *)self _transitDeparturesDidSelectTransitLine:v11 usingPresentationOptions:v15 completion:&__block_literal_global_588];
  }
}

- (void)didTapAddPhotoWithActionDispatcher:(id)a3 entryPoint:(int64_t)a4 environment:(id)a5
{
  v7 = a5;
  v8 = [v7 presentationOptions];
  [v8 setPresentingViewController:self];

  v9 = [v7 presentationOptions];

  [(MUPlaceViewController *)self presentAddPhotosWithPresentationOptions:v9 entryPoint:a4 originTarget:@"PLACECARD_PHOTO_VIEWER_GALLERY"];
}

- (void)didTapRemoveShortcutWithActionDispatcher:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectRemoveShortcut:self];
  }
}

- (void)didTapShareWithActionDispatcher:(id)a3 environment:(id)a4
{
  v5 = [a4 presentationOptions];
  [(MUPlaceViewController *)self _performShareActionWithPresentationOptions:v5];
}

- (void)didTapCloseWithActionDispatcher:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidClose:self];
  }
}

- (void)openDirectionsWithActionDispatcher:(id)a3 contactIdentifier:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v23 = v5;
    _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Opening directions with contact identifier: %{private}@", buf, 0xCu);
  }

  if ([v5 length])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(_MKPlaceItem *)self->_placeItem contact];
    v8 = [v7 postalAddresses];

    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v13 isEqualToString:v5];

          if (v14)
          {
            v9 = v12;
            goto LABEL_14;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v15 = [(_MKPlaceItem *)self->_placeItem contact];
    [(MUPlaceViewController *)self _didSelectDirectionsWithAddress:v9 forContact:v15];
  }

  else
  {
    [(MUPlaceViewController *)self _openDirections];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)didSelectFeaturedGuideWithActionDispatcher:(id)a3 mapItemIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MUPlaceViewController *)self mapsAppDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    objc_initWeak(&location, self);
    lockScreenCoordinator = self->_lockScreenCoordinator;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__MUPlaceViewController_didSelectFeaturedGuideWithActionDispatcher_mapItemIdentifier___block_invoke;
    v11[3] = &unk_1E8219F48;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    [(MULockScreenCoordinator *)lockScreenCoordinator performActionIfSuccessfullyAuthenticated:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __86__MUPlaceViewController_didSelectFeaturedGuideWithActionDispatcher_mapItemIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained mapsAppDelegate];
    [v3 placeViewController:v4 selectCuratedCollectionIdentifier:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)didSelectARPRatingWithActionDispatcher:(id)a3 ratingCategory:(id)a4 value:(float)a5
{
  v6 = a5 + 1;
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_1C587A078[v6];
  }

  v18 = objc_alloc_init(MUPresentationOptions);
  v8 = [(MUPlaceViewController *)self webPlacecardSectionController];
  v9 = [v8 webContentViewController];
  v10 = [v9 webView];
  v11 = [v10 scrollView];
  [(MUPresentationOptions *)v18 setSourceView:v11];

  v12 = [(MUPlaceViewController *)self webPlacecardSectionController];
  v13 = [v12 webContentViewController];
  v14 = [v13 webView];
  v15 = [v14 scrollView];
  [v15 frame];
  [(MUPresentationOptions *)v18 setSourceRect:?];

  v16 = [(MUPlaceViewController *)self mapsAppDelegate];
  LOBYTE(v13) = objc_opt_respondsToSelector();

  if (v13)
  {
    v17 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v17 placeViewController:self didSelectAddRatingsWithPresentationOptions:v18 overallState:v7 originTarget:0];
  }
}

- (void)didTapOpenPhotoViewerWithActionDispatcher:(id)a3 index:(float)a4
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(MUPlaceViewController *)self mapItem];
  v8 = [v7 _annotatedItemList];
  v9 = [v8 pictureItemContainer];
  v10 = [v9 pictureItems];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__MUPlaceViewController_didTapOpenPhotoViewerWithActionDispatcher_index___block_invoke;
  v23[3] = &unk_1E821B928;
  v11 = v6;
  v24 = v11;
  [v10 enumerateObjectsUsingBlock:v23];

  if ([v11 count])
  {
    v12 = [(MUPlaceViewController *)self mapItem];
    v13 = [v12 _annotatedItemList];
    v14 = [v13 pictureItemContainer];
    v15 = [v14 allowFullScreenPhoto];

    if (v15)
    {
      v16 = [MUPlacePhotoGalleryViewController alloc];
      v17 = [(MUPlaceViewController *)self mapItem];
      v18 = [(MUPlacePhotoGalleryViewController *)v16 initWithPhotos:v11 additionalView:0 scrollToIndex:a4 mapItem:v17 delegate:self];

      if (MapKitIdiomIsMacCatalyst())
      {
        [(MUPlaceViewController *)self _didRequestSceneActivationForPhotoGalleryViewController:v18];
      }

      else
      {
        v19 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v18];
        v20 = [v19 navigationController];
        [v20 setNavigationBarHidden:1 animated:0];

        [v19 setModalPresentationStyle:5];
        [(MUPlaceViewController *)self presentViewController:v19 animated:1 completion:0];
        v21 = objc_alloc_init(MEMORY[0x1E696F2F8]);
        [(MUPlaceViewController *)self _presentModalViewController:v19 withEnvironment:v21];
      }
    }

    else
    {
      v18 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_1C5620000, v18, OS_LOG_TYPE_INFO, "Picture item container does not allow full screen photo. Bail early", v22, 2u);
      }
    }
  }
}

void __73__MUPlaceViewController_didTapOpenPhotoViewerWithActionDispatcher_index___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 photo];
  if (v3)
  {
    v4 = v3;
    v5 = [v8 pictureItemPhotoType];

    if (v5 == 1)
    {
      v6 = *(a1 + 32);
      v7 = [objc_alloc(MEMORY[0x1E696F288]) initWithPictureItem:v8];
      [v6 addObject:v7];
    }
  }
}

- (void)showSeeAllRelatedPlacesWithActionDispatcher:(id)a3 title:(id)a4 relatedMapItemIdentifiers:(id)a5 originalMapItemIdentifier:(id)a6
{
  v54 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MUWebBasedPlacecardSectionController *)self->_flexiblePlacecardSectionController configuration];
  v14 = [v13 relatedPlacesCache];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__MUPlaceViewController_showSeeAllRelatedPlacesWithActionDispatcher_title_relatedMapItemIdentifiers_originalMapItemIdentifier___block_invoke;
  aBlock[3] = &unk_1E8218770;
  objc_copyWeak(&v51, &location);
  v15 = v11;
  v47 = v15;
  v16 = v14;
  v48 = v16;
  v17 = v12;
  v49 = v17;
  v32 = v10;
  v50 = v32;
  v18 = _Block_copy(aBlock);
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = [v16 objectForKey:v17];
  v21 = v20 == 0;

  if (v21)
  {
    [v19 addObject:{v17, v32, v33}];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v15;
  v23 = [v22 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v23)
  {
    v24 = *v43;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v42 + 1) + 8 * i);
        v27 = [v16 objectForKey:{v26, v32}];
        v28 = v27 == 0;

        if (v28)
        {
          [v19 addObject:v26];
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v23);
  }

  if ([v19 count])
  {
    v29 = [MEMORY[0x1E696F298] sharedService];
    v30 = [v29 ticketForIdentifiers:v19 traits:0];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __127__MUPlaceViewController_showSeeAllRelatedPlacesWithActionDispatcher_title_relatedMapItemIdentifiers_originalMapItemIdentifier___block_invoke_2;
    v37[3] = &unk_1E821A7D0;
    objc_copyWeak(&v41, &location);
    v38 = v16;
    v40 = v18;
    v39 = v22;
    [v30 submitWithHandler:v37 networkActivity:0];

    objc_destroyWeak(&v41);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __127__MUPlaceViewController_showSeeAllRelatedPlacesWithActionDispatcher_title_relatedMapItemIdentifiers_originalMapItemIdentifier___block_invoke_4;
    block[3] = &unk_1E821A618;
    v36 = v18;
    v35 = v22;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v30 = v36;
  }

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);

  v31 = *MEMORY[0x1E69E9840];
}

void __127__MUPlaceViewController_showSeeAllRelatedPlacesWithActionDispatcher_title_relatedMapItemIdentifiers_originalMapItemIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(a1 + 40) objectForKey:{*(*(&v12 + 1) + 8 * v8), v12}];
          if (v9)
          {
            [v3 addObject:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [*(a1 + 40) objectForKey:*(a1 + 48)];
    [WeakRetained _relatedPlacesShowSeeAllWithTitle:*(a1 + 56) relatedMapItems:v3 originalMapItem:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __127__MUPlaceViewController_showSeeAllRelatedPlacesWithActionDispatcher_title_relatedMapItemIdentifiers_originalMapItemIdentifier___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __127__MUPlaceViewController_showSeeAllRelatedPlacesWithActionDispatcher_title_relatedMapItemIdentifiers_originalMapItemIdentifier___block_invoke_3;
    v5[3] = &unk_1E8218FA8;
    v6 = v3;
    v7 = a1[4];
    v9 = a1[6];
    v8 = a1[5];
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

uint64_t __127__MUPlaceViewController_showSeeAllRelatedPlacesWithActionDispatcher_title_relatedMapItemIdentifiers_originalMapItemIdentifier___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 identifier];
        [v8 setObject:v7 forKey:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)openPlaceWithActionDispatcher:(id)a3 mapItemIdentifier:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [MEMORY[0x1E696F298] sharedService];
  v15[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v10 = [v8 ticketForIdentifiers:v9 traits:0];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__MUPlaceViewController_openPlaceWithActionDispatcher_mapItemIdentifier___block_invoke;
  v12[3] = &unk_1E8219220;
  objc_copyWeak(&v13, &location);
  [v10 submitWithHandler:v12 networkActivity:0];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  v11 = *MEMORY[0x1E69E9840];
}

void __73__MUPlaceViewController_openPlaceWithActionDispatcher_mapItemIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 firstObject];
    [WeakRetained _handleRoutingToPlaceWithMapItem:v4];
  }
}

- (id)placePhotoGalleryImageViewForPhotoAtIndex:(unint64_t)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (void)_localeDidChange
{
  v3 = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = [v5 placeViewControllerRequestsMapViewAssociatedWithVC:self];

    if (v6)
    {
      [v6 _cartographicConfiguration];
      v7 = v15;
    }

    else
    {
      v7 = 0;
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
    }

    v8 = [(MUPlaceViewController *)self webPlacecardSectionController:v15];
    v9 = [v8 configuration];
    if (v9)
    {
    }

    else
    {
      flexiblePlacecardConfig = self->_flexiblePlacecardConfig;

      if (!flexiblePlacecardConfig)
      {
        v14 = objc_alloc_init(_TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration);
        [(MUWebBasedPlacecardSectionControllerConfiguration *)v14 setMapStyle:v7];
        v13 = self->_flexiblePlacecardConfig;
        self->_flexiblePlacecardConfig = v14;
        goto LABEL_9;
      }
    }

    v11 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v12 = [v11 configuration];
    [v12 setMapStyle:v7];

    v13 = [(MUPlaceViewController *)self webPlacecardSectionController];
    [v13 updateUserPreferences];
LABEL_9:
  }
}

- (void)actionBarDataSourceDidUpdate:(id)a3
{
  if (![(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {

    [(MUPlaceViewController *)self _updateActionBarDataSources];
  }
}

- (void)_updateActionBarDataSources
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = [MEMORY[0x1E695DF70] array];
  [MEMORY[0x1E695DF70] array];
  v16 = v15 = self;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_sectionControllers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 leadingActionBarItem];
          v10 = v9;
          if (v9)
          {
            v11 = v9;

            v5 = v11;
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = [v8 trailingActionBarItems];
          if ([v12 count])
          {
            [v17 addObjectsFromArray:v12];
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v13 = [v8 menuActionBarItems];
          if ([v13 count])
          {
            [v16 addObjectsFromArray:v13];
          }
        }
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  [(MUPlaceActionBarController *)v15->_actionBarController updateWithLeadingItem:v5 trailingItems:v17 menuItems:v16];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_addActionBarWithConfiguration:(id)a3
{
  v31[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 hasContent] & 1) != 0)
  {
    v6 = [(MUPlaceViewController *)self scrollView];
    v7 = [v6 _pocketStyleForEdge:1];

    if (v7)
    {
      v8 = [(MUPlaceViewController *)self scrollView];
      [v8 _setPocketStyle:0 forEdge:1];
    }

    actionBar = self->_actionBar;
    if (!actionBar)
    {
      v10 = [[MUPlaceActionBarView alloc] initWithConfiguration:v5];
      v11 = self->_actionBar;
      self->_actionBar = v10;

      [(MUPlaceActionBarView *)self->_actionBar setTranslatesAutoresizingMaskIntoConstraints:0];
      v12 = [(MUPlaceViewController *)self view];
      [v12 addSubview:self->_actionBar];

      v26 = MEMORY[0x1E696ACD8];
      v29 = [(MUPlaceActionBarView *)self->_actionBar leadingAnchor];
      v30 = [(MUPlaceViewController *)self view];
      v28 = [v30 leadingAnchor];
      v27 = [v29 constraintEqualToAnchor:v28];
      v31[0] = v27;
      v24 = [(MUPlaceActionBarView *)self->_actionBar trailingAnchor];
      v25 = [(MUPlaceViewController *)self view];
      v13 = [v25 trailingAnchor];
      v14 = [v24 constraintEqualToAnchor:v13];
      v31[1] = v14;
      v15 = [(MUPlaceActionBarView *)self->_actionBar bottomAnchor];
      v16 = [(MUPlaceViewController *)self view];
      v17 = [v16 bottomAnchor];
      v18 = [v15 constraintEqualToAnchor:v17];
      v31[2] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
      [v26 activateConstraints:v19];

      v20 = objc_alloc_init(MEMORY[0x1E69DCEE0]);
      v21 = [(MUPlaceViewController *)self scrollView];
      [v20 setScrollView:v21];

      [v20 setEdge:4];
      [(MUPlaceActionBarView *)self->_actionBar addInteraction:v20];

      actionBar = self->_actionBar;
    }

    [(MUPlaceActionBarView *)actionBar setConfiguration:v5];
    v22 = [(MUPlaceViewController *)self traitCollection];
    -[MUPlaceActionBarView setHidden:](self->_actionBar, "setHidden:", [v22 _mapsui_shouldShowActionBar] ^ 1);
  }

  else
  {
    [(MUPlaceActionBarView *)self->_actionBar setHidden:1];
  }

  [(MUPlaceViewController *)self _updateBottomInset];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)sectionController:(id)a3 didSelectSendToDevice:(id)a4
{
  v8 = a4;
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v7 placeViewController:self didSelectSendToDevice:v8];
  }
}

- (void)sectionController:(id)a3 didScroll:(id)a4
{
  v8 = a4;
  v5 = [(MUPlaceViewController *)self scrollViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceViewController *)self scrollViewDelegate];
    [v7 scrollViewDidScroll:v8];
  }
}

- (void)sectionController:(id)a3 updateInsetsForHeaderWithTopInset:(double)a4 bottom:(double)a5
{
  v5 = a4;
  self->_flexiblePlacecardHeightForContentAboveTitle = -a4;
  v7 = [MEMORY[0x1E696F3B8] sharedInstance];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 2)
  {
    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 orientation];

    v11 = v10 - 3;
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v11 >= 2;
    }

    v15 = !v14;
    if (v15 & 1 | (fabs(self->_verifiedHeaderExpansionProgress + -1.0) < 0.0001))
    {
      v5 = 0.0;
    }

    v16 = [(MUPlaceViewController *)self scrollView];
    [v16 contentInset];
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(MUPlaceViewController *)self scrollView];
    [v23 setContentInset:{v5, v18, v20, v22}];

    v24 = [(MUPlaceViewController *)self scrollView];
    [v24 setContentOffset:0 animated:{0.0, -v5}];
  }
}

- (void)sectionControllerWebContentLoadCompleted:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x1E696F120] object:self];
}

- (void)showContentIfLoaded
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(MUPlaceViewController *)self isLoading];
  v4 = MUGetPlaceCardLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      contentStackView = self->_contentStackView;
      v10 = 138412290;
      v11 = contentStackView;
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_DEBUG, "MUPlaceViewController: showContentIfLoaded - still loading, early return %@", &v10, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = self->_contentStackView;
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_DEBUG, "MUPlaceViewController: showContentIfLoaded %@", &v10, 0xCu);
    }

    [(MUPlaceViewController *)self removeLoadingViewAnimated:1];
    placeItem = self->_placeItem;
    if (placeItem)
    {
      if (([(_MKPlaceItem *)placeItem isIntermediateMapItem]& 1) == 0)
      {
        [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator logImpressions];
        if (!self->_active && !self->_needsImpressionsLoggedOnAppearance)
        {
          self->_needsImpressionsLoggedOnAppearance = 1;
        }
      }
    }

    [(MUPlaceViewController *)self updatePreferredContentSize];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)hideContentIfLoading
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(MUPlaceViewController *)self isLoading];
  v4 = MUGetPlaceCardLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      contentStackView = self->_contentStackView;
      v9 = 138412290;
      v10 = contentStackView;
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_DEBUG, "MUPlaceViewController: hideContentIfLoading %@", &v9, 0xCu);
    }

    [(MUPlaceViewController *)self addLoadingView];
  }

  else
  {
    if (v5)
    {
      v7 = self->_contentStackView;
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_DEBUG, "MUPlaceViewController: hideContentIfLoading - not loading, early return %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __51__MUPlaceViewController_removeLoadingViewAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateContentAlpha];
    WeakRetained = v2;
  }
}

- (void)addLoadingView
{
  loadingOverlayController = self->_loadingOverlayController;
  if (!loadingOverlayController)
  {
    v4 = [MULoadingOverlayController alloc];
    v5 = [(MUPlaceViewController *)self view];
    v6 = [(MULoadingOverlayController *)v4 initWithParentView:v5 contentView:self->_contentStackView];
    v7 = self->_loadingOverlayController;
    self->_loadingOverlayController = v6;

    loadingOverlayController = self->_loadingOverlayController;
  }

  [(MULoadingOverlayController *)loadingOverlayController attachLoadingOverlay];
}

- (BOOL)isLoading
{
  v2 = [(MUPlaceViewController *)self placeItem];
  v3 = [v2 isIntermediateMapItem];

  return v3;
}

- (BOOL)shouldBlurChromeHeaderButtons
{
  v2 = [(MUPlaceViewController *)self headerSectionController];
  v3 = [v2 shouldBlurChromeHeaderButtons];

  return v3;
}

- (id)createShareSheetFooterActions
{
  v3 = [(MUPlaceActionManager *)self->_actionManager createContactActions];
  actionManager = self->_actionManager;
  v5 = [(MUShareSheetPresenter *)self->_shareSheetPresenter presentationOptions];
  v6 = [(MKPlaceActionEnvironment *)self->_currentEnvironmentForPresentedViewController analyticsModuleMetadata];
  v7 = [MUBlockActivity createBlockActivitiesFromPlaceActionItems:v3 usingActionManager:actionManager presentationOptions:v5 analyticsModuleMetadata:v6];

  return v7;
}

- (id)shareSheetPresenterRequestsOverridenActivityViewController:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = [v6 activityViewControllerForPlaceViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_launchAttributionURLs:(id)a3 withAttribution:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [MEMORY[0x1E696F378] punchoutOptionsForURLStrings:v8 withAttribution:v9];
    if ([v11 strategy] == 1)
    {
      analyticsController = self->_analyticsController;
      v13 = [v11 urlToOpen];
      v14 = [v13 absoluteString];
      v15 = [v9 providerID];
      [(MUPlaceCardAnalyticsController *)analyticsController instrumentPunchoutActionWithURL:v14 providerId:v15];

      v16 = [MEMORY[0x1E696F3B8] sharedInstance];
      v17 = [v11 urlToOpen];
      v18 = [v11 appBundleIdentifier];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __82__MUPlaceViewController__launchAttributionURLs_withAttribution_completionHandler___block_invoke;
      v22[3] = &unk_1E821A780;
      v24 = v10;
      v23 = v11;
      [v16 openURL:v17 bundleIdentifier:v18 completionHandler:v22];
    }

    else
    {
      v19 = [(MUPlaceViewController *)self mapsAppDelegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = [(MUPlaceViewController *)self mapsAppDelegate];
        [v21 placeViewController:self launchAttributionURLs:v8 withAttribution:v9 completionHandler:v10];
      }

      else
      {
        [MEMORY[0x1E696F198] launchAttributionURLs:v8 withAttribution:v9 completionHandler:v10];
      }
    }
  }
}

void __82__MUPlaceViewController__launchAttributionURLs_withAttribution_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = [*(a1 + 32) urlToOpen];
    v3 = [*(a1 + 32) appBundleIdentifier];
    (*(v1 + 16))(v1, v4, v3);
  }
}

- (void)_didSelectEditPlaceDetailsOfType:(int64_t)a3
{
  analyticsController = self->_analyticsController;
  if ((a3 - 1) > 5)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E82189E0[a3 - 1];
  }

  [(MUPlaceCardAnalyticsController *)analyticsController infoCardAnalyticsDidSelectAction:289 target:65 eventValue:v6 feedbackDelegateSelector:62 actionRichProviderId:0 classification:0];
  v7 = [(MUPlaceViewController *)self mapsAppDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v9 placeViewController:self didSelectEditPlaceDetailsOfType:a3];
  }
}

- (void)_inlineRAPDidSelectAddMissingDataOfType:(int64_t)a3
{
  analyticsController = self->_analyticsController;
  if ((a3 - 1) > 5)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E82189E0[a3 - 1];
  }

  [(MUPlaceCardAnalyticsController *)analyticsController infoCardAnalyticsDidSelectAction:286 eventValue:v6 feedbackDelegateSelector:62 classification:0];
  v7 = [(MUPlaceViewController *)self mapsAppDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v9 placeViewController:self didSelectAddMissingDataOfType:a3];
  }
}

- (void)placeInfoSectionController:(id)a3 didTapAttribution:(id)a4
{
  v5 = a4;
  v6 = [(MUPlaceViewController *)self mapItem];
  [(MUPlaceViewController *)self _launchAttribution:v5 withMapItem:v6];
}

- (void)placeInfoSectionController:(id)a3 selectedDirectionsWithAddress:(id)a4 forContact:(id)a5 options:(id)a6
{
  v13 = a4;
  v8 = a5;
  v9 = [(MUPlaceViewController *)self mapsAppDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(MUPlaceViewController *)self mapsAppDelegate];
    v12 = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
    [v11 placeViewController:self didSelectDirectionsForDestinationAddress:v13 contact:v8 transportType:v12];
  }
}

- (void)placeInfoSectionController:(id)a3 selectedDirectionsWithMapItem:(id)a4 options:(id)a5
{
  v10 = a4;
  v6 = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MUPlaceViewController *)self mapsAppDelegate];
    v9 = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
    [v8 placeViewController:self didSelectDirectionsForDestinationMapItem:v10 transportType:v9];
  }
}

- (void)_didSelectDirectionsWithAddress:(id)a3 forContact:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MUPlaceViewController *)self mapsAppDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MUPlaceViewController *)self mapsAppDelegate];
    v10 = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
    [v9 placeViewController:self didSelectDirectionsForDestinationAddress:v11 contact:v6 transportType:v10];
  }
}

- (void)_invokeShareActionWithPresentationOptions:(id)a3 analyticsModuleMetadata:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696F308]) initWithType:16 displayString:0 glyph:0 enabled:1];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [v15 sourceView];

  if (v9)
  {
    v10 = [v15 sourceView];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696F118]];
  }

  v11 = [v15 sourceItem];

  if (v11)
  {
    v12 = [v15 sourceItem];
    [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696F110]];
  }

  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696F108]];
  }

  actionManager = self->_actionManager;
  v14 = [v8 copy];
  [(MUPlaceActionManager *)actionManager performAction:v7 options:v14 completion:0];
}

- (void)placeHeaderSectionController:(id)a3 didSelectShareWithPresentationOptions:(id)a4
{
  v6 = a4;
  v7 = [a3 analyticsModuleForAction:0 presentationOptions:v6];
  [(MUPlaceViewController *)self _invokeShareActionWithPresentationOptions:v6 analyticsModuleMetadata:v7];
}

- (void)_handleRoutingToPlaceWithMapItem:(id)a3
{
  v7 = a3;
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewController:self didSelectParent:v7];
  }

  else
  {
    [v7 openInMapsWithLaunchOptions:0];
  }
}

- (double)placeHeaderSectionControllerRequestsPaddingConstant:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  v6 = [(MUPlaceViewController *)self mapsAppDelegate];
  [v6 placeViewControllerPlaceCardHeaderTitlePaddingConstant:self];
  v8 = v7;

  return v8;
}

- (double)placeHeaderSectionControllerRequestsTrailingConstant:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  v6 = [(MUPlaceViewController *)self mapsAppDelegate];
  [v6 placeViewControllerPlaceCardHeaderTitleTrailingConstant:self];
  v8 = v7;

  return v8;
}

- (id)inlineRatingsSectionControllerRequestsContentViewController:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = [v6 inlineRatingViewControllerForPlaceViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)ratingsAndReviewsSectionControllerDidSelectViewAllReviews:(id)a3
{
  v7 = [(MUPlaceViewController *)self mapItem];
  v4 = [v7 _reviewsAttribution];
  v5 = [v4 attributionURLs];
  v6 = [(MUPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
  [(MUPlaceViewController *)self _launchAttributionURLs:v5 withAttribution:v4 completionHandler:v6];
}

- (void)_ratingsAndReviewsDidSelectViewReview:(id)a3
{
  v4 = a3;
  v8 = [(MUPlaceViewController *)self mapItem];
  v5 = [v8 _reviewsAttribution];
  v6 = [v5 urlsForReview:v4];

  if ([v6 count])
  {
    v7 = [(MUPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
    [(MUPlaceViewController *)self _launchAttributionURLs:v6 withAttribution:v5 completionHandler:v7];
  }
}

- (id)createHeaderButtonsMenuWithPromotedSystemActionTypes:(id)a3 excludedSystemActionTypes:(id)a4 presentationOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MUPlaceActionManager *)self->_actionManager createMenuActions];
  v12 = objc_alloc(MEMORY[0x1E696F310]);
  v13 = [(MUPlaceViewController *)self createHeaderMenuSortOrderWithPromotedActionTypes:v8 excludedActionTypes:v9];
  v14 = [v12 initWithRequestedActionTypes:v13];

  [v14 setAddMismatchedItems:0];
  if ([v10 isForActionBarMoreMenu])
  {
    v15 = @"SECONDARY";
  }

  else
  {
    v16 = [v10 isForActionBar];
    v15 = @"PRIMARY";
    if (!v16)
    {
      v15 = 0;
    }
  }

  v17 = v15;
  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E696F308];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __124__MUPlaceViewController_createHeaderButtonsMenuWithPromotedSystemActionTypes_excludedSystemActionTypes_presentationOptions___block_invoke;
  v23[3] = &unk_1E8218748;
  v19 = v10;
  v24 = v19;
  objc_copyWeak(&v26, &location);
  v20 = v17;
  v25 = v20;
  v21 = [v18 buildActionMenuForItems:v11 buildingOptions:v14 menuElementCreationBlock:v23];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v21;
}

id __124__MUPlaceViewController_createHeaderButtonsMenuWithPromotedSystemActionTypes_excludedSystemActionTypes_presentationOptions___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 resolvedActionItem];
  v5 = [v4 titleForDisplayStyle:0];
  v6 = MEMORY[0x1E69DCAB8];
  v7 = [v4 symbolForDisplayStyle:1];
  v8 = [v6 _systemImageNamed:v7];

  v9 = [a1[4] isForActionBar];
  v10 = @"PLACECARD_QUICK_ACTION_TRAY";
  if (v9)
  {
    v10 = @"PLACECARD_ACTION_BAR";
  }

  v11 = v10;
  v12 = [a1[4] isForActionBar];
  if ([v4 type] != 9)
  {
    goto LABEL_10;
  }

  if (v12)
  {
    v13 = 203;
  }

  else
  {
    v13 = 30;
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __124__MUPlaceViewController_createHeaderButtonsMenuWithPromotedSystemActionTypes_excludedSystemActionTypes_presentationOptions___block_invoke_2;
  v34[3] = &unk_1E82186F8;
  objc_copyWeak(&v38, a1 + 6);
  v35 = a1[4];
  v23 = v11;
  v14 = v11;
  v36 = v14;
  v39 = v13;
  v37 = a1[5];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __124__MUPlaceViewController_createHeaderButtonsMenuWithPromotedSystemActionTypes_excludedSystemActionTypes_presentationOptions___block_invoke_3;
  v28[3] = &unk_1E82186F8;
  objc_copyWeak(&v32, a1 + 6);
  v29 = a1[4];
  v30 = v14;
  v33 = v13;
  v31 = a1[5];
  v15 = [MUPhotoOptionsMenuButton menuForPhotoOptionsMenuButtonWithTitle:v5 symbol:v8 cameraCompletion:v34 libraryCompletion:v28];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v38);
  if (!v16)
  {
LABEL_10:
    v18 = MEMORY[0x1E69DC628];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __124__MUPlaceViewController_createHeaderButtonsMenuWithPromotedSystemActionTypes_excludedSystemActionTypes_presentationOptions___block_invoke_4;
    v24[3] = &unk_1E8218720;
    objc_copyWeak(&v27, a1 + 6);
    v25 = a1[4];
    v19 = v4;
    v26 = v19;
    v16 = [v18 actionWithTitle:v5 image:v8 identifier:0 handler:v24];
    if ([v19 isDestructiveForDisplayStyle:1])
    {
      [v16 setAttributes:{objc_msgSend(v16, "attributes") | 2}];
    }

    if (([v19 enabled] & 1) == 0)
    {
      [v16 setAttributes:{objc_msgSend(v16, "attributes") | 1}];
    }

    [v19 type];
    v20 = MKPlaceCardActionTypeAsString();
    v21 = [v20 stringByAppendingString:@"MenuAction"];
    [v16 setAccessibilityIdentifier:v21];

    objc_destroyWeak(&v27);
  }

  return v16;
}

void __124__MUPlaceViewController_createHeaderButtonsMenuWithPromotedSystemActionTypes_excludedSystemActionTypes_presentationOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained presentAddPhotosWithPresentationOptions:*(a1 + 32) entryPoint:1 originTarget:*(a1 + 40)];
    [v3[190] infoCardAnalyticsDidSelectAction:2147 target:*(a1 + 64) eventValue:0 feedbackDelegateSelector:174 actionRichProviderId:0 classification:*(a1 + 48)];
    WeakRetained = v3;
  }
}

void __124__MUPlaceViewController_createHeaderButtonsMenuWithPromotedSystemActionTypes_excludedSystemActionTypes_presentationOptions___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained presentAddPhotosWithPresentationOptions:*(a1 + 32) entryPoint:2 originTarget:*(a1 + 40)];
    [v3[190] infoCardAnalyticsDidSelectAction:2147 target:*(a1 + 64) eventValue:0 feedbackDelegateSelector:174 actionRichProviderId:0 classification:*(a1 + 48)];
    WeakRetained = v3;
  }
}

void __124__MUPlaceViewController_createHeaderButtonsMenuWithPromotedSystemActionTypes_excludedSystemActionTypes_presentationOptions___block_invoke_4(uint64_t a1)
{
  v13[5] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([*(a1 + 32) isForActionBar])
    {
      v3 = 46;
    }

    else
    {
      v3 = 39;
    }

    v4 = [MEMORY[0x1E69A1B10] moduleFromModuleType:v3];
    v12[0] = *MEMORY[0x1E696F118];
    v5 = [*(a1 + 32) sourceView];
    v6 = *MEMORY[0x1E696F100];
    v13[0] = v5;
    v13[1] = MEMORY[0x1E695E118];
    v7 = *MEMORY[0x1E696F108];
    v12[1] = v6;
    v12[2] = v7;
    v13[2] = v4;
    v12[3] = *MEMORY[0x1E696F0F0];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isForActionBar")}];
    v13[3] = v8;
    v12[4] = *MEMORY[0x1E696F0F8];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isForActionBarMoreMenu")}];
    v13[4] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

    [WeakRetained performAction:*(a1 + 40) options:v10 completion:&__block_literal_global_529];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)createHeaderMenuSortOrderWithPromotedActionTypes:(id)a3 excludedActionTypes:(id)a4
{
  v27[12] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([(MUPlaceViewController *)self options]& 0x20000000) != 0)
  {
    v9 = *MEMORY[0x1E696F0E0];
    v10 = [(MUPlaceViewController *)self actionRowSectionController];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(_MKPlaceItem *)self->_placeItem representsPerson])
    {
      [v11 addObject:&unk_1F450D9B8];
    }

    if ([v6 count])
    {
      [v11 addObjectsFromArray:v6];
    }

    if (!v10)
    {
      v27[0] = &unk_1F450D9D0;
      v27[1] = &unk_1F450D9E8;
      v27[2] = &unk_1F450DA00;
      v27[3] = &unk_1F450DA18;
      v27[4] = &unk_1F450DA30;
      v27[5] = &unk_1F450DA48;
      v27[6] = &unk_1F450DA60;
      v27[7] = &unk_1F450DA78;
      v27[8] = &unk_1F450DA90;
      v27[9] = &unk_1F450DAA8;
      v27[10] = &unk_1F450DAC0;
      v27[11] = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:12];
      [v11 addObjectsFromArray:v12];
    }

    v26[0] = &unk_1F450DAD8;
    v26[1] = &unk_1F450DAF0;
    v26[2] = v9;
    v26[3] = &unk_1F450DB08;
    v26[4] = v9;
    v26[5] = &unk_1F450DB20;
    v26[6] = &unk_1F450DB38;
    v26[7] = &unk_1F450DB50;
    v26[8] = &unk_1F450DAD8;
    v26[9] = &unk_1F450DAF0;
    v26[10] = v9;
    v26[11] = &unk_1F450DB68;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:12];
    [v11 addObjectsFromArray:v13];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v11 removeObject:{*(*(&v21 + 1) + 8 * i), v21}];
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    v8 = [v11 copy];
  }

  else
  {
    v8 = v6;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)contactsNavigationController
{
  v2 = [(MUPlaceViewController *)self configuration];
  v3 = [v2 contactsNavigationController];

  return v3;
}

- (void)_authorized_contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MUPlaceViewController *)self contactStore];
  v9 = MEMORY[0x1E69E96A0];
  v10 = MEMORY[0x1E69E96A0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__MUPlaceViewController__authorized_contactPicker_didSelectContact___block_invoke;
  v13[3] = &unk_1E82186D0;
  v11 = v7;
  v14 = v11;
  v12 = v6;
  v15 = v12;
  objc_copyWeak(&v17, &location);
  v16 = self;
  [v8 fetchContactForPickerDisplayUsingContact:v11 callbackQueue:v9 completion:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __68__MUPlaceViewController__authorized_contactPicker_didSelectContact___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if (a3)
  {
    NSLog(&cfstr_FailedToRefetc.isa, a3, *(a1 + 32));
    [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = MEMORY[0x1E695D148];
      v8 = [WeakRetained contact];
      v9 = [v7 viewControllerForUpdatingContact:v12 withPropertiesFromContact:v8];

      [v9 setDisplayMode:1];
      [v9 setDelegate:*(a1 + 48)];
      v10 = [*(a1 + 40) navigationController];
      [v10 pushViewController:v9 animated:1];

      v11 = v6[137];
      v6[137] = v9;
    }
  }
}

- (void)_unauthorized_contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__MUPlaceViewController__unauthorized_contactPicker_didSelectContact___block_invoke;
  v9[3] = &unk_1E8218520;
  objc_copyWeak(&v12, &location);
  v8 = v7;
  v10 = v8;
  v11 = self;
  [v6 dismissViewControllerAnimated:1 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __70__MUPlaceViewController__unauthorized_contactPicker_didSelectContact___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained contactStore];
    v5 = [v3 contact];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__MUPlaceViewController__unauthorized_contactPicker_didSelectContact___block_invoke_2;
    v8[3] = &unk_1E82186A8;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v6;
    v10 = v7;
    v11 = v3;
    [v4 removeMapsDataFromContact:v5 callbackQueue:MEMORY[0x1E69E96A0] completion:v8];
  }
}

void __70__MUPlaceViewController__unauthorized_contactPicker_didSelectContact___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695D148] viewControllerForUpdatingContact:*(a1 + 32) withPropertiesFromContact:a2];
  [v3 setDisplayMode:1];
  [v3 setDelegate:*(a1 + 40)];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v3];
  [v6 setModalPresentationStyle:2];
  [*(a1 + 48) _presentModalViewController:v6 withEnvironment:*(*(a1 + 48) + 1344)];
  v4 = *(a1 + 48);
  v5 = *(v4 + 1096);
  *(v4 + 1096) = v3;
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [(MUPlaceViewController *)self contactStore];
  v8 = [v7 hasContactAccess];

  if (v8)
  {
    [(MUPlaceViewController *)self _authorized_contactPicker:v9 didSelectContact:v6];
  }

  else
  {
    [(MUPlaceViewController *)self _unauthorized_contactPicker:v9 didSelectContact:v6];
  }
}

- (void)contactViewController:(id)a3 didDeleteContact:(id)a4
{
  v5 = a3;
  if (self->_editingContactController == v5)
  {
    v11 = v5;
    [(CNContactViewController *)v5 dismissViewControllerAnimated:1 completion:0];
    editingContactController = self->_editingContactController;
    self->_editingContactController = 0;

    v7 = [(MUPlaceViewController *)self contactsNavigationController];
    v8 = objc_opt_respondsToSelector();

    v5 = v11;
    if (v8)
    {
      v9 = [(MUPlaceViewController *)self contactsNavigationController];
      v10 = [(MUPlaceViewController *)self _contactForEditOperations];
      [v9 contactViewController:v11 didDeleteContact:v10];

      v5 = v11;
    }
  }
}

- (void)_tearDownContactPickersForCompletionWithViewController:(id)a3
{
  v4 = a3;
  editingContactController = self->_editingContactController;
  self->_editingContactController = 0;

  updatingContactController = self->_updatingContactController;
  self->_updatingContactController = 0;

  creatingContactController = self->_creatingContactController;
  self->_creatingContactController = 0;

  v8 = [MEMORY[0x1E696F3B8] sharedInstance];
  v9 = [v8 userInterfaceIdiom];

  if (v9 && MapKitIdiomIsMacCatalyst() && ([(MUPlaceViewController *)self placeViewControllerDelegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11 & 1) != 0))
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__MUPlaceViewController__tearDownContactPickersForCompletionWithViewController___block_invoke;
    v12[3] = &unk_1E8218520;
    objc_copyWeak(&v14, &location);
    v12[4] = self;
    v13 = v4;
    [v13 dismissViewControllerAnimated:1 completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void __80__MUPlaceViewController__tearDownContactPickersForCompletionWithViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) mapsAppDelegate];
    [v3 placeViewControllerContactsDidComplete:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_editingContactController == v6)
  {
    if (v7)
    {
      objc_initWeak(&location, self);
      v9 = [(MUPlaceViewController *)self contactStore];
      v10 = MEMORY[0x1E69E96A0];
      v11 = MEMORY[0x1E69E96A0];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __70__MUPlaceViewController_contactViewController_didCompleteWithContact___block_invoke;
      v29[3] = &unk_1E82185E0;
      objc_copyWeak(&v31, &location);
      v30 = v6;
      [v9 removeMapsDataFromContact:v8 callbackQueue:v10 completion:v29];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    goto LABEL_9;
  }

  if (!v7)
  {
LABEL_6:
    [(MUPlaceCardAnalyticsController *)self->_analyticsController infoCardAnalyticsDidSelectAction:4 target:624 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
LABEL_9:
    [(MUPlaceViewController *)self _tearDownContactPickersForCompletionWithViewController:v6];
    goto LABEL_10;
  }

  [(MUPlaceCardAnalyticsController *)self->_analyticsController infoCardAnalyticsDidSelectAction:17 target:624 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  if (self->_creatingContactController != v6)
  {
    if (self->_updatingContactController != v6)
    {
      [(MUPlaceViewController *)self setShowContactActions:1];
      [(MUPlaceViewController *)self _tearDownContactPickersForCompletionWithViewController:v6];
      goto LABEL_6;
    }

    objc_initWeak(&location, self);
    v19 = [(MUPlaceViewController *)self contactStore];
    v20 = MEMORY[0x1E69E96A0];
    v21 = MEMORY[0x1E69E96A0];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__MUPlaceViewController_contactViewController_didCompleteWithContact___block_invoke_4;
    v22[3] = &unk_1E82185E0;
    objc_copyWeak(&v24, &location);
    v23 = v6;
    [v19 removeMapsDataFromContact:v8 callbackQueue:v20 completion:v22];

    v18 = &v24;
LABEL_15:
    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
    goto LABEL_10;
  }

  v12 = [(MUPlaceViewController *)self contactStore];
  if (![v12 hasContactAccess])
  {

    goto LABEL_10;
  }

  originalContactCopy = self->_originalContactCopy;

  if (originalContactCopy)
  {
    objc_initWeak(&location, self);
    v14 = [(MUPlaceViewController *)self contactStore];
    v15 = MEMORY[0x1E69E96A0];
    v16 = MEMORY[0x1E69E96A0];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __70__MUPlaceViewController_contactViewController_didCompleteWithContact___block_invoke_2;
    v25[3] = &unk_1E82185B8;
    objc_copyWeak(&v28, &location);
    v17 = v6;
    v26 = v17;
    v27 = self;
    [v14 fetchContactForPickerDisplayUsingContact:v8 callbackQueue:v15 completion:v25];

    [(MUPlaceViewController *)self setShowContactActions:0];
    [(MUPlaceViewController *)self _tearDownContactPickersForCompletionWithViewController:v17];

    v18 = &v28;
    goto LABEL_15;
  }

LABEL_10:
}

void __70__MUPlaceViewController_contactViewController_didCompleteWithContact___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 139);
    *(WeakRetained + 139) = 0;

    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
    v6 = [v4 contactsNavigationController];
    v7 = [v6 popViewControllerAnimated:0];

    v8 = [v4 contactsNavigationController];
    [v8 showCardForContact:v9 animated:0];

    [v4 _tearDownContactPickersForCompletionWithViewController:*(a1 + 32)];
  }
}

void __70__MUPlaceViewController_contactViewController_didCompleteWithContact___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6 || ([WeakRetained[155] _maps_isEqualToContact:v5] & 1) != 0)
    {
      [v8 setShowContactActions:0];
      [v8 _tearDownContactPickersForCompletionWithViewController:a1[4]];
    }

    else
    {
      v9 = [a1[5] contactStore];
      v10 = MEMORY[0x1E69E96A0];
      v11 = MEMORY[0x1E69E96A0];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70__MUPlaceViewController_contactViewController_didCompleteWithContact___block_invoke_3;
      v12[3] = &unk_1E82185E0;
      objc_copyWeak(&v14, a1 + 6);
      v13 = a1[4];
      [v9 removeMapsDataFromContact:v5 callbackQueue:v10 completion:v12];

      objc_destroyWeak(&v14);
    }
  }
}

void __70__MUPlaceViewController_contactViewController_didCompleteWithContact___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setShowContactActions:1];
    [v3 _tearDownContactPickersForCompletionWithViewController:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __70__MUPlaceViewController_contactViewController_didCompleteWithContact___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 129, a2);
    [v5 setShowContactActions:0];
    [v5 _tearDownContactPickersForCompletionWithViewController:*(a1 + 32)];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v12 = a3;
  [(MUPlaceCardAnalyticsController *)self->_analyticsController instrumentVerticalScrollWithBeginningPoint:a5 targetContentOffset:self->_beginAnalyticsScrollingPoint.x velocity:self->_beginAnalyticsScrollingPoint.y, x, y];
  v9 = [(MUPlaceViewController *)self scrollViewDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(MUPlaceViewController *)self scrollViewDelegate];
    [v11 scrollViewWillEndDragging:v12 withVelocity:a5 targetContentOffset:{x, y}];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v9 = a3;
  [v9 contentOffset];
  self->_beginAnalyticsScrollingPoint.x = v4;
  self->_beginAnalyticsScrollingPoint.y = v5;
  v6 = [(MUPlaceViewController *)self scrollViewDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MUPlaceViewController *)self scrollViewDelegate];
    [v8 scrollViewWillBeginDragging:v9];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v8 = a3;
  [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator logImpressions];
  [v8 contentOffset];
  [(MUPlaceViewController *)self contentAboveTitleScrollPositionChanged:v4];
  v5 = [(MUPlaceViewController *)self scrollViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceViewController *)self scrollViewDelegate];
    [v7 scrollViewDidScroll:v8];
  }
}

- (void)_dismissModalViewController
{
  LODWORD(v7) = 0;
  [(MUPlaceCardAnalyticsController *)self->_analyticsController infoCardAnalyticsDidSelectAction:4 target:628 eventValue:0 actionURL:0 photoID:0 moduleMetadata:0 feedbackDelegateSelector:v7 actionRichProviderId:0 classification:0];
  v3 = [(MUPlaceViewController *)self presentedViewController];
  if (v3)
  {
    v8 = v3;
    v4 = [(MUPlaceViewController *)self presentedViewController];
    if ([v4 isBeingDismissed])
    {
    }

    else
    {
      v5 = [(MUPlaceViewController *)self presentedViewController];
      v6 = [v5 isBeingPresented];

      if ((v6 & 1) == 0)
      {

        [(MUPlaceViewController *)self dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

- (void)_presentModalViewController:(id)a3 withEnvironment:(id)a4
{
  objc_storeStrong(&self->_currentEnvironmentForPresentedViewController, a4);
  v6 = a3;
  [(MUPlaceViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)_traits
{
  v3 = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v5 traitsForPlaceViewController:self];
  }

  else
  {
    v5 = [MEMORY[0x1E696F298] sharedService];
    [v5 defaultTraits];
  }
  v6 = ;

  return v6;
}

- (void)transitDeparturesSectionController:(id)a3 didSelectAttribution:(id)a4
{
  v5 = [a4 url];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    [(MUPlaceViewController *)self _openWebURL:v6 forcePunchout:0];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)transitDeparturesSectionController:(id)a3 showIncidents:(id)a4
{
  v5 = a4;
  v6 = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v12 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v12 placeViewController:self showTransitIncidents:v5];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E696F238]) initWithTransitIncidents:v5];

    v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v12];
    [v5 setModalPresentationStyle:-2];
    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissModalViewController];
    v9 = [v12 navigationItem];
    [v9 setLeftBarButtonItem:v8];

    v10 = objc_alloc_init(MEMORY[0x1E696F2F8]);
    v11 = [MEMORY[0x1E69A1B10] moduleFromModuleType:6];
    [v10 setAnalyticsModuleMetadata:v11];

    [(MUPlaceViewController *)self _presentModalViewController:v5 withEnvironment:v10];
  }
}

- (void)_transitDeparturesDidSelectTransitLine:(id)a3 usingPresentationOptions:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MUPlaceViewController *)self mapsAppDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    if (MapKitIdiomIsMacCatalyst())
    {
      v13 = [(MUPlaceViewController *)self mapsAppDelegate];
      [v13 placeViewController:self didSelectTransitLine:v8];
    }

    else
    {
      if ([v9 isForActionBarMoreMenu])
      {
        v14 = @"SECONDARY";
      }

      else
      {
        v15 = [v9 isForActionBar];
        v14 = @"PRIMARY";
        if (!v15)
        {
          v14 = 0;
        }
      }

      v16 = v14;
      v17 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
      v18 = [v9 sourceView];
      v19 = [v17 popoverPresentationController];
      [v19 setSourceView:v18];

      [v9 sourceRect];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [v17 popoverPresentationController];
      [v28 setSourceRect:{v21, v23, v25, v27}];

      objc_initWeak(location, self);
      v29 = MEMORY[0x1E69DC648];
      v30 = _MULocalizedStringFromThisBundle(@"View on Map [Placecard]");
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __100__MUPlaceViewController__transitDeparturesDidSelectTransitLine_usingPresentationOptions_completion___block_invoke;
      v45[3] = &unk_1E8218630;
      objc_copyWeak(&v48, location);
      v31 = v16;
      v46 = v31;
      v47 = v8;
      v32 = [v29 actionWithTitle:v30 style:0 handler:v45];

      v33 = MEMORY[0x1E69DC648];
      v34 = _MULocalizedStringFromThisBundle(@"Cancel [Placeecard]");
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __100__MUPlaceViewController__transitDeparturesDidSelectTransitLine_usingPresentationOptions_completion___block_invoke_2;
      v41[3] = &unk_1E8218658;
      objc_copyWeak(&v44, location);
      v35 = v31;
      v42 = v35;
      v43 = v10;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __100__MUPlaceViewController__transitDeparturesDidSelectTransitLine_usingPresentationOptions_completion___block_invoke_3;
      v39[3] = &unk_1E8218680;
      v40 = v43;
      v36 = [v33 _actionWithTitle:v34 image:0 style:1 handler:v41 shouldDismissHandler:v39];

      [v17 addAction:v32];
      [v17 addAction:v36];
      v37 = objc_alloc_init(MEMORY[0x1E696F2F8]);
      v38 = [MEMORY[0x1E69A1B10] moduleFromModuleType:6];
      [v37 setAnalyticsModuleMetadata:v38];

      [(MUPlaceViewController *)self _presentModalViewController:v17 withEnvironment:v37];
      objc_destroyWeak(&v44);

      objc_destroyWeak(&v48);
      objc_destroyWeak(location);
    }
  }
}

void __100__MUPlaceViewController__transitDeparturesDidSelectTransitLine_usingPresentationOptions_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[190] infoCardAnalyticsDidSelectAction:7004 eventValue:0 feedbackDelegateSelector:0 classification:*(a1 + 32)];
    v3 = [v4 mapsAppDelegate];
    [v3 placeViewController:v4 didSelectTransitLine:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void __100__MUPlaceViewController__transitDeparturesDidSelectTransitLine_usingPresentationOptions_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[190] infoCardAnalyticsDidSelectAction:7005 eventValue:0 feedbackDelegateSelector:0 classification:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (void)_transitDeparturesDidSelectDepartureSequence:(id)a3 usingMapItem:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MUPlaceViewController *)self mapsAppDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v9 placeViewController:self didSelectDepartureSequence:v10 mapItem:v6];
  }
}

- (void)transitDeparturesSectionController:(id)a3 didSelectConnectionInformation:(id)a4
{
  v5 = a4;
  v6 = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v9 placeViewController:self didSelectTransitConnectionInformation:v5];
  }

  else
  {
    v9 = [MEMORY[0x1E696F3B8] sharedInstance];
    v8 = [v5 urlToOpen];

    [v9 openURL:v8 completionHandler:0];
    v5 = v8;
  }
}

- (BOOL)_transitDeparturesCanSelectDepartureSequence:(id)a3 usingMapItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MUPlaceViewController *)self mapsAppDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MUPlaceViewController *)self mapsAppDelegate];
    v11 = [v10 placeViewController:self canSelectDepartureSequence:v6 mapItem:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)placePhotoSectionController:(id)a3 requestsAddPhotosToMapsWithEntryPoint:(int64_t)a4 options:(id)a5
{
  v8 = a5;
  v7 = [v8 presentingViewController];

  if (!v7)
  {
    [v8 setPresentingViewController:self];
  }

  [(MUPlaceViewController *)self presentAddPhotosWithPresentationOptions:v8 entryPoint:a4 originTarget:@"PLACECARD_PHOTO_VIEWER_GALLERY"];
}

- (void)placePhotoSectionController:(id)a3 requestsToOpenPhotoAttribution:(id)a4 presentationOptions:(id)a5
{
  v13 = a5;
  v7 = a4;
  v8 = [v13 presentingViewController];

  if (!v8)
  {
    [v13 setPresentingViewController:self];
  }

  v9 = [(MUPlaceViewController *)self mapItem];
  v10 = [v7 providerID];
  v11 = [v7 attributionURLs];
  v12 = [v13 presentingViewController];
  [(MUPlaceViewController *)self _presentStoreProductScreenWithMapItem:v9 attribution:v7 bundleIdentifier:v10 attributionURLs:v11 presentingViewController:v12];
}

- (void)_openThumbnailGalleryWithStartingIndex:(unint64_t)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v13 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v13 placeViewControllerDidSelectSeeMorePhotos:self withStartingIndex:a3];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = MEMORY[0x1E696F270];
    v9 = [(MUPlaceViewController *)self mapItem];
    v16[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v14 = *MEMORY[0x1E696F088];
    v15 = MEMORY[0x1E695E118];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v8 openMapsWithItems:v10 launchOptions:v11 completionHandler:0];

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (void)_didTapOnSearchCategory:(id)a3
{
  v7 = a3;
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewController:self didSelectSearchCategory:v7];
  }
}

- (void)pictureItemSectionController:(id)a3 requestsSceneActivationWithPhotoGallery:(id)a4
{
  v8 = a4;
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v7 placeViewController:self didRequestSceneActivationForPhotoGalleryViewController:v8];
  }
}

- (void)_didSelectCreateCustomRouteWithOriginMapItem:(id)a3
{
  v7 = a3;
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidTapHikingTip:self originMapItem:v7];
  }
}

- (void)_didSelectSimulateLocation
{
  v3 = [MEMORY[0x1E69A2398] sharedPlatform];
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    v5 = [(MUPlaceViewController *)self mapItem];
    [v5 _coordinate];
    v7 = v6;
    v9 = v8;

    if (fabs(v9) <= 180.0 && v7 >= -90.0 && v7 <= 90.0)
    {
      if ([MEMORY[0x1E69A1E80] isLocationShiftRequiredForCoordinate:{v7, v9}])
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      v11 = objc_alloc(MEMORY[0x1E6985C40]);
      v19 = 0;
      v20 = v7;
      v21 = v9;
      v22 = 0x4014000000000000;
      v23 = 0u;
      v24 = 0u;
      __asm { FMOV            V0.2D, #-1.0 }

      v25 = _Q0;
      v26 = 0;
      v27 = 0;
      v28 = 0x100000000;
      v29 = v7;
      v30 = v9;
      v31 = 0;
      v32 = 0;
      v33 = v10;
      v34 = v10;
      v36 = 0;
      v35 = 0;
      v17 = [v11 initWithClientLocation:&v19];
      v18 = objc_alloc_init(MEMORY[0x1E695FC40]);
      [v18 setLocationRepeatBehavior:1];
      [v18 clearSimulatedLocations];
      [v18 appendSimulatedLocation:v17];
      [v18 startLocationSimulation];
    }
  }
}

- (void)placeCardActionControllerDidRequestCopy:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidRequestCopy:self];
  }
}

- (void)placeCardActionControllerDidSelectOfflineManagement:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectOfflineManagement:self];
  }
}

- (void)placeCardActionControllerDidSelectPauseOfflineDownload:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectPauseOfflineDownload:self];
  }
}

- (void)placeCardActionControllerDidSelectReportAProblemViewReport:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectRAPViewReport:self];
  }
}

- (void)_didSelectRemoveMarkedLocation
{
  v3 = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v5 placeViewControllerDidSelectRemoveMarker:self];
  }
}

- (void)placeActionManager:(id)a3 didSelectAddToExistingContactWithEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 sourceView];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__MUPlaceViewController_placeActionManager_didSelectAddToExistingContactWithEnvironment___block_invoke;
  aBlock[3] = &unk_1E8218520;
  objc_copyWeak(&v20, &location);
  v9 = v8;
  v18 = v9;
  v10 = v7;
  v19 = v10;
  v11 = _Block_copy(aBlock);
  lockScreenCoordinator = self->_lockScreenCoordinator;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__MUPlaceViewController_placeActionManager_didSelectAddToExistingContactWithEnvironment___block_invoke_2;
  v14[3] = &unk_1E8218608;
  objc_copyWeak(&v16, &location);
  v13 = v11;
  v15 = v13;
  [(MULockScreenCoordinator *)lockScreenCoordinator performActionIfSuccessfullyAuthenticated:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __89__MUPlaceViewController_placeActionManager_didSelectAddToExistingContactWithEnvironment___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x1E695D120]);
    [v3 setDelegate:v14];
    v4 = [v14 contactStore];
    if ([v4 hasContactAccess])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [v3 setMode:v5];

    v6 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    [v3 setPredicateForSelectionOfContact:v6];

    [v3 setModalPresentationStyle:2];
    v7 = [MEMORY[0x1E696F3B8] sharedInstance];
    v8 = [v7 userInterfaceIdiom];

    if (v8)
    {
      [v3 setModalPresentationStyle:7];
      v9 = [v3 popoverPresentationController];
      v10 = *(a1 + 32);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v12 = *(a1 + 32);
      if (isKindOfClass)
      {
        [v9 setSourceItem:*(a1 + 32)];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setSourceView:*(a1 + 32)];
          [*(a1 + 32) bounds];
          [v9 setSourceRect:?];
        }
      }

      [v9 setPermittedArrowDirections:15];
    }

    [v3 setAutocloses:0];
    [v14 _presentModalViewController:v3 withEnvironment:*(a1 + 40)];
    v13 = [v14 contact];
    [v3 scrollToClosestContactMatching:v13];

    WeakRetained = v14;
  }
}

void __89__MUPlaceViewController_placeActionManager_didSelectAddToExistingContactWithEnvironment___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)placeCardActionControllerDidSelectAddPhoto:(id)a3 presentingViewController:(id)a4 sourceView:(id)a5
{
  v9 = a5;
  v7 = a4;
  v8 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v8 setSourceView:v9];
  [(MUPresentationOptions *)v8 setPresentingViewController:v7];

  if ([v9 conformsToProtocol:&unk_1F4539980])
  {
    [(MUPresentationOptions *)v8 setProgressObserver:v9];
  }

  [(MUPlaceViewController *)self presentAddPhotosWithPresentationOptions:v8 entryPoint:0 originTarget:0];
}

- (void)placeCardActionControllerDidSelectChangeAddress:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectChangeAddress:self];
  }
}

- (void)placeCardActionControllerDidSelectRefineLocation:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectRefineLocation:self];
  }
}

- (void)placeCardActionControllerDidSelectRemoveFromMapsHome:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectRemoveShortcut:self];
  }
}

- (void)placeCardActionControllerDidSelectAddToMapsHome:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidSelectAddShortcut:self];
  }
}

- (void)_presentAddNewContactPickerForContact:(id)a3 withEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695D148] viewControllerForNewContact:v6];
  [v8 setDisplayMode:1];
  [v8 setDelegate:self];
  objc_storeStrong(&self->_creatingContactController, v8);
  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  v10 = [MEMORY[0x1E696F3B8] sharedInstance];
  if (![v10 userInterfaceIdiom])
  {
LABEL_8:

    goto LABEL_9;
  }

  IsMacCatalyst = MapKitIdiomIsMacCatalyst();

  if ((IsMacCatalyst & 1) == 0)
  {
    [v9 setModalPresentationStyle:7];
    v10 = [v9 popoverPresentationController];
    v12 = [v7 sourceView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 setSourceItem:v12];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 setSourceView:v12];
        [v12 bounds];
        [v10 setSourceRect:?];
      }
    }

    [v10 setPermittedArrowDirections:15];

    goto LABEL_8;
  }

LABEL_9:
  if (MapKitIdiomIsMacCatalyst() && ([(MUPlaceViewController *)self placeViewControllerDelegate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_respondsToSelector(), v13, (v14 & 1) != 0))
  {
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__MUPlaceViewController__presentAddNewContactPickerForContact_withEnvironment___block_invoke;
    v15[3] = &unk_1E8219F48;
    objc_copyWeak(&v17, &location);
    v16 = v9;
    [(MUPlaceViewController *)self dismissViewControllerAnimated:1 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    [(MUPlaceViewController *)self _presentModalViewController:v9 withEnvironment:v7];
  }
}

void __79__MUPlaceViewController__presentAddNewContactPickerForContact_withEnvironment___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained mapsAppDelegate];
    [v3 placeViewControllerPresentContactsController:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)placeActionManager:(id)a3 didSelectAddToContactsUsingEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MUPlaceViewController *)self mapsAppDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v10 placeViewControllerDidSelectAddToContacts:self];
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__MUPlaceViewController_placeActionManager_didSelectAddToContactsUsingEnvironment___block_invoke;
    aBlock[3] = &unk_1E8219F48;
    objc_copyWeak(&v18, &location);
    v17 = v7;
    v11 = _Block_copy(aBlock);
    lockScreenCoordinator = self->_lockScreenCoordinator;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__MUPlaceViewController_placeActionManager_didSelectAddToContactsUsingEnvironment___block_invoke_4;
    v14[3] = &unk_1E821B860;
    v13 = v11;
    v15 = v13;
    [(MULockScreenCoordinator *)lockScreenCoordinator performActionIfSuccessfullyAuthenticated:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __83__MUPlaceViewController_placeActionManager_didSelectAddToContactsUsingEnvironment___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained contact];
    v5 = [v3 contactStore];
    v6 = [v5 hasContactAccess];

    v7 = [v3 contactStore];
    if (v6)
    {
      v8 = [v4 identifier];
      v9 = MEMORY[0x1E69E96A0];
      v10 = MEMORY[0x1E69E96A0];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __83__MUPlaceViewController_placeActionManager_didSelectAddToContactsUsingEnvironment___block_invoke_2;
      v18[3] = &unk_1E82185B8;
      v11 = &v21;
      objc_copyWeak(&v21, (a1 + 40));
      v19 = v4;
      v20 = *(a1 + 32);
      [v7 fetchUnifiedContactForIdentifier:v8 callbackQueue:v9 completion:v18];
      v12 = &v19;

      v7 = v20;
    }

    else
    {
      v13 = MEMORY[0x1E69E96A0];
      v14 = MEMORY[0x1E69E96A0];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __83__MUPlaceViewController_placeActionManager_didSelectAddToContactsUsingEnvironment___block_invoke_3;
      v15[3] = &unk_1E82185E0;
      v11 = &v17;
      objc_copyWeak(&v17, (a1 + 40));
      v16 = *(a1 + 32);
      [v7 removeMapsDataFromContact:v4 callbackQueue:v13 completion:v15];
      v12 = &v16;
    }

    objc_destroyWeak(v11);
  }
}

void __83__MUPlaceViewController_placeActionManager_didSelectAddToContactsUsingEnvironment___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 155, a2);
    if (v6 && [v6 code] == 200)
    {
      v9 = [*(a1 + 32) copy];
      v10 = v8[155];
      v8[155] = v9;
    }

    [v8 _presentAddNewContactPickerForContact:*(a1 + 32) withEnvironment:*(a1 + 40)];
  }
}

void __83__MUPlaceViewController_placeActionManager_didSelectAddToContactsUsingEnvironment___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _presentAddNewContactPickerForContact:v5 withEnvironment:*(a1 + 32)];
  }
}

- (BOOL)_presentOfflineAlertIfNecessaryForUGC:(int64_t)a3
{
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(MUPlaceViewController *)self mapsAppDelegate];
  v8 = [v7 placeViewController:self presentOfflineAlertIfNecessaryForUGC:a3];

  return v8;
}

- (void)placeActionManager:(id)a3 didSelectAddToFavoritesGuideWithEnvironment:(id)a4
{
  if (![(MUPlaceViewController *)self _presentOfflineAlertIfNecessaryForUGC:4, a4])
  {
    v5 = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(MUPlaceViewController *)self mapsAppDelegate];
      [v7 placeViewControllerDidSelectAddOrRemoveFromFavoritesGuide:self];
    }
  }
}

- (void)placeActionManager:(id)a3 didSelectRateWithEnvironment:(id)a4
{
  if (![(MUPlaceViewController *)self _presentOfflineAlertIfNecessaryForUGC:5, a4])
  {
    v5 = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v8 = [(MUPlaceViewController *)self mapsAppDelegate];
      v7 = objc_opt_new();
      [v8 placeViewController:self didSelectAddRatingsWithPresentationOptions:v7 overallState:0 originTarget:0];
    }
  }
}

- (void)_didSelectAddOrEditNote
{
  v3 = [(MUPlaceViewController *)self libraryAccessProvider];

  if (v3)
  {
    v4 = [(MUPlaceViewController *)self mapsAppDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v9 = [(MUPlaceViewController *)self mapsAppDelegate];
      v6 = [(MUPlaceViewController *)self libraryAccessProvider];
      v7 = [v6 placeNote];
      v8 = [(MUPlaceViewController *)self libraryAccessProvider];
      [v9 placeViewController:self didRequestEditingNoteWithInitialText:v7 libraryAccessProvider:v8 completion:&__block_literal_global_383];
    }
  }
}

- (void)placeActionManager:(id)a3 didSelectAddToGuidesWithEnvironment:(id)a4
{
  v8 = a4;
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v7 placeViewController:self didSelectAddToCollectionWithPlaceActionEnvironment:v8 showsAddToLibrarySection:0];
  }
}

- (void)placeActionManager:(id)a3 didSelectDirectionsWithEnvironment:(id)a4
{
  v7 = [a4 analyticsModuleMetadata];
  if ([v7 type] == 40)
  {
    [(MUPlaceViewController *)self placeEnrichmentSectionController];
  }

  else
  {
    [(MUPlaceViewController *)self placeInfoSectionController];
  }
  v5 = ;
  v6 = objc_opt_new();
  [(MUPlaceViewController *)self _placeSectionController:v5 didSelectPrimaryType:1 withPresentationOptions:v6];
}

- (void)placeCardActionControllerDidSelectPlaceEnrichementReportAProblem
{
  v3 = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v5 placeViewControllerDidSelectPlaceEnrichmentRAP:self];
  }
}

- (void)_showShareSheetNoDeviceLockCheckWithEnvironment:(id)a3
{
  objc_storeStrong(&self->_currentEnvironmentForPresentedViewController, a3);
  v5 = a3;
  v10 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v10 setPresentingViewController:self];
  v6 = [v5 sourceView];
  [(MUPresentationOptions *)v10 setSourceView:v6];

  v7 = [v5 sourceItem];
  [(MUPresentationOptions *)v10 setSourceItem:v7];

  v8 = [[MUShareSheetPresenter alloc] initWithPlaceItem:self->_placeItem presentationOptions:v10];
  shareSheetPresenter = self->_shareSheetPresenter;
  self->_shareSheetPresenter = v8;

  [(MUShareSheetPresenter *)self->_shareSheetPresenter setDelegate:self];
  [(MUShareSheetPresenter *)self->_shareSheetPresenter present];
}

- (void)_showShareSheetWithEnvironment:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  lockScreenCoordinator = self->_lockScreenCoordinator;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MUPlaceViewController__showShareSheetWithEnvironment___block_invoke;
  v7[3] = &unk_1E8219F48;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(MULockScreenCoordinator *)lockScreenCoordinator performActionIfSuccessfullyAuthenticated:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__MUPlaceViewController__showShareSheetWithEnvironment___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _showShareSheetNoDeviceLockCheckWithEnvironment:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_openDirections
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_INFO, "Opening directions", buf, 2u);
  }

  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
    [v6 placeViewController:self didSelectRouteToCurrentSearchResultWithTransportTypePreference:v7];
LABEL_15:

    goto LABEL_16;
  }

  v8 = [(MUPlaceViewController *)self placeViewControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v6 = [(MUPlaceViewController *)self placeViewControllerDelegate];
    [v6 placeViewControllerDidSelectDirectionsToAddress:self];
LABEL_16:

    goto LABEL_17;
  }

  v10 = [(MUPlaceViewController *)self mapItem];

  if (v10)
  {
    IsEnabled_DefaultNavigation1PEnabled = MapsFeature_IsEnabled_DefaultNavigation1PEnabled();
    options = self->_options;
    v13 = IsEnabled_DefaultNavigation1PEnabled & ((options & 0x2000000000000) != 0);
    if ((options & 0x100000000) != 0)
    {
      v17 = [(MUPlaceViewController *)self mapItem];
      v27[0] = v17;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];

      v18 = *MEMORY[0x1E696F0C0];
      v25[0] = *MEMORY[0x1E696F4C8];
      v25[1] = v18;
      v26[0] = MEMORY[0x1E695E118];
      v26[1] = &unk_1F450D9A0;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __40__MUPlaceViewController__openDirections__block_invoke;
      aBlock[3] = &unk_1E821A1F0;
      aBlock[4] = self;
      v16 = _Block_copy(aBlock);
    }

    else
    {
      v14 = [MEMORY[0x1E696F270] mapItemForCurrentLocation];
      v24[0] = v14;
      v15 = [(MUPlaceViewController *)self mapItem];
      v24[1] = v15;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

      v22 = *MEMORY[0x1E696F080];
      v23 = *MEMORY[0x1E696F078];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = &__block_literal_global_369;
    }

    if (v13)
    {
      [MEMORY[0x1E696F270] _openDefaultNavigationWithItems:v6 launchOptions:v7 fromScene:0 completionHandler:v16];
    }

    else
    {
      [MEMORY[0x1E696F270] openMapsWithItems:v6 launchOptions:v7 completionHandler:v16];
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = *MEMORY[0x1E69E9840];
}

void __40__MUPlaceViewController__openDirections__block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MUGetPlaceCardLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) mapItem];
      v7 = [v6 name];
      v10 = 138412290;
      v11 = v7;
      v8 = "Successfully launched Maps in SAR mode for mapItem: %@";
LABEL_6:
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_DEBUG, v8, &v10, 0xCu);
    }
  }

  else if (v5)
  {
    v6 = [*(a1 + 32) mapItem];
    v7 = [v6 name];
    v10 = 138412290;
    v11 = v7;
    v8 = "Failed to launched Maps in SAR mode for mapItem: %@";
    goto LABEL_6;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_placeSectionController:(id)a3 didSelectPrimaryType:(unint64_t)a4 withPresentationOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 sourceView];
  if ([v9 isForActionBarMoreMenu])
  {
    v11 = @"SECONDARY";
  }

  else
  {
    v12 = [v9 isForActionBar];
    v11 = @"PRIMARY";
    if (!v12)
    {
      v11 = 0;
    }
  }

  v13 = v11;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v17 = objc_alloc_init(MEMORY[0x1E696F2F8]);
      [v17 setSourceView:v10];
      v18 = [v8 analyticsModuleForAction:0 presentationOptions:v9];
      [v17 setAnalyticsModuleMetadata:v18];

      v19 = [(MUPlaceViewController *)self mapsAppDelegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        objc_initWeak(&location, self);
        v21 = [(MUPlaceViewController *)self mapsAppDelegate];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __94__MUPlaceViewController__placeSectionController_didSelectPrimaryType_withPresentationOptions___block_invoke;
        v22[3] = &unk_1E8218570;
        objc_copyWeak(&v24, &location);
        v23 = v17;
        [v21 placeViewController:self didSelectShareCurrentLocationWithCompletion:v22];

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      else
      {
        [(MUPlaceViewController *)self _showShareSheetWithEnvironment:v17];
      }
    }

    else if (a4 == 4)
    {
      v14 = v8;
      v15 = 6097;
      goto LABEL_12;
    }
  }

  else
  {
    if (a4 == 1)
    {
      v14 = v8;
      v15 = 6003;
      v16 = 12;
      goto LABEL_14;
    }

    if (a4 == 2)
    {
      v14 = v8;
      v15 = 3001;
LABEL_12:
      v16 = 0;
LABEL_14:
      [v14 captureInfoCardAction:v15 eventValue:0 feedbackType:v16 presentationOptions:v9 classification:v13];
      [(MUPlaceViewController *)self _openDirections];
    }
  }
}

void __94__MUPlaceViewController__placeSectionController_didSelectPrimaryType_withPresentationOptions___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      [WeakRetained _showShareSheetWithEnvironment:*(a1 + 32)];
      WeakRetained = v4;
    }
  }
}

- (void)updateAddNoteActionState
{
  v3 = [(MUPlaceViewController *)self libraryAccessProvider];
  if (v3 && (v4 = v3, -[MUPlaceViewController libraryAccessProvider](self, "libraryAccessProvider"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 savedStateOfPlace], v5, v4, v6))
  {
    v7 = [(MUPlaceViewController *)self libraryAccessProvider];
    v8 = [v7 placeNote];
    if ([v8 length])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [(MUPlaceActionManager *)self->_actionManager setPlaceHasNote:v9];

    v10 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v11 = [v10 configuration];
    v12 = [v11 placeNote];
    v13 = [(MUPlaceViewController *)self libraryAccessProvider];
    v14 = [v13 placeNote];

    if (v12 != v14)
    {
      v15 = [(MUPlaceViewController *)self libraryAccessProvider];
      v16 = [v15 placeNote];
      v17 = [(MUPlaceViewController *)self webPlacecardSectionController];
      v18 = [v17 configuration];
      [v18 setPlaceNote:v16];

      v20 = [(MUPlaceViewController *)self webPlacecardSectionController];
      [v20 updateUserData];
    }
  }

  else
  {
    actionManager = self->_actionManager;

    [(MUPlaceActionManager *)actionManager setPlaceHasNote:0];
  }
}

- (void)updateAddToLibraryActionState
{
  v3 = [(MUPlaceViewController *)self libraryAccessProvider];
  if (v3)
  {
    v4 = v3;
    v5 = [(MUPlaceViewController *)self libraryAccessProvider];
    v6 = [v5 savedStateOfPlace];

    if (v6)
    {
      v7 = [(MUPlaceViewController *)self libraryAccessProvider];
      if ([v7 savedStateOfPlace] == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [(MUPlaceActionManager *)self->_actionManager setPlaceInLibrary:v8];

      v27 = [(MUPlaceViewController *)self webPlacecardGuides];
      v9 = [(MUPlaceViewController *)self webPlacecardSectionController];
      v10 = [v9 configuration];
      v11 = [v10 userGuides];
      v12 = [v11 isEqualToArray:v27];

      if ((v12 & 1) == 0)
      {
        v13 = [(MUPlaceViewController *)self webPlacecardGuides];
        v14 = [(MUPlaceViewController *)self webPlacecardSectionController];
        v15 = [v14 configuration];
        [v15 setUserGuides:v13];
      }

      v16 = [(MUPlaceViewController *)self webPlacecardSectionController];
      v17 = [v16 configuration];
      v18 = [v17 libraryPlaceSavedState];
      v19 = [(MUPlaceViewController *)self libraryAccessProvider];
      v20 = [v19 savedStateOfPlace];

      if (v18 == v20)
      {
        if (v12)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v22 = [(MUPlaceViewController *)self libraryAccessProvider];
        v23 = [v22 savedStateOfPlace];
        v24 = [(MUPlaceViewController *)self webPlacecardSectionController];
        v25 = [v24 configuration];
        [v25 setLibraryPlaceSavedState:v23];
      }

      v26 = [(MUPlaceViewController *)self webPlacecardSectionController];
      [v26 updateUserData];

LABEL_16:

      return;
    }
  }

  actionManager = self->_actionManager;

  [(MUPlaceActionManager *)actionManager setPlaceInLibrary:0];
}

- (void)setPlaceInShortcuts:(BOOL)a3
{
  v3 = a3;
  self->_placeInShortcuts = a3;
  [(MUPlaceActionManager *)self->_actionManager setPlaceInShortcuts:?];
  if (self->_placeInShortcuts == v3)
  {
    return;
  }

  v5 = [(MUPlaceViewController *)self webPlacecardSectionController];
  v6 = [v5 configuration];
  if (v6)
  {
  }

  else
  {
    flexiblePlacecardConfig = self->_flexiblePlacecardConfig;

    if (!flexiblePlacecardConfig)
    {
      v16 = objc_alloc_init(_TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration);
      [(MUWebBasedPlacecardSectionControllerConfiguration *)v16 setPlaceInShortcuts:self->_placeInShortcuts];
      v17 = [(MUPlaceViewController *)self libraryAccessProvider];
      -[MUWebBasedPlacecardSectionControllerConfiguration setLibraryPlaceSavedState:](v16, "setLibraryPlaceSavedState:", [v17 savedStateOfPlace]);

      v15 = self->_flexiblePlacecardConfig;
      self->_flexiblePlacecardConfig = v16;
      goto LABEL_6;
    }
  }

  placeInShortcuts = self->_placeInShortcuts;
  v9 = [(MUPlaceViewController *)self webPlacecardSectionController];
  v10 = [v9 configuration];
  [v10 setPlaceInShortcuts:placeInShortcuts];

  v11 = [(MUPlaceViewController *)self libraryAccessProvider];
  v12 = [v11 savedStateOfPlace];
  v13 = [(MUPlaceViewController *)self webPlacecardSectionController];
  v14 = [v13 configuration];
  [v14 setLibraryPlaceSavedState:v12];

  v18 = [(MUPlaceViewController *)self webPlacecardSectionController];
  [(MUWebBasedPlacecardSectionControllerConfiguration *)v18 updateUserData];
  v15 = v18;
LABEL_6:
}

- (void)setCyclingOptions:(id)a3
{
  v5 = a3;
  if (self->_cyclingOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cyclingOptions, a3);
    [(MKETAProvider *)self->_etaProvider setCyclingOptions:self->_cyclingOptions];
    v5 = v6;
  }
}

- (void)setTransitOptions:(id)a3
{
  v5 = a3;
  if (self->_transitOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_transitOptions, a3);
    [(MKETAProvider *)self->_etaProvider setTransitOptions:self->_transitOptions];
    v5 = v6;
  }
}

- (void)setWalkingOptions:(id)a3
{
  v5 = a3;
  if (self->_walkingOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_walkingOptions, a3);
    [(MKETAProvider *)self->_etaProvider setWalkingOptions:self->_walkingOptions];
    v5 = v6;
  }
}

- (void)setAutomobileOptions:(id)a3
{
  v5 = a3;
  if (self->_automobileOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_automobileOptions, a3);
    [(MKETAProvider *)self->_etaProvider setAutomobileOptions:self->_automobileOptions];
    v5 = v6;
  }
}

- (id)generateUnactionableUIElementsForAnalytics
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_sectionControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&unk_1F4522210, v13}])
        {
          v10 = [v9 infoCardChildUnactionableUIElements];
          if ([v10 count])
          {
            [v3 addObjectsFromArray:v10];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)generateAvailableActionForAnalytics
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_sectionControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&unk_1F4522210, v13}])
        {
          v10 = [v9 infoCardChildPossibleActions];
          if ([v10 count])
          {
            [v3 addObjectsFromArray:v10];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int)getPlaceCardTypeForAnalytics
{
  v3 = [MUPlaceDataAvailability alloc];
  v4 = [(MUPlaceViewController *)self mapItem];
  v5 = [(MUPlaceDataAvailability *)v3 initWithMapItem:v4 options:self->_options];

  v6 = [(MUPlaceViewController *)self placeItem];
  v7 = [v6 mapItem];
  v8 = [v7 _hasFlyover];

  if (v8)
  {
    v9 = 9;
  }

  else
  {
    v10 = [(MUPlaceViewController *)self headerButtonsSectionController];
    v11 = [v10 primaryButtonType];

    if (v11 == 2)
    {
      v9 = 10;
    }

    else
    {
      v12 = [v6 mapItem];
      v13 = [v12 _hasTransit];

      if (v13)
      {
        v9 = 7;
      }

      else if ([v6 options])
      {
        v9 = 5;
      }

      else if (([v6 options] & 2) != 0)
      {
        v9 = 3;
      }

      else
      {
        v14 = [v6 mapItem];
        v15 = [v14 _isMapItemTypeBrand];

        if (v15)
        {
          v9 = 11;
        }

        else
        {
          v16 = [(MUPlaceDataAvailability *)v5 supportsBrowseCategory];
          v17 = [v6 mapItem];
          v18 = v17;
          if (v16)
          {
            v9 = [v17 _browseCategory_placeCardType];
          }

          else if ([v17 _hasMUID])
          {
            v9 = 2;
          }

          else
          {
            v9 = 1;
          }
        }
      }
    }
  }

  return v9;
}

- (BOOL)placeSectionControllerShouldLayoutSubviews:(id)a3
{
  v4 = [(MUPlaceViewController *)self traitCollection];
  if ([v4 userInterfaceIdiom] == 5)
  {
    v5 = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      LOBYTE(v7) = 1;
      return v7;
    }

    v4 = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = [v4 placeViewControllerIsAnimatingDismissal:self] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)placeSectionControllerRequestsLayoutChange:(id)a3
{
  [(MUPlaceViewController *)self updatePreferredContentSize];
  v4 = [(MUPlaceViewController *)self placeViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self placeViewControllerDelegate];
    [v6 placeViewControllerDidUpdateHeight:self];
  }
}

- (void)_applyCustomSpacings
{
  if (MapKitIdiomIsMacCatalyst())
  {
    v7 = [(MUPlaceViewController *)self headerSectionController];
    v3 = [(MUPlaceViewController *)self actionRowSectionController];
    if (v7)
    {
      if (v3)
      {
        v4 = [(NSArray *)self->_sectionControllers indexOfObject:v7];
        if (v4 + 1 == [(NSArray *)self->_sectionControllers indexOfObject:v3])
        {
          contentStackView = self->_contentStackView;
          v6 = [v7 sectionView];
          [(MUContentStackViewProtocol *)contentStackView setCustomSpacing:v6 afterView:8.0];
        }
      }
    }
  }
}

- (void)placeSectionControllerDidUpdateContent:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = MUGetPlaceCardLog();
  v6 = v5;
  initialAppearanceSignpostID = self->_initialAppearanceSignpostID;
  if (initialAppearanceSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v6, OS_SIGNPOST_INTERVAL_BEGIN, initialAppearanceSignpostID, "PlacecardUpdateContent", "", buf, 2u);
  }

  v8 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138412546;
    v34 = v4;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_INFO, "%@ of type %@ requests update", buf, 0x16u);
  }

  v27 = v4;

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_sectionControllers;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        if ([v17 hasContent])
        {
          v18 = [v17 sectionViews];
          v19 = [v18 count];

          if (v19)
          {
            v20 = [v17 sectionViews];
            [v11 addObjectsFromArray:v20];
          }
        }
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  contentStackView = self->_contentStackView;
  v22 = [v11 copy];
  [(MUContentStackViewProtocol *)contentStackView setArrangedSubviews:v22];

  [(MUPlaceViewController *)self _applyCustomSpacings];
  [(MUPlaceViewController *)self showContentIfLoaded];
  v23 = MUGetPlaceCardLog();
  v24 = v23;
  v25 = self->_initialAppearanceSignpostID;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PlacecardUpdateContent", "", buf, 2u);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_launchAttribution:(id)a3 withMapItem:(id)a4
{
  v5 = a3;
  v7 = [v5 attributionURLs];
  v6 = [(MUPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
  [(MUPlaceViewController *)self _launchAttributionURLs:v7 withAttribution:v5 completionHandler:v6];
}

- (void)placeDescriptionSectionControllerDidTapAttribution:(id)a3
{
  v5 = [(MUPlaceViewController *)self mapItem];
  v4 = [v5 _encyclopedicInfoAttribution];
  [(MUPlaceViewController *)self _launchAttribution:v4 withMapItem:v5];
}

- (void)_showEditSheet:(id)a3
{
  v10 = [(MUPlaceViewController *)self _contactForEditOperations];
  v4 = [MEMORY[0x1E695D148] viewControllerForContact:v10];
  [(CNContactViewController *)v4 setEditMode:2];
  [(CNContactViewController *)v4 setActions:[(CNContactViewController *)v4 actions]| 0x100];
  [(CNContactViewController *)v4 setDisplayMode:1];
  [(CNContactViewController *)v4 setDelegate:self];
  editingContactController = self->_editingContactController;
  self->_editingContactController = v4;
  v6 = v4;

  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [v7 setModalPresentationStyle:2];
  v8 = objc_alloc_init(MEMORY[0x1E696F2F8]);
  v9 = [MEMORY[0x1E69A1B10] moduleFromModuleType:1];

  [v8 setAnalyticsModuleMetadata:v9];
  [(MUPlaceViewController *)self _presentModalViewController:v7 withEnvironment:v8];
}

- (UIImage)userIcon
{
  v3 = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = [v5 placeViewControllerUserIcon:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)webPlacecardGuides
{
  v3 = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = [v5 placeViewController:self webPlacecardGuidesForPlaceItem:self->_placeItem];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)collectionIdentifierSelected:(id)a3
{
  v7 = a3;
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewController:self selectCollectionIdentifier:v7];
  }
}

- (id)collectionViews
{
  v3 = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = [v5 placeViewController:self collectionViewsForPlaceItem:self->_placeItem];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (void)showAllCollections:(id)a3 usingTitle:(id)a4 usingCollectionIds:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MUPlaceViewController *)self mapsAppDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    objc_initWeak(&location, self);
    lockScreenCoordinator = self->_lockScreenCoordinator;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__MUPlaceViewController_showAllCollections_usingTitle_usingCollectionIds___block_invoke;
    v14[3] = &unk_1E8218548;
    objc_copyWeak(&v18, &location);
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    [(MULockScreenCoordinator *)lockScreenCoordinator performActionIfSuccessfullyAuthenticated:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __74__MUPlaceViewController_showAllCollections_usingTitle_usingCollectionIds___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained mapsAppDelegate];
    [v3 placeViewController:*(a1 + 32) seeAllCollections:*(a1 + 40) usingTitle:*(a1 + 48) usingCollectionIds:*(a1 + 56)];

    WeakRetained = v4;
  }
}

- (void)_openExploreGuidesWithGuideLocation:(id)a3
{
  v4 = a3;
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    lockScreenCoordinator = self->_lockScreenCoordinator;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__MUPlaceViewController__openExploreGuidesWithGuideLocation___block_invoke;
    v8[3] = &unk_1E8219F48;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [(MULockScreenCoordinator *)lockScreenCoordinator performActionIfSuccessfullyAuthenticated:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __61__MUPlaceViewController__openExploreGuidesWithGuideLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained mapsAppDelegate];
    [v3 placeViewController:v4 selectExploreGuidesWithGuideLocation:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)routeToGuidesHomeFromExploreGuides:(id)a3
{
  v4 = [a3 guideLocation];
  [(MUPlaceViewController *)self _openExploreGuidesWithGuideLocation:v4];
}

- (void)routeToCuratedCollection:(id)a3
{
  v4 = a3;
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    lockScreenCoordinator = self->_lockScreenCoordinator;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__MUPlaceViewController_routeToCuratedCollection___block_invoke;
    v8[3] = &unk_1E8218520;
    objc_copyWeak(&v10, &location);
    v8[4] = self;
    v9 = v4;
    [(MULockScreenCoordinator *)lockScreenCoordinator performActionIfSuccessfullyAuthenticated:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __50__MUPlaceViewController_routeToCuratedCollection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained mapsAppDelegate];
    [v3 placeViewController:*(a1 + 32) selectCuratedCollection:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)_scrollToImpressionsFrame:(id)a3
{
  v14 = a3;
  v4 = [(MUPlaceViewController *)self scrollView];
  v5 = [v4 isScrollEnabled];

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(MUPlaceViewController *)self mapsAppDelegate];
      [v8 placeViewController:self expandCardAnimated:1];
    }

    [v14 impressionsFrame];
    v10 = v9;
    v12 = v11;
    contentStackView = self->_contentStackView;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MUContentStackViewProtocol *)self->_contentStackView _mapsui_scrollToContentOffset:1 animated:v10, v12 + -120.0];
    }
  }
}

- (void)ribbonSectionControllerDidTapHours:(id)a3
{
  v6 = [(MUPlaceViewController *)self placeInfoSectionController];
  v4 = [v6 hoursConfig];

  v5 = v6;
  if (v6 && v4)
  {
    [(MUPlaceViewController *)self _scrollToImpressionsFrame:v6];
    v5 = v6;
  }
}

- (void)ribbonSectionControllerDidTapAddRatings:(id)a3 initialRatingState:(int64_t)a4 withPresentationOptions:(id)a5
{
  v6 = [(MUPlaceViewController *)self inlineRatingsSectionController:a3];
  if (v6 || ([(MUPlaceViewController *)self ratingsAndReviewsSectionController], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [(MUPlaceViewController *)self _scrollToImpressionsFrame:v6];
  }
}

- (void)_didRequestSceneActivationForPhotoGalleryViewController:(id)a3
{
  v7 = a3;
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewController:self didRequestSceneActivationForPhotoGalleryViewController:v7];
  }
}

- (void)_didSelectPhotoCategoryAtIndex:(unint64_t)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v15 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v15 placeViewController:self didSelectPhotoCategoryAtIndex:a3];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = MEMORY[0x1E696F270];
    v9 = [(MUPlaceViewController *)self mapItem];
    v18[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v11 = *MEMORY[0x1E696F0B0];
    v16[0] = *MEMORY[0x1E696F088];
    v16[1] = v11;
    v17[0] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [v8 openMapsWithItems:v10 launchOptions:v13 completionHandler:0];

    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)placePhotoSectionController:(id)a3 didSelectPhotoToReport:(id)a4 withPhotoGalleryViewController:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(MUPlaceViewController *)self mapsAppDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v10 placeViewController:self didSelectPhotoToReport:v11 withPhotoGalleryViewController:v7];
  }
}

- (void)placePhotoSectionControllerDidCloseFullscreenPhotos:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidCloseFullscreenPhotos:self];
  }
}

- (void)placePhotoSectionControllerDidOpenFullscreenPhotos:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v6 placeViewControllerDidOpenFullscreenPhotos:self];
  }
}

- (void)_presentStoreProductScreenWithMapItem:(id)a3 attribution:(id)a4 bundleIdentifier:(id)a5 attributionURLs:(id)a6 presentingViewController:(id)a7
{
  v17 = a5;
  v11 = a6;
  v12 = a7;
  v13 = a4;
  if ([MUPlaceAttributionUtilities shouldPresentStoreProductViewControllerWithAttribution:v13])
  {
    v14 = [v13 appAdamID];
    v15 = [v13 providerID];

    [MUPlaceAttributionUtilities presentStoreProductViewControllerWithAppAdamID:v14 bundleIdentifier:v15 presentingViewController:v12];
    [(MUPlaceCardAnalyticsController *)self->_analyticsController infoCardAnalyticsDidSelectAction:45 target:733 eventValue:v17 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  }

  else
  {
    v16 = [(MUPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
    [(MUPlaceViewController *)self _launchAttributionURLs:v11 withAttribution:v13 completionHandler:v16];
  }
}

- (void)placePhotoSectionController:(id)a3 didSelectViewPhoto:(id)a4 withID:(id)a5 presentingViewController:(id)a6
{
  v14 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(MUPlaceViewController *)self mapItem];
  if ([v9 length])
  {
    v12 = [v14 attribution];
    v13 = [v12 urlsForPhotoWithIdentifier:v9];
    [(MUPlaceViewController *)self _presentStoreProductScreenWithMapItem:v11 attribution:v12 bundleIdentifier:v9 attributionURLs:v13 presentingViewController:v10];
  }

  else
  {
    [(MUPlaceViewController *)self placeCardActionControllerDidSelectViewAllPhotos:0 presentingViewController:v10];
  }
}

- (void)_relatedPlacesShowSeeAllWithTitle:(id)a3 relatedMapItems:(id)a4 originalMapItem:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MUPlaceViewController *)self mapsAppDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v12 placeViewController:self showRelatedMapItems:v8 withTitle:v13 originalMapItem:v9 analyticsDelegate:self->_analyticsController];
  }
}

- (void)_updateContentAlpha
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_sectionControllers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [(MUPlaceViewController *)self headerSectionController];

        if (v8 != v9)
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v10 = [v8 sectionViews];
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v17;
            do
            {
              v14 = 0;
              do
              {
                if (*v17 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v16 + 1) + 8 * v14++) setAlpha:self->_contentAlpha];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v12);
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setContentAlpha:(double)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__MUPlaceViewController_setContentAlpha___block_invoke;
  v4[3] = &unk_1E82191F8;
  v4[4] = self;
  *&v4[5] = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__MUPlaceViewController_setContentAlpha___block_invoke_2;
  v3[3] = &unk_1E82191F8;
  v3[4] = self;
  *&v3[5] = a3;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v4 oldUIBlock:v3];
}

- (double)contentAlpha
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x3FF0000000000000;
  v4[5] = &v6;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__MUPlaceViewController_contentAlpha__block_invoke;
  v5[3] = &unk_1E8219B98;
  v5[4] = self;
  v5[5] = &v6;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__MUPlaceViewController_contentAlpha__block_invoke_2;
  v4[3] = &unk_1E8219B98;
  v4[4] = self;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v5 oldUIBlock:v4];
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

double __37__MUPlaceViewController_contentAlpha__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1072);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __37__MUPlaceViewController_contentAlpha__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1000) contentAlpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)_performWithNewUIBlock:(id)a3 oldUIBlock:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = v6;
  if (!self->_showNewUI)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = v8;
  if (v8)
  {
LABEL_5:
    (*(v6 + 2))();
  }

LABEL_6:
}

- (double)headerSecondaryNameLabelPadding
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MUPlaceViewController_headerSecondaryNameLabelPadding__block_invoke;
  v4[3] = &unk_1E8219B98;
  v4[4] = self;
  v4[5] = &v5;
  [(MUPlaceViewController *)self _performWithNewUIBlock:0 oldUIBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __56__MUPlaceViewController_headerSecondaryNameLabelPadding__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1000) headerSecondaryNameLabelPadding];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MUPlaceViewController_scrollToTopAnimated___block_invoke;
  v5[3] = &unk_1E8219780;
  v5[4] = self;
  v6 = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__MUPlaceViewController_scrollToTopAnimated___block_invoke_2;
  v3[3] = &unk_1E8219780;
  v3[4] = self;
  v4 = a3;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v5 oldUIBlock:v3];
}

uint64_t __45__MUPlaceViewController_scrollToTopAnimated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1008);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v4 = *(*(a1 + 32) + 1008);
    v5 = *(a1 + 40);

    return [v4 _mapsui_scrollToTopAnimated:v5];
  }

  return result;
}

- (void)updateHeaderTitle
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__MUPlaceViewController_updateHeaderTitle__block_invoke;
  v2[3] = &unk_1E821A268;
  v2[4] = self;
  [(MUPlaceViewController *)self _performWithNewUIBlock:0 oldUIBlock:v2];
}

- (double)currentHeight
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[5] = &v6;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__MUPlaceViewController_currentHeight__block_invoke;
  v5[3] = &unk_1E8219B98;
  v5[4] = self;
  v5[5] = &v6;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__MUPlaceViewController_currentHeight__block_invoke_2;
  v4[3] = &unk_1E8219B98;
  v4[4] = self;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v5 oldUIBlock:v4];
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __38__MUPlaceViewController_currentHeight__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1008);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(*(a1 + 32) + 1008);
    [v4 contentSize];
    *(*(*(a1 + 40) + 8) + 24) = v3;
  }
}

uint64_t __38__MUPlaceViewController_currentHeight__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1000) currentHeight];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)setPlaceItem:(id)a3 updateOriginalContact:(BOOL)a4
{
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__MUPlaceViewController_setPlaceItem_updateOriginalContact___block_invoke;
  v11[3] = &unk_1E82184D0;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MUPlaceViewController_setPlaceItem_updateOriginalContact___block_invoke_2;
  v8[3] = &unk_1E82184D0;
  v8[4] = self;
  v9 = v12;
  v10 = a4;
  v7 = v12;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v11 oldUIBlock:v8];
}

- (void)contentAboveTitleScrollPositionChanged:(double)a3
{
  v4 = [(MUPlaceViewController *)self headerSectionController];
  [v4 verifiedBusinessHeaderScrollPositionChanged:a3];
}

- (double)heightForContentAboveTitle
{
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    return self->_flexiblePlacecardHeightForContentAboveTitle;
  }

  v4 = [(MUPlaceViewController *)self headerSectionController];
  [v4 heightForContentAboveTitle];
  v6 = v5;

  return v6;
}

- (void)hideTitle:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__MUPlaceViewController_hideTitle___block_invoke;
  v3[3] = &unk_1E8219780;
  v3[4] = self;
  v4 = a3;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v3 oldUIBlock:0];
}

void __35__MUPlaceViewController_hideTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) headerSectionController];
  [v2 hideTitle:*(a1 + 40)];
}

- (UIScrollView)scrollView
{
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    v3 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v4 = [v3 webContentViewController];
    v5 = [v4 webView];
    v6 = [v5 scrollView];
  }

  else
  {
    contentStackView = self->_contentStackView;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = self->_contentStackView;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)_performShareActionWithPresentationOptions:(id)a3
{
  v4 = a3;
  v6 = [(MUPlaceViewController *)self headerSectionController];
  v5 = [v6 analyticsModuleForAction:0 presentationOptions:v4];
  [(MUPlaceViewController *)self _invokeShareActionWithPresentationOptions:v4 analyticsModuleMetadata:v5];
}

- (void)performShareActionWithPresentationOptions:(id)a3
{
  [(MUPlaceViewController *)self _performShareActionWithPresentationOptions:a3];
  v4 = [(MUPlaceViewController *)self webPlacecardSectionController];
  [v4 handleNativeUITapFor:1];
}

- (void)setVerifiedHeaderExpansionProgress:(double)a3
{
  if (vabdd_f64(self->_verifiedHeaderExpansionProgress, a3) > 2.22044605e-16)
  {
    self->_verifiedHeaderExpansionProgress = a3;
    v4 = [(MUPlaceViewController *)self headerSectionController];
    [v4 setCardExpansionProgress:self->_verifiedHeaderExpansionProgress];

    [(MUPlaceViewController *)self _updatePocketInsets];
  }
}

- (UILayoutGuide)headerViewTitleLabelToTopLayoutGuide
{
  v2 = [(MUPlaceViewController *)self headerSectionController];
  v3 = [v2 headerViewTitleLabelToTopLayoutGuide];

  return v3;
}

- (UIView)viewForHeaderContainmentString
{
  v2 = [(MUPlaceViewController *)self headerSectionController];
  v3 = [v2 viewForContainmentString];

  return v3;
}

- (UIView)draggableHeaderView
{
  v2 = [(MUPlaceViewController *)self headerSectionController];
  v3 = [v2 sectionView];

  return v3;
}

- (id)draggableContent
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_sectionControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 draggableContent];
          if ([v10 count])
          {
            [v3 addObjectsFromArray:v10];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setLibraryAccessProvider:(id)a3
{
  v4 = a3;
  [(MULibraryAccessProviding *)self->_libraryAccessProvider unregisterObserver:self];
  libraryAccessProvider = self->_libraryAccessProvider;
  self->_libraryAccessProvider = v4;
  v6 = v4;

  [(MULibraryAccessProviding *)self->_libraryAccessProvider registerObserver:self];
  v7 = [(MUPlaceViewController *)self notesSectionController];
  [v7 setLibraryAccessProvider:v6];
}

- (void)setOfflineFeatureDiscoveryView:(id)a3
{
  objc_storeStrong(&self->_offlineFeatureDiscoveryView, a3);
  v5 = a3;
  v6 = [(MUPlaceViewController *)self unifiedActionRowSectionController];
  [v6 setOfflineFeatureDiscoveryView:v5];
}

- (void)setOfflineMapProvider:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_offlineMapProvider, v6);
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    [(MUWebBasedPlacecardOfflineMapProvider *)self->_webBasedPlacecardOfflineMapProvider setNativeOfflineMapProvider:v6];
    v4 = [(MUPlaceViewController *)self webPlacecardSectionController];
    [v4 updateDownloadButton];
  }

  v5 = [(MUPlaceViewController *)self unifiedActionRowSectionController];
  [v5 setOfflineMapProvider:v6];
}

- (void)setPlaceNumberOfReportsInReview:(unint64_t)a3
{
  self->_placeNumberOfReportsInReview = a3;
  v5 = [(MUPlaceViewController *)self placeInfoSectionController];
  [v5 setPlaceNumberOfReportsInReview:a3];

  v6 = [(MUPlaceViewController *)self webPlacecardSectionController];
  v7 = [v6 configuration];
  [v7 setNumberOfReportsInReview:a3];

  v8 = [(MUPlaceViewController *)self webPlacecardSectionController];
  [v8 updateUserData];
}

- (void)updatePlaceEnrichment
{
  v2 = [(MUPlaceViewController *)self placeEnrichmentSectionController];
  [v2 refreshPlaceEnrichment];
}

- (void)updatePlaceInfo
{
  v2 = [(MUPlaceViewController *)self placeInfoSectionController];
  [v2 refreshContents];
}

- (void)updateSuggestionView
{
  v2 = [(MUPlaceViewController *)self _firstSectionControllerOfClass:objc_opt_class()];
  [v2 updateSuggestionView];
}

- (void)updateCuratedCollectionsView
{
  v2 = [(MUPlaceViewController *)self curatedGuidesSectionController];
  [v2 refreshCollections];
}

- (void)updateUserSubmissionWithPhotoURL:(id)a3 photoID:(id)a4 numberOfPhotos:(int64_t)a5
{
  v15 = a3;
  v8 = a4;
  v9 = [[MUUserSubmittedPhoto alloc] initWithPhotoURL:v15];
  [(MUUserSubmittedPhoto *)v9 setPhotoID:v8];

  v10 = [(MUPlaceViewController *)self _firstSectionControllerOfClass:objc_opt_class()];
  v11 = [v10 userSubmittedPhoto];
  v12 = v11;
  if (v11 != v9)
  {

LABEL_4:
    if (v15)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    [v10 setUserSubmittedPhoto:v14];
    [v10 setUserInfoProvider:self];
    [v10 setNumberOfUserSubmittedPhotos:a5];
    [v10 updateWithUserSubmittedPhotos:1];
    [(MUPlaceViewController *)self _updateWebPlacecardForPhotoSubmissionWithURL:v15];
    goto LABEL_8;
  }

  v13 = [v10 numberOfUserSubmittedPhotos];

  if (v13 != a5)
  {
    goto LABEL_4;
  }

LABEL_8:
}

- (void)updateViewsWithSubmissionStatus:(id)a3 userRatings:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self->_submissionStatus;
  v11 = v8;
  if (v11 | v10 && (v12 = [v10 isEqual:v11], v11, v10, !v12))
  {
    objc_storeStrong(&self->_submissionStatus, a3);
    [(MUPlaceViewController *)self _updateSectionsForSubmissionStatusChange];
    [(MUPlaceViewController *)self _updateWebPlacecardForSubmissionStatusChange:v11 userRatings:v9];
  }

  else
  {
    v13 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_DEBUG, "Neither the submission status or proactive status has changed so not updating.", v14, 2u);
    }
  }
}

- (void)updateActionRowView
{
  v2[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__MUPlaceViewController_updateActionRowView__block_invoke;
  v3[3] = &unk_1E821A268;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__MUPlaceViewController_updateActionRowView__block_invoke_2;
  v2[3] = &unk_1E821A268;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v3 oldUIBlock:v2];
}

void __44__MUPlaceViewController_updateActionRowView__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) actionRowSectionController];
  [v1 updateForActionRowInfoChange];
}

void __44__MUPlaceViewController_updateActionRowView__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) actionRowSectionController];
  [v1 updateForActionRowInfoChange];
}

- (void)_updateWebPlacecardForPhotoSubmissionWithURL:(id)a3
{
  v11 = a3;
  v4 = [(MUPlaceViewController *)self webPlacecardSectionController];
  v5 = [v4 configuration];
  if (v5)
  {

LABEL_4:
    v7 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v8 = [v7 configuration];
    [v8 setUserARPPhoto:v11];

    v9 = [(MUPlaceViewController *)self webPlacecardSectionController];
    [v9 updateUserData];
    goto LABEL_5;
  }

  flexiblePlacecardConfig = self->_flexiblePlacecardConfig;

  if (flexiblePlacecardConfig)
  {
    goto LABEL_4;
  }

  v10 = objc_alloc_init(_TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration);
  [(MUWebBasedPlacecardSectionControllerConfiguration *)v10 setUserARPPhoto:v11];
  v9 = self->_flexiblePlacecardConfig;
  self->_flexiblePlacecardConfig = v10;
LABEL_5:
}

- (void)_updateWebPlacecardForSubmissionStatusChange:(id)a3 userRatings:(id)a4
{
  v27 = a3;
  v6 = a4;
  if ([v27 type] != 5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_alloc_init(MEMORY[0x1E696AD98]);
    v9 = [v27 ratingState];
    if (v9 <= 2)
    {
      v10 = qword_1E82189C8[v9];

      v8 = v10;
    }

    if (v27 && ![v6 count])
    {
      v11 = [MUUGCRatingViewModel alloc];
      v12 = _MULocalizedStringFromThisBundle(@"Overall [Placecard]");
      v13 = [(MUUGCRatingViewModel *)v11 initWithCategory:v12 value:v8];

      [v7 addObject:v13];
    }

    else if ([v6 count])
    {
      [v7 addObjectsFromArray:v6];
    }

    v14 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v15 = [v14 configuration];
    if (v15)
    {
    }

    else
    {
      flexiblePlacecardConfig = self->_flexiblePlacecardConfig;

      if (!flexiblePlacecardConfig)
      {
        v24 = objc_alloc_init(_TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration);
        v25 = [v7 copy];
        [(MUWebBasedPlacecardSectionControllerConfiguration *)v24 setUserARPRatings:v25];

        v26 = [(MUPlaceViewController *)self userIcon];
        [(MUWebBasedPlacecardSectionControllerConfiguration *)v24 setUserIcon:v26];

        v23 = self->_flexiblePlacecardConfig;
        self->_flexiblePlacecardConfig = v24;
        goto LABEL_13;
      }
    }

    v17 = [v7 copy];
    v18 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v19 = [v18 configuration];
    [v19 setUserARPRatings:v17];

    v20 = [(MUPlaceViewController *)self userIcon];
    v21 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v22 = [v21 configuration];
    [v22 setUserIcon:v20];

    v23 = [(MUPlaceViewController *)self webPlacecardSectionController];
    [v23 updateUserData];
LABEL_13:
  }
}

- (void)_updatePersonalizedSuggestionSectionArbiterWithSections
{
  v3 = [(MUPlaceViewController *)self notesSectionController];
  v4 = [(MUPlaceViewController *)self personalizedSuggestionSectionArbiter];
  [v4 setPlaceNotesSectionController:v3];

  v5 = [(MUPlaceViewController *)self _firstSectionControllerOfClass:objc_opt_class()];
  v6 = [(MUPlaceViewController *)self personalizedSuggestionSectionArbiter];
  [v6 setPlaceCallToActionSectionController:v5];

  v8 = [(MUPlaceViewController *)self _firstSectionControllerOfClass:objc_opt_class()];
  v7 = [(MUPlaceViewController *)self personalizedSuggestionSectionArbiter];
  [v7 setHikingTipSectionController:v8];
}

- (void)_updateSectionsForSubmissionStatusChange
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MUPlaceDataAvailability alloc];
  v4 = [(MUPlaceViewController *)self mapItem];
  v5 = [(MUPlaceDataAvailability *)v3 initWithMapItem:v4 options:self->_options];

  v6 = [(MUPlaceDataAvailability *)v5 supportsCallToAction];
  v7 = MUGetPlaceCardLog();
  v8 = v7;
  if (v6)
  {
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UpdateSectionsForSubmissionStatus", "", buf, 2u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = self->_sectionControllers;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13++) setSubmissionStatus:{self->_submissionStatus, v15}];
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }

    v8 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UpdateSectionsForSubmissionStatus", "", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_INFO, "Do not support ARP call to action so not updating sections", buf, 2u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_updateSectionsForActionRowInfoChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_sectionControllers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 updateForActionRowInfoChange];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateSectionsForAttributionChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_sectionControllers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 updateForAttributionChange];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_deactivateSections
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DeactivateSections", "", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_sectionControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) setActive:{0, v11}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  [(MUEVChargerAvailabilityProvider *)self->_evChargerAvailabilityProvider setIsActive:0];
  v9 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DeactivateSections", "", buf, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_activateSections
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ActivateSections", "", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_sectionControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) setActive:{1, v11}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  [(MUPlaceViewController *)self _updateSectionsForSubmissionStatusChange];
  [(MUEVChargerAvailabilityProvider *)self->_evChargerAvailabilityProvider setIsActive:1];
  v9 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ActivateSections", "", buf, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateSections
{
  v3 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UpdateSections", "", buf, 2u);
  }

  [(MUPlaceViewController *)self _deactivateSections];
  [(MUPlaceViewController *)self _buildSections];
  [(MUPlaceViewController *)self _activateSections];
  [(MUPlaceViewController *)self showContentIfLoaded];
  v4 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UpdateSections", "", v5, 2u);
  }
}

- (id)_actionBarSectionControllerForAvailability:(id)a3 moduleConfiguration:(id)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 supportsActionBar])
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = [v7 primaryButtonItem];

      if (v9)
      {
        v10 = [v7 primaryButtonItem];
        [v8 addObject:v10];
      }

      v11 = [v7 secondaryButtonItems];

      if (v11)
      {
        v12 = [v7 secondaryButtonItems];
        [v8 addObjectsFromArray:v12];
      }

      v13 = [[MUPlaceActionBarButtonModuleConfiguration alloc] initWithButtonItems:v8];

      v14 = [(MUPlaceViewController *)self unifiedActionRowConfigurationForAvailability:v6 buttonModuleConfiguration:v13];
    }

    else
    {
      v16 = objc_opt_new();
      [v16 setButtonType:14];
      v17 = objc_opt_new();
      [v17 setButtonType:17];
      v18 = MEMORY[0x1E69A1BB0];
      v29[0] = v16;
      v29[1] = v17;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      v20 = [v18 buttonItemsFromPDButtonItems:v19];

      v13 = [[MUPlaceActionBarButtonModuleConfiguration alloc] initWithButtonItems:v20];
      v14 = [(MUPlaceViewController *)self unifiedActionRowConfigurationForAvailability:v6 buttonModuleConfiguration:v13];
      [v14 setButtonModuleConfiguration:0];
      [v14 setStaticButtonModuleConfiguration:v13];
    }

    [v14 setShowMoreButtonIfAvailable:1];
    if ([v6 canShowDirections])
    {
      BOOL = GEOConfigGetBOOL();
    }

    else
    {
      BOOL = 0;
    }

    [v14 setShouldShowDirectionsAction:BOOL];
    v22 = [MUPlaceActionBarSectionController alloc];
    v23 = [(MUPlaceViewController *)self mapItem];
    v24 = [v7 primaryButtonItem];
    v25 = [v7 secondaryButtonItems];
    v15 = [(MUPlaceActionBarSectionController *)v22 initWithMapItem:v23 configuration:v14 primaryButtonItem:v24 secondaryButtonItems:v25];

    [(MUPlaceUnifiedActionRowSectionController *)v15 setActionDelegate:self];
    v26 = [(MUPlaceViewController *)self offlineMapProvider];
    [(MUPlaceUnifiedActionRowSectionController *)v15 setOfflineMapProvider:v26];
  }

  else
  {
    v15 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_notesSectionControllerForAvailability:(id)a3
{
  if ([a3 supportsPlaceNotes])
  {
    v4 = [_TtC6MapsUI29MUPlaceNotesSectionController alloc];
    v5 = [(MUPlaceViewController *)self mapItem];
    v6 = [(MUPlaceViewController *)self libraryAccessProvider];
    v7 = [(MUPlaceNotesSectionController *)v4 initWithMapItem:v5 userInfoProvider:self libraryAccessProvider:v6];

    [(MUPlaceNotesSectionController *)v7 setNotesSectionDelegate:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_hikingTipSectionControllerForAvailability:(id)a3
{
  options = self->_options;
  v5 = 0;
  if ([a3 supportsHikingTip] && (options & 0x40000000000) != 0)
  {
    v6 = [MUHikingTipSectionController alloc];
    v7 = [(MUPlaceViewController *)self placeItem];
    v5 = [(MUHikingTipSectionController *)v6 initWithPlaceItem:v7 tipDelegate:self];
  }

  return v5;
}

- (id)_hikingTrailsSectionControllerForAvailability:(id)a3
{
  if ([a3 supportsHikingTrails])
  {
    v4 = [MURelatedPlaceSectionControllerConfiguration alloc];
    v5 = [(MUPlaceViewController *)self mapItem];
    v6 = [v5 _trailHead];
    v7 = [(MURelatedPlaceSectionControllerConfiguration *)v4 initWithTrailHead:v6];

    v8 = [MURelatedPlacesSectionController alloc];
    v9 = [(MUPlaceViewController *)self mapItem];
    v10 = [(MURelatedPlacesSectionController *)v8 initWithMapItem:v9 configuration:v7];

    [(MURelatedPlacesSectionController *)v10 setRelatedPlacesDelegate:self];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_evChargingSectionControllerForForAvailability:(id)a3 mapItem:(id)a4
{
  v6 = a4;
  if ([a3 supportsEVCharging] && self->_evChargerAvailabilityProvider)
  {
    v7 = [[MUEVChargingSectionController alloc] initWithMapItem:v6 availabilityProvider:self->_evChargerAvailabilityProvider];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_webBasedPlacecardViewControllerForAvailability:(id)a3
{
  v4 = a3;
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    if (!self->_flexiblePlacecardConfig)
    {
      v5 = objc_alloc_init(_TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration);
      flexiblePlacecardConfig = self->_flexiblePlacecardConfig;
      self->_flexiblePlacecardConfig = v5;
    }

    if (!self->_webPlacecardBridge)
    {
      v7 = +[_TtC6MapsUI24MUWebPlacecardBridgePool sharedPool];
      v8 = [v7 takeBridge];
      webPlacecardBridge = self->_webPlacecardBridge;
      self->_webPlacecardBridge = v8;
    }

    if (!self->_webBasedPlacecardOfflineMapProvider)
    {
      v10 = [_TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider alloc];
      v11 = [(MUPlaceViewController *)self offlineMapProvider];
      v12 = [(MUWebBasedPlacecardOfflineMapProvider *)v10 initWithNativeOfflineMapProvider:v11];
      webBasedPlacecardOfflineMapProvider = self->_webBasedPlacecardOfflineMapProvider;
      self->_webBasedPlacecardOfflineMapProvider = v12;
    }

    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setExternalActionHandler:self];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setEvChargerAvailability:self->_evChargerAvailabilityProvider];
    v14 = [(MUPlaceViewController *)self webPlacecardGuides];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setUserGuides:v14];

    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setPlaceInShortcuts:[(MUPlaceViewController *)self placeInShortcuts]];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setNumberOfReportsInReview:[(MUPlaceViewController *)self placeNumberOfReportsInReview]];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setShouldDisableReportAProblem:(self->_options >> 6) & 1];
    v15 = [(MUPlaceViewController *)self placeItem];
    v16 = [v15 mapItem];
    if ([v16 _hasFlyover])
    {
      v17 = (self->_options & 0x400000) == 0;
    }

    else
    {
      v17 = 1;
    }

    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setShouldExcludeFlyover:v17];

    -[MUWebBasedPlacecardSectionControllerConfiguration setSupportsShowingCoordinates:](self->_flexiblePlacecardConfig, "setSupportsShowingCoordinates:", [v4 supportsShowingCoordinates]);
    v19 = [(MUPlaceViewController *)self userIcon];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setUserIcon:v19];

    v20 = [(MUPlaceViewController *)self libraryAccessProvider];
    v21 = [v20 placeNote];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setPlaceNote:v21];

    v22 = MEMORY[0x1E696F2E8];
    v23 = [(MUPlaceViewController *)self mapItem];
    -[MUWebBasedPlacecardSectionControllerConfiguration setUserCanRate:](self->_flexiblePlacecardConfig, "setUserCanRate:", [v22 shouldShowRatingsCallToActionForMapItem:v23]);

    v24 = MEMORY[0x1E696F2E8];
    v25 = [(MUPlaceViewController *)self mapItem];
    -[MUWebBasedPlacecardSectionControllerConfiguration setUserCanAddPhotos:](self->_flexiblePlacecardConfig, "setUserCanAddPhotos:", [v24 shouldShowPhotosCallToActionForMapItem:v25]);

    v26 = [(MUPlaceViewController *)self libraryAccessProvider];
    -[MUWebBasedPlacecardSectionControllerConfiguration setLibraryPlaceSavedState:](self->_flexiblePlacecardConfig, "setLibraryPlaceSavedState:", [v26 savedStateOfPlace]);

    v27 = [(MUPlaceViewController *)self mapsAppDelegate];
    LOBYTE(v25) = objc_opt_respondsToSelector();

    if (v25)
    {
      v28 = [(MUPlaceViewController *)self mapsAppDelegate];
      v29 = [v28 placeViewControllerRequestsMapViewAssociatedWithVC:self];

      if (v29)
      {
        [v29 _cartographicConfiguration];
        v30 = v58;
      }

      else
      {
        v30 = 0;
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
      }

      [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setMapStyle:v30, v58, v59, v60, v61];
    }

    v31 = [(MUPlaceViewController *)self placeItem];
    v32 = [v31 contact];

    if (!v32)
    {
      v33 = [(MUPlaceViewController *)self mapItem];
      v32 = [v33 _placeCardContact];
    }

    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setContact:v32];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setIsDeveloperPlacecard:(self->_options >> 39) & 1];
    v34 = GEOGetURL();
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setWebModuleURL:v34];

    v35 = [(MUPlaceViewController *)self placeItem];
    -[MUWebBasedPlacecardSectionControllerConfiguration setIsHomeWorkSchool:](self->_flexiblePlacecardConfig, "setIsHomeWorkSchool:", ([v35 options] >> 6) & 1);

    v36 = [(MUPlaceViewController *)self placeItem];
    v37 = [v36 name];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setCustomName:v37];

    v38 = [(MUPlaceViewController *)self placeItem];
    [v38 options];
    v39 = MKPlaceItemOptionsAsString();
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setOptions:v39];

    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setUserCanEdit:(self->_options >> 18) & 1];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setCanShowOpenFindMyAction:(self->_options >> 37) & 1];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setCanShowRequestLocation:(self->_options >> 38) & 1];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setShowMoreButton:(self->_options >> 29) & 1];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setEtaProvider:self->_etaProvider];
    v40 = [MUTimeExpirableLRUCache alloc];
    UInteger = GEOConfigGetUInteger();
    v42 = [(MUTimeExpirableLRUCache *)v40 initWithMaxSize:UInteger timeToLive:GEOConfigGetUInteger()];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setRelatedPlacesCache:v42];

    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setCanShowDownloadOffline:(self->_options & 0x1000000000) == 0];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setOfflineMapProvider:self->_webBasedPlacecardOfflineMapProvider];
    v43 = [(MUPlaceViewController *)self deviceProvider];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setDeviceProvider:v43];

    quickActionTrayArtworkCache = self->_quickActionTrayArtworkCache;
    if (!quickActionTrayArtworkCache)
    {
      v45 = [MUTimeExpirableLRUCache alloc];
      v46 = GEOConfigGetUInteger();
      v47 = [(MUTimeExpirableLRUCache *)v45 initWithMaxSize:v46 timeToLive:GEOConfigGetUInteger()];
      v48 = self->_quickActionTrayArtworkCache;
      self->_quickActionTrayArtworkCache = v47;

      quickActionTrayArtworkCache = self->_quickActionTrayArtworkCache;
    }

    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setArtworkCache:quickActionTrayArtworkCache];
    v49 = [(MUPlaceViewController *)self amsResultProvider];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setAmsResultProvider:v49];

    flexiblePlacecardSectionController = self->_flexiblePlacecardSectionController;
    if (flexiblePlacecardSectionController)
    {
      v51 = [(MUPlaceViewController *)self mapItem];
      [(MUWebBasedPlacecardSectionController *)flexiblePlacecardSectionController reloadDataWithMapItem:v51 configuration:self->_flexiblePlacecardConfig];
    }

    else
    {
      v52 = [_TtC6MapsUI36MUWebBasedPlacecardSectionController alloc];
      v53 = [(MUPlaceViewController *)self mapItem];
      v54 = [(MUWebBasedPlacecardSectionController *)v52 initWithMapItem:v53 placeActionDispatcher:self->_actionDispatcher bridge:self->_webPlacecardBridge configuration:self->_flexiblePlacecardConfig];
      v55 = self->_flexiblePlacecardSectionController;
      self->_flexiblePlacecardSectionController = v54;

      [(MUWebBasedPlacecardSectionController *)self->_flexiblePlacecardSectionController setSectionDelegate:self];
    }

    v56 = self->_flexiblePlacecardConfig;
    self->_flexiblePlacecardConfig = 0;

    v18 = self->_flexiblePlacecardSectionController;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_webContentSectionControllerForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [MUPlaceWebContentSectionController alloc];
  v6 = [(MUPlaceViewController *)self mapItem];
  v7 = [(MUPlaceWebContentSectionController *)v5 initWithMapItem:v6 configuration:v4];

  [(MUPlaceWebContentSectionController *)v7 setWebContentDelegate:self];

  return v7;
}

- (id)_placeInfoSectionControllerForAvailability:(id)a3 moduleConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 supportsHours])
  {
    v8 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v9 = [MUPlaceHoursSectionViewConfiguration configurationForMapItem:v8];
LABEL_5:
    v10 = v9;

    goto LABEL_7;
  }

  if ([v6 supportsMessageHours])
  {
    v8 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v9 = [MUPlaceHoursSectionViewConfiguration configurationForMessagesMapItem:v8];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:
  v11 = objc_alloc_init(MUPlaceInfoSectionControllerConfiguration);
  [(MUPlaceInfoSectionControllerConfiguration *)v11 setModuleConfiguration:v7];

  [(MUPlaceInfoSectionControllerConfiguration *)v11 setAvailability:v6];
  [(MUPlaceInfoSectionControllerConfiguration *)v11 setActionDelegate:self->_actionManager];
  [(MUPlaceInfoSectionControllerConfiguration *)v11 setHoursConfiguration:v10];
  [(MUPlaceInfoSectionControllerConfiguration *)v11 setDeveloperPlaceCard:(self->_options >> 39) & 1];
  v12 = [[MUPlaceInfoSectionController alloc] initWithPlaceItem:self->_placeItem configuration:v11];
  [(MUPlaceInfoSectionController *)v12 setPlaceInfoDelegate:self];
  [(MUPlaceInfoSectionController *)v12 setUserInfoProvider:self];

  return v12;
}

- (id)_inlineMapSectionControllerForAvailability:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696F330] configurationForPlaceViewControllerOptions:self->_options];
  v6 = v5;
  if ((self->_options & 0x8000000000) != 0)
  {
    [v5 setSuppressLookAround:1];
    [v6 setSuppressSectionHeader:1];
    [v6 setShowMapAttribution:1];
    v7 = [(MUPlaceViewControllerConfiguration *)self->_configuration developerPlaceCardAuditToken];
    [v6 setMapSnapshotAuditToken:v7];
  }

  if (([v4 supportsInlineMap] & 1) != 0 || objc_msgSend(v4, "supportsInlinePOIMap"))
  {
    v8 = [MUPlaceInlineMapSectionController alloc];
    v9 = [(MUPlaceViewController *)self mapItem];
    v10 = [(MUPlaceInlineMapSectionController *)v8 initWithMapItem:v9 configuration:v6];

    [(MUPlaceInlineMapSectionController *)v10 setLocation:self->_location];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_relatedPlaceConfigurationForRelatedPlaceList:(id)a3 moduleConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MURelatedPlaceSectionControllerConfiguration alloc] initWithRelatedPlaceList:v7];

  v9 = (self->_options & 0x20000000) == 0;
  [(MURelatedPlaceSectionControllerConfiguration *)v8 setSuppressSeeAllButton:v9];
  [(MURelatedPlaceSectionControllerConfiguration *)v8 setModuleConfiguration:v6];

  [(MURelatedPlaceSectionControllerConfiguration *)v8 setSuppressItemSelection:v9];

  return v8;
}

- (id)_relatedPlaceSectionControllerForAvailability:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 supportsRelatedPlaces])
  {
    v14 = 0;
    goto LABEL_10;
  }

  v8 = [(MUPlaceViewController *)self mapItem];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 _relatedPlaceListForComponentIdentifier:{objc_msgSend(v7, "componentIdentifier")}];

    if (!v10)
    {
      v9 = 0;
      v14 = 0;
      goto LABEL_9;
    }

    v11 = [(MUPlaceViewController *)self _relatedPlaceConfigurationForRelatedPlaceList:v10 moduleConfiguration:v7];
    v12 = [MURelatedPlacesSectionController alloc];
    v13 = [(MUPlaceViewController *)self mapItem];
    v14 = [(MURelatedPlacesSectionController *)v12 initWithMapItem:v13 configuration:v11];

    [(MURelatedPlacesSectionController *)v14 setRelatedPlacesDelegate:self];
    v9 = v10;
  }

  else
  {
    v11 = [v8 _relatedPlaceLists];
    v15 = [v11 firstObject];
    v14 = [(MUPlaceViewController *)self _relatedPlaceSectionControllerForAvailability:v6 relatedPlaceList:v15];
  }

LABEL_9:
LABEL_10:

  return v14;
}

- (id)_relatedPlaceSectionControllerForAvailability:(id)a3 relatedPlaceList:(id)a4
{
  v6 = a4;
  if (![a3 supportsRelatedPlaces] || MapsFeature_IsEnabled_MapsWally() && -[_MKPlaceItem representsPerson](self->_placeItem, "representsPerson") && (-[_MKPlaceItem contact](self->_placeItem, "contact"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_mapkit_isSharedLocationContact"), v7, !v8))
  {
    v12 = 0;
  }

  else
  {
    v9 = [(MUPlaceViewController *)self _relatedPlaceConfigurationForRelatedPlaceList:v6 moduleConfiguration:0];
    v10 = [MURelatedPlacesSectionController alloc];
    v11 = [(MUPlaceViewController *)self mapItem];
    v12 = [(MURelatedPlacesSectionController *)v10 initWithMapItem:v11 configuration:v9];

    [(MURelatedPlacesSectionController *)v12 setRelatedPlacesDelegate:self];
  }

  return v12;
}

- (id)_amenitiesSectionControllerForAvailability:(id)a3 moduleConfiguration:(id)a4
{
  v6 = a4;
  if ([a3 supportsAmenities])
  {
    v7 = [MUAmenitiesSectionController alloc];
    v8 = [(MUPlaceViewController *)self mapItem];
    v9 = [(MUAmenitiesSectionController *)v7 initWithMapItem:v8 moduleConiguration:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_contactSharedLocationSectionControllerForAvailability:(id)a3
{
  v4 = a3;
  if (MapsFeature_IsEnabled_MapsWally() && [(_MKPlaceItem *)self->_placeItem representsPerson])
  {
    v5 = [(_MKPlaceItem *)self->_placeItem contact];
    if ([v5 _mapkit_isSharedLocationContact])
    {
      v6 = [[MUContactSharedLocationSectionController alloc] initWithPlaceItem:self->_placeItem availability:v4];
      [(MUContactSharedLocationSectionController *)v6 setContactSharedLocationSectionDelegate:self];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_placeEnrichmentSectionControllerForAvailability:(id)a3
{
  v4 = a3;
  if (MapsFeature_IsEnabled_PlaceCardShowcase() && [v4 supportsPlaceEnrichment])
  {
    v5 = [MUPlaceEnrichmentSectionController alloc];
    v6 = [(MUPlaceViewController *)self mapItem];
    actionManager = self->_actionManager;
    v8 = [(MUPlaceViewController *)self amsResultProvider];
    v9 = [(MUPlaceEnrichmentSectionController *)v5 initWithMapItem:v6 actionManager:actionManager dataAvailability:v4 amsResultProvider:v8 callToActionDelegate:self externalActionHandler:self rapActionHandler:self];

    [(MUPlaceEnrichmentSectionController *)v9 setPlaceEnrichmentDelegate:self];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_personalGuidesSectionController
{
  v3 = [MUPersonalGuidesSectionController alloc];
  v4 = [(MUPlaceViewController *)self mapItem];
  v5 = [(MUPersonalGuidesSectionController *)v3 initWithMapItem:v4 collectionViewProvider:self];

  return v5;
}

- (id)_encyclopedicSectionControllerForAvailability:(id)a3
{
  if ([a3 supportsEncyclopedicDescription])
  {
    v4 = [(MUPlaceViewController *)self mapItem];
    v5 = [v4 _encyclopedicInfo];
    v6 = [MUPlaceDescriptionConfiguration configurationWithEncyclopedicInfo:v5];

    v7 = [MUPlaceDescriptionSectionController alloc];
    v8 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v9 = [(MUPlaceDescriptionSectionController *)v7 initWithMapItem:v8 configuration:v6];

    [(MUPlaceDescriptionSectionController *)v9 setActionDelegate:self];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_callToActionSuggestionSectionControllerForAvailability:(id)a3
{
  if ([a3 supportsCallToAction])
  {
    v4 = [MUPassiveCallToActionSectionController alloc];
    v5 = [(MUPlaceViewController *)self mapItem];
    v6 = [(MUPlaceSectionController *)v4 initWithMapItem:v5];

    [(MUCallToActionSectionController *)v6 setCallToActionDelegate:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_passiveCallToActionSectionControllerForAvailability:(id)a3
{
  if ([a3 supportsCallToAction])
  {
    v4 = [MUPassiveCallToActionSectionController alloc];
    v5 = [(MUPlaceViewController *)self mapItem];
    v6 = [(MUPlaceSectionController *)v4 initWithMapItem:v5];

    [(MUCallToActionSectionController *)v6 setCallToActionDelegate:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_placeFooterSectionController
{
  v3 = [MUPlaceFooterActionsSectionController alloc];
  v4 = [(MUPlaceViewController *)self mapItem];
  v5 = [(MUPlaceFooterActionsSectionController *)v3 initWithMapItem:v4 actionManager:self->_actionManager];

  return v5;
}

- (id)_placeDescriptionSectionControllerForAvailability:(id)a3
{
  if ((self->_options & 0x400000000000) != 0 || ![a3 supportsPlaceDescription])
  {
    v11 = 0;
  }

  else
  {
    v4 = [MUPlaceDescriptionConfiguration alloc];
    v5 = [(MUPlaceViewController *)self mapItem];
    v6 = [v5 _geoMapItem];
    v7 = [v6 _placeDescription];
    v8 = [(MUPlaceDescriptionConfiguration *)v4 initWithTitle:0 descriptionText:v7 attribution:0];

    v9 = [MUPlaceDescriptionSectionController alloc];
    v10 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v11 = [(MUPlaceDescriptionSectionController *)v9 initWithMapItem:v10 configuration:v8];

    [(MUPlaceDescriptionSectionController *)v11 setActionDelegate:self];
  }

  return v11;
}

- (id)_curatedGuidesSectionControllerForAvailability:(id)a3
{
  if ([a3 supportsCuratedGuidesCarousel])
  {
    v4 = [MUCuratedGuidesSectionController alloc];
    v15 = [(MUPlaceViewController *)self mapItem];
    v5 = [v15 _placeCollections];
    v6 = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = [v6 curatedCollectionSyncCoordinator];
    v8 = [(MUPlaceViewController *)self mapItem];
    v9 = [(MUPlaceViewController *)self mapItem];
    v10 = [v9 _placeCollectionIds];
    v11 = [(MUPlaceViewController *)self mapItem];
    v12 = [v11 _exploreGuides];
    v13 = [(MUCuratedGuidesSectionController *)v4 initWithDelegate:self withPlaceCollections:v5 usingSyncCoordinator:v7 usingMapItem:v8 usingCollectionIds:v10 exploreGuides:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_photoSectionControllerForAvailability:(id)a3
{
  if ((self->_options & 0x800000000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v4 = a3;
    v5 = objc_alloc_init(MUPlacePhotoSectionControllerConfiguration);
    v6 = [v4 supportsCallToAction];

    [(MUPlacePhotoSectionControllerConfiguration *)v5 setSupportsARPCallToAction:v6];
    [(MUPlacePhotoSectionControllerConfiguration *)v5 setPresentingViewController:self];
    v7 = [MUPlacePhotoSectionController alloc];
    v8 = [(MUPlaceViewController *)self mapItem];
    v9 = [(MUPlacePhotoSectionController *)v7 initWithMapItem:v8 configuration:v5];

    [(MUPlacePhotoSectionController *)v9 setPhotoSectionControllerDelegate:self];
  }

  return v9;
}

- (id)_transitDeparturesSectionControllerForAvailability:(id)a3
{
  v4 = a3;
  if ([v4 isTransitItem])
  {
    v5 = [MUTransitDeparturesSectionController alloc];
    v6 = [(MUPlaceViewController *)self mapItem];
    v7 = -[MUTransitDeparturesSectionController initWithMapItem:allowTransitLineSelection:departuresDelegate:](v5, "initWithMapItem:allowTransitLineSelection:departuresDelegate:", v6, [v4 allowTransitLineSelection], self);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_placeRibbonSectionControllerForAvailability:(id)a3 placeRibbonConfiguration:(id)a4
{
  if ((self->_options & 0x100000000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = objc_alloc_init(MUPlaceRibbonSectionControllerConfiguration);
    [(MUPlaceRibbonSectionControllerConfiguration *)v8 setAvailability:v7];

    [(MUPlaceRibbonSectionControllerConfiguration *)v8 setRibbonConfiguration:v6];
    [(MUPlaceRibbonSectionControllerConfiguration *)v8 setEtaProvider:self->_etaProvider];
    [(MUPlaceRibbonSectionControllerConfiguration *)v8 setEvChargerAvailabilityProvider:self->_evChargerAvailabilityProvider];
    v9 = [MUPlaceRibbonSectionController alloc];
    v10 = [(MUPlaceViewController *)self mapItem];
    v11 = [(MUPlaceRibbonSectionController *)v9 initWithMapItem:v10 configuration:v8];

    [(MUPlaceRibbonSectionController *)v11 setRibbonDelegate:self];
  }

  return v11;
}

- (id)_officialAppSectionControllerForAvailability:(id)a3
{
  if ([a3 suportsOfficialApp])
  {
    if (!self->_officialAppMediaResultCache)
    {
      v4 = [MUTimeExpirableLRUCache alloc];
      UInteger = GEOConfigGetUInteger();
      v6 = [(MUTimeExpirableLRUCache *)v4 initWithMaxSize:UInteger timeToLive:GEOConfigGetUInteger()];
      officialAppMediaResultCache = self->_officialAppMediaResultCache;
      self->_officialAppMediaResultCache = v6;
    }

    v8 = [MUOfficialAppSectionController alloc];
    v9 = [(MUPlaceViewController *)self mapItem];
    v10 = [(MUOfficialAppSectionController *)v8 initWithMapItem:v9 usingCachedMediaResults:self->_officialAppMediaResultCache];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_annotatedItemSectionControllerForAvailability:(id)a3
{
  v4 = a3;
  if ([v4 supportsAnnotatedPhotos])
  {
    v5 = [MUPlacePictureItemSectionController alloc];
    v6 = [(MUPlaceViewController *)self mapItem];
    v7 = [(MUPlaceViewController *)self mapItem];
    v8 = [v7 _annotatedItemList];
    v9 = [(MUPlacePictureItemSectionController *)v5 initWithMapItem:v6 annotatedList:v8 presentingViewController:self];

    [(MUPlacePictureItemSectionController *)v9 setPictureItemDelegate:self];
  }

  else if ([v4 supportsAnnotatedTextList])
  {
    v10 = [MUPlaceListItemSectionController alloc];
    v11 = [(MUPlaceViewController *)self mapItem];
    v12 = [(MUPlaceViewController *)self mapItem];
    v13 = [v12 _annotatedItemList];
    v9 = [(MUPlaceListItemSectionController *)v10 initWithMapItem:v11 annotatedList:v13];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_venueInfoSectionControllerForAvailability:(id)a3
{
  if ([a3 supportsVenueTextInfo])
  {
    v4 = [MUPlaceVenueInfoSectionController alloc];
    v5 = [(MUPlaceViewController *)self mapItem];
    v6 = [(MUPlaceVenueInfoSectionController *)v4 initWithMapItem:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_ratingsAndReviewsSectionControllerForAvailability:(id)a3
{
  v4 = a3;
  if ([v4 supportsInlineRatings])
  {
    v5 = [MUInlineRatingsSectionController alloc];
    v6 = [(MUPlaceViewController *)self mapItem];
    v7 = [(MUInlineRatingsSectionController *)v5 initWithMapItem:v6 inlineRatingsViewProvider:self];
  }

  else if ([v4 shouldShowRatingsAndReviewsModule])
  {
    v8 = [MURatingsAndReviewsSectionController alloc];
    v9 = [(MUPlaceViewController *)self mapItem];
    v7 = [(MURatingsAndReviewsSectionController *)v8 initWithMapItem:v9];

    [(MUInlineRatingsSectionController *)v7 setActionDelegate:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_browseCategorySectionControllerForAvailability:(id)a3
{
  if ([a3 supportsBrowseCategory])
  {
    v4 = [MUBrowseCategorySectionController alloc];
    v5 = [(MUPlaceViewController *)self mapItem];
    v6 = [(MUBrowseCategorySectionController *)v4 initWithMapItem:v5];

    [(MUBrowseCategorySectionController *)v6 setBrowseCategoryDelegate:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_didSelectViewContactButton
{
  v3 = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlaceViewController *)self mapsAppDelegate];
    [v5 placeViewControllerDidSelectViewContact:self];
  }
}

- (id)_unifiedActionRowSectionControllerForAvailability:(id)a3 buttonModuleConfiguration:(id)a4
{
  if ((self->_options & 0x200000000000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v5 = [(MUPlaceViewController *)self unifiedActionRowConfigurationForAvailability:a3 buttonModuleConfiguration:a4];
    v6 = [MUPlaceUnifiedActionRowSectionController alloc];
    v7 = [(MUPlaceViewController *)self mapItem];
    v8 = [(MUPlaceUnifiedActionRowSectionController *)v6 initWithMapItem:v7 configuration:v5];

    [(MUPlaceUnifiedActionRowSectionController *)v8 setActionDelegate:self];
    v9 = [(MUPlaceViewController *)self offlineMapProvider];
    [(MUPlaceUnifiedActionRowSectionController *)v8 setOfflineMapProvider:v9];
  }

  return v8;
}

- (id)unifiedActionRowConfigurationForAvailability:(id)a3 buttonModuleConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = off_1E82162D8;
  if ((isKindOfClass & 1) == 0)
  {
    v9 = off_1E8216450;
  }

  v10 = objc_alloc_init(*v9);
  [v10 setActionManager:self->_actionManager];
  [v10 setMoreActionsProvider:self];
  [v10 setEtaProvider:self->_etaProvider];
  [v10 setExternalActionHandler:self];
  [v10 setButtonModuleConfiguration:v7];
  [v10 setSecondaryActionButtonController:self->_headerSecondaryButtonController];
  [v10 setIsSearchAlongRoute:(self->_options >> 35) & 1];
  [v10 setShowMoreButtonIfAvailable:0];
  BOOL = GEOConfigGetBOOL();
  if (v6)
  {
    BOOL = [v6 canShowDirections] & BOOL;
  }

  [v10 setShouldShowDirectionsAction:BOOL];
  [v10 setCanShowDownloadOffline:(self->_options & 0x1000000000) == 0];
  [v10 setShouldPromoteDownloadOffline:{(-[_MKPlaceItem options](self->_placeItem, "options") & 2 | -[_MKPlaceItem options](self->_placeItem, "options") & 8) != 0}];
  [v10 setShouldShowContactsAction:(self->_options & 0x6000000000) != 0];
  if (MapKitIdiomIsMacCatalyst())
  {
    [v10 setActionRowMenuProvider:self];
  }

  v12 = [(MUPlaceViewController *)self placeItem];
  if (([v12 isIntermediateMapItem] & 1) != 0 || (self->_options & 8) != 0)
  {
    v14 = 0;
  }

  else
  {
    v13 = [(MUPlaceViewController *)self mapItem];
    v14 = [v13 _canGetDirections];
  }

  options = self->_options;
  v16 = (options >> 20) & 1;
  [v10 setCanShowDetourTime:v16];
  if (options & 0x200000000) != 0 && ((v14 | v16))
  {
    v17 = 4;
LABEL_18:
    [v10 setPrimaryButtonType:v17];
    goto LABEL_19;
  }

  v18 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v19 = [v18 _detourInfo];
  v20 = v19 != 0;

  if ((*&v20 & (options >> 20)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if ((*&v20 & (options >> 20) | v14))
  {
    goto LABEL_18;
  }

LABEL_19:
  quickActionTrayArtworkCache = self->_quickActionTrayArtworkCache;
  if (!quickActionTrayArtworkCache)
  {
    v22 = [MUTimeExpirableLRUCache alloc];
    UInteger = GEOConfigGetUInteger();
    v24 = [(MUTimeExpirableLRUCache *)v22 initWithMaxSize:UInteger timeToLive:GEOConfigGetUInteger()];
    v25 = self->_quickActionTrayArtworkCache;
    self->_quickActionTrayArtworkCache = v24;

    quickActionTrayArtworkCache = self->_quickActionTrayArtworkCache;
  }

  [v10 setArtworkCache:quickActionTrayArtworkCache];
  v26 = [(MUPlaceViewController *)self amsResultProvider];
  [v10 setAmsResultProvider:v26];

  return v10;
}

- (id)_actionRowSectionControllerWithButtonModuleConfiguration:(id)a3
{
  if ([(_MKPlaceItem *)self->_placeItem options])
  {
    v4 = 0;
  }

  else
  {
    v5 = [MUPlaceActionRowSectionController alloc];
    v6 = [(MUPlaceViewController *)self mapItem];
    v4 = [(MUPlaceActionRowSectionController *)v5 initWithMapItem:v6 actionManager:self->_actionManager menuProvider:self];
  }

  return v4;
}

- (id)_actionRowSectionControllerClientOverrideWithAvailability:(id)a3 buttonModuleConfiguration:(id)a4
{
  v6 = a4;
  if ([a3 supportsPhotoSlider])
  {
    v7 = [(MUPlaceViewController *)self _actionRowSectionControllerWithButtonModuleConfiguration:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_headerButtonsSectionControllerForModuleConfiguration:(id)a3
{
  if ((self->_options & 0x200000000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = a3;
    if (MapKitIdiomIsMacCatalyst())
    {
      v5 = 1;
    }

    else
    {
      v5 = (BYTE3(self->_options) >> 5) & 1;
    }

    v7 = objc_alloc_init(MUPlaceHeaderButtonsSectionControllerConfiguration);
    [(MUPlaceHeaderButtonsSectionControllerConfiguration *)v7 setButtonModuleConfiguration:v4];

    [(MUPlaceHeaderButtonsSectionControllerConfiguration *)v7 setShowMoreButton:v5];
    [(MUPlaceHeaderButtonsSectionControllerConfiguration *)v7 setEtaProvider:self->_etaProvider];
    [(MUPlaceHeaderButtonsSectionControllerConfiguration *)v7 setCanShowDetourTime:(self->_options >> 20) & 1];
    [(MUPlaceHeaderButtonsSectionControllerConfiguration *)v7 setMenuProvider:self];
    v6 = [[MUPlaceHeaderButtonsSectionController alloc] initWithPlaceItem:self->_placeItem configuration:v7];
    [(MUPlaceHeaderButtonsSectionController *)v6 setSecondaryButtonController:0];
    [(MUPlaceHeaderButtonsSectionController *)v6 setHeaderDelegate:self];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(MKETAProvider *)self->_etaProvider cancel];
  if ((self->_options & 0x20000000) == 0)
  {
    v4 = MEMORY[0x1E696F190];
    v5 = [(MUPlaceViewControllerConfiguration *)self->_configuration developerPlaceCardAuditToken];
    v6 = [v4 sharedImageManagerWithAuditToken:v5];
    [v6 clearImageCache];
  }

  webPlacecardBridge = self->_webPlacecardBridge;
  self->_webPlacecardBridge = 0;
  v8 = webPlacecardBridge;

  v9 = +[_TtC6MapsUI24MUWebPlacecardBridgePool sharedPool];
  [v9 releaseBridge:v8];

  v10.receiver = self;
  v10.super_class = MUPlaceViewController;
  [(MUPlaceViewController *)&v10 dealloc];
}

- (id)_headerSectionControllerWithAvailability:(id)a3
{
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled]|| (self->_options & 0x80000000000) != 0)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v4 = objc_alloc_init(MUPlaceHeaderSectionControllerConfiguration);
  [(MUPlaceHeaderSectionControllerConfiguration *)v4 setSuppressContainmentPunchout:(self->_options & 0x20000000) == 0];
  options = self->_options;
  if ([(MUPlaceViewController *)self supportsDynamicLayout])
  {
    v6 = *MEMORY[0x1E696F170];
    v7 = *(MEMORY[0x1E696F170] + 8);
    BOOL = GEOConfigGetBOOL();
  }

  else
  {
    BOOL = 0;
  }

  [(MUPlaceHeaderSectionControllerConfiguration *)v4 setDrawDynamicPlacecardDebugBackground:BOOL];
  [(MUPlaceHeaderSectionControllerConfiguration *)v4 setIsDeveloperPlaceCard:(options >> 39) & 1];
  v10 = [(MUPlaceViewControllerConfiguration *)self->_configuration developerPlaceCardAuditToken];
  [(MUPlaceHeaderSectionControllerConfiguration *)v4 setDeveloperPlaceCardAuditToken:v10];

  v11 = [MEMORY[0x1E696F3B8] sharedInstance];
  v12 = [v11 userInterfaceIdiom];

  if (v12 < 2)
  {
    goto LABEL_10;
  }

  if (v12 == 2)
  {
    v13 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  if (v12 == 3)
  {
LABEL_10:
    v13 = (options & 0x8020000000) == 0;
    v14 = (options & 0x8020000000) != 0x20000000;
LABEL_12:
    [(MUPlaceHeaderSectionControllerConfiguration *)v4 setAlwaysShowExpandedVerifiedBusinessHeader:v14];
    [(MUPlaceHeaderSectionControllerConfiguration *)v4 setShouldInsetRoundCoverPhoto:v13];
  }

  v9 = [[MUPlaceHeaderSectionController alloc] initWithPlaceItem:self->_placeItem configuration:v4];
  [(MUPlaceHeaderSectionController *)v9 setHeaderDelegate:self];
  [(MUPlaceHeaderSectionController *)v9 setCardExpansionProgress:self->_verifiedHeaderExpansionProgress];

LABEL_14:

  return v9;
}

- (BOOL)supportsDynamicLayout
{
  v3 = *MEMORY[0x1E69A19F0];
  v4 = *(MEMORY[0x1E69A19F0] + 8);
  if (!GEOConfigGetBOOL())
  {
    return 0;
  }

  v5 = [(MUPlaceViewController *)self mapItem];
  v6 = [v5 _placecardLayout];
  v7 = v6 != 0;

  return v7;
}

- (void)setLocation:(id)a3
{
  v5 = a3;
  if (self->_location != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_location, a3);
    location = self->_location;
    v7 = [(MUPlaceViewController *)self inlineMapSectionController];
    [v7 setLocation:location];

    v5 = v8;
  }
}

- (void)_buildSections
{
  v161 = *MEMORY[0x1E69E9840];
  v3 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v160 = self;
    _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_DEBUG, "MUPlaceViewController: _buildSections %@", buf, 0xCu);
  }

  previousFPCFeatureFlag = self->_previousFPCFeatureFlag;
  if (previousFPCFeatureFlag != [(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    [(MUPlaceActionBarView *)self->_actionBar removeFromSuperview];
    actionBar = self->_actionBar;
    self->_actionBar = 0;

    [(MUContentStackViewProtocol *)self->_contentStackView removeFromSuperview];
    contentStackView = self->_contentStackView;
    self->_contentStackView = 0;

    [(MUPlaceViewController *)self _setupViews];
    self->_previousFPCFeatureFlag = [(MUPlaceViewController *)self isFlexiblePlaceCardEnabled];
  }

  if ([(MUPlaceViewController *)self shouldStubPlacecard])
  {
    v7 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "Stubbed place card, no place card contents will be shown", buf, 2u);
    }

    goto LABEL_103;
  }

  [(MUPlaceActionBarView *)self->_actionBar setHidden:1];
  [(MUPlaceViewController *)self _updateBottomInset];
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  obj = self->_sectionControllers;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v151 objects:v158 count:16];
  if (v8)
  {
    v132 = *v152;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v152 != v132)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v151 + 1) + 8 * i);
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v11 = [v10 sectionViews];
        v12 = [v11 countByEnumeratingWithState:&v147 objects:v157 count:16];
        if (v12)
        {
          v13 = *v148;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v148 != v13)
              {
                objc_enumerationMutation(v11);
              }

              [(MUContentStackViewProtocol *)self->_contentStackView removeArrangedSubview:*(*(&v147 + 1) + 8 * j)];
            }

            v12 = [v11 countByEnumeratingWithState:&v147 objects:v157 count:16];
          }

          while (v12);
        }

        if (objc_opt_respondsToSelector())
        {
          v15 = [v10 sectionViewController];
          [v15 removeFromParentViewController];
        }
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v151 objects:v158 count:16];
    }

    while (v8);
  }

  obja = [(MUPlaceViewController *)self mapItem];
  if (obja && (p_actionManager = &self->_actionManager, [(MUPlaceActionManager *)self->_actionManager setIsCurrentLocation:0], ([(_MKPlaceItem *)self->_placeItem options]& 1) != 0))
  {
    v17 = 1;
  }

  else
  {
    v17 = 0;
    p_actionManager = &self->_actionManager;
  }

  [(MUPlaceActionManager *)*p_actionManager setIsCurrentLocation:v17];
  v129 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = [MUPlaceDataAvailability alloc];
  v19 = [(MUPlaceViewController *)self mapItem];
  v127 = [(MUPlaceDataAvailability *)v18 initWithMapItem:v19 options:self->_options];

  v20 = [MUPlaceViewControllerSectionController alloc];
  v21 = [(MUPlaceViewController *)self mapItem];
  v22 = [(MUPlaceViewControllerConfiguration *)self->_configuration headerViewController];
  v23 = [(MUPlaceViewControllerSectionController *)v20 initWithMapItem:v21 viewController:v22];
  if (v23)
  {
    [v129 addObject:v23];
  }

  v24 = [(MUPlaceViewController *)self _headerSectionControllerWithAvailability:v127];
  if (v24)
  {
    [v129 addObject:v24];
  }

  v25 = [(MUPlaceViewController *)self placeItem];
  if (v25)
  {
    v26 = [(MUPlaceViewController *)self placeItem];
    v27 = [v26 isIntermediateMapItem];

    if ((v27 & 1) == 0)
    {
      if ((self->_options & 0x8000000000) != 0)
      {
        v28 = [(MUPlaceViewController *)self _buildDeveloperPlaceCardSectionsWithAvailability:v127];
      }

      else if ([(MUPlaceViewController *)self supportsDynamicLayout])
      {
        v28 = [(MUPlaceViewController *)self _buildForLayoutWithAvailability:v127];
      }

      else if ([obja _isMapItemTypeBrand])
      {
        v28 = [(MUPlaceViewController *)self _buildBrandCardSectionsWithAvailability:v127];
      }

      else
      {
        if ([obja _placeDisplayStyle]== 2)
        {
          [(MUPlaceViewController *)self _buildShortCardSections];
        }

        else
        {
          [(MUPlaceViewController *)self _buildStaticSectionsWithAvailability:v127];
        }
        v28 = ;
      }

      v29 = v28;
      [v129 addObjectsFromArray:{v28, v127}];
    }
  }

  v30 = [v129 copy];
  sectionControllers = self->_sectionControllers;
  self->_sectionControllers = v30;

  v32 = [(MUPlaceViewController *)self placeItem];
  if (([v32 isIntermediateMapItem] & 1) != 0 || (self->_options & 8) != 0)
  {
    v34 = 0;
  }

  else
  {
    v33 = [(MUPlaceViewController *)self mapItem];
    v34 = [v33 _canGetDirections];
  }

  options = self->_options;
  v133 = (options >> 35) & 1;
  if (([(_MKPlaceItem *)self->_placeItem options]& 1) != 0)
  {
    [(MUPlaceActionManager *)self->_actionManager setIsCurrentLocation:1];
    v36 = 0;
    v37 = 3;
  }

  else if ((options & 0x200000000) != 0 && v34 & 1 | (options >> 20) & 1)
  {
    v36 = 0;
    v37 = 4;
  }

  else
  {
    v75 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v76 = [v75 _detourInfo];
    v77 = v76 != 0;

    if (v77 && (options & 0x100000) != 0)
    {
      v37 = 2;
    }

    else
    {
      v37 = v34;
    }

    if (!((v77 && (options & 0x100000) != 0) | v34 & 1))
    {
      v36 = 0;
      goto LABEL_58;
    }

    v36 = (!v77 || (options & 0x100000) == 0) & v34;
  }

  v38 = [(MUPlaceViewController *)self headerButtonsSectionController];
  [v38 setPrimaryButtonType:v37];

  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    v39 = [(_MKPlaceItem *)self->_placeItem options];
    v40 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v41 = [v40 configuration];
    [v41 setIsCurrentLocation:v39 & 1];

    v42 = self->_options;
    v43 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v44 = [v43 configuration];
    [v44 setCanShowDetourTime:(v42 >> 20) & 1];

    v45 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v46 = [v45 configuration];
    [v46 setCanShowDirections:v34];

    v47 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v48 = [v47 configuration];
    [v48 setIsAdditionalStop:(options >> 33) & 1];

    v49 = [(MUPlaceViewController *)self webPlacecardSectionController];
    v50 = [v49 configuration];
    [v50 setIsSearchAlongRoute:v133];

    v51 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v52 = [v51 _detourInfo];
    LOBYTE(v42) = v52 == 0;

    if ((v42 & 1) == 0)
    {
      v53 = [(_MKPlaceItem *)self->_placeItem mapItem];
      v54 = [v53 _detourInfo];
      [v54 detourTime];
      v56 = v55;
      v57 = [(MUPlaceViewController *)self webPlacecardSectionController];
      v58 = [v57 configuration];
      *&v59 = v56;
      [v58 setDetourTime:v59];

      v60 = [(_MKPlaceItem *)self->_placeItem mapItem];
      v61 = [v60 _detourInfo];
      [v61 distanceToPlace];
      v63 = v62;
      v64 = [(MUPlaceViewController *)self webPlacecardSectionController];
      v65 = [v64 configuration];
      *&v66 = v63;
      [v65 setDistanceToPlace:v66];

      v67 = MEMORY[0x1E696AEC0];
      v68 = [(_MKPlaceItem *)self->_placeItem mapItem];
      v69 = [v68 _detourInfo];
      [v69 distanceToPlace];
      v71 = [v67 _mapkit_localizedDistanceStringWithMeters:v70 abbreviated:1];
      v72 = [(MUPlaceViewController *)self webPlacecardSectionController];
      v73 = [v72 configuration];
      [v73 setDistanceToPlaceString:v71];
    }

    v74 = [(MUPlaceViewController *)self webPlacecardSectionController];
    [v74 updateDirectionsMetadata];
  }

LABEL_58:
  v78 = [obja _isMapItemTypeBrand];
  if (v133)
  {
    v79 = [obja _detourInfo];
    v80 = v79 == 0;

    if (v80)
    {
      [(MKETAProvider *)self->_etaProvider setAllowsDistantETA:1];
LABEL_63:
      [(MKETAProvider *)self->_etaProvider start];
      goto LABEL_64;
    }
  }

  if ((v78 | v36))
  {
    goto LABEL_63;
  }

LABEL_64:
  headerSecondaryButtonController = self->_headerSecondaryButtonController;
  v82 = [(MUPlaceViewController *)self headerButtonsSectionController];
  [v82 setSecondaryButtonController:headerSecondaryButtonController];

  headerAlternatePrimaryButtonController = self->_headerAlternatePrimaryButtonController;
  v84 = [(MUPlaceViewController *)self headerButtonsSectionController];
  [v84 setAlternatePrimaryButtonController:headerAlternatePrimaryButtonController];

  [(MUPlaceViewController *)self _updatePersonalizedSuggestionSectionArbiterWithSections];
  location = self->_location;
  v86 = [(MUPlaceViewController *)self inlineMapSectionController];
  [v86 setLocation:location];

  v134 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v87 = self->_sectionControllers;
  v88 = [(NSArray *)v87 countByEnumeratingWithState:&v143 objects:v156 count:16];
  if (!v88)
  {
    goto LABEL_79;
  }

  v89 = *v144;
  do
  {
    for (k = 0; k != v88; ++k)
    {
      if (*v144 != v89)
      {
        objc_enumerationMutation(v87);
      }

      v91 = *(*(&v143 + 1) + 8 * k);
      [v91 setDelegate:self];
      [v91 setAnalyticsDelegate:self->_analyticsController];
      v92 = [(MUPlaceViewController *)self personalizedSuggestionSectionArbiter];
      [v91 setPersonalizedSuggestionsArbiterDelegate:v92];

      v93 = [v91 sectionViews];
      if ([v93 count])
      {
        v94 = [v91 hasContent];

        if (!v94)
        {
          goto LABEL_73;
        }

        v93 = [v91 sectionViews];
        [v134 addObjectsFromArray:v93];
      }

LABEL_73:
      if (objc_opt_respondsToSelector())
      {
        v95 = [v91 sectionViewController];
        if (v95)
        {
          [(MUPlaceViewController *)self addChildViewController:v95];
          [v95 didMoveToParentViewController:self];
        }
      }
    }

    v88 = [(NSArray *)v87 countByEnumeratingWithState:&v143 objects:v156 count:16];
  }

  while (v88);
LABEL_79:

  if ([(_MKPlaceItem *)self->_placeItem isIntermediateMapItem])
  {
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v96 = self->_sectionControllers;
    v97 = [(NSArray *)v96 countByEnumeratingWithState:&v139 objects:v155 count:16];
    if (v97)
    {
      v98 = *v140;
      do
      {
        for (m = 0; m != v97; ++m)
        {
          if (*v140 != v98)
          {
            objc_enumerationMutation(v96);
          }

          v100 = *(*(&v139 + 1) + 8 * m);
          v101 = [(MUPlaceViewController *)self headerSectionController];
          v102 = v100 == v101;

          if (!v102)
          {
            v103 = [v100 sectionView];
            [v103 setAlpha:0.0];
          }
        }

        v97 = [(NSArray *)v96 countByEnumeratingWithState:&v139 objects:v155 count:16];
      }

      while (v97);
    }
  }

  v104 = self->_contentStackView;
  v105 = [v134 copy];
  [(MUContentStackViewProtocol *)v104 setArrangedSubviews:v105];

  [(MUPlaceViewController *)self _applyCustomSpacings];
  [(MUPlaceViewController *)self _updateContentAlpha];
  [(MUPlaceViewController *)self hideContentIfLoading];
  v106 = [(MUPlaceViewController *)self inlineMapSectionController];
  if (v106)
  {
    v107 = [obja _hasResolvablePartialInformation];

    if (v107)
    {
      v108 = [MEMORY[0x1E696F298] sharedService];
      v109 = [obja _addressFormattedAsSinglelineAddress];
      v110 = [v108 ticketForForwardGeocodeString:v109 traits:0];

      objc_initWeak(buf, self);
      v137[0] = MEMORY[0x1E69E9820];
      v137[1] = 3221225472;
      v137[2] = __39__MUPlaceViewController__buildSections__block_invoke;
      v137[3] = &unk_1E8219220;
      objc_copyWeak(&v138, buf);
      [v110 submitWithHandler:v137 networkActivity:0];
      objc_destroyWeak(&v138);
      objc_destroyWeak(buf);
      goto LABEL_101;
    }
  }

  v110 = [(MUPlaceViewController *)self inlineMapSectionController];
  if (v110)
  {
    v111 = [(MUPlaceViewController *)self mapItem];
    v112 = [v111 url];
    if (!v112)
    {

      goto LABEL_101;
    }

    v113 = MEMORY[0x1E696F4B0];
    v114 = [(MUPlaceViewController *)self mapItem];
    v115 = [v114 url];
    LODWORD(v113) = [v113 isValidMapURL:v115];

    if (v113)
    {
      v116 = objc_alloc(MEMORY[0x1E696F4B0]);
      v117 = [(MUPlaceViewController *)self mapItem];
      v118 = [v117 url];
      v110 = [v116 initWithURL:v118];

      [v110 parseIncludingCustomParameters:1];
      v119 = [(MUPlaceViewController *)self mapItem];
      v120 = [v119 _identifier];
      if (v120)
      {
        goto LABEL_99;
      }

      v121 = [v110 searchUID] == 0;

      if (!v121)
      {
        v122 = objc_alloc(MEMORY[0x1E696F280]);
        v123 = [v110 searchUID];
        [v110 centerCoordinate];
        v119 = [v122 initWithMUID:v123 resultProviderID:0 coordinate:?];
        v124 = [MEMORY[0x1E696F298] sharedService];
        v125 = [v110 contentProviderID];
        v120 = [v124 ticketForNonExpiredIdentifier:v119 resultProviderID:0 contentProvider:v125 traits:0];

        objc_initWeak(buf, self);
        v135[0] = MEMORY[0x1E69E9820];
        v135[1] = 3221225472;
        v135[2] = __39__MUPlaceViewController__buildSections__block_invoke_2;
        v135[3] = &unk_1E8219220;
        objc_copyWeak(&v136, buf);
        [v120 submitWithHandler:v135 networkActivity:0];
        objc_destroyWeak(&v136);
        objc_destroyWeak(buf);
LABEL_99:
      }

LABEL_101:
    }
  }

  v7 = obja;
LABEL_103:

  v126 = *MEMORY[0x1E69E9840];
}

void __39__MUPlaceViewController__buildSections__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (!a3 && WeakRetained && [v12 count])
  {
    v7 = [v12 firstObject];
    v8 = v7;
    if ((v6[1424] & 1) == 0)
    {
      v9 = [v7 _displayMapRegion];

      if (v9)
      {
        v10 = [v6 inlineMapSectionController];
        [v10 updateWithMapItem:v8];
      }
    }

    v11 = [v6 contact];
    [v6 _setMapItem:v8 contact:v11 updateOriginalContact:0];
  }
}

void __39__MUPlaceViewController__buildSections__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (!a3 && WeakRetained && [v12 count])
  {
    v7 = [v12 firstObject];
    v8 = v7;
    if ((v6[1424] & 1) == 0)
    {
      v9 = [v7 _displayMapRegion];

      if (v9)
      {
        v10 = [v6 inlineMapSectionController];
        [v10 updateWithMapItem:v8];
      }
    }

    if (v8)
    {
      [v8 _placeCardContact];
    }

    else
    {
      [v6 contact];
    }
    v11 = ;
    [v6 _setMapItem:v8 contact:v11 updateOriginalContact:0];
  }
}

- (id)_buildForLayoutWithAvailability:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    v6 = [(MUPlaceViewController *)self _webBasedPlacecardViewControllerForAvailability:v4];
    if (v6)
    {
      [v5 addObject:v6];
    }

    v7 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "End building web-based placecard", buf, 2u);
    }
  }

  else
  {
    v8 = [(MUPlaceViewController *)self mapItem];
    v9 = [v8 _placecardLayout];

    v10 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_INFO, "Building placecard from dynamic layout", buf, 2u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = v9;
    v11 = [v9 modules];
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = MUGetPlaceCardLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [v16 type] - 1;
            v19 = @"MODULE_TYPE_UNKNOWN";
            if (v18 <= 0x2D)
            {
              v19 = off_1E8218858[v18];
            }

            *buf = 138412290;
            v36 = v19;
            _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_INFO, "Building module %@", buf, 0xCu);
          }

          switch([v16 type])
          {
            case 2u:
              v21 = [v16 configuration];
              v22 = [v21 headerButtonConfig];
              v23 = [(MUPlaceViewController *)self _headerButtonsSectionControllerForModuleConfiguration:v22];
              goto LABEL_40;
            case 3u:
              v20 = [(MUPlaceViewController *)self _inlineMapSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 4u:
              v20 = [(MUPlaceViewController *)self _photoSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 5u:
              v21 = [v16 configuration];
              v22 = [v21 placeDetailsConfig];
              v23 = [(MUPlaceViewController *)self _placeInfoSectionControllerForAvailability:v4 moduleConfiguration:v22];
              goto LABEL_40;
            case 6u:
              v20 = [(MUPlaceViewController *)self _transitDeparturesSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 8u:
              v20 = [(MUPlaceViewController *)self _encyclopedicSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0xAu:
              v21 = [v16 configuration];
              v22 = [v21 businessInfoConfig];
              v23 = [(MUPlaceViewController *)self _amenitiesSectionControllerForAvailability:v4 moduleConfiguration:v22];
              goto LABEL_40;
            case 0xBu:
            case 0x21u:
            case 0x24u:
              v20 = [(MUPlaceViewController *)self _ratingsAndReviewsSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0xCu:
              v21 = [v16 configuration];
              v22 = [v21 actionButtonConfig];
              v23 = [(MUPlaceViewController *)self _actionRowSectionControllerWithButtonModuleConfiguration:v22];
              goto LABEL_40;
            case 0xFu:
              v20 = [(MUPlaceViewController *)self _officialAppSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0x10u:
            case 0x1Eu:
              v20 = [(MUPlaceViewController *)self _browseCategorySectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0x11u:
              v20 = [(MUPlaceViewController *)self _venueInfoSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0x13u:
            case 0x14u:
              v20 = [(MUPlaceViewController *)self _annotatedItemSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0x17u:
              v20 = [(MUPlaceViewController *)self _placeFooterSectionController];
              goto LABEL_50;
            case 0x19u:
              v24 = [v16 configuration];
              v25 = [v24 webContentConfig];
              v26 = [(MUPlaceViewController *)self _webContentSectionControllerForConfiguration:v25];

              if (!v26)
              {
                continue;
              }

              goto LABEL_51;
            case 0x1Au:
            case 0x26u:
              v21 = [v16 configuration];
              v22 = [v21 relatedPlaceConfig];
              v23 = [(MUPlaceViewController *)self _relatedPlaceSectionControllerForAvailability:v4 config:v22];
              goto LABEL_40;
            case 0x1Du:
              v20 = [(MUPlaceViewController *)self _personalGuidesSectionController];
              goto LABEL_50;
            case 0x1Fu:
              v20 = [(MUPlaceViewController *)self _curatedGuidesSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0x23u:
              v21 = [v16 configuration];
              v22 = [v21 placeRibbonConfig];
              v23 = [(MUPlaceViewController *)self _placeRibbonSectionControllerForAvailability:v4 placeRibbonConfiguration:v22];
              goto LABEL_40;
            case 0x25u:
              v20 = [(MUPlaceViewController *)self _placeDescriptionSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0x27u:
              v21 = [v16 configuration];
              v22 = [v21 unifiedActionConfig];
              v23 = [(MUPlaceViewController *)self _unifiedActionRowSectionControllerForAvailability:v4 buttonModuleConfiguration:v22];
              goto LABEL_40;
            case 0x28u:
              v20 = [(MUPlaceViewController *)self _placeEnrichmentSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0x29u:
              v20 = [(MUPlaceViewController *)self _callToActionSuggestionSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0x2Au:
              v21 = [(MUPlaceViewController *)self mapItem];
              v26 = [(MUPlaceViewController *)self _evChargingSectionControllerForForAvailability:v4 mapItem:v21];
              goto LABEL_41;
            case 0x2Bu:
              v20 = [(MUPlaceViewController *)self _hikingTrailsSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0x2Cu:
              v20 = [(MUPlaceViewController *)self _hikingTipSectionControllerForAvailability:v4];
              goto LABEL_50;
            case 0x2Du:
              v20 = [(MUPlaceViewController *)self _notesSectionControllerForAvailability:v4];
LABEL_50:
              v26 = v20;
              if (v20)
              {
                goto LABEL_51;
              }

              continue;
            case 0x2Eu:
              v21 = [v16 configuration];
              v22 = [v21 actionBarConfig];
              v23 = [(MUPlaceViewController *)self _actionBarSectionControllerForAvailability:v4 moduleConfiguration:v22];
LABEL_40:
              v26 = v23;

LABEL_41:
              if (!v26)
              {
                continue;
              }

LABEL_51:
              [v5 addObject:v26];

              break;
            default:
              continue;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v13);
    }

    v7 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "End building placecard from dynamic layout", buf, 2u);
    }

    v6 = v30;
  }

  v27 = [v5 copy];
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)_buildDeveloperPlaceCardSectionsWithAvailability:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    v6 = [(MUPlaceViewController *)self _webBasedPlacecardViewControllerForAvailability:v4];
    if (v6)
    {
      [v5 addObject:v6];
    }

    v7 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "End building web-based placecard", v13, 2u);
    }

    v8 = [v5 copy];
  }

  else
  {
    v9 = [(MUPlaceViewController *)self _inlineMapSectionControllerForAvailability:v4];
    if (v9)
    {
      [v5 addObject:v9];
    }

    v10 = [(MUPlaceViewController *)self _placeInfoSectionControllerForAvailability:v4 moduleConfiguration:0];
    if (v10)
    {
      [v5 addObject:v10];
    }

    v11 = [(MUPlaceViewController *)self _placeFooterSectionController];
    if (v11)
    {
      [v5 addObject:v11];
    }

    v8 = [v5 copy];
  }

  return v8;
}

- (id)_buildShortCardSections
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MUPlaceViewController *)self _headerButtonsSectionControllerForModuleConfiguration:0];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(MUPlaceViewController *)self _actionRowSectionControllerWithButtonModuleConfiguration:0];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(MUPlaceViewController *)self _placeFooterSectionController];
  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = [v3 copy];

  return v7;
}

- (id)_buildBrandCardSectionsWithAvailability:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(MUPlaceViewController *)self _actionRowSectionControllerWithButtonModuleConfiguration:0];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [(MUPlaceViewController *)self _placeInfoSectionControllerForAvailability:v4 moduleConfiguration:0];
  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [(MUPlaceViewController *)self _inlineMapSectionControllerForAvailability:v4];
  if (v8)
  {
    [v5 addObject:v8];
  }

  v9 = [(MUPlaceViewController *)self _placeFooterSectionController];
  if (v9)
  {
    [v5 addObject:v9];
  }

  v10 = [v5 copy];

  return v10;
}

- (id)_buildStaticSectionsWithAvailability:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    v6 = [(MUPlaceViewController *)self _webBasedPlacecardViewControllerForAvailability:v4];
    if (v6)
    {
      [v5 addObject:v6];
    }

    v7 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "End building web-based placecard", buf, 2u);
    }

    v8 = [v5 copy];
  }

  else
  {
    v9 = [(MUPlaceViewController *)self _unifiedActionRowSectionControllerForAvailability:v4 buttonModuleConfiguration:0];
    if (v9)
    {
      [v5 addObject:v9];
    }

    v10 = [(MUPlaceViewController *)self _placeRibbonSectionControllerForAvailability:v4 placeRibbonConfiguration:0];
    if (v10)
    {
      [v5 addObject:v10];
    }

    v11 = [(MUPlaceViewController *)self _callToActionSuggestionSectionControllerForAvailability:v4];
    if (v11)
    {
      [v5 addObject:v11];
    }

    v12 = [(MUPlaceViewController *)self _notesSectionControllerForAvailability:v4];
    if (v12)
    {
      [v5 addObject:v12];
    }

    v13 = [(MUPlaceViewController *)self _transitDeparturesSectionControllerForAvailability:v4];
    if (v13)
    {
      [v5 addObject:v13];
    }

    v14 = [(MUPlaceViewController *)self _browseCategorySectionControllerForAvailability:v4];
    if (v14)
    {
      [v5 addObject:v14];
    }

    v15 = [(MUPlaceViewController *)self _venueInfoSectionControllerForAvailability:v4];
    if (v15)
    {
      [v5 addObject:v15];
    }

    v16 = [(MUPlaceViewController *)self _photoSectionControllerForAvailability:v4];
    if (v16)
    {
      [v5 addObject:v16];
    }

    v17 = [(MUPlaceViewController *)self _placeEnrichmentSectionControllerForAvailability:v4];
    if (v17)
    {
      [v5 addObject:v17];
    }

    v18 = [(MUPlaceViewController *)self _hikingTipSectionControllerForAvailability:v4];
    if (v18)
    {
      [v5 addObject:v18];
    }

    v19 = [(MUPlaceViewController *)self _contactSharedLocationSectionControllerForAvailability:v4];
    if (v19)
    {
      [v5 addObject:v19];
    }

    v20 = [(MUPlaceViewController *)self _inlineMapSectionControllerForAvailability:v4];
    if (v20)
    {
      [v5 addObject:v20];
    }

    v21 = [(MUPlaceViewController *)self _personalGuidesSectionController];
    if (v21)
    {
      [v5 addObject:v21];
    }

    v22 = [(MUPlaceViewController *)self _annotatedItemSectionControllerForAvailability:v4];
    if (v22)
    {
      [v5 addObject:v22];
    }

    v23 = [(MUPlaceViewController *)self _curatedGuidesSectionControllerForAvailability:v4];
    if (v23)
    {
      [v5 addObject:v23];
    }

    v24 = [(MUPlaceViewController *)self _placeDescriptionSectionControllerForAvailability:v4];
    if (v24)
    {
      [v5 addObject:v24];
    }

    v25 = [(MUPlaceViewController *)self _encyclopedicSectionControllerForAvailability:v4];
    if (v25)
    {
      [v5 addObject:v25];
    }

    v26 = [(MUPlaceViewController *)self _amenitiesSectionControllerForAvailability:v4 moduleConfiguration:0];
    if (v26)
    {
      [v5 addObject:v26];
    }

    v27 = [(MUPlaceViewController *)self _ratingsAndReviewsSectionControllerForAvailability:v4];
    if (v27)
    {
      [v5 addObject:v27];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v28 = [(MUPlaceViewController *)self mapItem];
    v29 = [v28 _relatedPlaceLists];

    v30 = [v29 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v43;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v43 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [(MUPlaceViewController *)self _relatedPlaceSectionControllerForAvailability:v4 relatedPlaceList:*(*(&v42 + 1) + 8 * i)];
          if (v34)
          {
            [v5 addObject:v34];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v31);
    }

    v35 = [(MUPlaceViewController *)self _hikingTrailsSectionControllerForAvailability:v4];
    if (v35)
    {
      [v5 addObject:v35];
    }

    v36 = [(MUPlaceViewController *)self _officialAppSectionControllerForAvailability:v4];
    if (v36)
    {
      [v5 addObject:v36];
    }

    v37 = [(MUPlaceViewController *)self _placeInfoSectionControllerForAvailability:v4 moduleConfiguration:0];
    if (v37)
    {
      [v5 addObject:v37];
    }

    v38 = [(MUPlaceViewController *)self _placeFooterSectionController];
    if (v38)
    {
      [v5 addObject:v38];
    }

    v39 = [(MUPlaceViewController *)self _actionBarSectionControllerForAvailability:v4 moduleConfiguration:0];
    if (v39)
    {
      [v5 addObject:v39];
    }

    v8 = [v5 copy];
  }

  v40 = *MEMORY[0x1E69E9840];

  return v8;
}

- (unint64_t)options
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v5[5] = v7;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__MUPlaceViewController_options__block_invoke;
  v6[3] = &unk_1E8219B98;
  v6[4] = self;
  v6[5] = v7;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__MUPlaceViewController_options__block_invoke_2;
  v5[3] = &unk_1E8219B98;
  v5[4] = self;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v6 oldUIBlock:v5];
  options = self->_options;
  _Block_object_dispose(v7, 8);
  return options;
}

uint64_t __32__MUPlaceViewController_options__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1000) options];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setOptions:(unint64_t)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__MUPlaceViewController_setOptions___block_invoke;
  v4[3] = &unk_1E82191F8;
  v4[4] = self;
  v4[5] = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__MUPlaceViewController_setOptions___block_invoke_2;
  v3[3] = &unk_1E82191F8;
  v3[4] = self;
  v3[5] = a3;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v4 oldUIBlock:v3];
}

void *__36__MUPlaceViewController_setOptions___block_invoke(void *result)
{
  v2 = result[4];
  v3 = result[5];
  if (*(v2 + 1424) != v3)
  {
    v4 = result;
    *(v2 + 1424) = v3;
    [*(result[4] + 1056) updateWithPlaceItem:*(result[4] + 1024) options:*(result[4] + 1424)];
    result = v4[4];
    if (result[128])
    {

      return [result _updateSections];
    }
  }

  return result;
}

- (void)setShowContactActions:(BOOL)a3
{
  v3 = a3;
  v5 = [(MUPlaceViewController *)self showContactActions];
  if (self->_showContactActions != v3)
  {
    self->_showContactActions = v3;
    if (v5 != [(MUPlaceViewController *)self showContactActions])
    {
      if (self->_placeItem)
      {
        [(MUPlaceActionManager *)self->_actionManager setShowContactActions:self->_showContactActions];
        v6 = [(MUPlaceViewController *)self mapsAppDelegate];
        v7 = objc_opt_respondsToSelector();

        if (v7)
        {
          v8 = [(MUPlaceViewController *)self mapsAppDelegate];
          [v8 placeViewControllerDidUpdateContactActionsAvailability:self];
        }
      }
    }
  }
}

- (void)_calculateShowingContactActionsWithCompletion:(id)a3
{
  v5 = a3;
  if ((self->_options & 0x8000000000) != 0)
  {
    goto LABEL_11;
  }

  placeItem = self->_placeItem;
  if (!placeItem)
  {
    goto LABEL_11;
  }

  v7 = [(_MKPlaceItem *)placeItem contact];
  if (v7)
  {
    v3 = [(_MKPlaceItem *)self->_placeItem contact];
    if ([v3 hasBeenPersisted])
    {
      goto LABEL_10;
    }
  }

  if (([(_MKPlaceItem *)self->_placeItem options]& 8) != 0)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = [(MUPlaceViewController *)self contactStore];
  v9 = [v8 isGuardianRestrictedCNContainer];

  if (v7)
  {

    if (v9)
    {
      goto LABEL_11;
    }
  }

  else if (v9)
  {
    goto LABEL_11;
  }

  if (([(_MKPlaceItem *)self->_placeItem options]& 2) != 0)
  {
    goto LABEL_18;
  }

  v10 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v11 = [v10 _geoMapItem];
  if ([v11 _placeType] == 10)
  {

    goto LABEL_18;
  }

  v12 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v13 = [v12 _geoMapItem];
  v14 = [v13 _placeType];

  if (v14 == 17)
  {
LABEL_18:
    v15 = [(_MKPlaceItem *)self->_placeItem mapItem];
    if ([v15 _hasMUID])
    {
      v16 = [(MUPlaceViewController *)self contactStore];
      v17 = [v16 hasContactAccess];

      if (v17)
      {
        v18 = [(MUPlaceViewController *)self contactStore];
        v19 = [(_MKPlaceItem *)self->_placeItem mapItem];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __71__MUPlaceViewController__calculateShowingContactActionsWithCompletion___block_invoke;
        v20[3] = &unk_1E82184F8;
        v21 = v5;
        [v18 fetchStoredContactForMatchingMapItem:v19 callbackQueue:MEMORY[0x1E69E96A0] completion:v20];

        goto LABEL_12;
      }
    }

    else
    {
    }

    (*(v5 + 2))(v5, 1);
    goto LABEL_12;
  }

LABEL_11:
  (*(v5 + 2))(v5, 0);
LABEL_12:
}

- (id)_contactForEditOperations
{
  v3 = [(MUPlaceViewController *)self originalContact];
  if (v3)
  {
    [(MUPlaceViewController *)self originalContact];
  }

  else
  {
    [(MUPlaceViewController *)self contact];
  }
  v4 = ;

  return v4;
}

- (id)contactStore
{
  if ((self->_options & 0x8000000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    contactStore = self->_contactStore;
    if (!contactStore)
    {
      v5 = objc_alloc_init(MUContactStore);
      v6 = self->_contactStore;
      self->_contactStore = v5;

      [(MUContactStore *)self->_contactStore registerObserver:self queue:MEMORY[0x1E69E96A0]];
      contactStore = self->_contactStore;
    }

    v7 = contactStore;
  }

  return v7;
}

- (void)_didResolveAttribution:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v4))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MUPlaceAttributionFinishedResolving", "", &v8, 2u);
  }

  v5 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MUPlaceViewController *)self mapItem];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_DEBUG, "Attribution for mapItem %@ finished resolving", &v8, 0xCu);
  }

  [(MUPlaceViewController *)self _updateSections];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)ETAProviderLocationUpdated:(id)a3
{
  v4 = [a3 currentLocation];
  [(MUPlaceViewController *)self setLocation:v4];
}

- (int)mapTypeForETAProvider:(id)a3
{
  v4 = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = [v6 mapTypeForPlaceViewController:self];

  return v7;
}

- (void)_captureRevealEventIfNeeded
{
  if (self->_impressionsCalculator)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    impressionsSessionIdentifier = self->_impressionsSessionIdentifier;
    self->_impressionsSessionIdentifier = v3;

    [(MUImpressionsCalculator *)self->_impressionsCalculator setSessionIdentifier:self->_impressionsSessionIdentifier];
  }

  if ([(MUPlaceCardAnalyticsController *)self->_analyticsController instrumentRevealIfNeededWithImpressionsSessionId:self->_impressionsSessionIdentifier])
  {
    v6 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v5 = [v6 _identifier];
    [(MUPlaceViewController *)self setMapItemIdentifierIntrumentedForReveal:v5];
  }
}

- (void)_setPlaceItem:(id)a3 updateOriginalContact:(BOOL)a4
{
  v6 = a4;
  v94 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 mapItem];
  v10 = [(_MKPlaceItem *)self->_placeItem mapItem];
  if (v9 != v10)
  {
    goto LABEL_2;
  }

  v63 = [v8 mapItem];
  if (!v63)
  {
    v4 = [v8 contact];
    v78 = [(_MKPlaceItem *)self->_placeItem contact];
    v5 = v78;
    if (v4 != v78)
    {

LABEL_2:
      goto LABEL_3;
    }
  }

  v64 = [v8 isIntermediateMapItem];
  v65 = v64 ^ [(_MKPlaceItem *)self->_placeItem isIntermediateMapItem];
  if (v63)
  {
  }

  else
  {
  }

  if ((v65 & 1) == 0)
  {
    LOBYTE(v73) = 0;
    goto LABEL_59;
  }

LABEL_3:
  v11 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v8 mapItem];
    v13 = [v8 contact];
    *buf = 138412802;
    v89 = v12;
    v90 = 2112;
    v91 = v13;
    v92 = 1024;
    v93 = [v8 isIntermediateMapItem];
    _os_log_impl(&dword_1C5620000, v11, OS_LOG_TYPE_DEBUG, "Setting placeItem with mapItem %@, contact %@, isIntermediateMapItem %d", buf, 0x1Cu);
  }

  if (([v8 isIntermediateMapItem] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 postNotificationName:@"MUPlaceViewControllerWillUpdatePlaceItemNotification" object:self];
  }

  if (v6)
  {
    v15 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v8 contact];
      *buf = 138412290;
      v89 = v16;
      _os_log_impl(&dword_1C5620000, v15, OS_LOG_TYPE_DEBUG, "Updating original contact with contact %@", buf, 0xCu);
    }

    v17 = [v8 contact];
    [(MUPlaceViewController *)self setOriginalContact:v17];
  }

  v18 = [v8 mapItem];
  if (!v18)
  {
    v19 = [v8 contact];
    v20 = v19 == 0;

    if (v20)
    {
      goto LABEL_15;
    }

    v21 = objc_alloc(MEMORY[0x1E696F270]);
    v22 = [v8 contact];
    v18 = [v21 initWithContact:v22];

    v23 = MEMORY[0x1E696F460];
    v24 = [v8 contact];
    v25 = [v23 placeItemWithMapItem:v18 contact:v24 options:16];

    v8 = v25;
  }

LABEL_15:
  v26 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v27 = v26 == 0;

  v28 = MEMORY[0x1E696F4D0];
  if (!v27)
  {
    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    v30 = [(_MKPlaceItem *)self->_placeItem mapItem];
    [v29 removeObserver:self name:*v28 object:v30];
  }

  v31 = self->_placeItem;
  if (v31 && !v6 && self->_active)
  {
    [(MUPlaceCardAnalyticsController *)self->_analyticsController instrumentConceal];
  }

  headerSecondaryButtonController = self->_headerSecondaryButtonController;
  self->_headerSecondaryButtonController = 0;

  headerAlternatePrimaryButtonController = self->_headerAlternatePrimaryButtonController;
  self->_headerAlternatePrimaryButtonController = 0;

  contact = self->_contact;
  self->_contact = 0;

  offlineFeatureDiscoveryView = self->_offlineFeatureDiscoveryView;
  self->_offlineFeatureDiscoveryView = 0;

  v36 = *MEMORY[0x1E696F158];
  v37 = *(MEMORY[0x1E696F158] + 8);
  if (GEOConfigGetBOOL() && [(MUPlaceViewController *)self _hasSerializedMapItemFile])
  {
    v38 = [(MUPlaceViewController *)self mapItemFromSerialized];
    v39 = [MEMORY[0x1E696F488] placeItemWithMapItem:v38 options:0];
    placeItem = self->_placeItem;
    self->_placeItem = v39;
  }

  else
  {
    v41 = v8;
    v38 = self->_placeItem;
    self->_placeItem = v41;
  }

  [(MUPlaceViewController *)self setPlaceInCollections:0];
  [(MUPlaceViewController *)self setPlaceInShortcuts:0];
  [(MUPlaceViewController *)self setPlaceHasRating:0];
  [(MUPlaceViewController *)self setPlaceInFavoritesGuide:0];
  [(MUPlaceViewController *)self updateAddToLibraryActionState];
  [(MUPlaceViewController *)self updateAddNoteActionState];
  if (![(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    [(MUPlaceViewController *)self setOfflineMapProvider:0];
  }

  objc_initWeak(buf, self);
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __61__MUPlaceViewController__setPlaceItem_updateOriginalContact___block_invoke;
  v86[3] = &unk_1E8219D10;
  objc_copyWeak(&v87, buf);
  [(MUPlaceViewController *)self _calculateShowingContactActionsWithCompletion:v86];
  [(MKPlaceItemActionDataProvider *)self->_actionDataProvider updateWithPlaceItem:self->_placeItem options:self->_options];
  [(MKETAProvider *)self->_etaProvider cancel];
  v42 = [objc_alloc(MEMORY[0x1E696F1D0]) initWithPlaceItem:self->_placeItem];
  etaProvider = self->_etaProvider;
  self->_etaProvider = v42;

  [(MKETAProvider *)self->_etaProvider setDelegate:self];
  [(MKETAProvider *)self->_etaProvider addObserver:self];
  v44 = [(MKETAProvider *)self->_etaProvider currentLocation];
  location = self->_location;
  self->_location = v44;

  v46 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v47 = v46 == 0;

  if (!v47)
  {
    v48 = [MEMORY[0x1E696AD88] defaultCenter];
    v49 = [(_MKPlaceItem *)self->_placeItem mapItem];
    [v48 addObserver:self selector:sel__didResolveAttribution_ name:*v28 object:v49];
  }

  v50 = [(MUPlaceViewController *)self mapsAppDelegate];
  v51 = objc_opt_respondsToSelector();

  if (v51)
  {
    v52 = [(MUPlaceViewController *)self mapsAppDelegate];
    v53 = [v52 secondaryButtonControllerForPlaceViewController:self];
    v54 = self->_headerSecondaryButtonController;
    self->_headerSecondaryButtonController = v53;
  }

  v55 = [(MUPlaceViewController *)self mapsAppDelegate];
  v56 = objc_opt_respondsToSelector();

  if (v56)
  {
    v57 = [(MUPlaceViewController *)self mapsAppDelegate];
    v58 = [v57 alternatePrimaryButtonControllerForPlaceViewController:self];
    v59 = self->_headerAlternatePrimaryButtonController;
    self->_headerAlternatePrimaryButtonController = v58;
  }

  v60 = [(MUPlaceViewController *)self mapItem];
  if (v60 && (p_actionManager = &self->_actionManager, [(MUPlaceActionManager *)self->_actionManager setIsCurrentLocation:0], ([(_MKPlaceItem *)self->_placeItem options]& 1) != 0))
  {
    v62 = 1;
  }

  else
  {
    v62 = 0;
    p_actionManager = &self->_actionManager;
  }

  [(MUPlaceActionManager *)*p_actionManager setIsCurrentLocation:v62];
  v66 = [(MUPlaceViewController *)self mapItem];
  v67 = [v66 _enrichmentInfo];
  v68 = [v67 showcaseId];
  v69 = [MEMORY[0x1E69A15A0] sharedData];
  [v69 setPlaceCardPlaceActionDetailsShowcaseId:v68];

  [(MUEVChargerAvailabilityProvider *)self->_evChargerAvailabilityProvider setIsActive:0];
  v70 = +[MapsUIUtilities isMapsProcess];
  if (self->_placeItem)
  {
    v71 = [[_TtC6MapsUI31MUEVChargerAvailabilityProvider alloc] initWithPlaceItem:self->_placeItem canAccessVirtualGarage:v70];
    evChargerAvailabilityProvider = self->_evChargerAvailabilityProvider;
    self->_evChargerAvailabilityProvider = v71;
  }

  [(MUPlaceViewController *)self scrollToTopAnimated:0];
  [(MUPlaceViewController *)self _updateSections];
  [(MUPlaceViewController *)self _updatePocketInsets];
  if ([(_MKPlaceItem *)v31 isIntermediateMapItem])
  {
    v73 = [(_MKPlaceItem *)self->_placeItem isIntermediateMapItem]^ 1;
  }

  else
  {
    LOBYTE(v73) = 0;
  }

  if (([(_MKPlaceItem *)self->_placeItem isIntermediateMapItem]& 1) != 0)
  {
    goto LABEL_58;
  }

  v74 = [MEMORY[0x1E69A2398] sharedPlatform];
  if (![v74 isInternalInstall])
  {
    goto LABEL_57;
  }

  BOOL = GEOConfigGetBOOL();

  if (BOOL)
  {
    if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
    {
      [MEMORY[0x1E69DC888] greenColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blueColor];
    }
    v76 = ;
    v77 = v76;
    -[CALayer setBackgroundColor:](self->_debugWebPlacecardIndicatorLayer, "setBackgroundColor:", [v76 CGColor]);

    v74 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v74 setFromValue:&unk_1F450E1F8];
    [v74 setToValue:&unk_1F450E208];
    [v74 setDuration:0.25];
    LODWORD(v79) = 1.0;
    [v74 setRepeatCount:v79];
    [v74 setAutoreverses:1];
    [v74 setRemovedOnCompletion:1];
    [v74 setFillMode:*MEMORY[0x1E69797E8]];
    [(CALayer *)self->_debugWebPlacecardIndicatorLayer addAnimation:v74 forKey:@"opacityAnimation"];
LABEL_57:
  }

LABEL_58:

  objc_destroyWeak(&v87);
  objc_destroyWeak(buf);

LABEL_59:
  v80 = [(MUPlaceViewController *)self mapItemIdentifierIntrumentedForReveal];
  if (!v80)
  {
    if (!+[MapsUIUtilities isMapsProcess])
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v81 = [(MUPlaceViewController *)self mapItemIdentifierIntrumentedForReveal];
  v82 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v83 = [v82 _identifier];
  if (!(v73 & 1 | (([v81 isEqual:v83] & 1) == 0)))
  {

    goto LABEL_66;
  }

  v84 = +[MapsUIUtilities isMapsProcess];

  if (v84)
  {
LABEL_64:
    [(MUImpressionsCalculator *)self->_impressionsCalculator setActive:0];
    [(MUPlaceViewController *)self _captureRevealEventIfNeeded];
    [(MUImpressionsCalculator *)self->_impressionsCalculator setActive:self->_active];
  }

LABEL_66:
  if (![(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    [(MUPlaceViewController *)self _updateActionBarDataSources];
  }

  v85 = *MEMORY[0x1E69E9840];
}

void __61__MUPlaceViewController__setPlaceItem_updateOriginalContact___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setShowContactActions:a2];
    WeakRetained = v4;
  }
}

- (void)_setMapItem:(id)a3 contact:(id)a4 updateOriginalContact:(BOOL)a5
{
  if (a4)
  {
    [MEMORY[0x1E696F460] placeItemWithMapItem:a3 contact:a4 options:16 * (a3 == 0)];
  }

  else
  {
    v8 = MEMORY[0x1E696F488];
    v9 = a3;
    [v8 placeItemWithMapItem:v9 options:{objc_msgSend(v9, "isCurrentLocation")}];
  }
  v10 = ;

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__MUPlaceViewController__setMapItem_contact_updateOriginalContact___block_invoke;
  v15[3] = &unk_1E82184D0;
  v15[4] = self;
  v16 = v10;
  v17 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__MUPlaceViewController__setMapItem_contact_updateOriginalContact___block_invoke_2;
  v12[3] = &unk_1E82184D0;
  v12[4] = self;
  v13 = v16;
  v14 = a5;
  v11 = v16;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v15 oldUIBlock:v12];
}

- (id)mapItemFromSerialized
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"SavedMapItem.json"];

  v12 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3 options:4 error:&v12];
  v5 = v12;
  v11 = v5;
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v11];
  v7 = v11;

  v8 = [objc_alloc(MEMORY[0x1E69A21E0]) initWithJSON:v6];
  v9 = [objc_alloc(MEMORY[0x1E696F270]) initWithGeoMapItem:v8 isPlaceHolderPlace:0];

  return v9;
}

- (BOOL)_hasSerializedMapItemFile
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"SavedMapItem.json"];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

- (id)contact
{
  contact = self->_contact;
  if (!contact)
  {
    v4 = [(_MKPlaceItem *)self->_placeItem contact];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v7 = self->_contact;
      self->_contact = v6;
    }

    else
    {
      v7 = [(_MKPlaceItem *)self->_placeItem mapItem];
      v8 = [v7 _placeCardContact];
      v9 = self->_contact;
      self->_contact = v8;
    }

    contact = self->_contact;
  }

  return contact;
}

- (void)setMapItem:(id)a3
{
  v4 = a3;
  v5 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetMapItem", "", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__MUPlaceViewController_setMapItem___block_invoke;
  v10[3] = &unk_1E821A870;
  v11 = v4;
  v12 = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__MUPlaceViewController_setMapItem___block_invoke_2;
  v8[3] = &unk_1E821A870;
  v8[4] = self;
  v9 = v11;
  v6 = v11;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v10 oldUIBlock:v8];
  v7 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetMapItem", "", buf, 2u);
  }
}

void __36__MUPlaceViewController_setMapItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 _placeCardContact];
  }

  else
  {
    [*(*(a1 + 40) + 1024) contact];
  }
  v3 = ;
  [*(a1 + 40) _setMapItem:*(a1 + 32) contact:v3 updateOriginalContact:0];
}

- (id)ratingsAndReviewsSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (id)inlineRatingsSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (MUPlaceInlineMapSectionController)inlineMapSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (_TtC6MapsUI36MUWebBasedPlacecardSectionController)webPlacecardSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (id)notesSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (id)ribbonSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (MUPlaceEnrichmentSectionController)placeEnrichmentSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (MUPlaceInfoSectionController)placeInfoSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (MUPlacePhotoSectionController)photoSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (MUPlaceHeaderSectionController)headerSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (MUPlaceUnifiedActionRowSectionController)unifiedActionRowSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (MUPlaceActionRowSectionController)actionRowSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (MUCuratedGuidesSectionController)curatedGuidesSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (MUPersonalGuidesSectionController)personalGuidesSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (MUPlaceHeaderButtonsSectionController)headerButtonsSectionController
{
  v3 = objc_opt_class();

  return [(MUPlaceViewController *)self _firstSectionControllerOfClass:v3];
}

- (id)_sectionControllersForClass:(Class)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_sectionControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v14}];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_firstSectionControllerOfClass:(Class)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_sectionControllers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = MUPlaceViewController;
  [(MUPlaceViewController *)&v7 viewDidLayoutSubviews];
  [(MULoadingOverlayController *)self->_loadingOverlayController updateLayoutForBoundsChange];
  v3 = [(MUPlaceViewController *)self placeViewControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlaceViewController *)self placeViewControllerDelegate];
    [v5 placeViewControllerDidUpdateHeight:self];
  }

  if (!+[MapsUIUtilities isMapsProcess])
  {
    [(MUPlaceViewController *)self showContentIfLoaded];
  }

  [(MUPlaceViewController *)self _updateBottomInset];
  v6 = [(MUPlaceViewController *)self view];
  [v6 bounds];
  [(CALayer *)self->_debugWebPlacecardIndicatorLayer setFrame:?];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = MUPlaceViewController;
  [(MUPlaceViewController *)&v2 viewWillLayoutSubviews];
}

- (void)resetAnalyticsState
{
  [(MUPlaceViewController *)self setMapItemIdentifierIntrumentedForReveal:0];
  analyticsController = self->_analyticsController;

  [(MUPlaceCardAnalyticsController *)analyticsController disableDeferLoggingUntilRefinementWithShouldInvokeReveal:0];
}

- (void)resignActive
{
  if (self->_active)
  {
    self->_active = 0;
    self->_needsImpressionsLoggedOnAppearance = 1;
    [(MKETAProvider *)self->_etaProvider pause];
    [(MUEVChargerAvailabilityProvider *)self->_evChargerAvailabilityProvider setIsActive:0];
    [(MUImpressionsCalculator *)self->_impressionsCalculator setActive:self->_active];
    [(MUPlaceCardAnalyticsController *)self->_analyticsController instrumentConceal];
    v3 = [(MUPlaceViewController *)self webPlacecardSectionController];
    [v3 webViewIsCurrent:0];
  }
}

- (void)becomeActive
{
  if (!self->_active)
  {
    self->_active = 1;
    [(MKETAProvider *)self->_etaProvider restart];
    if ([(MUPlaceViewController *)self forceCaptureRevealEventOnNextBecomeActive]|| !+[MapsUIUtilities isMapsProcess])
    {
      [(MUPlaceViewController *)self setForceCaptureRevealEventOnNextBecomeActive:0];
      [(MUPlaceViewController *)self _captureRevealEventIfNeeded];
    }

    [(MUImpressionsCalculator *)self->_impressionsCalculator setActive:self->_active];
    if (self->_needsImpressionsLoggedOnAppearance)
    {
      self->_needsImpressionsLoggedOnAppearance = 0;
      [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator logImpressions];
    }

    v3 = [(MUPlaceViewController *)self webPlacecardSectionController];
    [v3 webViewIsCurrent:1];
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = MUPlaceViewController;
  [(MUPlaceViewController *)&v12 viewDidLoad];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(MUPlaceViewController *)self setAccessibilityIdentifier:v4];

  if ((self->_options & 0x8000000000) != 0)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v5 = ;
  v6 = [(MUPlaceViewController *)self view];
  [v6 setBackgroundColor:v5];

  self->_contentAlpha = 1.0;
  v7 = [MEMORY[0x1E69A2398] sharedPlatform];
  if ([v7 isInternalInstall])
  {
    BOOL = GEOConfigGetBOOL();

    if (!BOOL)
    {
      return;
    }

    v9 = objc_opt_new();
    debugWebPlacecardIndicatorLayer = self->_debugWebPlacecardIndicatorLayer;
    self->_debugWebPlacecardIndicatorLayer = v9;

    [(CALayer *)self->_debugWebPlacecardIndicatorLayer setZPosition:1.79769313e308];
    [(CALayer *)self->_debugWebPlacecardIndicatorLayer setOpacity:0.0];
    v7 = [(MUPlaceViewController *)self view];
    v11 = [v7 layer];
    [v11 addSublayer:self->_debugWebPlacecardIndicatorLayer];
  }
}

- (void)set_mapkit_contentVisibility:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = MUPlaceViewController;
  [(MUPlaceViewController *)&v3 set_mapkit_contentVisibility:a3];
}

void __40__MUPlaceViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(MUPresentationOptions);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performShareActionWithPresentationOptions:v3];
}

- (BOOL)scrollEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[5] = &v6;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__MUPlaceViewController_scrollEnabled__block_invoke;
  v5[3] = &unk_1E8219B98;
  v5[4] = self;
  v5[5] = &v6;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__MUPlaceViewController_scrollEnabled__block_invoke_2;
  v4[3] = &unk_1E8219B98;
  v4[4] = self;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v5 oldUIBlock:v4];
  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __38__MUPlaceViewController_scrollEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isFlexiblePlaceCardEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v8 = [v3 webPlacecardSectionController];
    v4 = [v8 webContentViewController];
    v5 = [v4 webView];
    v6 = [v5 scrollView];
    *(*(*(a1 + 40) + 8) + 24) = [v6 isScrollEnabled];
  }

  else
  {
    v7 = v3[126];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v8 = *(*(a1 + 32) + 1008);
    *(*(*(a1 + 40) + 8) + 24) = [v8 isScrollEnabled];
  }
}

uint64_t __38__MUPlaceViewController_scrollEnabled__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1000) isScrollEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setScrollEnabled:(BOOL)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__MUPlaceViewController_setScrollEnabled___block_invoke;
  v5[3] = &unk_1E8219780;
  v5[4] = self;
  v6 = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__MUPlaceViewController_setScrollEnabled___block_invoke_2;
  v3[3] = &unk_1E8219780;
  v3[4] = self;
  v4 = a3;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v5 oldUIBlock:v3];
}

void __42__MUPlaceViewController_setScrollEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isFlexiblePlaceCardEnabled])
  {
    v2 = *(a1 + 40);
    v9 = [*(a1 + 32) webPlacecardSectionController];
    v3 = [v9 webContentViewController];
    v4 = [v3 webView];
    v5 = [v4 scrollView];
    [v5 setScrollEnabled:v2];
  }

  else
  {
    v6 = *(*(a1 + 32) + 1008);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(*(a1 + 32) + 1008);
      v8 = *(a1 + 40);

      [v7 setScrollEnabled:v8];
    }
  }
}

- (void)updateHeaderTrailingConstant
{
  v2 = [(MUPlaceViewController *)self headerSectionController];
  [v2 reloadTrailingConstraint];
}

- (void)_updatePocketInsets
{
  if (![(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    [(MUPlaceViewController *)self heightForContentAboveTitle];
    v4 = v3 + 72.0;
    v5 = [(MUPlaceViewController *)self scrollView];
    [v5 _setPocketInsets:{v4, 0.0, 0.0, 0.0}];
  }
}

- (void)_updateBottomInset
{
  if (![(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    v3 = [(MUPlaceActionBarView *)self->_actionBar superview];
    if (v3 && (v4 = v3, v5 = [(MUPlaceActionBarView *)self->_actionBar isHidden], v4, (v5 & 1) == 0))
    {
      [(MUPlaceActionBarView *)self->_actionBar frame];
      Height = CGRectGetHeight(v9);
    }

    else if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
    {
      Height = 0.0;
    }

    else
    {
      Height = 20.0;
    }

    contentStackView = self->_contentStackView;

    [(MUContentStackViewProtocol *)contentStackView setContentEdgeInsets:0.0, 0.0, Height, 0.0];
  }
}

- (void)_setupViews
{
  v3[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__MUPlaceViewController__setupViews__block_invoke;
  v4[3] = &unk_1E821A268;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__MUPlaceViewController__setupViews__block_invoke_3;
  v3[3] = &unk_1E821A268;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v4 oldUIBlock:v3];
  [(MUPlaceViewController *)self setScrollEnabled:1];
}

void __36__MUPlaceViewController__setupViews__block_invoke(uint64_t a1)
{
  v46[4] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isFlexiblePlaceCardEnabled])
  {
    v2 = [[MUStackView alloc] initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  else
  {
    v2 = [[MUScrollableStackView alloc] initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    if (MapKitIdiomIsMacCatalyst())
    {
      [(MUStackView *)v2 setContentInsetAdjustmentBehavior:2];
      [(MUStackView *)v2 setInsetsLayoutMarginsFromSafeArea:0];
    }
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 1008);
  *(v3 + 1008) = v2;

  [*(*(a1 + 32) + 1008) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(*(a1 + 32) + 1008) setAxis:1];
  v5 = (*(*(a1 + 32) + 1424) & 0x8000000000) == 0;
  v6 = [MEMORY[0x1E696F3B8] sharedInstance];
  v7 = [v6 userInterfaceIdiom];

  v8 = v7 == 3 || v5;
  v9 = 12.0;
  if (v8)
  {
    v9 = 20.0;
  }

  [*(*(a1 + 32) + 1008) setSpacing:v9];
  if (GEOConfigGetBOOL())
  {
    if ((MapKitIdiomIsMacCatalyst() & 1) == 0)
    {
      if (+[MapsUIUtilities isMapsProcess])
      {
        v10 = *(*(a1 + 32) + 1008);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = objc_alloc_init(MUPlaceCardImpressionsLogger);
          objc_initWeak(&location, *(a1 + 32));
          v12 = [MUImpressionsCalculatorConfiguration alloc];
          v13 = *(*(a1 + 32) + 1008);
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __36__MUPlaceViewController__setupViews__block_invoke_2;
          v43[3] = &unk_1E82184A8;
          objc_copyWeak(&v44, &location);
          v14 = [(MUImpressionsCalculatorConfiguration *)v12 initWithLogger:v11 contentScrollView:v13 containerViewProvider:v43];
          v15 = [[MUScrollViewImpressionsCalculator alloc] initWithConfiguration:v14 visibleItemsProvider:*(a1 + 32)];
          v16 = *(a1 + 32);
          v17 = *(v16 + 1320);
          *(v16 + 1320) = v15;

          objc_destroyWeak(&v44);
          objc_destroyWeak(&location);
        }
      }
    }
  }

  [*(a1 + 32) _updateBottomInset];
  v18 = *(*(a1 + 32) + 1008);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = *(a1 + 32);
    v20 = *(v19 + 1008);
    [v20 setDelegate:v19];
    [v20 setAlwaysBounceVertical:1];
  }

  v22 = *(a1 + 32);
  v21 = (a1 + 32);
  v23 = [v22 view];
  [v23 addSubview:*(*v21 + 126)];

  v35 = MEMORY[0x1E696ACD8];
  v41 = [*(*v21 + 126) leadingAnchor];
  v42 = [*v21 view];
  v40 = [v42 leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v46[0] = v39;
  v37 = [*(*v21 + 126) trailingAnchor];
  v38 = [*v21 view];
  v36 = [v38 trailingAnchor];
  v24 = [v37 constraintEqualToAnchor:v36];
  v46[1] = v24;
  v25 = [*(*v21 + 126) topAnchor];
  v26 = [*v21 view];
  v27 = [v26 topAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  v46[2] = v28;
  v29 = [*(*v21 + 126) bottomAnchor];
  v30 = [*v21 view];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  v46[3] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
  [v35 activateConstraints:v33];

  v34 = *MEMORY[0x1E69E9840];
}

void __36__MUPlaceViewController__setupViews__block_invoke_3(uint64_t a1)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696F498]);
  v3 = [*(a1 + 32) mapItem];
  v4 = [v2 initWithMapItem:v3 options:*(*(a1 + 32) + 1424)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1000);
  *(v5 + 1000) = v4;

  [*(*(a1 + 32) + 1000) setPlaceViewFeedbackDelegate:?];
  v7 = [*(*(a1 + 32) + 1000) view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [*(*(a1 + 32) + 1000) view];
  [v8 _mapsui_setBackgroundColor:0];

  [*(a1 + 32) addChildViewController:*(*(a1 + 32) + 1000)];
  v9 = [*(a1 + 32) view];
  v10 = [*(*(a1 + 32) + 1000) view];
  [v9 addSubview:v10];

  [*(*(a1 + 32) + 1000) didMoveToParentViewController:?];
  v11 = [*(*(a1 + 32) + 1544) headerViewController];

  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 1000);
    v14 = [*(v12 + 1544) headerViewController];
    [v13 addAdditionalViewController:v14 atPosition:0];
  }

  v29 = MEMORY[0x1E696ACD8];
  v37 = [*(*(a1 + 32) + 1000) view];
  v35 = [v37 leadingAnchor];
  v36 = [*(a1 + 32) view];
  v34 = [v36 leadingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v38[0] = v33;
  v32 = [*(*(a1 + 32) + 1000) view];
  v30 = [v32 trailingAnchor];
  v31 = [*(a1 + 32) view];
  v28 = [v31 trailingAnchor];
  v27 = [v30 constraintEqualToAnchor:v28];
  v38[1] = v27;
  v26 = [*(*(a1 + 32) + 1000) view];
  v15 = [v26 topAnchor];
  v16 = [*(a1 + 32) view];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v38[2] = v18;
  v19 = [*(*(a1 + 32) + 1000) view];
  v20 = [v19 bottomAnchor];
  v21 = [*(a1 + 32) view];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v38[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v29 activateConstraints:v24];

  v25 = *MEMORY[0x1E69E9840];
}

id __36__MUPlaceViewController__setupViews__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained view];
    v4 = [v3 superview];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_commonInitWithConfiguration:(id)a3
{
  v5 = a3;
  v6 = MUGetPlaceCardLog();
  self->_initialAppearanceSignpostID = os_signpost_id_generate(v6);

  v7 = MUGetPlaceCardLog();
  v8 = v7;
  initialAppearanceSignpostID = self->_initialAppearanceSignpostID;
  if (initialAppearanceSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v8, OS_SIGNPOST_INTERVAL_BEGIN, initialAppearanceSignpostID, "PlacecardInitialAppearance", "", buf, 2u);
  }

  objc_storeStrong(&self->_configuration, a3);
  self->_options = [v5 options];
  v10 = [(MUPlaceViewControllerConfiguration *)self->_configuration effectiveBundleIdentifier];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(MUPlaceViewControllerConfiguration *)self->_configuration effectiveBundleIdentifier];
    v13 = [MEMORY[0x1E696F268] sharedLocationManager];
    [v13 setEffectiveBundleIdentifier:v12];
  }

  self->_showNewUI = 1;
  v14 = [[MUPlaceCardAnalyticsController alloc] initWithAnalyticsProvider:self];
  analyticsController = self->_analyticsController;
  self->_analyticsController = v14;

  v16 = objc_alloc_init(MUPlaceItemActionDataProvider);
  actionDataProvider = self->_actionDataProvider;
  self->_actionDataProvider = v16;

  v18 = [objc_alloc(MEMORY[0x1E696F450]) initWithDataProvider:self->_actionDataProvider];
  actionManager = self->_actionManager;
  self->_actionManager = v18;

  [(MUPlaceActionManager *)self->_actionManager setPlaceCardDelegate:self];
  [(MUPlaceActionManager *)self->_actionManager setAnalyticsDelegate:self->_analyticsController];
  if (GEOConfigGetBOOL())
  {
    v20 = objc_alloc_init(MUPersonalizedSuggestionSectionArbiter);
    personalizedSuggestionSectionArbiter = self->_personalizedSuggestionSectionArbiter;
    self->_personalizedSuggestionSectionArbiter = v20;
  }

  objc_initWeak(buf, self);
  v22 = [MULockScreenCoordinator alloc];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __54__MUPlaceViewController__commonInitWithConfiguration___block_invoke;
  v31[3] = &unk_1E8218480;
  objc_copyWeak(&v32, buf);
  v23 = [(MULockScreenCoordinator *)v22 initWithPasscodeProvider:v31];
  lockScreenCoordinator = self->_lockScreenCoordinator;
  self->_lockScreenCoordinator = v23;

  v25 = [[_TtC6MapsUI23MUPlaceActionDispatcher alloc] initWithActionManager:self->_actionManager];
  actionDispatcher = self->_actionDispatcher;
  self->_actionDispatcher = v25;

  [(MUPlaceActionDispatcher *)self->_actionDispatcher setDelegate:self];
  [MUInfoCardStyle setIsDeveloperPlaceCard:(self->_options >> 39) & 1];
  v27 = [[_TtC6MapsUI26MUPlaceActionBarController alloc] initWithActionDispatcher:self->_actionDispatcher delegate:self];
  actionBarController = self->_actionBarController;
  self->_actionBarController = v27;

  v29 = [MEMORY[0x1E696AD88] defaultCenter];
  [v29 addObserver:self selector:sel_actionBarDataSourceDidUpdate_ name:@"MUPlaceActionBarDataSourceDidUpdateNotification" object:0];

  v30 = [MEMORY[0x1E696AD88] defaultCenter];
  [v30 addObserver:self selector:sel__localeDidChange name:*MEMORY[0x1E695D8F0] object:0];

  [(MUPlaceViewController *)self _setupViews];
  self->_previousFPCFeatureFlag = [(MUPlaceViewController *)self isFlexiblePlaceCardEnabled];
  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

void __54__MUPlaceViewController__commonInitWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained placeViewControllerDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [v4 placeViewControllerDelegate];
      [v7 placeViewController:v4 requestPasscodeUnlockWithCompletion:v8];
    }

    else
    {
      v8[2](v8, 0);
    }
  }
}

id __40__MUPlaceViewController_revealedModules__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isImpressionable])
  {
    v3 = [v2 revealedAnalyticsModule];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)analyticModules
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_sectionControllers, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_sectionControllers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) analyticsModuleForAction:0 presentationOptions:{0, v13}];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (MUPlaceViewController)initWithMapItem:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MUPlaceViewController;
  v5 = [(MUPlaceViewController *)&v21 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = objc_opt_new();
    [(MUPlaceViewController *)v5 _commonInitWithConfiguration:v6];

    v7 = *MEMORY[0x1E696F158];
    v8 = *(MEMORY[0x1E696F158] + 8);
    if (GEOConfigGetBOOL())
    {
      v9 = NSTemporaryDirectory();
      v10 = [v9 stringByAppendingPathComponent:@"SavedMapItem.json"];

      v11 = [MEMORY[0x1E696AC08] defaultManager];
      if ([v11 fileExistsAtPath:v10])
      {
        v20 = 0;
        v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v10 options:4 error:&v20];
        v13 = v20;
        v19 = v13;
        v14 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:&v19];
        v15 = v19;

        v16 = [objc_alloc(MEMORY[0x1E69A21E0]) initWithJSON:v14];
        v17 = [objc_alloc(MEMORY[0x1E696F270]) initWithGeoMapItem:v16 isPlaceHolderPlace:0];
        [(MUPlaceViewController *)v5 setMapItem:v17];
      }

      else
      {
        [(MUPlaceViewController *)v5 setMapItem:v4];
      }
    }

    else
    {
      [(MUPlaceViewController *)v5 setMapItem:v4];
    }
  }

  return v5;
}

- (MUPlaceViewController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MUPlaceViewController;
  v5 = [(MUPlaceViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(MUPlaceViewController *)v5 _commonInitWithConfiguration:v4];
  }

  return v6;
}

- (BOOL)shouldStubPlacecard
{
  v2 = [MEMORY[0x1E69A2398] sharedPlatform];
  if ([v2 isInternalInstall])
  {
    v3 = 1;
    BOOL = GEOConfigGetBOOL();

    if (BOOL)
    {
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

+ (void)_copyStringToPasteboard:(id)a3
{
  v3 = MEMORY[0x1E69DCD50];
  v4 = a3;
  v5 = [v3 generalPasteboard];
  [v5 setString:v4];
}

@end