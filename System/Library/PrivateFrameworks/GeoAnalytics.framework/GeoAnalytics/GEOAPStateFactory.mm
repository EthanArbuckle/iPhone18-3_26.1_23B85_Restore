@interface GEOAPStateFactory
+ (id)sharedFactory;
+ (int64_t)pipelineStateTypeForPipelineStateName:(id)a3;
- (GEOAPStateFactory)init;
- (double)_monthResolution:(double)a3;
- (id)_emptyUserSessionState;
- (id)applicationIdentifier;
- (id)carPlayLimited;
- (id)curatedCollectionRedacted;
- (id)deviceConnectionLimited;
- (id)deviceIdentifier;
- (id)deviceLocaleLimited;
- (id)deviceSettings_Min;
- (id)experimentsIncludingClientConfig:(uint64_t)a1;
- (id)impressionObject;
- (id)mapSettingsDetailed;
- (id)mapUIShown;
- (id)mapsPlaceIds;
- (id)mapsServerStateWithCategoryMetadataDisplayed:(id)a3 categoryMetadataSelected:(id)a4;
- (id)mapsServerStateWithDisplayedData:(id)a3 selectedData:(id)a4;
- (id)mapsServerStateWithMapsServerMetadata:(id)a3;
- (id)placeCard;
- (id)placeCardRap;
- (id)placeCardReveal;
- (id)placeCardStateWithPlaceActionDetails:(id)a3;
- (id)routeStateWithRouteDetails:(id)a3;
- (id)searchResults;
- (id)stateForType:(int64_t)a3;
- (id)ugcStateWithPhotoSources:(id)a3;
- (int)_launchActionFromAPLaunchAction:(int)a3;
- (int)_privacyAllowedActionFromActualAction:(int)a3;
- (int)_rapPlaceCardTypeForRawType:(int)a3;
- (int)logMsgStateTypeForType:(int64_t)a3;
- (void)_updateOfflineVersionInfo;
- (void)dealloc;
- (void)deviceCountryChanged:(id)a3;
- (void)sessionStateForType:(int)a3 callback:(id)a4;
- (void)sessionStateForType:(int)a3 sessionAppId:(id)a4 onQueue:(id)a5 callback:(id)a6;
@end

@implementation GEOAPStateFactory

+ (id)sharedFactory
{
  if (sharedFactory_onceToken != -1)
  {
    dispatch_once(&sharedFactory_onceToken, &__block_literal_global);
  }

  v3 = sharedFactory_sharedInstance;

  return v3;
}

uint64_t __34__GEOAPStateFactory_sharedFactory__block_invoke()
{
  sharedFactory_sharedInstance = objc_alloc_init(GEOAPStateFactory);

  return MEMORY[0x1EEE66BB8]();
}

- (GEOAPStateFactory)init
{
  v15.receiver = self;
  v15.super_class = GEOAPStateFactory;
  v2 = [(GEOAPStateFactory *)&v15 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v3;

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel_deviceCountryChanged_ name:*MEMORY[0x1E69A1620] object:0];

    v6 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    v7 = [v6 countryCode];
    countryCode = v2->_countryCode;
    v2->_countryCode = v7;

    offlineSearchODSVersion = v2->_offlineSearchODSVersion;
    v2->_offlineSearchODSVersion = 0;

    offlineDirectionsODSVersion = v2->_offlineDirectionsODSVersion;
    v2->_offlineDirectionsODSVersion = 0;

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [v11 initWithUTF8String:*MEMORY[0x1E69A16A0]];
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v2 selector:sel_offlineDataActiceVersionChanged_ name:v12 object:0];

    [(GEOAPStateFactory *)v2 _updateOfflineVersionInfo];
  }

  return v2;
}

- (void)_updateOfflineVersionInfo
{
  v3 = [MEMORY[0x1E69A22E0] sharedInstance];
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__GEOAPStateFactory__updateOfflineVersionInfo__block_invoke;
  v5[3] = &unk_1E7953830;
  v5[4] = self;
  [v3 getOfflineVersionMetadataWithCallbackQueue:isolationQueue callback:v5];
}

- (id)applicationIdentifier
{
  if (a1)
  {
    if (applicationIdentifier_onceToken != -1)
    {
      dispatch_once(&applicationIdentifier_onceToken, &__block_literal_global_25);
    }

    a1 = applicationIdentifier_state;
    v1 = vars8;
  }

  return a1;
}

uint64_t __46__GEOAPStateFactory__updateOfflineVersionInfo__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__GEOAPStateFactory__updateOfflineVersionInfo__block_invoke_2;
  v3[3] = &unk_1E7953808;
  v3[4] = *(a1 + 32);
  return [a2 enumerateLayerVersions:v3];
}

void __29__GEOAPStateFactory_mapsUser__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)deviceIdentifier
{
  if (a1)
  {
    if (deviceIdentifier_onceToken != -1)
    {
      dispatch_once(&deviceIdentifier_onceToken, &__block_literal_global_20);
    }

    a1 = deviceIdentifier_state;
    v1 = vars8;
  }

  return a1;
}

- (id)_emptyUserSessionState
{
  if (a1)
  {
    v1 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
    [v1 setStateType:601];
    v2 = objc_alloc_init(MEMORY[0x1E69A2178]);
    [v1 setUserSession:v2];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)carPlayLimited
{
  if (a1)
  {
    v1 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
    [v1 setStateType:404];
    v2 = objc_alloc_init(MEMORY[0x1E69A2030]);
    [v1 setCarPlay:v2];

    v3 = +[GEOAPSharedStateData sharedData];
    v4 = [v3 hasCarPlayInfo];
    v5 = [v1 carPlay];
    [v5 setIsConnected:v4];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)deviceSettings_Min
{
  if (a1)
  {
    v1 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
    [v1 setStateType:407];
    v2 = objc_alloc_init(MEMORY[0x1E69A2058]);
    [v1 setDeviceSettings:v2];

    v3 = [MEMORY[0x1E69A2398] sharedPlatform];
    v4 = [v3 supportsAdvancedMap];
    v5 = [v1 deviceSettings];
    [v5 setSupportsAdvancedMap:v4];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)deviceConnectionLimited
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
    [v2 setStateType:403];
    v3 = objc_alloc_init(MEMORY[0x1E69A2040]);
    [v2 setDeviceConnection:v3];

    v4 = [a1 countryCode];
    v5 = [v2 deviceConnection];
    [v5 setDeviceCountryCode:v4];

    v6 = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
    if ([v6 isNetworkReachable])
    {
      if ([v6 isWiFiConnection])
      {
        v7 = [v2 deviceConnection];
        v8 = v7;
        v9 = 3;
      }

      else
      {
        v11 = [v6 isCellConnection];
        v7 = [v2 deviceConnection];
        v8 = v7;
        if (v11)
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v7 = [v2 deviceConnection];
      v8 = v7;
      v9 = 1;
    }

    [v7 setDeviceNetworkConnectivity:v9];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)deviceLocaleLimited
{
  if (a1)
  {
    v1 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
    [v1 setStateType:402];
    v2 = objc_alloc_init(MEMORY[0x1E69A2050]);
    [v1 setDeviceLocale:v2];

    v3 = [MEMORY[0x1E695DF58] preferredLanguages];
    v4 = [v3 firstObject];
    v5 = [v1 deviceLocale];
    [v5 setDeviceSettingsLocale:v4];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)mapUIShown
{
  v2 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v2 setStateType:506];
  v3 = objc_alloc_init(MEMORY[0x1E69A20A8]);
  [v2 setMapUiShown:v3];

  v4 = +[GEOAPSharedStateData sharedData];
  v5 = [v4 mapUiShownAqiShown];
  v6 = [v2 mapUiShown];
  [v6 setIsAirQualityShown:v5];

  v7 = [v4 mapUiShownWeatherShown];
  v8 = [v2 mapUiShown];
  [v8 setIsWeatherShown:v7];

  v9 = [v4 venueExperienceShown];
  v10 = [v2 mapUiShown];
  [v10 setIsVenueExperienceShown:v9];

  v11 = [v4 activeNavModeAsGEOTransportType];
  v12 = [v2 mapUiShown];
  [v12 setActiveNavMode:v11];

  if ([v4 hasLookAroundEntryIconShown])
  {
    v13 = [v4 lookAroundEntryIconShown];
    v14 = [v2 mapUiShown];
    [v14 setIsLookAroundEntryIconShown:v13];
  }

  return v2;
}

void __28__GEOAPStateFactory_mapView__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapViewMapType])
  {
    v2 = [*(a1 + 32) mapViewMapType];
    v3 = [*(a1 + 40) mapView];
    [v3 setMapType:v2];
  }

  if ([*(a1 + 32) hasMapViewViewMode])
  {
    v4 = [*(a1 + 32) mapViewViewMode];
    v5 = [*(a1 + 40) mapView];
    [v5 setViewMode:v4];
  }

  if ([*(a1 + 32) hasMapViewZoomLevel])
  {
    [*(a1 + 32) mapViewZoomLevel];
    v7 = v6;
    v8 = [*(a1 + 40) mapView];
    [v8 setZoomLevel:v7];
  }

  if ([*(a1 + 32) hasMapViewStyleZoomLevel])
  {
    [*(a1 + 32) mapViewStyleZoomLevel];
    v10 = v9;
    v11 = [*(a1 + 40) mapView];
    [v11 setStyleZoomLevel:v10];
  }

  if ([*(a1 + 32) hasMapViewIsAdvancedMap])
  {
    v12 = [*(a1 + 32) mapViewIsAdvancedMap];
    v13 = [*(a1 + 40) mapView];
    [v13 setIsAdvancedMap:v12];
  }

  if ([*(a1 + 32) hasMapViewIsGlobeProjection])
  {
    v14 = [*(a1 + 32) mapViewIsGlobeProjection];
    v15 = [*(a1 + 40) mapView];
    [v15 setIsGlobeProjection:v14];
  }

  v16 = [*(a1 + 32) mapViewMapRegion];
  v17 = [*(a1 + 40) mapView];
  [v17 setMapRegion:v16];

  if ([*(a1 + 32) hasMapViewPitch])
  {
    [*(a1 + 32) mapViewPitch];
    v19 = v18;
    v20 = [*(a1 + 40) mapView];
    [v20 setPitch:v19];
  }
}

void __36__GEOAPStateFactory_mapViewLocation__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasMapViewLocationPuckInViewport])
  {
    v2 = [*(a1 + 32) mapViewLocationPuckInViewport];
    v3 = [*(a1 + 40) mapViewLocation];
    [v3 setIsCurrentLocationInViewport:v2];
  }

  if ([*(a1 + 32) hasMapViewLocationIsTourist])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A2630]);
    v5 = [*(a1 + 40) mapViewLocation];
    [v5 setTouristInfo:v4];

    v6 = [*(a1 + 32) mapViewLocationIsTourist];
    v8 = [*(a1 + 40) mapViewLocation];
    v7 = [v8 touristInfo];
    [v7 setIsTourist:v6];
  }
}

- (id)placeCard
{
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = 0;
    v1 = +[GEOAPSharedStateData sharedData];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __30__GEOAPStateFactory_placeCard__block_invoke;
    v5[3] = &unk_1E7959568;
    v2 = v1;
    v6 = v2;
    v7 = &v8;
    [v2 performPlaceCardStateUpdate:v5];
    v3 = v9[5];

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __30__GEOAPStateFactory_placeCard__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) hasPlaceCardStateData] & 1) == 0 && !objc_msgSend(*(a1 + 32), "hasPlaceCardState"))
  {
    return;
  }

  v2 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v2 setStateType:702];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if ([*(a1 + 32) hasPlaceCardState])
  {
    v105 = [*(a1 + 32) placeCardState];
    v5 = [v105 copy];
    [*(*(*(a1 + 40) + 8) + 40) setPlaceCard:v5];

LABEL_68:

    return;
  }

  v6 = objc_alloc_init(MEMORY[0x1E69A2108]);
  [*(*(*(a1 + 40) + 8) + 40) setPlaceCard:v6];

  if ([*(a1 + 32) placeCardPossibleActionsCount] && objc_msgSend(*(a1 + 32), "placeCardPossibleActionsCount"))
  {
    v7 = 0;
    do
    {
      v8 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      [v8 addPossibleAction:{*(objc_msgSend(*(a1 + 32), "placeCardPossibleActions") + 4 * v7)}];

      ++v7;
    }

    while (v7 < [*(a1 + 32) placeCardPossibleActionsCount]);
  }

  if ([*(a1 + 32) placeCardUnactionableUiElementsCount] && objc_msgSend(*(a1 + 32), "placeCardUnactionableUiElementsCount"))
  {
    v9 = 0;
    do
    {
      v10 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      [v10 addUnactionableUiElement:{*(objc_msgSend(*(a1 + 32), "placeCardUnactionableUiElements") + 4 * v9)}];

      ++v9;
    }

    while (v9 < [*(a1 + 32) placeCardUnactionableUiElementsCount]);
  }

  if ([*(a1 + 32) hasPlaceCardPlaceCardType])
  {
    v11 = [*(a1 + 32) placeCardPlaceCardType];
    v12 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    [v12 setPlacecardType:v11];
  }

  if ([*(a1 + 32) hasPlaceCardPlaceCardCategory])
  {
    v13 = [*(a1 + 32) placeCardPlaceCardCategory];
    v14 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    [v14 setPlacecardCategory:v13];
  }

  if ([*(a1 + 32) hasPlaceCardTransitAdvisoryBanner])
  {
    v15 = [*(a1 + 32) placeCardTransitAdvisoryBanner];
    v16 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    [v16 setTransitAdvisoryBanner:v15];
  }

  if ([*(a1 + 32) hasPlaceCard_PlaceActionDetails])
  {
    v17 = objc_alloc_init(MEMORY[0x1E69A2350]);
    v18 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    [v18 setPlaceActionDetails:v17];

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsActionUrl])
    {
      v19 = [*(a1 + 32) placeCardPlaceActionDetailsActionUrl];
      v20 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v21 = [v20 placeActionDetails];
      [v21 setActionUrl:v19];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsAnimationId])
    {
      v22 = [*(a1 + 32) placeCardPlaceActionDetailsAnimationId];
      v23 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v24 = [v23 placeActionDetails];
      [v24 setAnimationID:v22];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsBusinessId])
    {
      v25 = [*(a1 + 32) placeCardPlaceActionDetailsBusinessId];
      v26 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v27 = [v26 placeActionDetails];
      [v27 setBusinessID:v25];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsDestinationApp])
    {
      v28 = [*(a1 + 32) placeCardPlaceActionDetailsDestinationApp];
      v29 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v30 = [v29 placeActionDetails];
      [v30 setDestinationApp:v28];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsPhotoId])
    {
      v31 = [*(a1 + 32) placeCardPlaceActionDetailsPhotoId];
      v32 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v33 = [v32 placeActionDetails];
      [v33 setPhotoId:v31];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsPlaceId])
    {
      v34 = [*(a1 + 32) placeCardPlaceActionDetailsPlaceId];
      v35 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v36 = [v35 placeActionDetails];
      [v36 setPlaceID:v34];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsRichProviderId])
    {
      v37 = [*(a1 + 32) placeCardPlaceActionDetailsRichProviderId];
      v38 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v39 = [v38 placeActionDetails];
      [v39 setRichProviderId:v37];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsSearchResponseRelativeTimestamp])
    {
      [*(a1 + 32) placeCardPlaceActionDetailsSearchResponseRelativeTimestamp];
      v41 = v40;
      v42 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v43 = [v42 placeActionDetails];
      [v43 setSearchResponseRelativeTimestamp:v41];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsTargetId])
    {
      v44 = [*(a1 + 32) placeCardPlaceActionDetailsTargetId];
      v45 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v46 = [v45 placeActionDetails];
      [v46 setTargetID:v44];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsLocalSearchProviderId])
    {
      v47 = [*(a1 + 32) placeCardPlaceActionDetailsLocalSearchProviderId];
      v48 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v49 = [v48 placeActionDetails];
      [v49 setLocalSearchProviderID:v47];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsResultIndex])
    {
      v50 = [*(a1 + 32) placeCardPlaceActionDetailsResultIndex];
      v51 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v52 = [v51 placeActionDetails];
      [v52 setResultIndex:v50];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsShowcaseId])
    {
      v53 = [*(a1 + 32) placeCardPlaceActionDetailsShowcaseId];
      v54 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v55 = [v54 placeActionDetails];
      [v55 setShowcaseId:v53];
    }
  }

  if ([*(a1 + 32) hasPlaceCard_PlaceActionDetails_TransitPlaceCard])
  {
    v56 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    v57 = [v56 placeActionDetails];

    if (!v57)
    {
      v58 = objc_alloc_init(MEMORY[0x1E69A2350]);
      v59 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      [v59 setPlaceActionDetails:v58];
    }

    v60 = objc_alloc_init(MEMORY[0x1E69A2670]);
    v61 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    v62 = [v61 placeActionDetails];
    [v62 setTransitPlaceCard:v60];

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsTransitPlaceCardIncidentType])
    {
      v63 = [*(a1 + 32) placeCardPlaceActionDetailsTransitPlaceCardIncidentType];
      v64 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v65 = [v64 placeActionDetails];
      v66 = [v65 transitPlaceCard];
      [v66 setIncidentType:v63];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitSystemName])
    {
      v67 = [*(a1 + 32) placeCardPlaceActionDetailsTransitPlaceCardTransitSystemName];
      v68 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v69 = [v68 placeActionDetails];
      v70 = [v69 transitPlaceCard];
      [v70 setTransitSystemName:v67];
    }
  }

  if ([*(a1 + 32) hasPlaceCard_PlaceActionDetails_TransitPlaceCard_TransitDepartureSequence])
  {
    v71 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    v72 = [v71 placeActionDetails];

    if (!v72)
    {
      v73 = objc_alloc_init(MEMORY[0x1E69A2350]);
      v74 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      [v74 setPlaceActionDetails:v73];
    }

    v75 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    v76 = [v75 placeActionDetails];
    v77 = [v76 transitPlaceCard];

    if (!v77)
    {
      v78 = objc_alloc_init(MEMORY[0x1E69A2670]);
      v79 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v80 = [v79 placeActionDetails];
      [v80 setTransitPlaceCard:v78];
    }

    v81 = objc_alloc_init(MEMORY[0x1E69A2658]);
    v82 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    v83 = [v82 placeActionDetails];
    v84 = [v83 transitPlaceCard];
    [v84 setTransitDepartureSequenceUsage:v81];

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageLineId])
    {
      v85 = [*(a1 + 32) placeCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageLineId];
      v86 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v87 = [v86 placeActionDetails];
      v88 = [v87 transitPlaceCard];
      v89 = [v88 transitDepartureSequenceUsage];
      [v89 setLineId:v85];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageHeadsign])
    {
      v90 = [*(a1 + 32) placeCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageHeadsign];
      v91 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v92 = [v91 placeActionDetails];
      v93 = [v92 transitPlaceCard];
      v94 = [v93 transitDepartureSequenceUsage];
      [v94 setHeadsign:v90];
    }

    if ([*(a1 + 32) hasPlaceCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageDirection])
    {
      v95 = [*(a1 + 32) placeCardPlaceActionDetailsTransitPlaceCardTransitDepartureSequenceUsageDirection];
      v96 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
      v97 = [v96 placeActionDetails];
      v98 = [v97 transitPlaceCard];
      v99 = [v98 transitDepartureSequenceUsage];
      [v99 setDirection:v95];
    }
  }

  if ([*(a1 + 32) hasPlaceCardIsPersonPlacecard])
  {
    v100 = [*(a1 + 32) placeCardIsPersonPlacecard];
    v101 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    [v101 setIsPersonPlacecard:v100];
  }

  if ([*(a1 + 32) hasPlaceCardIsPersonAddressAvailable])
  {
    v102 = [*(a1 + 32) placeCardIsPersonAddressAvailable];
    v103 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    [v103 setIsPersonAddressAvailable:v102];
  }

  if ([*(a1 + 32) hasPlaceCardIsPersonLocationShared])
  {
    v104 = [*(a1 + 32) placeCardIsPersonLocationShared];
    v105 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    [v105 setIsPersonLocationShared:v104];
    goto LABEL_68;
  }
}

- (void)deviceCountryChanged:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A1628]];
  if (v4)
  {
    [(GEOAPStateFactory *)self setCountryCode:v4];
  }
}

- (void)sessionStateForType:(int)a3 sessionAppId:(id)a4 onQueue:(id)a5 callback:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(GEOAPStateFactory *)self _emptyUserSessionState];
  if ((a3 - 3) > 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&dword_1AB634000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: __objc_no", v15, 2u);
    }
  }

  else
  {
    v14 = [MEMORY[0x1E69A2710] sharedInstance];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__GEOAPStateFactory_sessionStateForType_sessionAppId_onQueue_callback___block_invoke;
    v16[3] = &unk_1E7953970;
    v17 = v13;
    v18 = v12;
    [v14 longSessionValuesForAppId:v10 completionQueue:v11 completion:v16];
  }
}

uint64_t __71__GEOAPStateFactory_sessionStateForType_sessionAppId_onQueue_callback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v13 = [*(a1 + 32) userSession];
  [v13 setSessionId:{a2, a3}];

  v14 = [objc_alloc(MEMORY[0x1E69A1E58]) initWithCFAbsoluteTime:a4];
  v15 = [*(a1 + 32) userSession];
  [v15 setEventTime:v14];

  v16 = [*(a1 + 32) userSession];
  [v16 setRelativeTimestamp:floor(a6 / 300.0) * 300.0];

  v17 = [*(a1 + 32) userSession];
  [v17 setAgeOfSessionIdInSeconds:floor(a7)];

  v18 = *(a1 + 32);
  v19 = *(*(a1 + 40) + 16);

  return v19();
}

- (void)sessionStateForType:(int)a3 callback:(id)a4
{
  v6 = a4;
  v7 = [(GEOAPStateFactory *)self _emptyUserSessionState];
  v8 = 0;
  v9 = 0;
  v23 = 0;
  v24 = &v23;
  v19 = 0;
  v20 = &v19;
  v25 = 0x2020000000;
  v26 = 0;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = 0;
  v11 = v7;
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
    case 4:
    case 7:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 16:
    case 17:
    case 19:
      goto LABEL_8;
    case 2:
      v12 = [MEMORY[0x1E69A2710] sharedInstance];
      v13 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __50__GEOAPStateFactory_sessionStateForType_callback___block_invoke_4;
      v15[3] = &unk_1E7953920;
      v15[4] = v7;
      v15[5] = &v23;
      [v12 fifteenMonthDeviceSessionValues:v15];
      goto LABEL_7;
    case 5:
      v12 = [MEMORY[0x1E69A2710] sharedInstance];
      v13 = v18;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __50__GEOAPStateFactory_sessionStateForType_callback___block_invoke;
      v18[3] = &unk_1E79538A8;
      v18[4] = v7;
      v18[5] = &v23;
      [v12 shortSessionValues:v18];
      goto LABEL_7;
    case 6:
    case 15:
      v12 = [MEMORY[0x1E69A2710] sharedInstance];
      v13 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __50__GEOAPStateFactory_sessionStateForType_callback___block_invoke_2;
      v17[3] = &unk_1E79538D0;
      v17[4] = v7;
      v17[5] = &v23;
      [v12 shortAndNavSessionValues:v17];
      goto LABEL_7;
    case 8:
    case 14:
      v12 = [MEMORY[0x1E69A2430] sharedManager];
      v13 = v16;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __50__GEOAPStateFactory_sessionStateForType_callback___block_invoke_3;
      v16[3] = &unk_1E79538F8;
      v16[4] = v7;
      [v12 referenceTimeResult:v16];
      goto LABEL_7;
    case 20:
      v12 = [MEMORY[0x1E69A2710] sharedInstance];
      v13 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __50__GEOAPStateFactory_sessionStateForType_callback___block_invoke_5;
      v14[3] = &unk_1E7953948;
      v14[4] = v7;
      v14[5] = &v23;
      v14[6] = &v19;
      [v12 locIntelSessionValues:v14];
LABEL_7:

      v11 = v13[4];
      v10 = v7;
LABEL_8:

      v8 = *(v24 + 6);
      v9 = v20[3];
      v7 = v10;
      break;
    default:
      break;
  }

  v6[2](v6, v7, v8, v9);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void __50__GEOAPStateFactory_sessionStateForType_callback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = [*(a1 + 32) userSession];
  [v16 setSessionId:{a2, a3}];

  v17 = [*(a1 + 32) userSession];
  [v17 setRelativeTimestamp:a7];

  v18 = [*(a1 + 32) userSession];
  [v18 setSequenceNumber:a4];

  v19 = [objc_alloc(MEMORY[0x1E69A1E58]) initWithCFAbsoluteTime:a5];
  v20 = [*(a1 + 32) userSession];
  [v20 setEventTime:v19];

  v21 = [*(a1 + 32) userSession];
  [v21 setSessionCreateHour:a8];

  *(*(*(a1 + 40) + 8) + 24) = a6;
}

void __50__GEOAPStateFactory_sessionStateForType_callback___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11)
{
  v22 = [*(a1 + 32) userSession];
  [v22 setSessionId:{a2, a3}];

  v23 = [*(a1 + 32) userSession];
  [v23 setRelativeTimestamp:a9];

  v24 = [*(a1 + 32) userSession];
  [v24 setSequenceNumber:a4];

  if (a10 != 0.0)
  {
    v25 = [*(a1 + 32) userSession];
    [v25 setNavSessionId:{a5, a6}];

    v26 = [*(a1 + 32) userSession];
    [v26 setNavSessionRelativeTimestamp:a10];
  }

  v27 = [objc_alloc(MEMORY[0x1E69A1E58]) initWithCFAbsoluteTime:a7];
  v28 = [*(a1 + 32) userSession];
  [v28 setEventTime:v27];

  v29 = [*(a1 + 32) userSession];
  [v29 setSessionCreateHour:a11];

  *(*(*(a1 + 40) + 8) + 24) = a8;
}

void __50__GEOAPStateFactory_sessionStateForType_callback___block_invoke_3(uint64_t a1, double a2)
{
  v4 = [objc_alloc(MEMORY[0x1E69A1E58]) initWithCFAbsoluteTime:a2];
  v3 = [*(a1 + 32) userSession];
  [v3 setEventTime:v4];
}

void __50__GEOAPStateFactory_sessionStateForType_callback___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8)
{
  v16 = [*(a1 + 32) userSession];
  [v16 setSessionId:{a3, a4}];

  v17 = [*(a1 + 32) userSession];
  [v17 setSessionEpoch:a2];

  v18 = [*(a1 + 32) userSession];
  [v18 setRelativeTimestamp:a8];

  v19 = [objc_alloc(MEMORY[0x1E69A1E58]) initWithCFAbsoluteTime:a6];
  v20 = [*(a1 + 32) userSession];
  [v20 setEventTime:v19];

  v21 = [*(a1 + 32) userSession];
  [v21 setHasRotated:a5];

  *(*(*(a1 + 40) + 8) + 24) = a7;
}

void __50__GEOAPStateFactory_sessionStateForType_callback___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8)
{
  v16 = [MEMORY[0x1E69A2398] sharedPlatform];
  v17 = [v16 isInternalInstall];

  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E69A1E58]) initWithCFAbsoluteTime:a6];
    v19 = [*(a1 + 32) userSession];
    [v19 setEventTime:v18];
  }

  v20 = [*(a1 + 32) userSession];
  [v20 setRelativeTimestamp:a8];

  v21 = [*(a1 + 32) userSession];
  [v21 setSessionId:{a2, a3}];

  v22 = [*(a1 + 32) userSession];
  [v22 setSequenceNumber:a4];

  *(*(*(a1 + 40) + 8) + 24) = a7;
  *(*(*(a1 + 48) + 8) + 24) = a5;
}

- (id)stateForType:(int64_t)a3
{
  v3 = 0;
  v196 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 1:
      v5 = [(GEOAPStateFactory *)self deviceIdentifier];
      goto LABEL_163;
    case 2:
      goto LABEL_162;
    case 3:
      if (!self)
      {
        goto LABEL_217;
      }

      v3 = [(GEOAPStateFactory *)self deviceLocaleLimited];
      v57 = +[GEOAPSharedStateData sharedData];
      v58 = [v57 deviceInputLocale];
      v59 = [v3 deviceLocale];
      [v59 setDeviceInputLocale:v58];

      v6 = +[GEOAPSharedStateData sharedData];
      v7 = [v6 deviceOutputLocale];
      v9 = [v3 deviceLocale];
      [v9 setDeviceOutputLocale:v7];
      goto LABEL_153;
    case 4:
      v5 = [(GEOAPStateFactory *)self deviceLocaleLimited];
      goto LABEL_163;
    case 5:
      if (!self)
      {
        goto LABEL_217;
      }

      v3 = [(GEOAPStateFactory *)self carPlayLimited];
      v6 = +[GEOAPSharedStateData sharedData];
      v7 = [v6 carPlayInfo];
      v9 = [v3 carPlay];
      [v9 setCarInfo:v7];
      goto LABEL_153;
    case 6:
      v5 = [(GEOAPStateFactory *)self carPlayLimited];
      goto LABEL_163;
    case 7:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEONanoInfo sharedInfo];
      v94 = [v6 hasPairedDeviceIfAvailable];
      v7 = v94;
      if (!v94 || ![v94 BOOLValue])
      {
        goto LABEL_149;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:405];
      v95 = objc_alloc_init(MEMORY[0x1E69A2100]);
      [v3 setPairedDevice:v95];

      v96 = [v3 pairedDevice];
      [v96 setType:1];

      v97 = objc_alloc_init(MEMORY[0x1E69A2048]);
      v98 = [v3 pairedDevice];
      [v98 setPairedDeviceIdentifier:v97];

      v99 = [v6 deviceOsVersionIfAvailable];
      v100 = [v3 pairedDevice];
      v101 = [v100 pairedDeviceIdentifier];
      [v101 setDeviceOsVersion:v99];

      v9 = [v6 deviceProductType];
      v102 = [v3 pairedDevice];
      v103 = [v102 pairedDeviceIdentifier];
      [v103 setDeviceHwIdentifier:v9];

      goto LABEL_153;
    case 8:
      if (!self)
      {
        goto LABEL_217;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:406];
      v104 = objc_alloc_init(MEMORY[0x1E69A2070]);
      [v3 setExtension:v104];

      v6 = +[GEOAPSharedStateData sharedData];
      if ([v6 hasTableBookingAppInstalled])
      {
        v105 = [v6 tableBookingAppInstalled];
        v106 = [v3 extension];
        [v106 setHasTableBookingAppInstalled:v105];

        if ([v6 hasTableBookingAppEnabled])
        {
          v107 = [v6 tableBookingAppEnabled];
          v108 = [v3 extension];
          [v108 setHasTableBookingAppEnabled:v107];
        }
      }

      if (![v6 hasRideBookingAppInstalled])
      {
        goto LABEL_201;
      }

      v109 = [v6 rideBookingAppInstalled];
      v110 = [v3 extension];
      [v110 setHasRideBookingAppInstalled:v109];

      if (![v6 hasRideBookingAppEnabled])
      {
        goto LABEL_201;
      }

      v111 = [v6 rideBookingAppEnabled];
      v71 = [v3 extension];
      [v71 setHasRideBookingAppEnabled:v111];
      goto LABEL_200;
    case 9:
      if (!self)
      {
        goto LABEL_217;
      }

      v118 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v118 setStateType:501];
      v119 = objc_alloc_init(MEMORY[0x1E69A20B0]);
      [v118 setMapView:v119];

      v120 = +[GEOAPSharedStateData sharedData];
      *buf = MEMORY[0x1E69E9820];
      v191 = 3221225472;
      v192 = __28__GEOAPStateFactory_mapView__block_invoke;
      v193 = &unk_1E7959400;
      v194 = v120;
      v121 = v118;
      v195 = v121;
      v122 = v120;
      [(GEOAPStateFactory *)v122 performMapViewStateUpdate:buf];
      v123 = v195;
      v3 = v121;

      goto LABEL_202;
    case 10:
      if (!self)
      {
        goto LABEL_217;
      }

      v112 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v112 setStateType:502];
      v113 = objc_alloc_init(MEMORY[0x1E69A20B8]);
      [v112 setMapViewLocation:v113];

      v114 = +[GEOAPSharedStateData sharedData];
      *buf = MEMORY[0x1E69E9820];
      v191 = 3221225472;
      v192 = __36__GEOAPStateFactory_mapViewLocation__block_invoke;
      v193 = &unk_1E7959400;
      v194 = v114;
      v115 = v112;
      v195 = v115;
      v116 = v114;
      [(GEOAPStateFactory *)v116 performMapViewStateUpdate:buf];
      v117 = v195;
      v3 = v115;

      goto LABEL_202;
    case 11:
      if (!self)
      {
        goto LABEL_217;
      }

      v3 = [(GEOAPStateFactory *)self mapSettingsDetailed];
      v32 = [v3 mapSettings];
      [v32 setHasWalkingAvoidHills:0];

      v33 = [v3 mapSettings];
      [v33 setHasWalkingAvoidBusyRoads:0];

      v6 = [v3 mapSettings];
      [v6 setHasWalkingAvoidStairs:0];
      goto LABEL_201;
    case 12:
      v5 = [(GEOAPStateFactory *)self mapSettingsDetailed];
      goto LABEL_163;
    case 13:
      if (!self)
      {
        goto LABEL_217;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:505];
      v47 = objc_alloc_init(MEMORY[0x1E69A20A0]);
      [v3 setMapUi:v47];

      v6 = +[GEOAPSharedStateData sharedData];
      if ([v6 hasMapUiLayoutInfo])
      {
        v48 = [v6 layoutInfoAsGEOLayoutInfo];
        v49 = [v3 mapUi];
        [v49 setLayoutInfo:v48];
      }

      if ([v6 hasMapUiLayoutStyle])
      {
        v50 = [v6 layoutStyleAsGEOLayoutStyle];
        v51 = [v3 mapUi];
        [v51 setLayoutStyle:v50];
      }

      if ([v6 hasMapUiNumberOfMapsWindows])
      {
        if ([v6 mapUiNumberOfMapsWindows] > 3)
        {
          v52 = 3;
        }

        else
        {
          v52 = [v6 mapUiNumberOfMapsWindows];
        }

        v152 = [v3 mapUi];
        [v152 setNumberOfMapsWindows:v52];
      }

      if ([v6 hasWindowSize])
      {
        v153 = [v6 windowSize];
        if (v153 <= 3)
        {
          v154 = v153;
          v155 = [v3 mapUi];
          [v155 setWindowSize:v154 + 1];
        }
      }

      if (![v6 hasLandscape])
      {
        goto LABEL_201;
      }

      v156 = [v6 landscape];
      v71 = [v3 mapUi];
      [v71 setLandscape:v156];
      goto LABEL_200;
    case 14:
      v5 = [(GEOAPStateFactory *)self mapUIShown];
      goto LABEL_163;
    case 15:
      v5 = [(GEOAPStateFactory *)self experimentsIncludingClientConfig:?];
      goto LABEL_163;
    case 16:
      v5 = [(GEOAPStateFactory *)self experimentsIncludingClientConfig:?];
      goto LABEL_163;
    case 17:
      v5 = [(GEOAPStateFactory *)self placeCard];
      goto LABEL_163;
    case 18:
      v5 = [(GEOAPStateFactory *)self placeCardReveal];
      goto LABEL_163;
    case 19:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      if (![v6 hasRouteRouteDetails])
      {
        goto LABEL_160;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:703];
      v28 = objc_alloc_init(MEMORY[0x1E69A2120]);
      [v3 setRoute:v28];

      v7 = [v6 routeRouteDetails];
      v9 = [v3 route];
      [v9 setRouteDetails:v7];
      goto LABEL_153;
    case 20:
      if (!self)
      {
        goto LABEL_217;
      }

      v53 = +[GEOAPSharedStateData sharedData];
      if ([v53 hasMapsServerData])
      {
        v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
        [v3 setStateType:705];
        v54 = objc_alloc_init(MEMORY[0x1E69A20D0]);
        [v3 setMapsServer:v54];

        if ([v53 hasMapsServerMetadata])
        {
          v55 = [v53 mapsServerMetadata];
          v56 = [v3 mapsServer];
          [v56 setServerMetadata:v55];
        }

        else
        {
          v140 = objc_alloc_init(MEMORY[0x1E69A2228]);
          v141 = [v3 mapsServer];
          [v141 setServerMetadata:v140];

          v142 = [v53 mapsServerMetadataSuggestionEntryTappedOn];
          v143 = [v3 mapsServer];
          v144 = [v143 serverMetadata];
          [v144 setSuggestionEntryMetadataTappedOn:v142];

          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v145 = [v53 mapsServerMetadataSuggestionEntryDisplayeds];
          v146 = [v145 countByEnumeratingWithState:&v185 objects:buf count:16];
          if (v146)
          {
            v147 = *v186;
            do
            {
              for (i = 0; i != v146; ++i)
              {
                if (*v186 != v147)
                {
                  objc_enumerationMutation(v145);
                }

                v149 = *(*(&v185 + 1) + 8 * i);
                v150 = [v3 mapsServer];
                v151 = [v150 serverMetadata];
                [v151 addSuggestionEntryMetadataDisplayed:v149];
              }

              v146 = [v145 countByEnumeratingWithState:&v185 objects:buf count:16];
            }

            while (v146);
          }
        }
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_202;
    case 21:
      if (!self)
      {
        goto LABEL_217;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:706];
      v6 = objc_alloc_init(MEMORY[0x1E69A2158]);
      [v3 setTileSet:v6];
      goto LABEL_201;
    case 24:
      v29 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      v3 = v29;
      v30 = 503;
      goto LABEL_60;
    case 25:
      v29 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      v3 = v29;
      v30 = 708;
      goto LABEL_60;
    case 26:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      if (![v6 hasMapRestoreData])
      {
        goto LABEL_160;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:709];
      v31 = objc_alloc_init(MEMORY[0x1E69A2090]);
      [v3 setMapRestore:v31];

      v7 = objc_alloc_init(MEMORY[0x1E69A25E8]);
      if ([v6 hasRestoreUiTarget])
      {
        [v7 setUiTarget:{objc_msgSend(v6, "restoreUiTarget")}];
      }

      if ([v6 hasRestoreLayoutStyle])
      {
        [v7 setLayoutStyle:{objc_msgSend(v6, "restoreLayoutStyle")}];
      }

      if ([v6 hasRestoreLayoutInfo])
      {
        [v7 setLayoutInfo:{objc_msgSend(v6, "restoreLayoutInfo")}];
      }

      v9 = [v3 mapRestore];
      [v9 addTargetLayout:v7];
      goto LABEL_153;
    case 27:
      if (!self)
      {
        goto LABEL_217;
      }

      v72 = +[GEOAPSharedStateData sharedData];
      v6 = [v72 suggestionsState];

      if (!v6)
      {
        goto LABEL_160;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:710];
      [v3 setSuggestions:v6];
      goto LABEL_201;
    case 28:
      v29 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      v3 = v29;
      v30 = 712;
LABEL_60:
      [v29 setStateType:v30];
      goto LABEL_202;
    case 29:
      if (!self)
      {
        goto LABEL_217;
      }

      v3 = [(GEOAPStateFactory *)self deviceConnectionLimited];
      v133 = [v3 deviceConnection];
      [v133 setCellularDataState:4];

      v6 = [v3 deviceConnection];
      [v6 setDeviceCarrierName:0];
      goto LABEL_201;
    case 30:
      v5 = [(GEOAPStateFactory *)self deviceConnectionLimited];
      goto LABEL_163;
    case 31:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      if (![v6 hasLookaroundSessionStartTime] || !objc_msgSend(v6, "hasLookaroundSessionEndTime"))
      {
        goto LABEL_160;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:714];
      v42 = objc_alloc_init(MEMORY[0x1E69A2148]);
      [v3 setSummaryLookAroundLog:v42];

      [v6 lookaroundSessionEndTime];
      v44 = v43;
      [v6 lookaroundSessionStartTime];
      v46 = (v44 - v45);
      if (v46 <= 0x257)
      {
        if (v46 < 0xB4)
        {
          if (v46 >= 0x3C)
          {
            v46 = (v44 - v45) - (v44 - v45) % 0xAu;
          }
        }

        else
        {
          v46 = 60 * vcvtps_u32_f32(v46 / 60.0);
        }
      }

      else
      {
        v46 = 600;
      }

      v160 = [v3 summaryLookAroundLog];
      [v160 setDurationSec:v46];

      v161 = [v6 lookaroundSessionHadPanAction];
      v162 = [v3 summaryLookAroundLog];
      [v162 setHadPanActions:v161];

      v163 = [v6 lookaroundSessionHadMoveAction];
      v164 = [v3 summaryLookAroundLog];
      [v164 setHadMoveActions:v163];

      v165 = [v6 lookaroundSessionHadZoomAction];
      v166 = [v3 summaryLookAroundLog];
      [v166 setHadZoomActions:v165];

      v167 = [v6 lookaroundSessionHadTapPoiAction];
      v168 = [v3 summaryLookAroundLog];
      [v168 setHadPoiTapActions:v167];

      v169 = [v6 lookaroundSessionHadShareAction];
      v71 = [v3 summaryLookAroundLog];
      [v71 setHadShareActions:v169];
      goto LABEL_200;
    case 32:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      if (![v6 hasLookAroundLocation])
      {
        goto LABEL_160;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:716];
      v60 = objc_alloc_init(MEMORY[0x1E69A2080]);
      [v3 setLookAroundView:v60];

      v61 = [v6 lookAroundLocation];
      v62 = [v3 lookAroundView];
      [v62 setLocation:v61];

      v63 = [v6 lookAroundHeading];
      v64 = [v3 lookAroundView];
      [v64 setHeading:v63];

      [v6 lookAroundZoom];
      v66 = v65;
      v67 = [v3 lookAroundView];
      [v67 setZoomLevel:v66];

      v68 = [v6 lookAroundNumberPoisInView];
      v69 = [v3 lookAroundView];
      [v69 setNumberPoisInView:v68];

      v70 = [v6 lookAroundIsLabelingShown];
      v71 = [v3 lookAroundView];
      [v71 setIsLabelingShown:v70];
      goto LABEL_200;
    case 33:
      if (!self)
      {
        goto LABEL_217;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:717];
      v6 = objc_alloc_init(MEMORY[0x1E69A20E8]);
      [v3 setMuninResource:v6];
      goto LABEL_201;
    case 34:
      goto LABEL_156;
    case 35:
      if (!self)
      {
        goto LABEL_217;
      }

LABEL_156:
      v5 = [(GEOAPStateFactory *)self deviceSettings_Min];
      goto LABEL_163;
    case 36:
      if (!self)
      {
        goto LABEL_217;
      }

      v3 = [(GEOAPStateFactory *)self deviceSettings_Min];
      v6 = +[GEONanoInfo sharedInfo];
      v34 = +[GEOAPSharedStateData sharedData];
      v35 = [v34 hasDeviceInDarkMode];

      if (v35)
      {
        v36 = +[GEOAPSharedStateData sharedData];
        v37 = [v36 deviceInDarkMode];
        v38 = [v3 deviceSettings];
        [v38 setDeviceDarkMode:v37];
      }

      v39 = [v6 hasPairedDeviceIfAvailable];
      v7 = v39;
      if (!v39 || ![v39 BOOLValue])
      {
        goto LABEL_154;
      }

      v9 = [v6 deviceIsAltAcctIfAvailable];
      v40 = [v9 BOOLValue];
      v41 = [v3 deviceSettings];
      [v41 setIsAltAccountPairedDevice:v40];

      goto LABEL_153;
    case 37:
      if (!self)
      {
        goto LABEL_217;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:407];
      v124 = objc_alloc_init(MEMORY[0x1E69A2058]);
      [v3 setDeviceSettings:v124];

      v125 = +[GEOAPSharedStateData sharedData];
      v126 = [v125 hasDeviceInDarkMode];

      if (!v126)
      {
        goto LABEL_202;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      v127 = [v6 deviceInDarkMode];
      v71 = [v3 deviceSettings];
      [v71 setDeviceDarkMode:v127];
LABEL_200:

      goto LABEL_201;
    case 38:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      if (![v6 hasCuratedCollectionState])
      {
        goto LABEL_160;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:719];
      v7 = [v6 curatedCollectionState];
      v9 = [v7 copy];
      [v3 setCuratedCollection:v9];
      goto LABEL_153;
    case 39:
      v5 = [(GEOAPStateFactory *)self curatedCollectionRedacted];
      goto LABEL_163;
    case 40:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      if (![v6 hasUgcPhotoState])
      {
        goto LABEL_160;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:720];
      v7 = [v6 ugcPhotoState];
      v9 = [v7 copy];
      [v3 setUgcPhoto:v9];
      goto LABEL_153;
    case 41:
      if (!self)
      {
        goto LABEL_217;
      }

      v10 = +[GEOAPSharedStateData sharedData];
      if ([v10 hasMapLaunchData])
      {
        v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
        [v3 setStateType:718];
        v11 = objc_alloc_init(MEMORY[0x1E69A2088]);
        [v3 setMapLaunch:v11];

        if ([v10 hasMapLaunchSourceAppId])
        {
          v12 = [v10 mapLaunchSourceAppId];
          v13 = [v3 mapLaunch];
          [v13 setSourceAppId:v12];
        }

        if ([v10 hasMapLaunchLaunchUri])
        {
          v14 = [v10 mapLaunchLaunchUri];
          v15 = [v3 mapLaunch];
          [v15 setLaunchUri:v14];
        }

        if ([v10 hasMapLaunchReferringWebsite])
        {
          v16 = [v10 mapLaunchReferringWebsite];
          v17 = [v3 mapLaunch];
          [v17 setReferringWebsite:v16];
        }

        if ([v10 hasMapLaunchIsHandoff])
        {
          v18 = [v10 mapLaunchIsHandoff];
          v19 = [v3 mapLaunch];
          [v19 setIsHandoff:v18];
        }

        if ([v10 hasMapLaunchSourceHandoffDevice])
        {
          v20 = [v10 mapLaunchSourceHandoffDevice];
          v21 = [v3 mapLaunch];
          [v21 setSourceHandoffDevice:v20];
        }

        if ([v10 hasMapLaunchAction])
        {
          v22 = -[GEOAPStateFactory _launchActionFromAPLaunchAction:](self, "_launchActionFromAPLaunchAction:", [v10 mapLaunchAction]);
          v23 = [MEMORY[0x1E69A2398] sharedPlatform];
          v24 = [v23 isInternalInstall];

          if (v24)
          {
            v25 = [v3 mapLaunch];
            [v25 setLaunchActionInternal:v22];
          }

          v26 = [(GEOAPStateFactory *)self _privacyAllowedActionFromActualAction:v22];
          v27 = [v3 mapLaunch];
          [v27 setLaunchAction:v26];
        }
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_202;
    case 42:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:722];
      v8 = objc_alloc_init(MEMORY[0x1E69A20E0]);
      [v3 setMarket:v8];

      v7 = [v6 bestCurrentMetro];
      v9 = [v3 market];
      [v9 setMarket:v7];
      goto LABEL_153;
    case 43:
      v5 = [(GEOAPStateFactory *)self _emptyUserSessionState];
      goto LABEL_163;
    case 48:
      if (!self)
      {
        goto LABEL_217;
      }

      v73 = +[GEOAPSharedStateData sharedData];
      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:2];
      v74 = objc_alloc_init(MEMORY[0x1E69A2170]);
      [v3 setUser:v74];

      [v73 mapsUserStartDate];
      if (v75 != 0.0)
      {
        [(GEOAPStateFactory *)self _monthResolution:?];
        v77 = v76;
        v78 = [v3 user];
        [v78 setBestMapsUseStartDate:v77];
      }

      v79 = *MEMORY[0x1E69A1A68];
      v80 = *(MEMORY[0x1E69A1A68] + 8);
      if (_GEOConfigHasValue())
      {
        GEOConfigGetDouble();
        [(GEOAPStateFactory *)self _monthResolution:?];
        v82 = v81;
        v83 = [v3 user];
        [v83 setMapsUseStartDate:v82];
      }

      BOOL = GEOConfigGetBOOL();
      v85 = [v3 user];
      [v85 setIsSignedInWithDsid:BOOL];

      *buf = 0;
      v191 = buf;
      v192 = 0x3032000000;
      v193 = __Block_byref_object_copy_;
      v194 = __Block_byref_object_dispose_;
      v195 = 0;
      *(&v185 + 1) = &v185;
      *&v186 = 0x3032000000;
      *(&v186 + 1) = __Block_byref_object_copy_;
      *&v187 = __Block_byref_object_dispose_;
      *(&v187 + 1) = 0;
      v189[0] = MEMORY[0x1E69E9820];
      v189[1] = 3221225472;
      v189[2] = __29__GEOAPStateFactory_mapsUser__block_invoke;
      v189[3] = &unk_1E7953880;
      v189[4] = buf;
      v189[5] = &v185;
      [v73 bestUserHomeLocation:{v189, 0}];
      v86 = *(*(&v185 + 1) + 40);
      v87 = [v3 user];
      [v87 setHomeMetroRegion:v86];

      v88 = *(v191 + 40);
      v89 = [v3 user];
      [v89 setHomeCountryCode:v88];

      v90 = [v73 bestCurrentMetro];
      v91 = v90;
      if (v90 && *(*(&v185 + 1) + 40))
      {
        v92 = [v90 isEqualToString:?];
        v93 = [v3 user];
        [v93 setIsTourist:v92 ^ 1u];
      }

      _Block_object_dispose(&v185, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_202;
    case 49:
      if (!self)
      {
        goto LABEL_217;
      }

      *buf = MEMORY[0x1E69E9820];
      v191 = 3221225472;
      v192 = __50__GEOAPStateFactory_deviceIdentifierHardwareClass__block_invoke;
      v193 = &unk_1E7959610;
      v194 = self;
      if (deviceIdentifierHardwareClass_onceToken != -1)
      {
        dispatch_once(&deviceIdentifierHardwareClass_onceToken, buf);
      }

      v5 = deviceIdentifierHardwareClass_state;
      goto LABEL_163;
    case 54:
      v5 = [(GEOAPStateFactory *)self searchResults];
      goto LABEL_163;
    case 56:
      v5 = [(GEOAPStateFactory *)self impressionObject];
      goto LABEL_163;
    case 57:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      if (![v6 hasTapEventState])
      {
        goto LABEL_160;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:11];
      v7 = [v6 tapEventState];
      [v3 setTapEvent:v7];
      goto LABEL_154;
    case 58:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      v7 = [v6 actionButtonDetailsState];
      if (!v7)
      {
        goto LABEL_149;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:12];
      [v3 setActionButtonDetails:v7];
      goto LABEL_154;
    case 60:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      if (![v6 hasPhotoSubmissionDetailsState])
      {
        goto LABEL_160;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:726];
      v7 = [v6 photoSubmissionDetailsState];
      [v3 setArpPhotoSubmission:v7];
      goto LABEL_154;
    case 61:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      if (![v6 hasRatingSubmissionDetailsState])
      {
        goto LABEL_160;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:727];
      v7 = [v6 ratingSubmissionDetailsState];
      [v3 setArpRatingSubmission:v7];
      goto LABEL_154;
    case 62:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEOAPSharedStateData sharedData];
      if ([v6 hasRatingPhotoSubmissionDetailsState])
      {
        v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
        [v3 setStateType:728];
        v7 = [v6 ratingPhotoSubmissionDetailsState];
        [v3 setArpRatingPhotoSubmission:v7];
LABEL_154:
      }

      else
      {
LABEL_160:
        v3 = 0;
      }

LABEL_201:

      goto LABEL_202;
    case 64:
      if (!self)
      {
        goto LABEL_217;
      }

      v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v3 setStateType:504];
      v6 = +[GEOAPSharedStateData sharedData];
      v7 = [v6 stateMapSettingsShort];
      [v3 setMapSettings:v7];
      goto LABEL_154;
    case 65:
      if (!self)
      {
        goto LABEL_217;
      }

LABEL_162:
      v5 = [(GEOAPStateFactory *)self applicationIdentifier];
LABEL_163:
      v3 = v5;
      goto LABEL_202;
    case 66:
      if (!self)
      {
        goto LABEL_217;
      }

      v6 = +[GEONanoInfo sharedInfo];
      v134 = [v6 hasPairedDeviceIfAvailable];
      v7 = v134;
      if (v134 && [v134 BOOLValue])
      {
        v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
        [v3 setStateType:405];
        v135 = objc_alloc_init(MEMORY[0x1E69A2100]);
        [v3 setPairedDevice:v135];

        v9 = [v3 pairedDevice];
        [v9 setType:1];
LABEL_153:
      }

      else
      {
LABEL_149:
        v3 = 0;
      }

      goto LABEL_154;
    case 67:
      v5 = [(GEOAPStateFactory *)self placeCardRap];
      goto LABEL_163;
    case 68:
      v5 = [(GEOAPStateFactory *)self mapsPlaceIds];
      goto LABEL_163;
    case 70:
      if (self)
      {
        v128 = [MEMORY[0x1E69A22E8] sharedNoCreate];
        v129 = v128;
        if (!v128)
        {
          v3 = 0;
LABEL_214:

          goto LABEL_202;
        }

        v130 = [v128 state];
        v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
        [v3 setStateType:713];
        v131 = objc_alloc_init(MEMORY[0x1E69A20F8]);
        [v3 setOffline:v131];

        if (v130 >= 3u)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 67109120;
            *&buf[4] = v130;
            _os_log_fault_impl(&dword_1AB634000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", buf, 8u);
          }

          LOBYTE(v132) = 0;
        }

        else
        {
          v132 = 4u >> (v130 & 7);
        }

        v136 = [v3 offline];
        [v136 setIsMapsInOfflineMode:v132 & 1];

        v137 = [v3 offline];
        v138 = [v137 isMapsInOfflineMode];

        if (!v138)
        {
          goto LABEL_214;
        }

        if (v130 < 2u)
        {
          goto LABEL_206;
        }

        if (v130 == 2)
        {
          if (HIBYTE(v130) < 3u)
          {
            v139 = 4u >> (HIBYTE(v130) & 7);
LABEL_207:
            v172 = [v3 offline];
            [v172 setIsOnlyUseOffline:v139 & 1];

            v173 = [v129 offlineRegionCount];
            if (v173 >= 2)
            {
              v174 = 2;
            }

            else
            {
              v174 = v173;
            }

            v175 = [v3 offline];
            [v175 setNumberOfDownloadedRegions:v174];

            v176 = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
            v177 = [v176 isNetworkReachable];
            v178 = [v3 offline];
            [v178 setIsNetworkConnected:v177];

            offlineSearchODSVersion = self->_offlineSearchODSVersion;
            if (offlineSearchODSVersion)
            {
              v180 = [(NSNumber *)offlineSearchODSVersion unsignedLongLongValue];
              v181 = [v3 offline];
              [v181 setSearchOdsVersion:v180];
            }

            offlineDirectionsODSVersion = self->_offlineDirectionsODSVersion;
            if (offlineDirectionsODSVersion)
            {
              v183 = [(NSNumber *)offlineDirectionsODSVersion unsignedLongLongValue];
              v184 = [v3 offline];
              [v184 setRoutingOdsVersion:v183];
            }

            goto LABEL_214;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
LABEL_206:
            LOBYTE(v139) = 0;
            goto LABEL_207;
          }

          *buf = 67109120;
          *&buf[4] = HIBYTE(v130);
          v158 = MEMORY[0x1E69E9C10];
          v159 = "Unreachable reached: invalid offline reason value %x";
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            goto LABEL_206;
          }

          *buf = 67109120;
          *&buf[4] = v130;
          v158 = MEMORY[0x1E69E9C10];
          v159 = "Unreachable reached: invalid offline mode value %x";
        }

        _os_log_fault_impl(&dword_1AB634000, v158, OS_LOG_TYPE_FAULT, v159, buf, 8u);
        goto LABEL_206;
      }

LABEL_217:
      v3 = 0;
LABEL_202:
      v170 = *MEMORY[0x1E69E9840];

      return v3;
    default:
      goto LABEL_202;
  }
}

- (id)mapSettingsDetailed
{
  if (a1)
  {
    v1 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
    [v1 setStateType:504];
    v2 = +[GEOAPSharedStateData sharedData];
    v3 = [v2 stateMapSettings];
    [v1 setMapSettings:v3];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)experimentsIncludingClientConfig:(uint64_t)a1
{
  if (a1)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
    [v3 setStateType:602];
    v4 = objc_alloc_init(MEMORY[0x1E69A2068]);
    [v3 setExperiments:v4];

    if (a2)
    {
      v5 = [MEMORY[0x1E69A1D90] sharedConfiguration];
      v6 = [v5 clientConfig];
      v7 = [v3 experiments];
      [v7 setClientAbExperimentAssignment:v6];
    }

    v8 = objc_alloc_init(MEMORY[0x1E69A2300]);
    v9 = [v3 experiments];
    [v9 setDatasetAbStatus:v8];

    v10 = [MEMORY[0x1E69A1D90] sharedConfiguration];
    v11 = [v10 experimentsInfo];
    v12 = [v11 mapsAbClientMetadata];
    v13 = [v12 clientDatasetMetadata];
    v14 = [v13 datasetId];
    v15 = [v3 experiments];
    v16 = [v15 datasetAbStatus];
    [v16 setDatasetId:v14];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __50__GEOAPStateFactory_deviceIdentifierHardwareClass__block_invoke(uint64_t a1)
{
  v1 = [(GEOAPStateFactory *)*(a1 + 32) deviceIdentifier];
  v2 = [v1 copy];
  v3 = deviceIdentifierHardwareClass_state;
  deviceIdentifierHardwareClass_state = v2;

  v4 = *MEMORY[0x1E69A1A48];
  v5 = *(MEMORY[0x1E69A1A48] + 8);
  v7 = GEOConfigGetString();
  v6 = [deviceIdentifierHardwareClass_state deviceIdentifier];
  [v6 setDeviceHwIdentifier:v7];
}

void __42__GEOAPStateFactory_applicationIdentifier__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v0 setStateType:301];
  v1 = applicationIdentifier_state;
  applicationIdentifier_state = v0;

  v2 = objc_alloc_init(MEMORY[0x1E69A2028]);
  [applicationIdentifier_state setApplicationIdentifier:v2];

  v3 = GEOApplicationIdentifierOrProcessName();
  v4 = [applicationIdentifier_state applicationIdentifier];
  [v4 setAppIdentifier:v3];

  v5 = [MEMORY[0x1E69A2398] sharedPlatform];
  LODWORD(v4) = [v5 isInternalInstall];

  if (v4)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    v7 = [v6 processName];
    v8 = [applicationIdentifier_state applicationIdentifier];
    [v8 setProcessName:v7];
  }

  v10 = [applicationIdentifier_state applicationIdentifier];
  v9 = [v10 appIdentifier];
  [GEOAPUtils appTypeForAppId:v9 resultBlock:&__block_literal_global_31];
}

void __42__GEOAPStateFactory_applicationIdentifier__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [applicationIdentifier_state applicationIdentifier];
  [v3 setAppType:a2];
}

void __37__GEOAPStateFactory_deviceIdentifier__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v0 setStateType:201];
  v1 = deviceIdentifier_state;
  deviceIdentifier_state = v0;

  v2 = objc_alloc_init(MEMORY[0x1E69A2048]);
  [deviceIdentifier_state setDeviceIdentifier:v2];

  v3 = [MEMORY[0x1E69A2398] sharedPlatform];
  v4 = [v3 isInternalInstall];
  v5 = [deviceIdentifier_state deviceIdentifier];
  [v5 setIsInternalInstall:v4];

  v6 = +[GEOAPSharedStateData sharedData];
  v7 = [v6 isInternalTool];
  v8 = [deviceIdentifier_state deviceIdentifier];
  [v8 setIsInternalTool:v7];

  v9 = *MEMORY[0x1E69A1A58];
  v10 = *(MEMORY[0x1E69A1A58] + 8);
  v11 = GEOConfigGetString();
  v12 = [deviceIdentifier_state deviceIdentifier];
  [v12 setDeviceOsVersion:v11];

  v13 = *MEMORY[0x1E69A1A50];
  v14 = *(MEMORY[0x1E69A1A50] + 8);
  v16 = GEOConfigGetString();
  v15 = [deviceIdentifier_state deviceIdentifier];
  [v15 setDeviceHwIdentifier:v16];
}

- (int)logMsgStateTypeForType:(int64_t)a3
{
  if ((a3 - 1) > 0x45)
  {
    return 0;
  }

  else
  {
    return dword_1AB6C3344[a3 - 1];
  }
}

- (double)_monthResolution:(double)a3
{
  v4 = objc_alloc(MEMORY[0x1E695DEE8]);
  v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:a3];
  v7 = [v5 components:12 fromDate:v6];
  v8 = [v5 dateFromComponents:v7];

  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  return v10;
}

- (int)_launchActionFromAPLaunchAction:(int)a3
{
  if ((a3 - 1) >= 0x28)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int)_privacyAllowedActionFromActualAction:(int)a3
{
  if ((a3 - 2) > 0x23)
  {
    return 0;
  }

  else
  {
    return dword_1AB6C32B4[a3 - 2];
  }
}

- (id)curatedCollectionRedacted
{
  v2 = +[GEOAPSharedStateData sharedData];
  if ([v2 hasCuratedCollectionState])
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
    [v3 setStateType:719];
    v4 = [v2 curatedCollectionState];
    v5 = [v4 copy];
    [v3 setCuratedCollection:v5];

    v6 = [v3 curatedCollection];
    v7 = [v6 collectionDetails];
    [v7 clearCollectionIds];

    v8 = [v3 curatedCollection];
    v9 = [v8 publisherDetails];
    [v9 clearPublisherIds];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int)_rapPlaceCardTypeForRawType:(int)a3
{
  if ((a3 - 1) > 0x10)
  {
    return 0;
  }

  else
  {
    return dword_1AB6C3270[a3 - 1];
  }
}

- (id)placeCardRap
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v3 = +[GEOAPSharedStateData sharedData];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__GEOAPStateFactory_placeCardRap__block_invoke;
  v7[3] = &unk_1E7953858;
  v4 = v3;
  v9 = self;
  v10 = &v11;
  v8 = v4;
  [v4 performPlaceCardStateUpdate:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __33__GEOAPStateFactory_placeCardRap__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) hasPlaceCardStateData] & 1) != 0 || objc_msgSend(*(a1 + 32), "hasPlaceCardState"))
  {
    v2 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
    [v2 setStateType:702];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = objc_alloc_init(MEMORY[0x1E69A2108]);
    [*(*(*(a1 + 48) + 8) + 40) setPlaceCard:v5];

    if ([*(a1 + 32) hasPlaceCardState])
    {
      v6 = [*(a1 + 32) placeCardState];
      v7 = [v6 hasPlacecardType];

      if (v7)
      {
        v8 = *(a1 + 40);
        v11 = [*(a1 + 32) placeCardState];
        v9 = [v8 _rapPlaceCardTypeForRawType:{objc_msgSend(v11, "placecardType")}];
        v10 = [*(*(*(a1 + 48) + 8) + 40) placeCard];
        [v10 setPlacecardType:v9];
      }
    }
  }
}

- (id)placeCardReveal
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = [(GEOAPStateFactory *)self placeCard];
  v2 = +[GEOAPSharedStateData sharedData];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__GEOAPStateFactory_placeCardReveal__block_invoke;
  v6[3] = &unk_1E7959568;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [v3 performPlaceCardStateUpdate:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void __36__GEOAPStateFactory_placeCardReveal__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) placeCardRevealedPlaceCardModules];
  v3 = [v2 count];

  if (v3)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v4 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
      [v4 setStateType:702];
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }

    v9 = [*(a1 + 32) placeCardRevealedPlaceCardModules];
    v7 = [v9 copy];
    v8 = [*(*(*(a1 + 40) + 8) + 40) placeCard];
    [v8 setRevealedModules:v7];
  }
}

- (id)impressionObject
{
  v2 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v2 setStateType:10];
  v3 = +[GEOAPSharedStateData sharedData];
  v4 = [v3 stateImpressionObject];
  [v2 setImpressionObject:v4];

  return v2;
}

- (id)mapsPlaceIds
{
  v2 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v2 setStateType:729];
  v3 = +[GEOAPSharedStateData sharedData];
  v4 = [v3 mapsPlaceIdsState];
  [v2 setMapsPlaceIds:v4];

  return v2;
}

- (id)searchResults
{
  v2 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v2 setStateType:8];
  v3 = +[GEOAPSharedStateData sharedData];
  v4 = [v3 searchResultsState];
  [v2 setSearchResults:v4];

  return v2;
}

uint64_t __46__GEOAPStateFactory__updateOfflineVersionInfo__block_invoke_2(uint64_t result, int a2)
{
  v2 = result;
  if (a2 == 2)
  {
    v3 = 32;
  }

  else
  {
    if (a2 != 7)
    {
      return result;
    }

    v3 = 24;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  v5 = *(v2 + 32);
  v6 = *(v5 + v3);
  *(v5 + v3) = v4;

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GEOAPStateFactory;
  [(GEOAPStateFactory *)&v4 dealloc];
}

+ (int64_t)pipelineStateTypeForPipelineStateName:(id)a3
{
  v3 = [&unk_1F20562A0 objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)placeCardStateWithPlaceActionDetails:(id)a3
{
  v3 = MEMORY[0x1E69A1FF8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setStateType:702];
  v6 = objc_alloc_init(MEMORY[0x1E69A2108]);
  [v5 setPlaceCard:v6];

  v7 = [v4 copy];
  v8 = [v5 placeCard];
  [v8 setPlaceActionDetails:v7];

  return v5;
}

- (id)ugcStateWithPhotoSources:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v4 setStateType:720];
  v5 = objc_alloc_init(MEMORY[0x1E69A2168]);
  [v4 setUgcPhoto:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v4 ugcPhoto];
        [v12 addPhotoSource:{objc_msgSend(v11, "intValue")}];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)mapsServerStateWithCategoryMetadataDisplayed:(id)a3 categoryMetadataSelected:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v7 setStateType:705];
  v8 = objc_alloc_init(MEMORY[0x1E69A20D0]);
  [v7 setMapsServer:v8];

  v9 = objc_alloc_init(MEMORY[0x1E69A2228]);
  v10 = [v7 mapsServer];
  [v10 setServerMetadata:v9];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [v7 mapsServer];
        v18 = [v17 serverMetadata];
        v19 = [v18 suggestionEntryMetadataDisplayeds];
        v20 = [v16 copy];
        [v19 addObject:v20];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  v21 = [v6 copy];
  v22 = [v7 mapsServer];
  v23 = [v22 serverMetadata];
  [v23 setSuggestionEntryMetadataTappedOn:v21];

  v24 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)routeStateWithRouteDetails:(id)a3
{
  v3 = MEMORY[0x1E69A1FF8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setStateType:703];
  v6 = objc_alloc_init(MEMORY[0x1E69A2120]);
  [v5 setRoute:v6];

  v7 = [v4 copy];
  v8 = [v5 route];
  [v8 setRouteDetails:v7];

  return v5;
}

- (id)mapsServerStateWithDisplayedData:(id)a3 selectedData:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v7 setStateType:705];
  v8 = objc_alloc_init(MEMORY[0x1E69A20D0]);
  [v7 setMapsServer:v8];

  v9 = objc_alloc_init(MEMORY[0x1E69A2228]);
  v10 = [v7 mapsServer];
  [v10 setServerMetadata:v9];

  v11 = [v6 copy];
  v12 = [v7 mapsServer];
  v13 = [v12 serverMetadata];
  [v13 setSuggestionEntryMetadataTappedOn:v11];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = [v7 mapsServer];
        v21 = [v20 serverMetadata];
        v22 = [v19 copy];
        [v21 addSuggestionEntryMetadataDisplayed:v22];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)mapsServerStateWithMapsServerMetadata:(id)a3
{
  v3 = MEMORY[0x1E69A1FF8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setStateType:705];
  v6 = objc_alloc_init(MEMORY[0x1E69A20D0]);
  [v5 setMapsServer:v6];

  v7 = [v4 copy];
  v8 = [v5 mapsServer];
  [v8 setServerMetadata:v7];

  return v5;
}

@end