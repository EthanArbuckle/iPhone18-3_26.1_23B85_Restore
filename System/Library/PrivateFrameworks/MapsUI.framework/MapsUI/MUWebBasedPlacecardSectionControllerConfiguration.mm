@interface MUWebBasedPlacecardSectionControllerConfiguration
- (BOOL)canMakeCalls;
- (BOOL)canShowDetourTime;
- (BOOL)canShowDirections;
- (BOOL)canShowDownloadOffline;
- (BOOL)canShowOpenFindMyAction;
- (BOOL)canShowRequestLocation;
- (BOOL)isAdditionalStop;
- (BOOL)isCurrentLocation;
- (BOOL)isDeveloperPlacecard;
- (BOOL)isHomeWorkSchool;
- (BOOL)isSearchAlongRoute;
- (BOOL)placeInShortcuts;
- (BOOL)shouldDisableReportAProblem;
- (BOOL)shouldExcludeFlyover;
- (BOOL)showMoreButton;
- (BOOL)supportsShowingCoordinates;
- (BOOL)userCanAddPhotos;
- (BOOL)userCanEdit;
- (BOOL)userCanRate;
- (CNContact)contact;
- (MKETAProvider)etaProvider;
- (MUAMSResultProvider)amsResultProvider;
- (MUARPSuggestionViewModel)userARPSuggestion;
- (MUExternalActionHandling)externalActionHandler;
- (UIImage)userIcon;
- (_TtC6MapsUI31MUEVChargerAvailabilityProvider)evChargerAvailability;
- (float)detourTime;
- (float)distanceToPlace;
- (id)artworkCache;
- (id)relatedPlacesCache;
- (int64_t)libraryPlaceSavedState;
- (int64_t)mapStyle;
- (int64_t)numberOfReportsInReview;
- (void)setCanMakeCalls:(BOOL)calls;
- (void)setCanShowDetourTime:(BOOL)time;
- (void)setCanShowDirections:(BOOL)directions;
- (void)setCanShowDownloadOffline:(BOOL)offline;
- (void)setCanShowOpenFindMyAction:(BOOL)action;
- (void)setCanShowRequestLocation:(BOOL)location;
- (void)setDetourTime:(float)time;
- (void)setDistanceToPlace:(float)place;
- (void)setIsAdditionalStop:(BOOL)stop;
- (void)setIsCurrentLocation:(BOOL)location;
- (void)setIsDeveloperPlacecard:(BOOL)placecard;
- (void)setIsHomeWorkSchool:(BOOL)school;
- (void)setIsSearchAlongRoute:(BOOL)route;
- (void)setLibraryPlaceSavedState:(int64_t)state;
- (void)setMapStyle:(int64_t)style;
- (void)setNumberOfReportsInReview:(int64_t)review;
- (void)setPlaceInShortcuts:(BOOL)shortcuts;
- (void)setShouldDisableReportAProblem:(BOOL)problem;
- (void)setShouldExcludeFlyover:(BOOL)flyover;
- (void)setShowMoreButton:(BOOL)button;
- (void)setSupportsShowingCoordinates:(BOOL)coordinates;
- (void)setUserCanAddPhotos:(BOOL)photos;
- (void)setUserCanEdit:(BOOL)edit;
- (void)setUserCanRate:(BOOL)rate;
@end

@implementation MUWebBasedPlacecardSectionControllerConfiguration

- (MUExternalActionHandling)externalActionHandler
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC6MapsUI31MUEVChargerAvailabilityProvider)evChargerAvailability
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_evChargerAvailability;
  swift_beginAccess();
  return *(self + v3);
}

- (id)artworkCache
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_artworkCache;
  swift_beginAccess();
  return *(self + v3);
}

- (id)relatedPlacesCache
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_relatedPlacesCache;
  swift_beginAccess();
  return *(self + v3);
}

- (MUAMSResultProvider)amsResultProvider
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_amsResultProvider;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)placeInShortcuts
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_placeInShortcuts;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPlaceInShortcuts:(BOOL)shortcuts
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_placeInShortcuts;
  swift_beginAccess();
  *(self + v5) = shortcuts;
}

- (BOOL)userCanAddPhotos
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanAddPhotos;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserCanAddPhotos:(BOOL)photos
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanAddPhotos;
  swift_beginAccess();
  *(self + v5) = photos;
}

- (BOOL)userCanRate
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanRate;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserCanRate:(BOOL)rate
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanRate;
  swift_beginAccess();
  *(self + v5) = rate;
}

- (MUARPSuggestionViewModel)userARPSuggestion
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userARPSuggestion;
  swift_beginAccess();
  return *(self + v3);
}

- (int64_t)numberOfReportsInReview
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_numberOfReportsInReview;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNumberOfReportsInReview:(int64_t)review
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_numberOfReportsInReview;
  swift_beginAccess();
  *(self + v5) = review;
}

- (BOOL)shouldDisableReportAProblem
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldDisableReportAProblem;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldDisableReportAProblem:(BOOL)problem
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldDisableReportAProblem;
  swift_beginAccess();
  *(self + v5) = problem;
}

- (BOOL)shouldExcludeFlyover
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldExcludeFlyover;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldExcludeFlyover:(BOOL)flyover
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldExcludeFlyover;
  swift_beginAccess();
  *(self + v5) = flyover;
}

- (BOOL)supportsShowingCoordinates
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_supportsShowingCoordinates;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSupportsShowingCoordinates:(BOOL)coordinates
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_supportsShowingCoordinates;
  swift_beginAccess();
  *(self + v5) = coordinates;
}

- (UIImage)userIcon
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userIcon;
  swift_beginAccess();
  return *(self + v3);
}

- (CNContact)contact
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_contact;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)isDeveloperPlacecard
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isDeveloperPlacecard;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsDeveloperPlacecard:(BOOL)placecard
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isDeveloperPlacecard;
  swift_beginAccess();
  *(self + v5) = placecard;
}

- (BOOL)isHomeWorkSchool
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isHomeWorkSchool;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsHomeWorkSchool:(BOOL)school
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isHomeWorkSchool;
  swift_beginAccess();
  *(self + v5) = school;
}

- (BOOL)userCanEdit
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanEdit;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserCanEdit:(BOOL)edit
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanEdit;
  swift_beginAccess();
  *(self + v5) = edit;
}

- (BOOL)canShowOpenFindMyAction
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowOpenFindMyAction;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanShowOpenFindMyAction:(BOOL)action
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowOpenFindMyAction;
  swift_beginAccess();
  *(self + v5) = action;
}

- (BOOL)canShowRequestLocation
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowRequestLocation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanShowRequestLocation:(BOOL)location
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowRequestLocation;
  swift_beginAccess();
  *(self + v5) = location;
}

- (BOOL)showMoreButton
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_showMoreButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowMoreButton:(BOOL)button
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_showMoreButton;
  swift_beginAccess();
  *(self + v5) = button;
}

- (BOOL)canShowDownloadOffline
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDownloadOffline;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanShowDownloadOffline:(BOOL)offline
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDownloadOffline;
  swift_beginAccess();
  *(self + v5) = offline;
}

- (MKETAProvider)etaProvider
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_etaProvider;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)canShowDetourTime
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDetourTime;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanShowDetourTime:(BOOL)time
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDetourTime;
  swift_beginAccess();
  *(self + v5) = time;
}

- (BOOL)isCurrentLocation
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isCurrentLocation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsCurrentLocation:(BOOL)location
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isCurrentLocation;
  swift_beginAccess();
  *(self + v5) = location;
}

- (BOOL)canShowDirections
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDirections;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanShowDirections:(BOOL)directions
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDirections;
  swift_beginAccess();
  *(self + v5) = directions;
}

- (BOOL)isAdditionalStop
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isAdditionalStop;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsAdditionalStop:(BOOL)stop
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isAdditionalStop;
  swift_beginAccess();
  *(self + v5) = stop;
}

- (BOOL)isSearchAlongRoute
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isSearchAlongRoute;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSearchAlongRoute:(BOOL)route
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isSearchAlongRoute;
  swift_beginAccess();
  *(self + v5) = route;
}

- (float)detourTime
{
  v2 = (self + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_detourTime);
  swift_beginAccess();
  return *v2;
}

- (void)setDetourTime:(float)time
{
  v4 = (self + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_detourTime);
  swift_beginAccess();
  *v4 = time;
}

- (float)distanceToPlace
{
  v2 = (self + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlace);
  swift_beginAccess();
  return *v2;
}

- (void)setDistanceToPlace:(float)place
{
  v4 = (self + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlace);
  swift_beginAccess();
  *v4 = place;
}

- (int64_t)libraryPlaceSavedState
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_libraryPlaceSavedState;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLibraryPlaceSavedState:(int64_t)state
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_libraryPlaceSavedState;
  swift_beginAccess();
  *(self + v5) = state;
}

- (int64_t)mapStyle
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_mapStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMapStyle:(int64_t)style
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_mapStyle;
  swift_beginAccess();
  *(self + v5) = style;
}

- (BOOL)canMakeCalls
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canMakeCalls;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanMakeCalls:(BOOL)calls
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canMakeCalls;
  swift_beginAccess();
  *(self + v5) = calls;
}

@end