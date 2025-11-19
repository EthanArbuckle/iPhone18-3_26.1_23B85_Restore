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
- (void)setCanMakeCalls:(BOOL)a3;
- (void)setCanShowDetourTime:(BOOL)a3;
- (void)setCanShowDirections:(BOOL)a3;
- (void)setCanShowDownloadOffline:(BOOL)a3;
- (void)setCanShowOpenFindMyAction:(BOOL)a3;
- (void)setCanShowRequestLocation:(BOOL)a3;
- (void)setDetourTime:(float)a3;
- (void)setDistanceToPlace:(float)a3;
- (void)setIsAdditionalStop:(BOOL)a3;
- (void)setIsCurrentLocation:(BOOL)a3;
- (void)setIsDeveloperPlacecard:(BOOL)a3;
- (void)setIsHomeWorkSchool:(BOOL)a3;
- (void)setIsSearchAlongRoute:(BOOL)a3;
- (void)setLibraryPlaceSavedState:(int64_t)a3;
- (void)setMapStyle:(int64_t)a3;
- (void)setNumberOfReportsInReview:(int64_t)a3;
- (void)setPlaceInShortcuts:(BOOL)a3;
- (void)setShouldDisableReportAProblem:(BOOL)a3;
- (void)setShouldExcludeFlyover:(BOOL)a3;
- (void)setShowMoreButton:(BOOL)a3;
- (void)setSupportsShowingCoordinates:(BOOL)a3;
- (void)setUserCanAddPhotos:(BOOL)a3;
- (void)setUserCanEdit:(BOOL)a3;
- (void)setUserCanRate:(BOOL)a3;
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

- (void)setPlaceInShortcuts:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_placeInShortcuts;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)userCanAddPhotos
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanAddPhotos;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserCanAddPhotos:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanAddPhotos;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)userCanRate
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanRate;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserCanRate:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanRate;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (void)setNumberOfReportsInReview:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_numberOfReportsInReview;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldDisableReportAProblem
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldDisableReportAProblem;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldDisableReportAProblem:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldDisableReportAProblem;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)shouldExcludeFlyover
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldExcludeFlyover;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldExcludeFlyover:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldExcludeFlyover;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)supportsShowingCoordinates
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_supportsShowingCoordinates;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSupportsShowingCoordinates:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_supportsShowingCoordinates;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (void)setIsDeveloperPlacecard:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isDeveloperPlacecard;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isHomeWorkSchool
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isHomeWorkSchool;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsHomeWorkSchool:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isHomeWorkSchool;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)userCanEdit
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanEdit;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserCanEdit:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanEdit;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)canShowOpenFindMyAction
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowOpenFindMyAction;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanShowOpenFindMyAction:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowOpenFindMyAction;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)canShowRequestLocation
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowRequestLocation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanShowRequestLocation:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowRequestLocation;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)showMoreButton
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_showMoreButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowMoreButton:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_showMoreButton;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)canShowDownloadOffline
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDownloadOffline;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanShowDownloadOffline:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDownloadOffline;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (void)setCanShowDetourTime:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDetourTime;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isCurrentLocation
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isCurrentLocation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsCurrentLocation:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isCurrentLocation;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)canShowDirections
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDirections;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanShowDirections:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDirections;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isAdditionalStop
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isAdditionalStop;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsAdditionalStop:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isAdditionalStop;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isSearchAlongRoute
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isSearchAlongRoute;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSearchAlongRoute:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isSearchAlongRoute;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (float)detourTime
{
  v2 = (self + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_detourTime);
  swift_beginAccess();
  return *v2;
}

- (void)setDetourTime:(float)a3
{
  v4 = (self + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_detourTime);
  swift_beginAccess();
  *v4 = a3;
}

- (float)distanceToPlace
{
  v2 = (self + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlace);
  swift_beginAccess();
  return *v2;
}

- (void)setDistanceToPlace:(float)a3
{
  v4 = (self + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlace);
  swift_beginAccess();
  *v4 = a3;
}

- (int64_t)libraryPlaceSavedState
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_libraryPlaceSavedState;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLibraryPlaceSavedState:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_libraryPlaceSavedState;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)mapStyle
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_mapStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMapStyle:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_mapStyle;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)canMakeCalls
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canMakeCalls;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanMakeCalls:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canMakeCalls;
  swift_beginAccess();
  *(self + v5) = a3;
}

@end