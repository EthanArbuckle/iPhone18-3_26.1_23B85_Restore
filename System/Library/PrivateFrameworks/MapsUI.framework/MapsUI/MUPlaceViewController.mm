@interface MUPlaceViewController
+ (void)_copyStringToPasteboard:(id)pasteboard;
- (BOOL)_hasSerializedMapItemFile;
- (BOOL)_presentOfflineAlertIfNecessaryForUGC:(int64_t)c;
- (BOOL)_transitDeparturesCanSelectDepartureSequence:(id)sequence usingMapItem:(id)item;
- (BOOL)isLoading;
- (BOOL)placeSectionControllerShouldLayoutSubviews:(id)subviews;
- (BOOL)scrollEnabled;
- (BOOL)shouldBlurChromeHeaderButtons;
- (BOOL)shouldStubPlacecard;
- (BOOL)supportsDynamicLayout;
- (CGSize)_systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
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
- (MUPlaceViewController)initWithConfiguration:(id)configuration;
- (MUPlaceViewController)initWithMapItem:(id)item;
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
- (double)placeHeaderSectionControllerRequestsPaddingConstant:(id)constant;
- (double)placeHeaderSectionControllerRequestsTrailingConstant:(id)constant;
- (id)_actionBarSectionControllerForAvailability:(id)availability moduleConfiguration:(id)configuration;
- (id)_actionRowSectionControllerClientOverrideWithAvailability:(id)availability buttonModuleConfiguration:(id)configuration;
- (id)_actionRowSectionControllerWithButtonModuleConfiguration:(id)configuration;
- (id)_amenitiesSectionControllerForAvailability:(id)availability moduleConfiguration:(id)configuration;
- (id)_annotatedItemSectionControllerForAvailability:(id)availability;
- (id)_browseCategorySectionControllerForAvailability:(id)availability;
- (id)_buildBrandCardSectionsWithAvailability:(id)availability;
- (id)_buildDeveloperPlaceCardSectionsWithAvailability:(id)availability;
- (id)_buildForLayoutWithAvailability:(id)availability;
- (id)_buildShortCardSections;
- (id)_buildStaticSectionsWithAvailability:(id)availability;
- (id)_callToActionSuggestionSectionControllerForAvailability:(id)availability;
- (id)_contactForEditOperations;
- (id)_contactSharedLocationSectionControllerForAvailability:(id)availability;
- (id)_curatedGuidesSectionControllerForAvailability:(id)availability;
- (id)_encyclopedicSectionControllerForAvailability:(id)availability;
- (id)_evChargingSectionControllerForForAvailability:(id)availability mapItem:(id)item;
- (id)_firstSectionControllerOfClass:(Class)class;
- (id)_headerButtonsSectionControllerForModuleConfiguration:(id)configuration;
- (id)_headerSectionControllerWithAvailability:(id)availability;
- (id)_hikingTipSectionControllerForAvailability:(id)availability;
- (id)_hikingTrailsSectionControllerForAvailability:(id)availability;
- (id)_inlineMapSectionControllerForAvailability:(id)availability;
- (id)_notesSectionControllerForAvailability:(id)availability;
- (id)_officialAppSectionControllerForAvailability:(id)availability;
- (id)_passiveCallToActionSectionControllerForAvailability:(id)availability;
- (id)_personalGuidesSectionController;
- (id)_photoSectionControllerForAvailability:(id)availability;
- (id)_placeDescriptionSectionControllerForAvailability:(id)availability;
- (id)_placeEnrichmentSectionControllerForAvailability:(id)availability;
- (id)_placeFooterSectionController;
- (id)_placeInfoSectionControllerForAvailability:(id)availability moduleConfiguration:(id)configuration;
- (id)_placeRibbonSectionControllerForAvailability:(id)availability placeRibbonConfiguration:(id)configuration;
- (id)_ratingsAndReviewsSectionControllerForAvailability:(id)availability;
- (id)_relatedPlaceConfigurationForRelatedPlaceList:(id)list moduleConfiguration:(id)configuration;
- (id)_relatedPlaceSectionControllerForAvailability:(id)availability config:(id)config;
- (id)_relatedPlaceSectionControllerForAvailability:(id)availability relatedPlaceList:(id)list;
- (id)_sectionControllersForClass:(Class)class;
- (id)_traits;
- (id)_transitDeparturesSectionControllerForAvailability:(id)availability;
- (id)_unifiedActionRowSectionControllerForAvailability:(id)availability buttonModuleConfiguration:(id)configuration;
- (id)_venueInfoSectionControllerForAvailability:(id)availability;
- (id)_webBasedPlacecardViewControllerForAvailability:(id)availability;
- (id)_webContentSectionControllerForConfiguration:(id)configuration;
- (id)collectionViews;
- (id)contact;
- (id)contactStore;
- (id)contactsNavigationController;
- (id)createHeaderButtonsMenuWithPromotedSystemActionTypes:(id)types excludedSystemActionTypes:(id)actionTypes presentationOptions:(id)options;
- (id)createHeaderMenuSortOrderWithPromotedActionTypes:(id)types excludedActionTypes:(id)actionTypes;
- (id)createShareSheetFooterActions;
- (id)draggableContent;
- (id)generateAvailableActionForAnalytics;
- (id)generateUnactionableUIElementsForAnalytics;
- (id)hikingTipViewForHikingTipSectionController:(id)controller viewModel:(id)model;
- (id)inlineRatingsSectionController;
- (id)inlineRatingsSectionControllerRequestsContentViewController:(id)controller;
- (id)mapItemFromSerialized;
- (id)menuElementForActionItem:(id)item;
- (id)notesSectionController;
- (id)placePhotoGalleryImageViewForPhotoAtIndex:(unint64_t)index;
- (id)ratingsAndReviewsSectionController;
- (id)ribbonSectionController;
- (id)shareSheetPresenterRequestsOverridenActivityViewController:(id)controller;
- (id)suggestionViewForCallToActionSectionController:(id)controller;
- (id)unifiedActionRowConfigurationForAvailability:(id)availability buttonModuleConfiguration:(id)configuration;
- (id)visibleImpressionElements;
- (id)webPlacecardGuides;
- (int)getPlaceCardTypeForAnalytics;
- (int)mapTypeForETAProvider:(id)provider;
- (unint64_t)options;
- (void)ETAProviderLocationUpdated:(id)updated;
- (void)_activateSections;
- (void)_addActionBarWithConfiguration:(id)configuration;
- (void)_applyCustomSpacings;
- (void)_authorized_contactPicker:(id)picker didSelectContact:(id)contact;
- (void)_buildSections;
- (void)_calculateShowingContactActionsWithCompletion:(id)completion;
- (void)_captureRevealEventIfNeeded;
- (void)_commonInitWithConfiguration:(id)configuration;
- (void)_deactivateSections;
- (void)_didRequestSceneActivationForPhotoGalleryViewController:(id)controller;
- (void)_didResolveAttribution:(id)attribution;
- (void)_didSelectAddOrEditNote;
- (void)_didSelectCreateCustomRouteWithOriginMapItem:(id)item;
- (void)_didSelectDirectionsWithAddress:(id)address forContact:(id)contact;
- (void)_didSelectEditPlaceDetailsOfType:(int64_t)type;
- (void)_didSelectPhotoCategoryAtIndex:(unint64_t)index;
- (void)_didSelectRemoveMarkedLocation;
- (void)_didSelectSimulateLocation;
- (void)_didSelectViewContactButton;
- (void)_didTapOnSearchCategory:(id)category;
- (void)_dismissModalViewController;
- (void)_handleMapsExtension:(id)extension usingAppStoreApp:(id)app parameters:(id)parameters;
- (void)_handleRoutingToPlaceWithMapItem:(id)item;
- (void)_inlineRAPDidSelectAddMissingDataOfType:(int64_t)type;
- (void)_invokeShareActionWithPresentationOptions:(id)options analyticsModuleMetadata:(id)metadata;
- (void)_launchAttribution:(id)attribution withMapItem:(id)item;
- (void)_launchAttributionURLs:(id)ls withAttribution:(id)attribution completionHandler:(id)handler;
- (void)_localeDidChange;
- (void)_openAppClip:(id)clip;
- (void)_openDirections;
- (void)_openExploreGuidesWithGuideLocation:(id)location;
- (void)_openThumbnailGalleryWithStartingIndex:(unint64_t)index;
- (void)_openWebURL:(id)l forcePunchout:(BOOL)punchout;
- (void)_performShareActionWithPresentationOptions:(id)options;
- (void)_performWithNewUIBlock:(id)block oldUIBlock:(id)iBlock;
- (void)_placeSectionController:(id)controller didSelectPrimaryType:(unint64_t)type withPresentationOptions:(id)options;
- (void)_presentAddNewContactPickerForContact:(id)contact withEnvironment:(id)environment;
- (void)_presentModalViewController:(id)controller withEnvironment:(id)environment;
- (void)_presentStoreProductScreenWithMapItem:(id)item attribution:(id)attribution bundleIdentifier:(id)identifier attributionURLs:(id)ls presentingViewController:(id)controller;
- (void)_ratingsAndReviewsDidSelectViewReview:(id)review;
- (void)_relatedPlacesShowSeeAllWithTitle:(id)title relatedMapItems:(id)items originalMapItem:(id)item;
- (void)_scrollToImpressionsFrame:(id)frame;
- (void)_setMapItem:(id)item contact:(id)contact updateOriginalContact:(BOOL)originalContact;
- (void)_setPlaceItem:(id)item updateOriginalContact:(BOOL)contact;
- (void)_setupViews;
- (void)_showEditSheet:(id)sheet;
- (void)_showShareSheetNoDeviceLockCheckWithEnvironment:(id)environment;
- (void)_showShareSheetWithEnvironment:(id)environment;
- (void)_tearDownContactPickersForCompletionWithViewController:(id)controller;
- (void)_transitDeparturesDidSelectDepartureSequence:(id)sequence usingMapItem:(id)item;
- (void)_transitDeparturesDidSelectTransitLine:(id)line usingPresentationOptions:(id)options completion:(id)completion;
- (void)_unauthorized_contactPicker:(id)picker didSelectContact:(id)contact;
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
- (void)_updateWebPlacecardForPhotoSubmissionWithURL:(id)l;
- (void)_updateWebPlacecardForSubmissionStatusChange:(id)change userRatings:(id)ratings;
- (void)actionBarDataSourceDidUpdate:(id)update;
- (void)addLoadingView;
- (void)becomeActive;
- (void)collectionIdentifierSelected:(id)selected;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactStoreDidChange:(id)change;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)contactViewController:(id)controller didDeleteContact:(id)contact;
- (void)contentAboveTitleScrollPositionChanged:(double)changed;
- (void)dealloc;
- (void)didSelectARPRatingWithActionDispatcher:(id)dispatcher ratingCategory:(id)category value:(float)value;
- (void)didSelectAddOrRemoveFromFavoritesGuideWithActionDispatcher:(id)dispatcher;
- (void)didSelectCopyAddressWithActionDispatcher:(id)dispatcher addressString:(id)string;
- (void)didSelectCopyCoordinatesWithActionDispatcher:(id)dispatcher coordinatesString:(id)string;
- (void)didSelectCopyLinkWithActionDispatcher:(id)dispatcher urlString:(id)string;
- (void)didSelectEditLocationOfMarkedLocationWithActionDispatcher:(id)dispatcher;
- (void)didSelectFeaturedGuideWithActionDispatcher:(id)dispatcher mapItemIdentifier:(id)identifier;
- (void)didSelectMarkMyLocationWithActionDispatcher:(id)dispatcher;
- (void)didSelectRequestLocationButtonWithActionDispatcher:(id)dispatcher;
- (void)didSelectSavePublisherGuideWithActionDispatcher:(id)dispatcher publisherGuide:(id)guide;
- (void)didSelectSharePublisherGuideWithActionDispatcher:(id)dispatcher publisherGuide:(id)guide;
- (void)didSelectShowPublisherWithActionDispatcher:(id)dispatcher publisherGuide:(id)guide;
- (void)didSelectTransitIncidentsWithActionDispatcher:(id)dispatcher incidents:(id)incidents;
- (void)didTapAddPhotoWithActionDispatcher:(id)dispatcher entryPoint:(int64_t)point environment:(id)environment;
- (void)didTapCloseWithActionDispatcher:(id)dispatcher;
- (void)didTapCreateCustomRouteWithActionDispatcher:(id)dispatcher;
- (void)didTapHikingTip:(id)tip originMapItem:(id)item;
- (void)didTapOpenFindMyWithActionDispatcher:(id)dispatcher;
- (void)didTapOpenPhotoViewerWithActionDispatcher:(id)dispatcher index:(float)index;
- (void)didTapRemoveShortcutWithActionDispatcher:(id)dispatcher;
- (void)didTapShareWithActionDispatcher:(id)dispatcher environment:(id)environment;
- (void)didTapTransitDepartureWithActionDispatcher:(id)dispatcher departureSequence:(id)sequence isActiveLine:(BOOL)line;
- (void)handleAppClip:(id)clip options:(id)options;
- (void)handleQuickLink:(id)link options:(id)options;
- (void)handleWebLink:(id)link options:(id)options;
- (void)hideContentIfLoading;
- (void)hideTitle:(BOOL)title;
- (void)openAppClipWithActionDispatcher:(id)dispatcher quickLink:(id)link completion:(id)completion;
- (void)openDirectionsWithActionDispatcher:(id)dispatcher contactIdentifier:(id)identifier;
- (void)openExtensionWithActionDispatcher:(id)dispatcher vendorId:(id)id source:(int64_t)source completion:(id)completion;
- (void)openPlaceWithActionDispatcher:(id)dispatcher mapItemIdentifier:(id)identifier;
- (void)performShareActionWithPresentationOptions:(id)options;
- (void)pictureItemSectionController:(id)controller requestsSceneActivationWithPhotoGallery:(id)gallery;
- (void)placeActionManager:(id)manager didSelectAddToContactsUsingEnvironment:(id)environment;
- (void)placeActionManager:(id)manager didSelectAddToExistingContactWithEnvironment:(id)environment;
- (void)placeActionManager:(id)manager didSelectAddToFavoritesGuideWithEnvironment:(id)environment;
- (void)placeActionManager:(id)manager didSelectAddToGuidesWithEnvironment:(id)environment;
- (void)placeActionManager:(id)manager didSelectDirectionsWithEnvironment:(id)environment;
- (void)placeActionManager:(id)manager didSelectRateWithEnvironment:(id)environment;
- (void)placeCardActionControllerDidRequestCopy:(id)copy;
- (void)placeCardActionControllerDidSelectAddPhoto:(id)photo presentingViewController:(id)controller sourceView:(id)view;
- (void)placeCardActionControllerDidSelectAddToMapsHome:(id)home;
- (void)placeCardActionControllerDidSelectChangeAddress:(id)address;
- (void)placeCardActionControllerDidSelectOfflineManagement:(id)management;
- (void)placeCardActionControllerDidSelectPauseOfflineDownload:(id)download;
- (void)placeCardActionControllerDidSelectPlaceEnrichementReportAProblem;
- (void)placeCardActionControllerDidSelectRefineLocation:(id)location;
- (void)placeCardActionControllerDidSelectRemoveFromMapsHome:(id)home;
- (void)placeCardActionControllerDidSelectReportAProblemViewReport:(id)report;
- (void)placeDescriptionSectionControllerDidTapAttribution:(id)attribution;
- (void)placeHeaderSectionController:(id)controller didSelectShareWithPresentationOptions:(id)options;
- (void)placeInfoSectionController:(id)controller didTapAttribution:(id)attribution;
- (void)placeInfoSectionController:(id)controller selectedDirectionsWithAddress:(id)address forContact:(id)contact options:(id)options;
- (void)placeInfoSectionController:(id)controller selectedDirectionsWithMapItem:(id)item options:(id)options;
- (void)placeNotesSectionController:(id)controller didRequestEditingNoteWithInitialText:(id)text completion:(id)completion;
- (void)placePhotoSectionController:(id)controller didSelectPhotoToReport:(id)report withPhotoGalleryViewController:(id)viewController;
- (void)placePhotoSectionController:(id)controller didSelectViewPhoto:(id)photo withID:(id)d presentingViewController:(id)viewController;
- (void)placePhotoSectionController:(id)controller requestsAddPhotosToMapsWithEntryPoint:(int64_t)point options:(id)options;
- (void)placePhotoSectionController:(id)controller requestsToOpenPhotoAttribution:(id)attribution presentationOptions:(id)options;
- (void)placePhotoSectionControllerDidCloseFullscreenPhotos:(id)photos;
- (void)placePhotoSectionControllerDidOpenFullscreenPhotos:(id)photos;
- (void)placeSectionControllerDidUpdateContent:(id)content;
- (void)placeSectionControllerRequestsLayoutChange:(id)change;
- (void)presentAddPhotosWithPresentationOptions:(id)options entryPoint:(int64_t)point originTarget:(id)target;
- (void)presentPOIEnrichmentWithPresentationOptions:(id)options;
- (void)ratingsAndReviewsSectionControllerDidSelectViewAllReviews:(id)reviews;
- (void)requestHikingToolTipRegionIDForLocationCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)resetAnalyticsState;
- (void)resignActive;
- (void)ribbonSectionControllerDidTapAddRatings:(id)ratings initialRatingState:(int64_t)state withPresentationOptions:(id)options;
- (void)ribbonSectionControllerDidTapHours:(id)hours;
- (void)routeToCuratedCollection:(id)collection;
- (void)routeToGuidesHomeFromExploreGuides:(id)guides;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)sectionController:(id)controller didScroll:(id)scroll;
- (void)sectionController:(id)controller didSelectSendToDevice:(id)device;
- (void)sectionController:(id)controller updateInsetsForHeaderWithTopInset:(double)inset bottom:(double)bottom;
- (void)sectionControllerWebContentLoadCompleted:(id)completed;
- (void)setAutomobileOptions:(id)options;
- (void)setContentAlpha:(double)alpha;
- (void)setCyclingOptions:(id)options;
- (void)setLibraryAccessProvider:(id)provider;
- (void)setLocation:(id)location;
- (void)setMapItem:(id)item;
- (void)setOfflineFeatureDiscoveryView:(id)view;
- (void)setOfflineMapProvider:(id)provider;
- (void)setOptions:(unint64_t)options;
- (void)setPlaceInShortcuts:(BOOL)shortcuts;
- (void)setPlaceItem:(id)item updateOriginalContact:(BOOL)contact;
- (void)setPlaceNumberOfReportsInReview:(unint64_t)review;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setShowContactActions:(BOOL)actions;
- (void)setTransitOptions:(id)options;
- (void)setVerifiedHeaderExpansionProgress:(double)progress;
- (void)setWalkingOptions:(id)options;
- (void)set_mapkit_contentVisibility:(int64_t)visibility;
- (void)showAllCollections:(id)collections usingTitle:(id)title usingCollectionIds:(id)ids;
- (void)showContentIfLoaded;
- (void)showSeeAllRelatedPlacesWithActionDispatcher:(id)dispatcher title:(id)title relatedMapItemIdentifiers:(id)identifiers originalMapItemIdentifier:(id)identifier;
- (void)transitDeparturesSectionController:(id)controller didSelectAttribution:(id)attribution;
- (void)transitDeparturesSectionController:(id)controller didSelectConnectionInformation:(id)information;
- (void)transitDeparturesSectionController:(id)controller showIncidents:(id)incidents;
- (void)updateActionRowView;
- (void)updateAddNoteActionState;
- (void)updateAddToLibraryActionState;
- (void)updateCuratedCollectionsView;
- (void)updateHeaderTitle;
- (void)updateHeaderTrailingConstant;
- (void)updatePlaceEnrichment;
- (void)updatePlaceInfo;
- (void)updateSuggestionView;
- (void)updateUserSubmissionWithPhotoURL:(id)l photoID:(id)d numberOfPhotos:(int64_t)photos;
- (void)updateViewsWithSubmissionStatus:(id)status userRatings:(id)ratings animated:(BOOL)animated;
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

- (void)didTapHikingTip:(id)tip originMapItem:(id)item
{
  itemCopy = item;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidTapHikingTip:self originMapItem:itemCopy];
  }
}

- (id)hikingTipViewForHikingTipSectionController:(id)controller viewModel:(id)model
{
  modelCopy = model;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    v9 = [mapsAppDelegate2 placeViewController:self hikingTipViewForTipModel:modelCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)requestHikingToolTipRegionIDForLocationCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didRequestHikingToolTipRegionIDForLocation:{latitude, longitude}];
  }
}

- (void)placeNotesSectionController:(id)controller didRequestEditingNoteWithInitialText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    libraryAccessProvider = [(MUPlaceViewController *)self libraryAccessProvider];
    [mapsAppDelegate2 placeViewController:self didRequestEditingNoteWithInitialText:textCopy libraryAccessProvider:libraryAccessProvider completion:completionCopy];
  }
}

- (void)contactStoreDidChange:(id)change
{
  changeCopy = change;
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
  placeEnrichmentSectionController = [(MUPlaceViewController *)self placeEnrichmentSectionController];
  hasContent = [placeEnrichmentSectionController hasContent];

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
          impressionElement = [v12 impressionElement];
          [v12 impressionsFrame];
          [impressionElement setFrame:?];
          [impressionElement setSessionIdentifier:self->_impressionsSessionIdentifier];
          customData = [impressionElement customData];
          [customData setModuleIndex:v9];
          [customData setEnriched:hasContent];
          [v3 addObject:impressionElement];
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

- (void)_handleMapsExtension:(id)extension usingAppStoreApp:(id)app parameters:(id)parameters
{
  v18[1] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  appCopy = app;
  parametersCopy = parameters;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectMapsExtension:extensionCopy usingAppStoreApp:appCopy parameters:parametersCopy];
  }

  else
  {
    mapItem = [(MUPlaceViewController *)self mapItem];
    v17 = *MEMORY[0x1E696F098];
    v18[0] = MEMORY[0x1E695E118];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [mapItem openInMapsWithLaunchOptions:v15 completionHandler:&__block_literal_global_624];
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

- (void)_openWebURL:(id)l forcePunchout:(BOOL)punchout
{
  lCopy = l;
  if (punchout || ([(MUPlaceViewController *)self mapsAppDelegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) == 0))
  {
    mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
    [mEMORY[0x1E696F3B8] openURL:lCopy completionHandler:0];
  }

  else
  {
    mEMORY[0x1E696F3B8] = [(MUPlaceViewController *)self mapsAppDelegate];
    [mEMORY[0x1E696F3B8] placeViewController:self openURL:lCopy];
  }
}

- (void)handleWebLink:(id)link options:(id)options
{
  linkCopy = link;
  optionsCopy = options;
  absoluteString = [linkCopy absoluteString];
  v9 = [absoluteString length];

  if (v9)
  {
    analyticsController = self->_analyticsController;
    analyticsTarget = [optionsCopy analyticsTarget];
    analyticsEventValue = [optionsCopy analyticsEventValue];
    -[MUPlaceCardAnalyticsController instrumentAction:target:eventValue:moduleType:feedbackType:](analyticsController, "instrumentAction:target:eventValue:moduleType:feedbackType:", 6050, analyticsTarget, analyticsEventValue, [optionsCopy analyticsModuleType], 0);

    -[MUPlaceViewController _openWebURL:forcePunchout:](self, "_openWebURL:forcePunchout:", linkCopy, [optionsCopy forcePunchout]);
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

- (void)handleQuickLink:(id)link options:(id)options
{
  v17 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  optionsCopy = options;
  uRLString = [linkCopy URLString];
  if ([uRLString length])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:uRLString];
    if (v9)
    {
      analyticsController = self->_analyticsController;
      analyticsTarget = [optionsCopy analyticsTarget];
      analyticsEventValue = [optionsCopy analyticsEventValue];
      -[MUPlaceCardAnalyticsController instrumentAction:target:eventValue:moduleType:feedbackType:](analyticsController, "instrumentAction:target:eventValue:moduleType:feedbackType:", 6050, analyticsTarget, analyticsEventValue, [optionsCopy analyticsModuleType], 0);

      [(MUPlaceViewController *)self _openWebURL:v9 forcePunchout:0];
    }

    else
    {
      v13 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = linkCopy;
        _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_ERROR, "The URL associated with quicklink %@ is nil", &v15, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_openAppClip:(id)clip
{
  clipCopy = clip;
  appClipURL = [clipCopy appClipURL];
  objc_initWeak(&location, self);
  mEMORY[0x1E696F1B0] = [MEMORY[0x1E696F1B0] sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__MUPlaceViewController__openAppClip___block_invoke;
  v8[3] = &unk_1E8218838;
  v7 = appClipURL;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [mEMORY[0x1E696F1B0] requestAppClip:clipCopy completion:v8];

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

- (void)handleAppClip:(id)clip options:(id)options
{
  analyticsController = self->_analyticsController;
  optionsCopy = options;
  clipCopy = clip;
  analyticsEventValue = [optionsCopy analyticsEventValue];
  analyticsModuleType = [optionsCopy analyticsModuleType];

  [(MUPlaceCardAnalyticsController *)analyticsController instrumentAction:6105 target:670 eventValue:analyticsEventValue moduleType:analyticsModuleType feedbackType:0];
  [(MUPlaceViewController *)self _openAppClip:clipCopy];
}

- (id)suggestionViewForCallToActionSectionController:(id)controller
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = [mapsAppDelegate2 suggestionViewForPlaceViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)presentPOIEnrichmentWithPresentationOptions:(id)options
{
  optionsCopy = options;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectAddRatingsWithPresentationOptions:optionsCopy overallState:0 originTarget:0];
  }
}

- (void)presentAddPhotosWithPresentationOptions:(id)options entryPoint:(int64_t)point originTarget:(id)target
{
  optionsCopy = options;
  targetCopy = target;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectAddPhotosWithPresentationOptions:optionsCopy entryPoint:point originTarget:targetCopy];
  }
}

- (id)menuElementForActionItem:(id)item
{
  itemCopy = item;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    v8 = [mapsAppDelegate2 menuElementForActionItem:itemCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGSize)_systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
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
  sizeCopy = size;
  priorityCopy = priority;
  fittingPriorityCopy = fittingPriority;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __108__MUPlaceViewController__systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke_2;
  v9[3] = &unk_1E8218810;
  v9[4] = self;
  v9[5] = &v17;
  sizeCopy2 = size;
  priorityCopy2 = priority;
  fittingPriorityCopy2 = fittingPriority;
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

- (void)didSelectCopyAddressWithActionDispatcher:(id)dispatcher addressString:(id)string
{
  stringCopy = string;
  [objc_opt_class() _copyStringToPasteboard:stringCopy];
}

- (void)didSelectCopyLinkWithActionDispatcher:(id)dispatcher urlString:(id)string
{
  stringCopy = string;
  v6 = [MUURLShorteningSession alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__MUPlaceViewController_didSelectCopyLinkWithActionDispatcher_urlString___block_invoke;
  v12[3] = &unk_1E82187C0;
  v7 = stringCopy;
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

- (void)didSelectCopyCoordinatesWithActionDispatcher:(id)dispatcher coordinatesString:(id)string
{
  stringCopy = string;
  [objc_opt_class() _copyStringToPasteboard:stringCopy];
}

- (void)didSelectSharePublisherGuideWithActionDispatcher:(id)dispatcher publisherGuide:(id)guide
{
  guideCopy = guide;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 didSelectSharePublisherGuide:guideCopy];
  }
}

- (void)didSelectSavePublisherGuideWithActionDispatcher:(id)dispatcher publisherGuide:(id)guide
{
  guideCopy = guide;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 didSelectSavePublisherGuide:guideCopy];
  }
}

- (void)didSelectShowPublisherWithActionDispatcher:(id)dispatcher publisherGuide:(id)guide
{
  guideCopy = guide;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 didSelectShowPublisherForPublisherGuide:guideCopy];
  }
}

- (void)didSelectTransitIncidentsWithActionDispatcher:(id)dispatcher incidents:(id)incidents
{
  incidentsCopy = incidents;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self showTransitIncidents:incidentsCopy];
  }
}

- (void)didSelectAddOrRemoveFromFavoritesGuideWithActionDispatcher:(id)dispatcher
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectAddOrRemoveFromFavoritesGuide:self];
  }
}

- (void)didTapOpenFindMyWithActionDispatcher:(id)dispatcher
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectOpenFindMy:self];
  }
}

- (void)didSelectRequestLocationButtonWithActionDispatcher:(id)dispatcher
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectRequestLocation:self];
  }
}

- (void)didSelectEditLocationOfMarkedLocationWithActionDispatcher:(id)dispatcher
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  [mapsAppDelegate placeViewControllerDidSelectEditLocationOfMarkedLocation:self];
}

- (void)didSelectMarkMyLocationWithActionDispatcher:(id)dispatcher
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectDropPin:self];
  }
}

- (void)openExtensionWithActionDispatcher:(id)dispatcher vendorId:(id)id source:(int64_t)source completion:(id)completion
{
  v36[1] = *MEMORY[0x1E69E9840];
  dispatcherCopy = dispatcher;
  idCopy = id;
  completionCopy = completion;
  mapItem = [(MUPlaceViewController *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  v14 = [_geoMapItem appBundleIDWithVendorID:idCopy];

  if (v14)
  {
    v15 = [[MUPlaceActionLinkExtensionParams alloc] initWithVendorId:idCopy bundleId:v14];
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
      extension = [v20 extension];
      appStoreApp = [v21 appStoreApp];
      [(MUPlaceViewController *)self _handleMapsExtension:extension usingAppStoreApp:appStoreApp parameters:0];

      completionCopy[2](completionCopy, 1);
    }

    else
    {
      v25 = [MUAMSResultProviderFetchOptions alloc];
      mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
      [mEMORY[0x1E696F3B8] screenScale];
      v27 = [MUAMSResultProviderFetchOptions initWithDisplayScale:v25 artworkSize:"initWithDisplayScale:artworkSize:source:" source:source];

      objc_initWeak(buf, self);
      v28 = self->_extensionDiscoveryManager;
      v29 = MEMORY[0x1E69E96A0];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __86__MUPlaceViewController_openExtensionWithActionDispatcher_vendorId_source_completion___block_invoke;
      v32[3] = &unk_1E8218CD0;
      v33 = completionCopy;
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

    completionCopy[2](completionCopy, 0);
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

- (void)openAppClipWithActionDispatcher:(id)dispatcher quickLink:(id)link completion:(id)completion
{
  dispatcherCopy = dispatcher;
  linkCopy = link;
  completionCopy = completion;
  objc_initWeak(&location, self);
  mEMORY[0x1E696F1B0] = [MEMORY[0x1E696F1B0] sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__MUPlaceViewController_openAppClipWithActionDispatcher_quickLink_completion___block_invoke;
  v14[3] = &unk_1E8218798;
  objc_copyWeak(&v17, &location);
  v12 = linkCopy;
  v15 = v12;
  v13 = completionCopy;
  v16 = v13;
  [mEMORY[0x1E696F1B0] appClipWithQuickLink:v12 completion:v14];

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

- (void)didTapCreateCustomRouteWithActionDispatcher:(id)dispatcher
{
  mapItem = [(MUPlaceViewController *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  _tooltip = [_geoMapItem _tooltip];
  if ([_tooltip usesOriginMapItem])
  {
    mapItem2 = [(MUPlaceViewController *)self mapItem];
  }

  else
  {
    mapItem2 = 0;
  }

  [(MUPlaceViewController *)self _didSelectCreateCustomRouteWithOriginMapItem:mapItem2];
}

- (void)didTapTransitDepartureWithActionDispatcher:(id)dispatcher departureSequence:(id)sequence isActiveLine:(BOOL)line
{
  lineCopy = line;
  dispatcherCopy = dispatcher;
  sequenceCopy = sequence;
  if (lineCopy && ([(MUPlaceViewController *)self mapItem], v9 = objc_claimAutoreleasedReturnValue(), v10 = [(MUPlaceViewController *)self _transitDeparturesCanSelectDepartureSequence:sequenceCopy usingMapItem:v9], v9, v10))
  {
    mapItem = [(MUPlaceViewController *)self mapItem];
    [(MUPlaceViewController *)self _transitDeparturesDidSelectDepartureSequence:sequenceCopy usingMapItem:mapItem];
  }

  else
  {
    v12 = [_TtC6MapsUI17TransitLineMarker alloc];
    line = [sequenceCopy line];
    mapItem2 = [(MUPlaceViewController *)self mapItem];
    [mapItem2 _coordinate];
    mapItem = [(TransitLineMarker *)v12 initWithTransitLine:line locationHint:?];

    v15 = objc_alloc_init(MUPresentationOptions);
    [(MUPlaceViewController *)self _transitDeparturesDidSelectTransitLine:mapItem usingPresentationOptions:v15 completion:&__block_literal_global_588];
  }
}

- (void)didTapAddPhotoWithActionDispatcher:(id)dispatcher entryPoint:(int64_t)point environment:(id)environment
{
  environmentCopy = environment;
  presentationOptions = [environmentCopy presentationOptions];
  [presentationOptions setPresentingViewController:self];

  presentationOptions2 = [environmentCopy presentationOptions];

  [(MUPlaceViewController *)self presentAddPhotosWithPresentationOptions:presentationOptions2 entryPoint:point originTarget:@"PLACECARD_PHOTO_VIEWER_GALLERY"];
}

- (void)didTapRemoveShortcutWithActionDispatcher:(id)dispatcher
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectRemoveShortcut:self];
  }
}

- (void)didTapShareWithActionDispatcher:(id)dispatcher environment:(id)environment
{
  presentationOptions = [environment presentationOptions];
  [(MUPlaceViewController *)self _performShareActionWithPresentationOptions:presentationOptions];
}

- (void)didTapCloseWithActionDispatcher:(id)dispatcher
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidClose:self];
  }
}

- (void)openDirectionsWithActionDispatcher:(id)dispatcher contactIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v23 = identifierCopy;
    _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Opening directions with contact identifier: %{private}@", buf, 0xCu);
  }

  if ([identifierCopy length])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    contact = [(_MKPlaceItem *)self->_placeItem contact];
    postalAddresses = [contact postalAddresses];

    v9 = [postalAddresses countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(postalAddresses);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          identifier = [v12 identifier];
          v14 = [identifier isEqualToString:identifierCopy];

          if (v14)
          {
            v9 = v12;
            goto LABEL_14;
          }
        }

        v9 = [postalAddresses countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    contact2 = [(_MKPlaceItem *)self->_placeItem contact];
    [(MUPlaceViewController *)self _didSelectDirectionsWithAddress:v9 forContact:contact2];
  }

  else
  {
    [(MUPlaceViewController *)self _openDirections];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)didSelectFeaturedGuideWithActionDispatcher:(id)dispatcher mapItemIdentifier:(id)identifier
{
  dispatcherCopy = dispatcher;
  identifierCopy = identifier;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
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
    v12 = identifierCopy;
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

- (void)didSelectARPRatingWithActionDispatcher:(id)dispatcher ratingCategory:(id)category value:(float)value
{
  v6 = value + 1;
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_1C587A078[v6];
  }

  v18 = objc_alloc_init(MUPresentationOptions);
  webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
  webContentViewController = [webPlacecardSectionController webContentViewController];
  webView = [webContentViewController webView];
  scrollView = [webView scrollView];
  [(MUPresentationOptions *)v18 setSourceView:scrollView];

  webPlacecardSectionController2 = [(MUPlaceViewController *)self webPlacecardSectionController];
  webContentViewController2 = [webPlacecardSectionController2 webContentViewController];
  webView2 = [webContentViewController2 webView];
  scrollView2 = [webView2 scrollView];
  [scrollView2 frame];
  [(MUPresentationOptions *)v18 setSourceRect:?];

  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  LOBYTE(webContentViewController2) = objc_opt_respondsToSelector();

  if (webContentViewController2)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectAddRatingsWithPresentationOptions:v18 overallState:v7 originTarget:0];
  }
}

- (void)didTapOpenPhotoViewerWithActionDispatcher:(id)dispatcher index:(float)index
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mapItem = [(MUPlaceViewController *)self mapItem];
  _annotatedItemList = [mapItem _annotatedItemList];
  pictureItemContainer = [_annotatedItemList pictureItemContainer];
  pictureItems = [pictureItemContainer pictureItems];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__MUPlaceViewController_didTapOpenPhotoViewerWithActionDispatcher_index___block_invoke;
  v23[3] = &unk_1E821B928;
  v11 = v6;
  v24 = v11;
  [pictureItems enumerateObjectsUsingBlock:v23];

  if ([v11 count])
  {
    mapItem2 = [(MUPlaceViewController *)self mapItem];
    _annotatedItemList2 = [mapItem2 _annotatedItemList];
    pictureItemContainer2 = [_annotatedItemList2 pictureItemContainer];
    allowFullScreenPhoto = [pictureItemContainer2 allowFullScreenPhoto];

    if (allowFullScreenPhoto)
    {
      v16 = [MUPlacePhotoGalleryViewController alloc];
      mapItem3 = [(MUPlaceViewController *)self mapItem];
      v18 = [(MUPlacePhotoGalleryViewController *)v16 initWithPhotos:v11 additionalView:0 scrollToIndex:index mapItem:mapItem3 delegate:self];

      if (MapKitIdiomIsMacCatalyst())
      {
        [(MUPlaceViewController *)self _didRequestSceneActivationForPhotoGalleryViewController:v18];
      }

      else
      {
        v19 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v18];
        navigationController = [v19 navigationController];
        [navigationController setNavigationBarHidden:1 animated:0];

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

- (void)showSeeAllRelatedPlacesWithActionDispatcher:(id)dispatcher title:(id)title relatedMapItemIdentifiers:(id)identifiers originalMapItemIdentifier:(id)identifier
{
  v54 = *MEMORY[0x1E69E9840];
  dispatcherCopy = dispatcher;
  titleCopy = title;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  configuration = [(MUWebBasedPlacecardSectionController *)self->_flexiblePlacecardSectionController configuration];
  relatedPlacesCache = [configuration relatedPlacesCache];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__MUPlaceViewController_showSeeAllRelatedPlacesWithActionDispatcher_title_relatedMapItemIdentifiers_originalMapItemIdentifier___block_invoke;
  aBlock[3] = &unk_1E8218770;
  objc_copyWeak(&v51, &location);
  v15 = identifiersCopy;
  v47 = v15;
  v16 = relatedPlacesCache;
  v48 = v16;
  v17 = identifierCopy;
  v49 = v17;
  v32 = titleCopy;
  v50 = v32;
  v18 = _Block_copy(aBlock);
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = [v16 objectForKey:v17];
  v21 = v20 == 0;

  if (v21)
  {
    [v19 addObject:{v17, v32, dispatcherCopy}];
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
    mEMORY[0x1E696F298] = [MEMORY[0x1E696F298] sharedService];
    v30 = [mEMORY[0x1E696F298] ticketForIdentifiers:v19 traits:0];

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

- (void)openPlaceWithActionDispatcher:(id)dispatcher mapItemIdentifier:(id)identifier
{
  v15[1] = *MEMORY[0x1E69E9840];
  dispatcherCopy = dispatcher;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  mEMORY[0x1E696F298] = [MEMORY[0x1E696F298] sharedService];
  v15[0] = identifierCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v10 = [mEMORY[0x1E696F298] ticketForIdentifiers:v9 traits:0];

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

- (id)placePhotoGalleryImageViewForPhotoAtIndex:(unint64_t)index
{
  v3 = objc_opt_new();

  return v3;
}

- (void)_localeDidChange
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = [mapsAppDelegate2 placeViewControllerRequestsMapViewAssociatedWithVC:self];

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
    configuration = [v8 configuration];
    if (configuration)
    {
    }

    else
    {
      flexiblePlacecardConfig = self->_flexiblePlacecardConfig;

      if (!flexiblePlacecardConfig)
      {
        v14 = objc_alloc_init(_TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration);
        [(MUWebBasedPlacecardSectionControllerConfiguration *)v14 setMapStyle:v7];
        webPlacecardSectionController2 = self->_flexiblePlacecardConfig;
        self->_flexiblePlacecardConfig = v14;
        goto LABEL_9;
      }
    }

    webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
    configuration2 = [webPlacecardSectionController configuration];
    [configuration2 setMapStyle:v7];

    webPlacecardSectionController2 = [(MUPlaceViewController *)self webPlacecardSectionController];
    [webPlacecardSectionController2 updateUserPreferences];
LABEL_9:
  }
}

- (void)actionBarDataSourceDidUpdate:(id)update
{
  if (![(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {

    [(MUPlaceViewController *)self _updateActionBarDataSources];
  }
}

- (void)_updateActionBarDataSources
{
  v24 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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
          leadingActionBarItem = [v8 leadingActionBarItem];
          v10 = leadingActionBarItem;
          if (leadingActionBarItem)
          {
            v11 = leadingActionBarItem;

            v5 = v11;
          }
        }

        if (objc_opt_respondsToSelector())
        {
          trailingActionBarItems = [v8 trailingActionBarItems];
          if ([trailingActionBarItems count])
          {
            [array addObjectsFromArray:trailingActionBarItems];
          }
        }

        if (objc_opt_respondsToSelector())
        {
          menuActionBarItems = [v8 menuActionBarItems];
          if ([menuActionBarItems count])
          {
            [v16 addObjectsFromArray:menuActionBarItems];
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

  [(MUPlaceActionBarController *)v15->_actionBarController updateWithLeadingItem:v5 trailingItems:array menuItems:v16];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_addActionBarWithConfiguration:(id)configuration
{
  v31[3] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy && ([configurationCopy hasContent] & 1) != 0)
  {
    scrollView = [(MUPlaceViewController *)self scrollView];
    v7 = [scrollView _pocketStyleForEdge:1];

    if (v7)
    {
      scrollView2 = [(MUPlaceViewController *)self scrollView];
      [scrollView2 _setPocketStyle:0 forEdge:1];
    }

    actionBar = self->_actionBar;
    if (!actionBar)
    {
      v10 = [[MUPlaceActionBarView alloc] initWithConfiguration:v5];
      v11 = self->_actionBar;
      self->_actionBar = v10;

      [(MUPlaceActionBarView *)self->_actionBar setTranslatesAutoresizingMaskIntoConstraints:0];
      view = [(MUPlaceViewController *)self view];
      [view addSubview:self->_actionBar];

      v26 = MEMORY[0x1E696ACD8];
      leadingAnchor = [(MUPlaceActionBarView *)self->_actionBar leadingAnchor];
      view2 = [(MUPlaceViewController *)self view];
      leadingAnchor2 = [view2 leadingAnchor];
      v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v31[0] = v27;
      trailingAnchor = [(MUPlaceActionBarView *)self->_actionBar trailingAnchor];
      view3 = [(MUPlaceViewController *)self view];
      trailingAnchor2 = [view3 trailingAnchor];
      v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v31[1] = v14;
      bottomAnchor = [(MUPlaceActionBarView *)self->_actionBar bottomAnchor];
      view4 = [(MUPlaceViewController *)self view];
      bottomAnchor2 = [view4 bottomAnchor];
      v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v31[2] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
      [v26 activateConstraints:v19];

      v20 = objc_alloc_init(MEMORY[0x1E69DCEE0]);
      scrollView3 = [(MUPlaceViewController *)self scrollView];
      [v20 setScrollView:scrollView3];

      [v20 setEdge:4];
      [(MUPlaceActionBarView *)self->_actionBar addInteraction:v20];

      actionBar = self->_actionBar;
    }

    [(MUPlaceActionBarView *)actionBar setConfiguration:v5];
    traitCollection = [(MUPlaceViewController *)self traitCollection];
    -[MUPlaceActionBarView setHidden:](self->_actionBar, "setHidden:", [traitCollection _mapsui_shouldShowActionBar] ^ 1);
  }

  else
  {
    [(MUPlaceActionBarView *)self->_actionBar setHidden:1];
  }

  [(MUPlaceViewController *)self _updateBottomInset];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)sectionController:(id)controller didSelectSendToDevice:(id)device
{
  deviceCopy = device;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectSendToDevice:deviceCopy];
  }
}

- (void)sectionController:(id)controller didScroll:(id)scroll
{
  scrollCopy = scroll;
  scrollViewDelegate = [(MUPlaceViewController *)self scrollViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    scrollViewDelegate2 = [(MUPlaceViewController *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewDidScroll:scrollCopy];
  }
}

- (void)sectionController:(id)controller updateInsetsForHeaderWithTopInset:(double)inset bottom:(double)bottom
{
  insetCopy = inset;
  self->_flexiblePlacecardHeightForContentAboveTitle = -inset;
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  userInterfaceIdiom = [mEMORY[0x1E696F3B8] userInterfaceIdiom];

  if (userInterfaceIdiom != 2)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    orientation = [currentDevice orientation];

    v11 = orientation - 3;
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom2)
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
      insetCopy = 0.0;
    }

    scrollView = [(MUPlaceViewController *)self scrollView];
    [scrollView contentInset];
    v18 = v17;
    v20 = v19;
    v22 = v21;

    scrollView2 = [(MUPlaceViewController *)self scrollView];
    [scrollView2 setContentInset:{insetCopy, v18, v20, v22}];

    scrollView3 = [(MUPlaceViewController *)self scrollView];
    [scrollView3 setContentOffset:0 animated:{0.0, -insetCopy}];
  }
}

- (void)sectionControllerWebContentLoadCompleted:(id)completed
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E696F120] object:self];
}

- (void)showContentIfLoaded
{
  v12 = *MEMORY[0x1E69E9840];
  isLoading = [(MUPlaceViewController *)self isLoading];
  v4 = MUGetPlaceCardLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (isLoading)
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
  isLoading = [(MUPlaceViewController *)self isLoading];
  v4 = MUGetPlaceCardLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (isLoading)
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
    view = [(MUPlaceViewController *)self view];
    v6 = [(MULoadingOverlayController *)v4 initWithParentView:view contentView:self->_contentStackView];
    v7 = self->_loadingOverlayController;
    self->_loadingOverlayController = v6;

    loadingOverlayController = self->_loadingOverlayController;
  }

  [(MULoadingOverlayController *)loadingOverlayController attachLoadingOverlay];
}

- (BOOL)isLoading
{
  placeItem = [(MUPlaceViewController *)self placeItem];
  isIntermediateMapItem = [placeItem isIntermediateMapItem];

  return isIntermediateMapItem;
}

- (BOOL)shouldBlurChromeHeaderButtons
{
  headerSectionController = [(MUPlaceViewController *)self headerSectionController];
  shouldBlurChromeHeaderButtons = [headerSectionController shouldBlurChromeHeaderButtons];

  return shouldBlurChromeHeaderButtons;
}

- (id)createShareSheetFooterActions
{
  createContactActions = [(MUPlaceActionManager *)self->_actionManager createContactActions];
  actionManager = self->_actionManager;
  presentationOptions = [(MUShareSheetPresenter *)self->_shareSheetPresenter presentationOptions];
  analyticsModuleMetadata = [(MKPlaceActionEnvironment *)self->_currentEnvironmentForPresentedViewController analyticsModuleMetadata];
  v7 = [MUBlockActivity createBlockActivitiesFromPlaceActionItems:createContactActions usingActionManager:actionManager presentationOptions:presentationOptions analyticsModuleMetadata:analyticsModuleMetadata];

  return v7;
}

- (id)shareSheetPresenterRequestsOverridenActivityViewController:(id)controller
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = [mapsAppDelegate2 activityViewControllerForPlaceViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_launchAttributionURLs:(id)ls withAttribution:(id)attribution completionHandler:(id)handler
{
  lsCopy = ls;
  attributionCopy = attribution;
  handlerCopy = handler;
  if ([lsCopy count])
  {
    v11 = [MEMORY[0x1E696F378] punchoutOptionsForURLStrings:lsCopy withAttribution:attributionCopy];
    if ([v11 strategy] == 1)
    {
      analyticsController = self->_analyticsController;
      urlToOpen = [v11 urlToOpen];
      absoluteString = [urlToOpen absoluteString];
      providerID = [attributionCopy providerID];
      [(MUPlaceCardAnalyticsController *)analyticsController instrumentPunchoutActionWithURL:absoluteString providerId:providerID];

      mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
      urlToOpen2 = [v11 urlToOpen];
      appBundleIdentifier = [v11 appBundleIdentifier];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __82__MUPlaceViewController__launchAttributionURLs_withAttribution_completionHandler___block_invoke;
      v22[3] = &unk_1E821A780;
      v24 = handlerCopy;
      v23 = v11;
      [mEMORY[0x1E696F3B8] openURL:urlToOpen2 bundleIdentifier:appBundleIdentifier completionHandler:v22];
    }

    else
    {
      mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
        [mapsAppDelegate2 placeViewController:self launchAttributionURLs:lsCopy withAttribution:attributionCopy completionHandler:handlerCopy];
      }

      else
      {
        [MEMORY[0x1E696F198] launchAttributionURLs:lsCopy withAttribution:attributionCopy completionHandler:handlerCopy];
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

- (void)_didSelectEditPlaceDetailsOfType:(int64_t)type
{
  analyticsController = self->_analyticsController;
  if ((type - 1) > 5)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E82189E0[type - 1];
  }

  [(MUPlaceCardAnalyticsController *)analyticsController infoCardAnalyticsDidSelectAction:289 target:65 eventValue:v6 feedbackDelegateSelector:62 actionRichProviderId:0 classification:0];
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectEditPlaceDetailsOfType:type];
  }
}

- (void)_inlineRAPDidSelectAddMissingDataOfType:(int64_t)type
{
  analyticsController = self->_analyticsController;
  if ((type - 1) > 5)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E82189E0[type - 1];
  }

  [(MUPlaceCardAnalyticsController *)analyticsController infoCardAnalyticsDidSelectAction:286 eventValue:v6 feedbackDelegateSelector:62 classification:0];
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectAddMissingDataOfType:type];
  }
}

- (void)placeInfoSectionController:(id)controller didTapAttribution:(id)attribution
{
  attributionCopy = attribution;
  mapItem = [(MUPlaceViewController *)self mapItem];
  [(MUPlaceViewController *)self _launchAttribution:attributionCopy withMapItem:mapItem];
}

- (void)placeInfoSectionController:(id)controller selectedDirectionsWithAddress:(id)address forContact:(id)contact options:(id)options
{
  addressCopy = address;
  contactCopy = contact;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    transportTypePreferenceNumber = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
    [mapsAppDelegate2 placeViewController:self didSelectDirectionsForDestinationAddress:addressCopy contact:contactCopy transportType:transportTypePreferenceNumber];
  }
}

- (void)placeInfoSectionController:(id)controller selectedDirectionsWithMapItem:(id)item options:(id)options
{
  itemCopy = item;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    transportTypePreferenceNumber = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
    [mapsAppDelegate2 placeViewController:self didSelectDirectionsForDestinationMapItem:itemCopy transportType:transportTypePreferenceNumber];
  }
}

- (void)_didSelectDirectionsWithAddress:(id)address forContact:(id)contact
{
  addressCopy = address;
  contactCopy = contact;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    transportTypePreferenceNumber = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
    [mapsAppDelegate2 placeViewController:self didSelectDirectionsForDestinationAddress:addressCopy contact:contactCopy transportType:transportTypePreferenceNumber];
  }
}

- (void)_invokeShareActionWithPresentationOptions:(id)options analyticsModuleMetadata:(id)metadata
{
  optionsCopy = options;
  metadataCopy = metadata;
  v7 = [objc_alloc(MEMORY[0x1E696F308]) initWithType:16 displayString:0 glyph:0 enabled:1];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sourceView = [optionsCopy sourceView];

  if (sourceView)
  {
    sourceView2 = [optionsCopy sourceView];
    [v8 setObject:sourceView2 forKeyedSubscript:*MEMORY[0x1E696F118]];
  }

  sourceItem = [optionsCopy sourceItem];

  if (sourceItem)
  {
    sourceItem2 = [optionsCopy sourceItem];
    [v8 setObject:sourceItem2 forKeyedSubscript:*MEMORY[0x1E696F110]];
  }

  if (metadataCopy)
  {
    [v8 setObject:metadataCopy forKeyedSubscript:*MEMORY[0x1E696F108]];
  }

  actionManager = self->_actionManager;
  v14 = [v8 copy];
  [(MUPlaceActionManager *)actionManager performAction:v7 options:v14 completion:0];
}

- (void)placeHeaderSectionController:(id)controller didSelectShareWithPresentationOptions:(id)options
{
  optionsCopy = options;
  v7 = [controller analyticsModuleForAction:0 presentationOptions:optionsCopy];
  [(MUPlaceViewController *)self _invokeShareActionWithPresentationOptions:optionsCopy analyticsModuleMetadata:v7];
}

- (void)_handleRoutingToPlaceWithMapItem:(id)item
{
  itemCopy = item;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectParent:itemCopy];
  }

  else
  {
    [itemCopy openInMapsWithLaunchOptions:0];
  }
}

- (double)placeHeaderSectionControllerRequestsPaddingConstant:(id)constant
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
  [mapsAppDelegate2 placeViewControllerPlaceCardHeaderTitlePaddingConstant:self];
  v8 = v7;

  return v8;
}

- (double)placeHeaderSectionControllerRequestsTrailingConstant:(id)constant
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
  [mapsAppDelegate2 placeViewControllerPlaceCardHeaderTitleTrailingConstant:self];
  v8 = v7;

  return v8;
}

- (id)inlineRatingsSectionControllerRequestsContentViewController:(id)controller
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = [mapsAppDelegate2 inlineRatingViewControllerForPlaceViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)ratingsAndReviewsSectionControllerDidSelectViewAllReviews:(id)reviews
{
  mapItem = [(MUPlaceViewController *)self mapItem];
  _reviewsAttribution = [mapItem _reviewsAttribution];
  attributionURLs = [_reviewsAttribution attributionURLs];
  placeViewFeedbackAppLaunchHandler = [(MUPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
  [(MUPlaceViewController *)self _launchAttributionURLs:attributionURLs withAttribution:_reviewsAttribution completionHandler:placeViewFeedbackAppLaunchHandler];
}

- (void)_ratingsAndReviewsDidSelectViewReview:(id)review
{
  reviewCopy = review;
  mapItem = [(MUPlaceViewController *)self mapItem];
  _reviewsAttribution = [mapItem _reviewsAttribution];
  v6 = [_reviewsAttribution urlsForReview:reviewCopy];

  if ([v6 count])
  {
    placeViewFeedbackAppLaunchHandler = [(MUPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
    [(MUPlaceViewController *)self _launchAttributionURLs:v6 withAttribution:_reviewsAttribution completionHandler:placeViewFeedbackAppLaunchHandler];
  }
}

- (id)createHeaderButtonsMenuWithPromotedSystemActionTypes:(id)types excludedSystemActionTypes:(id)actionTypes presentationOptions:(id)options
{
  typesCopy = types;
  actionTypesCopy = actionTypes;
  optionsCopy = options;
  createMenuActions = [(MUPlaceActionManager *)self->_actionManager createMenuActions];
  v12 = objc_alloc(MEMORY[0x1E696F310]);
  v13 = [(MUPlaceViewController *)self createHeaderMenuSortOrderWithPromotedActionTypes:typesCopy excludedActionTypes:actionTypesCopy];
  v14 = [v12 initWithRequestedActionTypes:v13];

  [v14 setAddMismatchedItems:0];
  if ([optionsCopy isForActionBarMoreMenu])
  {
    v15 = @"SECONDARY";
  }

  else
  {
    isForActionBar = [optionsCopy isForActionBar];
    v15 = @"PRIMARY";
    if (!isForActionBar)
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
  v19 = optionsCopy;
  v24 = v19;
  objc_copyWeak(&v26, &location);
  v20 = v17;
  v25 = v20;
  v21 = [v18 buildActionMenuForItems:createMenuActions buildingOptions:v14 menuElementCreationBlock:v23];

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

- (id)createHeaderMenuSortOrderWithPromotedActionTypes:(id)types excludedActionTypes:(id)actionTypes
{
  v27[12] = *MEMORY[0x1E69E9840];
  typesCopy = types;
  actionTypesCopy = actionTypes;
  if (([(MUPlaceViewController *)self options]& 0x20000000) != 0)
  {
    v9 = *MEMORY[0x1E696F0E0];
    actionRowSectionController = [(MUPlaceViewController *)self actionRowSectionController];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(_MKPlaceItem *)self->_placeItem representsPerson])
    {
      [v11 addObject:&unk_1F450D9B8];
    }

    if ([typesCopy count])
    {
      [v11 addObjectsFromArray:typesCopy];
    }

    if (!actionRowSectionController)
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
    v14 = actionTypesCopy;
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
    v8 = typesCopy;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)contactsNavigationController
{
  configuration = [(MUPlaceViewController *)self configuration];
  contactsNavigationController = [configuration contactsNavigationController];

  return contactsNavigationController;
}

- (void)_authorized_contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  objc_initWeak(&location, self);
  contactStore = [(MUPlaceViewController *)self contactStore];
  v9 = MEMORY[0x1E69E96A0];
  v10 = MEMORY[0x1E69E96A0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__MUPlaceViewController__authorized_contactPicker_didSelectContact___block_invoke;
  v13[3] = &unk_1E82186D0;
  v11 = contactCopy;
  v14 = v11;
  v12 = pickerCopy;
  v15 = v12;
  objc_copyWeak(&v17, &location);
  selfCopy = self;
  [contactStore fetchContactForPickerDisplayUsingContact:v11 callbackQueue:v9 completion:v13];

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

- (void)_unauthorized_contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__MUPlaceViewController__unauthorized_contactPicker_didSelectContact___block_invoke;
  v9[3] = &unk_1E8218520;
  objc_copyWeak(&v12, &location);
  v8 = contactCopy;
  v10 = v8;
  selfCopy = self;
  [pickerCopy dismissViewControllerAnimated:1 completion:v9];

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

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  pickerCopy = picker;
  contactStore = [(MUPlaceViewController *)self contactStore];
  hasContactAccess = [contactStore hasContactAccess];

  if (hasContactAccess)
  {
    [(MUPlaceViewController *)self _authorized_contactPicker:pickerCopy didSelectContact:contactCopy];
  }

  else
  {
    [(MUPlaceViewController *)self _unauthorized_contactPicker:pickerCopy didSelectContact:contactCopy];
  }
}

- (void)contactViewController:(id)controller didDeleteContact:(id)contact
{
  controllerCopy = controller;
  if (self->_editingContactController == controllerCopy)
  {
    v11 = controllerCopy;
    [(CNContactViewController *)controllerCopy dismissViewControllerAnimated:1 completion:0];
    editingContactController = self->_editingContactController;
    self->_editingContactController = 0;

    contactsNavigationController = [(MUPlaceViewController *)self contactsNavigationController];
    v8 = objc_opt_respondsToSelector();

    controllerCopy = v11;
    if (v8)
    {
      contactsNavigationController2 = [(MUPlaceViewController *)self contactsNavigationController];
      _contactForEditOperations = [(MUPlaceViewController *)self _contactForEditOperations];
      [contactsNavigationController2 contactViewController:v11 didDeleteContact:_contactForEditOperations];

      controllerCopy = v11;
    }
  }
}

- (void)_tearDownContactPickersForCompletionWithViewController:(id)controller
{
  controllerCopy = controller;
  editingContactController = self->_editingContactController;
  self->_editingContactController = 0;

  updatingContactController = self->_updatingContactController;
  self->_updatingContactController = 0;

  creatingContactController = self->_creatingContactController;
  self->_creatingContactController = 0;

  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  userInterfaceIdiom = [mEMORY[0x1E696F3B8] userInterfaceIdiom];

  if (userInterfaceIdiom && MapKitIdiomIsMacCatalyst() && ([(MUPlaceViewController *)self placeViewControllerDelegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11 & 1) != 0))
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__MUPlaceViewController__tearDownContactPickersForCompletionWithViewController___block_invoke;
    v12[3] = &unk_1E8218520;
    objc_copyWeak(&v14, &location);
    v12[4] = self;
    v13 = controllerCopy;
    [v13 dismissViewControllerAnimated:1 completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [controllerCopy dismissViewControllerAnimated:1 completion:0];
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

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  v8 = contactCopy;
  if (self->_editingContactController == controllerCopy)
  {
    if (contactCopy)
    {
      objc_initWeak(&location, self);
      contactStore = [(MUPlaceViewController *)self contactStore];
      v10 = MEMORY[0x1E69E96A0];
      v11 = MEMORY[0x1E69E96A0];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __70__MUPlaceViewController_contactViewController_didCompleteWithContact___block_invoke;
      v29[3] = &unk_1E82185E0;
      objc_copyWeak(&v31, &location);
      v30 = controllerCopy;
      [contactStore removeMapsDataFromContact:v8 callbackQueue:v10 completion:v29];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    goto LABEL_9;
  }

  if (!contactCopy)
  {
LABEL_6:
    [(MUPlaceCardAnalyticsController *)self->_analyticsController infoCardAnalyticsDidSelectAction:4 target:624 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
LABEL_9:
    [(MUPlaceViewController *)self _tearDownContactPickersForCompletionWithViewController:controllerCopy];
    goto LABEL_10;
  }

  [(MUPlaceCardAnalyticsController *)self->_analyticsController infoCardAnalyticsDidSelectAction:17 target:624 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  if (self->_creatingContactController != controllerCopy)
  {
    if (self->_updatingContactController != controllerCopy)
    {
      [(MUPlaceViewController *)self setShowContactActions:1];
      [(MUPlaceViewController *)self _tearDownContactPickersForCompletionWithViewController:controllerCopy];
      goto LABEL_6;
    }

    objc_initWeak(&location, self);
    contactStore2 = [(MUPlaceViewController *)self contactStore];
    v20 = MEMORY[0x1E69E96A0];
    v21 = MEMORY[0x1E69E96A0];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__MUPlaceViewController_contactViewController_didCompleteWithContact___block_invoke_4;
    v22[3] = &unk_1E82185E0;
    objc_copyWeak(&v24, &location);
    v23 = controllerCopy;
    [contactStore2 removeMapsDataFromContact:v8 callbackQueue:v20 completion:v22];

    v18 = &v24;
LABEL_15:
    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
    goto LABEL_10;
  }

  contactStore3 = [(MUPlaceViewController *)self contactStore];
  if (![contactStore3 hasContactAccess])
  {

    goto LABEL_10;
  }

  originalContactCopy = self->_originalContactCopy;

  if (originalContactCopy)
  {
    objc_initWeak(&location, self);
    contactStore4 = [(MUPlaceViewController *)self contactStore];
    v15 = MEMORY[0x1E69E96A0];
    v16 = MEMORY[0x1E69E96A0];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __70__MUPlaceViewController_contactViewController_didCompleteWithContact___block_invoke_2;
    v25[3] = &unk_1E82185B8;
    objc_copyWeak(&v28, &location);
    v17 = controllerCopy;
    v26 = v17;
    selfCopy = self;
    [contactStore4 fetchContactForPickerDisplayUsingContact:v8 callbackQueue:v15 completion:v25];

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

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  [(MUPlaceCardAnalyticsController *)self->_analyticsController instrumentVerticalScrollWithBeginningPoint:offset targetContentOffset:self->_beginAnalyticsScrollingPoint.x velocity:self->_beginAnalyticsScrollingPoint.y, x, y];
  scrollViewDelegate = [(MUPlaceViewController *)self scrollViewDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    scrollViewDelegate2 = [(MUPlaceViewController *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  [draggingCopy contentOffset];
  self->_beginAnalyticsScrollingPoint.x = v4;
  self->_beginAnalyticsScrollingPoint.y = v5;
  scrollViewDelegate = [(MUPlaceViewController *)self scrollViewDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    scrollViewDelegate2 = [(MUPlaceViewController *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator logImpressions];
  [scrollCopy contentOffset];
  [(MUPlaceViewController *)self contentAboveTitleScrollPositionChanged:v4];
  scrollViewDelegate = [(MUPlaceViewController *)self scrollViewDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    scrollViewDelegate2 = [(MUPlaceViewController *)self scrollViewDelegate];
    [scrollViewDelegate2 scrollViewDidScroll:scrollCopy];
  }
}

- (void)_dismissModalViewController
{
  LODWORD(v7) = 0;
  [(MUPlaceCardAnalyticsController *)self->_analyticsController infoCardAnalyticsDidSelectAction:4 target:628 eventValue:0 actionURL:0 photoID:0 moduleMetadata:0 feedbackDelegateSelector:v7 actionRichProviderId:0 classification:0];
  presentedViewController = [(MUPlaceViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v8 = presentedViewController;
    presentedViewController2 = [(MUPlaceViewController *)self presentedViewController];
    if ([presentedViewController2 isBeingDismissed])
    {
    }

    else
    {
      presentedViewController3 = [(MUPlaceViewController *)self presentedViewController];
      isBeingPresented = [presentedViewController3 isBeingPresented];

      if ((isBeingPresented & 1) == 0)
      {

        [(MUPlaceViewController *)self dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

- (void)_presentModalViewController:(id)controller withEnvironment:(id)environment
{
  objc_storeStrong(&self->_currentEnvironmentForPresentedViewController, environment);
  controllerCopy = controller;
  [(MUPlaceViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (id)_traits
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 traitsForPlaceViewController:self];
  }

  else
  {
    mapsAppDelegate2 = [MEMORY[0x1E696F298] sharedService];
    [mapsAppDelegate2 defaultTraits];
  }
  v6 = ;

  return v6;
}

- (void)transitDeparturesSectionController:(id)controller didSelectAttribution:(id)attribution
{
  v5 = [attribution url];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    [(MUPlaceViewController *)self _openWebURL:v6 forcePunchout:0];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)transitDeparturesSectionController:(id)controller showIncidents:(id)incidents
{
  incidentsCopy = incidents;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self showTransitIncidents:incidentsCopy];
  }

  else
  {
    mapsAppDelegate2 = [objc_alloc(MEMORY[0x1E696F238]) initWithTransitIncidents:incidentsCopy];

    incidentsCopy = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:mapsAppDelegate2];
    [incidentsCopy setModalPresentationStyle:-2];
    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissModalViewController];
    navigationItem = [mapsAppDelegate2 navigationItem];
    [navigationItem setLeftBarButtonItem:v8];

    v10 = objc_alloc_init(MEMORY[0x1E696F2F8]);
    v11 = [MEMORY[0x1E69A1B10] moduleFromModuleType:6];
    [v10 setAnalyticsModuleMetadata:v11];

    [(MUPlaceViewController *)self _presentModalViewController:incidentsCopy withEnvironment:v10];
  }
}

- (void)_transitDeparturesDidSelectTransitLine:(id)line usingPresentationOptions:(id)options completion:(id)completion
{
  lineCopy = line;
  optionsCopy = options;
  completionCopy = completion;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    if (MapKitIdiomIsMacCatalyst())
    {
      mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
      [mapsAppDelegate2 placeViewController:self didSelectTransitLine:lineCopy];
    }

    else
    {
      if ([optionsCopy isForActionBarMoreMenu])
      {
        v14 = @"SECONDARY";
      }

      else
      {
        isForActionBar = [optionsCopy isForActionBar];
        v14 = @"PRIMARY";
        if (!isForActionBar)
        {
          v14 = 0;
        }
      }

      v16 = v14;
      v17 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
      sourceView = [optionsCopy sourceView];
      popoverPresentationController = [v17 popoverPresentationController];
      [popoverPresentationController setSourceView:sourceView];

      [optionsCopy sourceRect];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      popoverPresentationController2 = [v17 popoverPresentationController];
      [popoverPresentationController2 setSourceRect:{v21, v23, v25, v27}];

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
      v47 = lineCopy;
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
      v43 = completionCopy;
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

- (void)_transitDeparturesDidSelectDepartureSequence:(id)sequence usingMapItem:(id)item
{
  sequenceCopy = sequence;
  itemCopy = item;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectDepartureSequence:sequenceCopy mapItem:itemCopy];
  }
}

- (void)transitDeparturesSectionController:(id)controller didSelectConnectionInformation:(id)information
{
  informationCopy = information;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectTransitConnectionInformation:informationCopy];
  }

  else
  {
    mapsAppDelegate2 = [MEMORY[0x1E696F3B8] sharedInstance];
    urlToOpen = [informationCopy urlToOpen];

    [mapsAppDelegate2 openURL:urlToOpen completionHandler:0];
    informationCopy = urlToOpen;
  }
}

- (BOOL)_transitDeparturesCanSelectDepartureSequence:(id)sequence usingMapItem:(id)item
{
  sequenceCopy = sequence;
  itemCopy = item;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    v11 = [mapsAppDelegate2 placeViewController:self canSelectDepartureSequence:sequenceCopy mapItem:itemCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)placePhotoSectionController:(id)controller requestsAddPhotosToMapsWithEntryPoint:(int64_t)point options:(id)options
{
  optionsCopy = options;
  presentingViewController = [optionsCopy presentingViewController];

  if (!presentingViewController)
  {
    [optionsCopy setPresentingViewController:self];
  }

  [(MUPlaceViewController *)self presentAddPhotosWithPresentationOptions:optionsCopy entryPoint:point originTarget:@"PLACECARD_PHOTO_VIEWER_GALLERY"];
}

- (void)placePhotoSectionController:(id)controller requestsToOpenPhotoAttribution:(id)attribution presentationOptions:(id)options
{
  optionsCopy = options;
  attributionCopy = attribution;
  presentingViewController = [optionsCopy presentingViewController];

  if (!presentingViewController)
  {
    [optionsCopy setPresentingViewController:self];
  }

  mapItem = [(MUPlaceViewController *)self mapItem];
  providerID = [attributionCopy providerID];
  attributionURLs = [attributionCopy attributionURLs];
  presentingViewController2 = [optionsCopy presentingViewController];
  [(MUPlaceViewController *)self _presentStoreProductScreenWithMapItem:mapItem attribution:attributionCopy bundleIdentifier:providerID attributionURLs:attributionURLs presentingViewController:presentingViewController2];
}

- (void)_openThumbnailGalleryWithStartingIndex:(unint64_t)index
{
  v16[1] = *MEMORY[0x1E69E9840];
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectSeeMorePhotos:self withStartingIndex:index];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = MEMORY[0x1E696F270];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v16[0] = mapItem;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v14 = *MEMORY[0x1E696F088];
    v15 = MEMORY[0x1E695E118];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v8 openMapsWithItems:v10 launchOptions:v11 completionHandler:0];

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (void)_didTapOnSearchCategory:(id)category
{
  categoryCopy = category;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectSearchCategory:categoryCopy];
  }
}

- (void)pictureItemSectionController:(id)controller requestsSceneActivationWithPhotoGallery:(id)gallery
{
  galleryCopy = gallery;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didRequestSceneActivationForPhotoGalleryViewController:galleryCopy];
  }
}

- (void)_didSelectCreateCustomRouteWithOriginMapItem:(id)item
{
  itemCopy = item;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidTapHikingTip:self originMapItem:itemCopy];
  }
}

- (void)_didSelectSimulateLocation
{
  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  isInternalInstall = [mEMORY[0x1E69A2398] isInternalInstall];

  if (isInternalInstall)
  {
    mapItem = [(MUPlaceViewController *)self mapItem];
    [mapItem _coordinate];
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

- (void)placeCardActionControllerDidRequestCopy:(id)copy
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidRequestCopy:self];
  }
}

- (void)placeCardActionControllerDidSelectOfflineManagement:(id)management
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectOfflineManagement:self];
  }
}

- (void)placeCardActionControllerDidSelectPauseOfflineDownload:(id)download
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectPauseOfflineDownload:self];
  }
}

- (void)placeCardActionControllerDidSelectReportAProblemViewReport:(id)report
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectRAPViewReport:self];
  }
}

- (void)_didSelectRemoveMarkedLocation
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectRemoveMarker:self];
  }
}

- (void)placeActionManager:(id)manager didSelectAddToExistingContactWithEnvironment:(id)environment
{
  managerCopy = manager;
  environmentCopy = environment;
  sourceView = [environmentCopy sourceView];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__MUPlaceViewController_placeActionManager_didSelectAddToExistingContactWithEnvironment___block_invoke;
  aBlock[3] = &unk_1E8218520;
  objc_copyWeak(&v20, &location);
  v9 = sourceView;
  v18 = v9;
  v10 = environmentCopy;
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

- (void)placeCardActionControllerDidSelectAddPhoto:(id)photo presentingViewController:(id)controller sourceView:(id)view
{
  viewCopy = view;
  controllerCopy = controller;
  v8 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v8 setSourceView:viewCopy];
  [(MUPresentationOptions *)v8 setPresentingViewController:controllerCopy];

  if ([viewCopy conformsToProtocol:&unk_1F4539980])
  {
    [(MUPresentationOptions *)v8 setProgressObserver:viewCopy];
  }

  [(MUPlaceViewController *)self presentAddPhotosWithPresentationOptions:v8 entryPoint:0 originTarget:0];
}

- (void)placeCardActionControllerDidSelectChangeAddress:(id)address
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectChangeAddress:self];
  }
}

- (void)placeCardActionControllerDidSelectRefineLocation:(id)location
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectRefineLocation:self];
  }
}

- (void)placeCardActionControllerDidSelectRemoveFromMapsHome:(id)home
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectRemoveShortcut:self];
  }
}

- (void)placeCardActionControllerDidSelectAddToMapsHome:(id)home
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectAddShortcut:self];
  }
}

- (void)_presentAddNewContactPickerForContact:(id)contact withEnvironment:(id)environment
{
  contactCopy = contact;
  environmentCopy = environment;
  v8 = [MEMORY[0x1E695D148] viewControllerForNewContact:contactCopy];
  [v8 setDisplayMode:1];
  [v8 setDelegate:self];
  objc_storeStrong(&self->_creatingContactController, v8);
  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  if (![mEMORY[0x1E696F3B8] userInterfaceIdiom])
  {
LABEL_8:

    goto LABEL_9;
  }

  IsMacCatalyst = MapKitIdiomIsMacCatalyst();

  if ((IsMacCatalyst & 1) == 0)
  {
    [v9 setModalPresentationStyle:7];
    mEMORY[0x1E696F3B8] = [v9 popoverPresentationController];
    sourceView = [environmentCopy sourceView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [mEMORY[0x1E696F3B8] setSourceItem:sourceView];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [mEMORY[0x1E696F3B8] setSourceView:sourceView];
        [sourceView bounds];
        [mEMORY[0x1E696F3B8] setSourceRect:?];
      }
    }

    [mEMORY[0x1E696F3B8] setPermittedArrowDirections:15];

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
    [(MUPlaceViewController *)self _presentModalViewController:v9 withEnvironment:environmentCopy];
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

- (void)placeActionManager:(id)manager didSelectAddToContactsUsingEnvironment:(id)environment
{
  managerCopy = manager;
  environmentCopy = environment;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectAddToContacts:self];
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__MUPlaceViewController_placeActionManager_didSelectAddToContactsUsingEnvironment___block_invoke;
    aBlock[3] = &unk_1E8219F48;
    objc_copyWeak(&v18, &location);
    v17 = environmentCopy;
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

- (BOOL)_presentOfflineAlertIfNecessaryForUGC:(int64_t)c
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
  v8 = [mapsAppDelegate2 placeViewController:self presentOfflineAlertIfNecessaryForUGC:c];

  return v8;
}

- (void)placeActionManager:(id)manager didSelectAddToFavoritesGuideWithEnvironment:(id)environment
{
  if (![(MUPlaceViewController *)self _presentOfflineAlertIfNecessaryForUGC:4, environment])
  {
    mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
      [mapsAppDelegate2 placeViewControllerDidSelectAddOrRemoveFromFavoritesGuide:self];
    }
  }
}

- (void)placeActionManager:(id)manager didSelectRateWithEnvironment:(id)environment
{
  if (![(MUPlaceViewController *)self _presentOfflineAlertIfNecessaryForUGC:5, environment])
  {
    mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
      v7 = objc_opt_new();
      [mapsAppDelegate2 placeViewController:self didSelectAddRatingsWithPresentationOptions:v7 overallState:0 originTarget:0];
    }
  }
}

- (void)_didSelectAddOrEditNote
{
  libraryAccessProvider = [(MUPlaceViewController *)self libraryAccessProvider];

  if (libraryAccessProvider)
  {
    mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
      libraryAccessProvider2 = [(MUPlaceViewController *)self libraryAccessProvider];
      placeNote = [libraryAccessProvider2 placeNote];
      libraryAccessProvider3 = [(MUPlaceViewController *)self libraryAccessProvider];
      [mapsAppDelegate2 placeViewController:self didRequestEditingNoteWithInitialText:placeNote libraryAccessProvider:libraryAccessProvider3 completion:&__block_literal_global_383];
    }
  }
}

- (void)placeActionManager:(id)manager didSelectAddToGuidesWithEnvironment:(id)environment
{
  environmentCopy = environment;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectAddToCollectionWithPlaceActionEnvironment:environmentCopy showsAddToLibrarySection:0];
  }
}

- (void)placeActionManager:(id)manager didSelectDirectionsWithEnvironment:(id)environment
{
  analyticsModuleMetadata = [environment analyticsModuleMetadata];
  if ([analyticsModuleMetadata type] == 40)
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
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectPlaceEnrichmentRAP:self];
  }
}

- (void)_showShareSheetNoDeviceLockCheckWithEnvironment:(id)environment
{
  objc_storeStrong(&self->_currentEnvironmentForPresentedViewController, environment);
  environmentCopy = environment;
  v10 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v10 setPresentingViewController:self];
  sourceView = [environmentCopy sourceView];
  [(MUPresentationOptions *)v10 setSourceView:sourceView];

  sourceItem = [environmentCopy sourceItem];
  [(MUPresentationOptions *)v10 setSourceItem:sourceItem];

  v8 = [[MUShareSheetPresenter alloc] initWithPlaceItem:self->_placeItem presentationOptions:v10];
  shareSheetPresenter = self->_shareSheetPresenter;
  self->_shareSheetPresenter = v8;

  [(MUShareSheetPresenter *)self->_shareSheetPresenter setDelegate:self];
  [(MUShareSheetPresenter *)self->_shareSheetPresenter present];
}

- (void)_showShareSheetWithEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_initWeak(&location, self);
  lockScreenCoordinator = self->_lockScreenCoordinator;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MUPlaceViewController__showShareSheetWithEnvironment___block_invoke;
  v7[3] = &unk_1E8219F48;
  objc_copyWeak(&v9, &location);
  v6 = environmentCopy;
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

  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    transportTypePreferenceNumber = [(MKETAProvider *)self->_etaProvider transportTypePreferenceNumber];
    [mapsAppDelegate2 placeViewController:self didSelectRouteToCurrentSearchResultWithTransportTypePreference:transportTypePreferenceNumber];
LABEL_15:

    goto LABEL_16;
  }

  placeViewControllerDelegate = [(MUPlaceViewController *)self placeViewControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self placeViewControllerDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectDirectionsToAddress:self];
LABEL_16:

    goto LABEL_17;
  }

  mapItem = [(MUPlaceViewController *)self mapItem];

  if (mapItem)
  {
    IsEnabled_DefaultNavigation1PEnabled = MapsFeature_IsEnabled_DefaultNavigation1PEnabled();
    options = self->_options;
    v13 = IsEnabled_DefaultNavigation1PEnabled & ((options & 0x2000000000000) != 0);
    if ((options & 0x100000000) != 0)
    {
      mapItem2 = [(MUPlaceViewController *)self mapItem];
      v27[0] = mapItem2;
      mapsAppDelegate2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];

      v18 = *MEMORY[0x1E696F0C0];
      v25[0] = *MEMORY[0x1E696F4C8];
      v25[1] = v18;
      v26[0] = MEMORY[0x1E695E118];
      v26[1] = &unk_1F450D9A0;
      transportTypePreferenceNumber = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __40__MUPlaceViewController__openDirections__block_invoke;
      aBlock[3] = &unk_1E821A1F0;
      aBlock[4] = self;
      v16 = _Block_copy(aBlock);
    }

    else
    {
      mapItemForCurrentLocation = [MEMORY[0x1E696F270] mapItemForCurrentLocation];
      v24[0] = mapItemForCurrentLocation;
      mapItem3 = [(MUPlaceViewController *)self mapItem];
      v24[1] = mapItem3;
      mapsAppDelegate2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

      v22 = *MEMORY[0x1E696F080];
      v23 = *MEMORY[0x1E696F078];
      transportTypePreferenceNumber = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = &__block_literal_global_369;
    }

    if (v13)
    {
      [MEMORY[0x1E696F270] _openDefaultNavigationWithItems:mapsAppDelegate2 launchOptions:transportTypePreferenceNumber fromScene:0 completionHandler:v16];
    }

    else
    {
      [MEMORY[0x1E696F270] openMapsWithItems:mapsAppDelegate2 launchOptions:transportTypePreferenceNumber completionHandler:v16];
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

- (void)_placeSectionController:(id)controller didSelectPrimaryType:(unint64_t)type withPresentationOptions:(id)options
{
  controllerCopy = controller;
  optionsCopy = options;
  sourceView = [optionsCopy sourceView];
  if ([optionsCopy isForActionBarMoreMenu])
  {
    v11 = @"SECONDARY";
  }

  else
  {
    isForActionBar = [optionsCopy isForActionBar];
    v11 = @"PRIMARY";
    if (!isForActionBar)
    {
      v11 = 0;
    }
  }

  v13 = v11;
  if (type > 2)
  {
    if (type == 3)
    {
      v17 = objc_alloc_init(MEMORY[0x1E696F2F8]);
      [v17 setSourceView:sourceView];
      v18 = [controllerCopy analyticsModuleForAction:0 presentationOptions:optionsCopy];
      [v17 setAnalyticsModuleMetadata:v18];

      mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        objc_initWeak(&location, self);
        mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __94__MUPlaceViewController__placeSectionController_didSelectPrimaryType_withPresentationOptions___block_invoke;
        v22[3] = &unk_1E8218570;
        objc_copyWeak(&v24, &location);
        v23 = v17;
        [mapsAppDelegate2 placeViewController:self didSelectShareCurrentLocationWithCompletion:v22];

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      else
      {
        [(MUPlaceViewController *)self _showShareSheetWithEnvironment:v17];
      }
    }

    else if (type == 4)
    {
      v14 = controllerCopy;
      v15 = 6097;
      goto LABEL_12;
    }
  }

  else
  {
    if (type == 1)
    {
      v14 = controllerCopy;
      v15 = 6003;
      v16 = 12;
      goto LABEL_14;
    }

    if (type == 2)
    {
      v14 = controllerCopy;
      v15 = 3001;
LABEL_12:
      v16 = 0;
LABEL_14:
      [v14 captureInfoCardAction:v15 eventValue:0 feedbackType:v16 presentationOptions:optionsCopy classification:v13];
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
  libraryAccessProvider = [(MUPlaceViewController *)self libraryAccessProvider];
  if (libraryAccessProvider && (v4 = libraryAccessProvider, -[MUPlaceViewController libraryAccessProvider](self, "libraryAccessProvider"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 savedStateOfPlace], v5, v4, v6))
  {
    libraryAccessProvider2 = [(MUPlaceViewController *)self libraryAccessProvider];
    placeNote = [libraryAccessProvider2 placeNote];
    if ([placeNote length])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [(MUPlaceActionManager *)self->_actionManager setPlaceHasNote:v9];

    webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
    configuration = [webPlacecardSectionController configuration];
    placeNote2 = [configuration placeNote];
    libraryAccessProvider3 = [(MUPlaceViewController *)self libraryAccessProvider];
    placeNote3 = [libraryAccessProvider3 placeNote];

    if (placeNote2 != placeNote3)
    {
      libraryAccessProvider4 = [(MUPlaceViewController *)self libraryAccessProvider];
      placeNote4 = [libraryAccessProvider4 placeNote];
      webPlacecardSectionController2 = [(MUPlaceViewController *)self webPlacecardSectionController];
      configuration2 = [webPlacecardSectionController2 configuration];
      [configuration2 setPlaceNote:placeNote4];

      webPlacecardSectionController3 = [(MUPlaceViewController *)self webPlacecardSectionController];
      [webPlacecardSectionController3 updateUserData];
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
  libraryAccessProvider = [(MUPlaceViewController *)self libraryAccessProvider];
  if (libraryAccessProvider)
  {
    v4 = libraryAccessProvider;
    libraryAccessProvider2 = [(MUPlaceViewController *)self libraryAccessProvider];
    savedStateOfPlace = [libraryAccessProvider2 savedStateOfPlace];

    if (savedStateOfPlace)
    {
      libraryAccessProvider3 = [(MUPlaceViewController *)self libraryAccessProvider];
      if ([libraryAccessProvider3 savedStateOfPlace] == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [(MUPlaceActionManager *)self->_actionManager setPlaceInLibrary:v8];

      webPlacecardGuides = [(MUPlaceViewController *)self webPlacecardGuides];
      webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
      configuration = [webPlacecardSectionController configuration];
      userGuides = [configuration userGuides];
      v12 = [userGuides isEqualToArray:webPlacecardGuides];

      if ((v12 & 1) == 0)
      {
        webPlacecardGuides2 = [(MUPlaceViewController *)self webPlacecardGuides];
        webPlacecardSectionController2 = [(MUPlaceViewController *)self webPlacecardSectionController];
        configuration2 = [webPlacecardSectionController2 configuration];
        [configuration2 setUserGuides:webPlacecardGuides2];
      }

      webPlacecardSectionController3 = [(MUPlaceViewController *)self webPlacecardSectionController];
      configuration3 = [webPlacecardSectionController3 configuration];
      libraryPlaceSavedState = [configuration3 libraryPlaceSavedState];
      libraryAccessProvider4 = [(MUPlaceViewController *)self libraryAccessProvider];
      savedStateOfPlace2 = [libraryAccessProvider4 savedStateOfPlace];

      if (libraryPlaceSavedState == savedStateOfPlace2)
      {
        if (v12)
        {
          goto LABEL_16;
        }
      }

      else
      {
        libraryAccessProvider5 = [(MUPlaceViewController *)self libraryAccessProvider];
        savedStateOfPlace3 = [libraryAccessProvider5 savedStateOfPlace];
        webPlacecardSectionController4 = [(MUPlaceViewController *)self webPlacecardSectionController];
        configuration4 = [webPlacecardSectionController4 configuration];
        [configuration4 setLibraryPlaceSavedState:savedStateOfPlace3];
      }

      webPlacecardSectionController5 = [(MUPlaceViewController *)self webPlacecardSectionController];
      [webPlacecardSectionController5 updateUserData];

LABEL_16:

      return;
    }
  }

  actionManager = self->_actionManager;

  [(MUPlaceActionManager *)actionManager setPlaceInLibrary:0];
}

- (void)setPlaceInShortcuts:(BOOL)shortcuts
{
  shortcutsCopy = shortcuts;
  self->_placeInShortcuts = shortcuts;
  [(MUPlaceActionManager *)self->_actionManager setPlaceInShortcuts:?];
  if (self->_placeInShortcuts == shortcutsCopy)
  {
    return;
  }

  webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
  configuration = [webPlacecardSectionController configuration];
  if (configuration)
  {
  }

  else
  {
    flexiblePlacecardConfig = self->_flexiblePlacecardConfig;

    if (!flexiblePlacecardConfig)
    {
      v16 = objc_alloc_init(_TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration);
      [(MUWebBasedPlacecardSectionControllerConfiguration *)v16 setPlaceInShortcuts:self->_placeInShortcuts];
      libraryAccessProvider = [(MUPlaceViewController *)self libraryAccessProvider];
      -[MUWebBasedPlacecardSectionControllerConfiguration setLibraryPlaceSavedState:](v16, "setLibraryPlaceSavedState:", [libraryAccessProvider savedStateOfPlace]);

      v15 = self->_flexiblePlacecardConfig;
      self->_flexiblePlacecardConfig = v16;
      goto LABEL_6;
    }
  }

  placeInShortcuts = self->_placeInShortcuts;
  webPlacecardSectionController2 = [(MUPlaceViewController *)self webPlacecardSectionController];
  configuration2 = [webPlacecardSectionController2 configuration];
  [configuration2 setPlaceInShortcuts:placeInShortcuts];

  libraryAccessProvider2 = [(MUPlaceViewController *)self libraryAccessProvider];
  savedStateOfPlace = [libraryAccessProvider2 savedStateOfPlace];
  webPlacecardSectionController3 = [(MUPlaceViewController *)self webPlacecardSectionController];
  configuration3 = [webPlacecardSectionController3 configuration];
  [configuration3 setLibraryPlaceSavedState:savedStateOfPlace];

  webPlacecardSectionController4 = [(MUPlaceViewController *)self webPlacecardSectionController];
  [(MUWebBasedPlacecardSectionControllerConfiguration *)webPlacecardSectionController4 updateUserData];
  v15 = webPlacecardSectionController4;
LABEL_6:
}

- (void)setCyclingOptions:(id)options
{
  optionsCopy = options;
  if (self->_cyclingOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_cyclingOptions, options);
    [(MKETAProvider *)self->_etaProvider setCyclingOptions:self->_cyclingOptions];
    optionsCopy = v6;
  }
}

- (void)setTransitOptions:(id)options
{
  optionsCopy = options;
  if (self->_transitOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_transitOptions, options);
    [(MKETAProvider *)self->_etaProvider setTransitOptions:self->_transitOptions];
    optionsCopy = v6;
  }
}

- (void)setWalkingOptions:(id)options
{
  optionsCopy = options;
  if (self->_walkingOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_walkingOptions, options);
    [(MKETAProvider *)self->_etaProvider setWalkingOptions:self->_walkingOptions];
    optionsCopy = v6;
  }
}

- (void)setAutomobileOptions:(id)options
{
  optionsCopy = options;
  if (self->_automobileOptions != optionsCopy)
  {
    v6 = optionsCopy;
    objc_storeStrong(&self->_automobileOptions, options);
    [(MKETAProvider *)self->_etaProvider setAutomobileOptions:self->_automobileOptions];
    optionsCopy = v6;
  }
}

- (id)generateUnactionableUIElementsForAnalytics
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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
          infoCardChildUnactionableUIElements = [v9 infoCardChildUnactionableUIElements];
          if ([infoCardChildUnactionableUIElements count])
          {
            [array addObjectsFromArray:infoCardChildUnactionableUIElements];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)generateAvailableActionForAnalytics
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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
          infoCardChildPossibleActions = [v9 infoCardChildPossibleActions];
          if ([infoCardChildPossibleActions count])
          {
            [array addObjectsFromArray:infoCardChildPossibleActions];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return array;
}

- (int)getPlaceCardTypeForAnalytics
{
  v3 = [MUPlaceDataAvailability alloc];
  mapItem = [(MUPlaceViewController *)self mapItem];
  v5 = [(MUPlaceDataAvailability *)v3 initWithMapItem:mapItem options:self->_options];

  placeItem = [(MUPlaceViewController *)self placeItem];
  mapItem2 = [placeItem mapItem];
  _hasFlyover = [mapItem2 _hasFlyover];

  if (_hasFlyover)
  {
    _browseCategory_placeCardType = 9;
  }

  else
  {
    headerButtonsSectionController = [(MUPlaceViewController *)self headerButtonsSectionController];
    primaryButtonType = [headerButtonsSectionController primaryButtonType];

    if (primaryButtonType == 2)
    {
      _browseCategory_placeCardType = 10;
    }

    else
    {
      mapItem3 = [placeItem mapItem];
      _hasTransit = [mapItem3 _hasTransit];

      if (_hasTransit)
      {
        _browseCategory_placeCardType = 7;
      }

      else if ([placeItem options])
      {
        _browseCategory_placeCardType = 5;
      }

      else if (([placeItem options] & 2) != 0)
      {
        _browseCategory_placeCardType = 3;
      }

      else
      {
        mapItem4 = [placeItem mapItem];
        _isMapItemTypeBrand = [mapItem4 _isMapItemTypeBrand];

        if (_isMapItemTypeBrand)
        {
          _browseCategory_placeCardType = 11;
        }

        else
        {
          supportsBrowseCategory = [(MUPlaceDataAvailability *)v5 supportsBrowseCategory];
          mapItem5 = [placeItem mapItem];
          v18 = mapItem5;
          if (supportsBrowseCategory)
          {
            _browseCategory_placeCardType = [mapItem5 _browseCategory_placeCardType];
          }

          else if ([mapItem5 _hasMUID])
          {
            _browseCategory_placeCardType = 2;
          }

          else
          {
            _browseCategory_placeCardType = 1;
          }
        }
      }
    }
  }

  return _browseCategory_placeCardType;
}

- (BOOL)placeSectionControllerShouldLayoutSubviews:(id)subviews
{
  traitCollection = [(MUPlaceViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      LOBYTE(v7) = 1;
      return v7;
    }

    traitCollection = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = [traitCollection placeViewControllerIsAnimatingDismissal:self] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)placeSectionControllerRequestsLayoutChange:(id)change
{
  [(MUPlaceViewController *)self updatePreferredContentSize];
  placeViewControllerDelegate = [(MUPlaceViewController *)self placeViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    placeViewControllerDelegate2 = [(MUPlaceViewController *)self placeViewControllerDelegate];
    [placeViewControllerDelegate2 placeViewControllerDidUpdateHeight:self];
  }
}

- (void)_applyCustomSpacings
{
  if (MapKitIdiomIsMacCatalyst())
  {
    headerSectionController = [(MUPlaceViewController *)self headerSectionController];
    actionRowSectionController = [(MUPlaceViewController *)self actionRowSectionController];
    if (headerSectionController)
    {
      if (actionRowSectionController)
      {
        v4 = [(NSArray *)self->_sectionControllers indexOfObject:headerSectionController];
        if (v4 + 1 == [(NSArray *)self->_sectionControllers indexOfObject:actionRowSectionController])
        {
          contentStackView = self->_contentStackView;
          sectionView = [headerSectionController sectionView];
          [(MUContentStackViewProtocol *)contentStackView setCustomSpacing:sectionView afterView:8.0];
        }
      }
    }
  }
}

- (void)placeSectionControllerDidUpdateContent:(id)content
{
  v37 = *MEMORY[0x1E69E9840];
  contentCopy = content;
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
    v34 = contentCopy;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_INFO, "%@ of type %@ requests update", buf, 0x16u);
  }

  v27 = contentCopy;

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
          sectionViews = [v17 sectionViews];
          v19 = [sectionViews count];

          if (v19)
          {
            sectionViews2 = [v17 sectionViews];
            [v11 addObjectsFromArray:sectionViews2];
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

- (void)_launchAttribution:(id)attribution withMapItem:(id)item
{
  attributionCopy = attribution;
  attributionURLs = [attributionCopy attributionURLs];
  placeViewFeedbackAppLaunchHandler = [(MUPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
  [(MUPlaceViewController *)self _launchAttributionURLs:attributionURLs withAttribution:attributionCopy completionHandler:placeViewFeedbackAppLaunchHandler];
}

- (void)placeDescriptionSectionControllerDidTapAttribution:(id)attribution
{
  mapItem = [(MUPlaceViewController *)self mapItem];
  _encyclopedicInfoAttribution = [mapItem _encyclopedicInfoAttribution];
  [(MUPlaceViewController *)self _launchAttribution:_encyclopedicInfoAttribution withMapItem:mapItem];
}

- (void)_showEditSheet:(id)sheet
{
  _contactForEditOperations = [(MUPlaceViewController *)self _contactForEditOperations];
  v4 = [MEMORY[0x1E695D148] viewControllerForContact:_contactForEditOperations];
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
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = [mapsAppDelegate2 placeViewControllerUserIcon:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)webPlacecardGuides
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = [mapsAppDelegate2 placeViewController:self webPlacecardGuidesForPlaceItem:self->_placeItem];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)collectionIdentifierSelected:(id)selected
{
  selectedCopy = selected;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self selectCollectionIdentifier:selectedCopy];
  }
}

- (id)collectionViews
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    v6 = [mapsAppDelegate2 placeViewController:self collectionViewsForPlaceItem:self->_placeItem];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (void)showAllCollections:(id)collections usingTitle:(id)title usingCollectionIds:(id)ids
{
  collectionsCopy = collections;
  titleCopy = title;
  idsCopy = ids;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
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
    v15 = collectionsCopy;
    v16 = titleCopy;
    v17 = idsCopy;
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

- (void)_openExploreGuidesWithGuideLocation:(id)location
{
  locationCopy = location;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
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
    v9 = locationCopy;
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

- (void)routeToGuidesHomeFromExploreGuides:(id)guides
{
  guideLocation = [guides guideLocation];
  [(MUPlaceViewController *)self _openExploreGuidesWithGuideLocation:guideLocation];
}

- (void)routeToCuratedCollection:(id)collection
{
  collectionCopy = collection;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
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
    v9 = collectionCopy;
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

- (void)_scrollToImpressionsFrame:(id)frame
{
  frameCopy = frame;
  scrollView = [(MUPlaceViewController *)self scrollView];
  isScrollEnabled = [scrollView isScrollEnabled];

  if (isScrollEnabled)
  {
    mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
      [mapsAppDelegate2 placeViewController:self expandCardAnimated:1];
    }

    [frameCopy impressionsFrame];
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

- (void)ribbonSectionControllerDidTapHours:(id)hours
{
  placeInfoSectionController = [(MUPlaceViewController *)self placeInfoSectionController];
  hoursConfig = [placeInfoSectionController hoursConfig];

  v5 = placeInfoSectionController;
  if (placeInfoSectionController && hoursConfig)
  {
    [(MUPlaceViewController *)self _scrollToImpressionsFrame:placeInfoSectionController];
    v5 = placeInfoSectionController;
  }
}

- (void)ribbonSectionControllerDidTapAddRatings:(id)ratings initialRatingState:(int64_t)state withPresentationOptions:(id)options
{
  v6 = [(MUPlaceViewController *)self inlineRatingsSectionController:ratings];
  if (v6 || ([(MUPlaceViewController *)self ratingsAndReviewsSectionController], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [(MUPlaceViewController *)self _scrollToImpressionsFrame:v6];
  }
}

- (void)_didRequestSceneActivationForPhotoGalleryViewController:(id)controller
{
  controllerCopy = controller;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didRequestSceneActivationForPhotoGalleryViewController:controllerCopy];
  }
}

- (void)_didSelectPhotoCategoryAtIndex:(unint64_t)index
{
  v18[1] = *MEMORY[0x1E69E9840];
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectPhotoCategoryAtIndex:index];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = MEMORY[0x1E696F270];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v18[0] = mapItem;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v11 = *MEMORY[0x1E696F0B0];
    v16[0] = *MEMORY[0x1E696F088];
    v16[1] = v11;
    v17[0] = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [v8 openMapsWithItems:v10 launchOptions:v13 completionHandler:0];

    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)placePhotoSectionController:(id)controller didSelectPhotoToReport:(id)report withPhotoGalleryViewController:(id)viewController
{
  reportCopy = report;
  viewControllerCopy = viewController;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self didSelectPhotoToReport:reportCopy withPhotoGalleryViewController:viewControllerCopy];
  }
}

- (void)placePhotoSectionControllerDidCloseFullscreenPhotos:(id)photos
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidCloseFullscreenPhotos:self];
  }
}

- (void)placePhotoSectionControllerDidOpenFullscreenPhotos:(id)photos
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidOpenFullscreenPhotos:self];
  }
}

- (void)_presentStoreProductScreenWithMapItem:(id)item attribution:(id)attribution bundleIdentifier:(id)identifier attributionURLs:(id)ls presentingViewController:(id)controller
{
  identifierCopy = identifier;
  lsCopy = ls;
  controllerCopy = controller;
  attributionCopy = attribution;
  if ([MUPlaceAttributionUtilities shouldPresentStoreProductViewControllerWithAttribution:attributionCopy])
  {
    appAdamID = [attributionCopy appAdamID];
    providerID = [attributionCopy providerID];

    [MUPlaceAttributionUtilities presentStoreProductViewControllerWithAppAdamID:appAdamID bundleIdentifier:providerID presentingViewController:controllerCopy];
    [(MUPlaceCardAnalyticsController *)self->_analyticsController infoCardAnalyticsDidSelectAction:45 target:733 eventValue:identifierCopy feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
  }

  else
  {
    placeViewFeedbackAppLaunchHandler = [(MUPlaceViewController *)self placeViewFeedbackAppLaunchHandler];
    [(MUPlaceViewController *)self _launchAttributionURLs:lsCopy withAttribution:attributionCopy completionHandler:placeViewFeedbackAppLaunchHandler];
  }
}

- (void)placePhotoSectionController:(id)controller didSelectViewPhoto:(id)photo withID:(id)d presentingViewController:(id)viewController
{
  photoCopy = photo;
  dCopy = d;
  viewControllerCopy = viewController;
  mapItem = [(MUPlaceViewController *)self mapItem];
  if ([dCopy length])
  {
    attribution = [photoCopy attribution];
    v13 = [attribution urlsForPhotoWithIdentifier:dCopy];
    [(MUPlaceViewController *)self _presentStoreProductScreenWithMapItem:mapItem attribution:attribution bundleIdentifier:dCopy attributionURLs:v13 presentingViewController:viewControllerCopy];
  }

  else
  {
    [(MUPlaceViewController *)self placeCardActionControllerDidSelectViewAllPhotos:0 presentingViewController:viewControllerCopy];
  }
}

- (void)_relatedPlacesShowSeeAllWithTitle:(id)title relatedMapItems:(id)items originalMapItem:(id)item
{
  titleCopy = title;
  itemsCopy = items;
  itemCopy = item;
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewController:self showRelatedMapItems:itemsCopy withTitle:titleCopy originalMapItem:itemCopy analyticsDelegate:self->_analyticsController];
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
        headerSectionController = [(MUPlaceViewController *)self headerSectionController];

        if (v8 != headerSectionController)
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          sectionViews = [v8 sectionViews];
          v11 = [sectionViews countByEnumeratingWithState:&v16 objects:v24 count:16];
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
                  objc_enumerationMutation(sectionViews);
                }

                [*(*(&v16 + 1) + 8 * v14++) setAlpha:self->_contentAlpha];
              }

              while (v12 != v14);
              v12 = [sectionViews countByEnumeratingWithState:&v16 objects:v24 count:16];
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

- (void)setContentAlpha:(double)alpha
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__MUPlaceViewController_setContentAlpha___block_invoke;
  v4[3] = &unk_1E82191F8;
  v4[4] = self;
  *&v4[5] = alpha;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__MUPlaceViewController_setContentAlpha___block_invoke_2;
  v3[3] = &unk_1E82191F8;
  v3[4] = self;
  *&v3[5] = alpha;
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

- (void)_performWithNewUIBlock:(id)block oldUIBlock:(id)iBlock
{
  blockCopy = block;
  iBlockCopy = iBlock;
  v7 = iBlockCopy;
  if (!self->_showNewUI)
  {
    if (!iBlockCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  iBlockCopy = blockCopy;
  if (blockCopy)
  {
LABEL_5:
    (*(iBlockCopy + 2))();
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

- (void)scrollToTopAnimated:(BOOL)animated
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MUPlaceViewController_scrollToTopAnimated___block_invoke;
  v5[3] = &unk_1E8219780;
  v5[4] = self;
  animatedCopy = animated;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__MUPlaceViewController_scrollToTopAnimated___block_invoke_2;
  v3[3] = &unk_1E8219780;
  v3[4] = self;
  animatedCopy2 = animated;
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

- (void)setPlaceItem:(id)item updateOriginalContact:(BOOL)contact
{
  itemCopy = item;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__MUPlaceViewController_setPlaceItem_updateOriginalContact___block_invoke;
  v11[3] = &unk_1E82184D0;
  v11[4] = self;
  v12 = itemCopy;
  contactCopy = contact;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MUPlaceViewController_setPlaceItem_updateOriginalContact___block_invoke_2;
  v8[3] = &unk_1E82184D0;
  v8[4] = self;
  v9 = v12;
  contactCopy2 = contact;
  v7 = v12;
  [(MUPlaceViewController *)self _performWithNewUIBlock:v11 oldUIBlock:v8];
}

- (void)contentAboveTitleScrollPositionChanged:(double)changed
{
  headerSectionController = [(MUPlaceViewController *)self headerSectionController];
  [headerSectionController verifiedBusinessHeaderScrollPositionChanged:changed];
}

- (double)heightForContentAboveTitle
{
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    return self->_flexiblePlacecardHeightForContentAboveTitle;
  }

  headerSectionController = [(MUPlaceViewController *)self headerSectionController];
  [headerSectionController heightForContentAboveTitle];
  v6 = v5;

  return v6;
}

- (void)hideTitle:(BOOL)title
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__MUPlaceViewController_hideTitle___block_invoke;
  v3[3] = &unk_1E8219780;
  v3[4] = self;
  titleCopy = title;
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
    webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
    webContentViewController = [webPlacecardSectionController webContentViewController];
    webView = [webContentViewController webView];
    scrollView = [webView scrollView];
  }

  else
  {
    contentStackView = self->_contentStackView;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      scrollView = self->_contentStackView;
    }

    else
    {
      scrollView = 0;
    }
  }

  return scrollView;
}

- (void)_performShareActionWithPresentationOptions:(id)options
{
  optionsCopy = options;
  headerSectionController = [(MUPlaceViewController *)self headerSectionController];
  v5 = [headerSectionController analyticsModuleForAction:0 presentationOptions:optionsCopy];
  [(MUPlaceViewController *)self _invokeShareActionWithPresentationOptions:optionsCopy analyticsModuleMetadata:v5];
}

- (void)performShareActionWithPresentationOptions:(id)options
{
  [(MUPlaceViewController *)self _performShareActionWithPresentationOptions:options];
  webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
  [webPlacecardSectionController handleNativeUITapFor:1];
}

- (void)setVerifiedHeaderExpansionProgress:(double)progress
{
  if (vabdd_f64(self->_verifiedHeaderExpansionProgress, progress) > 2.22044605e-16)
  {
    self->_verifiedHeaderExpansionProgress = progress;
    headerSectionController = [(MUPlaceViewController *)self headerSectionController];
    [headerSectionController setCardExpansionProgress:self->_verifiedHeaderExpansionProgress];

    [(MUPlaceViewController *)self _updatePocketInsets];
  }
}

- (UILayoutGuide)headerViewTitleLabelToTopLayoutGuide
{
  headerSectionController = [(MUPlaceViewController *)self headerSectionController];
  headerViewTitleLabelToTopLayoutGuide = [headerSectionController headerViewTitleLabelToTopLayoutGuide];

  return headerViewTitleLabelToTopLayoutGuide;
}

- (UIView)viewForHeaderContainmentString
{
  headerSectionController = [(MUPlaceViewController *)self headerSectionController];
  viewForContainmentString = [headerSectionController viewForContainmentString];

  return viewForContainmentString;
}

- (UIView)draggableHeaderView
{
  headerSectionController = [(MUPlaceViewController *)self headerSectionController];
  sectionView = [headerSectionController sectionView];

  return sectionView;
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
          draggableContent = [v9 draggableContent];
          if ([draggableContent count])
          {
            [v3 addObjectsFromArray:draggableContent];
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

- (void)setLibraryAccessProvider:(id)provider
{
  providerCopy = provider;
  [(MULibraryAccessProviding *)self->_libraryAccessProvider unregisterObserver:self];
  libraryAccessProvider = self->_libraryAccessProvider;
  self->_libraryAccessProvider = providerCopy;
  v6 = providerCopy;

  [(MULibraryAccessProviding *)self->_libraryAccessProvider registerObserver:self];
  notesSectionController = [(MUPlaceViewController *)self notesSectionController];
  [notesSectionController setLibraryAccessProvider:v6];
}

- (void)setOfflineFeatureDiscoveryView:(id)view
{
  objc_storeStrong(&self->_offlineFeatureDiscoveryView, view);
  viewCopy = view;
  unifiedActionRowSectionController = [(MUPlaceViewController *)self unifiedActionRowSectionController];
  [unifiedActionRowSectionController setOfflineFeatureDiscoveryView:viewCopy];
}

- (void)setOfflineMapProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_offlineMapProvider, providerCopy);
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    [(MUWebBasedPlacecardOfflineMapProvider *)self->_webBasedPlacecardOfflineMapProvider setNativeOfflineMapProvider:providerCopy];
    webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
    [webPlacecardSectionController updateDownloadButton];
  }

  unifiedActionRowSectionController = [(MUPlaceViewController *)self unifiedActionRowSectionController];
  [unifiedActionRowSectionController setOfflineMapProvider:providerCopy];
}

- (void)setPlaceNumberOfReportsInReview:(unint64_t)review
{
  self->_placeNumberOfReportsInReview = review;
  placeInfoSectionController = [(MUPlaceViewController *)self placeInfoSectionController];
  [placeInfoSectionController setPlaceNumberOfReportsInReview:review];

  webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
  configuration = [webPlacecardSectionController configuration];
  [configuration setNumberOfReportsInReview:review];

  webPlacecardSectionController2 = [(MUPlaceViewController *)self webPlacecardSectionController];
  [webPlacecardSectionController2 updateUserData];
}

- (void)updatePlaceEnrichment
{
  placeEnrichmentSectionController = [(MUPlaceViewController *)self placeEnrichmentSectionController];
  [placeEnrichmentSectionController refreshPlaceEnrichment];
}

- (void)updatePlaceInfo
{
  placeInfoSectionController = [(MUPlaceViewController *)self placeInfoSectionController];
  [placeInfoSectionController refreshContents];
}

- (void)updateSuggestionView
{
  v2 = [(MUPlaceViewController *)self _firstSectionControllerOfClass:objc_opt_class()];
  [v2 updateSuggestionView];
}

- (void)updateCuratedCollectionsView
{
  curatedGuidesSectionController = [(MUPlaceViewController *)self curatedGuidesSectionController];
  [curatedGuidesSectionController refreshCollections];
}

- (void)updateUserSubmissionWithPhotoURL:(id)l photoID:(id)d numberOfPhotos:(int64_t)photos
{
  lCopy = l;
  dCopy = d;
  v9 = [[MUUserSubmittedPhoto alloc] initWithPhotoURL:lCopy];
  [(MUUserSubmittedPhoto *)v9 setPhotoID:dCopy];

  v10 = [(MUPlaceViewController *)self _firstSectionControllerOfClass:objc_opt_class()];
  userSubmittedPhoto = [v10 userSubmittedPhoto];
  v12 = userSubmittedPhoto;
  if (userSubmittedPhoto != v9)
  {

LABEL_4:
    if (lCopy)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    [v10 setUserSubmittedPhoto:v14];
    [v10 setUserInfoProvider:self];
    [v10 setNumberOfUserSubmittedPhotos:photos];
    [v10 updateWithUserSubmittedPhotos:1];
    [(MUPlaceViewController *)self _updateWebPlacecardForPhotoSubmissionWithURL:lCopy];
    goto LABEL_8;
  }

  numberOfUserSubmittedPhotos = [v10 numberOfUserSubmittedPhotos];

  if (numberOfUserSubmittedPhotos != photos)
  {
    goto LABEL_4;
  }

LABEL_8:
}

- (void)updateViewsWithSubmissionStatus:(id)status userRatings:(id)ratings animated:(BOOL)animated
{
  statusCopy = status;
  ratingsCopy = ratings;
  v10 = self->_submissionStatus;
  v11 = statusCopy;
  if (v11 | v10 && (v12 = [v10 isEqual:v11], v11, v10, !v12))
  {
    objc_storeStrong(&self->_submissionStatus, status);
    [(MUPlaceViewController *)self _updateSectionsForSubmissionStatusChange];
    [(MUPlaceViewController *)self _updateWebPlacecardForSubmissionStatusChange:v11 userRatings:ratingsCopy];
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

- (void)_updateWebPlacecardForPhotoSubmissionWithURL:(id)l
{
  lCopy = l;
  webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
  configuration = [webPlacecardSectionController configuration];
  if (configuration)
  {

LABEL_4:
    webPlacecardSectionController2 = [(MUPlaceViewController *)self webPlacecardSectionController];
    configuration2 = [webPlacecardSectionController2 configuration];
    [configuration2 setUserARPPhoto:lCopy];

    webPlacecardSectionController3 = [(MUPlaceViewController *)self webPlacecardSectionController];
    [webPlacecardSectionController3 updateUserData];
    goto LABEL_5;
  }

  flexiblePlacecardConfig = self->_flexiblePlacecardConfig;

  if (flexiblePlacecardConfig)
  {
    goto LABEL_4;
  }

  v10 = objc_alloc_init(_TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration);
  [(MUWebBasedPlacecardSectionControllerConfiguration *)v10 setUserARPPhoto:lCopy];
  webPlacecardSectionController3 = self->_flexiblePlacecardConfig;
  self->_flexiblePlacecardConfig = v10;
LABEL_5:
}

- (void)_updateWebPlacecardForSubmissionStatusChange:(id)change userRatings:(id)ratings
{
  changeCopy = change;
  ratingsCopy = ratings;
  if ([changeCopy type] != 5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_alloc_init(MEMORY[0x1E696AD98]);
    ratingState = [changeCopy ratingState];
    if (ratingState <= 2)
    {
      v10 = qword_1E82189C8[ratingState];

      v8 = v10;
    }

    if (changeCopy && ![ratingsCopy count])
    {
      v11 = [MUUGCRatingViewModel alloc];
      v12 = _MULocalizedStringFromThisBundle(@"Overall [Placecard]");
      v13 = [(MUUGCRatingViewModel *)v11 initWithCategory:v12 value:v8];

      [v7 addObject:v13];
    }

    else if ([ratingsCopy count])
    {
      [v7 addObjectsFromArray:ratingsCopy];
    }

    webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
    configuration = [webPlacecardSectionController configuration];
    if (configuration)
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

        userIcon = [(MUPlaceViewController *)self userIcon];
        [(MUWebBasedPlacecardSectionControllerConfiguration *)v24 setUserIcon:userIcon];

        webPlacecardSectionController4 = self->_flexiblePlacecardConfig;
        self->_flexiblePlacecardConfig = v24;
        goto LABEL_13;
      }
    }

    v17 = [v7 copy];
    webPlacecardSectionController2 = [(MUPlaceViewController *)self webPlacecardSectionController];
    configuration2 = [webPlacecardSectionController2 configuration];
    [configuration2 setUserARPRatings:v17];

    userIcon2 = [(MUPlaceViewController *)self userIcon];
    webPlacecardSectionController3 = [(MUPlaceViewController *)self webPlacecardSectionController];
    configuration3 = [webPlacecardSectionController3 configuration];
    [configuration3 setUserIcon:userIcon2];

    webPlacecardSectionController4 = [(MUPlaceViewController *)self webPlacecardSectionController];
    [webPlacecardSectionController4 updateUserData];
LABEL_13:
  }
}

- (void)_updatePersonalizedSuggestionSectionArbiterWithSections
{
  notesSectionController = [(MUPlaceViewController *)self notesSectionController];
  personalizedSuggestionSectionArbiter = [(MUPlaceViewController *)self personalizedSuggestionSectionArbiter];
  [personalizedSuggestionSectionArbiter setPlaceNotesSectionController:notesSectionController];

  v5 = [(MUPlaceViewController *)self _firstSectionControllerOfClass:objc_opt_class()];
  personalizedSuggestionSectionArbiter2 = [(MUPlaceViewController *)self personalizedSuggestionSectionArbiter];
  [personalizedSuggestionSectionArbiter2 setPlaceCallToActionSectionController:v5];

  v8 = [(MUPlaceViewController *)self _firstSectionControllerOfClass:objc_opt_class()];
  personalizedSuggestionSectionArbiter3 = [(MUPlaceViewController *)self personalizedSuggestionSectionArbiter];
  [personalizedSuggestionSectionArbiter3 setHikingTipSectionController:v8];
}

- (void)_updateSectionsForSubmissionStatusChange
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MUPlaceDataAvailability alloc];
  mapItem = [(MUPlaceViewController *)self mapItem];
  v5 = [(MUPlaceDataAvailability *)v3 initWithMapItem:mapItem options:self->_options];

  supportsCallToAction = [(MUPlaceDataAvailability *)v5 supportsCallToAction];
  v7 = MUGetPlaceCardLog();
  v8 = v7;
  if (supportsCallToAction)
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

- (id)_actionBarSectionControllerForAvailability:(id)availability moduleConfiguration:(id)configuration
{
  v29[2] = *MEMORY[0x1E69E9840];
  availabilityCopy = availability;
  configurationCopy = configuration;
  if ([availabilityCopy supportsActionBar])
  {
    if (configurationCopy)
    {
      array = [MEMORY[0x1E695DF70] array];
      primaryButtonItem = [configurationCopy primaryButtonItem];

      if (primaryButtonItem)
      {
        primaryButtonItem2 = [configurationCopy primaryButtonItem];
        [array addObject:primaryButtonItem2];
      }

      secondaryButtonItems = [configurationCopy secondaryButtonItems];

      if (secondaryButtonItems)
      {
        secondaryButtonItems2 = [configurationCopy secondaryButtonItems];
        [array addObjectsFromArray:secondaryButtonItems2];
      }

      v13 = [[MUPlaceActionBarButtonModuleConfiguration alloc] initWithButtonItems:array];

      v14 = [(MUPlaceViewController *)self unifiedActionRowConfigurationForAvailability:availabilityCopy buttonModuleConfiguration:v13];
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
      v14 = [(MUPlaceViewController *)self unifiedActionRowConfigurationForAvailability:availabilityCopy buttonModuleConfiguration:v13];
      [v14 setButtonModuleConfiguration:0];
      [v14 setStaticButtonModuleConfiguration:v13];
    }

    [v14 setShowMoreButtonIfAvailable:1];
    if ([availabilityCopy canShowDirections])
    {
      BOOL = GEOConfigGetBOOL();
    }

    else
    {
      BOOL = 0;
    }

    [v14 setShouldShowDirectionsAction:BOOL];
    v22 = [MUPlaceActionBarSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    primaryButtonItem3 = [configurationCopy primaryButtonItem];
    secondaryButtonItems3 = [configurationCopy secondaryButtonItems];
    v15 = [(MUPlaceActionBarSectionController *)v22 initWithMapItem:mapItem configuration:v14 primaryButtonItem:primaryButtonItem3 secondaryButtonItems:secondaryButtonItems3];

    [(MUPlaceUnifiedActionRowSectionController *)v15 setActionDelegate:self];
    offlineMapProvider = [(MUPlaceViewController *)self offlineMapProvider];
    [(MUPlaceUnifiedActionRowSectionController *)v15 setOfflineMapProvider:offlineMapProvider];
  }

  else
  {
    v15 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_notesSectionControllerForAvailability:(id)availability
{
  if ([availability supportsPlaceNotes])
  {
    v4 = [_TtC6MapsUI29MUPlaceNotesSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    libraryAccessProvider = [(MUPlaceViewController *)self libraryAccessProvider];
    v7 = [(MUPlaceNotesSectionController *)v4 initWithMapItem:mapItem userInfoProvider:self libraryAccessProvider:libraryAccessProvider];

    [(MUPlaceNotesSectionController *)v7 setNotesSectionDelegate:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_hikingTipSectionControllerForAvailability:(id)availability
{
  options = self->_options;
  v5 = 0;
  if ([availability supportsHikingTip] && (options & 0x40000000000) != 0)
  {
    v6 = [MUHikingTipSectionController alloc];
    placeItem = [(MUPlaceViewController *)self placeItem];
    v5 = [(MUHikingTipSectionController *)v6 initWithPlaceItem:placeItem tipDelegate:self];
  }

  return v5;
}

- (id)_hikingTrailsSectionControllerForAvailability:(id)availability
{
  if ([availability supportsHikingTrails])
  {
    v4 = [MURelatedPlaceSectionControllerConfiguration alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    _trailHead = [mapItem _trailHead];
    v7 = [(MURelatedPlaceSectionControllerConfiguration *)v4 initWithTrailHead:_trailHead];

    v8 = [MURelatedPlacesSectionController alloc];
    mapItem2 = [(MUPlaceViewController *)self mapItem];
    v10 = [(MURelatedPlacesSectionController *)v8 initWithMapItem:mapItem2 configuration:v7];

    [(MURelatedPlacesSectionController *)v10 setRelatedPlacesDelegate:self];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_evChargingSectionControllerForForAvailability:(id)availability mapItem:(id)item
{
  itemCopy = item;
  if ([availability supportsEVCharging] && self->_evChargerAvailabilityProvider)
  {
    v7 = [[MUEVChargingSectionController alloc] initWithMapItem:itemCopy availabilityProvider:self->_evChargerAvailabilityProvider];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_webBasedPlacecardViewControllerForAvailability:(id)availability
{
  availabilityCopy = availability;
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
      takeBridge = [v7 takeBridge];
      webPlacecardBridge = self->_webPlacecardBridge;
      self->_webPlacecardBridge = takeBridge;
    }

    if (!self->_webBasedPlacecardOfflineMapProvider)
    {
      v10 = [_TtC6MapsUI37MUWebBasedPlacecardOfflineMapProvider alloc];
      offlineMapProvider = [(MUPlaceViewController *)self offlineMapProvider];
      v12 = [(MUWebBasedPlacecardOfflineMapProvider *)v10 initWithNativeOfflineMapProvider:offlineMapProvider];
      webBasedPlacecardOfflineMapProvider = self->_webBasedPlacecardOfflineMapProvider;
      self->_webBasedPlacecardOfflineMapProvider = v12;
    }

    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setExternalActionHandler:self];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setEvChargerAvailability:self->_evChargerAvailabilityProvider];
    webPlacecardGuides = [(MUPlaceViewController *)self webPlacecardGuides];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setUserGuides:webPlacecardGuides];

    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setPlaceInShortcuts:[(MUPlaceViewController *)self placeInShortcuts]];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setNumberOfReportsInReview:[(MUPlaceViewController *)self placeNumberOfReportsInReview]];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setShouldDisableReportAProblem:(self->_options >> 6) & 1];
    placeItem = [(MUPlaceViewController *)self placeItem];
    mapItem = [placeItem mapItem];
    if ([mapItem _hasFlyover])
    {
      v17 = (self->_options & 0x400000) == 0;
    }

    else
    {
      v17 = 1;
    }

    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setShouldExcludeFlyover:v17];

    -[MUWebBasedPlacecardSectionControllerConfiguration setSupportsShowingCoordinates:](self->_flexiblePlacecardConfig, "setSupportsShowingCoordinates:", [availabilityCopy supportsShowingCoordinates]);
    userIcon = [(MUPlaceViewController *)self userIcon];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setUserIcon:userIcon];

    libraryAccessProvider = [(MUPlaceViewController *)self libraryAccessProvider];
    placeNote = [libraryAccessProvider placeNote];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setPlaceNote:placeNote];

    v22 = MEMORY[0x1E696F2E8];
    mapItem2 = [(MUPlaceViewController *)self mapItem];
    -[MUWebBasedPlacecardSectionControllerConfiguration setUserCanRate:](self->_flexiblePlacecardConfig, "setUserCanRate:", [v22 shouldShowRatingsCallToActionForMapItem:mapItem2]);

    v24 = MEMORY[0x1E696F2E8];
    mapItem3 = [(MUPlaceViewController *)self mapItem];
    -[MUWebBasedPlacecardSectionControllerConfiguration setUserCanAddPhotos:](self->_flexiblePlacecardConfig, "setUserCanAddPhotos:", [v24 shouldShowPhotosCallToActionForMapItem:mapItem3]);

    libraryAccessProvider2 = [(MUPlaceViewController *)self libraryAccessProvider];
    -[MUWebBasedPlacecardSectionControllerConfiguration setLibraryPlaceSavedState:](self->_flexiblePlacecardConfig, "setLibraryPlaceSavedState:", [libraryAccessProvider2 savedStateOfPlace]);

    mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
    LOBYTE(mapItem3) = objc_opt_respondsToSelector();

    if (mapItem3)
    {
      mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
      v29 = [mapsAppDelegate2 placeViewControllerRequestsMapViewAssociatedWithVC:self];

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

    placeItem2 = [(MUPlaceViewController *)self placeItem];
    contact = [placeItem2 contact];

    if (!contact)
    {
      mapItem4 = [(MUPlaceViewController *)self mapItem];
      contact = [mapItem4 _placeCardContact];
    }

    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setContact:contact];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setIsDeveloperPlacecard:(self->_options >> 39) & 1];
    v34 = GEOGetURL();
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setWebModuleURL:v34];

    placeItem3 = [(MUPlaceViewController *)self placeItem];
    -[MUWebBasedPlacecardSectionControllerConfiguration setIsHomeWorkSchool:](self->_flexiblePlacecardConfig, "setIsHomeWorkSchool:", ([placeItem3 options] >> 6) & 1);

    placeItem4 = [(MUPlaceViewController *)self placeItem];
    name = [placeItem4 name];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setCustomName:name];

    placeItem5 = [(MUPlaceViewController *)self placeItem];
    [placeItem5 options];
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
    deviceProvider = [(MUPlaceViewController *)self deviceProvider];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setDeviceProvider:deviceProvider];

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
    amsResultProvider = [(MUPlaceViewController *)self amsResultProvider];
    [(MUWebBasedPlacecardSectionControllerConfiguration *)self->_flexiblePlacecardConfig setAmsResultProvider:amsResultProvider];

    flexiblePlacecardSectionController = self->_flexiblePlacecardSectionController;
    if (flexiblePlacecardSectionController)
    {
      mapItem5 = [(MUPlaceViewController *)self mapItem];
      [(MUWebBasedPlacecardSectionController *)flexiblePlacecardSectionController reloadDataWithMapItem:mapItem5 configuration:self->_flexiblePlacecardConfig];
    }

    else
    {
      v52 = [_TtC6MapsUI36MUWebBasedPlacecardSectionController alloc];
      mapItem6 = [(MUPlaceViewController *)self mapItem];
      v54 = [(MUWebBasedPlacecardSectionController *)v52 initWithMapItem:mapItem6 placeActionDispatcher:self->_actionDispatcher bridge:self->_webPlacecardBridge configuration:self->_flexiblePlacecardConfig];
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

- (id)_webContentSectionControllerForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [MUPlaceWebContentSectionController alloc];
  mapItem = [(MUPlaceViewController *)self mapItem];
  v7 = [(MUPlaceWebContentSectionController *)v5 initWithMapItem:mapItem configuration:configurationCopy];

  [(MUPlaceWebContentSectionController *)v7 setWebContentDelegate:self];

  return v7;
}

- (id)_placeInfoSectionControllerForAvailability:(id)availability moduleConfiguration:(id)configuration
{
  availabilityCopy = availability;
  configurationCopy = configuration;
  if ([availabilityCopy supportsHours])
  {
    mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
    v9 = [MUPlaceHoursSectionViewConfiguration configurationForMapItem:mapItem];
LABEL_5:
    v10 = v9;

    goto LABEL_7;
  }

  if ([availabilityCopy supportsMessageHours])
  {
    mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
    v9 = [MUPlaceHoursSectionViewConfiguration configurationForMessagesMapItem:mapItem];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:
  v11 = objc_alloc_init(MUPlaceInfoSectionControllerConfiguration);
  [(MUPlaceInfoSectionControllerConfiguration *)v11 setModuleConfiguration:configurationCopy];

  [(MUPlaceInfoSectionControllerConfiguration *)v11 setAvailability:availabilityCopy];
  [(MUPlaceInfoSectionControllerConfiguration *)v11 setActionDelegate:self->_actionManager];
  [(MUPlaceInfoSectionControllerConfiguration *)v11 setHoursConfiguration:v10];
  [(MUPlaceInfoSectionControllerConfiguration *)v11 setDeveloperPlaceCard:(self->_options >> 39) & 1];
  v12 = [[MUPlaceInfoSectionController alloc] initWithPlaceItem:self->_placeItem configuration:v11];
  [(MUPlaceInfoSectionController *)v12 setPlaceInfoDelegate:self];
  [(MUPlaceInfoSectionController *)v12 setUserInfoProvider:self];

  return v12;
}

- (id)_inlineMapSectionControllerForAvailability:(id)availability
{
  availabilityCopy = availability;
  v5 = [MEMORY[0x1E696F330] configurationForPlaceViewControllerOptions:self->_options];
  v6 = v5;
  if ((self->_options & 0x8000000000) != 0)
  {
    [v5 setSuppressLookAround:1];
    [v6 setSuppressSectionHeader:1];
    [v6 setShowMapAttribution:1];
    developerPlaceCardAuditToken = [(MUPlaceViewControllerConfiguration *)self->_configuration developerPlaceCardAuditToken];
    [v6 setMapSnapshotAuditToken:developerPlaceCardAuditToken];
  }

  if (([availabilityCopy supportsInlineMap] & 1) != 0 || objc_msgSend(availabilityCopy, "supportsInlinePOIMap"))
  {
    v8 = [MUPlaceInlineMapSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v10 = [(MUPlaceInlineMapSectionController *)v8 initWithMapItem:mapItem configuration:v6];

    [(MUPlaceInlineMapSectionController *)v10 setLocation:self->_location];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_relatedPlaceConfigurationForRelatedPlaceList:(id)list moduleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  listCopy = list;
  v8 = [[MURelatedPlaceSectionControllerConfiguration alloc] initWithRelatedPlaceList:listCopy];

  v9 = (self->_options & 0x20000000) == 0;
  [(MURelatedPlaceSectionControllerConfiguration *)v8 setSuppressSeeAllButton:v9];
  [(MURelatedPlaceSectionControllerConfiguration *)v8 setModuleConfiguration:configurationCopy];

  [(MURelatedPlaceSectionControllerConfiguration *)v8 setSuppressItemSelection:v9];

  return v8;
}

- (id)_relatedPlaceSectionControllerForAvailability:(id)availability config:(id)config
{
  availabilityCopy = availability;
  configCopy = config;
  if (![availabilityCopy supportsRelatedPlaces])
  {
    v14 = 0;
    goto LABEL_10;
  }

  mapItem = [(MUPlaceViewController *)self mapItem];
  v9 = mapItem;
  if (configCopy)
  {
    v10 = [mapItem _relatedPlaceListForComponentIdentifier:{objc_msgSend(configCopy, "componentIdentifier")}];

    if (!v10)
    {
      v9 = 0;
      v14 = 0;
      goto LABEL_9;
    }

    _relatedPlaceLists = [(MUPlaceViewController *)self _relatedPlaceConfigurationForRelatedPlaceList:v10 moduleConfiguration:configCopy];
    v12 = [MURelatedPlacesSectionController alloc];
    mapItem2 = [(MUPlaceViewController *)self mapItem];
    v14 = [(MURelatedPlacesSectionController *)v12 initWithMapItem:mapItem2 configuration:_relatedPlaceLists];

    [(MURelatedPlacesSectionController *)v14 setRelatedPlacesDelegate:self];
    v9 = v10;
  }

  else
  {
    _relatedPlaceLists = [mapItem _relatedPlaceLists];
    firstObject = [_relatedPlaceLists firstObject];
    v14 = [(MUPlaceViewController *)self _relatedPlaceSectionControllerForAvailability:availabilityCopy relatedPlaceList:firstObject];
  }

LABEL_9:
LABEL_10:

  return v14;
}

- (id)_relatedPlaceSectionControllerForAvailability:(id)availability relatedPlaceList:(id)list
{
  listCopy = list;
  if (![availability supportsRelatedPlaces] || MapsFeature_IsEnabled_MapsWally() && -[_MKPlaceItem representsPerson](self->_placeItem, "representsPerson") && (-[_MKPlaceItem contact](self->_placeItem, "contact"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_mapkit_isSharedLocationContact"), v7, !v8))
  {
    v12 = 0;
  }

  else
  {
    v9 = [(MUPlaceViewController *)self _relatedPlaceConfigurationForRelatedPlaceList:listCopy moduleConfiguration:0];
    v10 = [MURelatedPlacesSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v12 = [(MURelatedPlacesSectionController *)v10 initWithMapItem:mapItem configuration:v9];

    [(MURelatedPlacesSectionController *)v12 setRelatedPlacesDelegate:self];
  }

  return v12;
}

- (id)_amenitiesSectionControllerForAvailability:(id)availability moduleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([availability supportsAmenities])
  {
    v7 = [MUAmenitiesSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v9 = [(MUAmenitiesSectionController *)v7 initWithMapItem:mapItem moduleConiguration:configurationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_contactSharedLocationSectionControllerForAvailability:(id)availability
{
  availabilityCopy = availability;
  if (MapsFeature_IsEnabled_MapsWally() && [(_MKPlaceItem *)self->_placeItem representsPerson])
  {
    contact = [(_MKPlaceItem *)self->_placeItem contact];
    if ([contact _mapkit_isSharedLocationContact])
    {
      v6 = [[MUContactSharedLocationSectionController alloc] initWithPlaceItem:self->_placeItem availability:availabilityCopy];
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

- (id)_placeEnrichmentSectionControllerForAvailability:(id)availability
{
  availabilityCopy = availability;
  if (MapsFeature_IsEnabled_PlaceCardShowcase() && [availabilityCopy supportsPlaceEnrichment])
  {
    v5 = [MUPlaceEnrichmentSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    actionManager = self->_actionManager;
    amsResultProvider = [(MUPlaceViewController *)self amsResultProvider];
    v9 = [(MUPlaceEnrichmentSectionController *)v5 initWithMapItem:mapItem actionManager:actionManager dataAvailability:availabilityCopy amsResultProvider:amsResultProvider callToActionDelegate:self externalActionHandler:self rapActionHandler:self];

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
  mapItem = [(MUPlaceViewController *)self mapItem];
  v5 = [(MUPersonalGuidesSectionController *)v3 initWithMapItem:mapItem collectionViewProvider:self];

  return v5;
}

- (id)_encyclopedicSectionControllerForAvailability:(id)availability
{
  if ([availability supportsEncyclopedicDescription])
  {
    mapItem = [(MUPlaceViewController *)self mapItem];
    _encyclopedicInfo = [mapItem _encyclopedicInfo];
    v6 = [MUPlaceDescriptionConfiguration configurationWithEncyclopedicInfo:_encyclopedicInfo];

    v7 = [MUPlaceDescriptionSectionController alloc];
    mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v9 = [(MUPlaceDescriptionSectionController *)v7 initWithMapItem:mapItem2 configuration:v6];

    [(MUPlaceDescriptionSectionController *)v9 setActionDelegate:self];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_callToActionSuggestionSectionControllerForAvailability:(id)availability
{
  if ([availability supportsCallToAction])
  {
    v4 = [MUPassiveCallToActionSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v6 = [(MUPlaceSectionController *)v4 initWithMapItem:mapItem];

    [(MUCallToActionSectionController *)v6 setCallToActionDelegate:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_passiveCallToActionSectionControllerForAvailability:(id)availability
{
  if ([availability supportsCallToAction])
  {
    v4 = [MUPassiveCallToActionSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v6 = [(MUPlaceSectionController *)v4 initWithMapItem:mapItem];

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
  mapItem = [(MUPlaceViewController *)self mapItem];
  v5 = [(MUPlaceFooterActionsSectionController *)v3 initWithMapItem:mapItem actionManager:self->_actionManager];

  return v5;
}

- (id)_placeDescriptionSectionControllerForAvailability:(id)availability
{
  if ((self->_options & 0x400000000000) != 0 || ![availability supportsPlaceDescription])
  {
    v11 = 0;
  }

  else
  {
    v4 = [MUPlaceDescriptionConfiguration alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    _placeDescription = [_geoMapItem _placeDescription];
    v8 = [(MUPlaceDescriptionConfiguration *)v4 initWithTitle:0 descriptionText:_placeDescription attribution:0];

    v9 = [MUPlaceDescriptionSectionController alloc];
    mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v11 = [(MUPlaceDescriptionSectionController *)v9 initWithMapItem:mapItem2 configuration:v8];

    [(MUPlaceDescriptionSectionController *)v11 setActionDelegate:self];
  }

  return v11;
}

- (id)_curatedGuidesSectionControllerForAvailability:(id)availability
{
  if ([availability supportsCuratedGuidesCarousel])
  {
    v4 = [MUCuratedGuidesSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    _placeCollections = [mapItem _placeCollections];
    mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
    curatedCollectionSyncCoordinator = [mapsAppDelegate curatedCollectionSyncCoordinator];
    mapItem2 = [(MUPlaceViewController *)self mapItem];
    mapItem3 = [(MUPlaceViewController *)self mapItem];
    _placeCollectionIds = [mapItem3 _placeCollectionIds];
    mapItem4 = [(MUPlaceViewController *)self mapItem];
    _exploreGuides = [mapItem4 _exploreGuides];
    v13 = [(MUCuratedGuidesSectionController *)v4 initWithDelegate:self withPlaceCollections:_placeCollections usingSyncCoordinator:curatedCollectionSyncCoordinator usingMapItem:mapItem2 usingCollectionIds:_placeCollectionIds exploreGuides:_exploreGuides];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_photoSectionControllerForAvailability:(id)availability
{
  if ((self->_options & 0x800000000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    availabilityCopy = availability;
    v5 = objc_alloc_init(MUPlacePhotoSectionControllerConfiguration);
    supportsCallToAction = [availabilityCopy supportsCallToAction];

    [(MUPlacePhotoSectionControllerConfiguration *)v5 setSupportsARPCallToAction:supportsCallToAction];
    [(MUPlacePhotoSectionControllerConfiguration *)v5 setPresentingViewController:self];
    v7 = [MUPlacePhotoSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v9 = [(MUPlacePhotoSectionController *)v7 initWithMapItem:mapItem configuration:v5];

    [(MUPlacePhotoSectionController *)v9 setPhotoSectionControllerDelegate:self];
  }

  return v9;
}

- (id)_transitDeparturesSectionControllerForAvailability:(id)availability
{
  availabilityCopy = availability;
  if ([availabilityCopy isTransitItem])
  {
    v5 = [MUTransitDeparturesSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v7 = -[MUTransitDeparturesSectionController initWithMapItem:allowTransitLineSelection:departuresDelegate:](v5, "initWithMapItem:allowTransitLineSelection:departuresDelegate:", mapItem, [availabilityCopy allowTransitLineSelection], self);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_placeRibbonSectionControllerForAvailability:(id)availability placeRibbonConfiguration:(id)configuration
{
  if ((self->_options & 0x100000000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    configurationCopy = configuration;
    availabilityCopy = availability;
    v8 = objc_alloc_init(MUPlaceRibbonSectionControllerConfiguration);
    [(MUPlaceRibbonSectionControllerConfiguration *)v8 setAvailability:availabilityCopy];

    [(MUPlaceRibbonSectionControllerConfiguration *)v8 setRibbonConfiguration:configurationCopy];
    [(MUPlaceRibbonSectionControllerConfiguration *)v8 setEtaProvider:self->_etaProvider];
    [(MUPlaceRibbonSectionControllerConfiguration *)v8 setEvChargerAvailabilityProvider:self->_evChargerAvailabilityProvider];
    v9 = [MUPlaceRibbonSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v11 = [(MUPlaceRibbonSectionController *)v9 initWithMapItem:mapItem configuration:v8];

    [(MUPlaceRibbonSectionController *)v11 setRibbonDelegate:self];
  }

  return v11;
}

- (id)_officialAppSectionControllerForAvailability:(id)availability
{
  if ([availability suportsOfficialApp])
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
    mapItem = [(MUPlaceViewController *)self mapItem];
    v10 = [(MUOfficialAppSectionController *)v8 initWithMapItem:mapItem usingCachedMediaResults:self->_officialAppMediaResultCache];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_annotatedItemSectionControllerForAvailability:(id)availability
{
  availabilityCopy = availability;
  if ([availabilityCopy supportsAnnotatedPhotos])
  {
    v5 = [MUPlacePictureItemSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    mapItem2 = [(MUPlaceViewController *)self mapItem];
    _annotatedItemList = [mapItem2 _annotatedItemList];
    v9 = [(MUPlacePictureItemSectionController *)v5 initWithMapItem:mapItem annotatedList:_annotatedItemList presentingViewController:self];

    [(MUPlacePictureItemSectionController *)v9 setPictureItemDelegate:self];
  }

  else if ([availabilityCopy supportsAnnotatedTextList])
  {
    v10 = [MUPlaceListItemSectionController alloc];
    mapItem3 = [(MUPlaceViewController *)self mapItem];
    mapItem4 = [(MUPlaceViewController *)self mapItem];
    _annotatedItemList2 = [mapItem4 _annotatedItemList];
    v9 = [(MUPlaceListItemSectionController *)v10 initWithMapItem:mapItem3 annotatedList:_annotatedItemList2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_venueInfoSectionControllerForAvailability:(id)availability
{
  if ([availability supportsVenueTextInfo])
  {
    v4 = [MUPlaceVenueInfoSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v6 = [(MUPlaceVenueInfoSectionController *)v4 initWithMapItem:mapItem];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_ratingsAndReviewsSectionControllerForAvailability:(id)availability
{
  availabilityCopy = availability;
  if ([availabilityCopy supportsInlineRatings])
  {
    v5 = [MUInlineRatingsSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v7 = [(MUInlineRatingsSectionController *)v5 initWithMapItem:mapItem inlineRatingsViewProvider:self];
  }

  else if ([availabilityCopy shouldShowRatingsAndReviewsModule])
  {
    v8 = [MURatingsAndReviewsSectionController alloc];
    mapItem2 = [(MUPlaceViewController *)self mapItem];
    v7 = [(MURatingsAndReviewsSectionController *)v8 initWithMapItem:mapItem2];

    [(MUInlineRatingsSectionController *)v7 setActionDelegate:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_browseCategorySectionControllerForAvailability:(id)availability
{
  if ([availability supportsBrowseCategory])
  {
    v4 = [MUBrowseCategorySectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v6 = [(MUBrowseCategorySectionController *)v4 initWithMapItem:mapItem];

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
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    [mapsAppDelegate2 placeViewControllerDidSelectViewContact:self];
  }
}

- (id)_unifiedActionRowSectionControllerForAvailability:(id)availability buttonModuleConfiguration:(id)configuration
{
  if ((self->_options & 0x200000000000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v5 = [(MUPlaceViewController *)self unifiedActionRowConfigurationForAvailability:availability buttonModuleConfiguration:configuration];
    v6 = [MUPlaceUnifiedActionRowSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v8 = [(MUPlaceUnifiedActionRowSectionController *)v6 initWithMapItem:mapItem configuration:v5];

    [(MUPlaceUnifiedActionRowSectionController *)v8 setActionDelegate:self];
    offlineMapProvider = [(MUPlaceViewController *)self offlineMapProvider];
    [(MUPlaceUnifiedActionRowSectionController *)v8 setOfflineMapProvider:offlineMapProvider];
  }

  return v8;
}

- (id)unifiedActionRowConfigurationForAvailability:(id)availability buttonModuleConfiguration:(id)configuration
{
  availabilityCopy = availability;
  configurationCopy = configuration;
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
  [v10 setButtonModuleConfiguration:configurationCopy];
  [v10 setSecondaryActionButtonController:self->_headerSecondaryButtonController];
  [v10 setIsSearchAlongRoute:(self->_options >> 35) & 1];
  [v10 setShowMoreButtonIfAvailable:0];
  BOOL = GEOConfigGetBOOL();
  if (availabilityCopy)
  {
    BOOL = [availabilityCopy canShowDirections] & BOOL;
  }

  [v10 setShouldShowDirectionsAction:BOOL];
  [v10 setCanShowDownloadOffline:(self->_options & 0x1000000000) == 0];
  [v10 setShouldPromoteDownloadOffline:{(-[_MKPlaceItem options](self->_placeItem, "options") & 2 | -[_MKPlaceItem options](self->_placeItem, "options") & 8) != 0}];
  [v10 setShouldShowContactsAction:(self->_options & 0x6000000000) != 0];
  if (MapKitIdiomIsMacCatalyst())
  {
    [v10 setActionRowMenuProvider:self];
  }

  placeItem = [(MUPlaceViewController *)self placeItem];
  if (([placeItem isIntermediateMapItem] & 1) != 0 || (self->_options & 8) != 0)
  {
    _canGetDirections = 0;
  }

  else
  {
    mapItem = [(MUPlaceViewController *)self mapItem];
    _canGetDirections = [mapItem _canGetDirections];
  }

  options = self->_options;
  v16 = (options >> 20) & 1;
  [v10 setCanShowDetourTime:v16];
  if (options & 0x200000000) != 0 && ((_canGetDirections | v16))
  {
    v17 = 4;
LABEL_18:
    [v10 setPrimaryButtonType:v17];
    goto LABEL_19;
  }

  mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
  _detourInfo = [mapItem2 _detourInfo];
  v20 = _detourInfo != 0;

  if ((*&v20 & (options >> 20)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if ((*&v20 & (options >> 20) | _canGetDirections))
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
  amsResultProvider = [(MUPlaceViewController *)self amsResultProvider];
  [v10 setAmsResultProvider:amsResultProvider];

  return v10;
}

- (id)_actionRowSectionControllerWithButtonModuleConfiguration:(id)configuration
{
  if ([(_MKPlaceItem *)self->_placeItem options])
  {
    v4 = 0;
  }

  else
  {
    v5 = [MUPlaceActionRowSectionController alloc];
    mapItem = [(MUPlaceViewController *)self mapItem];
    v4 = [(MUPlaceActionRowSectionController *)v5 initWithMapItem:mapItem actionManager:self->_actionManager menuProvider:self];
  }

  return v4;
}

- (id)_actionRowSectionControllerClientOverrideWithAvailability:(id)availability buttonModuleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([availability supportsPhotoSlider])
  {
    v7 = [(MUPlaceViewController *)self _actionRowSectionControllerWithButtonModuleConfiguration:configurationCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_headerButtonsSectionControllerForModuleConfiguration:(id)configuration
{
  if ((self->_options & 0x200000000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    configurationCopy = configuration;
    if (MapKitIdiomIsMacCatalyst())
    {
      v5 = 1;
    }

    else
    {
      v5 = (BYTE3(self->_options) >> 5) & 1;
    }

    v7 = objc_alloc_init(MUPlaceHeaderButtonsSectionControllerConfiguration);
    [(MUPlaceHeaderButtonsSectionControllerConfiguration *)v7 setButtonModuleConfiguration:configurationCopy];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(MKETAProvider *)self->_etaProvider cancel];
  if ((self->_options & 0x20000000) == 0)
  {
    v4 = MEMORY[0x1E696F190];
    developerPlaceCardAuditToken = [(MUPlaceViewControllerConfiguration *)self->_configuration developerPlaceCardAuditToken];
    v6 = [v4 sharedImageManagerWithAuditToken:developerPlaceCardAuditToken];
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

- (id)_headerSectionControllerWithAvailability:(id)availability
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
  developerPlaceCardAuditToken = [(MUPlaceViewControllerConfiguration *)self->_configuration developerPlaceCardAuditToken];
  [(MUPlaceHeaderSectionControllerConfiguration *)v4 setDeveloperPlaceCardAuditToken:developerPlaceCardAuditToken];

  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  userInterfaceIdiom = [mEMORY[0x1E696F3B8] userInterfaceIdiom];

  if (userInterfaceIdiom < 2)
  {
    goto LABEL_10;
  }

  if (userInterfaceIdiom == 2)
  {
    v13 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  if (userInterfaceIdiom == 3)
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

  mapItem = [(MUPlaceViewController *)self mapItem];
  _placecardLayout = [mapItem _placecardLayout];
  v7 = _placecardLayout != 0;

  return v7;
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  if (self->_location != locationCopy)
  {
    v8 = locationCopy;
    objc_storeStrong(&self->_location, location);
    location = self->_location;
    inlineMapSectionController = [(MUPlaceViewController *)self inlineMapSectionController];
    [inlineMapSectionController setLocation:location];

    locationCopy = v8;
  }
}

- (void)_buildSections
{
  v161 = *MEMORY[0x1E69E9840];
  v3 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
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
        sectionViews = [v10 sectionViews];
        v12 = [sectionViews countByEnumeratingWithState:&v147 objects:v157 count:16];
        if (v12)
        {
          v13 = *v148;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v148 != v13)
              {
                objc_enumerationMutation(sectionViews);
              }

              [(MUContentStackViewProtocol *)self->_contentStackView removeArrangedSubview:*(*(&v147 + 1) + 8 * j)];
            }

            v12 = [sectionViews countByEnumeratingWithState:&v147 objects:v157 count:16];
          }

          while (v12);
        }

        if (objc_opt_respondsToSelector())
        {
          sectionViewController = [v10 sectionViewController];
          [sectionViewController removeFromParentViewController];
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
  mapItem = [(MUPlaceViewController *)self mapItem];
  v127 = [(MUPlaceDataAvailability *)v18 initWithMapItem:mapItem options:self->_options];

  v20 = [MUPlaceViewControllerSectionController alloc];
  mapItem2 = [(MUPlaceViewController *)self mapItem];
  headerViewController = [(MUPlaceViewControllerConfiguration *)self->_configuration headerViewController];
  v23 = [(MUPlaceViewControllerSectionController *)v20 initWithMapItem:mapItem2 viewController:headerViewController];
  if (v23)
  {
    [v129 addObject:v23];
  }

  v24 = [(MUPlaceViewController *)self _headerSectionControllerWithAvailability:v127];
  if (v24)
  {
    [v129 addObject:v24];
  }

  placeItem = [(MUPlaceViewController *)self placeItem];
  if (placeItem)
  {
    placeItem2 = [(MUPlaceViewController *)self placeItem];
    isIntermediateMapItem = [placeItem2 isIntermediateMapItem];

    if ((isIntermediateMapItem & 1) == 0)
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

  placeItem3 = [(MUPlaceViewController *)self placeItem];
  if (([placeItem3 isIntermediateMapItem] & 1) != 0 || (self->_options & 8) != 0)
  {
    _canGetDirections = 0;
  }

  else
  {
    mapItem3 = [(MUPlaceViewController *)self mapItem];
    _canGetDirections = [mapItem3 _canGetDirections];
  }

  options = self->_options;
  v133 = (options >> 35) & 1;
  if (([(_MKPlaceItem *)self->_placeItem options]& 1) != 0)
  {
    [(MUPlaceActionManager *)self->_actionManager setIsCurrentLocation:1];
    v36 = 0;
    v37 = 3;
  }

  else if ((options & 0x200000000) != 0 && _canGetDirections & 1 | (options >> 20) & 1)
  {
    v36 = 0;
    v37 = 4;
  }

  else
  {
    mapItem4 = [(_MKPlaceItem *)self->_placeItem mapItem];
    _detourInfo = [mapItem4 _detourInfo];
    v77 = _detourInfo != 0;

    if (v77 && (options & 0x100000) != 0)
    {
      v37 = 2;
    }

    else
    {
      v37 = _canGetDirections;
    }

    if (!((v77 && (options & 0x100000) != 0) | _canGetDirections & 1))
    {
      v36 = 0;
      goto LABEL_58;
    }

    v36 = (!v77 || (options & 0x100000) == 0) & _canGetDirections;
  }

  headerButtonsSectionController = [(MUPlaceViewController *)self headerButtonsSectionController];
  [headerButtonsSectionController setPrimaryButtonType:v37];

  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    options = [(_MKPlaceItem *)self->_placeItem options];
    webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
    configuration = [webPlacecardSectionController configuration];
    [configuration setIsCurrentLocation:options & 1];

    v42 = self->_options;
    webPlacecardSectionController2 = [(MUPlaceViewController *)self webPlacecardSectionController];
    configuration2 = [webPlacecardSectionController2 configuration];
    [configuration2 setCanShowDetourTime:(v42 >> 20) & 1];

    webPlacecardSectionController3 = [(MUPlaceViewController *)self webPlacecardSectionController];
    configuration3 = [webPlacecardSectionController3 configuration];
    [configuration3 setCanShowDirections:_canGetDirections];

    webPlacecardSectionController4 = [(MUPlaceViewController *)self webPlacecardSectionController];
    configuration4 = [webPlacecardSectionController4 configuration];
    [configuration4 setIsAdditionalStop:(options >> 33) & 1];

    webPlacecardSectionController5 = [(MUPlaceViewController *)self webPlacecardSectionController];
    configuration5 = [webPlacecardSectionController5 configuration];
    [configuration5 setIsSearchAlongRoute:v133];

    mapItem5 = [(_MKPlaceItem *)self->_placeItem mapItem];
    _detourInfo2 = [mapItem5 _detourInfo];
    LOBYTE(v42) = _detourInfo2 == 0;

    if ((v42 & 1) == 0)
    {
      mapItem6 = [(_MKPlaceItem *)self->_placeItem mapItem];
      _detourInfo3 = [mapItem6 _detourInfo];
      [_detourInfo3 detourTime];
      v56 = v55;
      webPlacecardSectionController6 = [(MUPlaceViewController *)self webPlacecardSectionController];
      configuration6 = [webPlacecardSectionController6 configuration];
      *&v59 = v56;
      [configuration6 setDetourTime:v59];

      mapItem7 = [(_MKPlaceItem *)self->_placeItem mapItem];
      _detourInfo4 = [mapItem7 _detourInfo];
      [_detourInfo4 distanceToPlace];
      v63 = v62;
      webPlacecardSectionController7 = [(MUPlaceViewController *)self webPlacecardSectionController];
      configuration7 = [webPlacecardSectionController7 configuration];
      *&v66 = v63;
      [configuration7 setDistanceToPlace:v66];

      v67 = MEMORY[0x1E696AEC0];
      mapItem8 = [(_MKPlaceItem *)self->_placeItem mapItem];
      _detourInfo5 = [mapItem8 _detourInfo];
      [_detourInfo5 distanceToPlace];
      v71 = [v67 _mapkit_localizedDistanceStringWithMeters:v70 abbreviated:1];
      webPlacecardSectionController8 = [(MUPlaceViewController *)self webPlacecardSectionController];
      configuration8 = [webPlacecardSectionController8 configuration];
      [configuration8 setDistanceToPlaceString:v71];
    }

    webPlacecardSectionController9 = [(MUPlaceViewController *)self webPlacecardSectionController];
    [webPlacecardSectionController9 updateDirectionsMetadata];
  }

LABEL_58:
  _isMapItemTypeBrand = [obja _isMapItemTypeBrand];
  if (v133)
  {
    _detourInfo6 = [obja _detourInfo];
    v80 = _detourInfo6 == 0;

    if (v80)
    {
      [(MKETAProvider *)self->_etaProvider setAllowsDistantETA:1];
LABEL_63:
      [(MKETAProvider *)self->_etaProvider start];
      goto LABEL_64;
    }
  }

  if ((_isMapItemTypeBrand | v36))
  {
    goto LABEL_63;
  }

LABEL_64:
  headerSecondaryButtonController = self->_headerSecondaryButtonController;
  headerButtonsSectionController2 = [(MUPlaceViewController *)self headerButtonsSectionController];
  [headerButtonsSectionController2 setSecondaryButtonController:headerSecondaryButtonController];

  headerAlternatePrimaryButtonController = self->_headerAlternatePrimaryButtonController;
  headerButtonsSectionController3 = [(MUPlaceViewController *)self headerButtonsSectionController];
  [headerButtonsSectionController3 setAlternatePrimaryButtonController:headerAlternatePrimaryButtonController];

  [(MUPlaceViewController *)self _updatePersonalizedSuggestionSectionArbiterWithSections];
  location = self->_location;
  inlineMapSectionController = [(MUPlaceViewController *)self inlineMapSectionController];
  [inlineMapSectionController setLocation:location];

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
      personalizedSuggestionSectionArbiter = [(MUPlaceViewController *)self personalizedSuggestionSectionArbiter];
      [v91 setPersonalizedSuggestionsArbiterDelegate:personalizedSuggestionSectionArbiter];

      sectionViews2 = [v91 sectionViews];
      if ([sectionViews2 count])
      {
        hasContent = [v91 hasContent];

        if (!hasContent)
        {
          goto LABEL_73;
        }

        sectionViews2 = [v91 sectionViews];
        [v134 addObjectsFromArray:sectionViews2];
      }

LABEL_73:
      if (objc_opt_respondsToSelector())
      {
        sectionViewController2 = [v91 sectionViewController];
        if (sectionViewController2)
        {
          [(MUPlaceViewController *)self addChildViewController:sectionViewController2];
          [sectionViewController2 didMoveToParentViewController:self];
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
          headerSectionController = [(MUPlaceViewController *)self headerSectionController];
          v102 = v100 == headerSectionController;

          if (!v102)
          {
            sectionView = [v100 sectionView];
            [sectionView setAlpha:0.0];
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
  inlineMapSectionController2 = [(MUPlaceViewController *)self inlineMapSectionController];
  if (inlineMapSectionController2)
  {
    _hasResolvablePartialInformation = [obja _hasResolvablePartialInformation];

    if (_hasResolvablePartialInformation)
    {
      mEMORY[0x1E696F298] = [MEMORY[0x1E696F298] sharedService];
      _addressFormattedAsSinglelineAddress = [obja _addressFormattedAsSinglelineAddress];
      inlineMapSectionController3 = [mEMORY[0x1E696F298] ticketForForwardGeocodeString:_addressFormattedAsSinglelineAddress traits:0];

      objc_initWeak(buf, self);
      v137[0] = MEMORY[0x1E69E9820];
      v137[1] = 3221225472;
      v137[2] = __39__MUPlaceViewController__buildSections__block_invoke;
      v137[3] = &unk_1E8219220;
      objc_copyWeak(&v138, buf);
      [inlineMapSectionController3 submitWithHandler:v137 networkActivity:0];
      objc_destroyWeak(&v138);
      objc_destroyWeak(buf);
      goto LABEL_101;
    }
  }

  inlineMapSectionController3 = [(MUPlaceViewController *)self inlineMapSectionController];
  if (inlineMapSectionController3)
  {
    mapItem9 = [(MUPlaceViewController *)self mapItem];
    v112 = [mapItem9 url];
    if (!v112)
    {

      goto LABEL_101;
    }

    v113 = MEMORY[0x1E696F4B0];
    mapItem10 = [(MUPlaceViewController *)self mapItem];
    v115 = [mapItem10 url];
    LODWORD(v113) = [v113 isValidMapURL:v115];

    if (v113)
    {
      v116 = objc_alloc(MEMORY[0x1E696F4B0]);
      mapItem11 = [(MUPlaceViewController *)self mapItem];
      v118 = [mapItem11 url];
      inlineMapSectionController3 = [v116 initWithURL:v118];

      [inlineMapSectionController3 parseIncludingCustomParameters:1];
      mapItem12 = [(MUPlaceViewController *)self mapItem];
      _identifier = [mapItem12 _identifier];
      if (_identifier)
      {
        goto LABEL_99;
      }

      v121 = [inlineMapSectionController3 searchUID] == 0;

      if (!v121)
      {
        v122 = objc_alloc(MEMORY[0x1E696F280]);
        searchUID = [inlineMapSectionController3 searchUID];
        [inlineMapSectionController3 centerCoordinate];
        mapItem12 = [v122 initWithMUID:searchUID resultProviderID:0 coordinate:?];
        mEMORY[0x1E696F298]2 = [MEMORY[0x1E696F298] sharedService];
        contentProviderID = [inlineMapSectionController3 contentProviderID];
        _identifier = [mEMORY[0x1E696F298]2 ticketForNonExpiredIdentifier:mapItem12 resultProviderID:0 contentProvider:contentProviderID traits:0];

        objc_initWeak(buf, self);
        v135[0] = MEMORY[0x1E69E9820];
        v135[1] = 3221225472;
        v135[2] = __39__MUPlaceViewController__buildSections__block_invoke_2;
        v135[3] = &unk_1E8219220;
        objc_copyWeak(&v136, buf);
        [_identifier submitWithHandler:v135 networkActivity:0];
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

- (id)_buildForLayoutWithAvailability:(id)availability
{
  v38 = *MEMORY[0x1E69E9840];
  availabilityCopy = availability;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    v6 = [(MUPlaceViewController *)self _webBasedPlacecardViewControllerForAvailability:availabilityCopy];
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
    mapItem = [(MUPlaceViewController *)self mapItem];
    _placecardLayout = [mapItem _placecardLayout];

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
    v30 = _placecardLayout;
    modules = [_placecardLayout modules];
    v12 = [modules countByEnumeratingWithState:&v31 objects:v37 count:16];
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
            objc_enumerationMutation(modules);
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
              configuration = [v16 configuration];
              headerButtonConfig = [configuration headerButtonConfig];
              v23 = [(MUPlaceViewController *)self _headerButtonsSectionControllerForModuleConfiguration:headerButtonConfig];
              goto LABEL_40;
            case 3u:
              _placeFooterSectionController = [(MUPlaceViewController *)self _inlineMapSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 4u:
              _placeFooterSectionController = [(MUPlaceViewController *)self _photoSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 5u:
              configuration = [v16 configuration];
              headerButtonConfig = [configuration placeDetailsConfig];
              v23 = [(MUPlaceViewController *)self _placeInfoSectionControllerForAvailability:availabilityCopy moduleConfiguration:headerButtonConfig];
              goto LABEL_40;
            case 6u:
              _placeFooterSectionController = [(MUPlaceViewController *)self _transitDeparturesSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 8u:
              _placeFooterSectionController = [(MUPlaceViewController *)self _encyclopedicSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0xAu:
              configuration = [v16 configuration];
              headerButtonConfig = [configuration businessInfoConfig];
              v23 = [(MUPlaceViewController *)self _amenitiesSectionControllerForAvailability:availabilityCopy moduleConfiguration:headerButtonConfig];
              goto LABEL_40;
            case 0xBu:
            case 0x21u:
            case 0x24u:
              _placeFooterSectionController = [(MUPlaceViewController *)self _ratingsAndReviewsSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0xCu:
              configuration = [v16 configuration];
              headerButtonConfig = [configuration actionButtonConfig];
              v23 = [(MUPlaceViewController *)self _actionRowSectionControllerWithButtonModuleConfiguration:headerButtonConfig];
              goto LABEL_40;
            case 0xFu:
              _placeFooterSectionController = [(MUPlaceViewController *)self _officialAppSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0x10u:
            case 0x1Eu:
              _placeFooterSectionController = [(MUPlaceViewController *)self _browseCategorySectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0x11u:
              _placeFooterSectionController = [(MUPlaceViewController *)self _venueInfoSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0x13u:
            case 0x14u:
              _placeFooterSectionController = [(MUPlaceViewController *)self _annotatedItemSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0x17u:
              _placeFooterSectionController = [(MUPlaceViewController *)self _placeFooterSectionController];
              goto LABEL_50;
            case 0x19u:
              configuration2 = [v16 configuration];
              webContentConfig = [configuration2 webContentConfig];
              v26 = [(MUPlaceViewController *)self _webContentSectionControllerForConfiguration:webContentConfig];

              if (!v26)
              {
                continue;
              }

              goto LABEL_51;
            case 0x1Au:
            case 0x26u:
              configuration = [v16 configuration];
              headerButtonConfig = [configuration relatedPlaceConfig];
              v23 = [(MUPlaceViewController *)self _relatedPlaceSectionControllerForAvailability:availabilityCopy config:headerButtonConfig];
              goto LABEL_40;
            case 0x1Du:
              _placeFooterSectionController = [(MUPlaceViewController *)self _personalGuidesSectionController];
              goto LABEL_50;
            case 0x1Fu:
              _placeFooterSectionController = [(MUPlaceViewController *)self _curatedGuidesSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0x23u:
              configuration = [v16 configuration];
              headerButtonConfig = [configuration placeRibbonConfig];
              v23 = [(MUPlaceViewController *)self _placeRibbonSectionControllerForAvailability:availabilityCopy placeRibbonConfiguration:headerButtonConfig];
              goto LABEL_40;
            case 0x25u:
              _placeFooterSectionController = [(MUPlaceViewController *)self _placeDescriptionSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0x27u:
              configuration = [v16 configuration];
              headerButtonConfig = [configuration unifiedActionConfig];
              v23 = [(MUPlaceViewController *)self _unifiedActionRowSectionControllerForAvailability:availabilityCopy buttonModuleConfiguration:headerButtonConfig];
              goto LABEL_40;
            case 0x28u:
              _placeFooterSectionController = [(MUPlaceViewController *)self _placeEnrichmentSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0x29u:
              _placeFooterSectionController = [(MUPlaceViewController *)self _callToActionSuggestionSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0x2Au:
              configuration = [(MUPlaceViewController *)self mapItem];
              v26 = [(MUPlaceViewController *)self _evChargingSectionControllerForForAvailability:availabilityCopy mapItem:configuration];
              goto LABEL_41;
            case 0x2Bu:
              _placeFooterSectionController = [(MUPlaceViewController *)self _hikingTrailsSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0x2Cu:
              _placeFooterSectionController = [(MUPlaceViewController *)self _hikingTipSectionControllerForAvailability:availabilityCopy];
              goto LABEL_50;
            case 0x2Du:
              _placeFooterSectionController = [(MUPlaceViewController *)self _notesSectionControllerForAvailability:availabilityCopy];
LABEL_50:
              v26 = _placeFooterSectionController;
              if (_placeFooterSectionController)
              {
                goto LABEL_51;
              }

              continue;
            case 0x2Eu:
              configuration = [v16 configuration];
              headerButtonConfig = [configuration actionBarConfig];
              v23 = [(MUPlaceViewController *)self _actionBarSectionControllerForAvailability:availabilityCopy moduleConfiguration:headerButtonConfig];
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

        v13 = [modules countByEnumeratingWithState:&v31 objects:v37 count:16];
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

- (id)_buildDeveloperPlaceCardSectionsWithAvailability:(id)availability
{
  availabilityCopy = availability;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    v6 = [(MUPlaceViewController *)self _webBasedPlacecardViewControllerForAvailability:availabilityCopy];
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
    v9 = [(MUPlaceViewController *)self _inlineMapSectionControllerForAvailability:availabilityCopy];
    if (v9)
    {
      [v5 addObject:v9];
    }

    v10 = [(MUPlaceViewController *)self _placeInfoSectionControllerForAvailability:availabilityCopy moduleConfiguration:0];
    if (v10)
    {
      [v5 addObject:v10];
    }

    _placeFooterSectionController = [(MUPlaceViewController *)self _placeFooterSectionController];
    if (_placeFooterSectionController)
    {
      [v5 addObject:_placeFooterSectionController];
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

  _placeFooterSectionController = [(MUPlaceViewController *)self _placeFooterSectionController];
  if (_placeFooterSectionController)
  {
    [v3 addObject:_placeFooterSectionController];
  }

  v7 = [v3 copy];

  return v7;
}

- (id)_buildBrandCardSectionsWithAvailability:(id)availability
{
  availabilityCopy = availability;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(MUPlaceViewController *)self _actionRowSectionControllerWithButtonModuleConfiguration:0];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [(MUPlaceViewController *)self _placeInfoSectionControllerForAvailability:availabilityCopy moduleConfiguration:0];
  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [(MUPlaceViewController *)self _inlineMapSectionControllerForAvailability:availabilityCopy];
  if (v8)
  {
    [v5 addObject:v8];
  }

  _placeFooterSectionController = [(MUPlaceViewController *)self _placeFooterSectionController];
  if (_placeFooterSectionController)
  {
    [v5 addObject:_placeFooterSectionController];
  }

  v10 = [v5 copy];

  return v10;
}

- (id)_buildStaticSectionsWithAvailability:(id)availability
{
  v48 = *MEMORY[0x1E69E9840];
  availabilityCopy = availability;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    v6 = [(MUPlaceViewController *)self _webBasedPlacecardViewControllerForAvailability:availabilityCopy];
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
    v9 = [(MUPlaceViewController *)self _unifiedActionRowSectionControllerForAvailability:availabilityCopy buttonModuleConfiguration:0];
    if (v9)
    {
      [v5 addObject:v9];
    }

    v10 = [(MUPlaceViewController *)self _placeRibbonSectionControllerForAvailability:availabilityCopy placeRibbonConfiguration:0];
    if (v10)
    {
      [v5 addObject:v10];
    }

    v11 = [(MUPlaceViewController *)self _callToActionSuggestionSectionControllerForAvailability:availabilityCopy];
    if (v11)
    {
      [v5 addObject:v11];
    }

    v12 = [(MUPlaceViewController *)self _notesSectionControllerForAvailability:availabilityCopy];
    if (v12)
    {
      [v5 addObject:v12];
    }

    v13 = [(MUPlaceViewController *)self _transitDeparturesSectionControllerForAvailability:availabilityCopy];
    if (v13)
    {
      [v5 addObject:v13];
    }

    v14 = [(MUPlaceViewController *)self _browseCategorySectionControllerForAvailability:availabilityCopy];
    if (v14)
    {
      [v5 addObject:v14];
    }

    v15 = [(MUPlaceViewController *)self _venueInfoSectionControllerForAvailability:availabilityCopy];
    if (v15)
    {
      [v5 addObject:v15];
    }

    v16 = [(MUPlaceViewController *)self _photoSectionControllerForAvailability:availabilityCopy];
    if (v16)
    {
      [v5 addObject:v16];
    }

    v17 = [(MUPlaceViewController *)self _placeEnrichmentSectionControllerForAvailability:availabilityCopy];
    if (v17)
    {
      [v5 addObject:v17];
    }

    v18 = [(MUPlaceViewController *)self _hikingTipSectionControllerForAvailability:availabilityCopy];
    if (v18)
    {
      [v5 addObject:v18];
    }

    v19 = [(MUPlaceViewController *)self _contactSharedLocationSectionControllerForAvailability:availabilityCopy];
    if (v19)
    {
      [v5 addObject:v19];
    }

    v20 = [(MUPlaceViewController *)self _inlineMapSectionControllerForAvailability:availabilityCopy];
    if (v20)
    {
      [v5 addObject:v20];
    }

    _personalGuidesSectionController = [(MUPlaceViewController *)self _personalGuidesSectionController];
    if (_personalGuidesSectionController)
    {
      [v5 addObject:_personalGuidesSectionController];
    }

    v22 = [(MUPlaceViewController *)self _annotatedItemSectionControllerForAvailability:availabilityCopy];
    if (v22)
    {
      [v5 addObject:v22];
    }

    v23 = [(MUPlaceViewController *)self _curatedGuidesSectionControllerForAvailability:availabilityCopy];
    if (v23)
    {
      [v5 addObject:v23];
    }

    v24 = [(MUPlaceViewController *)self _placeDescriptionSectionControllerForAvailability:availabilityCopy];
    if (v24)
    {
      [v5 addObject:v24];
    }

    v25 = [(MUPlaceViewController *)self _encyclopedicSectionControllerForAvailability:availabilityCopy];
    if (v25)
    {
      [v5 addObject:v25];
    }

    v26 = [(MUPlaceViewController *)self _amenitiesSectionControllerForAvailability:availabilityCopy moduleConfiguration:0];
    if (v26)
    {
      [v5 addObject:v26];
    }

    v27 = [(MUPlaceViewController *)self _ratingsAndReviewsSectionControllerForAvailability:availabilityCopy];
    if (v27)
    {
      [v5 addObject:v27];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    mapItem = [(MUPlaceViewController *)self mapItem];
    _relatedPlaceLists = [mapItem _relatedPlaceLists];

    v30 = [_relatedPlaceLists countByEnumeratingWithState:&v42 objects:v47 count:16];
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
            objc_enumerationMutation(_relatedPlaceLists);
          }

          v34 = [(MUPlaceViewController *)self _relatedPlaceSectionControllerForAvailability:availabilityCopy relatedPlaceList:*(*(&v42 + 1) + 8 * i)];
          if (v34)
          {
            [v5 addObject:v34];
          }
        }

        v31 = [_relatedPlaceLists countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v31);
    }

    v35 = [(MUPlaceViewController *)self _hikingTrailsSectionControllerForAvailability:availabilityCopy];
    if (v35)
    {
      [v5 addObject:v35];
    }

    v36 = [(MUPlaceViewController *)self _officialAppSectionControllerForAvailability:availabilityCopy];
    if (v36)
    {
      [v5 addObject:v36];
    }

    v37 = [(MUPlaceViewController *)self _placeInfoSectionControllerForAvailability:availabilityCopy moduleConfiguration:0];
    if (v37)
    {
      [v5 addObject:v37];
    }

    _placeFooterSectionController = [(MUPlaceViewController *)self _placeFooterSectionController];
    if (_placeFooterSectionController)
    {
      [v5 addObject:_placeFooterSectionController];
    }

    v39 = [(MUPlaceViewController *)self _actionBarSectionControllerForAvailability:availabilityCopy moduleConfiguration:0];
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

- (void)setOptions:(unint64_t)options
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__MUPlaceViewController_setOptions___block_invoke;
  v4[3] = &unk_1E82191F8;
  v4[4] = self;
  v4[5] = options;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__MUPlaceViewController_setOptions___block_invoke_2;
  v3[3] = &unk_1E82191F8;
  v3[4] = self;
  v3[5] = options;
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

- (void)setShowContactActions:(BOOL)actions
{
  actionsCopy = actions;
  showContactActions = [(MUPlaceViewController *)self showContactActions];
  if (self->_showContactActions != actionsCopy)
  {
    self->_showContactActions = actionsCopy;
    if (showContactActions != [(MUPlaceViewController *)self showContactActions])
    {
      if (self->_placeItem)
      {
        [(MUPlaceActionManager *)self->_actionManager setShowContactActions:self->_showContactActions];
        mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
        v7 = objc_opt_respondsToSelector();

        if (v7)
        {
          mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
          [mapsAppDelegate2 placeViewControllerDidUpdateContactActionsAvailability:self];
        }
      }
    }
  }
}

- (void)_calculateShowingContactActionsWithCompletion:(id)completion
{
  completionCopy = completion;
  if ((self->_options & 0x8000000000) != 0)
  {
    goto LABEL_11;
  }

  placeItem = self->_placeItem;
  if (!placeItem)
  {
    goto LABEL_11;
  }

  contact = [(_MKPlaceItem *)placeItem contact];
  if (contact)
  {
    contact2 = [(_MKPlaceItem *)self->_placeItem contact];
    if ([contact2 hasBeenPersisted])
    {
      goto LABEL_10;
    }
  }

  if (([(_MKPlaceItem *)self->_placeItem options]& 8) != 0)
  {
    if (!contact)
    {
      goto LABEL_11;
    }

LABEL_10:

    goto LABEL_11;
  }

  contactStore = [(MUPlaceViewController *)self contactStore];
  isGuardianRestrictedCNContainer = [contactStore isGuardianRestrictedCNContainer];

  if (contact)
  {

    if (isGuardianRestrictedCNContainer)
    {
      goto LABEL_11;
    }
  }

  else if (isGuardianRestrictedCNContainer)
  {
    goto LABEL_11;
  }

  if (([(_MKPlaceItem *)self->_placeItem options]& 2) != 0)
  {
    goto LABEL_18;
  }

  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  if ([_geoMapItem _placeType] == 10)
  {

    goto LABEL_18;
  }

  mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
  _geoMapItem2 = [mapItem2 _geoMapItem];
  _placeType = [_geoMapItem2 _placeType];

  if (_placeType == 17)
  {
LABEL_18:
    mapItem3 = [(_MKPlaceItem *)self->_placeItem mapItem];
    if ([mapItem3 _hasMUID])
    {
      contactStore2 = [(MUPlaceViewController *)self contactStore];
      hasContactAccess = [contactStore2 hasContactAccess];

      if (hasContactAccess)
      {
        contactStore3 = [(MUPlaceViewController *)self contactStore];
        mapItem4 = [(_MKPlaceItem *)self->_placeItem mapItem];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __71__MUPlaceViewController__calculateShowingContactActionsWithCompletion___block_invoke;
        v20[3] = &unk_1E82184F8;
        v21 = completionCopy;
        [contactStore3 fetchStoredContactForMatchingMapItem:mapItem4 callbackQueue:MEMORY[0x1E69E96A0] completion:v20];

        goto LABEL_12;
      }
    }

    else
    {
    }

    (*(completionCopy + 2))(completionCopy, 1);
    goto LABEL_12;
  }

LABEL_11:
  (*(completionCopy + 2))(completionCopy, 0);
LABEL_12:
}

- (id)_contactForEditOperations
{
  originalContact = [(MUPlaceViewController *)self originalContact];
  if (originalContact)
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

- (void)_didResolveAttribution:(id)attribution
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
    mapItem = [(MUPlaceViewController *)self mapItem];
    v8 = 138412290;
    v9 = mapItem;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_DEBUG, "Attribution for mapItem %@ finished resolving", &v8, 0xCu);
  }

  [(MUPlaceViewController *)self _updateSections];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)ETAProviderLocationUpdated:(id)updated
{
  currentLocation = [updated currentLocation];
  [(MUPlaceViewController *)self setLocation:currentLocation];
}

- (int)mapTypeForETAProvider:(id)provider
{
  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
  v7 = [mapsAppDelegate2 mapTypeForPlaceViewController:self];

  return v7;
}

- (void)_captureRevealEventIfNeeded
{
  if (self->_impressionsCalculator)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    impressionsSessionIdentifier = self->_impressionsSessionIdentifier;
    self->_impressionsSessionIdentifier = uUID;

    [(MUImpressionsCalculator *)self->_impressionsCalculator setSessionIdentifier:self->_impressionsSessionIdentifier];
  }

  if ([(MUPlaceCardAnalyticsController *)self->_analyticsController instrumentRevealIfNeededWithImpressionsSessionId:self->_impressionsSessionIdentifier])
  {
    mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
    _identifier = [mapItem _identifier];
    [(MUPlaceViewController *)self setMapItemIdentifierIntrumentedForReveal:_identifier];
  }
}

- (void)_setPlaceItem:(id)item updateOriginalContact:(BOOL)contact
{
  contactCopy = contact;
  v94 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  mapItem = [itemCopy mapItem];
  mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
  if (mapItem != mapItem2)
  {
    goto LABEL_2;
  }

  mapItem3 = [itemCopy mapItem];
  if (!mapItem3)
  {
    contact = [itemCopy contact];
    contact2 = [(_MKPlaceItem *)self->_placeItem contact];
    v5 = contact2;
    if (contact != contact2)
    {

LABEL_2:
      goto LABEL_3;
    }
  }

  isIntermediateMapItem = [itemCopy isIntermediateMapItem];
  v65 = isIntermediateMapItem ^ [(_MKPlaceItem *)self->_placeItem isIntermediateMapItem];
  if (mapItem3)
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
    mapItem4 = [itemCopy mapItem];
    contact3 = [itemCopy contact];
    *buf = 138412802;
    v89 = mapItem4;
    v90 = 2112;
    v91 = contact3;
    v92 = 1024;
    isIntermediateMapItem2 = [itemCopy isIntermediateMapItem];
    _os_log_impl(&dword_1C5620000, v11, OS_LOG_TYPE_DEBUG, "Setting placeItem with mapItem %@, contact %@, isIntermediateMapItem %d", buf, 0x1Cu);
  }

  if (([itemCopy isIntermediateMapItem] & 1) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MUPlaceViewControllerWillUpdatePlaceItemNotification" object:self];
  }

  if (contactCopy)
  {
    v15 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      contact4 = [itemCopy contact];
      *buf = 138412290;
      v89 = contact4;
      _os_log_impl(&dword_1C5620000, v15, OS_LOG_TYPE_DEBUG, "Updating original contact with contact %@", buf, 0xCu);
    }

    contact5 = [itemCopy contact];
    [(MUPlaceViewController *)self setOriginalContact:contact5];
  }

  mapItem5 = [itemCopy mapItem];
  if (!mapItem5)
  {
    contact6 = [itemCopy contact];
    v20 = contact6 == 0;

    if (v20)
    {
      goto LABEL_15;
    }

    v21 = objc_alloc(MEMORY[0x1E696F270]);
    contact7 = [itemCopy contact];
    mapItem5 = [v21 initWithContact:contact7];

    v23 = MEMORY[0x1E696F460];
    contact8 = [itemCopy contact];
    v25 = [v23 placeItemWithMapItem:mapItem5 contact:contact8 options:16];

    itemCopy = v25;
  }

LABEL_15:
  mapItem6 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v27 = mapItem6 == 0;

  v28 = MEMORY[0x1E696F4D0];
  if (!v27)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    mapItem7 = [(_MKPlaceItem *)self->_placeItem mapItem];
    [defaultCenter2 removeObserver:self name:*v28 object:mapItem7];
  }

  v31 = self->_placeItem;
  if (v31 && !contactCopy && self->_active)
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
    mapItemFromSerialized = [(MUPlaceViewController *)self mapItemFromSerialized];
    v39 = [MEMORY[0x1E696F488] placeItemWithMapItem:mapItemFromSerialized options:0];
    placeItem = self->_placeItem;
    self->_placeItem = v39;
  }

  else
  {
    v41 = itemCopy;
    mapItemFromSerialized = self->_placeItem;
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
  currentLocation = [(MKETAProvider *)self->_etaProvider currentLocation];
  location = self->_location;
  self->_location = currentLocation;

  mapItem8 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v47 = mapItem8 == 0;

  if (!v47)
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    mapItem9 = [(_MKPlaceItem *)self->_placeItem mapItem];
    [defaultCenter3 addObserver:self selector:sel__didResolveAttribution_ name:*v28 object:mapItem9];
  }

  mapsAppDelegate = [(MUPlaceViewController *)self mapsAppDelegate];
  v51 = objc_opt_respondsToSelector();

  if (v51)
  {
    mapsAppDelegate2 = [(MUPlaceViewController *)self mapsAppDelegate];
    v53 = [mapsAppDelegate2 secondaryButtonControllerForPlaceViewController:self];
    v54 = self->_headerSecondaryButtonController;
    self->_headerSecondaryButtonController = v53;
  }

  mapsAppDelegate3 = [(MUPlaceViewController *)self mapsAppDelegate];
  v56 = objc_opt_respondsToSelector();

  if (v56)
  {
    mapsAppDelegate4 = [(MUPlaceViewController *)self mapsAppDelegate];
    v58 = [mapsAppDelegate4 alternatePrimaryButtonControllerForPlaceViewController:self];
    v59 = self->_headerAlternatePrimaryButtonController;
    self->_headerAlternatePrimaryButtonController = v58;
  }

  mapItem10 = [(MUPlaceViewController *)self mapItem];
  if (mapItem10 && (p_actionManager = &self->_actionManager, [(MUPlaceActionManager *)self->_actionManager setIsCurrentLocation:0], ([(_MKPlaceItem *)self->_placeItem options]& 1) != 0))
  {
    v62 = 1;
  }

  else
  {
    v62 = 0;
    p_actionManager = &self->_actionManager;
  }

  [(MUPlaceActionManager *)*p_actionManager setIsCurrentLocation:v62];
  mapItem11 = [(MUPlaceViewController *)self mapItem];
  _enrichmentInfo = [mapItem11 _enrichmentInfo];
  showcaseId = [_enrichmentInfo showcaseId];
  mEMORY[0x1E69A15A0] = [MEMORY[0x1E69A15A0] sharedData];
  [mEMORY[0x1E69A15A0] setPlaceCardPlaceActionDetailsShowcaseId:showcaseId];

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

  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  if (![mEMORY[0x1E69A2398] isInternalInstall])
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

    mEMORY[0x1E69A2398] = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [mEMORY[0x1E69A2398] setFromValue:&unk_1F450E1F8];
    [mEMORY[0x1E69A2398] setToValue:&unk_1F450E208];
    [mEMORY[0x1E69A2398] setDuration:0.25];
    LODWORD(v79) = 1.0;
    [mEMORY[0x1E69A2398] setRepeatCount:v79];
    [mEMORY[0x1E69A2398] setAutoreverses:1];
    [mEMORY[0x1E69A2398] setRemovedOnCompletion:1];
    [mEMORY[0x1E69A2398] setFillMode:*MEMORY[0x1E69797E8]];
    [(CALayer *)self->_debugWebPlacecardIndicatorLayer addAnimation:mEMORY[0x1E69A2398] forKey:@"opacityAnimation"];
LABEL_57:
  }

LABEL_58:

  objc_destroyWeak(&v87);
  objc_destroyWeak(buf);

LABEL_59:
  mapItemIdentifierIntrumentedForReveal = [(MUPlaceViewController *)self mapItemIdentifierIntrumentedForReveal];
  if (!mapItemIdentifierIntrumentedForReveal)
  {
    if (!+[MapsUIUtilities isMapsProcess])
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  mapItemIdentifierIntrumentedForReveal2 = [(MUPlaceViewController *)self mapItemIdentifierIntrumentedForReveal];
  mapItem12 = [(_MKPlaceItem *)self->_placeItem mapItem];
  _identifier = [mapItem12 _identifier];
  if (!(v73 & 1 | (([mapItemIdentifierIntrumentedForReveal2 isEqual:_identifier] & 1) == 0)))
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

- (void)_setMapItem:(id)item contact:(id)contact updateOriginalContact:(BOOL)originalContact
{
  if (contact)
  {
    [MEMORY[0x1E696F460] placeItemWithMapItem:item contact:contact options:16 * (item == 0)];
  }

  else
  {
    v8 = MEMORY[0x1E696F488];
    itemCopy = item;
    [v8 placeItemWithMapItem:itemCopy options:{objc_msgSend(itemCopy, "isCurrentLocation")}];
  }
  v10 = ;

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__MUPlaceViewController__setMapItem_contact_updateOriginalContact___block_invoke;
  v15[3] = &unk_1E82184D0;
  v15[4] = self;
  v16 = v10;
  originalContactCopy = originalContact;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__MUPlaceViewController__setMapItem_contact_updateOriginalContact___block_invoke_2;
  v12[3] = &unk_1E82184D0;
  v12[4] = self;
  v13 = v16;
  originalContactCopy2 = originalContact;
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

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  return v5;
}

- (id)contact
{
  contact = self->_contact;
  if (!contact)
  {
    contact = [(_MKPlaceItem *)self->_placeItem contact];
    v5 = contact;
    if (contact)
    {
      v6 = contact;
      mapItem = self->_contact;
      self->_contact = v6;
    }

    else
    {
      mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
      _placeCardContact = [mapItem _placeCardContact];
      v9 = self->_contact;
      self->_contact = _placeCardContact;
    }

    contact = self->_contact;
  }

  return contact;
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
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
  v11 = itemCopy;
  selfCopy = self;
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

- (id)_sectionControllersForClass:(Class)class
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

- (id)_firstSectionControllerOfClass:(Class)class
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
  placeViewControllerDelegate = [(MUPlaceViewController *)self placeViewControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    placeViewControllerDelegate2 = [(MUPlaceViewController *)self placeViewControllerDelegate];
    [placeViewControllerDelegate2 placeViewControllerDidUpdateHeight:self];
  }

  if (!+[MapsUIUtilities isMapsProcess])
  {
    [(MUPlaceViewController *)self showContentIfLoaded];
  }

  [(MUPlaceViewController *)self _updateBottomInset];
  view = [(MUPlaceViewController *)self view];
  [view bounds];
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
    webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
    [webPlacecardSectionController webViewIsCurrent:0];
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

    webPlacecardSectionController = [(MUPlaceViewController *)self webPlacecardSectionController];
    [webPlacecardSectionController webViewIsCurrent:1];
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
  view = [(MUPlaceViewController *)self view];
  [view setBackgroundColor:v5];

  self->_contentAlpha = 1.0;
  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  if ([mEMORY[0x1E69A2398] isInternalInstall])
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
    mEMORY[0x1E69A2398] = [(MUPlaceViewController *)self view];
    layer = [mEMORY[0x1E69A2398] layer];
    [layer addSublayer:self->_debugWebPlacecardIndicatorLayer];
  }
}

- (void)set_mapkit_contentVisibility:(int64_t)visibility
{
  v3.receiver = self;
  v3.super_class = MUPlaceViewController;
  [(MUPlaceViewController *)&v3 set_mapkit_contentVisibility:visibility];
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

- (void)setScrollEnabled:(BOOL)enabled
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__MUPlaceViewController_setScrollEnabled___block_invoke;
  v5[3] = &unk_1E8219780;
  v5[4] = self;
  enabledCopy = enabled;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__MUPlaceViewController_setScrollEnabled___block_invoke_2;
  v3[3] = &unk_1E8219780;
  v3[4] = self;
  enabledCopy2 = enabled;
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
  headerSectionController = [(MUPlaceViewController *)self headerSectionController];
  [headerSectionController reloadTrailingConstraint];
}

- (void)_updatePocketInsets
{
  if (![(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    [(MUPlaceViewController *)self heightForContentAboveTitle];
    v4 = v3 + 72.0;
    scrollView = [(MUPlaceViewController *)self scrollView];
    [scrollView _setPocketInsets:{v4, 0.0, 0.0, 0.0}];
  }
}

- (void)_updateBottomInset
{
  if (![(MUPlaceViewController *)self isFlexiblePlaceCardEnabled])
  {
    superview = [(MUPlaceActionBarView *)self->_actionBar superview];
    if (superview && (v4 = superview, v5 = [(MUPlaceActionBarView *)self->_actionBar isHidden], v4, (v5 & 1) == 0))
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

- (void)_commonInitWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
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

  objc_storeStrong(&self->_configuration, configuration);
  self->_options = [configurationCopy options];
  effectiveBundleIdentifier = [(MUPlaceViewControllerConfiguration *)self->_configuration effectiveBundleIdentifier];
  v11 = [effectiveBundleIdentifier length];

  if (v11)
  {
    effectiveBundleIdentifier2 = [(MUPlaceViewControllerConfiguration *)self->_configuration effectiveBundleIdentifier];
    mEMORY[0x1E696F268] = [MEMORY[0x1E696F268] sharedLocationManager];
    [mEMORY[0x1E696F268] setEffectiveBundleIdentifier:effectiveBundleIdentifier2];
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_actionBarDataSourceDidUpdate_ name:@"MUPlaceActionBarDataSourceDidUpdateNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__localeDidChange name:*MEMORY[0x1E695D8F0] object:0];

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

- (MUPlaceViewController)initWithMapItem:(id)item
{
  itemCopy = item;
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

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      if ([defaultManager fileExistsAtPath:v10])
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
        [(MUPlaceViewController *)v5 setMapItem:itemCopy];
      }
    }

    else
    {
      [(MUPlaceViewController *)v5 setMapItem:itemCopy];
    }
  }

  return v5;
}

- (MUPlaceViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = MUPlaceViewController;
  v5 = [(MUPlaceViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(MUPlaceViewController *)v5 _commonInitWithConfiguration:configurationCopy];
  }

  return v6;
}

- (BOOL)shouldStubPlacecard
{
  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  if ([mEMORY[0x1E69A2398] isInternalInstall])
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

+ (void)_copyStringToPasteboard:(id)pasteboard
{
  v3 = MEMORY[0x1E69DCD50];
  pasteboardCopy = pasteboard;
  generalPasteboard = [v3 generalPasteboard];
  [generalPasteboard setString:pasteboardCopy];
}

@end