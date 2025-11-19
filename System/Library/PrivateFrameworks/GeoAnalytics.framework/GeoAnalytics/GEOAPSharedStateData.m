@interface GEOAPSharedStateData
+ (id)sharedData;
- (BOOL)_hasActualFallbackData;
- (BOOL)_hasActualUserHomeCountry;
- (BOOL)_hasActualUserHomeMetro;
- (BOOL)_hasSuggestionsData;
- (BOOL)_isHandoff;
- (BOOL)_isHandoffFromDeviceType:(id)a3;
- (BOOL)_isPunchInAppIdInList:(id)a3;
- (BOOL)hasMapLaunchData;
- (BOOL)hasMapRestoreData;
- (BOOL)hasMapsServerData;
- (BOOL)hasPlaceCardStateData;
- (BOOL)hasPlaceCard_PlaceActionDetails;
- (BOOL)hasPlaceCard_PlaceActionDetails_TransitPlaceCard;
- (BOOL)hasPlaceCard_PlaceActionDetails_TransitPlaceCard_TransitDepartureSequence;
- (BOOL)hasShowcase;
- (BOOL)is3rdPartyPunchIn;
- (BOOL)isFindMyPunchIn;
- (BOOL)isMacHandoff;
- (BOOL)isOther2ndPartyPunchIn;
- (BOOL)isSMSPunchIn;
- (BOOL)isSafariPunchIn;
- (BOOL)isSiriPunchIn;
- (BOOL)isSpotlightPunchIn;
- (BOOL)mapsInOfflineMode;
- (BOOL)shouldCountAsEnrichmentResult;
- (GEOAPSharedStateData)init;
- (id)_filteredHomeCountry:(id)a3;
- (id)_metroForLatLng:(id)a3 inCountry:(id)a4 filterWithAllowList:(BOOL)a5;
- (id)bestCurrentMetro;
- (id)stateImpressionObject;
- (id)stateMapSettings;
- (id)stateMapSettingsShort;
- (id)stateMapUIShown;
- (id)stateMapsFeatures;
- (id)stateMapsUserSettings;
- (id)stateRoutingSettings;
- (id)stateSearchResults;
- (id)stateTapEvents;
- (id)suggestionsState;
- (int)_geoTransportModeForAPTransportMode:(int)a3;
- (int)_geoVoiceGuidanceLevelFromAPVoiceGuidanceLevel:(int)a3;
- (int)activeNavModeAsGEOTransportType;
- (int)layoutInfoAsGEOLayoutInfo;
- (int)layoutStyleAsGEOLayoutStyle;
- (int)locationPrecisionTypeAsGEOSettingsLocationType;
- (int)moduleButtonLinkTypeAsGEOActionButtonLinkType:(int)a3;
- (int)moduleButtonTypeAsGEOModuleButtonType:(int64_t)a3;
- (int)navVoiceVolumeAsGEONavVoiceVolume;
- (int)transportModeAsGEOTransportMode;
- (void)_handleTaskTimer;
- (void)_performSyncStateUpdateWithIsolator:(id)a3 updateBlock:(id)a4;
- (void)_performUserProfileStateOperation:(id)a3;
- (void)_populateWithGEOTransitDepartureSequenceUsage:(id)a3;
- (void)_populateWithGEOTransitPlaceCard:(id)a3;
- (void)_resetTaskTimer;
- (void)addPlaceCardModulesForRevealAction:(id)a3;
- (void)addSuggestionsDisplayedResults:(id)a3;
- (void)bestUserHomeLocation:(id)a3;
- (void)clearSuggestionsData;
- (void)clearSuggestionsDisplayedResults;
- (void)performMapFeaturesStateOperation:(id)a3;
- (void)performMapSettingsStateOperation:(id)a3;
- (void)performMapUIShownStateOperation:(id)a3;
- (void)performMapUserSettingsStateOperation:(id)a3;
- (void)performRoutingSettingsStateOperation:(id)a3;
- (void)periodicSettingsHandler;
- (void)populateActionButtonDetails:(id)a3;
- (void)populateImpressionObjectId:(id)a3;
- (void)populatePlaceIdsWithSpecifierBlock:(id)a3;
- (void)populateRatingPhotoSubmissionDetailsWithEntryPoint:(int)a3 originTarget:(id)a4;
- (void)populateRatingSubmissionDetailsWithEntryPoint:(int)a3 originTarget:(id)a4 specifierBlock:(id)a5;
- (void)populateSearchResultsForQuery:(id)a3 searchResultSpecifierBlock:(id)a4;
- (void)populateTapEventForPinType:(int)a3 tapEventSpecifierBlock:(id)a4;
- (void)populateWithChildPlace:(id)a3 timestamp:(double)a4 resultIndex:(int)a5;
- (void)populateWithPlace:(id)a3 timestamp:(double)a4 resultIndex:(int)a5;
- (void)populateWithPlaceActionDetails:(id)a3;
- (void)setCarPlayInfo:(id)a3;
- (void)setCurrentMetro:(id)a3;
- (void)setHasMapSettingsAvoidBusyRoads:(BOOL)a3;
- (void)setHasMapSettingsAvoidHighways:(BOOL)a3;
- (void)setHasMapSettingsAvoidHills:(BOOL)a3;
- (void)setHasMapSettingsAvoidStairs:(BOOL)a3;
- (void)setHasMapSettingsAvoidTolls:(BOOL)a3;
- (void)setHasMapSettingsDirectionsWakeDevice:(BOOL)a3;
- (void)setHasMapSettingsEBike:(BOOL)a3;
- (void)setHasMapSettingsFamiliarRoutes:(BOOL)a3;
- (void)setHasMapSettingsFindMyCarEnabled:(BOOL)a3;
- (void)setHasMapSettingsHeadingEnabled:(BOOL)a3;
- (void)setHasMapSettingsLabelEnabled:(BOOL)a3;
- (void)setHasMapSettingsLocationPrecisionType:(BOOL)a3;
- (void)setHasMapSettingsNavVolume:(BOOL)a3;
- (void)setHasMapSettingsPauseSpokenAudioEnabled:(BOOL)a3;
- (void)setHasMapSettingsReportingIncidentsEnabled:(BOOL)a3;
- (void)setHasMapSettingsSpeedLimitEnabled:(BOOL)a3;
- (void)setHasMapSettingsTrafficEnabled:(BOOL)a3;
- (void)setHasMapSettingsTransportMode:(BOOL)a3;
- (void)setHasMapSettingsVisitedPlaces:(BOOL)a3;
- (void)setHasMapSettingsWalkingAvoidBusyRoads:(BOOL)a3;
- (void)setHasMapSettingsWalkingAvoidHills:(BOOL)a3;
- (void)setHasMapSettingsWalkingAvoidStairs:(BOOL)a3;
- (void)setHasMapUiShownActiveNavMode:(BOOL)a3;
- (void)setHasMapUiShownAqiShown:(BOOL)a3;
- (void)setHasMapUiShownWeatherShown:(BOOL)a3;
- (void)setHasSuggestionsAcSequenceNumber:(BOOL)a3;
- (void)setHasSuggestionsSearchFieldType:(BOOL)a3;
- (void)setHasSuggestionsSelectedIndex:(BOOL)a3;
- (void)setMapFeatureElectronicVehicleCount:(int)a3;
- (void)setMapFeatureFavoritesCount:(int)a3;
- (void)setMapFeatureLibraryFavoritesGuideSavedPlacesCount:(int)a3;
- (void)setMapFeatureLibraryGuidesSavedPlacesCount:(int)a3;
- (void)setMapFeatureLibraryPlacesWithNoteCount:(int)a3;
- (void)setMapFeatureLibrarySavedPlacesCount:(int)a3;
- (void)setMapFeatureLicensePlateCount:(int)a3;
- (void)setMapFeaturePersonalCollectionsCount:(int)a3;
- (void)setMapFeatureSavedCollectionsCount:(int)a3;
- (void)setMapFeatureSubmittedPhotosCount:(int)a3;
- (void)setMapFeatureSubmittedRatingsCount:(int)a3;
- (void)setMapSettingsAvoidBusyRoads:(BOOL)a3;
- (void)setMapSettingsAvoidHighways:(BOOL)a3;
- (void)setMapSettingsAvoidHills:(BOOL)a3;
- (void)setMapSettingsAvoidStairs:(BOOL)a3;
- (void)setMapSettingsAvoidTolls:(BOOL)a3;
- (void)setMapSettingsDirectionsWakeDevice:(BOOL)a3;
- (void)setMapSettingsEBike:(BOOL)a3;
- (void)setMapSettingsFamiliarRoutes:(BOOL)a3;
- (void)setMapSettingsFindMyCarEnabled:(BOOL)a3;
- (void)setMapSettingsHeadingEnabled:(BOOL)a3;
- (void)setMapSettingsLabelEnabled:(BOOL)a3;
- (void)setMapSettingsLocationPrecisionType:(int)a3;
- (void)setMapSettingsNavVolume:(int)a3;
- (void)setMapSettingsPauseSpokenAudioEnabled:(BOOL)a3;
- (void)setMapSettingsReportingIncidentsEnabled:(BOOL)a3;
- (void)setMapSettingsSpeedLimitEnabled:(BOOL)a3;
- (void)setMapSettingsTrafficEnabled:(BOOL)a3;
- (void)setMapSettingsTransportMode:(int)a3;
- (void)setMapSettingsVisitedPlaces:(int)a3;
- (void)setMapSettingsWalkingAvoidBusyRoads:(BOOL)a3;
- (void)setMapSettingsWalkingAvoidHills:(BOOL)a3;
- (void)setMapSettingsWalkingAvoidStairs:(BOOL)a3;
- (void)setMapUiShownActiveNavMode:(int)a3;
- (void)setMapUiShownAqiShown:(BOOL)a3;
- (void)setMapUiShownWeatherShown:(BOOL)a3;
- (void)setMeCardHomeCountry:(id)a3 andHomeLocation:(id)a4;
- (void)setSuggestionsAcSequenceNumber:(int)a3;
- (void)setSuggestionsDisplayedResults:(id)a3;
- (void)setSuggestionsSearchFieldType:(int)a3;
- (void)setSuggestionsSearchString:(id)a3;
- (void)setSuggestionsSelectedIndex:(int)a3;
- (void)setUserProfileAvailableActions:(id)a3;
- (void)setUserProfileUserIsLoggedIntoICloud:(BOOL)a3;
@end

@implementation GEOAPSharedStateData

+ (id)sharedData
{
  if (sharedData_onceToken != -1)
  {
    dispatch_once(&sharedData_onceToken, &__block_literal_global_3199);
  }

  v3 = sharedData__sharedData;

  return v3;
}

- (GEOAPSharedStateData)init
{
  v54.receiver = self;
  v54.super_class = GEOAPSharedStateData;
  v2 = [(GEOAnalyticsPipelineStateData *)&v54 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];
    *(v2 + 760) = [v4 isEqualToString:*MEMORY[0x1E69A1A78]];

    v5 = geo_reentrant_isolater_create_with_format();
    v6 = *(v2 + 96);
    *(v2 + 96) = v5;

    v7 = geo_isolater_create();
    v8 = *(v2 + 97);
    *(v2 + 97) = v7;

    v9 = geo_isolater_create();
    v10 = *(v2 + 98);
    *(v2 + 98) = v9;

    v11 = geo_isolater_create();
    v12 = *(v2 + 99);
    *(v2 + 99) = v11;

    v13 = geo_isolater_create();
    v14 = *(v2 + 100);
    *(v2 + 100) = v13;

    v15 = geo_isolater_create();
    v16 = *(v2 + 101);
    *(v2 + 101) = v15;

    v17 = geo_isolater_create();
    v18 = *(v2 + 102);
    *(v2 + 102) = v17;

    v19 = geo_isolater_create();
    v20 = *(v2 + 103);
    *(v2 + 103) = v19;

    v21 = geo_isolater_create();
    v22 = *(v2 + 104);
    *(v2 + 104) = v21;

    v23 = geo_isolater_create();
    v24 = *(v2 + 105);
    *(v2 + 105) = v23;

    v25 = geo_isolater_create();
    v26 = *(v2 + 106);
    *(v2 + 106) = v25;

    v27 = geo_isolater_create();
    v28 = *(v2 + 107);
    *(v2 + 107) = v27;

    v29 = geo_isolater_create();
    v30 = *(v2 + 108);
    *(v2 + 108) = v29;

    v31 = geo_isolater_create();
    v32 = *(v2 + 109);
    *(v2 + 109) = v31;

    v33 = geo_isolater_create();
    v34 = *(v2 + 110);
    *(v2 + 110) = v33;

    v35 = geo_isolater_create();
    v36 = *(v2 + 111);
    *(v2 + 111) = v35;

    v37 = geo_isolater_create();
    v38 = *(v2 + 112);
    *(v2 + 112) = v37;

    v39 = objc_alloc_init(MEMORY[0x1E69A2140]);
    v40 = *(v2 + 113);
    *(v2 + 113) = v39;

    global_queue = geo_get_global_queue();
    v42 = *(v2 + 114);
    *(v2 + 114) = global_queue;

    if (*(v2 + 760) == 1)
    {
      v44 = *MEMORY[0x1E69A1A68];
      v43 = *(MEMORY[0x1E69A1A68] + 8);
      if (_GEOConfigHasValue())
      {
        GEOConfigGetDouble();
        [v2 setMapsUserStartDate:?];
      }

      else
      {
        v45 = [MEMORY[0x1E69A2430] sharedManager];
        v46 = [v45 bestReferenceDate];

        [v46 timeIntervalSinceReferenceDate];
        [v2 setMapsUserStartDate:?];
        [v2 mapsUserStartDate];
        GEOConfigSetDouble();
      }
    }

    v47 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 114));
    v48 = *(v2 + 115);
    *(v2 + 115) = v47;

    dispatch_source_set_timer(*(v2 + 115), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    objc_initWeak(&location, v2);
    v49 = *(v2 + 115);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __28__GEOAPSharedStateData_init__block_invoke;
    v51[3] = &unk_1E79593B0;
    objc_copyWeak(&v52, &location);
    dispatch_source_set_event_handler(v49, v51);
    dispatch_activate(*(v2 + 115));
    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
  }

  return v2;
}

uint64_t __34__GEOAPSharedStateData_sharedData__block_invoke()
{
  sharedData__sharedData = objc_alloc_init(GEOAPSharedStateData);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_hasActualUserHomeCountry
{
  if (_GEOConfigHasValue())
  {
    v2 = GEOConfigGetString();
    v3 = [&unk_1F2056A70 containsObject:v2] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)bestCurrentMetro
{
  if (_GEOConfigHasValue())
  {
    v2 = GEOConfigGetString();
  }

  else
  {
    v2 = @"UNKNOWN";
  }

  return v2;
}

- (void)_resetTaskTimer
{
  UInteger = GEOConfigGetUInteger();
  v4 = dispatch_time(0, 1000000000 * UInteger);
  periodicSettingsTimer = self->_periodicSettingsTimer;

  dispatch_source_set_timer(periodicSettingsTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (BOOL)mapsInOfflineMode
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A22E8] shared];
  v3 = v2;
  if (!v2)
  {
LABEL_6:
    LOBYTE(v6) = 0;
    goto LABEL_7;
  }

  v4 = [v2 state];
  v5 = v4;
  if (v4 >= 3u)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v9[0] = 67109120;
      v9[1] = v5;
      _os_log_fault_impl(&dword_1AB634000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "no metro lat/lng provided", v9, 8u);
    }

    goto LABEL_6;
  }

  v6 = 4u >> (v4 & 7);
LABEL_7:

  v7 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (BOOL)is3rdPartyPunchIn
{
  v3 = [(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceAppId];
  if (v3)
  {
    if ([(GEOAPSharedStateData *)self isSiriPunchIn]|| [(GEOAPSharedStateData *)self isSafariPunchIn]|| [(GEOAPSharedStateData *)self isSpotlightPunchIn]|| [(GEOAPSharedStateData *)self isSMSPunchIn]|| [(GEOAPSharedStateData *)self isFindMyPunchIn])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(GEOAPSharedStateData *)self isOther2ndPartyPunchIn];
    }
  }

  return v3;
}

- (BOOL)isFindMyPunchIn
{
  v3 = GEOConfigGetArray();
  LOBYTE(self) = [(GEOAPSharedStateData *)self _isPunchInAppIdInList:v3];

  return self;
}

- (BOOL)isOther2ndPartyPunchIn
{
  if (![(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceAppId]|| [(GEOAPSharedStateData *)self isSiriPunchIn]|| [(GEOAPSharedStateData *)self isSafariPunchIn]|| [(GEOAPSharedStateData *)self isSpotlightPunchIn]|| [(GEOAPSharedStateData *)self isSMSPunchIn]|| [(GEOAPSharedStateData *)self isFindMyPunchIn])
  {
    return 0;
  }

  v4 = [(GEOAnalyticsPipelineStateData *)self mapLaunchSourceAppId];
  v5 = [v4 lowercaseString];

  LOBYTE(v4) = [v5 hasPrefix:@"com.apple"];
  return v4;
}

- (BOOL)isSafariPunchIn
{
  v3 = GEOConfigGetArray();
  LOBYTE(self) = [(GEOAPSharedStateData *)self _isPunchInAppIdInList:v3];

  return self;
}

- (BOOL)isSiriPunchIn
{
  v3 = GEOConfigGetArray();
  LOBYTE(self) = [(GEOAPSharedStateData *)self _isPunchInAppIdInList:v3];

  return self;
}

- (BOOL)isSMSPunchIn
{
  v3 = GEOConfigGetArray();
  LOBYTE(self) = [(GEOAPSharedStateData *)self _isPunchInAppIdInList:v3];

  return self;
}

- (BOOL)isSpotlightPunchIn
{
  v3 = GEOConfigGetArray();
  LOBYTE(self) = [(GEOAPSharedStateData *)self _isPunchInAppIdInList:v3];

  return self;
}

- (BOOL)hasMapRestoreData
{
  if ([(GEOAnalyticsPipelineStateData *)self hasRestoreUiTarget]|| [(GEOAnalyticsPipelineStateData *)self hasRestoreLayoutInfo])
  {
    return 1;
  }

  return [(GEOAnalyticsPipelineStateData *)self hasRestoreLayoutStyle];
}

- (BOOL)hasMapLaunchData
{
  if ([(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceAppId]|| [(GEOAnalyticsPipelineStateData *)self hasMapLaunchLaunchUri]|| [(GEOAnalyticsPipelineStateData *)self hasMapLaunchReferringWebsite]|| [(GEOAnalyticsPipelineStateData *)self hasMapLaunchIsHandoff])
  {
    return 1;
  }

  return [(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceHandoffDevice];
}

- (id)stateMapSettingsShort
{
  v3 = objc_alloc_init(MEMORY[0x1E69A2098]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__GEOAPSharedStateData_stateMapSettingsShort__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __45__GEOAPSharedStateData_stateMapSettingsShort__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsNavVolume])
  {
    [*(a1 + 40) setNavVoiceVolume:{objc_msgSend(*(a1 + 32), "navVoiceVolumeAsGEONavVoiceVolume")}];
  }

  if ([*(a1 + 32) hasMapSettingsTransportMode])
  {
    [*(a1 + 40) setPreferredTransportMode:{objc_msgSend(*(a1 + 32), "transportModeAsGEOTransportMode")}];
  }

  if ([*(a1 + 32) hasMapSettingsHeadingEnabled])
  {
    [*(a1 + 40) setHeadingEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsHeadingEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsLabelEnabled])
  {
    [*(a1 + 40) setLabelEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsLabelEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsPauseSpokenAudioEnabled])
  {
    [*(a1 + 40) setPauseSpokenAudioEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsPauseSpokenAudioEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsSpeedLimitEnabled])
  {
    [*(a1 + 40) setSpeedLimitEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsSpeedLimitEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsTrafficEnabled])
  {
    [*(a1 + 40) setTrafficEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsTrafficEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsLocationPrecisionType])
  {
    [*(a1 + 40) setLocationType:{objc_msgSend(*(a1 + 32), "locationPrecisionTypeAsGEOSettingsLocationType")}];
  }

  if ([*(a1 + 32) hasMapSettingsDrivingVoiceSettings])
  {
    [*(a1 + 40) setDrivingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsDrivingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsWalkingVoiceSettings])
  {
    [*(a1 + 40) setWalkingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsWalkingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsCyclingVoiceSettings])
  {
    [*(a1 + 40) setCyclingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsCyclingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsIsHandsFreeProfileEnabled])
  {
    [*(a1 + 40) setHFPEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsIsHandsFreeProfileEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsDirectionsWakeDevice])
  {
    [*(a1 + 40) setDirectionsWakeDevice:{objc_msgSend(*(a1 + 32), "mapSettingsDirectionsWakeDevice")}];
  }

  return 0;
}

- (int)locationPrecisionTypeAsGEOSettingsLocationType
{
  result = [(GEOAnalyticsPipelineStateData *)self hasMapSettingsLocationPrecisionType];
  if (result)
  {
    result = [(GEOAnalyticsPipelineStateData *)self mapSettingsLocationPrecisionType];
    if ((result - 1) >= 3)
    {
      return 0;
    }
  }

  return result;
}

- (int)activeNavModeAsGEOTransportType
{
  if ([(GEOAnalyticsPipelineStateData *)self hasMapUiShownActiveNavMode]&& (v3 = [(GEOAnalyticsPipelineStateData *)self mapUiShownActiveNavMode]- 1, v3 <= 4))
  {
    return dword_1AB6C3514[v3];
  }

  else
  {
    return 4;
  }
}

- (BOOL)hasMapsServerData
{
  if ([(GEOAnalyticsPipelineStateData *)self hasMapsServerMetadata]|| [(GEOAnalyticsPipelineStateData *)self hasMapsServerMetadataSuggestionEntryTappedOn])
  {
    return 1;
  }

  v4 = [(GEOAnalyticsPipelineStateData *)self mapsServerMetadataSuggestionEntryDisplayeds];
  v3 = [v4 count] != 0;

  return v3;
}

- (BOOL)hasPlaceCardStateData
{
  if ([(GEOAnalyticsPipelineStateData *)self placeCardPossibleActionsCount]|| [(GEOAnalyticsPipelineStateData *)self placeCardUnactionableUiElementsCount]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceCardType]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceCardCategory]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardTransitAdvisoryBanner])
  {
    return 1;
  }

  return [(GEOAPSharedStateData *)self hasPlaceCard_PlaceActionDetails];
}

- (BOOL)hasPlaceCard_PlaceActionDetails
{
  if ([(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsActionUrl]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsAnimationId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsBusinessId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsDestinationApp]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsPhotoId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsPlaceId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsRichProviderId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsSearchResponseRelativeTimestamp]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTargetId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsLocalSearchProviderId]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsResultIndex]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsShowcaseId])
  {
    return 1;
  }

  return [(GEOAPSharedStateData *)self hasPlaceCard_PlaceActionDetails_TransitPlaceCard];
}

- (BOOL)hasPlaceCard_PlaceActionDetails_TransitPlaceCard
{
  if ([(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardIncidentType]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitSystemName]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitCategory])
  {
    return 1;
  }

  return [(GEOAPSharedStateData *)self hasPlaceCard_PlaceActionDetails_TransitPlaceCard_TransitDepartureSequence];
}

- (BOOL)hasPlaceCard_PlaceActionDetails_TransitPlaceCard_TransitDepartureSequence
{
  if ([(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageDirection]|| [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageLineId])
  {
    return 1;
  }

  return [(GEOAnalyticsPipelineStateData *)self hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageHeadsign];
}

- (BOOL)_hasActualUserHomeMetro
{
  if (_GEOConfigHasValue())
  {
    v2 = GEOConfigGetString();
    v3 = [&unk_1F2056A70 containsObject:v2] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (int)transportModeAsGEOTransportMode
{
  result = [(GEOAnalyticsPipelineStateData *)self hasMapSettingsTransportMode];
  if (result)
  {
    v4 = [(GEOAnalyticsPipelineStateData *)self mapSettingsTransportMode];

    return [(GEOAPSharedStateData *)self _geoTransportModeForAPTransportMode:v4];
  }

  return result;
}

- (int)layoutInfoAsGEOLayoutInfo
{
  result = [(GEOAnalyticsPipelineStateData *)self hasMapUiLayoutInfo];
  if (result)
  {
    result = [(GEOAnalyticsPipelineStateData *)self mapUiLayoutInfo];
    if ((result - 1) >= 3)
    {
      return 0;
    }
  }

  return result;
}

- (int)layoutStyleAsGEOLayoutStyle
{
  result = [(GEOAnalyticsPipelineStateData *)self hasMapUiLayoutStyle];
  if (result)
  {
    result = [(GEOAnalyticsPipelineStateData *)self mapUiLayoutStyle];
    if ((result - 1) >= 5)
    {
      return 0;
    }
  }

  return result;
}

- (void)populatePlaceIdsWithSpecifierBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69A20C8]);
    v11 = 0;
    v9 = 0;
    v10 = 0;
    if (v4[2](v4, &v11 + 4, &v9, &v10, &v11))
    {
      do
      {
        v6 = objc_alloc_init(MEMORY[0x1E69A2380]);
        [v6 setResultIndex:HIDWORD(v11)];
        [v6 setBusinessId:v10];
        [v6 setBasemapId:v9];
        [v6 setLocalSearchProviderId:v11];
        [v5 addPlaceIdDetails:v6];

        v11 = 0;
        v9 = 0;
        v10 = 0;
      }

      while ((v4[2](v4, &v11 + 4, &v9, &v10, &v11) & 1) != 0);
    }

    placeMapsIdIso = self->_placeMapsIdIso;
    v8 = v5;
    geo_isolate_sync();
  }
}

- (BOOL)_isPunchInAppIdInList:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceAppId])
  {
    v5 = [(GEOAnalyticsPipelineStateData *)self mapLaunchSourceAppId];
    v6 = [v5 lowercaseString];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) lowercaseString];
          v12 = [v11 isEqualToString:v6];

          if (v12)
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)shouldCountAsEnrichmentResult
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__GEOAPSharedStateData_shouldCountAsEnrichmentResult__block_invoke;
  v6[3] = &unk_1E7959590;
  v6[4] = &v7;
  [(GEOAPSharedStateData *)self bestUserHomeLocation:v6];
  v3 = [(GEOAnalyticsPipelineStateData *)self searchResultsState];
  if ([v3 includesEnrichedResult])
  {
    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

void __53__GEOAPSharedStateData_shouldCountAsEnrichmentResult__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = GEOConfigGetArray();
  v4 = [v5 containsObject:v3];

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

- (BOOL)hasShowcase
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  placeIso = self->_placeIso;
  geo_reentrant_isolate_sync();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

void __35__GEOAPSharedStateData_hasShowcase__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) placeCardState];
  v3 = [v2 modules];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) type] == 40)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isMacHandoff
{
  v3 = [(GEOAPSharedStateData *)self _isHandoff];
  if (v3)
  {
    if ([(GEOAPSharedStateData *)self isIPadHandoff]|| [(GEOAPSharedStateData *)self isIPadHandoff])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(GEOAPSharedStateData *)self isWatchHandoff];
    }
  }

  return v3;
}

- (BOOL)_isHandoffFromDeviceType:(id)a3
{
  v4 = a3;
  if ([(GEOAPSharedStateData *)self _isHandoff])
  {
    v5 = [(GEOAnalyticsPipelineStateData *)self mapLaunchSourceHandoffDevice];
    v6 = [v5 hasPrefix:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isHandoff
{
  if (![(GEOAnalyticsPipelineStateData *)self hasMapLaunchIsHandoff]|| ![(GEOAnalyticsPipelineStateData *)self hasMapLaunchSourceHandoffDevice])
  {
    return 0;
  }

  return [(GEOAnalyticsPipelineStateData *)self mapLaunchIsHandoff];
}

- (void)setMeCardHomeCountry:(id)a3 andHomeLocation:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E69A15D8];
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138478083;
    v17 = v6;
    v18 = 2113;
    v19 = v7;
    _os_log_impl(&dword_1AB634000, v9, OS_LOG_TYPE_DEBUG, "setting meCard country with %{private}@, %{private}@", &v16, 0x16u);
  }

  if (v6)
  {
    v10 = [(GEOAPSharedStateData *)self _filteredHomeCountry:v6];
  }

  else
  {
    v11 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    v6 = [v11 countryCode];

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138477827;
      v17 = v6;
      _os_log_impl(&dword_1AB634000, v12, OS_LOG_TYPE_DEBUG, "no countryCode provided; using countryCode %{private}@", &v16, 0xCu);
    }

    v10 = @"UNKNOWN";
  }

  v13 = [(GEOAPSharedStateData *)self _metroForLatLng:v7 inCountry:v6 filterWithAllowList:1];
  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138477827;
    v17 = v13;
    _os_log_impl(&dword_1AB634000, v14, OS_LOG_TYPE_DEBUG, "MeMetro is %{private}@", &v16, 0xCu);
  }

  GEOConfigSetString();
  GEOConfigSetString();

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentMetro:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E69A15D8];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138477827;
    v19 = v4;
    _os_log_impl(&dword_1AB634000, v6, OS_LOG_TYPE_DEBUG, "updating current metro at %{private}@", &v18, 0xCu);
  }

  v7 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v8 = [v7 countryCode];

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138477827;
    v19 = v8;
    _os_log_impl(&dword_1AB634000, v9, OS_LOG_TYPE_DEBUG, "using countryCode %{private}@", &v18, 0xCu);
  }

  v10 = [(GEOAPSharedStateData *)self _metroForLatLng:v4 inCountry:v8 filterWithAllowList:0];
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138477827;
    v19 = v10;
    _os_log_impl(&dword_1AB634000, v11, OS_LOG_TYPE_DEBUG, "current metro is %{private}@", &v18, 0xCu);
  }

  if (v10)
  {
    GEOConfigSetString();
  }

  else
  {
    _GEOConfigRemoveValue();
  }

  v12 = *MEMORY[0x1E69A1A70];
  v13 = *(MEMORY[0x1E69A1A70] + 8);
  if ((GEOConfigGetBOOL() & 1) == 0 && [(GEOAPSharedStateData *)self _hasActualFallbackData])
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1AB634000, v14, OS_LOG_TYPE_DEBUG, "fallback metro is already set", &v18, 2u);
    }

    goto LABEL_22;
  }

  v14 = [(GEOAPSharedStateData *)self _metroForLatLng:v4 inCountry:v8 filterWithAllowList:1];
  if (!v14)
  {
    _GEOConfigRemoveValue();
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_18:
    _GEOConfigRemoveValue();
    goto LABEL_19;
  }

  GEOConfigSetString();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_16:
  v15 = [(GEOAPSharedStateData *)self _filteredHomeCountry:v8];

  GEOConfigSetString();
  v8 = v15;
LABEL_19:
  GEOConfigSetBOOL();
  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138478083;
    v19 = v14;
    v20 = 2113;
    v21 = v8;
    _os_log_impl(&dword_1AB634000, v16, OS_LOG_TYPE_DEBUG, "setting fallback metro to %{private}@, country to %{private}@", &v18, 0x16u);
  }

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
}

- (id)_filteredHomeCountry:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[GEOMetroRegionAssetProvider sharedProvider];
  v5 = [v4 homeCountryCodeAcceptList];

  if (v5)
  {
    v6 = [v5 containsObject:v3];
    v7 = *MEMORY[0x1E69A15D8];
    v8 = GEOFindOrCreateLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v9)
      {
        v15 = 138477827;
        v16 = v3;
        _os_log_impl(&dword_1AB634000, v8, OS_LOG_TYPE_DEBUG, "MeCountry is %{private}@", &v15, 0xCu);
      }

      v10 = v3;
    }

    else
    {
      if (v9)
      {
        v15 = 138477827;
        v16 = v3;
        _os_log_impl(&dword_1AB634000, v8, OS_LOG_TYPE_DEBUG, "%{private}@ is not on the allow list", &v15, 0xCu);
      }

      v10 = @"OTHER";
    }
  }

  else
  {
    v11 = *MEMORY[0x1E69A15D8];
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1AB634000, v12, OS_LOG_TYPE_DEBUG, "no home countryCode list is available", &v15, 2u);
    }

    v10 = @"MISSING_ALLOW_LIST";
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_metroForLatLng:(id)a3 inCountry:(id)a4 filterWithAllowList:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[GEOMetroRegionAssetProvider sharedProvider];
  v10 = v9;
  if (v7)
  {
    v11 = [v9 urlForInstalledCountryCode:v8];

    if (v11)
    {
      v12 = objc_alloc_init(GEOMetroRegionLookup);
      v13 = [(GEOMetroRegionLookup *)v12 lookupRegionWithLocation:v7 countryCodeHint:v8];
      if (!v13)
      {
        v25 = *MEMORY[0x1E69A15D8];
        v26 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v29 = 138477827;
          v30 = v7;
          _os_log_impl(&dword_1AB634000, v26, OS_LOG_TYPE_DEBUG, "no metro region region at %{private}@", &v29, 0xCu);
        }

        v22 = @"OTHER";
        goto LABEL_31;
      }

      if (!v5)
      {
        goto LABEL_14;
      }

      v14 = *MEMORY[0x1E69A15D8];
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v29 = 138477827;
        v30 = v13;
        _os_log_impl(&dword_1AB634000, v15, OS_LOG_TYPE_DEBUG, "will apply allow list filtering to %{private}@", &v29, 0xCu);
      }

      v16 = [v10 homeMetroAcceptListForCountryCode:v8];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 containsObject:v13];
        v19 = GEOFindOrCreateLog();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
        if (v18)
        {
          if (v20)
          {
            v29 = 138477827;
            v30 = v13;
            _os_log_impl(&dword_1AB634000, v19, OS_LOG_TYPE_DEBUG, "metros %{private}@ is allowed", &v29, 0xCu);
          }

          v21 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v29 = 138477827;
            v30 = v13;
            _os_log_impl(&dword_1AB634000, v21, OS_LOG_TYPE_DEBUG, "using metro %{private}@", &v29, 0xCu);
          }

LABEL_14:
          v22 = v13;
LABEL_31:

          goto LABEL_32;
        }

        if (v20)
        {
          v29 = 138477827;
          v30 = v13;
          _os_log_impl(&dword_1AB634000, v19, OS_LOG_TYPE_DEBUG, "metros %{private}@ is not allowed", &v29, 0xCu);
        }

        v22 = @"OTHER";
      }

      else
      {
        v19 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v29 = 138477827;
          v30 = v8;
          _os_log_impl(&dword_1AB634000, v19, OS_LOG_TYPE_DEBUG, "no metro allow list for %{private}@", &v29, 0xCu);
        }

        v22 = @"MISSING_ALLOW_LIST";
      }

      goto LABEL_31;
    }

    v24 = *MEMORY[0x1E69A15D8];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v29 = 138477827;
      v30 = v8;
      _os_log_impl(&dword_1AB634000, v13, OS_LOG_TYPE_DEBUG, "metro regions for %{private}@ are unavailable", &v29, 0xCu);
    }

    v22 = @"MISSING_REGIONS";
  }

  else
  {
    v23 = *MEMORY[0x1E69A15D8];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_1AB634000, v13, OS_LOG_TYPE_DEBUG, "no metro lat/lng provided", &v29, 2u);
    }

    v22 = @"MISSING_LOCATION";
  }

LABEL_32:

  v27 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)bestUserHomeLocation:(id)a3
{
  v6 = a3;
  if ([(GEOAPSharedStateData *)self _hasActualUserHomeCountry]&& [(GEOAPSharedStateData *)self _hasActualUserHomeMetro]|| _GEOConfigHasValue() && (_GEOConfigHasValue() & 1) != 0 || _GEOConfigHasValue() && _GEOConfigHasValue())
  {
    v4 = GEOConfigGetString();
    v5 = GEOConfigGetString();
  }

  else
  {
    v4 = @"UNKNOWN";
    v5 = @"UNKNOWN";
  }

  v6[2](v6, v4, v5);
}

- (BOOL)_hasActualFallbackData
{
  if (_GEOConfigHasValue() && _GEOConfigHasValue())
  {
    v2 = GEOConfigGetString();
    if ([&unk_1F2056A70 containsObject:v2])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v4 = GEOConfigGetString();
      v3 = [&unk_1F2056A70 containsObject:v4] ^ 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)stateTapEvents
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3158;
  v9 = __Block_byref_object_dispose__3159;
  v10 = 0;
  tapEventStateIso = self->_tapEventStateIso;
  geo_isolate_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __38__GEOAPSharedStateData_stateTapEvents__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) tapEventState];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)stateImpressionObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3158;
  v9 = __Block_byref_object_dispose__3159;
  v10 = 0;
  impressionObjectStateIso = self->_impressionObjectStateIso;
  geo_isolate_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __45__GEOAPSharedStateData_stateImpressionObject__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) impressionObjectState];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)stateSearchResults
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3158;
  v9 = __Block_byref_object_dispose__3159;
  v10 = 0;
  searchResultsStateIso = self->_searchResultsStateIso;
  geo_isolate_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __42__GEOAPSharedStateData_stateSearchResults__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) searchResultsState];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)stateRoutingSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E69A2128]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__GEOAPSharedStateData_stateRoutingSettings__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performRoutingSettingsStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __44__GEOAPSharedStateData_stateRoutingSettings__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69A2558]);
  if ([*(a1 + 32) hasMapFeatureElectronicVehicleCount])
  {
    [v2 setElectronicVehicleCount:{objc_msgSend(*(a1 + 32), "mapFeatureElectronicVehicleCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureLicensePlateCount])
  {
    [v2 setLicensePlateCount:{objc_msgSend(*(a1 + 32), "mapFeatureLicensePlateCount")}];
  }

  if ([v2 electronicVehicleCount] || objc_msgSend(v2, "licensePlateCount"))
  {
    [*(a1 + 40) setVirtualGarageSettings:v2];
  }

  return 0;
}

- (id)stateMapsUserSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E69A20D8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__GEOAPSharedStateData_stateMapsUserSettings__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performMapUserSettingsStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __45__GEOAPSharedStateData_stateMapsUserSettings__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasSuggestionsSiriEnabled])
  {
    [*(a1 + 40) setSiriSuggestionsEnabled:{objc_msgSend(*(a1 + 32), "suggestionsSiriEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsNotificationsEnabled])
  {
    [*(a1 + 40) setNotificationsEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsNotificationsEnabled")}];
  }

  v2 = *MEMORY[0x1E69A1A28];
  v3 = *(MEMORY[0x1E69A1A28] + 8);
  [*(a1 + 40) setIsOptedInToVlCrowdsourcing:GEOConfigGetBOOL()];
  return 0;
}

- (id)stateMapsFeatures
{
  v3 = objc_alloc_init(MEMORY[0x1E69A20C0]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__GEOAPSharedStateData_stateMapsFeatures__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __41__GEOAPSharedStateData_stateMapsFeatures__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapFeaturePersonalCollectionsCount])
  {
    [*(a1 + 40) setPersonalCollectionsCount:{objc_msgSend(*(a1 + 32), "mapFeaturePersonalCollectionsCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureSavedCollectionsCount])
  {
    [*(a1 + 40) setSavedCollectionsCount:{objc_msgSend(*(a1 + 32), "mapFeatureSavedCollectionsCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureSubmittedRatingsCount])
  {
    [*(a1 + 40) setSubmittedRatingsCount:{objc_msgSend(*(a1 + 32), "mapFeatureSubmittedRatingsCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureSubmittedPhotosCount])
  {
    [*(a1 + 40) setSubmittedPhotosCount:{objc_msgSend(*(a1 + 32), "mapFeatureSubmittedPhotosCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureIsHomeFavoriteSet])
  {
    [*(a1 + 40) setHomeFavoriteSet:{objc_msgSend(*(a1 + 32), "mapFeatureIsHomeFavoriteSet")}];
  }

  if ([*(a1 + 32) hasMapFeatureIsWorkFavoriteSet])
  {
    [*(a1 + 40) setWorkFavoriteSet:{objc_msgSend(*(a1 + 32), "mapFeatureIsWorkFavoriteSet")}];
  }

  if ([*(a1 + 32) hasMapFeatureIsSchoolFavoriteSet])
  {
    [*(a1 + 40) setSchoolFavoriteSet:{objc_msgSend(*(a1 + 32), "mapFeatureIsSchoolFavoriteSet")}];
  }

  if ([*(a1 + 32) hasMapFeatureIsTransitFavoriteSet])
  {
    [*(a1 + 40) setTransitFavoriteSet:{objc_msgSend(*(a1 + 32), "mapFeatureIsTransitFavoriteSet")}];
  }

  if ([*(a1 + 32) hasMapFeatureFavoritesCount])
  {
    [*(a1 + 40) setFavoritesCount:{objc_msgSend(*(a1 + 32), "mapFeatureFavoritesCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureLibrarySavedPlacesCount])
  {
    [*(a1 + 40) setLibrarySavedPlacesCount:{objc_msgSend(*(a1 + 32), "mapFeatureLibrarySavedPlacesCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureLibraryPlacesWithNoteCount])
  {
    [*(a1 + 40) setLibraryPlacesWithNoteCount:{objc_msgSend(*(a1 + 32), "mapFeatureLibraryPlacesWithNoteCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureLibraryGuidesSavedPlacesCount])
  {
    [*(a1 + 40) setLibraryGuidesSavedPlacesCount:{objc_msgSend(*(a1 + 32), "mapFeatureLibraryGuidesSavedPlacesCount")}];
  }

  if ([*(a1 + 32) hasMapFeatureLibraryFavoritesGuideSavedPlacesCount])
  {
    [*(a1 + 40) setLibraryFavoritesGuideSavedPlacesCount:{objc_msgSend(*(a1 + 32), "mapFeatureLibraryFavoritesGuideSavedPlacesCount")}];
  }

  return 0;
}

- (id)stateMapUIShown
{
  v3 = objc_alloc_init(MEMORY[0x1E69A20A8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__GEOAPSharedStateData_stateMapUIShown__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __39__GEOAPSharedStateData_stateMapUIShown__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapUiShownAqiShown])
  {
    [*(a1 + 40) setIsAirQualityShown:{objc_msgSend(*(a1 + 32), "mapUiShownAqiShown")}];
  }

  if ([*(a1 + 32) hasMapUiShownWeatherShown])
  {
    [*(a1 + 40) setIsWeatherShown:{objc_msgSend(*(a1 + 32), "mapUiShownWeatherShown")}];
  }

  if ([*(a1 + 32) hasVenueExperienceShown])
  {
    [*(a1 + 40) setIsVenueExperienceShown:{objc_msgSend(*(a1 + 32), "venueExperienceShown")}];
  }

  if ([*(a1 + 32) hasMapUiShownActiveNavMode])
  {
    [*(a1 + 40) setActiveNavMode:{objc_msgSend(*(a1 + 32), "activeNavModeAsGEOTransportType")}];
  }

  if ([*(a1 + 32) hasLookAroundEntryIconShown])
  {
    [*(a1 + 40) setIsLookAroundEntryIconShown:{objc_msgSend(*(a1 + 32), "lookAroundEntryIconShown")}];
  }

  return 0;
}

- (id)stateMapSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E69A2098]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__GEOAPSharedStateData_stateMapSettings__block_invoke;
  v8[3] = &unk_1E79594C8;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __40__GEOAPSharedStateData_stateMapSettings__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsNavVolume])
  {
    [*(a1 + 40) setNavVoiceVolume:{objc_msgSend(*(a1 + 32), "navVoiceVolumeAsGEONavVoiceVolume")}];
  }

  if ([*(a1 + 32) hasMapSettingsTransportMode])
  {
    [*(a1 + 40) setPreferredTransportMode:{objc_msgSend(*(a1 + 32), "transportModeAsGEOTransportMode")}];
  }

  if ([*(a1 + 32) hasMapSettingsAvoidHighways])
  {
    [*(a1 + 40) setAvoidHighways:{objc_msgSend(*(a1 + 32), "mapSettingsAvoidHighways")}];
  }

  if ([*(a1 + 32) hasMapSettingsAvoidTolls])
  {
    [*(a1 + 40) setAvoidTolls:{objc_msgSend(*(a1 + 32), "mapSettingsAvoidTolls")}];
  }

  if ([*(a1 + 32) hasMapSettingsFindMyCarEnabled])
  {
    [*(a1 + 40) setFindMyCarEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsFindMyCarEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsHeadingEnabled])
  {
    [*(a1 + 40) setHeadingEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsHeadingEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsLabelEnabled])
  {
    [*(a1 + 40) setLabelEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsLabelEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsPauseSpokenAudioEnabled])
  {
    [*(a1 + 40) setPauseSpokenAudioEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsPauseSpokenAudioEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsSpeedLimitEnabled])
  {
    [*(a1 + 40) setSpeedLimitEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsSpeedLimitEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsTrafficEnabled])
  {
    [*(a1 + 40) setTrafficEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsTrafficEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsAvoidHills])
  {
    [*(a1 + 40) setBikingAvoidHills:{objc_msgSend(*(a1 + 32), "mapSettingsAvoidHills")}];
  }

  if ([*(a1 + 32) hasMapSettingsAvoidStairs])
  {
    [*(a1 + 40) setBikingAvoidStairs:{objc_msgSend(*(a1 + 32), "mapSettingsAvoidStairs")}];
  }

  if ([*(a1 + 32) hasMapSettingsAvoidBusyRoads])
  {
    [*(a1 + 40) setBikingAvoidBusyRoads:{objc_msgSend(*(a1 + 32), "mapSettingsAvoidBusyRoads")}];
  }

  if ([*(a1 + 32) hasMapSettingsEBike])
  {
    [*(a1 + 40) setEBike:{objc_msgSend(*(a1 + 32), "mapSettingsEBike")}];
  }

  if ([*(a1 + 32) hasMapSettingsLocationPrecisionType])
  {
    [*(a1 + 40) setLocationType:{objc_msgSend(*(a1 + 32), "locationPrecisionTypeAsGEOSettingsLocationType")}];
  }

  if ([*(a1 + 32) hasMapSettingsDrivingVoiceSettings])
  {
    [*(a1 + 40) setDrivingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsDrivingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsWalkingVoiceSettings])
  {
    [*(a1 + 40) setWalkingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsWalkingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsCyclingVoiceSettings])
  {
    [*(a1 + 40) setCyclingVoiceSettings:{objc_msgSend(*(a1 + 32), "mapSettingsCyclingVoiceSettings")}];
  }

  if ([*(a1 + 32) hasMapSettingsIsHandsFreeProfileEnabled])
  {
    [*(a1 + 40) setHFPEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsIsHandsFreeProfileEnabled")}];
  }

  if ([*(a1 + 32) hasMapSettingsWalkingAvoidHills])
  {
    [*(a1 + 40) setWalkingAvoidHills:{objc_msgSend(*(a1 + 32), "mapSettingsWalkingAvoidHills")}];
  }

  if ([*(a1 + 32) hasMapSettingsWalkingAvoidStairs])
  {
    [*(a1 + 40) setWalkingAvoidStairs:{objc_msgSend(*(a1 + 32), "mapSettingsWalkingAvoidStairs")}];
  }

  if ([*(a1 + 32) hasMapSettingsWalkingAvoidBusyRoads])
  {
    [*(a1 + 40) setWalkingAvoidBusyRoads:{objc_msgSend(*(a1 + 32), "mapSettingsWalkingAvoidBusyRoads")}];
  }

  if ([*(a1 + 32) hasMapSettingsDirectionsWakeDevice])
  {
    [*(a1 + 40) setDirectionsWakeDevice:{objc_msgSend(*(a1 + 32), "mapSettingsDirectionsWakeDevice")}];
  }

  if ([*(a1 + 32) hasMapSettingsFamiliarRoutes])
  {
    [*(a1 + 40) setFamiliarRoutes:{objc_msgSend(*(a1 + 32), "mapSettingsFamiliarRoutes")}];
  }

  if ([*(a1 + 32) hasMapSettingsVisitedPlaces])
  {
    [*(a1 + 40) setVisitedPlaces:{objc_msgSend(*(a1 + 32), "mapSettingsVisitedPlaces")}];
  }

  if ([*(a1 + 32) hasMapSettingsReportingIncidentsEnabled])
  {
    [*(a1 + 40) setReportingIncidentsEnabled:{objc_msgSend(*(a1 + 32), "mapSettingsReportingIncidentsEnabled")}];
  }

  return 0;
}

- (void)populateRatingPhotoSubmissionDetailsWithEntryPoint:(int)a3 originTarget:(id)a4
{
  v6 = MEMORY[0x1E69A2008];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  [v8 setOriginTarget:v7];

  switch(a3)
  {
    case 2:
      [v8 setIsPlacecardInlineSubmission:1];
      break;
    case 1:
      [v8 setIsFromMapsSuggesions:1];
      break;
    case 0:
      [v8 setIsFromRecommendationCard:1];
      break;
  }

  ratingPhotoSubmissionStateIso = self->_ratingPhotoSubmissionStateIso;
  v10 = v8;
  geo_isolate_sync();
}

- (void)populateRatingSubmissionDetailsWithEntryPoint:(int)a3 originTarget:(id)a4 specifierBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E69A2010]);
  [v10 setOriginTarget:v8];
  switch(a3)
  {
    case 2:
      [v10 setIsPlacecardInlineSubmission:1];
      break;
    case 1:
      [v10 setIsFromMapsSuggesions:1];
      break;
    case 0:
      [v10 setIsFromRecommendationCard:1];
      break;
  }

  v11 = v9[2];
  v18 = 0;
  v17 = 0;
  v12 = v11(v9, &v17, &v18);
  v13 = v17;
  if (v12)
  {
    do
    {
      v14 = objc_alloc_init(MEMORY[0x1E69A1B18]);
      [v14 setRating:v18];
      [v14 setDisplayedText:v13];
      [v10 addRatings:v14];

      v18 = 0;
      v17 = 0;
      LOBYTE(v14) = (v9[2])(v9, &v17, &v18);
      v13 = v17;
    }

    while ((v14 & 1) != 0);
  }

  ratingSubmissionStateIso = self->_ratingSubmissionStateIso;
  v16 = v10;
  geo_isolate_sync();
}

- (void)populateActionButtonDetails:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69A2020]);
  while (1)
  {
    v19 = 0;
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v6 = v4[2](v4, &v17, &v16, &v19, &v18);
    v7 = v17;
    v8 = v16;
    v9 = v8;
    if (!v6)
    {
      break;
    }

    v10 = objc_alloc_init(MEMORY[0x1E69A1B28]);
    v11 = [v7 copy];
    [v10 setCategory:v11];

    v12 = [v9 copy];
    [v10 setProviderId:v12];

    if (v19 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (v19 == 2);
    }

    [v10 setLinkType:v13];
    [v10 setDropDown:v18];
    [v5 addActionButtonDetails:v10];
  }

  actionButtonDetailsStateIso = self->_actionButtonDetailsStateIso;
  v15 = v5;
  geo_isolate_sync();
}

void __114__GEOAPSharedStateData_populateTapEventForResultIndex_resultType_businessId_localSearchProviderId_isEnrichedItem___block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(MEMORY[0x1E69A2150]);
  v2 = objc_alloc_init(MEMORY[0x1E69A2578]);
  [v2 setResultIndex:*(a1 + 48)];
  [v2 setBusinessId:*(a1 + 40)];
  [v2 setLocalSearchProviderId:*(a1 + 52)];
  [v2 setIsEnrichedItem:*(a1 + 60)];
  v3 = *(a1 + 56);
  if (v3 - 1 >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  [v2 setResultType:v4];
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:v2];
  [v6 setSearchResults:v5];

  [*(a1 + 32) setTapEventState:v6];
}

- (void)populateTapEventForPinType:(int)a3 tapEventSpecifierBlock:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69A2150]);
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v8 = v6[2];
    v13 = 0;
    if (v8(v6, &v17, &v14, &v15, &v16, &v13))
    {
      do
      {
        v9 = objc_alloc_init(MEMORY[0x1E69A2578]);
        [v9 setResultIndex:v17];
        [v9 setBusinessId:v15];
        [v9 setLocalSearchProviderId:v16];
        [v9 setIsEnrichedItem:v13];
        if (v14 - 1 >= 3)
        {
          v10 = 0;
        }

        else
        {
          v10 = v14;
        }

        [v9 setResultType:v10];
        [v7 addSearchResults:v9];

        v17 = 0;
        v16 = 0;
        v15 = 0;
        v14 = 0;
        v13 = 0;
      }

      while (((v6[2])(v6, &v17, &v14, &v15, &v16, &v13) & 1) != 0);
    }

    if ((a3 - 1) <= 3)
    {
      [v7 setPinType:?];
    }

    tapEventStateIso = self->_tapEventStateIso;
    v12 = v7;
    geo_isolate_sync();
  }
}

- (void)populateImpressionObjectId:(id)a3
{
  v12 = 0;
  v13 = 0;
  [a3 getUUIDBytes:&v12];
  v4 = objc_alloc_init(MEMORY[0x1E69A2078]);
  v5 = objc_alloc_init(MEMORY[0x1E69A1E10]);
  [v4 setImpressionObjectId:v5];

  v6 = v12;
  v7 = [v4 impressionObjectId];
  [v7 setHigh:v6];

  v8 = v13;
  v9 = [v4 impressionObjectId];
  [v9 setLow:v8];

  impressionObjectStateIso = self->_impressionObjectStateIso;
  v11 = v4;
  geo_isolate_sync();
}

- (void)populateSearchResultsForQuery:(id)a3 searchResultSpecifierBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69A2138]);
    v9 = [v6 copy];
    [v8 setSearchQuery:v9];

    v19 = 0;
    v20 = 0;
    v10 = v7[2];
    v18 = 0;
    LOBYTE(v11) = 0;
    if (v10(v7, &v20 + 4, &v18, &v19, &v20))
    {
      v11 = 0;
      do
      {
        v12 = objc_alloc_init(MEMORY[0x1E69A2578]);
        [v12 setResultIndex:HIDWORD(v20)];
        [v12 setBusinessId:v19];
        [v12 setLocalSearchProviderId:v20];
        v13 = v18 - 2;
        if (v18 == 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v11;
        }

        if (v13 >= 2)
        {
          v15 = v18 == 1;
        }

        else
        {
          v15 = v18;
        }

        if (v13 >= 2)
        {
          v11 = v14;
        }

        [v12 setResultType:v15];
        [v8 addSearchResults:v12];

        v19 = 0;
        v20 = 0;
        v18 = 0;
      }

      while (((v7[2])(v7, &v20 + 4, &v18, &v19, &v20) & 1) != 0);
    }

    [v8 setIncludesEnrichedResult:v11 & 1];
    searchResultsStateIso = self->_searchResultsStateIso;
    v17 = v8;
    geo_isolate_sync();
  }
}

- (void)periodicSettingsHandler
{
  v3 = objc_alloc_init(MEMORY[0x1E69A1F58]);
  v4 = [(GEOAPSharedStateData *)self stateMapSettings];
  [v3 setMapSettings:v4];

  v5 = [(GEOAPSharedStateData *)self stateMapUIShown];
  [v3 setMapUiShown:v5];

  v6 = [(GEOAPSharedStateData *)self stateMapsFeatures];
  [v3 setMapsFeatures:v6];

  v7 = [(GEOAPSharedStateData *)self stateMapsUserSettings];
  [v3 setMapsUserSettings:v7];

  v8 = [(GEOAPSharedStateData *)self stateRoutingSettings];
  [v3 setRoutingSettings:v8];

  v9 = +[GEOAPStateFactory sharedFactory];
  v10 = [v9 stateForType:37];
  v11 = [v10 deviceSettings];
  [v3 setDeviceSettings:v11];

  v12 = [v3 data];

  v14 = [objc_alloc(MEMORY[0x1E69A1F58]) initWithData:v12];
  v13 = +[GEOAPServiceManager sharedManager];
  [v13 reportDailySettings:v14];
}

- (void)performRoutingSettingsStateOperation:(id)a3
{
  v4 = a3;
  routingSettingsIso = self->_routingSettingsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__GEOAPSharedStateData_performRoutingSettingsStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:routingSettingsIso updateBlock:v7];
}

uint64_t __61__GEOAPSharedStateData_performRoutingSettingsStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (void)performMapUserSettingsStateOperation:(id)a3
{
  v4 = a3;
  mapUserSettingsIso = self->_mapUserSettingsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__GEOAPSharedStateData_performMapUserSettingsStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:mapUserSettingsIso updateBlock:v7];
}

uint64_t __61__GEOAPSharedStateData_performMapUserSettingsStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (void)performMapFeaturesStateOperation:(id)a3
{
  v4 = a3;
  mapFeaturesIso = self->_mapFeaturesIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__GEOAPSharedStateData_performMapFeaturesStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:mapFeaturesIso updateBlock:v7];
}

uint64_t __57__GEOAPSharedStateData_performMapFeaturesStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (void)setMapFeatureFavoritesCount:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setMapFeatureFavoritesCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  v4 = a3;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __52__GEOAPSharedStateData_setMapFeatureFavoritesCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureFavoritesCount_, v1);
  return 1;
}

- (void)setMapFeatureLibraryFavoritesGuideSavedPlacesCount:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__GEOAPSharedStateData_setMapFeatureLibraryFavoritesGuideSavedPlacesCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  v4 = a3;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __75__GEOAPSharedStateData_setMapFeatureLibraryFavoritesGuideSavedPlacesCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureLibraryFavoritesGuideSavedPlacesCount_, v1);
  return 1;
}

- (void)setMapFeatureLibraryGuidesSavedPlacesCount:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__GEOAPSharedStateData_setMapFeatureLibraryGuidesSavedPlacesCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  v4 = a3;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __67__GEOAPSharedStateData_setMapFeatureLibraryGuidesSavedPlacesCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureLibraryGuidesSavedPlacesCount_, v1);
  return 1;
}

- (void)setMapFeatureLibraryPlacesWithNoteCount:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__GEOAPSharedStateData_setMapFeatureLibraryPlacesWithNoteCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  v4 = a3;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __64__GEOAPSharedStateData_setMapFeatureLibraryPlacesWithNoteCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureLibraryPlacesWithNoteCount_, v1);
  return 1;
}

- (void)setMapFeatureLibrarySavedPlacesCount:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__GEOAPSharedStateData_setMapFeatureLibrarySavedPlacesCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  v4 = a3;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __61__GEOAPSharedStateData_setMapFeatureLibrarySavedPlacesCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureLibrarySavedPlacesCount_, v1);
  return 1;
}

- (void)setMapFeatureLicensePlateCount:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__GEOAPSharedStateData_setMapFeatureLicensePlateCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  v4 = a3;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __55__GEOAPSharedStateData_setMapFeatureLicensePlateCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureLicensePlateCount_, v1);
  return 1;
}

- (void)setMapFeatureElectronicVehicleCount:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__GEOAPSharedStateData_setMapFeatureElectronicVehicleCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  v4 = a3;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __60__GEOAPSharedStateData_setMapFeatureElectronicVehicleCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureElectronicVehicleCount_, v1);
  return 1;
}

- (void)setMapFeatureSubmittedPhotosCount:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__GEOAPSharedStateData_setMapFeatureSubmittedPhotosCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  v4 = a3;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __58__GEOAPSharedStateData_setMapFeatureSubmittedPhotosCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureSubmittedPhotosCount_, v1);
  return 1;
}

- (void)setMapFeatureSubmittedRatingsCount:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__GEOAPSharedStateData_setMapFeatureSubmittedRatingsCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  v4 = a3;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __59__GEOAPSharedStateData_setMapFeatureSubmittedRatingsCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureSubmittedRatingsCount_, v1);
  return 1;
}

- (void)setMapFeatureSavedCollectionsCount:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__GEOAPSharedStateData_setMapFeatureSavedCollectionsCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  v4 = a3;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __59__GEOAPSharedStateData_setMapFeatureSavedCollectionsCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeatureSavedCollectionsCount_, v1);
  return 1;
}

- (void)setMapFeaturePersonalCollectionsCount:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__GEOAPSharedStateData_setMapFeaturePersonalCollectionsCount___block_invoke;
  v3[3] = &unk_1E79594F0;
  v4 = a3;
  v3[4] = self;
  [(GEOAPSharedStateData *)self performMapFeaturesStateOperation:v3];
}

uint64_t __62__GEOAPSharedStateData_setMapFeaturePersonalCollectionsCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_setMapFeaturePersonalCollectionsCount_, v1);
  return 1;
}

- (void)setHasMapSettingsVisitedPlaces:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__GEOAPSharedStateData_setHasMapSettingsVisitedPlaces___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __55__GEOAPSharedStateData_setHasMapSettingsVisitedPlaces___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsVisitedPlaces];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsVisitedPlaces_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsVisitedPlaces:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setMapSettingsVisitedPlaces___block_invoke;
  v3[3] = &unk_1E79594F0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __52__GEOAPSharedStateData_setMapSettingsVisitedPlaces___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsVisitedPlaces])
  {
    v2 = [*(a1 + 32) mapSettingsVisitedPlaces];
    v3 = *(a1 + 40);
    if (v2 == v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsVisitedPlaces_, v3);
  return 1;
}

- (void)setHasMapSettingsFamiliarRoutes:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setHasMapSettingsFamiliarRoutes___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __56__GEOAPSharedStateData_setHasMapSettingsFamiliarRoutes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsFamiliarRoutes];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsFamiliarRoutes_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsFamiliarRoutes:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setMapSettingsFamiliarRoutes___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __53__GEOAPSharedStateData_setMapSettingsFamiliarRoutes___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsFamiliarRoutes])
  {
    v2 = [*(a1 + 32) mapSettingsFamiliarRoutes];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsFamiliarRoutes_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsDirectionsWakeDevice:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__GEOAPSharedStateData_setHasMapSettingsDirectionsWakeDevice___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __62__GEOAPSharedStateData_setHasMapSettingsDirectionsWakeDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsDirectionsWakeDevice];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsDirectionsWakeDevice_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsDirectionsWakeDevice:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__GEOAPSharedStateData_setMapSettingsDirectionsWakeDevice___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __59__GEOAPSharedStateData_setMapSettingsDirectionsWakeDevice___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsDirectionsWakeDevice])
  {
    v2 = [*(a1 + 32) mapSettingsDirectionsWakeDevice];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsDirectionsWakeDevice_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsWalkingAvoidBusyRoads:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidBusyRoads___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __63__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidBusyRoads___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsWalkingAvoidBusyRoads];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsWalkingAvoidBusyRoads_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsWalkingAvoidBusyRoads:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__GEOAPSharedStateData_setMapSettingsWalkingAvoidBusyRoads___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __60__GEOAPSharedStateData_setMapSettingsWalkingAvoidBusyRoads___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsWalkingAvoidBusyRoads])
  {
    v2 = [*(a1 + 32) mapSettingsWalkingAvoidBusyRoads];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsWalkingAvoidBusyRoads_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsWalkingAvoidStairs:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidStairs___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __60__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidStairs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsWalkingAvoidStairs];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsWalkingAvoidStairs_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsWalkingAvoidStairs:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__GEOAPSharedStateData_setMapSettingsWalkingAvoidStairs___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __57__GEOAPSharedStateData_setMapSettingsWalkingAvoidStairs___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsWalkingAvoidStairs])
  {
    v2 = [*(a1 + 32) mapSettingsWalkingAvoidStairs];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsWalkingAvoidStairs_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsWalkingAvoidHills:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidHills___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __59__GEOAPSharedStateData_setHasMapSettingsWalkingAvoidHills___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsWalkingAvoidHills];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsWalkingAvoidHills_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsWalkingAvoidHills:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setMapSettingsWalkingAvoidHills___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __56__GEOAPSharedStateData_setMapSettingsWalkingAvoidHills___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsWalkingAvoidHills])
  {
    v2 = [*(a1 + 32) mapSettingsWalkingAvoidHills];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsWalkingAvoidHills_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsEBike:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__GEOAPSharedStateData_setHasMapSettingsEBike___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __47__GEOAPSharedStateData_setHasMapSettingsEBike___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsEBike];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsEBike_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsEBike:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__GEOAPSharedStateData_setMapSettingsEBike___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __44__GEOAPSharedStateData_setMapSettingsEBike___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsEBike])
  {
    v2 = [*(a1 + 32) mapSettingsEBike];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsEBike_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsLocationPrecisionType:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__GEOAPSharedStateData_setHasMapSettingsLocationPrecisionType___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __63__GEOAPSharedStateData_setHasMapSettingsLocationPrecisionType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsLocationPrecisionType];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsLocationPrecisionType_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsLocationPrecisionType:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__GEOAPSharedStateData_setMapSettingsLocationPrecisionType___block_invoke;
  v3[3] = &unk_1E79594F0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __60__GEOAPSharedStateData_setMapSettingsLocationPrecisionType___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsLocationPrecisionType])
  {
    v2 = [*(a1 + 32) mapSettingsLocationPrecisionType];
    v3 = *(a1 + 40);
    if (v2 == v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsLocationPrecisionType_, v3);
  return 1;
}

- (void)setHasMapSettingsAvoidBusyRoads:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setHasMapSettingsAvoidBusyRoads___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __56__GEOAPSharedStateData_setHasMapSettingsAvoidBusyRoads___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsAvoidBusyRoads];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsAvoidBusyRoads_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsAvoidBusyRoads:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setMapSettingsAvoidBusyRoads___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __53__GEOAPSharedStateData_setMapSettingsAvoidBusyRoads___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsAvoidBusyRoads])
  {
    v2 = [*(a1 + 32) mapSettingsAvoidBusyRoads];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsAvoidBusyRoads_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsAvoidStairs:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setHasMapSettingsAvoidStairs___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __53__GEOAPSharedStateData_setHasMapSettingsAvoidStairs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsAvoidStairs];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsAvoidStairs_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsAvoidStairs:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__GEOAPSharedStateData_setMapSettingsAvoidStairs___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __50__GEOAPSharedStateData_setMapSettingsAvoidStairs___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsAvoidStairs])
  {
    v2 = [*(a1 + 32) mapSettingsAvoidStairs];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsAvoidStairs_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsAvoidHills:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setHasMapSettingsAvoidHills___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __52__GEOAPSharedStateData_setHasMapSettingsAvoidHills___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsAvoidHills];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsAvoidHills_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsAvoidHills:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__GEOAPSharedStateData_setMapSettingsAvoidHills___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __49__GEOAPSharedStateData_setMapSettingsAvoidHills___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsAvoidHills])
  {
    v2 = [*(a1 + 32) mapSettingsAvoidHills];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsAvoidHills_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsTrafficEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setHasMapSettingsTrafficEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __56__GEOAPSharedStateData_setHasMapSettingsTrafficEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsTrafficEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsTrafficEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsTrafficEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setMapSettingsTrafficEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __53__GEOAPSharedStateData_setMapSettingsTrafficEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsTrafficEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsTrafficEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsTrafficEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsSpeedLimitEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__GEOAPSharedStateData_setHasMapSettingsSpeedLimitEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __59__GEOAPSharedStateData_setHasMapSettingsSpeedLimitEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsSpeedLimitEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsSpeedLimitEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsSpeedLimitEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setMapSettingsSpeedLimitEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __56__GEOAPSharedStateData_setMapSettingsSpeedLimitEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsSpeedLimitEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsSpeedLimitEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsSpeedLimitEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsPauseSpokenAudioEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__GEOAPSharedStateData_setHasMapSettingsPauseSpokenAudioEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __65__GEOAPSharedStateData_setHasMapSettingsPauseSpokenAudioEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsPauseSpokenAudioEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsPauseSpokenAudioEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsPauseSpokenAudioEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__GEOAPSharedStateData_setMapSettingsPauseSpokenAudioEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __62__GEOAPSharedStateData_setMapSettingsPauseSpokenAudioEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsPauseSpokenAudioEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsPauseSpokenAudioEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsPauseSpokenAudioEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsLabelEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__GEOAPSharedStateData_setHasMapSettingsLabelEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __54__GEOAPSharedStateData_setHasMapSettingsLabelEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsLabelEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsLabelEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsLabelEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__GEOAPSharedStateData_setMapSettingsLabelEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __51__GEOAPSharedStateData_setMapSettingsLabelEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsLabelEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsLabelEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsLabelEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsHeadingEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_setHasMapSettingsHeadingEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __56__GEOAPSharedStateData_setHasMapSettingsHeadingEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsHeadingEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsHeadingEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsHeadingEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setMapSettingsHeadingEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __53__GEOAPSharedStateData_setMapSettingsHeadingEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsHeadingEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsHeadingEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsHeadingEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsFindMyCarEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__GEOAPSharedStateData_setHasMapSettingsFindMyCarEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __58__GEOAPSharedStateData_setHasMapSettingsFindMyCarEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsFindMyCarEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsFindMyCarEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsFindMyCarEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__GEOAPSharedStateData_setMapSettingsFindMyCarEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __55__GEOAPSharedStateData_setMapSettingsFindMyCarEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsFindMyCarEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsFindMyCarEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsFindMyCarEnabled_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsAvoidTolls:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setHasMapSettingsAvoidTolls___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __52__GEOAPSharedStateData_setHasMapSettingsAvoidTolls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsAvoidTolls];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsAvoidTolls_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsAvoidTolls:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__GEOAPSharedStateData_setMapSettingsAvoidTolls___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __49__GEOAPSharedStateData_setMapSettingsAvoidTolls___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsAvoidTolls])
  {
    v2 = [*(a1 + 32) mapSettingsAvoidTolls];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsAvoidTolls_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsAvoidHighways:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__GEOAPSharedStateData_setHasMapSettingsAvoidHighways___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __55__GEOAPSharedStateData_setHasMapSettingsAvoidHighways___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsAvoidHighways];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsAvoidHighways_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsAvoidHighways:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setMapSettingsAvoidHighways___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __52__GEOAPSharedStateData_setMapSettingsAvoidHighways___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsAvoidHighways])
  {
    v2 = [*(a1 + 32) mapSettingsAvoidHighways];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsAvoidHighways_, v3 & 1);
  return 1;
}

- (void)setHasMapSettingsTransportMode:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__GEOAPSharedStateData_setHasMapSettingsTransportMode___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __55__GEOAPSharedStateData_setHasMapSettingsTransportMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsTransportMode];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsTransportMode_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsTransportMode:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__GEOAPSharedStateData_setMapSettingsTransportMode___block_invoke;
  v3[3] = &unk_1E79594F0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __52__GEOAPSharedStateData_setMapSettingsTransportMode___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsTransportMode])
  {
    v2 = [*(a1 + 32) mapSettingsTransportMode];
    v3 = *(a1 + 40);
    if (v2 == v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsTransportMode_, v3);
  return 1;
}

- (void)setHasMapSettingsNavVolume:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__GEOAPSharedStateData_setHasMapSettingsNavVolume___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __51__GEOAPSharedStateData_setHasMapSettingsNavVolume___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsNavVolume];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsNavVolume_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsNavVolume:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__GEOAPSharedStateData_setMapSettingsNavVolume___block_invoke;
  v3[3] = &unk_1E79594F0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __48__GEOAPSharedStateData_setMapSettingsNavVolume___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsNavVolume])
  {
    v2 = [*(a1 + 32) mapSettingsNavVolume];
    v3 = *(a1 + 40);
    if (v2 == v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsNavVolume_, v3);
  return 1;
}

uint64_t __66__GEOAPSharedStateData_setNavVoiceGuidanceLevel_forTransportMode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  switch(v1)
  {
    case 5:
      objc_msgSendSuper2(&v3, sel_setMapSettingsCyclingVoiceSettings_, *(a1 + 44), *(a1 + 32), GEOAPSharedStateData, v4.receiver, v4.super_class, v5.receiver, v5.super_class);
      break;
    case 2:
      objc_msgSendSuper2(&v4, sel_setMapSettingsWalkingVoiceSettings_, *(a1 + 44), v3.receiver, v3.super_class, *(a1 + 32), GEOAPSharedStateData, v5.receiver, v5.super_class);
      break;
    case 1:
      objc_msgSendSuper2(&v5, sel_setMapSettingsDrivingVoiceSettings_, *(a1 + 44), v3.receiver, v3.super_class, v4.receiver, v4.super_class, *(a1 + 32), GEOAPSharedStateData);
      break;
  }

  return 1;
}

- (void)setHasMapSettingsReportingIncidentsEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__GEOAPSharedStateData_setHasMapSettingsReportingIncidentsEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

BOOL __67__GEOAPSharedStateData_setHasMapSettingsReportingIncidentsEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapSettingsReportingIncidentsEnabled];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapSettingsReportingIncidentsEnabled_, v3);
  }

  return v3 != v2;
}

- (void)setMapSettingsReportingIncidentsEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__GEOAPSharedStateData_setMapSettingsReportingIncidentsEnabled___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapSettingsStateOperation:v3];
}

uint64_t __64__GEOAPSharedStateData_setMapSettingsReportingIncidentsEnabled___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapSettingsReportingIncidentsEnabled])
  {
    v2 = [*(a1 + 32) mapSettingsReportingIncidentsEnabled];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapSettingsReportingIncidentsEnabled_, v3 & 1);
  return 1;
}

- (void)performMapSettingsStateOperation:(id)a3
{
  v4 = a3;
  mapSettingsIso = self->_mapSettingsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__GEOAPSharedStateData_performMapSettingsStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:mapSettingsIso updateBlock:v7];
}

uint64_t __57__GEOAPSharedStateData_performMapSettingsStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (void)setHasMapUiShownActiveNavMode:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__GEOAPSharedStateData_setHasMapUiShownActiveNavMode___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

BOOL __54__GEOAPSharedStateData_setHasMapUiShownActiveNavMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapUiShownActiveNavMode];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapUiShownActiveNavMode_, v3);
  }

  return v3 != v2;
}

- (void)setMapUiShownActiveNavMode:(int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__GEOAPSharedStateData_setMapUiShownActiveNavMode___block_invoke;
  v3[3] = &unk_1E79594F0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

uint64_t __51__GEOAPSharedStateData_setMapUiShownActiveNavMode___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapUiShownActiveNavMode])
  {
    v2 = [*(a1 + 32) mapUiShownActiveNavMode];
    v3 = *(a1 + 40);
    if (v2 == v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapUiShownActiveNavMode_, v3);
  return 1;
}

- (void)setHasMapUiShownWeatherShown:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__GEOAPSharedStateData_setHasMapUiShownWeatherShown___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

BOOL __53__GEOAPSharedStateData_setHasMapUiShownWeatherShown___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapUiShownWeatherShown];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapUiShownWeatherShown_, v3);
  }

  return v3 != v2;
}

- (void)setMapUiShownWeatherShown:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__GEOAPSharedStateData_setMapUiShownWeatherShown___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

uint64_t __50__GEOAPSharedStateData_setMapUiShownWeatherShown___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapUiShownWeatherShown])
  {
    v2 = [*(a1 + 32) mapUiShownWeatherShown];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapUiShownWeatherShown_, v3 & 1);
  return 1;
}

- (void)setHasMapUiShownAqiShown:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__GEOAPSharedStateData_setHasMapUiShownAqiShown___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

BOOL __49__GEOAPSharedStateData_setHasMapUiShownAqiShown___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasMapUiShownAqiShown];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5.receiver = *(a1 + 32);
    v5.super_class = GEOAPSharedStateData;
    objc_msgSendSuper2(&v5, sel_setHasMapUiShownAqiShown_, v3);
  }

  return v3 != v2;
}

- (void)setMapUiShownAqiShown:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__GEOAPSharedStateData_setMapUiShownAqiShown___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self performMapUIShownStateOperation:v3];
}

uint64_t __46__GEOAPSharedStateData_setMapUiShownAqiShown___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapUiShownAqiShown])
  {
    v2 = [*(a1 + 32) mapUiShownAqiShown];
    v3 = *(a1 + 40);
    if (v3 == v2)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v3) = *(a1 + 40);
  }

  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setMapUiShownAqiShown_, v3 & 1);
  return 1;
}

- (void)performMapUIShownStateOperation:(id)a3
{
  v4 = a3;
  mapUIShownIso = self->_mapUIShownIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__GEOAPSharedStateData_performMapUIShownStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:mapUIShownIso updateBlock:v7];
}

uint64_t __56__GEOAPSharedStateData_performMapUIShownStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (void)setUserProfileAvailableActions:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__GEOAPSharedStateData_setUserProfileAvailableActions___block_invoke;
  v6[3] = &unk_1E79594C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(GEOAPSharedStateData *)self _performUserProfileStateOperation:v6];
}

uint64_t __55__GEOAPSharedStateData_setUserProfileAvailableActions___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) hasAccount] & 1) == 0)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69A2018]);
    [*(a1 + 32) setAccount:v2];
  }

  v3 = [*(a1 + 32) account];
  [v3 clearPossibleActions];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [*(a1 + 32) account];
        [v10 addPossibleAction:{objc_msgSend(v9, "intValue")}];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)setUserProfileUserIsLoggedIntoICloud:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__GEOAPSharedStateData_setUserProfileUserIsLoggedIntoICloud___block_invoke;
  v3[3] = &unk_1E79594A0;
  v3[4] = self;
  v4 = a3;
  [(GEOAPSharedStateData *)self _performUserProfileStateOperation:v3];
}

uint64_t __61__GEOAPSharedStateData_setUserProfileUserIsLoggedIntoICloud___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) hasAccount])
  {
    v2 = objc_alloc_init(MEMORY[0x1E69A2018]);
    [*(a1 + 32) setAccount:v2];
    goto LABEL_6;
  }

  v2 = [*(a1 + 32) account];
  if (![v2 hasSignedIntoIcloud])
  {
LABEL_6:

    goto LABEL_7;
  }

  v3 = [*(a1 + 32) account];
  v4 = [v3 signedIntoIcloud];
  v5 = *(a1 + 40);

  if (v5 == v4)
  {
    return 0;
  }

LABEL_7:
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) account];
  [v8 setSignedIntoIcloud:v7];

  return 1;
}

- (void)_performUserProfileStateOperation:(id)a3
{
  v4 = a3;
  userProfileIso = self->_userProfileIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__GEOAPSharedStateData__performUserProfileStateOperation___block_invoke;
  v7[3] = &unk_1E7959478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:userProfileIso updateBlock:v7];
}

uint64_t __58__GEOAPSharedStateData__performUserProfileStateOperation___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _resetTaskTimer];
  }

  return result;
}

- (int)_geoTransportModeForAPTransportMode:(int)a3
{
  if ((a3 - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int)_geoVoiceGuidanceLevelFromAPVoiceGuidanceLevel:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int)navVoiceVolumeAsGEONavVoiceVolume
{
  result = [(GEOAnalyticsPipelineStateData *)self hasMapSettingsNavVolume];
  if (result)
  {
    result = [(GEOAnalyticsPipelineStateData *)self mapSettingsNavVolume];
    if ((result - 1) >= 4)
    {
      return 0;
    }
  }

  return result;
}

- (int)moduleButtonTypeAsGEOModuleButtonType:(int64_t)a3
{
  if (a3 <= 8)
  {
    if (a3 == 8)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    if (a3 == 7)
    {
      v5 = 7;
    }

    else
    {
      v5 = v13;
    }

    if (a3 == 6)
    {
      v14 = 6;
    }

    else
    {
      v14 = 0;
    }

    if (a3 == 5)
    {
      v15 = 5;
    }

    else
    {
      v15 = v14;
    }

    if (a3 <= 6)
    {
      v5 = v15;
    }

    if (a3 == 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    if (a3 == 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = v16;
    }

    if (a3 == 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    if (a3 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    if (a3 <= 2)
    {
      v9 = v18;
    }

    v12 = a3 <= 4;
  }

  else
  {
    if (a3 == 56)
    {
      v3 = 56;
    }

    else
    {
      v3 = 0;
    }

    if (a3 == 55)
    {
      v4 = 55;
    }

    else
    {
      v4 = v3;
    }

    if (a3 == 54)
    {
      v5 = 54;
    }

    else
    {
      v5 = v4;
    }

    if (a3 == 53)
    {
      v6 = 53;
    }

    else
    {
      v6 = 0;
    }

    if (a3 == 52)
    {
      v7 = 52;
    }

    else
    {
      v7 = v6;
    }

    if (a3 <= 53)
    {
      v5 = v7;
    }

    if (a3 == 51)
    {
      v8 = 51;
    }

    else
    {
      v8 = 0;
    }

    if (a3 == 50)
    {
      v9 = 50;
    }

    else
    {
      v9 = v8;
    }

    if (a3 == 10)
    {
      v10 = 10;
    }

    else
    {
      v10 = 0;
    }

    if (a3 == 9)
    {
      v11 = 9;
    }

    else
    {
      v11 = v10;
    }

    if (a3 <= 49)
    {
      v9 = v11;
    }

    v12 = a3 <= 51;
  }

  if (v12)
  {
    return v9;
  }

  else
  {
    return v5;
  }
}

- (int)moduleButtonLinkTypeAsGEOActionButtonLinkType:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)addPlaceCardModulesForRevealAction:(id)a3
{
  v4 = a3;
  placeIso = self->_placeIso;
  v7 = v4;
  v6 = v4;
  geo_reentrant_isolate_sync();
}

void __59__GEOAPSharedStateData_addPlaceCardModulesForRevealAction___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) placeCardRevealedPlaceCardModules];
  [v2 removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [*(a1 + 32) placeCardRevealedPlaceCardModules];
        v10 = [v8 copy];
        [v9 addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)clearSuggestionsDisplayedResults
{
  suggestionsIso = self->_suggestionsIso;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__GEOAPSharedStateData_clearSuggestionsDisplayedResults__block_invoke;
  v3[3] = &unk_1E7959610;
  v3[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v3];
}

uint64_t __56__GEOAPSharedStateData_clearSuggestionsDisplayedResults__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_clearSuggestionsDisplayedResults);
  return [*(*(a1 + 32) + 904) clearDisplayedResults];
}

- (void)setSuggestionsDisplayedResults:(id)a3
{
  v4 = a3;
  suggestionsIso = self->_suggestionsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__GEOAPSharedStateData_setSuggestionsDisplayedResults___block_invoke;
  v7[3] = &unk_1E7959400;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v7];
}

void __55__GEOAPSharedStateData_setSuggestionsDisplayedResults___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) copy];
  v7.receiver = v2;
  v7.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v7, sel_setSuggestionsDisplayedResults_, v3);

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 904);
  v6 = [v4 copy];
  [v5 setDisplayedResults:v6];
}

- (void)addSuggestionsDisplayedResults:(id)a3
{
  v4 = a3;
  suggestionsIso = self->_suggestionsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__GEOAPSharedStateData_addSuggestionsDisplayedResults___block_invoke;
  v7[3] = &unk_1E7959400;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v7];
}

uint64_t __55__GEOAPSharedStateData_addSuggestionsDisplayedResults___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_addSuggestionsDisplayedResults_, v2);
  return [*(*(a1 + 40) + 904) addDisplayedResult:*(a1 + 32)];
}

- (void)setHasSuggestionsAcSequenceNumber:(BOOL)a3
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__GEOAPSharedStateData_setHasSuggestionsAcSequenceNumber___block_invoke;
  v4[3] = &unk_1E7959450;
  v5 = a3;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __58__GEOAPSharedStateData_setHasSuggestionsAcSequenceNumber___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setHasSuggestionsAcSequenceNumber_, v2);
  return [*(*(a1 + 32) + 904) setHasAcSequenceNumber:*(a1 + 40)];
}

- (void)setSuggestionsAcSequenceNumber:(int)a3
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__GEOAPSharedStateData_setSuggestionsAcSequenceNumber___block_invoke;
  v4[3] = &unk_1E7959428;
  v5 = a3;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __55__GEOAPSharedStateData_setSuggestionsAcSequenceNumber___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setSuggestionsAcSequenceNumber_, v2);
  return [*(*(a1 + 32) + 904) setAcSequenceNumber:*(a1 + 40)];
}

- (void)setHasSuggestionsSearchFieldType:(BOOL)a3
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__GEOAPSharedStateData_setHasSuggestionsSearchFieldType___block_invoke;
  v4[3] = &unk_1E7959450;
  v5 = a3;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __57__GEOAPSharedStateData_setHasSuggestionsSearchFieldType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setHasSuggestionsSearchFieldType_, v2);
  return [*(*(a1 + 32) + 904) setHasSearchFieldType:*(a1 + 40)];
}

- (void)setSuggestionsSearchFieldType:(int)a3
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__GEOAPSharedStateData_setSuggestionsSearchFieldType___block_invoke;
  v4[3] = &unk_1E7959428;
  v5 = a3;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __54__GEOAPSharedStateData_setSuggestionsSearchFieldType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setSuggestionsSearchFieldType_, v2);
  return [*(*(a1 + 32) + 904) setSearchFieldType:*(a1 + 40)];
}

- (void)setHasSuggestionsSelectedIndex:(BOOL)a3
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__GEOAPSharedStateData_setHasSuggestionsSelectedIndex___block_invoke;
  v4[3] = &unk_1E7959450;
  v5 = a3;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __55__GEOAPSharedStateData_setHasSuggestionsSelectedIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setHasSuggestionsSelectedIndex_, v2);
  return [*(*(a1 + 32) + 904) setHasSelectedIndex:*(a1 + 40)];
}

- (void)setSuggestionsSelectedIndex:(int)a3
{
  suggestionsIso = self->_suggestionsIso;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__GEOAPSharedStateData_setSuggestionsSelectedIndex___block_invoke;
  v4[3] = &unk_1E7959428;
  v5 = a3;
  v4[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v4];
}

uint64_t __52__GEOAPSharedStateData_setSuggestionsSelectedIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setSuggestionsSelectedIndex_, v2);
  return [*(*(a1 + 32) + 904) setSelectedIndex:*(a1 + 40)];
}

- (void)setSuggestionsSearchString:(id)a3
{
  v4 = a3;
  suggestionsIso = self->_suggestionsIso;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__GEOAPSharedStateData_setSuggestionsSearchString___block_invoke;
  v7[3] = &unk_1E7959400;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v7];
}

uint64_t __51__GEOAPSharedStateData_setSuggestionsSearchString___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setSuggestionsSearchString_, v2);
  return [*(*(a1 + 40) + 904) setSearchString:*(a1 + 32)];
}

- (void)clearSuggestionsData
{
  suggestionsIso = self->_suggestionsIso;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__GEOAPSharedStateData_clearSuggestionsData__block_invoke;
  v3[3] = &unk_1E7959610;
  v3[4] = self;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v3];
}

uint64_t __44__GEOAPSharedStateData_clearSuggestionsData__block_invoke(uint64_t a1)
{
  v7.receiver = *(a1 + 32);
  v7.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v7, sel_setSuggestionsSearchString_, 0);
  v6.receiver = *(a1 + 32);
  v6.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v6, sel_setHasSuggestionsSelectedIndex_, 0);
  v5.receiver = *(a1 + 32);
  v5.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v5, sel_setHasSuggestionsSearchFieldType_, 0);
  v4.receiver = *(a1 + 32);
  v4.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v4, sel_setHasSuggestionsAcSequenceNumber_, 0);
  v3.receiver = *(a1 + 32);
  v3.super_class = GEOAPSharedStateData;
  objc_msgSendSuper2(&v3, sel_clearSuggestionsDisplayedResults);
  [*(*(a1 + 32) + 904) setSearchString:0];
  [*(*(a1 + 32) + 904) setHasSelectedIndex:0];
  [*(*(a1 + 32) + 904) setHasSearchFieldType:0];
  [*(*(a1 + 32) + 904) setHasAcSequenceNumber:0];
  return [*(*(a1 + 32) + 904) clearDisplayedResults];
}

- (id)suggestionsState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3158;
  v10 = __Block_byref_object_dispose__3159;
  v11 = 0;
  suggestionsIso = self->_suggestionsIso;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__GEOAPSharedStateData_suggestionsState__block_invoke;
  v5[3] = &unk_1E7959568;
  v5[4] = self;
  v5[5] = &v6;
  [(GEOAPSharedStateData *)self _performSyncStateUpdateWithIsolator:suggestionsIso updateBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__GEOAPSharedStateData_suggestionsState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _hasSuggestionsData];
  if (result)
  {
    v3 = [*(*(a1 + 32) + 904) copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (BOOL)_hasSuggestionsData
{
  suggestionsIso = self->_suggestionsIso;
  geo_assert_isolated();
  v11.receiver = self;
  v11.super_class = GEOAPSharedStateData;
  if ([(GEOAnalyticsPipelineStateData *)&v11 hasSuggestionsSearchString])
  {
    return 1;
  }

  v10.receiver = self;
  v10.super_class = GEOAPSharedStateData;
  if ([(GEOAnalyticsPipelineStateData *)&v10 hasSuggestionsSelectedIndex])
  {
    return 1;
  }

  v9.receiver = self;
  v9.super_class = GEOAPSharedStateData;
  if ([(GEOAnalyticsPipelineStateData *)&v9 hasSuggestionsSearchFieldType])
  {
    return 1;
  }

  v8.receiver = self;
  v8.super_class = GEOAPSharedStateData;
  if ([(GEOAnalyticsPipelineStateData *)&v8 hasSuggestionsAcSequenceNumber])
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = GEOAPSharedStateData;
  v6 = [(GEOAnalyticsPipelineStateData *)&v7 suggestionsDisplayedResults];
  v4 = [v6 count] != 0;

  return v4;
}

- (void)populateWithChildPlace:(id)a3 timestamp:(double)a4 resultIndex:(int)a5
{
  v6 = a3;
  placeIso = self->_placeIso;
  v9 = v6;
  v8 = v6;
  geo_reentrant_isolate_sync();
}

void __69__GEOAPSharedStateData_populateWithChildPlace_timestamp_resultIndex___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setPlaceCardState:0];
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = [MEMORY[0x1E69A2350] actionDetailsWithChildPlace:v2 timestamp:*(a1 + 56) resultIndex:*(a1 + 48)];
  [*(a1 + 40) populateWithPlaceActionDetails:v3];
}

- (void)populateWithPlace:(id)a3 timestamp:(double)a4 resultIndex:(int)a5
{
  v6 = a3;
  placeIso = self->_placeIso;
  v9 = v6;
  v8 = v6;
  geo_reentrant_isolate_sync();
}

void __64__GEOAPSharedStateData_populateWithPlace_timestamp_resultIndex___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setPlaceCardState:0];
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = [MEMORY[0x1E69A2350] actionDetailsWithMapItem:v2 timestamp:*(a1 + 56) resultIndex:*(a1 + 48)];
  [*(a1 + 40) populateWithPlaceActionDetails:v3];
}

- (void)_populateWithGEOTransitDepartureSequenceUsage:(id)a3
{
  v9 = a3;
  placeIso = self->_placeIso;
  geo_assert_reentrant_isolated();
  if ([v9 hasLineId])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageLineId:](self, "setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageLineId:", [v9 lineId]);
  }

  if ([v9 hasHeadsign])
  {
    v5 = [v9 headsign];
    v6 = [v5 copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageHeadsign:v6];
  }

  if ([v9 hasDirection])
  {
    v7 = [v9 direction];
    v8 = [v7 copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageDirection:v8];
  }
}

- (void)_populateWithGEOTransitPlaceCard:(id)a3
{
  v10 = a3;
  placeIso = self->_placeIso;
  geo_assert_reentrant_isolated();
  if ([v10 hasIncidentType])
  {
    v5 = [v10 incidentType];
    v6 = [v5 copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsTransitPlaceCardIncidentType:v6];
  }

  if ([v10 hasTransitCategory])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsTransitPlaceCardTransitCategory:](self, "setPlaceCardPlaceActionDetailsTransitPlaceCardTransitCategory:", [v10 transitCategory]);
  }

  if ([v10 hasTransitSystemName])
  {
    v7 = [v10 transitSystemName];
    v8 = [v7 copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsTransitPlaceCardTransitSystemName:v8];
  }

  if ([v10 hasTransitDepartureSequenceUsage])
  {
    v9 = [v10 transitDepartureSequenceUsage];
    [(GEOAPSharedStateData *)self _populateWithGEOTransitDepartureSequenceUsage:v9];
  }
}

- (void)populateWithPlaceActionDetails:(id)a3
{
  v15 = a3;
  placeIso = self->_placeIso;
  geo_assert_reentrant_isolated();
  if ([v15 hasPhotoId])
  {
    v5 = [v15 photoId];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsPhotoId:v5];
  }

  if ([v15 hasPlaceID])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsPlaceId:](self, "setPlaceCardPlaceActionDetailsPlaceId:", [v15 placeID]);
  }

  if ([v15 hasTargetID])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsTargetId:](self, "setPlaceCardPlaceActionDetailsTargetId:", [v15 targetID]);
  }

  if ([v15 hasActionUrl])
  {
    v6 = [v15 actionUrl];
    v7 = [v6 copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsActionUrl:v7];
  }

  if ([v15 hasBusinessID])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsBusinessId:](self, "setPlaceCardPlaceActionDetailsBusinessId:", [v15 businessID]);
  }

  if ([v15 hasAnimationID])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsAnimationId:](self, "setPlaceCardPlaceActionDetailsAnimationId:", [v15 animationID]);
  }

  if ([v15 hasResultIndex])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsResultIndex:](self, "setPlaceCardPlaceActionDetailsResultIndex:", [v15 resultIndex]);
  }

  if ([v15 hasDestinationApp])
  {
    v8 = [v15 destinationApp];
    v9 = [v8 copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsDestinationApp:v9];
  }

  if ([v15 hasRichProviderId])
  {
    v10 = [v15 richProviderId];
    v11 = [v10 copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsRichProviderId:v11];
  }

  if ([v15 hasSearchResponseRelativeTimestamp])
  {
    [v15 searchResponseRelativeTimestamp];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsSearchResponseRelativeTimestamp:?];
  }

  if ([v15 hasLocalSearchProviderID])
  {
    -[GEOAnalyticsPipelineStateData setPlaceCardPlaceActionDetailsLocalSearchProviderId:](self, "setPlaceCardPlaceActionDetailsLocalSearchProviderId:", [v15 localSearchProviderID]);
  }

  if ([v15 hasTransitPlaceCard])
  {
    v12 = [v15 transitPlaceCard];
    [(GEOAPSharedStateData *)self _populateWithGEOTransitPlaceCard:v12];
  }

  if ([v15 hasShowcaseId])
  {
    v13 = [v15 showcaseId];
    v14 = [v13 copy];
    [(GEOAnalyticsPipelineStateData *)self setPlaceCardPlaceActionDetailsShowcaseId:v14];
  }
}

uint64_t __47__GEOAPSharedStateData_clearPlaceCardStateData__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPlaceCardState:0];
  [*(a1 + 32) clearPlaceCardPossibleActions];
  [*(a1 + 32) clearPlaceCardUnactionableUiElements];
  [*(a1 + 32) setHasPlaceCardPlaceCardType:0];
  [*(a1 + 32) setPlaceCardPlaceCardCategory:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsAnimationId:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsBusinessId:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsDestinationApp:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsPhotoId:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsPlaceId:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsRichProviderId:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsSearchResponseRelativeTimestamp:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsTargetId:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsLocalSearchProviderId:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsResultIndex:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsTransitPlaceCardIncidentType:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsTransitPlaceCardTransitSystemName:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsTransitPlaceCardTransitCategory:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageDirection:0];
  [*(a1 + 32) setHasPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageLineId:0];
  [*(a1 + 32) setPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageHeadsign:0];
  [*(a1 + 32) setPlaceCardIsPersonPlacecard:0];
  [*(a1 + 32) setPlaceCardIsPersonAddressAvailable:0];
  v2 = *(a1 + 32);

  return [v2 setPlaceCardIsPersonLocationShared:0];
}

- (void)_performSyncStateUpdateWithIsolator:(id)a3 updateBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  geo_assert_not_isolated();
  geo_isolate_sync();
}

- (void)setCarPlayInfo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E69A15D8];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1AB634000, v6, OS_LOG_TYPE_DEBUG, "setting carplay info : %@", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = GEOAPSharedStateData;
  [(GEOAnalyticsPipelineStateData *)&v12 setCarPlayInfo:v4];
  if (self->_isMapsApp)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1AB634000, v7, OS_LOG_TYPE_DEBUG, "Maps.app set carplay info : %@", buf, 0xCu);
    }

    v8 = +[GEOAPStateFactory sharedFactory];
    v9 = [v8 stateForType:5];

    v10 = +[GEOAPServiceManager sharedManager];
    [v10 updateSharedStateType:404 state:v9];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleTaskTimer
{
  [(GEOAPSharedStateData *)self periodicSettingsHandler];

  [(GEOAPSharedStateData *)self _stopTaskTimer];
}

void __28__GEOAPSharedStateData_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTaskTimer];
}

@end