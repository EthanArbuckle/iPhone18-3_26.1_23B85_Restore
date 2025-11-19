@interface GEOAPPortal
+ (BOOL)isRunningInVisualIntelligence;
+ (BOOL)permittedToCountAC;
+ (id)_caChargingStateFromAPChargingState:(int)a3;
+ (id)_caFeatureFromAPFeature:(int)a3;
+ (id)_caNavMapTypeFromAPNavMapType:(int)a3;
+ (id)_caTriggerTypeFromFromAPThermalPressure:(int)a3;
+ (id)_netEventHandlingConfig;
+ (id)addCodeGenDailyCountsWithActionTargetTuple:(unint64_t)a3 actionTargetValue:(id)a4 appGroup:(int)a5;
+ (id)addStaticDailyCountsWithActionTargetTuple:(unint64_t)a3 actionTargetValue:(id)a4 appGroup:(int)a5;
+ (id)captureQueue;
+ (int)_eventNavChargingStateFromAPNavChargingState:(int)a3;
+ (int)_eventNavMapTypeFromAPNavMapType:(int)a3;
+ (int)_eventThermalPressureFromAPThermalPressure:(int)a3;
+ (void)captureBatchTrafficWithLocationCollection:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)captureCarplayUserActionWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureClientACKeypressWithQuery:(id)a3 queryTokens:(id)a4 entries:(id)a5 keypressStatus:(int)a6 additionalStates:(id)a7 providedDropRate:(id)a8 completionQueue:(id)a9 completionBlock:(id)a10;
+ (void)captureClientACResponseWithQuery:(id)a3 queryTokens:(id)a4 entries:(id)a5 shouldDifferentiateClientAndServerResults:(id)a6 overallLatencyInMs:(id)a7 isRerankerTriggered:(id)a8 isRetainedQuery:(id)a9 additionalStates:(id)a10 providedDropRate:(id)a11 completionQueue:(id)a12 completionBlock:(id)a13;
+ (void)captureClientACSuggestionWithQuery:(id)a3 queryTokens:(id)a4 entries:(id)a5 selectedIndex:(id)a6 selectedSectionIndex:(id)a7 withinSectionSelectedIndex:(id)a8 isRetainedQuery:(id)a9 isRerankerTriggered:(id)a10 shouldDifferentiateClientAndServerResults:(id)a11 responseStatus:(int)a12 GEOModelMetadata_modelVersion:(id)a13 GEOModelMetadata_rolloutId:(id)a14 GEOModelMetadata_rolloutDeploymentId:(id)a15 GEOModelMetadata_rolloutFactorpackId:(id)a16 GEOModelMetadata_rolloutRampId:(id)a17 GEOExperimentMetadata_experimentId:(id)a18 GEOExperimentMetadata_deploymentId:(id)a19 GEOExperimentMetadata_treatmentId:(id)a20 GEOExperimentMetadata_experimentDescription:(id)a21 additionalStates:(id)a22 providedDropRate:(id)a23 completionQueue:(id)a24 completionBlock:(id)a25;
+ (void)captureCommuteDoomWindow:(id)a3 exitTime:(id)a4 destinations:(id)a5 reason:(int64_t)a6 networkRequests:(unint64_t)a7 alerts:(unint64_t)a8;
+ (void)captureCommuteWindowWithStartTime:(id)a3 duration:(id)a4 predictedExitTime:(id)a5 endReason:(int)a6 numberOfAlertingResponses:(id)a7 numberOfDoomRoutingRequests:(id)a8 predictedDestinations:(id)a9 additionalStates:(id)a10 providedDropRate:(id)a11 completionQueue:(id)a12 completionBlock:(id)a13;
+ (void)captureCuratedCollectionUserAction:(int)a3 target:(int)a4 value:(id)a5 publisherId:(id)a6 following:(id)a7 collectionId:(id)a8 collectionCategory:(id)a9 collectionCurrentlySaved:(id)a10 verticalIndex:(id)a11 horizontalIndex:(id)a12 placeCardType:(id)a13 possibleActions:(id)a14 impossibleActions:(id)a15 providerId:(id)a16 repeatableSectionIndex:(id)a17 modules:(id)a18;
+ (void)captureCuratedCollectionsSessionlessUserActionTargetPairRedactedCCStateWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureCuratedCollectionsSessionlessUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureCuratedCollectionsShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureDailyUseSummaryWithUseEvents:(id)a3 summaryPeriod:(int)a4 summaryDate:(id)a5 aggregationSummaryDate:(id)a6 firstEventDate:(id)a7 user_mapsUseLastDate:(id)a8 additionalStates:(id)a9 providedDropRate:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureDirectionsServiceMetadataWithDirectionsMetadata:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)captureDirectionsWithDirectionsFeedbacks:(id)a3 finalLocation:(id)a4 arrivalLocation:(id)a5 arrivedAtDestination:(id)a6 navigationAudioFeedback:(GEONavigationAudioFeedback *)a7 durationOfTrip:(id)a8 durationInNavigationModes:(id)a9 preArrival:(id)a10 originalEta:(id)a11 isVlfImprovementUsed:(id)a12 isCoarseLocationUsed:(id)a13 acceptedCyclingWorkout:(id)a14 batteryDied:(id)a15 chargingStopAdded:(id)a16 isSiriEngaged:(id)a17 tripOrigin:(id)a18 isBadEvExperience:(id)a19 isEvSampleTrip:(id)a20 stateOfChargeAtOrigin:(id)a21 stateOfChargeAtDestPredicted:(id)a22 stateOfChargeAtDestActual:(id)a23 stateOfChargeDiffAtDest:(id)a24 waypoints:(id)a25 evConsumptionModel:(id)a26 evChargingMode:(id)a27 activeNavMode:(int)a28 arWalkingUsedInRoutePlanning:(id)a29 arWalkingUsedInNavigation:(id)a30 voiceGuidanceLevel:(int)a31 hFPEnabled:(id)a32 isEndRouteTermination:(id)a33 isParkedCarTermination:(id)a34 isTransitionToWalkingTermination:(id)a35 isTransitionToFindmyTermination:(id)a36 parkingDetectionLocation:(id)a37 timeBetweenParkedAndArrival:(id)a38 arrivedAtDestinationCount:(id)a39 inParkingModeCount:(id)a40 isInParkingMode:(id)a41 isSuggestToWalkingTriggered:(id)a42 isTransitedToWalking:(id)a43 isSuggestToFindmyTriggered:(id)a44 isTransitedToFindmy:(id)a45;
+ (void)captureDirectionsWithDirectionsFeedbacks:(id)a3 finalLocation:(id)a4 arrivalLocation:(id)a5 arrivedAtDestination:(id)a6 navigationAudioFeedback:(GEONavigationAudioFeedback *)a7 durationOfTrip:(id)a8 durationInNavigationModes:(id)a9 preArrival:(id)a10 originalEta:(id)a11 isVlfImprovementUsed:(id)a12 isCoarseLocationUsed:(id)a13 acceptedCyclingWorkout:(id)a14 batteryDied:(id)a15 chargingStopAdded:(id)a16 isSiriEngaged:(id)a17 tripOrigin:(id)a18 isBadEvExperience:(id)a19 isEvSampleTrip:(id)a20 stateOfChargeAtOrigin:(id)a21 stateOfChargeAtDestPredicted:(id)a22 stateOfChargeAtDestActual:(id)a23 stateOfChargeDiffAtDest:(id)a24 waypoints:(id)a25 evConsumptionModel:(id)a26 evChargingMode:(id)a27 activeNavMode:(int)a28 arWalkingUsedInRoutePlanning:(id)a29 arWalkingUsedInNavigation:(id)a30 voiceGuidanceLevel:(int)a31 hFPEnabled:(id)a32 isEndRouteTermination:(id)a33 isParkedCarTermination:(id)a34 isTransitionToWalkingTermination:(id)a35 isTransitionToFindmyTermination:(id)a36 parkingDetectionLocation:(id)a37 timeBetweenParkedAndArrival:(id)a38 arrivedAtDestinationCount:(id)a39 inParkingModeCount:(id)a40 isInParkingMode:(id)a41 isSuggestToWalkingTriggered:(id)a42 isTransitedToWalking:(id)a43 isSuggestToFindmyTriggered:(id)a44 isTransitedToFindmy:(id)a45 additionalStates:(id)a46 providedDropRate:(id)a47 completionQueue:(id)a48 completionBlock:(id)a49;
+ (void)captureDirectionsWithDirectionsFeedbacks:(id)a3 finalLocation:(id)a4 arrivalLocation:(id)a5 arrivedAtDestination:(id)a6 navigationAudioFeedback:(GEONavigationAudioFeedback *)a7 durationOfTrip:(id)a8 durationInNavigationModes:(id)a9 preArrival:(id)a10 originalEta:(id)a11 isVlfImprovementUsed:(id)a12 isCoarseLocationUsed:(id)a13 acceptedCyclingWorkout:(id)a14 batteryDied:(id)a15 chargingStopAdded:(id)a16 isSiriEngaged:(id)a17 tripOrigin:(id)a18 wasBadRouteExperience:(id)a19 isBadEvExperience:(id)a20 isEvSampleTrip:(id)a21 stateOfChargeAtOrigin:(id)a22 stateOfChargeAtDestPredicted:(id)a23 stateOfChargeAtDestActual:(id)a24 stateOfChargeDiffAtDest:(id)a25 waypoints:(id)a26 evConsumptionModel:(id)a27 evChargingMode:(id)a28 isEVRoute:(BOOL)a29 activeNavMode:(int)a30 arWalkingUsedInRoutePlanning:(id)a31 arWalkingUsedInNavigation:(id)a32 voiceGuidanceLevel:(int)a33 hFPEnabled:(id)a34 isEndRouteTermination:(id)a35 isParkedCarTermination:(id)a36 isTransitionToWalkingTermination:(id)a37 isTransitionToFindmyTermination:(id)a38 parkingDetectionLocation:(id)a39 timeBetweenParkedAndArrival:(id)a40 arrivedAtDestinationCount:(id)a41 inParkingModeCount:(id)a42 isInParkingMode:(id)a43 isSuggestToWalkingTriggered:(id)a44 isTransitedToWalking:(id)a45 isSuggestToFindmyTriggered:(id)a46 isTransitedToFindmy:(id)a47;
+ (void)captureDisplayAnalyticWithDisplayActionTrigger:(int)a3 requiredResourcesAvailable:(id)a4 totalTime:(id)a5 requestedImageCount:(id)a6 renderedImageCount:(id)a7 movementDistance:(id)a8 meanImageSpacing:(id)a9 displayEvent:(int)a10 additionalStates:(id)a11 providedDropRate:(id)a12 completionQueue:(id)a13 completionBlock:(id)a14;
+ (void)captureEnterMapsShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureEvRoutingVehicleDetailsWithMake:(id)a3 model:(id)a4 towingNotSupported:(id)a5 batteryCapacity:(id)a6 additionalStates:(id)a7 providedDropRate:(id)a8 completionQueue:(id)a9 completionBlock:(id)a10;
+ (void)captureEvTripWithOutOfCharge:(id)a3 outOfRangeAlertDisplayed:(id)a4 originalTripIncludedChargingStation:(id)a5 chargingStopAddedThroughSar:(id)a6 tripIncludedPreferredChargingStation:(id)a7 stopRemovedDetails:(id)a8 realtimeDodgeballs:(id)a9 chargeLocationDetails:(id)a10 stopAddedDetails:(id)a11 additionalStates:(id)a12 providedDropRate:(id)a13 completionQueue:(id)a14 completionBlock:(id)a15;
+ (void)captureFamiliarRoutesOnlyWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureFindMyUsageWithUserActionEventAction:(int)a3 userActionEventTarget:(int)a4 userActionEventValue:(id)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9;
+ (void)captureFindMyUserActionType:(id)a3 ownerContext:(id)a4 productType:(id)a5;
+ (void)captureGridDuration:(double)a3 previousState:(int)a4 endState:(int)a5 displayType:(int)a6 errors:(id)a7;
+ (void)captureGridDurationWithDurationMs:(id)a3 previousState:(int)a4 endState:(int)a5 endStateErrorReasons:(id)a6 displayType:(int)a7 additionalStates:(id)a8 providedDropRate:(id)a9 completionQueue:(id)a10 completionBlock:(id)a11;
+ (void)captureHardStopWithScore:(id)a3 digits:(id)a4 cities:(id)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9;
+ (void)captureImpressionEventWithAdditionalStates:(id)a3 providedDropRate:(id)a4 completionQueue:(id)a5 completionBlock:(id)a6;
+ (void)captureMapLaunchEventWithLaunchUrl:(id)a3 sourceAppId:(id)a4 isLaunchedFromTTL:(BOOL)a5 ttlEventTime:(id)a6;
+ (void)captureMapLaunchWithLaunchUri:(id)a3 sourceAppId:(id)a4 GEOTimeToLeaveMapLaunch_minutesUntilEvent:(id)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9;
+ (void)captureMapViewEngagementWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureMapsEngagementWithUser_mapsUseLastDate:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)captureMapsInteractionWithInteractionType:(int)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)captureMarcoLiteWithTotalNavTime:(id)a3 usageStates:(id)a4 vioTrigger:(int)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9;
+ (void)captureMuninCameraUserActionShortOnlyWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureMuninUserActionShortOnlyWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureNavThermalPressureWithThermalPressure:(id)a3 disableMapFeatures:(id)a4 navMapType:(int)a5 collectionTrigger:(int)a6 additionalStates:(id)a7 providedDropRate:(id)a8 completionQueue:(id)a9 completionBlock:(id)a10;
+ (void)captureNavTraceWithNavTraceData:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)captureNearbyTransitShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureNetEventSummaryWithGroups:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)captureNetSelectionHarvestWithHarvestData:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)captureNetworkEventWithNetworkService:(int)a3 requestAppIdentifier:(id)a4 requestAppIdMajorVer:(id)a5 requestAppIdMinorVer:(id)a6 requestErrorDomain:(id)a7 requestErrorCode:(id)a8 requestDataSize:(id)a9 responseDataSize:(id)a10 totalTime:(id)a11 httpResponseCode:(id)a12 serviceIpAddress:(id)a13 taskMetrics:(id)a14 mptcpServiceType:(int)a15 mptcpNegotiated:(id)a16 rnfTriggered:(id)a17 queuedTime:(id)a18 redirectCount:(id)a19 requestStart:(id)a20 requestEnd:(id)a21 wasBackground:(id)a22 additionalStates:(id)a23 providedDropRate:(id)a24 completionQueue:(id)a25 completionBlock:(id)a26;
+ (void)captureOfflineSessionlessUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureOfflineShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)capturePeriodicSettingsWithMapSettings:(id)a3 mapUiShown:(id)a4 mapsFeatures:(id)a5 mapsUserSettings:(id)a6 routingSettings:(id)a7 additionalStates:(id)a8 providedDropRate:(id)a9 completionQueue:(id)a10 completionBlock:(id)a11;
+ (void)capturePlaceCardRevealWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)capturePlaceCardUserAction:(int)a3 target:(int)a4 value:(id)a5 mapItem:(id)a6 timestamp:(double)a7 resultIndex:(int)a8 targetID:(unint64_t)a9 providerID:(id)a10 animationID:(unint64_t)a11 actionURL:(id)a12 photoID:(id)a13 placeCardType:(int)a14 localizedMapItemCategory:(id)a15 availableActions:(id)a16 unactionableUIElements:(id)a17 modules:(id)a18 commingledRichProviderIds:(id)a19 actionRichProviderId:(id)a20 classification:(id)a21;
+ (void)capturePlacesServiceMetadataWithPlacesMetadata:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)capturePoiBusynessDataWithTimestamp:(id)a3 GEOLatLng_lat:(id)a4 GEOLatLng_lng:(id)a5 horizontalAccuracy:(id)a6 verticalAccuracy:(id)a7 altitude:(id)a8 poiPredictions:(id)a9 additionalStates:(id)a10 providedDropRate:(id)a11 completionQueue:(id)a12 completionBlock:(id)a13;
+ (void)capturePredExShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)a3 chanceOfRain:(id)a4 chanceOfSnow:(id)a5 endTime:(id)a6 durationUntilEventEnd:(id)a7 durationUntilEventStart:(id)a8 startTime:(id)a9 temperature:(id)a10 timeOfDay:(id)a11 timeSinceBackgrounded:(id)a12 actualTransportMode:(int)a13 dayOfWeek:(id)a14 distanceFromHereToHome:(int)a15 distanceFromHereToOrigin:(int)a16 distanceFromHereToParkedCar:(int)a17 distanceFromHereToWork:(int)a18 distanceFromHere:(int)a19 distanceFromOriginToDestination:(int)a20 entryType:(int)a21 weatherType:(int)a22 mapType:(int)a23 predictedTransportMode:(int)a24 preferredTransportMode:(int)a25 isInBasemode:(id)a26 isCarplayConnected:(id)a27 isTourist:(id)a28 isTransitPossible:(id)a29 routePlanningScreenPresented:(id)a30 userLocationGeohash4:(id)a31 isVehicleBluetoothConnected:(id)a32 weatherAqi:(id)a33 modelName:(int)a34 modelVersion:(id)a35 modelTrainedDate:(id)a36;
+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)a3 chanceOfRain:(id)a4 chanceOfSnow:(id)a5 endTime:(id)a6 durationUntilEventEnd:(id)a7 durationUntilEventStart:(id)a8 startTime:(id)a9 temperature:(id)a10 timeOfDay:(id)a11 timeSinceBackgrounded:(id)a12 actualTransportMode:(int)a13 dayOfWeek:(id)a14 distanceFromHereToHome:(int)a15 distanceFromHereToOrigin:(int)a16 distanceFromHereToParkedCar:(int)a17 distanceFromHereToWork:(int)a18 distanceFromHere:(int)a19 distanceFromOriginToDestination:(int)a20 entryType:(int)a21 weatherType:(int)a22 mapType:(int)a23 predictedTransportMode:(int)a24 preferredTransportMode:(int)a25 isInBasemode:(id)a26 isCarplayConnected:(id)a27 isTourist:(id)a28 isTransitPossible:(id)a29 routePlanningScreenPresented:(id)a30 userLocationGeohash4:(id)a31 isVehicleBluetoothConnected:(id)a32 weatherAqi:(id)a33 modelName:(int)a34 modelVersion:(id)a35 modelTrainedDate:(id)a36 additionalStates:(id)a37 providedDropRate:(id)a38 completionQueue:(id)a39 completionBlock:(id)a40;
+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)a3 chanceOfRain:(id)a4 chanceOfSnow:(id)a5 endTime:(id)a6 durationUntilEventEnd:(id)a7 durationUntilEventStart:(id)a8 startTime:(id)a9 temperature:(id)a10 timeOfDay:(id)a11 timeSinceBackgrounded:(id)a12 actualTransportMode:(int)a13 dayOfWeek:(id)a14 distanceFromHereToHome:(int)a15 distanceFromHereToOrigin:(int)a16 distanceFromHereToParkedCar:(int)a17 distanceFromHereToWork:(int)a18 distanceFromHere:(int)a19 distanceFromOriginToDestination:(int)a20 entryType:(int)a21 weatherType:(int)a22 mapType:(int)a23 predictedTransportMode:(int)a24 preferredTransportMode:(int)a25 isInBasemode:(id)a26 isTourist:(id)a27 isCarplayConnected:(id)a28 isTransitPossible:(id)a29 routePlanningScreenPresented:(id)a30 userLocation:(id)a31 isVehicleBluetoothConnected:(id)a32 weatherAqi:(id)a33 modelName:(int)a34 modelVersion:(id)a35 modelTrainedDate:(id)a36;
+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)a3 chanceOfRain:(id)a4 chanceOfSnow:(id)a5 endTime:(id)a6 durationUntilEventEnd:(id)a7 durationUntilEventStart:(id)a8 startTime:(id)a9 temperature:(id)a10 timeOfDay:(id)a11 timeSinceBackgrounded:(id)a12 actualTransportMode:(int)a13 dayOfWeek:(id)a14 distanceFromHereToHome:(int)a15 distanceFromHereToOrigin:(int)a16 distanceFromHereToParkedCar:(int)a17 distanceFromHereToWork:(int)a18 distanceFromHere:(int)a19 distanceFromOriginToDestination:(int)a20 entryType:(int)a21 weatherType:(int)a22 mapType:(int)a23 predictedTransportMode:(int)a24 preferredTransportMode:(int)a25 isTourist:(id)a26 isCarplayConnected:(id)a27 isTransitPossible:(id)a28 userLocation:(id)a29 isVehicleBluetoothConnected:(id)a30 weatherAqi:(id)a31 modelName:(int)a32 modelVersion:(id)a33 modelTrainedDate:(id)a34;
+ (void)capturePressureDataWithPressureData:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)capturePriorityPlacecardActionShortUserActionsWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)capturePriorityShortUserActionsWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureProactiveSuggestionWithListType:(int)a3 interactedItemIndex:(id)a4 duration:(id)a5 proactiveItems:(id)a6 additionalStates:(id)a7 providedDropRate:(id)a8 completionQueue:(id)a9 completionBlock:(id)a10;
+ (void)captureRapSessionlessUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureRapShortAndSessionlessUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureRapUserActionShortOnlyWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureRealTrafficWithLocationCollection:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)captureRedactedDirectionsServiceMetadataWithRedactedDirectionsMetadata:(id)a3 GEORedactedDirectionsClientMetadata_destinationHash:(id)a4 GEORedactedDirectionsClientMetadata_predictedDepartureTimeDelta:(id)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9;
+ (void)captureRideBookedWithRideBookedSessionId:(id)a3 bookedUsingMaps:(id)a4 cancelled:(id)a5 contactedDriver:(id)a6 viewedInProactiveTray:(id)a7 tappedProactiveTrayItem:(id)a8 viewedDetails:(id)a9 invalidVehicleLocation:(id)a10 missingVehicleLocation:(id)a11 rideAppId:(id)a12 rideAppVersion:(id)a13 intentResponseFailures:(id)a14 additionalStates:(id)a15 providedDropRate:(id)a16 completionQueue:(id)a17 completionBlock:(id)a18;
+ (void)captureRideBookingWithRideBookingSessionId:(id)a3 statusIssue:(int)a4 endState:(int)a5 endView:(int)a6 rideAppId:(id)a7 rideAppVersion:(id)a8 originBlurred:(id)a9 destinationBlurred:(id)a10 exploredOtherOptions:(id)a11 distanceToPickupInMeters:(id)a12 paymentIsApplePay:(id)a13 numberOfAvailableExtensions:(id)a14 switchedApp:(id)a15 comparedRideOptions:(id)a16 showedSurgePricingAlert:(id)a17 durationOfSessionInSeconds:(id)a18 installedApp:(id)a19 timestamp:(id)a20 unavailable:(id)a21 movedPickupLocation:(id)a22 errorMessages:(id)a23 intentResponseFailures:(id)a24 additionalStates:(id)a25 providedDropRate:(id)a26 completionQueue:(id)a27 completionBlock:(id)a28;
+ (void)captureSessionlessUserActionWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureShowcaseSuppressionWithBusinessId:(id)a3 localSearchProviderID:(id)a4 showcaseId:(id)a5 suppressionReason:(int)a6 adamId:(id)a7 additionalStates:(id)a8 providedDropRate:(id)a9 completionQueue:(id)a10 completionBlock:(id)a11;
+ (void)captureStartEndNavWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureTableBookedWithBookedTableSessionId:(id)a3 bookedTables:(id)a4 additionalStates:(id)a5 providedDropRate:(id)a6 completionQueue:(id)a7 completionBlock:(id)a8;
+ (void)captureTableBookingWithBookTableSessionId:(id)a3 endState:(int)a4 endView:(int)a5 bookTableAppId:(id)a6 muid:(id)a7 blurredReservationTimestamp:(id)a8 blurredBookingTimestamp:(id)a9 durationOfSessionInSeconds:(id)a10 installNeeded:(id)a11 installNeededTappedAppId:(id)a12 installCompleted:(id)a13 tableSize:(id)a14 addedSpecialRequest:(id)a15 swipedAvailableTimes:(id)a16 tappedDatePicker:(id)a17 errorMessages:(id)a18 additionalStates:(id)a19 providedDropRate:(id)a20 completionQueue:(id)a21 completionBlock:(id)a22;
+ (void)captureTelemetricWithTelemetricEntitys:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)captureTimeToLeaveIntialTravelTimeEventWithTravelTime:(double)a3;
+ (void)captureTransitAppLaunchSource:(id)a3 destination:(id)a4 bundleIdentifier:(id)a5;
+ (void)captureTransitAppLaunchWithBundleIdentifier:(id)a3 source:(id)a4 destination:(id)a5 timestamp:(id)a6 additionalStates:(id)a7 providedDropRate:(id)a8 completionQueue:(id)a9 completionBlock:(id)a10;
+ (void)captureTransitShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureTtlHypothesisWithArrival:(int)a3 departure:(int)a4 ttlUiNotificationShown:(int)a5 earliestArrivalOffset:(id)a6 earliestDepartureOffset:(id)a7 latestArrivalOffset:(id)a8 latestDepartureOffset:(id)a9 numberOfReroutes:(id)a10 additionalStates:(id)a11 providedDropRate:(id)a12 completionQueue:(id)a13 completionBlock:(id)a14;
+ (void)captureTtlInitialTimeWithTravelTime:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)captureUGCSessionlessUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureUGCShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12;
+ (void)captureUgcDeleteLogsWithCertificates:(id)a3 signature:(id)a4 trigger:(int)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9;
+ (void)captureVlfUsageWithEntryPoint:(id)a3 sessionTimeMs:(id)a4 timeRoundedToHour:(id)a5 localizationDetails:(id)a6 finalState:(int)a7 postFusionCorrection:(id)a8 initialPositionContextClassification:(GEOVLFPositionContextClassification *)a9 initialLocation:(id)a10 initializationFailureDetails:(id)a11 arStates:(id)a12 deviceOrientations:(id)a13 crowdsourcingDetails:(id)a14 arFailureTypes:(id)a15 additionalStates:(id)a16 providedDropRate:(id)a17 completionQueue:(id)a18 completionBlock:(id)a19;
+ (void)captureWidgetInteractionWithMapsWidgetType:(int)a3 endState:(int)a4 lockedMode:(id)a5 localHour:(id)a6 localDayOfWeek:(id)a7 duration:(id)a8 mapsNearbyWidget:(id)a9 mapsTransitWidget:(id)a10 mapsDestinationsWidget:(id)a11 additionalStates:(id)a12 providedDropRate:(id)a13 completionQueue:(id)a14 completionBlock:(id)a15;
+ (void)captureWifiProbeWithWifiConnectionQuality:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7;
+ (void)populateCommonEventValues:(id)a3;
+ (void)processMapsDeletionWithCompletionQueue:(id)a3 completion:(id)a4;
+ (void)reportLogMsgEvent:(id)a3 uploadBatchId:(unint64_t)a4 completion:(id)a5 completionQueue:(id)a6;
@end

@implementation GEOAPPortal

void __63__GEOAPPortal_UserActionCodeGen__isRunningInVisualIntelligence__block_invoke()
{
  v0 = GEOApplicationIdentifierOrProcessName();
  isRunningInVisualIntelligence_isVisIntel = [v0 caseInsensitiveCompare:@"com.apple.VisualIntelligenceCamera"] == 0;
}

+ (BOOL)isRunningInVisualIntelligence
{
  if (isRunningInVisualIntelligence_onceToken != -1)
  {
    dispatch_once(&isRunningInVisualIntelligence_onceToken, &__block_literal_global_826);
  }

  return isRunningInVisualIntelligence_isVisIntel;
}

+ (id)captureQueue
{
  if (captureQueue_onceToken != -1)
  {
    dispatch_once(&captureQueue_onceToken, &__block_literal_global_8);
  }

  v3 = captureQueue_queue;

  return v3;
}

uint64_t __27__GEOAPPortal_captureQueue__block_invoke()
{
  captureQueue_queue = geo_dispatch_queue_create_with_qos();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)reportLogMsgEvent:(id)a3 uploadBatchId:(unint64_t)a4 completion:(id)a5 completionQueue:(id)a6
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v68 = a4;
  v10 = GEOBatchLogMessageType();
  v11 = [MEMORY[0x1E69A2398] sharedPlatform];
  v12 = [v11 isInternalInstall];

  if (v12)
  {
    v13 = GEOGetGEOAPPortalAnalyticsLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
LABEL_122:

      goto LABEL_123;
    }

    v14 = [v8 eventType];
    v15 = @"LOG_MSG_EVENT_TYPE_UNKNOWN";
    switch(v14)
    {
      case 0:
        break;
      case 1:
        v15 = @"USER_ACTION";
        break;
      case 2:
        v15 = @"STATE_TIMING";
        break;
      case 4:
        v15 = @"TILE_SET_STATE";
        break;
      case 5:
        v15 = @"PLACE_DATA_CACHE";
        break;
      case 6:
        v15 = @"NETWORK";
        break;
      case 7:
        v15 = @"CACHE_HIT";
        break;
      case 8:
        v15 = @"DIRECTIONS";
        break;
      case 9:
        v15 = @"TRANSIT_APP_LAUNCH";
        break;
      case 10:
        v15 = @"TIME_TO_LEAVE_HYPOTHESIS";
        break;
      case 11:
        v15 = @"TIME_TO_LEAVE_INITIAL_TRAVEL_TIME";
        break;
      case 12:
        v15 = @"LOG_FRAMEWORK";
        break;
      case 13:
        v15 = @"MAPS_WIDGETS_SESSION";
        break;
      case 14:
        v15 = @"LIST_INTERACTION_SESSION";
        break;
      case 15:
        v15 = @"REFINE_SEARCH_SESSION";
        break;
      case 16:
        v15 = @"PROACTIVE_SUGGESTION_SESSION";
        break;
      case 17:
        v15 = @"MAP_LAUNCH";
        break;
      case 18:
        v15 = @"RIDE_BOOKING_SESSION";
        break;
      case 19:
        v15 = @"RIDE_BOOKED_SESSION";
        break;
      case 20:
        v15 = @"TABLE_BOOKING_SESSION";
        break;
      case 21:
        v15 = @"TABLE_BOOKED_SESSION";
        break;
      case 22:
        v15 = @"STALE_RESOURCE";
        break;
      case 23:
        v15 = @"FULL_NAV_TRACE";
        break;
      case 24:
        v15 = @"TELEMETRIC";
        break;
      case 25:
        v15 = @"CLIENT_AC_SUGGESTIONS";
        break;
      case 26:
        v15 = @"REALTIME_TRAFFIC_PROBE_COLLECTION";
        break;
      case 27:
        v15 = @"BATCH_TRAFFIC_PROBE_COLLECTION";
        break;
      case 28:
        v15 = @"OFFLINE_REQUEST_RESPONSE";
        break;
      case 29:
        v15 = @"COMMUTE_WINDOW";
        break;
      case 30:
        v15 = @"GENERIC_APP_ERROR";
        break;
      case 31:
        v15 = @"WIFI_CONNECTION_QUALITY_PROBE";
        break;
      case 32:
        v15 = @"PARKED_CAR";
        break;
      case 33:
        v15 = @"TILE_CACHE_ANALYTIC";
        break;
      case 34:
        v15 = @"GRID_DURATION";
        break;
      case 35:
        v15 = @"DISPLAY_ANALYTIC";
        break;
      case 36:
        v15 = @"THROTTLE";
        break;
      case 37:
        v15 = @"MAP_KIT_COUNTS";
        break;
      case 38:
        v15 = @"PRED_EX_TRAINING";
        break;
      case 39:
        v15 = @"MARCOLITE_USAGE";
        break;
      case 40:
        v15 = @"TRIP_DEPARTURE";
        break;
      case 41:
        v15 = @"DIRECTIONS_REQUEST_DETAILS";
        break;
      case 42:
        v15 = @"EV_ROUTING_VEHICLE_DETAILS";
        break;
      case 43:
        v15 = @"EV_TRIP";
        break;
      case 44:
        v15 = @"CURATED_COLLECTION_STATS";
        break;
      case 45:
        v15 = @"CURATED_COLLECTION_USAGE";
        break;
      case 46:
        v15 = @"MAPS_DEVICE_SETTINGS";
        break;
      case 47:
        v15 = @"HARD_STOP";
        break;
      case 48:
        v15 = @"VLF_USAGE";
        break;
      case 49:
        v15 = @"LOG_DISCARD";
        break;
      case 50:
        v15 = @"DAILY_USE_SUMMARY";
        break;
      case 51:
        v15 = @"PRESSURE_DATA";
        break;
      case 52:
        v15 = @"POI_BUSYNESS_DATA";
        break;
      case 53:
        v15 = @"PERIODIC_SETTINGS_SUMMARY";
        break;
      case 54:
        v15 = @"THERMAL_PRESSURE";
        break;
      case 55:
        v15 = @"AR_SESSION_USAGE";
        break;
      case 56:
        v15 = @"NETWORK_SELECTION_HARVEST";
        break;
      case 57:
        v15 = @"IMPRESSION_EVENT";
        break;
      case 58:
        v15 = @"SHOWCASE_SUPPRESSION";
        break;
      case 59:
        v15 = @"PLACE_CACHE_LOOKUP";
        break;
      case 60:
        v15 = @"DEVICE_SYNC_STATUS";
        break;
      case 61:
        v15 = @"MAPS_INTERACTION";
        break;
      case 62:
        v15 = @"NETWORK_EVENT_SUMMARY";
        break;
      case 63:
        v15 = @"SERVICE_METADATA";
        break;
      case 64:
        v15 = @"MAPS_ENGAGEMENT";
        break;
      case 65:
        v15 = @"REDACTED_SERVICE_METADATA";
        break;
      default:
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
        break;
    }

    v16 = v15;
    if (v10 <= 10999)
    {
      if (v10 <= 4)
      {
        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v17 = @"CURATED_COLLECTION_SESSION";
          }

          else if (v10 == 3)
          {
            v17 = @"FIFTEEN_MONTH_SESSION";
          }

          else
          {
            v17 = @"PRESSURE_DATA_SESSION";
          }

          goto LABEL_121;
        }

        if (!v10)
        {
          v17 = @"LOG_MESSAGE_TYPE_UNKNOWN";
          goto LABEL_121;
        }

        if (v10 == 1)
        {
          v17 = @"DEBUGLOG";
          goto LABEL_121;
        }
      }

      else
      {
        if (v10 <= 7)
        {
          if (v10 == 5)
          {
            v17 = @"POI_BUSYNESS_DATA_SESSION";
          }

          else if (v10 == 6)
          {
            v17 = @"FIFTEEN_MONTH_USER_SESSION";
          }

          else
          {
            v17 = @"NETWORK_SELECTION_HARVEST_SESSION";
          }

          goto LABEL_121;
        }

        switch(v10)
        {
          case 8:
            v17 = @"MEDIUM_SESSION_USAGE";
            goto LABEL_121;
          case 9:
            v17 = @"EQ_DATA_SESSSION";
            goto LABEL_121;
          case 0x2710:
            v17 = @"USAGE";
            goto LABEL_121;
        }
      }
    }

    else if (v10 > 29999)
    {
      if (v10 > 50000)
      {
        switch(v10)
        {
          case 0xC351:
            v17 = @"BATCH_TRAFFIC_PROBE";
            goto LABEL_121;
          case 0xC352:
            v17 = @"WIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
            goto LABEL_121;
          case 0xC353:
            v17 = @"LOG_DISCARD_EVENT";
            goto LABEL_121;
        }
      }

      else
      {
        switch(v10)
        {
          case 0x7530:
            v17 = @"NAVIGATION_TRACE";
            goto LABEL_121;
          case 0x9C40:
            v17 = @"TELEMETRY";
            goto LABEL_121;
          case 0xC350:
            v17 = @"REALTIME_TRAFFIC_PROBE";
            goto LABEL_121;
        }
      }
    }

    else if (v10 > 13999)
    {
      switch(v10)
      {
        case 0x36B0:
          v17 = @"LONG_SESSION_LOG_FRAMEWORK_USAGE";
          goto LABEL_121;
        case 0x3A98:
          v17 = @"COHORTS_SESSION_USAGE";
          goto LABEL_121;
        case 0x4E20:
          v17 = @"PERFORMANCE";
          goto LABEL_121;
      }
    }

    else
    {
      switch(v10)
      {
        case 0x2AF8:
          v17 = @"SHORT_SESSION_USAGE";
          goto LABEL_121;
        case 0x2EE0:
          v17 = @"LONG_SESSION_USAGE";
          goto LABEL_121;
        case 0x32C8:
          v17 = @"SESSIONLESS_USAGE";
LABEL_121:
          *buf = 138412802;
          v86 = v16;
          v87 = 2112;
          v88 = v17;
          v89 = 2112;
          v90 = v8;
          _os_log_impl(&dword_1AB634000, v13, OS_LOG_TYPE_DEBUG, "logged event type %@, session type %@\nevent: %@", buf, 0x20u);

          goto LABEL_122;
      }
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    goto LABEL_121;
  }

LABEL_123:
  if (v10 != 12000)
  {
    if (v10 != 11000)
    {
      goto LABEL_153;
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v18 = [v8 logMsgStates];
    v19 = [v18 countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (!v19)
    {
      goto LABEL_152;
    }

    v20 = v19;
    v21 = v10;
    v22 = v9;
    v23 = *v79;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v79 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v78 + 1) + 8 * i);
        if ([v25 hasCarPlay])
        {
          v26 = [v25 carPlay];
          v27 = [v26 isConnected];

          if (v27)
          {
            v36 = +[GEOAPSharedStateData sharedData];
            if ([v36 mapsInOfflineMode])
            {
              v37 = 229;
            }

            else
            {
              v37 = 23;
            }

            v38 = +[GEOAPServiceManager sharedManager];
            v39 = +[GEOAPUtils GEOAPApplicationIdentifier];
            [v38 reportDailyUsageCountType:v37 usageString:0 usageBool:0 appId:v39];

            goto LABEL_150;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v78 objects:v84 count:16];
      if (v20)
      {
        continue;
      }

      goto LABEL_151;
    }
  }

  v28 = [v8 networkEvent];
  v29 = [v28 requestAppIdentifier];
  v30 = *MEMORY[0x1E69A1A78];
  v31 = [v29 isEqualToString:*MEMORY[0x1E69A1A78]];

  if (!v31)
  {
    goto LABEL_153;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v18 = [v8 logMsgStates];
  v32 = [v18 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v32)
  {
    v33 = v32;
    v21 = v10;
    v22 = v9;
    v34 = *v75;
    while (2)
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v75 != v34)
        {
          objc_enumerationMutation(v18);
        }

        if ([*(*(&v74 + 1) + 8 * j) hasPairedDevice])
        {
          v38 = +[GEOAPServiceManager sharedManager];
          [v38 reportDailyUsageCountType:34 usageString:0 usageBool:0 appId:v30];
LABEL_150:

          goto LABEL_151;
        }
      }

      v33 = [v18 countByEnumeratingWithState:&v74 objects:v83 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }

LABEL_151:
    v9 = v22;
    v10 = v21;
  }

LABEL_152:

LABEL_153:
  if ([v8 eventType] == 1)
  {
    v66 = v9;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v40 = [v8 logMsgStates];
    v41 = [v40 countByEnumeratingWithState:&v70 objects:v82 count:16];
    if (!v41)
    {
      goto LABEL_174;
    }

    v42 = v41;
    v43 = *v71;
    while (1)
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v71 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v70 + 1) + 8 * k);
        if ([v45 hasMapSettings])
        {
          v46 = [v45 mapSettings];
          if ([v46 hasLocationType])
          {
            v47 = [v45 mapSettings];
            v48 = [v47 locationType];

            if (v48 == 3)
            {
              v49 = 24;
LABEL_169:
              v50 = +[GEOAPServiceManager sharedManager];
              v51 = +[GEOAPUtils GEOAPApplicationIdentifier];
              [v50 reportDailyUsageCountType:v49 usageString:0 usageBool:0 appId:v51];
              goto LABEL_170;
            }
          }

          else
          {
          }
        }

        if (![v45 hasSearchResults])
        {
          continue;
        }

        v50 = [v45 searchResults];
        if (![v50 includesEnrichedResult])
        {
          goto LABEL_171;
        }

        v51 = [v8 userActionEvent];
        if ([v51 userActionEventAction] == 2015)
        {
          v52 = [v8 userActionEvent];
          v53 = [v52 userActionEventTarget];

          if (v53 != 101)
          {
            continue;
          }

          v49 = 175;
          goto LABEL_169;
        }

LABEL_170:

LABEL_171:
      }

      v42 = [v40 countByEnumeratingWithState:&v70 objects:v82 count:16];
      if (!v42)
      {
LABEL_174:

        v54 = [v8 userActionEvent];
        if ([v54 userActionEventAction] == 19)
        {

          v9 = v66;
          goto LABEL_185;
        }

        v60 = [v8 userActionEvent];
        v61 = [v60 userActionEventAction];

        v9 = v66;
        if (v61 == 2196)
        {
LABEL_185:
          v55 = [a1 captureQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __74__GEOAPPortal_reportLogMsgEvent_uploadBatchId_completion_completionQueue___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = a1;
          dispatch_async(v55, block);
          goto LABEL_186;
        }

        goto LABEL_187;
      }
    }
  }

  if ([v8 eventType] == 25)
  {
    v55 = [v8 clientAcSuggestions];
    if ((-[NSObject keypressStatus](v55, "keypressStatus") == 1 || -[NSObject trigger](v55, "trigger") == 2) && [a1 permittedToCountAC])
    {
      v56 = +[GEOAPSharedStateData sharedData];
      if ([v56 mapsInOfflineMode])
      {
        v57 = 228;
      }

      else
      {
        v57 = 22;
      }

      v58 = +[GEOAPServiceManager sharedManager];
      v59 = +[GEOAPUtils GEOAPApplicationIdentifier];
      [v58 reportDailyUsageCountType:v57 usageString:0 usageBool:0 appId:v59];
    }

LABEL_186:
  }

LABEL_187:
  v62 = objc_alloc_init(MEMORY[0x1E69A1E88]);
  [v62 setLogMessageType:v10];
  [GEOAPPortal populateCommonEventValues:v8];
  [v8 clearSensitiveFields:0];
  [v62 addLogMsgEvent:v8];
  v63 = +[GEOAPServiceManager sharedManager];
  v64 = [v62 data];
  [v63 reportLogMsg:v64 uploadBatchId:v68 completion:v9];

  v65 = *MEMORY[0x1E69E9840];
}

+ (BOOL)permittedToCountAC
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *&permittedToCountAC_windowStart + 10.0;
  if (*&permittedToCountAC_windowStart + 10.0 <= Current)
  {
    permittedToCountAC_windowStart = *&Current;
  }

  return v3 <= Current;
}

+ (void)captureWifiProbeWithWifiConnectionQuality:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v61 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __123__GEOAPPortal_captureWifiProbeWithWifiConnectionQuality_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v55[3] = &unk_1E7959478;
  v16 = v15;
  v57 = v16;
  v17 = v14;
  v56 = v17;
  v18 = MEMORY[0x1AC5A12F0](v55);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_21;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 platformDiagAndUsage];

  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = +[GEOAPServiceManager sharedManager];
  v22 = [v21 eventCollectionIsDisabledForCurrentProcess];

  if (v22)
  {
    v23 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v60 = v24;
      _os_log_impl(&dword_1AB634000, v23, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (v13)
  {
    [v13 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v25 != 0.0 && v25 >= arc4random() / 4294967300.0)
  {
LABEL_21:
    v18[2](v18);
    goto LABEL_22;
  }

  v48 = v11;
  v47 = +[GEOAPStateFactory sharedFactory];
  v46 = v12;
  if ([v12 count])
  {
    v44 = v16;
    v45 = v13;
    v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v27 = v12;
    v28 = [v27 countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v52;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v52 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v51 + 1) + 8 * i);
          v33 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v32, "stateType", v44, v45)}];
          [v26 setObject:v32 forKeyedSubscript:v33];
        }

        v29 = [v27 countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v29);
    }

    v34 = [v26 copy];
    v16 = v44;
    v13 = v45;
  }

  else
  {
    v34 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v47, "logMsgStateTypeForType:", 1)}];
    v38 = [v34 objectForKeyedSubscript:v36];
    if (!v38)
    {
      v38 = [v47 stateForType:1];
    }

    v37 = v38;
  }

  v12 = v46;
  v39 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v39 setEventType:31];
  v40 = objc_alloc_init(MEMORY[0x1E69A1FF0]);
  [v39 setWifiConnectionQualityProbeEvent:v40];

  v41 = [v39 wifiConnectionQualityProbeEvent];
  [v41 setWifiConnectionQuality:v48];

  if (v37)
  {
    [v39 addLogMsgState:v37];
  }

  v42 = [GEOAPStateFactory sharedFactory:v44];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __123__GEOAPPortal_captureWifiProbeWithWifiConnectionQuality_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_121;
  v49[3] = &unk_1E7953A00;
  v50 = v39;
  v43 = v39;
  [v42 sessionStateForType:7 callback:v49];

  v18[2](v18);
  v11 = v48;
LABEL_22:

  v35 = *MEMORY[0x1E69E9840];
}

void __123__GEOAPPortal_captureWifiProbeWithWifiConnectionQuality_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

void __123__GEOAPPortal_captureWifiProbeWithWifiConnectionQuality_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_121(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    [*(a1 + 32) addLogMsgState:v7];
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) description];
  v5 = [v4 dataUsingEncoding:4];

  v6 = +[GEOAPServiceManager sharedManager];
  [v6 logToDiagAndUsageUnderBugId:@"233" filePrefix:@"WiFiConnectionQuality" logData:v5];

  objc_autoreleasePoolPop(v3);
  GEOConfigGetUint64();
  [GEOAPPortal reportLogMsgEvent:*(a1 + 32) uploadBatchId:GEOMakeGEOAPBatchID() completion:0 completionQueue:0];
}

+ (void)captureWidgetInteractionWithMapsWidgetType:(int)a3 endState:(int)a4 lockedMode:(id)a5 localHour:(id)a6 localDayOfWeek:(id)a7 duration:(id)a8 mapsNearbyWidget:(id)a9 mapsTransitWidget:(id)a10 mapsDestinationsWidget:(id)a11 additionalStates:(id)a12 providedDropRate:(id)a13 completionQueue:(id)a14 completionBlock:(id)a15
{
  v133 = *MEMORY[0x1E69E9840];
  v120 = a5;
  v18 = a6;
  v116 = a7;
  v114 = a8;
  v19 = a9;
  v119 = a10;
  v118 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v23 = a15;
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = __236__GEOAPPortal_captureWidgetInteractionWithMapsWidgetType_endState_lockedMode_localHour_localDayOfWeek_duration_mapsNearbyWidget_mapsTransitWidget_mapsDestinationsWidget_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v127[3] = &unk_1E7959478;
  v24 = v23;
  v129 = v24;
  v25 = v22;
  v128 = v25;
  v26 = MEMORY[0x1AC5A12F0](v127);
  v112 = v24;
  v113 = v21;
  if (GEOConfigGetBOOL())
  {
    v26[2](v26);
    v27 = v120;
LABEL_9:
    v34 = v114;
    v33 = v116;
    goto LABEL_10;
  }

  v110 = v19;
  v111 = v18;
  v28 = +[GEOAPServiceManager sharedManager];
  v29 = [v28 platformDiagAndUsage];

  if ((v29 & 1) == 0)
  {
    v26[2](v26);
    v27 = v120;
    v19 = v110;
    goto LABEL_9;
  }

  v30 = +[GEOAPServiceManager sharedManager];
  v31 = [v30 eventCollectionIsDisabledForCurrentProcess];

  if (v31)
  {
    v32 = GEOGetGEOAPPortalAnalyticsLog();
    v27 = v120;
    v34 = v114;
    v33 = v116;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v35 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v132 = v35;
      _os_log_impl(&dword_1AB634000, v32, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_25;
  }

  if (v21)
  {
    [v21 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  v27 = v120;
  v34 = v114;
  v33 = v116;
  if (v37 != 0.0 && v37 >= arc4random() / 4294967300.0)
  {
LABEL_25:
    v26[2](v26);
    v19 = v110;
    goto LABEL_10;
  }

  v38 = +[GEOAPStateFactory sharedFactory];
  v98 = v38;
  v90 = v20;
  if ([v20 count])
  {
    v39 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v20, "count")}];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v40 = v20;
    v41 = [v40 countByEnumeratingWithState:&v123 objects:v130 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v124;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v124 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v123 + 1) + 8 * i);
          v46 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v45, "stateType")}];
          [v39 setObject:v45 forKeyedSubscript:v46];
        }

        v42 = [v40 countByEnumeratingWithState:&v123 objects:v130 count:16];
      }

      while (v42);
    }

    v107 = [v39 copy];
    v27 = v120;
    v18 = v111;
    v34 = v114;
    v33 = v116;
    v38 = v98;
  }

  else
  {
    v107 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v47 = 0;
    v117 = 0;
  }

  else
  {
    v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 65)}];
    v117 = [v107 objectForKeyedSubscript:v47];
    if (!v117)
    {
      v117 = [v38 stateForType:65];
    }
  }

  if (GEOConfigGetBOOL())
  {
    v115 = 0;
  }

  else
  {
    v48 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 5)}];

    v115 = [v107 objectForKeyedSubscript:v48];
    if (!v115)
    {
      v115 = [v38 stateForType:5];
    }

    v47 = v48;
  }

  if (GEOConfigGetBOOL())
  {
    v106 = 0;
  }

  else
  {
    v49 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 15)}];

    v106 = [v107 objectForKeyedSubscript:v49];
    if (!v106)
    {
      v106 = [v38 stateForType:15];
    }

    v47 = v49;
  }

  if (GEOConfigGetBOOL())
  {
    v97 = 0;
  }

  else
  {
    v50 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 35)}];

    v51 = [v107 objectForKeyedSubscript:v50];
    if (!v51)
    {
      v51 = [v38 stateForType:35];
    }

    v97 = v51;
    v47 = v50;
  }

  if (GEOConfigGetBOOL())
  {
    v105 = 0;
  }

  else
  {
    v52 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 30)}];

    v105 = [v107 objectForKeyedSubscript:v52];
    if (!v105)
    {
      v105 = [v38 stateForType:30];
    }

    v47 = v52;
  }

  if (GEOConfigGetBOOL())
  {
    v104 = 0;
  }

  else
  {
    v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 1)}];

    v104 = [v107 objectForKeyedSubscript:v53];
    if (!v104)
    {
      v104 = [v38 stateForType:1];
    }

    v47 = v53;
  }

  if (GEOConfigGetBOOL())
  {
    v96 = 0;
  }

  else
  {
    v54 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 3)}];

    v55 = [v107 objectForKeyedSubscript:v54];
    if (!v55)
    {
      v55 = [v38 stateForType:3];
    }

    v96 = v55;
    v47 = v54;
  }

  if (GEOConfigGetBOOL())
  {
    v103 = 0;
  }

  else
  {
    v56 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 64)}];

    v103 = [v107 objectForKeyedSubscript:v56];
    if (!v103)
    {
      v103 = [v38 stateForType:64];
    }

    v47 = v56;
  }

  if (GEOConfigGetBOOL())
  {
    v95 = 0;
  }

  else
  {
    v57 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 13)}];

    v58 = [v107 objectForKeyedSubscript:v57];
    if (!v58)
    {
      v58 = [v38 stateForType:13];
    }

    v95 = v58;
    v47 = v57;
  }

  if (GEOConfigGetBOOL())
  {
    v94 = 0;
  }

  else
  {
    v59 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 14)}];

    v60 = [v107 objectForKeyedSubscript:v59];
    if (!v60)
    {
      v60 = [v38 stateForType:14];
    }

    v94 = v60;
    v47 = v59;
  }

  if (GEOConfigGetBOOL())
  {
    v93 = 0;
  }

  else
  {
    v61 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 9)}];

    v62 = [v107 objectForKeyedSubscript:v61];
    if (!v62)
    {
      v62 = [v38 stateForType:9];
    }

    v93 = v62;
    v47 = v61;
  }

  if (GEOConfigGetBOOL())
  {
    v92 = 0;
  }

  else
  {
    v63 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 10)}];

    v64 = [v107 objectForKeyedSubscript:v63];
    if (!v64)
    {
      v64 = [v38 stateForType:10];
    }

    v92 = v64;
    v47 = v63;
  }

  if (GEOConfigGetBOOL())
  {
    v102 = 0;
  }

  else
  {
    v65 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 20)}];

    v102 = [v107 objectForKeyedSubscript:v65];
    if (!v102)
    {
      v102 = [v38 stateForType:20];
    }

    v47 = v65;
  }

  if (GEOConfigGetBOOL())
  {
    v91 = 0;
  }

  else
  {
    v66 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 42)}];

    v91 = [v107 objectForKeyedSubscript:v66];
    if (!v91)
    {
      v91 = [v38 stateForType:42];
    }

    v47 = v66;
  }

  if (GEOConfigGetBOOL())
  {
    v101 = 0;
  }

  else
  {
    v67 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 7)}];

    v101 = [v107 objectForKeyedSubscript:v67];
    if (!v101)
    {
      v101 = [v38 stateForType:7];
    }

    v47 = v67;
  }

  if (GEOConfigGetBOOL())
  {
    v100 = 0;
  }

  else
  {
    v68 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 17)}];

    v100 = [v107 objectForKeyedSubscript:v68];
    if (!v100)
    {
      v100 = [v38 stateForType:17];
    }

    v47 = v68;
  }

  if (GEOConfigGetBOOL())
  {
    v69 = 0;
  }

  else
  {
    v70 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "logMsgStateTypeForType:", 19)}];

    v71 = [v107 objectForKeyedSubscript:v70];
    if (v71)
    {
      v47 = v70;
      v69 = v71;
    }

    else
    {
      v69 = [v38 stateForType:19];
      v47 = v70;
    }
  }

  if (GEOConfigGetBOOL())
  {
    v99 = 0;
  }

  else
  {
    v72 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v98, "logMsgStateTypeForType:", 27)}];

    v99 = [v107 objectForKeyedSubscript:v72];
    if (!v99)
    {
      v99 = [v98 stateForType:27];
    }

    v47 = v72;
    v27 = v120;
  }

  v73 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v73 setEventType:13];
  v74 = objc_alloc_init(MEMORY[0x1E69A1F28]);
  [v73 setMapsWidgetsInteractionSession:v74];

  v75 = [v73 mapsWidgetsInteractionSession];
  [v75 setMapsWidgetType:a3];

  v76 = [v73 mapsWidgetsInteractionSession];
  [v76 setEndState:a4];

  if (v27)
  {
    v77 = [v27 BOOLValue];
    v78 = [v73 mapsWidgetsInteractionSession];
    [v78 setLockedMode:v77];

    v18 = v111;
  }

  if (v18)
  {
    v79 = [v18 integerValue];
    v80 = [v73 mapsWidgetsInteractionSession];
    [v80 setLocalHour:v79];
  }

  if (v33)
  {
    v81 = [v33 integerValue];
    v82 = [v73 mapsWidgetsInteractionSession];
    [v82 setLocalDayOfWeek:v81];
  }

  if (v34)
  {
    v83 = [v34 integerValue];
    v84 = [v73 mapsWidgetsInteractionSession];
    [v84 setDuration:v83];
  }

  v85 = [v73 mapsWidgetsInteractionSession];
  [v85 setMapsNearbyWidget:v110];

  v86 = [v73 mapsWidgetsInteractionSession];
  [v86 setMapsTransitWidget:v119];

  v87 = [v73 mapsWidgetsInteractionSession];
  [v87 setMapsDestinationsWidget:v118];

  if (v101)
  {
    [v73 addLogMsgState:?];
  }

  if (v97)
  {
    [v73 addLogMsgState:?];
  }

  if (v115)
  {
    [v73 addLogMsgState:v115];
  }

  if (v104)
  {
    [v73 addLogMsgState:?];
  }

  if (v96)
  {
    [v73 addLogMsgState:?];
  }

  if (v105)
  {
    [v73 addLogMsgState:v105];
  }

  if (v117)
  {
    [v73 addLogMsgState:v117];
  }

  if (v102)
  {
    [v73 addLogMsgState:?];
  }

  if (v95)
  {
    [v73 addLogMsgState:?];
  }

  if (v94)
  {
    [v73 addLogMsgState:?];
  }

  if (v93)
  {
    [v73 addLogMsgState:?];
  }

  if (v92)
  {
    [v73 addLogMsgState:?];
  }

  if (v103)
  {
    [v73 addLogMsgState:v103];
  }

  if (v106)
  {
    [v73 addLogMsgState:v106];
  }

  if (v100)
  {
    [v73 addLogMsgState:?];
  }

  if (v69)
  {
    [v73 addLogMsgState:v69];
  }

  if (v99)
  {
    [v73 addLogMsgState:v99];
  }

  if (v91)
  {
    [v73 addLogMsgState:v91];
  }

  v88 = +[GEOAPStateFactory sharedFactory];
  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __236__GEOAPPortal_captureWidgetInteractionWithMapsWidgetType_endState_lockedMode_localHour_localDayOfWeek_duration_mapsNearbyWidget_mapsTransitWidget_mapsDestinationsWidget_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_119;
  v121[3] = &unk_1E7953A00;
  v89 = v73;
  v122 = v89;
  [v88 sessionStateForType:5 callback:v121];

  v26[2](v26);
  v19 = v110;
  v18 = v111;
  v20 = v90;
  v27 = v120;
LABEL_10:

  v36 = *MEMORY[0x1E69E9840];
}

void __236__GEOAPPortal_captureWidgetInteractionWithMapsWidgetType_endState_lockedMode_localHour_localDayOfWeek_duration_mapsNearbyWidget_mapsTransitWidget_mapsDestinationsWidget_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __236__GEOAPPortal_captureWidgetInteractionWithMapsWidgetType_endState_lockedMode_localHour_localDayOfWeek_duration_mapsNearbyWidget_mapsTransitWidget_mapsDestinationsWidget_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_119(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureVlfUsageWithEntryPoint:(id)a3 sessionTimeMs:(id)a4 timeRoundedToHour:(id)a5 localizationDetails:(id)a6 finalState:(int)a7 postFusionCorrection:(id)a8 initialPositionContextClassification:(GEOVLFPositionContextClassification *)a9 initialLocation:(id)a10 initializationFailureDetails:(id)a11 arStates:(id)a12 deviceOrientations:(id)a13 crowdsourcingDetails:(id)a14 arFailureTypes:(id)a15 additionalStates:(id)a16 providedDropRate:(id)a17 completionQueue:(id)a18 completionBlock:(id)a19
{
  v164 = *MEMORY[0x1E69E9840];
  v134 = a3;
  v133 = a4;
  v23 = a5;
  v135 = a6;
  v132 = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v131 = a16;
  v136 = a17;
  v30 = a18;
  v31 = a19;
  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 3221225472;
  v156[2] = __341__GEOAPPortal_captureVlfUsageWithEntryPoint_sessionTimeMs_timeRoundedToHour_localizationDetails_finalState_postFusionCorrection_initialPositionContextClassification_initialLocation_initializationFailureDetails_arStates_deviceOrientations_crowdsourcingDetails_arFailureTypes_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v156[3] = &unk_1E7959478;
  v32 = v31;
  v158 = v32;
  v33 = v30;
  v157 = v33;
  v34 = MEMORY[0x1AC5A12F0](v156);
  if (GEOConfigGetBOOL())
  {
LABEL_2:
    v34[2](v34);
    goto LABEL_83;
  }

  v126 = v34;
  v129 = v33;
  v130 = v23;
  v35 = +[GEOAPServiceManager sharedManager];
  v36 = [v35 eventCollectionIsDisabledForCurrentProcess];

  if (v36)
  {
    v37 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = GEOApplicationIdentifierOrProcessName();
      LODWORD(buf.var0) = 138412290;
      *(&buf.var0 + 4) = v38;
      _os_log_impl(&dword_1AB634000, v37, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", &buf, 0xCu);
    }

    v34[2](v34);
    v33 = v129;
    v23 = v130;
  }

  else
  {
    if (v136)
    {
      [v136 doubleValue];
    }

    else
    {
      GEOConfigGetDouble();
    }

    v33 = v129;
    v23 = v130;
    if (v39 != 0.0 && v39 >= arc4random() / 4294967300.0)
    {
      goto LABEL_2;
    }

    v114 = v32;
    v118 = +[GEOAPStateFactory sharedFactory];
    v121 = v26;
    v122 = v25;
    v119 = v28;
    v120 = v27;
    v115 = v29;
    v123 = v24;
    if ([v131 count])
    {
      v40 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v131, "count")}];
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      v41 = v131;
      v42 = [v41 countByEnumeratingWithState:&v152 objects:v163 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v153;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v153 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v152 + 1) + 8 * i);
            v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "stateType")}];
            [v40 setObject:v46 forKeyedSubscript:v47];
          }

          v43 = [v41 countByEnumeratingWithState:&v152 objects:v163 count:16];
        }

        while (v43);
      }

      v48 = [v40 copy];
      v49 = v133;
      v23 = v130;
    }

    else
    {
      v48 = 0;
      v49 = v133;
    }

    if (GEOConfigGetBOOL())
    {
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v118, "logMsgStateTypeForType:", 30)}];
      v52 = [v48 objectForKeyedSubscript:v51];
      if (!v52)
      {
        v52 = [v118 stateForType:30];
      }

      v50 = v52;
    }

    if (GEOConfigGetBOOL())
    {
      v125 = 0;
    }

    else
    {
      v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v118, "logMsgStateTypeForType:", 1)}];

      v125 = [v48 objectForKeyedSubscript:v53];
      if (!v125)
      {
        v125 = [v118 stateForType:1];
      }

      v51 = v53;
    }

    if (GEOConfigGetBOOL())
    {
      v124 = 0;
    }

    else
    {
      v54 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v118, "logMsgStateTypeForType:", 3)}];

      v124 = [v48 objectForKeyedSubscript:v54];
      if (!v124)
      {
        v124 = [v118 stateForType:3];
      }

      v51 = v54;
    }

    if (GEOConfigGetBOOL())
    {
      v116 = 0;
    }

    else
    {
      v55 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v118, "logMsgStateTypeForType:", 42)}];

      v116 = [v48 objectForKeyedSubscript:v55];
      if (!v116)
      {
        v116 = [v118 stateForType:42];
      }

      v51 = v55;
    }

    v56 = objc_alloc_init(MEMORY[0x1E69A1E90]);
    [v56 setEventType:48];
    v57 = objc_alloc_init(MEMORY[0x1E69A1FE8]);
    [v56 setVlfUsage:v57];

    v58 = [v56 vlfUsage];
    [v58 setEntryPoint:v134];

    if (v49)
    {
      v59 = [v49 unsignedLongLongValue];
      v60 = [v56 vlfUsage];
      [v60 setSessionTimeMs:v59];

      v23 = v130;
    }

    v112 = v51;
    if (v23)
    {
      v61 = [v23 unsignedLongLongValue];
      v62 = [v56 vlfUsage];
      [v62 setTimeRoundedToHour:v61];
    }

    v117 = v50;
    v63 = [v56 vlfUsage];
    v64 = [v63 localizationDetails];

    if (!v64)
    {
      v65 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v135, "count")}];
      v66 = [v56 vlfUsage];
      [v66 setLocalizationDetails:v65];
    }

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v67 = v135;
    v68 = [v67 countByEnumeratingWithState:&v148 objects:v162 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v149;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v149 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = *(*(&v148 + 1) + 8 * j);
          v73 = [v56 vlfUsage];
          v74 = [v73 localizationDetails];
          v75 = [v72 copy];
          [v74 addObject:v75];
        }

        v69 = [v67 countByEnumeratingWithState:&v148 objects:v162 count:16];
      }

      while (v69);
    }

    v76 = [v56 vlfUsage];
    [v76 setFinalState:a7];

    v77 = [v56 vlfUsage];
    [v77 setPostFusionCorrection:v132];

    v147 = *a9;
    v78 = [v56 vlfUsage];
    buf = v147;
    [v78 setInitialPositionContextClassification:&buf];

    v79 = [v56 vlfUsage];
    [v79 setInitialLocation:v123];

    v80 = [v56 vlfUsage];
    [v80 setInitializationFailureDetails:v122];

    v81 = [v56 vlfUsage];
    v82 = [v81 arStates];

    if (!v82)
    {
      v83 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v121, "count")}];
      v84 = [v56 vlfUsage];
      [v84 setArStates:v83];
    }

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v85 = v121;
    v86 = [v85 countByEnumeratingWithState:&v143 objects:v160 count:16];
    v32 = v114;
    if (v86)
    {
      v87 = v86;
      v88 = *v144;
      do
      {
        for (k = 0; k != v87; ++k)
        {
          if (*v144 != v88)
          {
            objc_enumerationMutation(v85);
          }

          v90 = *(*(&v143 + 1) + 8 * k);
          v91 = [v56 vlfUsage];
          v92 = [v91 arStates];
          v93 = [v90 copy];
          [v92 addObject:v93];
        }

        v87 = [v85 countByEnumeratingWithState:&v143 objects:v160 count:16];
      }

      while (v87);
    }

    v94 = [v56 vlfUsage];
    v95 = [v94 deviceOrientations];

    if (!v95)
    {
      v96 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v120, "count")}];
      v97 = [v56 vlfUsage];
      [v97 setDeviceOrientations:v96];
    }

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v98 = v120;
    v99 = [v98 countByEnumeratingWithState:&v139 objects:v159 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v140;
      do
      {
        for (m = 0; m != v100; ++m)
        {
          if (*v140 != v101)
          {
            objc_enumerationMutation(v98);
          }

          v103 = *(*(&v139 + 1) + 8 * m);
          v104 = [v56 vlfUsage];
          v105 = [v104 deviceOrientations];
          v106 = [v103 copy];
          [v105 addObject:v106];
        }

        v100 = [v98 countByEnumeratingWithState:&v139 objects:v159 count:16];
      }

      while (v100);
    }

    v107 = [v56 vlfUsage];
    [v107 setCrowdsourcingDetails:v119];

    v108 = [v56 vlfUsage];
    v29 = v115;
    [v108 setArFailureTypes:v115];

    if (v117)
    {
      [v56 addLogMsgState:?];
    }

    v24 = v123;
    v27 = v120;
    v26 = v121;
    if (v125)
    {
      [v56 addLogMsgState:?];
    }

    if (v124)
    {
      [v56 addLogMsgState:v124];
    }

    v128 = v48;
    if (v116)
    {
      [v56 addLogMsgState:v116];
    }

    v109 = +[GEOAPStateFactory sharedFactory];
    v137[0] = MEMORY[0x1E69E9820];
    v137[1] = 3221225472;
    v137[2] = __341__GEOAPPortal_captureVlfUsageWithEntryPoint_sessionTimeMs_timeRoundedToHour_localizationDetails_finalState_postFusionCorrection_initialPositionContextClassification_initialLocation_initializationFailureDetails_arStates_deviceOrientations_crowdsourcingDetails_arFailureTypes_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_117;
    v137[3] = &unk_1E7953A00;
    v138 = v56;
    v110 = v56;
    [v109 sessionStateForType:7 callback:v137];

    v34 = v126;
    v126[2](v126);

    v33 = v129;
    v23 = v130;
    v28 = v119;
    v25 = v122;
  }

LABEL_83:

  v111 = *MEMORY[0x1E69E9840];
}

void __341__GEOAPPortal_captureVlfUsageWithEntryPoint_sessionTimeMs_timeRoundedToHour_localizationDetails_finalState_postFusionCorrection_initialPositionContextClassification_initialLocation_initializationFailureDetails_arStates_deviceOrientations_crowdsourcingDetails_arFailureTypes_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __341__GEOAPPortal_captureVlfUsageWithEntryPoint_sessionTimeMs_timeRoundedToHour_localizationDetails_finalState_postFusionCorrection_initialPositionContextClassification_initialLocation_initializationFailureDetails_arStates_deviceOrientations_crowdsourcingDetails_arFailureTypes_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_117(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureUgcDeleteLogsWithCertificates:(id)a3 signature:(id)a4 trigger:(int)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9
{
  v92 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __136__GEOAPPortal_captureUgcDeleteLogsWithCertificates_signature_trigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v85[3] = &unk_1E7959478;
  v20 = v19;
  v87 = v20;
  v21 = v18;
  v86 = v21;
  v22 = MEMORY[0x1AC5A12F0](v85);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v74 = a5;
  v23 = +[GEOAPServiceManager sharedManager];
  v24 = [v23 eventCollectionIsDisabledForCurrentProcess];

  if (v24)
  {
    v25 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v91 = v26;
      _os_log_impl(&dword_1AB634000, v25, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v17)
  {
    [v17 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v27 != 0.0 && v27 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v22[2](v22);
    goto LABEL_21;
  }

  v28 = +[GEOAPStateFactory sharedFactory];
  v72 = v15;
  v73 = v14;
  v70 = v28;
  v67 = v17;
  v68 = v16;
  v66 = v20;
  if ([v16 count])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v30 = v16;
    v31 = [v30 countByEnumeratingWithState:&v81 objects:v89 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v82;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v82 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v81 + 1) + 8 * i);
          v36 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v35, "stateType")}];
          [v29 setObject:v35 forKeyedSubscript:v36];
        }

        v32 = [v30 countByEnumeratingWithState:&v81 objects:v89 count:16];
      }

      while (v32);
    }

    v37 = [v29 copy];
    v28 = v70;
  }

  else
  {
    v37 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v39 = 0;
    v69 = 0;
  }

  else
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v28, "logMsgStateTypeForType:", 29)}];
    v69 = [v37 objectForKeyedSubscript:v39];
    if (!v69)
    {
      v69 = [v28 stateForType:29];
    }
  }

  if (GEOConfigGetBOOL())
  {
    v40 = 0;
  }

  else
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v28, "logMsgStateTypeForType:", 1)}];

    v40 = [v37 objectForKeyedSubscript:v41];
    if (!v40)
    {
      v40 = [v28 stateForType:1];
    }

    v39 = v41;
  }

  v71 = v40;
  v65 = v37;
  if (GEOConfigGetBOOL())
  {
    v63 = 0;
  }

  else
  {
    v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v28, "logMsgStateTypeForType:", 3)}];

    v43 = [v37 objectForKeyedSubscript:v42];
    if (!v43)
    {
      v43 = [v28 stateForType:3];
    }

    v63 = v43;
    v39 = v42;
  }

  v64 = v39;
  v44 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v44 setEventType:49];
  v45 = objc_alloc_init(MEMORY[0x1E69A1F08]);
  [v44 setLogDiscard:v45];

  v46 = [v44 logDiscard];
  v47 = [v46 certificates];

  if (!v47)
  {
    v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v73, "count")}];
    v49 = [v44 logDiscard];
    [v49 setCertificates:v48];
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v50 = v73;
  v51 = [v50 countByEnumeratingWithState:&v77 objects:v88 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v78;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v78 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v77 + 1) + 8 * j);
        v56 = [v44 logDiscard];
        v57 = [v56 certificates];
        v58 = [v55 copy];
        [v57 addObject:v58];
      }

      v52 = [v50 countByEnumeratingWithState:&v77 objects:v88 count:16];
    }

    while (v52);
  }

  v59 = [v44 logDiscard];
  [v59 setSignature:v72];

  v60 = [v44 logDiscard];
  [v60 setTrigger:v74];

  if (v69)
  {
    [v44 addLogMsgState:v69];
  }

  v17 = v67;
  v16 = v68;
  v20 = v66;
  if (v71)
  {
    [v44 addLogMsgState:?];
  }

  if (v63)
  {
    [v44 addLogMsgState:v63];
  }

  v61 = +[GEOAPStateFactory sharedFactory];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __136__GEOAPPortal_captureUgcDeleteLogsWithCertificates_signature_trigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_115;
  v75[3] = &unk_1E7953A00;
  v76 = v44;
  v62 = v44;
  [v61 sessionStateForType:15 callback:v75];

  v22[2](v22);
  v15 = v72;
  v14 = v73;
LABEL_21:

  v38 = *MEMORY[0x1E69E9840];
}

void __136__GEOAPPortal_captureUgcDeleteLogsWithCertificates_signature_trigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __136__GEOAPPortal_captureUgcDeleteLogsWithCertificates_signature_trigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_115(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureTtlInitialTimeWithTravelTime:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v68 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __117__GEOAPPortal_captureTtlInitialTimeWithTravelTime_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v62[3] = &unk_1E7959478;
  v16 = v15;
  v64 = v16;
  v17 = v14;
  v63 = v17;
  v18 = MEMORY[0x1AC5A12F0](v62);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_21;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 platformDiagAndUsage];

  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = +[GEOAPServiceManager sharedManager];
  v22 = [v21 eventCollectionIsDisabledForCurrentProcess];

  if (v22)
  {
    v23 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v67 = v24;
      _os_log_impl(&dword_1AB634000, v23, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (v13)
  {
    [v13 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v25 != 0.0 && v25 >= arc4random() / 4294967300.0)
  {
LABEL_21:
    v18[2](v18);
    goto LABEL_22;
  }

  v54 = +[GEOAPStateFactory sharedFactory];
  v53 = v12;
  if ([v12 count])
  {
    v50 = v16;
    v51 = v11;
    v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = v12;
    v28 = [v27 countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v59;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v59 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v58 + 1) + 8 * i);
          v33 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v32, "stateType")}];
          [v26 setObject:v32 forKeyedSubscript:v33];
        }

        v29 = [v27 countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v29);
    }

    v55 = [v26 copy];
    v11 = v51;
    v16 = v50;
  }

  else
  {
    v55 = 0;
  }

  v35 = v54;
  if (GEOConfigGetBOOL())
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v54, "logMsgStateTypeForType:", 1)}];
    v38 = [v55 objectForKeyedSubscript:v36];
    if (!v38)
    {
      v38 = [v54 stateForType:1];
    }

    v37 = v38;
  }

  if (GEOConfigGetBOOL())
  {
    v52 = v36;
    v39 = 0;
  }

  else
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v54, "logMsgStateTypeForType:", 3)}];

    v41 = [v55 objectForKeyedSubscript:v40];
    if (!v41)
    {
      v41 = [v54 stateForType:3];
    }

    v39 = v41;
    v52 = v40;
  }

  v42 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v42 setEventType:11];
  v43 = objc_alloc_init(MEMORY[0x1E69A1FC8]);
  [v42 setTimeToLeaveInitialTravelTimeEvent:v43];

  if (v11)
  {
    [v11 doubleValue];
    v45 = v44;
    [v42 timeToLeaveInitialTravelTimeEvent];
    v47 = v46 = v11;
    [v47 setTravelTime:v45];

    v11 = v46;
    v35 = v54;
  }

  if (v37)
  {
    [v42 addLogMsgState:v37];
  }

  if (v39)
  {
    [v42 addLogMsgState:v39];
  }

  v48 = +[GEOAPStateFactory sharedFactory];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __117__GEOAPPortal_captureTtlInitialTimeWithTravelTime_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_113;
  v56[3] = &unk_1E7953A00;
  v57 = v42;
  v49 = v42;
  [v48 sessionStateForType:7 callback:v56];

  v18[2](v18);
  v12 = v53;
LABEL_22:

  v34 = *MEMORY[0x1E69E9840];
}

void __117__GEOAPPortal_captureTtlInitialTimeWithTravelTime_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __117__GEOAPPortal_captureTtlInitialTimeWithTravelTime_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_113(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureTtlHypothesisWithArrival:(int)a3 departure:(int)a4 ttlUiNotificationShown:(int)a5 earliestArrivalOffset:(id)a6 earliestDepartureOffset:(id)a7 latestArrivalOffset:(id)a8 latestDepartureOffset:(id)a9 numberOfReroutes:(id)a10 additionalStates:(id)a11 providedDropRate:(id)a12 completionQueue:(id)a13 completionBlock:(id)a14
{
  v96 = *MEMORY[0x1E69E9840];
  v16 = a6;
  v17 = a7;
  v83 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __251__GEOAPPortal_captureTtlHypothesisWithArrival_departure_ttlUiNotificationShown_earliestArrivalOffset_earliestDepartureOffset_latestArrivalOffset_latestDepartureOffset_numberOfReroutes_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v90[3] = &unk_1E7959478;
  v24 = v23;
  v92 = v24;
  v25 = v22;
  v91 = v25;
  v26 = MEMORY[0x1AC5A12F0](v90);
  v82 = v21;
  if (!GEOConfigGetBOOL())
  {
    v79 = v25;
    v80 = v24;
    v81 = v17;
    v29 = +[GEOAPServiceManager sharedManager];
    v30 = [v29 platformDiagAndUsage];

    if (v30)
    {
      v31 = +[GEOAPServiceManager sharedManager];
      v32 = [v31 eventCollectionIsDisabledForCurrentProcess];

      if (!v32)
      {
        if (v21)
        {
          [v21 doubleValue];
        }

        else
        {
          GEOConfigGetDouble();
        }

        v27 = v16;
        v17 = v81;
        v25 = v79;
        if (v36 != 0.0 && v36 >= arc4random() / 4294967300.0)
        {
          v26[2](v26);
          goto LABEL_3;
        }

        v75 = +[GEOAPStateFactory sharedFactory];
        v70 = v20;
        if ([v20 count])
        {
          v73 = v18;
          v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v20, "count")}];
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v38 = v20;
          v39 = [v38 countByEnumeratingWithState:&v86 objects:v93 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v87;
            do
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v87 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v86 + 1) + 8 * i);
                v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v43, "stateType")}];
                [v37 setObject:v43 forKeyedSubscript:v44];
              }

              v40 = [v38 countByEnumeratingWithState:&v86 objects:v93 count:16];
            }

            while (v40);
          }

          v45 = [v37 copy];
          v27 = v16;
          v18 = v73;
          v24 = v80;
        }

        else
        {
          v45 = 0;
        }

        v28 = v83;
        if (GEOConfigGetBOOL())
        {
          v72 = 0;
          v74 = 0;
        }

        else
        {
          v72 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v75, "logMsgStateTypeForType:", 1)}];
          v74 = [v45 objectForKeyedSubscript:?];
          if (!v74)
          {
            v74 = [v75 stateForType:1];
          }
        }

        v20 = v70;
        v68 = v45;
        if (GEOConfigGetBOOL())
        {
          v71 = 0;
        }

        else
        {
          v46 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v75, "logMsgStateTypeForType:", 3, v45)}];

          v71 = [v45 objectForKeyedSubscript:v46];
          if (!v71)
          {
            v71 = [v75 stateForType:3];
          }

          v72 = v46;
        }

        v47 = objc_alloc_init(MEMORY[0x1E69A1E90]);
        [v47 setEventType:10];
        v48 = objc_alloc_init(MEMORY[0x1E69A1FC0]);
        [v47 setTimeToLeaveHypothesisEvent:v48];

        v49 = [v47 timeToLeaveHypothesisEvent];
        [v49 setArrival:a3];

        v50 = [v47 timeToLeaveHypothesisEvent];
        [v50 setDeparture:a4];

        v51 = [v47 timeToLeaveHypothesisEvent];
        [v51 setTtlUiNotificationShown:a5];

        if (v27)
        {
          [v27 doubleValue];
          v53 = v52;
          v54 = [v47 timeToLeaveHypothesisEvent];
          [v54 setEarliestArrivalOffset:v53];
        }

        if (v81)
        {
          [v81 doubleValue];
          v56 = v55;
          v57 = [v47 timeToLeaveHypothesisEvent];
          [v57 setEarliestDepartureOffset:v56];
        }

        if (v83)
        {
          [v83 doubleValue];
          v59 = v58;
          v60 = [v47 timeToLeaveHypothesisEvent];
          [v60 setLatestArrivalOffset:v59];
        }

        if (v18)
        {
          [v18 doubleValue];
          v62 = v61;
          v63 = [v47 timeToLeaveHypothesisEvent];
          [v63 setLatestDepartureOffset:v62];
        }

        if (v19)
        {
          v64 = [v19 unsignedLongLongValue];
          v65 = [v47 timeToLeaveHypothesisEvent];
          [v65 setNumberOfReroutes:v64];

          v24 = v80;
        }

        if (v74)
        {
          [v47 addLogMsgState:?];
        }

        if (v71)
        {
          [v47 addLogMsgState:v71];
        }

        v66 = +[GEOAPStateFactory sharedFactory];
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __251__GEOAPPortal_captureTtlHypothesisWithArrival_departure_ttlUiNotificationShown_earliestArrivalOffset_earliestDepartureOffset_latestArrivalOffset_latestDepartureOffset_numberOfReroutes_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_111;
        v84[3] = &unk_1E7953A00;
        v85 = v47;
        v67 = v47;
        [v66 sessionStateForType:7 callback:v84];

        v26[2](v26);
        v17 = v81;
LABEL_11:
        v25 = v79;
        goto LABEL_12;
      }

      v33 = GEOGetGEOAPPortalAnalyticsLog();
      v27 = v16;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v95 = v34;
        _os_log_impl(&dword_1AB634000, v33, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v26[2](v26);
      v17 = v81;
    }

    else
    {
      v26[2](v26);
      v27 = v16;
      v17 = v81;
    }

    v28 = v83;
    goto LABEL_11;
  }

  v26[2](v26);
  v27 = v16;
LABEL_3:
  v28 = v83;
LABEL_12:

  v35 = *MEMORY[0x1E69E9840];
}

void __251__GEOAPPortal_captureTtlHypothesisWithArrival_departure_ttlUiNotificationShown_earliestArrivalOffset_earliestDepartureOffset_latestArrivalOffset_latestDepartureOffset_numberOfReroutes_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __251__GEOAPPortal_captureTtlHypothesisWithArrival_departure_ttlUiNotificationShown_earliestArrivalOffset_earliestDepartureOffset_latestArrivalOffset_latestDepartureOffset_numberOfReroutes_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_111(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureTransitAppLaunchWithBundleIdentifier:(id)a3 source:(id)a4 destination:(id)a5 timestamp:(id)a6 additionalStates:(id)a7 providedDropRate:(id)a8 completionQueue:(id)a9 completionBlock:(id)a10
{
  v79 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __154__GEOAPPortal_captureTransitAppLaunchWithBundleIdentifier_source_destination_timestamp_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v73[3] = &unk_1E7959478;
  v23 = v22;
  v75 = v23;
  v24 = v21;
  v74 = v24;
  v25 = MEMORY[0x1AC5A12F0](v73);
  if (!GEOConfigGetBOOL())
  {
    v65 = v24;
    v66 = v19;
    v27 = +[GEOAPServiceManager sharedManager];
    v28 = [v27 eventCollectionIsDisabledForCurrentProcess];

    if (v28)
    {
      v29 = GEOGetGEOAPPortalAnalyticsLog();
      v26 = v20;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v78 = v30;
        _os_log_impl(&dword_1AB634000, v29, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v25[2](v25);
    }

    else
    {
      v26 = v20;
      if (v20)
      {
        [v20 doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      v24 = v65;
      v19 = v66;
      if (v31 != 0.0 && v31 >= arc4random() / 4294967300.0)
      {
        v25[2](v25);
        goto LABEL_41;
      }

      v63 = +[GEOAPStateFactory sharedFactory];
      v64 = v15;
      if ([v66 count])
      {
        v57 = v23;
        v58 = v18;
        v59 = v17;
        v61 = v16;
        v32 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v66, "count")}];
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v33 = v66;
        v34 = [v33 countByEnumeratingWithState:&v69 objects:v76 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v70;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v70 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v69 + 1) + 8 * i);
              v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "stateType")}];
              [v32 setObject:v38 forKeyedSubscript:v39];
            }

            v35 = [v33 countByEnumeratingWithState:&v69 objects:v76 count:16];
          }

          while (v35);
        }

        v40 = [v32 copy];
        v17 = v59;
        v16 = v61;
        v23 = v57;
        v18 = v58;
        v26 = v20;
      }

      else
      {
        v40 = 0;
      }

      if (GEOConfigGetBOOL())
      {
        v62 = 0;
        v41 = 0;
      }

      else
      {
        v62 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v63, "logMsgStateTypeForType:", 1)}];
        v42 = [v40 objectForKeyedSubscript:?];
        if (!v42)
        {
          v42 = [v63 stateForType:1];
        }

        v41 = v42;
      }

      v60 = v40;
      if (GEOConfigGetBOOL())
      {
        v43 = 0;
      }

      else
      {
        v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v63, "logMsgStateTypeForType:", 3)}];

        v45 = [v40 objectForKeyedSubscript:v44];
        if (!v45)
        {
          v45 = [v63 stateForType:3];
        }

        v43 = v45;
        v62 = v44;
      }

      v46 = objc_alloc_init(MEMORY[0x1E69A1E90]);
      [v46 setEventType:9];
      v47 = objc_alloc_init(MEMORY[0x1E69A1FD0]);
      [v46 setTransitAppLaunchEvent:v47];

      v48 = [v46 transitAppLaunchEvent];
      [v48 setBundleIdentifier:v64];

      v49 = [v46 transitAppLaunchEvent];
      [v49 setSource:v16];

      v50 = [v46 transitAppLaunchEvent];
      [v50 setDestination:v17];

      if (v18)
      {
        [v18 doubleValue];
        v52 = v51;
        v53 = [v46 transitAppLaunchEvent];
        [v53 setTimestamp:v52];
      }

      if (v41)
      {
        [v46 addLogMsgState:v41];
      }

      if (v43)
      {
        [v46 addLogMsgState:v43];
      }

      v54 = +[GEOAPStateFactory sharedFactory];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __154__GEOAPPortal_captureTransitAppLaunchWithBundleIdentifier_source_destination_timestamp_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_109;
      v67[3] = &unk_1E7953A00;
      v68 = v46;
      v55 = v46;
      [v54 sessionStateForType:7 callback:v67];

      v25[2](v25);
      v15 = v64;
    }

    v24 = v65;
    v19 = v66;
    goto LABEL_41;
  }

  v25[2](v25);
  v26 = v20;
LABEL_41:

  v56 = *MEMORY[0x1E69E9840];
}

void __154__GEOAPPortal_captureTransitAppLaunchWithBundleIdentifier_source_destination_timestamp_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __154__GEOAPPortal_captureTransitAppLaunchWithBundleIdentifier_source_destination_timestamp_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_109(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureTelemetricWithTelemetricEntitys:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v87 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __120__GEOAPPortal_captureTelemetricWithTelemetricEntitys_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v80[3] = &unk_1E7959478;
  v16 = v15;
  v82 = v16;
  v17 = v14;
  v81 = v17;
  v18 = MEMORY[0x1AC5A12F0](v80);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_21;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 platformDiagAndUsage];

  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = +[GEOAPServiceManager sharedManager];
  v22 = [v21 eventCollectionIsDisabledForCurrentProcess];

  if (v22)
  {
    v23 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v86 = v24;
      _os_log_impl(&dword_1AB634000, v23, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (v13)
  {
    [v13 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v25 != 0.0 && v25 >= arc4random() / 4294967300.0)
  {
LABEL_21:
    v18[2](v18);
    goto LABEL_22;
  }

  v26 = +[GEOAPStateFactory sharedFactory];
  v67 = v26;
  v68 = v11;
  v64 = v13;
  v65 = v12;
  v63 = v16;
  if ([v12 count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v28 = v12;
    v29 = [v28 countByEnumeratingWithState:&v76 objects:v84 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v77;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v77 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v76 + 1) + 8 * i);
          v34 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v33, "stateType")}];
          [v27 setObject:v33 forKeyedSubscript:v34];
        }

        v30 = [v28 countByEnumeratingWithState:&v76 objects:v84 count:16];
      }

      while (v30);
    }

    v35 = [v27 copy];
    v26 = v67;
    v11 = v68;
  }

  else
  {
    v35 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v26, "logMsgStateTypeForType:", 30)}];
    v39 = [v35 objectForKeyedSubscript:v37];
    if (!v39)
    {
      v39 = [v26 stateForType:30];
    }

    v38 = v39;
  }

  v61 = v38;
  if (GEOConfigGetBOOL())
  {
    v66 = 0;
  }

  else
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v26, "logMsgStateTypeForType:", 1)}];

    v66 = [v35 objectForKeyedSubscript:v40];
    if (!v66)
    {
      v66 = [v26 stateForType:1];
    }

    v37 = v40;
  }

  v62 = v35;
  if (GEOConfigGetBOOL())
  {
    v60 = v37;
    v69 = 0;
  }

  else
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v26, "logMsgStateTypeForType:", 3)}];

    v42 = [v35 objectForKeyedSubscript:v41];
    if (!v42)
    {
      v42 = [v26 stateForType:3];
    }

    v69 = v42;
    v60 = v41;
  }

  v43 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v43 setEventType:24];
  v44 = objc_alloc_init(MEMORY[0x1E69A1FB0]);
  [v43 setTelemetric:v44];

  v45 = [v43 telemetric];
  v46 = [v45 telemetricEntitys];

  if (!v46)
  {
    v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v48 = [v43 telemetric];
    [v48 setTelemetricEntitys:v47];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v49 = v11;
  v50 = [v49 countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v73;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v73 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v72 + 1) + 8 * j);
        v55 = [v43 telemetric];
        v56 = [v55 telemetricEntitys];
        v57 = [v54 copy];
        [v56 addObject:v57];
      }

      v51 = [v49 countByEnumeratingWithState:&v72 objects:v83 count:16];
    }

    while (v51);
  }

  if (v66)
  {
    [v43 addLogMsgState:v66];
  }

  v11 = v68;
  v16 = v63;
  v13 = v64;
  if (v69)
  {
    [v43 addLogMsgState:?];
  }

  if (v61)
  {
    [v43 addLogMsgState:v61];
  }

  v58 = +[GEOAPStateFactory sharedFactory];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __120__GEOAPPortal_captureTelemetricWithTelemetricEntitys_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_107;
  v70[3] = &unk_1E7953A00;
  v71 = v43;
  v59 = v43;
  [v58 sessionStateForType:7 callback:v70];

  v18[2](v18);
  v12 = v65;
LABEL_22:

  v36 = *MEMORY[0x1E69E9840];
}

void __120__GEOAPPortal_captureTelemetricWithTelemetricEntitys_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __120__GEOAPPortal_captureTelemetricWithTelemetricEntitys_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_107(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureTableBookingWithBookTableSessionId:(id)a3 endState:(int)a4 endView:(int)a5 bookTableAppId:(id)a6 muid:(id)a7 blurredReservationTimestamp:(id)a8 blurredBookingTimestamp:(id)a9 durationOfSessionInSeconds:(id)a10 installNeeded:(id)a11 installNeededTappedAppId:(id)a12 installCompleted:(id)a13 tableSize:(id)a14 addedSpecialRequest:(id)a15 swipedAvailableTimes:(id)a16 tappedDatePicker:(id)a17 errorMessages:(id)a18 additionalStates:(id)a19 providedDropRate:(id)a20 completionQueue:(id)a21 completionBlock:(id)a22
{
  v142 = *MEMORY[0x1E69E9840];
  v122 = a3;
  v25 = a6;
  v26 = a7;
  v121 = a8;
  v27 = a9;
  v120 = a10;
  v28 = a11;
  v119 = a12;
  v29 = a13;
  v30 = a14;
  v31 = a15;
  v118 = a16;
  v117 = a17;
  v123 = a18;
  v116 = a19;
  v124 = a20;
  v32 = a21;
  v33 = a22;
  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = __377__GEOAPPortal_captureTableBookingWithBookTableSessionId_endState_endView_bookTableAppId_muid_blurredReservationTimestamp_blurredBookingTimestamp_durationOfSessionInSeconds_installNeeded_installNeededTappedAppId_installCompleted_tableSize_addedSpecialRequest_swipedAvailableTimes_tappedDatePicker_errorMessages_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v135[3] = &unk_1E7959478;
  v115 = v33;
  v137 = v115;
  v34 = v32;
  v136 = v34;
  v35 = MEMORY[0x1AC5A12F0](v135);
  if (GEOConfigGetBOOL())
  {
    v35[2](v35);
LABEL_7:
    v40 = v116;
    goto LABEL_8;
  }

  v114 = v25;
  v36 = +[GEOAPServiceManager sharedManager];
  v37 = [v36 eventCollectionIsDisabledForCurrentProcess];

  if (v37)
  {
    v38 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v141 = v39;
      _os_log_impl(&dword_1AB634000, v38, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v35[2](v35);
    v25 = v114;
    goto LABEL_7;
  }

  if (v124)
  {
    [v124 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  v25 = v114;
  v40 = v116;
  if (v42 == 0.0 || v42 < arc4random() / 4294967300.0)
  {
    v104 = +[GEOAPStateFactory sharedFactory];
    v105 = v27;
    v101 = v29;
    v102 = v28;
    v99 = v31;
    v100 = v30;
    v103 = v26;
    if ([v116 count])
    {
      v43 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v116, "count")}];
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v44 = v116;
      v45 = [v44 countByEnumeratingWithState:&v131 objects:v139 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v132;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v132 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v131 + 1) + 8 * i);
            v50 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v49, "stateType")}];
            [v43 setObject:v49 forKeyedSubscript:v50];
          }

          v46 = [v44 countByEnumeratingWithState:&v131 objects:v139 count:16];
        }

        while (v46);
      }

      v110 = [v43 copy];
      v25 = v114;
      v28 = v102;
      v26 = v103;
      v30 = v100;
      v31 = v99;
    }

    else
    {
      v110 = 0;
    }

    if (GEOConfigGetBOOL())
    {
      v111 = 0;
      v109 = 0;
    }

    else
    {
      v111 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 2)}];
      v109 = [v110 objectForKeyedSubscript:?];
      if (!v109)
      {
        v109 = [v104 stateForType:2];
      }
    }

    if (GEOConfigGetBOOL())
    {
      v108 = 0;
    }

    else
    {
      v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 30)}];

      v108 = [v110 objectForKeyedSubscript:v51];
      if (!v108)
      {
        v108 = [v104 stateForType:30];
      }

      v111 = v51;
    }

    if (GEOConfigGetBOOL())
    {
      v107 = 0;
    }

    else
    {
      v52 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 1)}];

      v107 = [v110 objectForKeyedSubscript:v52];
      if (!v107)
      {
        v107 = [v104 stateForType:1];
      }

      v111 = v52;
    }

    if (GEOConfigGetBOOL())
    {
      v106 = 0;
    }

    else
    {
      v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 3)}];

      v106 = [v110 objectForKeyedSubscript:v53];
      if (!v106)
      {
        v106 = [v104 stateForType:3];
      }

      v111 = v53;
    }

    if (GEOConfigGetBOOL())
    {
      v98 = 0;
    }

    else
    {
      v54 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 8)}];

      v98 = [v110 objectForKeyedSubscript:v54];
      if (!v98)
      {
        v98 = [v104 stateForType:8];
      }

      v111 = v54;
    }

    v55 = objc_alloc_init(MEMORY[0x1E69A1E90]);
    [v55 setEventType:20];
    v56 = objc_alloc_init(MEMORY[0x1E69A1FA8]);
    [v55 setTableBookingSession:v56];

    v57 = [v55 tableBookingSession];
    [v57 setBookTableSessionId:v122];

    v58 = [v55 tableBookingSession];
    [v58 setEndState:a4];

    v59 = [v55 tableBookingSession];
    [v59 setEndView:a5];

    v60 = [v55 tableBookingSession];
    [v60 setBookTableAppId:v25];

    if (v26)
    {
      v61 = [v26 unsignedLongLongValue];
      v62 = [v55 tableBookingSession];
      [v62 setMuid:v61];
    }

    if (v121)
    {
      v63 = [v121 integerValue];
      v64 = [v55 tableBookingSession];
      [v64 setBlurredReservationTimestamp:v63];
    }

    if (v105)
    {
      v65 = [v105 integerValue];
      v66 = [v55 tableBookingSession];
      [v66 setBlurredBookingTimestamp:v65];
    }

    if (v120)
    {
      [v120 doubleValue];
      v68 = v67;
      v69 = [v55 tableBookingSession];
      [v69 setDurationOfSessionInSeconds:v68];
    }

    if (v28)
    {
      v70 = [v28 BOOLValue];
      v71 = [v55 tableBookingSession];
      [v71 setInstallNeeded:v70];
    }

    v72 = [v55 tableBookingSession];
    [v72 setInstallNeededTappedAppId:v119];

    if (v29)
    {
      v73 = [v29 BOOLValue];
      v74 = [v55 tableBookingSession];
      [v74 setInstallCompleted:v73];
    }

    if (v30)
    {
      v75 = [v30 unsignedLongLongValue];
      v76 = [v55 tableBookingSession];
      [v76 setTableSize:v75];
    }

    if (v31)
    {
      v77 = [v31 BOOLValue];
      v78 = [v55 tableBookingSession];
      [v78 setAddedSpecialRequest:v77];
    }

    if (v118)
    {
      v79 = [v118 BOOLValue];
      v80 = [v55 tableBookingSession];
      [v80 setSwipedAvailableTimes:v79];
    }

    if (v117)
    {
      v81 = [v117 BOOLValue];
      v82 = [v55 tableBookingSession];
      [v82 setTappedDatePicker:v81];
    }

    v83 = [v55 tableBookingSession];
    v84 = [v83 errorMessages];

    if (!v84)
    {
      v85 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v123, "count")}];
      v86 = [v55 tableBookingSession];
      [v86 setErrorMessages:v85];
    }

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v87 = v123;
    v88 = [v87 countByEnumeratingWithState:&v127 objects:v138 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v128;
      do
      {
        for (j = 0; j != v89; ++j)
        {
          if (*v128 != v90)
          {
            objc_enumerationMutation(v87);
          }

          v92 = *(*(&v127 + 1) + 8 * j);
          v93 = [v55 tableBookingSession];
          v94 = [v93 errorMessages];
          v95 = [v92 copy];
          [v94 addObject:v95];
        }

        v89 = [v87 countByEnumeratingWithState:&v127 objects:v138 count:16];
      }

      while (v89);
    }

    if (v109)
    {
      [v55 addLogMsgState:?];
    }

    v25 = v114;
    v29 = v101;
    v28 = v102;
    v30 = v100;
    if (v107)
    {
      [v55 addLogMsgState:?];
    }

    if (v106)
    {
      [v55 addLogMsgState:v106];
    }

    if (v108)
    {
      [v55 addLogMsgState:v108];
    }

    if (v98)
    {
      [v55 addLogMsgState:v98];
    }

    v96 = +[GEOAPStateFactory sharedFactory];
    v125[0] = MEMORY[0x1E69E9820];
    v125[1] = 3221225472;
    v125[2] = __377__GEOAPPortal_captureTableBookingWithBookTableSessionId_endState_endView_bookTableAppId_muid_blurredReservationTimestamp_blurredBookingTimestamp_durationOfSessionInSeconds_installNeeded_installNeededTappedAppId_installCompleted_tableSize_addedSpecialRequest_swipedAvailableTimes_tappedDatePicker_errorMessages_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_105;
    v125[3] = &unk_1E7953A00;
    v126 = v55;
    v97 = v55;
    [v96 sessionStateForType:7 callback:v125];

    v35[2](v35);
    v26 = v103;
    v27 = v105;
    v40 = v116;
    v31 = v99;
  }

  else
  {
    v35[2](v35);
  }

LABEL_8:

  v41 = *MEMORY[0x1E69E9840];
}

void __377__GEOAPPortal_captureTableBookingWithBookTableSessionId_endState_endView_bookTableAppId_muid_blurredReservationTimestamp_blurredBookingTimestamp_durationOfSessionInSeconds_installNeeded_installNeededTappedAppId_installCompleted_tableSize_addedSpecialRequest_swipedAvailableTimes_tappedDatePicker_errorMessages_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __377__GEOAPPortal_captureTableBookingWithBookTableSessionId_endState_endView_bookTableAppId_muid_blurredReservationTimestamp_blurredBookingTimestamp_durationOfSessionInSeconds_installNeeded_installNeededTappedAppId_installCompleted_tableSize_addedSpecialRequest_swipedAvailableTimes_tappedDatePicker_errorMessages_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_105(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureTableBookedWithBookedTableSessionId:(id)a3 bookedTables:(id)a4 additionalStates:(id)a5 providedDropRate:(id)a6 completionQueue:(id)a7 completionBlock:(id)a8
{
  v92 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __137__GEOAPPortal_captureTableBookedWithBookedTableSessionId_bookedTables_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v85[3] = &unk_1E7959478;
  v19 = v18;
  v87 = v19;
  v20 = v17;
  v86 = v20;
  v21 = MEMORY[0x1AC5A12F0](v85);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v22 = +[GEOAPServiceManager sharedManager];
  v23 = [v22 eventCollectionIsDisabledForCurrentProcess];

  if (v23)
  {
    v24 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v91 = v25;
      _os_log_impl(&dword_1AB634000, v24, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v16)
  {
    [v16 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v26 != 0.0 && v26 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v21[2](v21);
    goto LABEL_21;
  }

  v61 = v20;
  v27 = +[GEOAPStateFactory sharedFactory];
  v69 = v27;
  v70 = v14;
  v71 = v13;
  v65 = v16;
  v66 = v15;
  v64 = v19;
  if ([v15 count])
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v29 = v15;
    v30 = [v29 countByEnumeratingWithState:&v81 objects:v89 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v82;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v82 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v81 + 1) + 8 * i);
          v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "stateType")}];
          [v28 setObject:v34 forKeyedSubscript:v35];
        }

        v31 = [v29 countByEnumeratingWithState:&v81 objects:v89 count:16];
      }

      while (v31);
    }

    v36 = [v28 copy];
    v14 = v70;
    v13 = v71;
    v27 = v69;
  }

  else
  {
    v36 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v38 = 0;
    v68 = 0;
  }

  else
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 2)}];
    v68 = [v36 objectForKeyedSubscript:v38];
    if (!v68)
    {
      v68 = [v27 stateForType:2];
    }
  }

  if (GEOConfigGetBOOL())
  {
    v74 = 0;
  }

  else
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 30)}];

    v74 = [v36 objectForKeyedSubscript:v39];
    if (!v74)
    {
      v74 = [v27 stateForType:30];
    }

    v38 = v39;
  }

  if (GEOConfigGetBOOL())
  {
    v73 = 0;
  }

  else
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 1)}];

    v73 = [v36 objectForKeyedSubscript:v40];
    if (!v73)
    {
      v73 = [v27 stateForType:1];
    }

    v38 = v40;
  }

  if (GEOConfigGetBOOL())
  {
    v72 = 0;
  }

  else
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 3)}];

    v72 = [v36 objectForKeyedSubscript:v41];
    if (!v72)
    {
      v72 = [v27 stateForType:3];
    }

    v38 = v41;
  }

  if (GEOConfigGetBOOL())
  {
    v62 = v38;
    v67 = 0;
  }

  else
  {
    v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 8)}];

    v67 = [v36 objectForKeyedSubscript:v42];
    if (!v67)
    {
      v67 = [v27 stateForType:8];
    }

    v62 = v42;
  }

  v63 = v36;
  v43 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v43 setEventType:21];
  v44 = objc_alloc_init(MEMORY[0x1E69A1FA0]);
  [v43 setTableBookedSession:v44];

  v45 = [v43 tableBookedSession];
  [v45 setBookedTableSessionId:v13];

  v46 = [v43 tableBookedSession];
  v47 = [v46 bookedTables];

  if (!v47)
  {
    v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v49 = [v43 tableBookedSession];
    [v49 setBookedTables:v48];
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v50 = v14;
  v51 = [v50 countByEnumeratingWithState:&v77 objects:v88 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v78;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v78 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v77 + 1) + 8 * j);
        v56 = [v43 tableBookedSession];
        v57 = [v56 bookedTables];
        v58 = [v55 copy];
        [v57 addObject:v58];
      }

      v52 = [v50 countByEnumeratingWithState:&v77 objects:v88 count:16];
    }

    while (v52);
  }

  if (v68)
  {
    [v43 addLogMsgState:v68];
  }

  v14 = v70;
  v13 = v71;
  v15 = v66;
  v19 = v64;
  if (v73)
  {
    [v43 addLogMsgState:?];
  }

  if (v72)
  {
    [v43 addLogMsgState:v72];
  }

  if (v74)
  {
    [v43 addLogMsgState:v74];
  }

  if (v67)
  {
    [v43 addLogMsgState:v67];
  }

  v59 = +[GEOAPStateFactory sharedFactory];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __137__GEOAPPortal_captureTableBookedWithBookedTableSessionId_bookedTables_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_103;
  v75[3] = &unk_1E7953A00;
  v76 = v43;
  v60 = v43;
  [v59 sessionStateForType:7 callback:v75];

  v21[2](v21);
  v16 = v65;
  v20 = v61;
LABEL_21:

  v37 = *MEMORY[0x1E69E9840];
}

void __137__GEOAPPortal_captureTableBookedWithBookedTableSessionId_bookedTables_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __137__GEOAPPortal_captureTableBookedWithBookedTableSessionId_bookedTables_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_103(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureShowcaseSuppressionWithBusinessId:(id)a3 localSearchProviderID:(id)a4 showcaseId:(id)a5 suppressionReason:(int)a6 adamId:(id)a7 additionalStates:(id)a8 providedDropRate:(id)a9 completionQueue:(id)a10 completionBlock:(id)a11
{
  v83 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __180__GEOAPPortal_captureShowcaseSuppressionWithBusinessId_localSearchProviderID_showcaseId_suppressionReason_adamId_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v77[3] = &unk_1E7959478;
  v23 = v22;
  v79 = v23;
  v24 = v21;
  v78 = v24;
  v25 = MEMORY[0x1AC5A12F0](v77);
  if (GEOConfigGetBOOL())
  {
    v25[2](v25);
    goto LABEL_56;
  }

  v70 = v19;
  v26 = v18;
  v27 = +[GEOAPServiceManager sharedManager];
  v28 = [v27 eventCollectionIsDisabledForCurrentProcess];

  if (v28)
  {
    v29 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v82 = v30;
      _os_log_impl(&dword_1AB634000, v29, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v25[2](v25);
    v18 = v26;
    goto LABEL_22;
  }

  if (v20)
  {
    [v20 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  v18 = v26;
  if (v31 != 0.0 && v31 >= arc4random() / 4294967300.0)
  {
    v25[2](v25);
LABEL_22:
    v19 = v70;
    goto LABEL_56;
  }

  v60 = +[GEOAPStateFactory sharedFactory];
  v61 = v15;
  v65 = v16;
  if ([v70 count])
  {
    v63 = v20;
    v67 = v17;
    v32 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v70, "count")}];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v33 = v70;
    v34 = [v33 countByEnumeratingWithState:&v73 objects:v80 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v74;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v74 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v73 + 1) + 8 * i);
          v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "stateType")}];
          [v32 setObject:v38 forKeyedSubscript:v39];
        }

        v35 = [v33 countByEnumeratingWithState:&v73 objects:v80 count:16];
      }

      while (v35);
    }

    v66 = [v32 copy];
    v20 = v63;
    v16 = v65;
    v17 = v67;
    v18 = v26;
  }

  else
  {
    v66 = 0;
  }

  v19 = v70;
  if (GEOConfigGetBOOL())
  {
    v68 = 0;
    v64 = 0;
  }

  else
  {
    v68 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v60, "logMsgStateTypeForType:", 65)}];
    v64 = [v66 objectForKeyedSubscript:?];
    if (!v64)
    {
      v64 = [v60 stateForType:65];
    }
  }

  if (GEOConfigGetBOOL())
  {
    v62 = 0;
  }

  else
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v60, "logMsgStateTypeForType:", 30)}];

    v62 = [v66 objectForKeyedSubscript:v40];
    if (!v62)
    {
      v62 = [v60 stateForType:30];
    }

    v68 = v40;
  }

  if (GEOConfigGetBOOL())
  {
    v41 = 0;
  }

  else
  {
    v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v60, "logMsgStateTypeForType:", 1)}];

    v41 = [v66 objectForKeyedSubscript:v42];
    if (!v41)
    {
      v41 = [v60 stateForType:1];
    }

    v68 = v42;
  }

  v59 = v41;
  if (GEOConfigGetBOOL())
  {
    v43 = 0;
  }

  else
  {
    v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v60, "logMsgStateTypeForType:", 3)}];

    v45 = [v66 objectForKeyedSubscript:v44];
    if (!v45)
    {
      v45 = [v60 stateForType:3];
    }

    v43 = v45;
    v68 = v44;
  }

  v46 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v46 setEventType:58];
  v47 = objc_alloc_init(MEMORY[0x1E69A1F98]);
  [v46 setShowcaseSuppression:v47];

  if (v61)
  {
    v48 = [v61 unsignedLongLongValue];
    v49 = [v46 showcaseSuppression];
    [v49 setBusinessId:v48];

    v16 = v65;
  }

  if (v16)
  {
    v50 = [v16 integerValue];
    v51 = [v46 showcaseSuppression];
    [v51 setLocalSearchProviderID:v50];
  }

  v52 = [v46 showcaseSuppression];
  [v52 setShowcaseId:v17];

  v53 = [v46 showcaseSuppression];
  [v53 setSuppressionReason:a6];

  v54 = [v46 showcaseSuppression];
  [v54 setAdamId:v18];

  if (v64)
  {
    [v46 addLogMsgState:?];
  }

  if (v62)
  {
    [v46 addLogMsgState:?];
  }

  if (v59)
  {
    [v46 addLogMsgState:v59];
  }

  if (v43)
  {
    [v46 addLogMsgState:v43];
  }

  v55 = +[GEOAPStateFactory sharedFactory];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __180__GEOAPPortal_captureShowcaseSuppressionWithBusinessId_localSearchProviderID_showcaseId_suppressionReason_adamId_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_101;
  v71[3] = &unk_1E7953A00;
  v72 = v46;
  v56 = v46;
  [v55 sessionStateForType:8 callback:v71];

  v25[2](v25);
  v15 = v61;
  v16 = v65;
  v24 = v58;
LABEL_56:

  v57 = *MEMORY[0x1E69E9840];
}

void __180__GEOAPPortal_captureShowcaseSuppressionWithBusinessId_localSearchProviderID_showcaseId_suppressionReason_adamId_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __180__GEOAPPortal_captureShowcaseSuppressionWithBusinessId_localSearchProviderID_showcaseId_suppressionReason_adamId_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_101(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureRideBookingWithRideBookingSessionId:(id)a3 statusIssue:(int)a4 endState:(int)a5 endView:(int)a6 rideAppId:(id)a7 rideAppVersion:(id)a8 originBlurred:(id)a9 destinationBlurred:(id)a10 exploredOtherOptions:(id)a11 distanceToPickupInMeters:(id)a12 paymentIsApplePay:(id)a13 numberOfAvailableExtensions:(id)a14 switchedApp:(id)a15 comparedRideOptions:(id)a16 showedSurgePricingAlert:(id)a17 durationOfSessionInSeconds:(id)a18 installedApp:(id)a19 timestamp:(id)a20 unavailable:(id)a21 movedPickupLocation:(id)a22 errorMessages:(id)a23 intentResponseFailures:(id)a24 additionalStates:(id)a25 providedDropRate:(id)a26 completionQueue:(id)a27 completionBlock:(id)a28
{
  v183 = *MEMORY[0x1E69E9840];
  v157 = a3;
  v30 = a7;
  v31 = a8;
  v156 = a9;
  v32 = a10;
  v155 = a11;
  v154 = a12;
  v33 = a13;
  v34 = a14;
  v35 = a15;
  v36 = a16;
  v153 = a17;
  v152 = a18;
  v151 = a19;
  v150 = a20;
  v149 = a21;
  v148 = a22;
  v159 = a23;
  v158 = a24;
  v37 = a25;
  v160 = a26;
  v38 = a27;
  v39 = a28;
  v175[0] = MEMORY[0x1E69E9820];
  v175[1] = 3221225472;
  v175[2] = __478__GEOAPPortal_captureRideBookingWithRideBookingSessionId_statusIssue_endState_endView_rideAppId_rideAppVersion_originBlurred_destinationBlurred_exploredOtherOptions_distanceToPickupInMeters_paymentIsApplePay_numberOfAvailableExtensions_switchedApp_comparedRideOptions_showedSurgePricingAlert_durationOfSessionInSeconds_installedApp_timestamp_unavailable_movedPickupLocation_errorMessages_intentResponseFailures_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v175[3] = &unk_1E7959478;
  v147 = v39;
  v177 = v147;
  v40 = v38;
  v176 = v40;
  v41 = MEMORY[0x1AC5A12F0](v175);
  if (GEOConfigGetBOOL())
  {
LABEL_2:
    v41[2](v41);
    goto LABEL_99;
  }

  v145 = v37;
  v146 = v36;
  v42 = +[GEOAPServiceManager sharedManager];
  v43 = [v42 eventCollectionIsDisabledForCurrentProcess];

  v141 = v32;
  if (v43)
  {
    v44 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v45 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v182 = v45;
      _os_log_impl(&dword_1AB634000, v44, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v41[2](v41);
    v32 = v141;
    v37 = v145;
    v36 = v146;
  }

  else
  {
    if (v160)
    {
      [v160 doubleValue];
    }

    else
    {
      GEOConfigGetDouble();
    }

    v37 = v145;
    v36 = v146;
    if (v46 != 0.0 && v46 >= arc4random() / 4294967300.0)
    {
      goto LABEL_2;
    }

    v136 = +[GEOAPStateFactory sharedFactory];
    v131 = v31;
    v132 = v30;
    v129 = v34;
    v130 = v33;
    v137 = v35;
    if ([v145 count])
    {
      v47 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v145, "count")}];
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v48 = v145;
      v49 = [v48 countByEnumeratingWithState:&v171 objects:v180 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v172;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v172 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v53 = *(*(&v171 + 1) + 8 * i);
            v54 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v53, "stateType")}];
            [v47 setObject:v53 forKeyedSubscript:v54];
          }

          v50 = [v48 countByEnumeratingWithState:&v171 objects:v180 count:16];
        }

        while (v50);
      }

      v139 = [v47 copy];
      v31 = v131;
      v30 = v132;
      v34 = v129;
      v36 = v146;
    }

    else
    {
      v139 = 0;
    }

    if (GEOConfigGetBOOL())
    {
      v140 = 0;
      v138 = 0;
    }

    else
    {
      v140 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v136, "logMsgStateTypeForType:", 2)}];
      v138 = [v139 objectForKeyedSubscript:?];
      if (!v138)
      {
        v138 = [v136 stateForType:2];
      }
    }

    if (GEOConfigGetBOOL())
    {
      v135 = 0;
    }

    else
    {
      v55 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v136, "logMsgStateTypeForType:", 30)}];

      v56 = [v139 objectForKeyedSubscript:v55];
      if (!v56)
      {
        v56 = [v136 stateForType:30];
      }

      v135 = v56;
      v140 = v55;
    }

    if (GEOConfigGetBOOL())
    {
      v57 = 0;
    }

    else
    {
      v58 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v136, "logMsgStateTypeForType:", 1)}];

      v57 = [v139 objectForKeyedSubscript:v58];
      if (!v57)
      {
        v57 = [v136 stateForType:1];
      }

      v140 = v58;
    }

    v134 = v57;
    if (GEOConfigGetBOOL())
    {
      v59 = 0;
    }

    else
    {
      v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v136, "logMsgStateTypeForType:", 3)}];

      v59 = [v139 objectForKeyedSubscript:v60];
      if (!v59)
      {
        v59 = [v136 stateForType:3];
      }

      v140 = v60;
    }

    v133 = v59;
    if (GEOConfigGetBOOL())
    {
      v128 = 0;
    }

    else
    {
      v61 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v136, "logMsgStateTypeForType:", 8)}];

      v62 = [v139 objectForKeyedSubscript:v61];
      if (!v62)
      {
        v62 = [v136 stateForType:8];
      }

      v128 = v62;
      v140 = v61;
    }

    v63 = objc_alloc_init(MEMORY[0x1E69A1E90]);
    [v63 setEventType:18];
    v64 = objc_alloc_init(MEMORY[0x1E69A1F88]);
    [v63 setRideBookingSession:v64];

    v65 = [v63 rideBookingSession];
    [v65 setRideBookingSessionId:v157];

    v66 = [v63 rideBookingSession];
    [v66 setStatusIssue:a4];

    v67 = [v63 rideBookingSession];
    [v67 setEndState:a5];

    v68 = [v63 rideBookingSession];
    [v68 setEndView:a6];

    v69 = [v63 rideBookingSession];
    [v69 setRideAppId:v30];

    v70 = [v63 rideBookingSession];
    [v70 setRideAppVersion:v31];

    v71 = [v63 rideBookingSession];
    [v71 setOriginBlurred:v156];

    v72 = [v63 rideBookingSession];
    [v72 setDestinationBlurred:v141];

    if (v155)
    {
      v73 = [v155 BOOLValue];
      v74 = [v63 rideBookingSession];
      [v74 setExploredOtherOptions:v73];
    }

    if (v154)
    {
      [v154 doubleValue];
      v76 = v75;
      v77 = [v63 rideBookingSession];
      [v77 setDistanceToPickupInMeters:v76];
    }

    if (v33)
    {
      v78 = [v33 BOOLValue];
      v79 = [v63 rideBookingSession];
      [v79 setPaymentIsApplePay:v78];
    }

    if (v34)
    {
      v80 = [v34 unsignedLongLongValue];
      v81 = [v63 rideBookingSession];
      [v81 setNumberOfAvailableExtensions:v80];
    }

    if (v137)
    {
      v82 = [v137 BOOLValue];
      v83 = [v63 rideBookingSession];
      [v83 setSwitchedApp:v82];
    }

    if (v36)
    {
      v84 = [v36 BOOLValue];
      v85 = [v63 rideBookingSession];
      [v85 setComparedRideOptions:v84];
    }

    if (v153)
    {
      v86 = [v153 BOOLValue];
      v87 = [v63 rideBookingSession];
      [v87 setShowedSurgePricingAlert:v86];
    }

    if (v152)
    {
      [v152 doubleValue];
      v89 = v88;
      v90 = [v63 rideBookingSession];
      [v90 setDurationOfSessionInSeconds:v89];
    }

    if (v151)
    {
      v91 = [v151 BOOLValue];
      v92 = [v63 rideBookingSession];
      [v92 setInstalledApp:v91];
    }

    if (v150)
    {
      v93 = [v150 integerValue];
      v94 = [v63 rideBookingSession];
      [v94 setTimestamp:v93];
    }

    if (v149)
    {
      v95 = [v149 BOOLValue];
      v96 = [v63 rideBookingSession];
      [v96 setUnavailable:v95];
    }

    if (v148)
    {
      v97 = [v148 BOOLValue];
      v98 = [v63 rideBookingSession];
      [v98 setMovedPickupLocation:v97];
    }

    v99 = [v63 rideBookingSession];
    v100 = [v99 errorMessages];

    if (!v100)
    {
      v101 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v159, "count")}];
      v102 = [v63 rideBookingSession];
      [v102 setErrorMessages:v101];
    }

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v103 = v159;
    v104 = [v103 countByEnumeratingWithState:&v167 objects:v179 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v168;
      do
      {
        for (j = 0; j != v105; ++j)
        {
          if (*v168 != v106)
          {
            objc_enumerationMutation(v103);
          }

          v108 = *(*(&v167 + 1) + 8 * j);
          v109 = [v63 rideBookingSession];
          v110 = [v109 errorMessages];
          v111 = [v108 copy];
          [v110 addObject:v111];
        }

        v105 = [v103 countByEnumeratingWithState:&v167 objects:v179 count:16];
      }

      while (v105);
    }

    v112 = [v63 rideBookingSession];
    v113 = [v112 intentResponseFailures];

    if (!v113)
    {
      v114 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v158, "count")}];
      v115 = [v63 rideBookingSession];
      [v115 setIntentResponseFailures:v114];
    }

    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v116 = v158;
    v117 = [v116 countByEnumeratingWithState:&v163 objects:v178 count:16];
    if (v117)
    {
      v118 = v117;
      v119 = *v164;
      do
      {
        for (k = 0; k != v118; ++k)
        {
          if (*v164 != v119)
          {
            objc_enumerationMutation(v116);
          }

          v121 = *(*(&v163 + 1) + 8 * k);
          v122 = [v63 rideBookingSession];
          v123 = [v122 intentResponseFailures];
          v124 = [v121 copy];
          [v123 addObject:v124];
        }

        v118 = [v116 countByEnumeratingWithState:&v163 objects:v178 count:16];
      }

      while (v118);
    }

    if (v138)
    {
      [v63 addLogMsgState:?];
    }

    v30 = v132;
    v33 = v130;
    v36 = v146;
    if (v134)
    {
      [v63 addLogMsgState:?];
    }

    if (v133)
    {
      [v63 addLogMsgState:v133];
    }

    if (v135)
    {
      [v63 addLogMsgState:?];
    }

    if (v128)
    {
      [v63 addLogMsgState:v128];
    }

    v125 = +[GEOAPStateFactory sharedFactory];
    v161[0] = MEMORY[0x1E69E9820];
    v161[1] = 3221225472;
    v161[2] = __478__GEOAPPortal_captureRideBookingWithRideBookingSessionId_statusIssue_endState_endView_rideAppId_rideAppVersion_originBlurred_destinationBlurred_exploredOtherOptions_distanceToPickupInMeters_paymentIsApplePay_numberOfAvailableExtensions_switchedApp_comparedRideOptions_showedSurgePricingAlert_durationOfSessionInSeconds_installedApp_timestamp_unavailable_movedPickupLocation_errorMessages_intentResponseFailures_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_99;
    v161[3] = &unk_1E7953A00;
    v126 = v63;
    v162 = v126;
    [v125 sessionStateForType:7 callback:v161];

    v41[2](v41);
    v32 = v141;
    v35 = v137;
    v37 = v145;
    v34 = v129;
    v31 = v131;
  }

LABEL_99:

  v127 = *MEMORY[0x1E69E9840];
}

void __478__GEOAPPortal_captureRideBookingWithRideBookingSessionId_statusIssue_endState_endView_rideAppId_rideAppVersion_originBlurred_destinationBlurred_exploredOtherOptions_distanceToPickupInMeters_paymentIsApplePay_numberOfAvailableExtensions_switchedApp_comparedRideOptions_showedSurgePricingAlert_durationOfSessionInSeconds_installedApp_timestamp_unavailable_movedPickupLocation_errorMessages_intentResponseFailures_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __478__GEOAPPortal_captureRideBookingWithRideBookingSessionId_statusIssue_endState_endView_rideAppId_rideAppVersion_originBlurred_destinationBlurred_exploredOtherOptions_distanceToPickupInMeters_paymentIsApplePay_numberOfAvailableExtensions_switchedApp_comparedRideOptions_showedSurgePricingAlert_durationOfSessionInSeconds_installedApp_timestamp_unavailable_movedPickupLocation_errorMessages_intentResponseFailures_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_99(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureRideBookedWithRideBookedSessionId:(id)a3 bookedUsingMaps:(id)a4 cancelled:(id)a5 contactedDriver:(id)a6 viewedInProactiveTray:(id)a7 tappedProactiveTrayItem:(id)a8 viewedDetails:(id)a9 invalidVehicleLocation:(id)a10 missingVehicleLocation:(id)a11 rideAppId:(id)a12 rideAppVersion:(id)a13 intentResponseFailures:(id)a14 additionalStates:(id)a15 providedDropRate:(id)a16 completionQueue:(id)a17 completionBlock:(id)a18
{
  v133 = *MEMORY[0x1E69E9840];
  v113 = a3;
  v115 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v111 = a8;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v110 = a12;
  v109 = a13;
  v29 = a14;
  v30 = a15;
  v114 = a16;
  v31 = a17;
  v32 = a18;
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __318__GEOAPPortal_captureRideBookedWithRideBookedSessionId_bookedUsingMaps_cancelled_contactedDriver_viewedInProactiveTray_tappedProactiveTrayItem_viewedDetails_invalidVehicleLocation_missingVehicleLocation_rideAppId_rideAppVersion_intentResponseFailures_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v126[3] = &unk_1E7959478;
  v108 = v32;
  v128 = v108;
  v33 = v31;
  v127 = v33;
  v34 = MEMORY[0x1AC5A12F0](v126);
  v112 = v24;
  if (GEOConfigGetBOOL())
  {
    v34[2](v34);
    v35 = v115;
  }

  else
  {
    v106 = v30;
    v107 = v29;
    v36 = +[GEOAPServiceManager sharedManager];
    v37 = [v36 eventCollectionIsDisabledForCurrentProcess];

    if (v37)
    {
      v38 = GEOGetGEOAPPortalAnalyticsLog();
      v35 = v115;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v132 = v39;
        _os_log_impl(&dword_1AB634000, v38, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v34[2](v34);
      v30 = v106;
      v29 = v107;
    }

    else
    {
      v35 = v115;
      if (v114)
      {
        [v114 doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      v30 = v106;
      v29 = v107;
      if (v40 == 0.0 || v40 < arc4random() / 4294967300.0)
      {
        v41 = +[GEOAPStateFactory sharedFactory];
        v98 = v23;
        v99 = v25;
        v96 = v27;
        v97 = v26;
        v94 = v41;
        v95 = v28;
        if ([v106 count])
        {
          v42 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v106, "count")}];
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v43 = v106;
          v44 = [v43 countByEnumeratingWithState:&v122 objects:v130 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v123;
            do
            {
              for (i = 0; i != v45; ++i)
              {
                if (*v123 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v122 + 1) + 8 * i);
                v49 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v48, "stateType")}];
                [v42 setObject:v48 forKeyedSubscript:v49];
              }

              v45 = [v43 countByEnumeratingWithState:&v122 objects:v130 count:16];
            }

            while (v45);
          }

          v104 = [v42 copy];
          v35 = v115;
          v23 = v98;
          v28 = v95;
          v27 = v96;
          v41 = v94;
        }

        else
        {
          v104 = 0;
        }

        if (GEOConfigGetBOOL())
        {
          v105 = 0;
          v103 = 0;
        }

        else
        {
          v105 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v41, "logMsgStateTypeForType:", 2)}];
          v103 = [v104 objectForKeyedSubscript:?];
          if (!v103)
          {
            v103 = [v41 stateForType:2];
          }
        }

        if (GEOConfigGetBOOL())
        {
          v102 = 0;
        }

        else
        {
          v50 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v41, "logMsgStateTypeForType:", 30)}];

          v102 = [v104 objectForKeyedSubscript:v50];
          if (!v102)
          {
            v102 = [v41 stateForType:30];
          }

          v105 = v50;
        }

        if (GEOConfigGetBOOL())
        {
          v101 = 0;
        }

        else
        {
          v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v41, "logMsgStateTypeForType:", 1)}];

          v101 = [v104 objectForKeyedSubscript:v51];
          if (!v101)
          {
            v101 = [v41 stateForType:1];
          }

          v105 = v51;
        }

        if (GEOConfigGetBOOL())
        {
          v100 = 0;
        }

        else
        {
          v52 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v41, "logMsgStateTypeForType:", 3)}];

          v100 = [v104 objectForKeyedSubscript:v52];
          if (!v100)
          {
            v100 = [v41 stateForType:3];
          }

          v105 = v52;
        }

        if (GEOConfigGetBOOL())
        {
          v92 = 0;
        }

        else
        {
          v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v41, "logMsgStateTypeForType:", 8)}];

          v54 = [v104 objectForKeyedSubscript:v53];
          if (!v54)
          {
            v54 = [v41 stateForType:8];
          }

          v92 = v54;
          v105 = v53;
        }

        v55 = objc_alloc_init(MEMORY[0x1E69A1E90]);
        [v55 setEventType:19];
        v56 = objc_alloc_init(MEMORY[0x1E69A1F80]);
        [v55 setRideBookedSession:v56];

        v57 = [v55 rideBookedSession];
        [v57 setRideBookedSessionId:v113];

        if (v35)
        {
          v58 = [v35 BOOLValue];
          v59 = [v55 rideBookedSession];
          [v59 setBookedUsingMaps:v58];
        }

        if (v23)
        {
          v60 = [v23 BOOLValue];
          v61 = [v55 rideBookedSession];
          [v61 setCancelled:v60];
        }

        if (v112)
        {
          v62 = [v112 BOOLValue];
          v63 = [v55 rideBookedSession];
          [v63 setContactedDriver:v62];
        }

        if (v99)
        {
          v64 = [v99 BOOLValue];
          v65 = [v55 rideBookedSession];
          [v65 setViewedInProactiveTray:v64];
        }

        if (v111)
        {
          v66 = [v111 BOOLValue];
          v67 = [v55 rideBookedSession];
          [v67 setTappedProactiveTrayItem:v66];
        }

        if (v26)
        {
          v68 = [v26 BOOLValue];
          v69 = [v55 rideBookedSession];
          [v69 setViewedDetails:v68];
        }

        if (v27)
        {
          v70 = [v27 BOOLValue];
          v71 = [v55 rideBookedSession];
          [v71 setInvalidVehicleLocation:v70];
        }

        if (v28)
        {
          v72 = [v28 BOOLValue];
          v73 = [v55 rideBookedSession];
          [v73 setMissingVehicleLocation:v72];
        }

        v74 = [v55 rideBookedSession];
        [v74 setRideAppId:v110];

        v75 = [v55 rideBookedSession];
        [v75 setRideAppVersion:v109];

        v76 = [v55 rideBookedSession];
        v77 = [v76 intentResponseFailures];

        if (!v77)
        {
          v78 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v107, "count")}];
          v79 = [v55 rideBookedSession];
          [v79 setIntentResponseFailures:v78];
        }

        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v80 = v107;
        v81 = [v80 countByEnumeratingWithState:&v118 objects:v129 count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v119;
          do
          {
            for (j = 0; j != v82; ++j)
            {
              if (*v119 != v83)
              {
                objc_enumerationMutation(v80);
              }

              v85 = *(*(&v118 + 1) + 8 * j);
              v86 = [v55 rideBookedSession];
              v87 = [v86 intentResponseFailures];
              v88 = [v85 copy];
              [v87 addObject:v88];
            }

            v82 = [v80 countByEnumeratingWithState:&v118 objects:v129 count:16];
          }

          while (v82);
        }

        if (v103)
        {
          [v55 addLogMsgState:?];
        }

        v26 = v97;
        v23 = v98;
        v28 = v95;
        v29 = v107;
        if (v101)
        {
          [v55 addLogMsgState:?];
        }

        if (v100)
        {
          [v55 addLogMsgState:v100];
        }

        if (v102)
        {
          [v55 addLogMsgState:v102];
        }

        if (v93)
        {
          [v55 addLogMsgState:v93];
        }

        v89 = +[GEOAPStateFactory sharedFactory];
        v116[0] = MEMORY[0x1E69E9820];
        v116[1] = 3221225472;
        v116[2] = __318__GEOAPPortal_captureRideBookedWithRideBookedSessionId_bookedUsingMaps_cancelled_contactedDriver_viewedInProactiveTray_tappedProactiveTrayItem_viewedDetails_invalidVehicleLocation_missingVehicleLocation_rideAppId_rideAppVersion_intentResponseFailures_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_97;
        v116[3] = &unk_1E7953A00;
        v117 = v55;
        v90 = v55;
        [v89 sessionStateForType:7 callback:v116];

        v34[2](v34);
        v35 = v115;
        v25 = v99;
        v30 = v106;
        v27 = v96;
      }

      else
      {
        v34[2](v34);
      }
    }
  }

  v91 = *MEMORY[0x1E69E9840];
}

void __318__GEOAPPortal_captureRideBookedWithRideBookedSessionId_bookedUsingMaps_cancelled_contactedDriver_viewedInProactiveTray_tappedProactiveTrayItem_viewedDetails_invalidVehicleLocation_missingVehicleLocation_rideAppId_rideAppVersion_intentResponseFailures_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __318__GEOAPPortal_captureRideBookedWithRideBookedSessionId_bookedUsingMaps_cancelled_contactedDriver_viewedInProactiveTray_tappedProactiveTrayItem_viewedDetails_invalidVehicleLocation_missingVehicleLocation_rideAppId_rideAppVersion_intentResponseFailures_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_97(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureRedactedDirectionsServiceMetadataWithRedactedDirectionsMetadata:(id)a3 GEORedactedDirectionsClientMetadata_destinationHash:(id)a4 GEORedactedDirectionsClientMetadata_predictedDepartureTimeDelta:(id)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9
{
  v80 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __268__GEOAPPortal_captureRedactedDirectionsServiceMetadataWithRedactedDirectionsMetadata_GEORedactedDirectionsClientMetadata_destinationHash_GEORedactedDirectionsClientMetadata_predictedDepartureTimeDelta_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v74[3] = &unk_1E7959478;
  v21 = v20;
  v76 = v21;
  v22 = v19;
  v75 = v22;
  v23 = MEMORY[0x1AC5A12F0](v74);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v24 = +[GEOAPServiceManager sharedManager];
  v25 = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (v25)
  {
    v26 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v79 = v27;
      _os_log_impl(&dword_1AB634000, v26, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v18)
  {
    [v18 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v28 != 0.0 && v28 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v23[2](v23);
    goto LABEL_21;
  }

  v29 = +[GEOAPStateFactory sharedFactory];
  v65 = v15;
  v66 = v14;
  v61 = v29;
  v62 = v17;
  if ([v17 count])
  {
    v58 = v21;
    v63 = v16;
    v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v31 = v17;
    v32 = [v31 countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v71;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v71 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v70 + 1) + 8 * i);
          v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v36, "stateType")}];
          [v30 setObject:v36 forKeyedSubscript:v37];
        }

        v33 = [v31 countByEnumeratingWithState:&v70 objects:v77 count:16];
      }

      while (v33);
    }

    v38 = [v30 copy];
    v16 = v63;
    v21 = v58;
    v29 = v61;
  }

  else
  {
    v38 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v29, "logMsgStateTypeForType:", 65)}];
    v41 = [v38 objectForKeyedSubscript:v40];
    if (!v41)
    {
      v41 = [v29 stateForType:65];
    }
  }

  v17 = v62;
  v64 = v41;
  v60 = v38;
  if (GEOConfigGetBOOL())
  {
    v59 = v40;
    v42 = 0;
  }

  else
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v29, "logMsgStateTypeForType:", 49)}];

    v44 = [v38 objectForKeyedSubscript:v43];
    if (!v44)
    {
      v44 = [v29 stateForType:49];
    }

    v42 = v44;
    v59 = v43;
  }

  v45 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v45 setEventType:65];
  v46 = objc_alloc_init(MEMORY[0x1E69A1F90]);
  [v45 setRedactedServiceMetadata:v46];

  v47 = [v45 redactedServiceMetadata];
  [v47 setRedactedDirectionsMetadata:v66];

  v48 = objc_alloc_init(MEMORY[0x1E69A2428]);
  v49 = [v45 redactedServiceMetadata];
  [v49 setRedactedDirectionsClientMetadata:v48];

  if (v16)
  {
    +[GEOAPFuzzers fiveMinResolution:](GEOAPFuzzers, "fiveMinResolution:", [v16 integerValue]);
    v51 = v50;
    v52 = [v45 redactedServiceMetadata];
    [v52 redactedDirectionsClientMetadata];
    v54 = v53 = v16;
    [v54 setPredictedDepartureTimeDelta:v51];

    v16 = v53;
    v17 = v62;
  }

  v55 = [v45 redactedServiceMetadata];
  [v55 setServiceMetadataType:3];

  if (v64)
  {
    [v45 addLogMsgState:?];
  }

  if (v42)
  {
    [v45 addLogMsgState:v42];
  }

  v56 = +[GEOAPStateFactory sharedFactory];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __268__GEOAPPortal_captureRedactedDirectionsServiceMetadataWithRedactedDirectionsMetadata_GEORedactedDirectionsClientMetadata_destinationHash_GEORedactedDirectionsClientMetadata_predictedDepartureTimeDelta_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_95;
  v67[3] = &unk_1E7953A28;
  v68 = v45;
  v69 = v65;
  v57 = v45;
  [v56 sessionStateForType:20 callback:v67];

  v23[2](v23);
  v15 = v65;

  v14 = v66;
LABEL_21:

  v39 = *MEMORY[0x1E69E9840];
}

void __268__GEOAPPortal_captureRedactedDirectionsServiceMetadataWithRedactedDirectionsMetadata_GEORedactedDirectionsClientMetadata_destinationHash_GEORedactedDirectionsClientMetadata_predictedDepartureTimeDelta_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

void __268__GEOAPPortal_captureRedactedDirectionsServiceMetadataWithRedactedDirectionsMetadata_GEORedactedDirectionsClientMetadata_destinationHash_GEORedactedDirectionsClientMetadata_predictedDepartureTimeDelta_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_95(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if (v9)
  {
    [*(a1 + 32) addLogMsgState:v9];
  }

  GEOConfigGetUint64();
  if (*(a1 + 40))
  {
    v6 = [GEOAPFuzzers saltedHashWithSalt:a4 value:?];
    v7 = [*(a1 + 32) redactedServiceMetadata];
    v8 = [v7 redactedDirectionsClientMetadata];
    [v8 setDestinationHash:v6];
  }

  [GEOAPPortal reportLogMsgEvent:*(a1 + 32) uploadBatchId:GEOMakeGEOAPBatchID() completion:0 completionQueue:0];
}

+ (void)captureRealTrafficWithLocationCollection:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v59 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __122__GEOAPPortal_captureRealTrafficWithLocationCollection_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v53[3] = &unk_1E7959478;
  v16 = v15;
  v55 = v16;
  v17 = v14;
  v54 = v17;
  v18 = MEMORY[0x1AC5A12F0](v53);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (v20)
  {
    v21 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v58 = v22;
      _os_log_impl(&dword_1AB634000, v21, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v13)
  {
    [v13 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v23 != 0.0 && v23 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v18[2](v18);
    goto LABEL_21;
  }

  v46 = v11;
  v45 = +[GEOAPStateFactory sharedFactory];
  v44 = v12;
  if ([v12 count])
  {
    v42 = v16;
    v43 = v13;
    v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v25 = v12;
    v26 = [v25 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v50;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v50 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v49 + 1) + 8 * i);
          v31 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v30, "stateType", v42, v43)}];
          [v24 setObject:v30 forKeyedSubscript:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v27);
    }

    v32 = [v24 copy];
    v16 = v42;
    v13 = v43;
  }

  else
  {
    v32 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v34 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v45, "logMsgStateTypeForType:", 1)}];
    v36 = [v32 objectForKeyedSubscript:v34];
    if (!v36)
    {
      v36 = [v45 stateForType:1];
    }

    v35 = v36;
  }

  v12 = v44;
  v37 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v37 setEventType:26];
  v38 = objc_alloc_init(MEMORY[0x1E69A1F78]);
  [v37 setRealtimeTrafficProbeCollection:v38];

  v39 = [v37 realtimeTrafficProbeCollection];
  [v39 setLocationCollection:v46];

  if (v35)
  {
    [v37 addLogMsgState:v35];
  }

  v40 = [GEOAPStateFactory sharedFactory:v42];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __122__GEOAPPortal_captureRealTrafficWithLocationCollection_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_93;
  v47[3] = &unk_1E7953A00;
  v48 = v37;
  v41 = v37;
  [v40 sessionStateForType:10 callback:v47];

  v18[2](v18);
  v11 = v46;
LABEL_21:

  v33 = *MEMORY[0x1E69E9840];
}

void __122__GEOAPPortal_captureRealTrafficWithLocationCollection_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __122__GEOAPPortal_captureRealTrafficWithLocationCollection_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_93(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureProactiveSuggestionWithListType:(int)a3 interactedItemIndex:(id)a4 duration:(id)a5 proactiveItems:(id)a6 additionalStates:(id)a7 providedDropRate:(id)a8 completionQueue:(id)a9 completionBlock:(id)a10
{
  v96 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __164__GEOAPPortal_captureProactiveSuggestionWithListType_interactedItemIndex_duration_proactiveItems_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v89[3] = &unk_1E7959478;
  v21 = v20;
  v91 = v21;
  v22 = v19;
  v90 = v22;
  v23 = MEMORY[0x1AC5A12F0](v89);
  if (GEOConfigGetBOOL())
  {
LABEL_2:
    v23[2](v23);
    goto LABEL_50;
  }

  v78 = v18;
  v24 = +[GEOAPServiceManager sharedManager];
  v25 = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (v25)
  {
    v26 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v95 = v27;
      _os_log_impl(&dword_1AB634000, v26, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v23[2](v23);
    v18 = v78;
  }

  else
  {
    v18 = v78;
    if (v78)
    {
      [v78 doubleValue];
    }

    else
    {
      GEOConfigGetDouble();
    }

    if (v28 != 0.0 && v28 >= arc4random() / 4294967300.0)
    {
      goto LABEL_2;
    }

    v75 = v15;
    v29 = +[GEOAPStateFactory sharedFactory];
    v74 = v14;
    v68 = v21;
    v69 = v17;
    v71 = v29;
    v72 = v16;
    if ([v17 count])
    {
      v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v31 = v17;
      v32 = [v31 countByEnumeratingWithState:&v85 objects:v93 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v86;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v86 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v85 + 1) + 8 * i);
            v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v36, "stateType")}];
            [v30 setObject:v36 forKeyedSubscript:v37];
          }

          v33 = [v31 countByEnumeratingWithState:&v85 objects:v93 count:16];
        }

        while (v33);
      }

      v38 = [v30 copy];
      v29 = v71;
      v16 = v72;
    }

    else
    {
      v38 = 0;
    }

    if (GEOConfigGetBOOL())
    {
      v39 = 0;
      v73 = 0;
    }

    else
    {
      v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v29, "logMsgStateTypeForType:", 1)}];
      v40 = [v38 objectForKeyedSubscript:v39];
      if (!v40)
      {
        v40 = [v29 stateForType:1];
      }

      v73 = v40;
    }

    v41 = v75;
    if (GEOConfigGetBOOL())
    {
      v66 = v39;
      v70 = 0;
    }

    else
    {
      v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v29, "logMsgStateTypeForType:", 3)}];

      v70 = [v38 objectForKeyedSubscript:v42];
      if (!v70)
      {
        v70 = [v29 stateForType:3];
      }

      v66 = v42;
    }

    v43 = objc_alloc_init(MEMORY[0x1E69A1E90]);
    [v43 setEventType:16];
    v44 = objc_alloc_init(MEMORY[0x1E69A1F70]);
    [v43 setProactiveSuggestionInteractionSessionEvent:v44];

    v45 = [v43 proactiveSuggestionInteractionSessionEvent];
    [v45 setListType:a3];

    if (v74)
    {
      v46 = [v74 integerValue];
      v47 = [v43 proactiveSuggestionInteractionSessionEvent];
      [v47 setInteractedItemIndex:v46];

      v41 = v75;
    }

    if (v41)
    {
      v48 = [v41 integerValue];
      v49 = [v43 proactiveSuggestionInteractionSessionEvent];
      [v49 setDuration:v48];
    }

    v77 = v38;
    v50 = [v43 proactiveSuggestionInteractionSessionEvent];
    v51 = [v50 proactiveItems];

    if (!v51)
    {
      v52 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
      v53 = [v43 proactiveSuggestionInteractionSessionEvent];
      [v53 setProactiveItems:v52];
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v54 = v16;
    v55 = [v54 countByEnumeratingWithState:&v81 objects:v92 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v82;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v82 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v81 + 1) + 8 * j);
          v60 = [v43 proactiveSuggestionInteractionSessionEvent];
          v61 = [v60 proactiveItems];
          v62 = [v59 copy];
          [v61 addObject:v62];
        }

        v56 = [v54 countByEnumeratingWithState:&v81 objects:v92 count:16];
      }

      while (v56);
    }

    if (v73)
    {
      [v43 addLogMsgState:?];
    }

    v16 = v72;
    v21 = v68;
    v17 = v69;
    v18 = v78;
    if (v70)
    {
      [v43 addLogMsgState:v70];
    }

    v63 = +[GEOAPStateFactory sharedFactory];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __164__GEOAPPortal_captureProactiveSuggestionWithListType_interactedItemIndex_duration_proactiveItems_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_91;
    v79[3] = &unk_1E7953A00;
    v80 = v43;
    v64 = v43;
    [v63 sessionStateForType:7 callback:v79];

    v23[2](v23);
    v14 = v74;
    v15 = v75;
  }

LABEL_50:

  v65 = *MEMORY[0x1E69E9840];
}

void __164__GEOAPPortal_captureProactiveSuggestionWithListType_interactedItemIndex_duration_proactiveItems_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __164__GEOAPPortal_captureProactiveSuggestionWithListType_interactedItemIndex_duration_proactiveItems_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_91(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)capturePressureDataWithPressureData:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v59 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __117__GEOAPPortal_capturePressureDataWithPressureData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v53[3] = &unk_1E7959478;
  v16 = v15;
  v55 = v16;
  v17 = v14;
  v54 = v17;
  v18 = MEMORY[0x1AC5A12F0](v53);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (v20)
  {
    v21 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v58 = v22;
      _os_log_impl(&dword_1AB634000, v21, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v13)
  {
    [v13 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v23 != 0.0 && v23 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v18[2](v18);
    goto LABEL_21;
  }

  v46 = v11;
  v45 = +[GEOAPStateFactory sharedFactory];
  v44 = v12;
  if ([v12 count])
  {
    v42 = v16;
    v43 = v13;
    v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v25 = v12;
    v26 = [v25 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v50;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v50 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v49 + 1) + 8 * i);
          v31 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v30, "stateType", v42, v43)}];
          [v24 setObject:v30 forKeyedSubscript:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v27);
    }

    v32 = [v24 copy];
    v16 = v42;
    v13 = v43;
  }

  else
  {
    v32 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v34 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v45, "logMsgStateTypeForType:", 1)}];
    v36 = [v32 objectForKeyedSubscript:v34];
    if (!v36)
    {
      v36 = [v45 stateForType:1];
    }

    v35 = v36;
  }

  v12 = v44;
  v37 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v37 setEventType:51];
  v38 = objc_alloc_init(MEMORY[0x1E69A1F68]);
  [v37 setPressureData:v38];

  v39 = [v37 pressureData];
  [v39 setPressureData:v46];

  if (v35)
  {
    [v37 addLogMsgState:v35];
  }

  v40 = [GEOAPStateFactory sharedFactory:v42];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __117__GEOAPPortal_capturePressureDataWithPressureData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_89;
  v47[3] = &unk_1E7953A00;
  v48 = v37;
  v41 = v37;
  [v40 sessionStateForType:13 callback:v47];

  v18[2](v18);
  v11 = v46;
LABEL_21:

  v33 = *MEMORY[0x1E69E9840];
}

void __117__GEOAPPortal_capturePressureDataWithPressureData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __117__GEOAPPortal_capturePressureDataWithPressureData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_89(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)a3 chanceOfRain:(id)a4 chanceOfSnow:(id)a5 endTime:(id)a6 durationUntilEventEnd:(id)a7 durationUntilEventStart:(id)a8 startTime:(id)a9 temperature:(id)a10 timeOfDay:(id)a11 timeSinceBackgrounded:(id)a12 actualTransportMode:(int)a13 dayOfWeek:(id)a14 distanceFromHereToHome:(int)a15 distanceFromHereToOrigin:(int)a16 distanceFromHereToParkedCar:(int)a17 distanceFromHereToWork:(int)a18 distanceFromHere:(int)a19 distanceFromOriginToDestination:(int)a20 entryType:(int)a21 weatherType:(int)a22 mapType:(int)a23 predictedTransportMode:(int)a24 preferredTransportMode:(int)a25 isInBasemode:(id)a26 isCarplayConnected:(id)a27 isTourist:(id)a28 isTransitPossible:(id)a29 routePlanningScreenPresented:(id)a30 userLocationGeohash4:(id)a31 isVehicleBluetoothConnected:(id)a32 weatherAqi:(id)a33 modelName:(int)a34 modelVersion:(id)a35 modelTrainedDate:(id)a36 additionalStates:(id)a37 providedDropRate:(id)a38 completionQueue:(id)a39 completionBlock:(id)a40
{
  v195 = *MEMORY[0x1E69E9840];
  v181 = a3;
  v45 = a4;
  v180 = a5;
  v179 = a6;
  v46 = a7;
  v178 = a8;
  v47 = a9;
  v177 = a10;
  v176 = a11;
  v48 = a12;
  v49 = a14;
  v174 = a26;
  v173 = a27;
  v172 = a28;
  v50 = a29;
  v182 = a30;
  v170 = a31;
  v169 = a32;
  v168 = a33;
  v167 = a35;
  v166 = a36;
  v165 = a37;
  v51 = a38;
  v52 = a39;
  v53 = a40;
  v189[0] = MEMORY[0x1E69E9820];
  v189[1] = 3221225472;
  v189[2] = __705__GEOAPPortal_capturePredExTrainingWithChanceOfPrecipitation_chanceOfRain_chanceOfSnow_endTime_durationUntilEventEnd_durationUntilEventStart_startTime_temperature_timeOfDay_timeSinceBackgrounded_actualTransportMode_dayOfWeek_distanceFromHereToHome_distanceFromHereToOrigin_distanceFromHereToParkedCar_distanceFromHereToWork_distanceFromHere_distanceFromOriginToDestination_entryType_weatherType_mapType_predictedTransportMode_preferredTransportMode_isInBasemode_isCarplayConnected_isTourist_isTransitPossible_routePlanningScreenPresented_userLocationGeohash4_isVehicleBluetoothConnected_weatherAqi_modelName_modelVersion_modelTrainedDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v189[3] = &unk_1E7959478;
  v54 = v53;
  v191 = v54;
  v164 = v52;
  v190 = v164;
  v55 = MEMORY[0x1AC5A12F0](v189);
  v175 = v48;
  v171 = v50;
  if (GEOConfigGetBOOL())
  {
    v56 = v45;
    v57 = v47;
    (*(v55 + 16))(v55);
    v58 = v181;
    v59 = v55;
LABEL_7:
    v64 = v182;
    goto LABEL_8;
  }

  v57 = v47;
  v162 = v55;
  v163 = v46;
  v60 = +[GEOAPServiceManager sharedManager];
  v61 = [v60 eventCollectionIsDisabledForCurrentProcess];

  if (v61)
  {
    v56 = v45;
    v62 = GEOGetGEOAPPortalAnalyticsLog();
    v58 = v181;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v63 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v194 = v63;
      _os_log_impl(&dword_1AB634000, v62, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v59 = v162;
    v162[2](v162);
    v46 = v163;
    goto LABEL_7;
  }

  v58 = v181;
  if (v51)
  {
    [v51 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  v46 = v163;
  v64 = v182;
  if (v66 == 0.0 || v66 < arc4random() / 4294967300.0)
  {
    v158 = +[GEOAPStateFactory sharedFactory];
    v159 = v49;
    v160 = v45;
    v157 = v57;
    if ([v165 count])
    {
      v67 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v165, "count")}];
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      v188 = 0u;
      v68 = v165;
      v69 = [v68 countByEnumeratingWithState:&v185 objects:v192 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v186;
        do
        {
          for (i = 0; i != v70; ++i)
          {
            if (*v186 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = *(*(&v185 + 1) + 8 * i);
            v74 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v73, "stateType")}];
            [v67 setObject:v73 forKeyedSubscript:v74];
          }

          v70 = [v68 countByEnumeratingWithState:&v185 objects:v192 count:16];
        }

        while (v70);
      }

      v75 = [v67 copy];
      v76 = v181;
      v45 = v160;
      v46 = v163;
      v77 = v157;
    }

    else
    {
      v75 = 0;
      v76 = v181;
      v77 = v57;
    }

    v155 = v51;
    if (GEOConfigGetBOOL())
    {
      v161 = 0;
      v156 = 0;
    }

    else
    {
      v161 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v158, "logMsgStateTypeForType:", 1)}];
      v156 = [v75 objectForKeyedSubscript:?];
      if (!v156)
      {
        v156 = [v158 stateForType:1];
      }
    }

    v154 = v54;
    if (GEOConfigGetBOOL())
    {
      v78 = 0;
    }

    else
    {
      v79 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v158, "logMsgStateTypeForType:", 3)}];

      v80 = [v75 objectForKeyedSubscript:v79];
      if (!v80)
      {
        v80 = [v158 stateForType:3];
      }

      v78 = v80;
      v161 = v79;
    }

    if (GEOConfigGetBOOL())
    {
      v81 = v75;
      v82 = 0;
    }

    else
    {
      v83 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v158, "logMsgStateTypeForType:", 8)}];

      v84 = [v75 objectForKeyedSubscript:v83];
      v81 = v75;
      if (v84)
      {
        v161 = v83;
        v82 = v84;
      }

      else
      {
        v82 = [v158 stateForType:8];
        v161 = v83;
      }
    }

    v85 = objc_alloc_init(MEMORY[0x1E69A1E90]);
    [v85 setEventType:38];
    v86 = objc_alloc_init(MEMORY[0x1E69A1F60]);
    [v85 setPredExTrainingData:v86];

    if (v76)
    {
      [v76 doubleValue];
      v88 = v87;
      v89 = [v85 predExTrainingData];
      [v89 setChanceOfPrecipitation:v88];
    }

    if (v45)
    {
      [v45 doubleValue];
      v91 = v90;
      v92 = [v85 predExTrainingData];
      [v92 setChanceOfRain:v91];
    }

    if (v180)
    {
      [v180 doubleValue];
      v94 = v93;
      v95 = [v85 predExTrainingData];
      [v95 setChanceOfSnow:v94];
    }

    if (v179)
    {
      [v179 doubleValue];
      v97 = v96;
      v98 = [v85 predExTrainingData];
      [v98 setEndTime:v97];
    }

    if (v46)
    {
      [v46 doubleValue];
      v100 = v99;
      v101 = [v85 predExTrainingData];
      [v101 setDurationUntilEventEnd:v100];
    }

    if (v178)
    {
      [v178 doubleValue];
      v103 = v102;
      v104 = [v85 predExTrainingData];
      [v104 setDurationUntilEventStart:v103];
    }

    if (v77)
    {
      [v77 doubleValue];
      v106 = v105;
      v107 = [v85 predExTrainingData];
      [v107 setStartTime:v106];
    }

    if (v177)
    {
      [v177 doubleValue];
      v109 = v108;
      v110 = [v85 predExTrainingData];
      [v110 setTemperature:v109];
    }

    if (v176)
    {
      [v176 doubleValue];
      v112 = v111;
      v113 = [v85 predExTrainingData];
      [v113 setTimeOfDay:v112];
    }

    if (v175)
    {
      [v175 doubleValue];
      v115 = v114;
      v116 = [v85 predExTrainingData];
      [v116 setTimeSinceBackgrounded:v115];
    }

    v117 = [v85 predExTrainingData];
    [v117 setActualTransportMode:a13];

    if (v159)
    {
      [v159 doubleValue];
      v119 = v118;
      v120 = [v85 predExTrainingData];
      [v120 setDayOfWeek:v119];
    }

    v121 = [v85 predExTrainingData];
    [v121 setDistanceFromHereToHome:a15];

    v122 = [v85 predExTrainingData];
    [v122 setDistanceFromHereToOrigin:a16];

    v123 = [v85 predExTrainingData];
    [v123 setDistanceFromHereToParkedCar:a17];

    v124 = [v85 predExTrainingData];
    [v124 setDistanceFromHereToWork:a18];

    v125 = [v85 predExTrainingData];
    [v125 setDistanceFromHere:a19];

    v126 = [v85 predExTrainingData];
    [v126 setDistanceFromOriginToDestination:a20];

    v127 = [v85 predExTrainingData];
    [v127 setEntryType:a21];

    v128 = [v85 predExTrainingData];
    [v128 setWeatherType:a22];

    v129 = [v85 predExTrainingData];
    [v129 setMapType:a23];

    v130 = [v85 predExTrainingData];
    [v130 setPredictedTransportMode:a24];

    v131 = [v85 predExTrainingData];
    [v131 setPreferredTransportMode:a25];

    if (v174)
    {
      v132 = [v174 BOOLValue];
      v133 = [v85 predExTrainingData];
      [v133 setIsInBasemode:v132];
    }

    v56 = v160;
    v57 = v157;
    if (v173)
    {
      v134 = [v173 BOOLValue];
      v135 = [v85 predExTrainingData];
      [v135 setIsCarplayConnected:v134];
    }

    if (v172)
    {
      [v172 doubleValue];
      v137 = v136;
      v138 = [v85 predExTrainingData];
      [v138 setIsTourist:v137];
    }

    if (v171)
    {
      v139 = [v171 BOOLValue];
      v140 = [v85 predExTrainingData];
      [v140 setIsTransitPossible:v139];
    }

    if (v182)
    {
      v141 = [v182 BOOLValue];
      v142 = [v85 predExTrainingData];
      [v142 setRoutePlanningScreenPresented:v141];
    }

    v143 = [v85 predExTrainingData];
    [v143 setUserLocationGeohash4:v170];

    if (v169)
    {
      v144 = [v169 BOOLValue];
      v145 = [v85 predExTrainingData];
      [v145 setIsVehicleBluetoothConnected:v144];

      v56 = v160;
    }

    if (v168)
    {
      v146 = [v168 unsignedLongLongValue];
      v147 = [v85 predExTrainingData];
      [v147 setWeatherAqi:v146];

      v56 = v160;
    }

    v148 = [v85 predExTrainingData];
    [v148 setModelName:a34];

    v149 = [v85 predExTrainingData];
    [v149 setModelVersion:v167];

    v150 = [v85 predExTrainingData];
    [v150 setModelTrainedDate:v166];

    if (v82)
    {
      [v85 addLogMsgState:v82];
    }

    if (v156)
    {
      [v85 addLogMsgState:v156];
    }

    v151 = v82;
    if (v78)
    {
      [v85 addLogMsgState:v78];
    }

    v152 = +[GEOAPStateFactory sharedFactory];
    v183[0] = MEMORY[0x1E69E9820];
    v183[1] = 3221225472;
    v183[2] = __705__GEOAPPortal_capturePredExTrainingWithChanceOfPrecipitation_chanceOfRain_chanceOfSnow_endTime_durationUntilEventEnd_durationUntilEventStart_startTime_temperature_timeOfDay_timeSinceBackgrounded_actualTransportMode_dayOfWeek_distanceFromHereToHome_distanceFromHereToOrigin_distanceFromHereToParkedCar_distanceFromHereToWork_distanceFromHere_distanceFromOriginToDestination_entryType_weatherType_mapType_predictedTransportMode_preferredTransportMode_isInBasemode_isCarplayConnected_isTourist_isTransitPossible_routePlanningScreenPresented_userLocationGeohash4_isVehicleBluetoothConnected_weatherAqi_modelName_modelVersion_modelTrainedDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_87;
    v183[3] = &unk_1E7953A00;
    v184 = v85;
    v153 = v85;
    [v152 sessionStateForType:7 callback:v183];

    v59 = v162;
    v162[2](v162);

    v46 = v163;
    v49 = v159;
    v58 = v181;
    v64 = v182;
    v54 = v154;
    v51 = v155;
  }

  else
  {
    v56 = v45;
    v59 = v162;
    v162[2](v162);
  }

LABEL_8:

  v65 = *MEMORY[0x1E69E9840];
}

void __705__GEOAPPortal_capturePredExTrainingWithChanceOfPrecipitation_chanceOfRain_chanceOfSnow_endTime_durationUntilEventEnd_durationUntilEventStart_startTime_temperature_timeOfDay_timeSinceBackgrounded_actualTransportMode_dayOfWeek_distanceFromHereToHome_distanceFromHereToOrigin_distanceFromHereToParkedCar_distanceFromHereToWork_distanceFromHere_distanceFromOriginToDestination_entryType_weatherType_mapType_predictedTransportMode_preferredTransportMode_isInBasemode_isCarplayConnected_isTourist_isTransitPossible_routePlanningScreenPresented_userLocationGeohash4_isVehicleBluetoothConnected_weatherAqi_modelName_modelVersion_modelTrainedDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __705__GEOAPPortal_capturePredExTrainingWithChanceOfPrecipitation_chanceOfRain_chanceOfSnow_endTime_durationUntilEventEnd_durationUntilEventStart_startTime_temperature_timeOfDay_timeSinceBackgrounded_actualTransportMode_dayOfWeek_distanceFromHereToHome_distanceFromHereToOrigin_distanceFromHereToParkedCar_distanceFromHereToWork_distanceFromHere_distanceFromOriginToDestination_entryType_weatherType_mapType_predictedTransportMode_preferredTransportMode_isInBasemode_isCarplayConnected_isTourist_isTransitPossible_routePlanningScreenPresented_userLocationGeohash4_isVehicleBluetoothConnected_weatherAqi_modelName_modelVersion_modelTrainedDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_87(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)a3 chanceOfRain:(id)a4 chanceOfSnow:(id)a5 endTime:(id)a6 durationUntilEventEnd:(id)a7 durationUntilEventStart:(id)a8 startTime:(id)a9 temperature:(id)a10 timeOfDay:(id)a11 timeSinceBackgrounded:(id)a12 actualTransportMode:(int)a13 dayOfWeek:(id)a14 distanceFromHereToHome:(int)a15 distanceFromHereToOrigin:(int)a16 distanceFromHereToParkedCar:(int)a17 distanceFromHereToWork:(int)a18 distanceFromHere:(int)a19 distanceFromOriginToDestination:(int)a20 entryType:(int)a21 weatherType:(int)a22 mapType:(int)a23 predictedTransportMode:(int)a24 preferredTransportMode:(int)a25 isInBasemode:(id)a26 isCarplayConnected:(id)a27 isTourist:(id)a28 isTransitPossible:(id)a29 routePlanningScreenPresented:(id)a30 userLocationGeohash4:(id)a31 isVehicleBluetoothConnected:(id)a32 weatherAqi:(id)a33 modelName:(int)a34 modelVersion:(id)a35 modelTrainedDate:(id)a36
{
  LODWORD(v38) = a34;
  LODWORD(v37) = a25;
  LODWORD(v36) = a13;
  [a1 capturePredExTrainingWithChanceOfPrecipitation:a3 chanceOfRain:a4 chanceOfSnow:a5 endTime:a6 durationUntilEventEnd:a7 durationUntilEventStart:a8 startTime:a9 temperature:a10 timeOfDay:a11 timeSinceBackgrounded:a12 actualTransportMode:v36 dayOfWeek:a14 distanceFromHereToHome:__PAIR64__(a16 distanceFromHereToOrigin:a15) distanceFromHereToParkedCar:__PAIR64__(a18 distanceFromHereToWork:a17) distanceFromHere:__PAIR64__(a20 distanceFromOriginToDestination:a19) entryType:__PAIR64__(a22 weatherType:a21) mapType:__PAIR64__(a24 predictedTransportMode:a23) preferredTransportMode:v37 isInBasemode:a26 isCarplayConnected:a27 isTourist:a28 isTransitPossible:a29 routePlanningScreenPresented:a30 userLocationGeohash4:a31 isVehicleBluetoothConnected:a32 weatherAqi:a33 modelName:v38 modelVersion:a35 modelTrainedDate:a36 additionalStates:0 providedDropRate:0 completionQueue:0 completionBlock:0];
}

+ (void)capturePoiBusynessDataWithTimestamp:(id)a3 GEOLatLng_lat:(id)a4 GEOLatLng_lng:(id)a5 horizontalAccuracy:(id)a6 verticalAccuracy:(id)a7 altitude:(id)a8 poiPredictions:(id)a9 additionalStates:(id)a10 providedDropRate:(id)a11 completionQueue:(id)a12 completionBlock:(id)a13
{
  v119 = *MEMORY[0x1E69E9840];
  v101 = a3;
  v100 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v98 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __205__GEOAPPortal_capturePoiBusynessDataWithTimestamp_GEOLatLng_lat_GEOLatLng_lng_horizontalAccuracy_verticalAccuracy_altitude_poiPredictions_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v112[3] = &unk_1E7959478;
  v26 = v25;
  v114 = v26;
  v27 = v24;
  v113 = v27;
  v28 = MEMORY[0x1AC5A12F0](v112);
  v99 = v20;
  if (GEOConfigGetBOOL())
  {
    v28[2](v28);
    v30 = v100;
    v29 = v101;
  }

  else
  {
    v96 = v19;
    v97 = v18;
    v31 = +[GEOAPServiceManager sharedManager];
    v32 = [v31 eventCollectionIsDisabledForCurrentProcess];

    if (v32)
    {
      v33 = GEOGetGEOAPPortalAnalyticsLog();
      v30 = v100;
      v29 = v101;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v118 = v34;
        _os_log_impl(&dword_1AB634000, v33, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v28[2](v28);
      v19 = v96;
      v18 = v97;
    }

    else
    {
      v30 = v100;
      v29 = v101;
      if (v23)
      {
        [v23 doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      v19 = v96;
      v18 = v97;
      if (v35 == 0.0 || v35 < arc4random() / 4294967300.0)
      {
        v36 = +[GEOAPStateFactory sharedFactory];
        v91 = v26;
        v92 = v23;
        v94 = v36;
        v95 = v21;
        v93 = v22;
        if ([v22 count])
        {
          v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v22, "count")}];
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v38 = v22;
          v39 = [v38 countByEnumeratingWithState:&v108 objects:v116 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v109;
            do
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v109 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v108 + 1) + 8 * i);
                v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v43, "stateType")}];
                [v37 setObject:v43 forKeyedSubscript:v44];
              }

              v40 = [v38 countByEnumeratingWithState:&v108 objects:v116 count:16];
            }

            while (v40);
          }

          v45 = [v37 copy];
          v30 = v100;
          v29 = v101;
          v36 = v94;
          v21 = v95;
        }

        else
        {
          v45 = 0;
        }

        if (GEOConfigGetBOOL())
        {
          v89 = 0;
          v46 = 0;
        }

        else
        {
          v89 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v36, "logMsgStateTypeForType:", 1)}];
          v47 = [v45 objectForKeyedSubscript:?];
          if (!v47)
          {
            v47 = [v36 stateForType:1];
          }

          v46 = v47;
        }

        v48 = objc_alloc_init(MEMORY[0x1E69A1E90]);
        [v48 setEventType:52];
        v49 = objc_alloc_init(MEMORY[0x1E69A1F50]);
        [v48 setPoiBusynessData:v49];

        if (v29)
        {
          [v29 doubleValue];
          v51 = v50;
          v52 = [v48 poiBusynessData];
          [v52 setTimestamp:v51];
        }

        v53 = objc_alloc_init(MEMORY[0x1E69A1E50]);
        v54 = [v48 poiBusynessData];
        [v54 setLocation:v53];

        if (v30)
        {
          [v30 doubleValue];
          v56 = v55;
          v57 = [v48 poiBusynessData];
          v58 = [v57 location];
          [v58 setLat:v56];
        }

        if (v97)
        {
          [v97 doubleValue];
          v60 = v59;
          v61 = [v48 poiBusynessData];
          v62 = [v61 location];
          [v62 setLng:v60];
        }

        if (v96)
        {
          [v96 doubleValue];
          v64 = v63;
          v65 = [v48 poiBusynessData];
          [v65 setHorizontalAccuracy:v64];
        }

        if (v99)
        {
          [v99 doubleValue];
          v67 = v66;
          v68 = [v48 poiBusynessData];
          [v68 setVerticalAccuracy:v67];
        }

        if (v98)
        {
          [v98 doubleValue];
          v70 = v69;
          v71 = [v48 poiBusynessData];
          [v71 setAltitude:v70];
        }

        v88 = v46;
        v90 = v45;
        v72 = [v48 poiBusynessData];
        v73 = [v72 poiPredictions];

        if (!v73)
        {
          v74 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v21, "count")}];
          v75 = [v48 poiBusynessData];
          [v75 setPoiPredictions:v74];
        }

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v76 = v21;
        v77 = [v76 countByEnumeratingWithState:&v104 objects:v115 count:16];
        if (v77)
        {
          v78 = v77;
          v79 = *v105;
          do
          {
            for (j = 0; j != v78; ++j)
            {
              if (*v105 != v79)
              {
                objc_enumerationMutation(v76);
              }

              v81 = *(*(&v104 + 1) + 8 * j);
              v82 = [v48 poiBusynessData];
              v83 = [v82 poiPredictions];
              v84 = [v81 copy];
              [v83 addObject:v84];
            }

            v78 = [v76 countByEnumeratingWithState:&v104 objects:v115 count:16];
          }

          while (v78);
        }

        if (v88)
        {
          [v48 addLogMsgState:v88];
        }

        v85 = +[GEOAPStateFactory sharedFactory];
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __205__GEOAPPortal_capturePoiBusynessDataWithTimestamp_GEOLatLng_lat_GEOLatLng_lng_horizontalAccuracy_verticalAccuracy_altitude_poiPredictions_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_85;
        v102[3] = &unk_1E7953A00;
        v103 = v48;
        v86 = v48;
        [v85 sessionStateForType:16 callback:v102];

        v28[2](v28);
        v30 = v100;
        v29 = v101;
        v19 = v96;
        v18 = v97;
        v21 = v95;
        v23 = v92;
        v22 = v93;
        v26 = v91;
      }

      else
      {
        v28[2](v28);
      }
    }
  }

  v87 = *MEMORY[0x1E69E9840];
}

void __205__GEOAPPortal_capturePoiBusynessDataWithTimestamp_GEOLatLng_lat_GEOLatLng_lng_horizontalAccuracy_verticalAccuracy_altitude_poiPredictions_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __205__GEOAPPortal_capturePoiBusynessDataWithTimestamp_GEOLatLng_lat_GEOLatLng_lng_horizontalAccuracy_verticalAccuracy_altitude_poiPredictions_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_85(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)capturePlacesServiceMetadataWithPlacesMetadata:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v77 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __128__GEOAPPortal_capturePlacesServiceMetadataWithPlacesMetadata_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v71[3] = &unk_1E7959478;
  v16 = v15;
  v73 = v16;
  v17 = v14;
  v72 = v17;
  v18 = MEMORY[0x1AC5A12F0](v71);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (v20)
  {
    v21 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v76 = v22;
      _os_log_impl(&dword_1AB634000, v21, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v13)
  {
    [v13 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v23 != 0.0 && v23 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v18[2](v18);
    goto LABEL_21;
  }

  v64 = v11;
  v24 = +[GEOAPStateFactory sharedFactory];
  v58 = v24;
  v56 = v12;
  if ([v12 count])
  {
    v61 = v16;
    v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v26 = v12;
    v27 = [v26 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v68;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v68 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v67 + 1) + 8 * i);
          v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v31, "stateType")}];
          [v25 setObject:v31 forKeyedSubscript:v32];
        }

        v28 = [v26 countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v28);
    }

    v33 = [v25 copy];
    v16 = v61;
    v24 = v58;
  }

  else
  {
    v33 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v35 = 0;
    v63 = 0;
  }

  else
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 65)}];
    v36 = [v33 objectForKeyedSubscript:v35];
    if (!v36)
    {
      v36 = [v24 stateForType:65];
    }

    v63 = v36;
  }

  v12 = v56;
  if (GEOConfigGetBOOL())
  {
    v62 = 0;
  }

  else
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 30)}];

    v38 = [v33 objectForKeyedSubscript:v37];
    if (!v38)
    {
      v38 = [v24 stateForType:30];
    }

    v62 = v38;
    v35 = v37;
  }

  if (GEOConfigGetBOOL())
  {
    v60 = 0;
  }

  else
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 1)}];

    v40 = [v33 objectForKeyedSubscript:v39];
    if (!v40)
    {
      v40 = [v24 stateForType:1];
    }

    v60 = v40;
    v35 = v39;
  }

  if (GEOConfigGetBOOL())
  {
    v41 = 0;
  }

  else
  {
    v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 3)}];

    v41 = [v33 objectForKeyedSubscript:v42];
    if (!v41)
    {
      v41 = [v24 stateForType:3];
    }

    v35 = v42;
  }

  v59 = v41;
  v57 = v33;
  if (GEOConfigGetBOOL())
  {
    v43 = 0;
  }

  else
  {
    v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 42)}];

    v45 = [v33 objectForKeyedSubscript:v44];
    if (!v45)
    {
      v45 = [v24 stateForType:42];
    }

    v43 = v45;
    v35 = v44;
  }

  if (GEOConfigGetBOOL())
  {
    v46 = 0;
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 70)}];
    v48 = v47 = v24;

    v49 = [v57 objectForKeyedSubscript:v48];
    if (!v49)
    {
      v49 = [v47 stateForType:70];
    }

    v46 = v49;
    v35 = v48;
  }

  v50 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v50 setEventType:63];
  v51 = objc_alloc_init(MEMORY[0x1E69A1F90]);
  [v50 setServiceMetadata:v51];

  v52 = [v50 serviceMetadata];
  [v52 setPlacesMetadata:v64];

  v53 = [v50 serviceMetadata];
  [v53 setServiceMetadataType:2];

  if (v60)
  {
    [v50 addLogMsgState:?];
  }

  if (v59)
  {
    [v50 addLogMsgState:?];
  }

  if (v62)
  {
    [v50 addLogMsgState:?];
  }

  if (v63)
  {
    [v50 addLogMsgState:?];
  }

  if (v43)
  {
    [v50 addLogMsgState:v43];
  }

  if (v46)
  {
    [v50 addLogMsgState:v46];
  }

  v54 = +[GEOAPStateFactory sharedFactory];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __128__GEOAPPortal_capturePlacesServiceMetadataWithPlacesMetadata_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_82;
  v65[3] = &unk_1E7953A00;
  v66 = v50;
  v55 = v50;
  [v54 sessionStateForType:6 callback:v65];

  v18[2](v18);
  v11 = v64;
LABEL_21:

  v34 = *MEMORY[0x1E69E9840];
}

void __128__GEOAPPortal_capturePlacesServiceMetadataWithPlacesMetadata_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __128__GEOAPPortal_capturePlacesServiceMetadataWithPlacesMetadata_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_82(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)capturePeriodicSettingsWithMapSettings:(id)a3 mapUiShown:(id)a4 mapsFeatures:(id)a5 mapsUserSettings:(id)a6 routingSettings:(id)a7 additionalStates:(id)a8 providedDropRate:(id)a9 completionQueue:(id)a10 completionBlock:(id)a11
{
  v81 = *MEMORY[0x1E69E9840];
  v68 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __177__GEOAPPortal_capturePeriodicSettingsWithMapSettings_mapUiShown_mapsFeatures_mapsUserSettings_routingSettings_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v75[3] = &unk_1E7959478;
  v24 = v23;
  v77 = v24;
  v25 = v22;
  v76 = v25;
  v26 = MEMORY[0x1AC5A12F0](v75);
  if (!GEOConfigGetBOOL())
  {
    v66 = v25;
    v67 = v19;
    v28 = +[GEOAPServiceManager sharedManager];
    v29 = [v28 eventCollectionIsDisabledForCurrentProcess];

    if (v29)
    {
      v30 = GEOGetGEOAPPortalAnalyticsLog();
      v27 = v20;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v80 = v31;
        _os_log_impl(&dword_1AB634000, v30, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v26[2](v26);
      v19 = v67;
    }

    else
    {
      v27 = v20;
      if (v21)
      {
        [v21 doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      v25 = v66;
      v19 = v67;
      if (v32 != 0.0 && v32 >= arc4random() / 4294967300.0)
      {
        v26[2](v26);
        goto LABEL_45;
      }

      v60 = +[GEOAPStateFactory sharedFactory];
      v57 = v24;
      v61 = v18;
      if ([v20 count])
      {
        v58 = v21;
        v62 = v17;
        v64 = v16;
        v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v20, "count")}];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v34 = v20;
        v35 = [v34 countByEnumeratingWithState:&v71 objects:v78 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v72;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v72 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v71 + 1) + 8 * i);
              v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v39, "stateType")}];
              [v33 setObject:v39 forKeyedSubscript:v40];
            }

            v36 = [v34 countByEnumeratingWithState:&v71 objects:v78 count:16];
          }

          while (v36);
        }

        v41 = [v33 copy];
        v17 = v62;
        v16 = v64;
        v21 = v58;
      }

      else
      {
        v41 = 0;
      }

      if (GEOConfigGetBOOL())
      {
        v65 = 0;
        v59 = 0;
      }

      else
      {
        v65 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v60, "logMsgStateTypeForType:", 30)}];
        v59 = [v41 objectForKeyedSubscript:?];
        if (!v59)
        {
          v59 = [v60 stateForType:30];
        }
      }

      v27 = v20;
      if (GEOConfigGetBOOL())
      {
        v63 = 0;
        v42 = v60;
      }

      else
      {
        v42 = v60;
        v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v60, "logMsgStateTypeForType:", 1)}];

        v63 = [v41 objectForKeyedSubscript:v43];
        if (!v63)
        {
          v63 = [v60 stateForType:1];
        }

        v65 = v43;
      }

      if (GEOConfigGetBOOL())
      {
        v44 = 0;
      }

      else
      {
        v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v42, "logMsgStateTypeForType:", 3)}];

        v46 = [v41 objectForKeyedSubscript:v45];
        if (!v46)
        {
          v46 = [v42 stateForType:3];
        }

        v44 = v46;
        v65 = v45;
      }

      v47 = objc_alloc_init(MEMORY[0x1E69A1E90]);
      [v47 setEventType:53];
      v48 = objc_alloc_init(MEMORY[0x1E69A1F58]);
      [v47 setPeriodicSettingsSummary:v48];

      v49 = [v47 periodicSettingsSummary];
      [v49 setMapSettings:v68];

      v50 = [v47 periodicSettingsSummary];
      [v50 setMapUiShown:v16];

      v51 = [v47 periodicSettingsSummary];
      [v51 setMapsFeatures:v17];

      v52 = [v47 periodicSettingsSummary];
      [v52 setMapsUserSettings:v61];

      v53 = [v47 periodicSettingsSummary];
      [v53 setRoutingSettings:v67];

      if (v63)
      {
        [v47 addLogMsgState:v63];
      }

      if (v44)
      {
        [v47 addLogMsgState:v44];
      }

      if (v59)
      {
        [v47 addLogMsgState:v59];
      }

      v54 = +[GEOAPStateFactory sharedFactory];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __177__GEOAPPortal_capturePeriodicSettingsWithMapSettings_mapUiShown_mapsFeatures_mapsUserSettings_routingSettings_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_81;
      v69[3] = &unk_1E7953A00;
      v70 = v47;
      v55 = v47;
      [v54 sessionStateForType:7 callback:v69];

      v26[2](v26);
      v18 = v61;
      v19 = v67;
      v24 = v57;
    }

    v25 = v66;
    goto LABEL_45;
  }

  v26[2](v26);
  v27 = v20;
LABEL_45:

  v56 = *MEMORY[0x1E69E9840];
}

void __177__GEOAPPortal_capturePeriodicSettingsWithMapSettings_mapUiShown_mapsFeatures_mapsUserSettings_routingSettings_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __177__GEOAPPortal_capturePeriodicSettingsWithMapSettings_mapUiShown_mapsFeatures_mapsUserSettings_routingSettings_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_81(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureNetworkEventWithNetworkService:(int)a3 requestAppIdentifier:(id)a4 requestAppIdMajorVer:(id)a5 requestAppIdMinorVer:(id)a6 requestErrorDomain:(id)a7 requestErrorCode:(id)a8 requestDataSize:(id)a9 responseDataSize:(id)a10 totalTime:(id)a11 httpResponseCode:(id)a12 serviceIpAddress:(id)a13 taskMetrics:(id)a14 mptcpServiceType:(int)a15 mptcpNegotiated:(id)a16 rnfTriggered:(id)a17 queuedTime:(id)a18 redirectCount:(id)a19 requestStart:(id)a20 requestEnd:(id)a21 wasBackground:(id)a22 additionalStates:(id)a23 providedDropRate:(id)a24 completionQueue:(id)a25 completionBlock:(id)a26
{
  v166 = *MEMORY[0x1E69E9840];
  v152 = a4;
  v30 = a5;
  v151 = a6;
  v150 = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  v34 = a11;
  v35 = a12;
  v36 = a13;
  v37 = a14;
  v149 = a16;
  v148 = a17;
  v147 = a18;
  v146 = a19;
  v145 = a20;
  v144 = a21;
  v143 = a22;
  v142 = a23;
  v153 = a24;
  v38 = a25;
  v39 = a26;
  v160[0] = MEMORY[0x1E69E9820];
  v160[1] = 3221225472;
  v160[2] = __416__GEOAPPortal_captureNetworkEventWithNetworkService_requestAppIdentifier_requestAppIdMajorVer_requestAppIdMinorVer_requestErrorDomain_requestErrorCode_requestDataSize_responseDataSize_totalTime_httpResponseCode_serviceIpAddress_taskMetrics_mptcpServiceType_mptcpNegotiated_rnfTriggered_queuedTime_redirectCount_requestStart_requestEnd_wasBackground_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v160[3] = &unk_1E7959478;
  v141 = v39;
  v162 = v141;
  v140 = v38;
  v161 = v140;
  v40 = MEMORY[0x1AC5A12F0](v160);
  if (GEOConfigGetBOOL())
  {
    v40[2](v40);
    v41 = v31;
LABEL_22:
    v56 = v32;
    goto LABEL_23;
  }

  v136 = v40;
  v139 = v30;
  v42 = +[GEOAPServiceManager sharedManager];
  v43 = [v42 eventCollectionIsDisabledForCurrentProcess];

  if (v43)
  {
    v44 = GEOGetGEOAPPortalAnalyticsLog();
    v41 = v31;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v45 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v165 = v45;
      _os_log_impl(&dword_1AB634000, v44, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v40 = v136;
    v136[2](v136);
    v30 = v139;
    goto LABEL_22;
  }

  v41 = v31;
  if (v153)
  {
    [v153 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  v47 = v46;
  v30 = v139;
  if (v46 != 0.0 && v46 >= arc4random() / 4294967300.0)
  {
    v40 = v136;
    v136[2](v136);
    goto LABEL_22;
  }

  v124 = +[GEOAPStateFactory sharedFactory];
  v122 = v34;
  v135 = v35;
  v125 = v37;
  v126 = v36;
  if ([v142 count])
  {
    v48 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v142, "count")}];
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v49 = v142;
    v50 = [v49 countByEnumeratingWithState:&v156 objects:v163 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v157;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v157 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v156 + 1) + 8 * i);
          v55 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v54, "stateType")}];
          [v48 setObject:v54 forKeyedSubscript:v55];
        }

        v51 = [v49 countByEnumeratingWithState:&v156 objects:v163 count:16];
      }

      while (v51);
    }

    v138 = [v48 copy];
    v41 = v31;
    v34 = v122;
    v35 = v135;
  }

  else
  {
    v138 = 0;
  }

  v56 = v32;
  if (GEOConfigGetBOOL())
  {
    v58 = 0;
    v134 = 0;
    v59 = v124;
  }

  else
  {
    v59 = v124;
    v58 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v124, "logMsgStateTypeForType:", 2)}];
    v134 = [v138 objectForKeyedSubscript:v58];
    if (!v134)
    {
      v134 = [v124 stateForType:2];
    }
  }

  if (GEOConfigGetBOOL())
  {
    v133 = 0;
  }

  else
  {
    v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v59, "logMsgStateTypeForType:", 6)}];

    v133 = [v138 objectForKeyedSubscript:v60];
    if (!v133)
    {
      v133 = [v59 stateForType:6];
    }

    v58 = v60;
  }

  if (GEOConfigGetBOOL())
  {
    v132 = 0;
  }

  else
  {
    v61 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v59, "logMsgStateTypeForType:", 36)}];

    v132 = [v138 objectForKeyedSubscript:v61];
    if (!v132)
    {
      v132 = [v59 stateForType:36];
    }

    v58 = v61;
  }

  if (GEOConfigGetBOOL())
  {
    v131 = 0;
  }

  else
  {
    v62 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v59, "logMsgStateTypeForType:", 29)}];

    v131 = [v138 objectForKeyedSubscript:v62];
    if (!v131)
    {
      v131 = [v59 stateForType:29];
    }

    v58 = v62;
  }

  if (GEOConfigGetBOOL())
  {
    v130 = 0;
  }

  else
  {
    v63 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v59, "logMsgStateTypeForType:", 1)}];

    v130 = [v138 objectForKeyedSubscript:v63];
    if (!v130)
    {
      v130 = [v59 stateForType:1];
    }

    v58 = v63;
  }

  if (GEOConfigGetBOOL())
  {
    v129 = 0;
  }

  else
  {
    v64 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v59, "logMsgStateTypeForType:", 47)}];

    v129 = [v138 objectForKeyedSubscript:v64];
    if (!v129)
    {
      v129 = [v59 stateForType:47];
    }

    v58 = v64;
  }

  if (GEOConfigGetBOOL())
  {
    v128 = 0;
  }

  else
  {
    v65 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v59, "logMsgStateTypeForType:", 15)}];

    v128 = [v138 objectForKeyedSubscript:v65];
    if (!v128)
    {
      v128 = [v59 stateForType:15];
    }

    v58 = v65;
  }

  if (GEOConfigGetBOOL())
  {
    v121 = 0;
  }

  else
  {
    v66 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v59, "logMsgStateTypeForType:", 33)}];

    v121 = [v138 objectForKeyedSubscript:v66];
    if (!v121)
    {
      v121 = [v59 stateForType:33];
    }

    v58 = v66;
  }

  if (GEOConfigGetBOOL())
  {
    v67 = 0;
  }

  else
  {
    v68 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v59, "logMsgStateTypeForType:", 66)}];

    v67 = [v138 objectForKeyedSubscript:v68];
    if (!v67)
    {
      v67 = [v59 stateForType:66];
    }

    v58 = v68;
  }

  v123 = v67;
  if (GEOConfigGetBOOL())
  {
    v127 = 0;
  }

  else
  {
    v69 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v59, "logMsgStateTypeForType:", 23)}];

    v127 = [v138 objectForKeyedSubscript:v69];
    if (!v127)
    {
      v127 = [v59 stateForType:23];
    }

    v58 = v69;
  }

  if (GEOConfigGetBOOL())
  {
    v70 = 0;
  }

  else
  {
    v71 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v59, "logMsgStateTypeForType:", 22)}];

    v72 = [v138 objectForKeyedSubscript:v71];
    if (v72)
    {
      v70 = v72;
    }

    else
    {
      v70 = [v59 stateForType:22];
    }

    v58 = v71;
  }

  v73 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v73 setEventType:6];
  v74 = objc_alloc_init(MEMORY[0x1E69A1F38]);
  [v73 setNetworkEvent:v74];

  v75 = [v73 networkEvent];
  [v75 setNetworkService:a3];

  v76 = [v73 networkEvent];
  [v76 setRequestAppIdentifier:v152];

  v77 = [v73 networkEvent];
  [v77 setRequestAppIdMajorVer:v139];

  v78 = [v73 networkEvent];
  [v78 setRequestAppIdMinorVer:v151];

  v79 = [v73 networkEvent];
  [v79 setRequestErrorDomain:v150];

  if (v41)
  {
    v80 = [v41 integerValue];
    v81 = [v73 networkEvent];
    [v81 setRequestErrorCode:v80];
  }

  if (v56)
  {
    v82 = [v56 integerValue];
    v83 = [v73 networkEvent];
    [v83 setRequestDataSize:v82];
  }

  if (v33)
  {
    v84 = [v33 integerValue];
    v85 = [v73 networkEvent];
    [v85 setResponseDataSize:v84];
  }

  if (v34)
  {
    v86 = [v34 integerValue];
    v87 = [v73 networkEvent];
    [v87 setTotalTime:v86];

    v35 = v135;
  }

  if (v35)
  {
    v88 = [v35 integerValue];
    v89 = [v73 networkEvent];
    [v89 setHttpResponseCode:v88];
  }

  v90 = [v73 networkEvent];
  [v90 setServiceIpAddress:v126];

  v91 = [v73 networkEvent];
  [v91 setTaskMetrics:v125];

  v92 = [v73 networkEvent];
  [v92 setMptcpServiceType:a15];

  if (v149)
  {
    v93 = [v149 BOOLValue];
    v94 = [v73 networkEvent];
    [v94 setMptcpNegotiated:v93];
  }

  if (v148)
  {
    v95 = [v148 BOOLValue];
    v96 = [v73 networkEvent];
    [v96 setRnfTriggered:v95];
  }

  if (v147)
  {
    v97 = [v147 integerValue];
    v98 = [v73 networkEvent];
    [v98 setQueuedTime:v97];
  }

  if (v146)
  {
    v99 = [v146 integerValue];
    v100 = [v73 networkEvent];
    [v100 setRedirectCount:v99];
  }

  if (v145)
  {
    [v145 doubleValue];
    v102 = v101;
    v103 = [v73 networkEvent];
    [v103 setRequestStart:v102];
  }

  if (v144)
  {
    [v144 doubleValue];
    v105 = v104;
    v106 = [v73 networkEvent];
    [v106 setRequestEnd:v105];
  }

  if (v143)
  {
    v107 = [v143 BOOLValue];
    v108 = [v73 networkEvent];
    [v108 setWasBackground:v107];
  }

  v109 = [MEMORY[0x1E69A2478] modernManager];
  v110 = [v109 activeTileGroup];
  v111 = [v110 identifier];
  v112 = [v73 networkEvent];
  [v112 setTilesetId:v111];

  if (GEOConfigGetBOOL())
  {
    v113 = [MEMORY[0x1E69A2470] defaultConfiguration];
    v114 = [v113 environment];
    v115 = [v73 networkEvent];
    [v115 setManifestEnv:v114];
  }

  v116 = [MEMORY[0x1E696AD98] numberWithDouble:round((1.0 - v47) * 10000.0)];
  v117 = [v116 unsignedIntValue];
  v118 = [v73 networkEvent];
  [v118 setSamplingRate:v117];

  if (v134)
  {
    [v73 addLogMsgState:?];
  }

  v34 = v122;
  v35 = v135;
  if (v133)
  {
    [v73 addLogMsgState:?];
  }

  if (v132)
  {
    [v73 addLogMsgState:v132];
  }

  if (v131)
  {
    [v73 addLogMsgState:v131];
  }

  if (v130)
  {
    [v73 addLogMsgState:?];
  }

  if (v129)
  {
    [v73 addLogMsgState:?];
  }

  if (v128)
  {
    [v73 addLogMsgState:v128];
  }

  if (v123)
  {
    [v73 addLogMsgState:?];
  }

  if (v127)
  {
    [v73 addLogMsgState:?];
  }

  if (v70)
  {
    [v73 addLogMsgState:v70];
  }

  if (v121)
  {
    [v73 addLogMsgState:v121];
  }

  v119 = +[GEOAPStateFactory sharedFactory];
  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 3221225472;
  v154[2] = __416__GEOAPPortal_captureNetworkEventWithNetworkService_requestAppIdentifier_requestAppIdMajorVer_requestAppIdMinorVer_requestErrorDomain_requestErrorCode_requestDataSize_responseDataSize_totalTime_httpResponseCode_serviceIpAddress_taskMetrics_mptcpServiceType_mptcpNegotiated_rnfTriggered_queuedTime_redirectCount_requestStart_requestEnd_wasBackground_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_79;
  v154[3] = &unk_1E7953A00;
  v120 = v73;
  v155 = v120;
  [v119 sessionStateForType:7 callback:v154];

  v40 = v136;
  v136[2](v136);

  v30 = v139;
  v37 = v125;
  v36 = v126;
LABEL_23:

  v57 = *MEMORY[0x1E69E9840];
}

void __416__GEOAPPortal_captureNetworkEventWithNetworkService_requestAppIdentifier_requestAppIdMajorVer_requestAppIdMinorVer_requestErrorDomain_requestErrorCode_requestDataSize_responseDataSize_totalTime_httpResponseCode_serviceIpAddress_taskMetrics_mptcpServiceType_mptcpNegotiated_rnfTriggered_queuedTime_redirectCount_requestStart_requestEnd_wasBackground_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __416__GEOAPPortal_captureNetworkEventWithNetworkService_requestAppIdentifier_requestAppIdMajorVer_requestAppIdMinorVer_requestErrorDomain_requestErrorCode_requestDataSize_responseDataSize_totalTime_httpResponseCode_serviceIpAddress_taskMetrics_mptcpServiceType_mptcpNegotiated_rnfTriggered_queuedTime_redirectCount_requestStart_requestEnd_wasBackground_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_79(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureNetSelectionHarvestWithHarvestData:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __123__GEOAPPortal_captureNetSelectionHarvestWithHarvestData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v32[3] = &unk_1E7959478;
  v14 = v13;
  v34 = v14;
  v15 = v12;
  v33 = v15;
  v16 = MEMORY[0x1AC5A12F0](v32);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_13;
  }

  v17 = +[GEOAPServiceManager sharedManager];
  v18 = [v17 platformDiagAndUsage];

  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (v20)
  {
    v21 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v36 = v22;
      _os_log_impl(&dword_1AB634000, v21, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (v11)
  {
    [v11 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v23 != 0.0 && v23 >= arc4random() / 4294967300.0)
  {
LABEL_13:
    v16[2](v16);
    goto LABEL_14;
  }

  v24 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v24 setEventType:56];
  v25 = objc_alloc_init(MEMORY[0x1E69A1F48]);
  [v24 setNetworkSelectionHarvest:v25];

  v26 = [v24 networkSelectionHarvest];
  [v26 setHarvestData:v10];

  v27 = +[GEOAPStateFactory sharedFactory];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __123__GEOAPPortal_captureNetSelectionHarvestWithHarvestData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_76;
  v30[3] = &unk_1E7953A00;
  v31 = v24;
  v28 = v24;
  [v27 sessionStateForType:7 callback:v30];

  v16[2](v16);
LABEL_14:

  v29 = *MEMORY[0x1E69E9840];
}

void __123__GEOAPPortal_captureNetSelectionHarvestWithHarvestData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __123__GEOAPPortal_captureNetSelectionHarvestWithHarvestData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_76(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureNetEventSummaryWithGroups:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v86 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __114__GEOAPPortal_captureNetEventSummaryWithGroups_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v79[3] = &unk_1E7959478;
  v16 = v15;
  v81 = v16;
  v17 = v14;
  v80 = v17;
  v18 = MEMORY[0x1AC5A12F0](v79);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (v20)
  {
    v21 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v85 = v22;
      _os_log_impl(&dword_1AB634000, v21, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v13)
  {
    [v13 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v23 != 0.0 && v23 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v18[2](v18);
    goto LABEL_21;
  }

  v24 = +[GEOAPStateFactory sharedFactory];
  v67 = v24;
  v68 = v11;
  v64 = v13;
  v65 = v12;
  v63 = v16;
  if ([v12 count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v26 = v12;
    v27 = [v26 countByEnumeratingWithState:&v75 objects:v83 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v76;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v76 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v75 + 1) + 8 * i);
          v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v31, "stateType")}];
          [v25 setObject:v31 forKeyedSubscript:v32];
        }

        v28 = [v26 countByEnumeratingWithState:&v75 objects:v83 count:16];
      }

      while (v28);
    }

    v33 = [v25 copy];
    v24 = v67;
    v11 = v68;
  }

  else
  {
    v33 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 35)}];
    v37 = [v33 objectForKeyedSubscript:v35];
    if (!v37)
    {
      v37 = [v24 stateForType:35];
    }

    v36 = v37;
  }

  v61 = v36;
  if (GEOConfigGetBOOL())
  {
    v66 = 0;
  }

  else
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 1)}];

    v66 = [v33 objectForKeyedSubscript:v38];
    if (!v66)
    {
      v66 = [v24 stateForType:1];
    }

    v35 = v38;
  }

  v62 = v33;
  if (GEOConfigGetBOOL())
  {
    v59 = 0;
    v60 = v35;
  }

  else
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 3)}];

    v40 = [v33 objectForKeyedSubscript:v39];
    if (!v40)
    {
      v40 = [v24 stateForType:3];
    }

    v59 = v40;
    v60 = v39;
  }

  v41 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v41 setEventType:62];
  v42 = objc_alloc_init(MEMORY[0x1E69A1F40]);
  [v41 setNetworkEventSummary:v42];

  v43 = [v41 networkEventSummary];
  v44 = [v43 groups];

  if (!v44)
  {
    v45 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v46 = [v41 networkEventSummary];
    [v46 setGroups:v45];
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v47 = v11;
  v48 = [v47 countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v72;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v72 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v71 + 1) + 8 * j);
        v53 = [v41 networkEventSummary];
        v54 = [v53 groups];
        v55 = [v52 copy];
        [v54 addObject:v55];
      }

      v49 = [v47 countByEnumeratingWithState:&v71 objects:v82 count:16];
    }

    while (v49);
  }

  if (v61)
  {
    [v41 addLogMsgState:v61];
  }

  v11 = v68;
  v16 = v63;
  v13 = v64;
  if (v66)
  {
    [v41 addLogMsgState:v66];
  }

  if (v59)
  {
    [v41 addLogMsgState:v59];
  }

  v56 = +[GEOAPStateFactory sharedFactory];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __114__GEOAPPortal_captureNetEventSummaryWithGroups_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_74;
  v69[3] = &unk_1E7953A00;
  v70 = v41;
  v57 = v41;
  [v56 sessionStateForType:7 callback:v69];

  v18[2](v18);
  v12 = v65;
  v17 = v58;
LABEL_21:

  v34 = *MEMORY[0x1E69E9840];
}

void __114__GEOAPPortal_captureNetEventSummaryWithGroups_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __114__GEOAPPortal_captureNetEventSummaryWithGroups_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureNavTraceWithNavTraceData:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v69 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __113__GEOAPPortal_captureNavTraceWithNavTraceData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v63[3] = &unk_1E7959478;
  v16 = v15;
  v65 = v16;
  v17 = v14;
  v64 = v17;
  v18 = MEMORY[0x1AC5A12F0](v63);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (v20)
  {
    v21 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v68 = v22;
      _os_log_impl(&dword_1AB634000, v21, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v13)
  {
    [v13 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v23 != 0.0 && v23 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v18[2](v18);
    goto LABEL_21;
  }

  v56 = v11;
  v24 = +[GEOAPStateFactory sharedFactory];
  v52 = v24;
  v50 = v12;
  if ([v12 count])
  {
    v53 = v16;
    v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v26 = v12;
    v27 = [v26 countByEnumeratingWithState:&v59 objects:v66 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v60;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v60 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v59 + 1) + 8 * i);
          v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v31, "stateType")}];
          [v25 setObject:v31 forKeyedSubscript:v32];
        }

        v28 = [v26 countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v28);
    }

    v33 = [v25 copy];
    v16 = v53;
    v24 = v52;
  }

  else
  {
    v33 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v35 = 0;
    v55 = 0;
  }

  else
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 2)}];
    v36 = [v33 objectForKeyedSubscript:v35];
    if (!v36)
    {
      v36 = [v24 stateForType:2];
    }

    v55 = v36;
  }

  v12 = v50;
  if (GEOConfigGetBOOL())
  {
    v37 = 0;
  }

  else
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 29)}];

    v37 = [v33 objectForKeyedSubscript:v38];
    if (!v37)
    {
      v37 = [v24 stateForType:29];
    }

    v35 = v38;
  }

  v54 = v37;
  v51 = v33;
  if (GEOConfigGetBOOL())
  {
    v39 = 0;
  }

  else
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 1)}];

    v41 = [v33 objectForKeyedSubscript:v40];
    if (!v41)
    {
      v41 = [v24 stateForType:1];
    }

    v39 = v41;
    v35 = v40;
  }

  if (GEOConfigGetBOOL())
  {
    v42 = 0;
  }

  else
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 3)}];

    v44 = [v51 objectForKeyedSubscript:v43];
    if (!v44)
    {
      v44 = [v24 stateForType:3];
    }

    v42 = v44;
    v35 = v43;
  }

  v45 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v45 setEventType:23];
  v46 = objc_alloc_init(MEMORY[0x1E69A1ED8]);
  [v45 setFullNavTrace:v46];

  v47 = [v45 fullNavTrace];
  [v47 setNavTraceData:v56];

  if (v54)
  {
    [v45 addLogMsgState:?];
  }

  if (v39)
  {
    [v45 addLogMsgState:v39];
  }

  if (v55)
  {
    [v45 addLogMsgState:?];
  }

  if (v42)
  {
    [v45 addLogMsgState:v42];
  }

  v48 = +[GEOAPStateFactory sharedFactory];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __113__GEOAPPortal_captureNavTraceWithNavTraceData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_72;
  v57[3] = &unk_1E7953A00;
  v58 = v45;
  v49 = v45;
  [v48 sessionStateForType:9 callback:v57];

  v18[2](v18);
  v11 = v56;
LABEL_21:

  v34 = *MEMORY[0x1E69E9840];
}

void __113__GEOAPPortal_captureNavTraceWithNavTraceData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __113__GEOAPPortal_captureNavTraceWithNavTraceData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_72(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureNavThermalPressureWithThermalPressure:(id)a3 disableMapFeatures:(id)a4 navMapType:(int)a5 collectionTrigger:(int)a6 additionalStates:(id)a7 providedDropRate:(id)a8 completionQueue:(id)a9 completionBlock:(id)a10
{
  v107 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __174__GEOAPPortal_captureNavThermalPressureWithThermalPressure_disableMapFeatures_navMapType_collectionTrigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v100[3] = &unk_1E7959478;
  v19 = v18;
  v102 = v19;
  v20 = v17;
  v101 = v20;
  v21 = MEMORY[0x1AC5A12F0](v100);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v22 = +[GEOAPServiceManager sharedManager];
  v23 = [v22 eventCollectionIsDisabledForCurrentProcess];

  if (v23)
  {
    v24 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v106 = v25;
      _os_log_impl(&dword_1AB634000, v24, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v16)
  {
    [v16 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v26 != 0.0 && v26 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v21[2](v21);
    goto LABEL_21;
  }

  v76 = v16;
  v27 = +[GEOAPStateFactory sharedFactory];
  v78 = v27;
  v79 = v14;
  v80 = v13;
  v77 = v15;
  v75 = v19;
  if ([v15 count])
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v29 = v15;
    v30 = [v29 countByEnumeratingWithState:&v96 objects:v104 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v97;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v97 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v96 + 1) + 8 * i);
          v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "stateType")}];
          [v28 setObject:v34 forKeyedSubscript:v35];
        }

        v31 = [v29 countByEnumeratingWithState:&v96 objects:v104 count:16];
      }

      while (v31);
    }

    v36 = [v28 copy];
    v14 = v79;
    v13 = v80;
    v27 = v78;
  }

  else
  {
    v36 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 65)}];
    v40 = [v36 objectForKeyedSubscript:v38];
    if (!v40)
    {
      v40 = [v27 stateForType:65];
    }

    v39 = v40;
  }

  if (GEOConfigGetBOOL())
  {
    v87 = 0;
  }

  else
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 6)}];

    v87 = [v36 objectForKeyedSubscript:v41];
    if (!v87)
    {
      v87 = [v27 stateForType:6];
    }

    v38 = v41;
  }

  if (GEOConfigGetBOOL())
  {
    v86 = 0;
  }

  else
  {
    v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 15)}];

    v86 = [v36 objectForKeyedSubscript:v42];
    if (!v86)
    {
      v86 = [v27 stateForType:15];
    }

    v38 = v42;
  }

  if (GEOConfigGetBOOL())
  {
    v84 = 0;
  }

  else
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 35)}];

    v44 = [v36 objectForKeyedSubscript:v43];
    if (!v44)
    {
      v44 = [v27 stateForType:35];
    }

    v84 = v44;
    v38 = v43;
  }

  if (GEOConfigGetBOOL())
  {
    v83 = 0;
  }

  else
  {
    v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 30)}];

    v46 = [v36 objectForKeyedSubscript:v45];
    if (!v46)
    {
      v46 = [v27 stateForType:30];
    }

    v83 = v46;
    v38 = v45;
  }

  if (GEOConfigGetBOOL())
  {
    v82 = 0;
  }

  else
  {
    v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 1)}];

    v48 = [v36 objectForKeyedSubscript:v47];
    if (!v48)
    {
      v48 = [v27 stateForType:1];
    }

    v82 = v48;
    v38 = v47;
  }

  if (GEOConfigGetBOOL())
  {
    v49 = 0;
  }

  else
  {
    v50 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 14)}];

    v51 = [v36 objectForKeyedSubscript:v50];
    if (!v51)
    {
      v51 = [v27 stateForType:14];
    }

    v38 = v50;
    v49 = v51;
  }

  v72 = v49;
  if (GEOConfigGetBOOL())
  {
    v85 = 0;
  }

  else
  {
    v52 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 9)}];

    v85 = [v36 objectForKeyedSubscript:v52];
    if (!v85)
    {
      v85 = [v27 stateForType:9];
    }

    v38 = v52;
  }

  v74 = v36;
  if (GEOConfigGetBOOL())
  {
    v53 = 0;
  }

  else
  {
    v54 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 42)}];

    v53 = [v36 objectForKeyedSubscript:v54];
    if (!v53)
    {
      v53 = [v27 stateForType:42];
    }

    v38 = v54;
  }

  v81 = v53;
  v73 = v39;
  v55 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v55 setEventType:54];
  v56 = objc_alloc_init(MEMORY[0x1E69A1FB8]);
  [v55 setThermalPressure:v56];

  if (v13)
  {
    v57 = [v13 unsignedLongLongValue];
    v58 = [v55 thermalPressure];
    [v58 setThermalPressure:v57];
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v59 = v14;
  v60 = [v59 countByEnumeratingWithState:&v92 objects:v103 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v93;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v93 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v92 + 1) + 8 * j);
        v65 = [v55 thermalPressure];
        [v65 addDisableMapFeatures:{objc_msgSend(v64, "integerValue")}];
      }

      v61 = [v59 countByEnumeratingWithState:&v92 objects:v103 count:16];
    }

    while (v61);
  }

  v66 = [v55 thermalPressure];
  [v66 setNavMapType:a5];

  v67 = [v55 thermalPressure];
  [v67 setCollectionTrigger:a6];

  if (v73)
  {
    [v55 addLogMsgState:v73];
  }

  v14 = v79;
  v19 = v75;
  if (v87)
  {
    [v55 addLogMsgState:?];
  }

  if (v86)
  {
    [v55 addLogMsgState:v86];
  }

  v13 = v80;
  if (v83)
  {
    [v55 addLogMsgState:?];
  }

  v68 = v72;
  if (v82)
  {
    [v55 addLogMsgState:?];
  }

  if (v84)
  {
    [v55 addLogMsgState:?];
  }

  if (v85)
  {
    [v55 addLogMsgState:v85];
  }

  if (v81)
  {
    [v55 addLogMsgState:?];
  }

  if (v72)
  {
    [v55 addLogMsgState:v72];
  }

  +[GEOAPStateFactory sharedFactory];
  v70 = v69 = v68;
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __174__GEOAPPortal_captureNavThermalPressureWithThermalPressure_disableMapFeatures_navMapType_collectionTrigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_70;
  v90[3] = &unk_1E7953A00;
  v91 = v55;
  v71 = v55;
  [v70 sessionStateForType:6 callback:v90];

  v21[2](v21);
  v16 = v76;
  v15 = v77;
LABEL_21:

  v37 = *MEMORY[0x1E69E9840];
}

void __174__GEOAPPortal_captureNavThermalPressureWithThermalPressure_disableMapFeatures_navMapType_collectionTrigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __174__GEOAPPortal_captureNavThermalPressureWithThermalPressure_disableMapFeatures_navMapType_collectionTrigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureMarcoLiteWithTotalNavTime:(id)a3 usageStates:(id)a4 vioTrigger:(int)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9
{
  v93 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __137__GEOAPPortal_captureMarcoLiteWithTotalNavTime_usageStates_vioTrigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v86[3] = &unk_1E7959478;
  v20 = v19;
  v88 = v20;
  v21 = v18;
  v87 = v21;
  v22 = MEMORY[0x1AC5A12F0](v86);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_21;
  }

  v75 = a5;
  v23 = +[GEOAPServiceManager sharedManager];
  v24 = [v23 platformDiagAndUsageOrAppleInternal];

  if ((v24 & 1) == 0)
  {
    goto LABEL_21;
  }

  v25 = +[GEOAPServiceManager sharedManager];
  v26 = [v25 eventCollectionIsDisabledForCurrentProcess];

  if (v26)
  {
    v27 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v92 = v28;
      _os_log_impl(&dword_1AB634000, v27, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (v17)
  {
    [v17 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v29 != 0.0 && v29 >= arc4random() / 4294967300.0)
  {
LABEL_21:
    v22[2](v22);
    goto LABEL_22;
  }

  v30 = +[GEOAPStateFactory sharedFactory];
  v72 = v14;
  v73 = v15;
  v68 = v20;
  v69 = v17;
  v70 = v16;
  v71 = v30;
  if ([v16 count])
  {
    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v32 = v16;
    v33 = [v32 countByEnumeratingWithState:&v82 objects:v90 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v83;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v83 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v82 + 1) + 8 * i);
          v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v37, "stateType")}];
          [v31 setObject:v37 forKeyedSubscript:v38];
        }

        v34 = [v32 countByEnumeratingWithState:&v82 objects:v90 count:16];
      }

      while (v34);
    }

    v39 = [v31 copy];
    v30 = v71;
    v14 = v72;
  }

  else
  {
    v39 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v30, "logMsgStateTypeForType:", 1)}];
    v42 = [v39 objectForKeyedSubscript:v41];
    if (!v42)
    {
      v42 = [v30 stateForType:1];
    }
  }

  v66 = v42;
  v67 = v39;
  if (GEOConfigGetBOOL())
  {
    v74 = 0;
  }

  else
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v30, "logMsgStateTypeForType:", 3)}];

    v44 = [v39 objectForKeyedSubscript:v43];
    if (!v44)
    {
      v44 = [v30 stateForType:3];
    }

    v74 = v44;
    v41 = v43;
  }

  v45 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v45 setEventType:39];
  v46 = objc_alloc_init(MEMORY[0x1E69A1F30]);
  [v45 setMarcoLiteUsage:v46];

  if (v14)
  {
    v47 = [v14 unsignedLongLongValue];
    v48 = [v45 marcoLiteUsage];
    [v48 setTotalNavTime:v47];
  }

  v49 = [v45 marcoLiteUsage];
  v50 = [v49 usageStates];

  if (!v50)
  {
    v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v73, "count")}];
    v52 = [v45 marcoLiteUsage];
    [v52 setUsageStates:v51];
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v53 = v73;
  v54 = [v53 countByEnumeratingWithState:&v78 objects:v89 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v79;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v79 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v78 + 1) + 8 * j);
        v59 = [v45 marcoLiteUsage];
        v60 = [v59 usageStates];
        v61 = [v58 copy];
        [v60 addObject:v61];
      }

      v55 = [v53 countByEnumeratingWithState:&v78 objects:v89 count:16];
    }

    while (v55);
  }

  v62 = [v45 marcoLiteUsage];
  [v62 setVioTrigger:v75];

  if (v66)
  {
    [v45 addLogMsgState:v66];
  }

  v14 = v72;
  v17 = v69;
  v16 = v70;
  v20 = v68;
  if (v74)
  {
    [v45 addLogMsgState:v74];
  }

  v63 = +[GEOAPStateFactory sharedFactory];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __137__GEOAPPortal_captureMarcoLiteWithTotalNavTime_usageStates_vioTrigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_68;
  v76[3] = &unk_1E7953A00;
  v77 = v45;
  v64 = v45;
  [v63 sessionStateForType:7 callback:v76];

  v22[2](v22);
  v15 = v73;
LABEL_22:

  v40 = *MEMORY[0x1E69E9840];
}

void __137__GEOAPPortal_captureMarcoLiteWithTotalNavTime_usageStates_vioTrigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __137__GEOAPPortal_captureMarcoLiteWithTotalNavTime_usageStates_vioTrigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureMapsInteractionWithInteractionType:(int)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v61 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __123__GEOAPPortal_captureMapsInteractionWithInteractionType_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v55[3] = &unk_1E7959478;
  v15 = v14;
  v57 = v15;
  v16 = v13;
  v56 = v16;
  v17 = MEMORY[0x1AC5A12F0](v55);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v18 = +[GEOAPServiceManager sharedManager];
  v19 = [v18 eventCollectionIsDisabledForCurrentProcess];

  if (v19)
  {
    v20 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v60 = v21;
      _os_log_impl(&dword_1AB634000, v20, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v12)
  {
    [v12 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v22 != 0.0 && v22 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v17[2](v17);
    goto LABEL_21;
  }

  v45 = a3;
  v23 = +[GEOAPStateFactory sharedFactory];
  v46 = v11;
  v47 = v23;
  if ([v11 count])
  {
    v44 = v15;
    v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v25 = v11;
    v26 = [v25 countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v52;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v52 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v51 + 1) + 8 * i);
          v31 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v30, "stateType")}];
          [v24 setObject:v30 forKeyedSubscript:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v27);
    }

    v48 = [v24 copy];
    v15 = v44;
    v23 = v47;
  }

  else
  {
    v48 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v33 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "logMsgStateTypeForType:", 35)}];
    v35 = [v48 objectForKeyedSubscript:v33];
    if (!v35)
    {
      v35 = [v23 stateForType:35];
    }

    v34 = v35;
  }

  v11 = v46;
  if (GEOConfigGetBOOL())
  {
    v36 = 0;
  }

  else
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "logMsgStateTypeForType:", 1)}];

    v38 = [v48 objectForKeyedSubscript:v37];
    if (!v38)
    {
      v38 = [v23 stateForType:1];
    }

    v36 = v38;
    v33 = v37;
  }

  v39 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v39 setEventType:61];
  v40 = objc_alloc_init(MEMORY[0x1E69A1F20]);
  [v39 setMapsInteraction:v40];

  v41 = [v39 mapsInteraction];
  [v41 setInteractionType:v45];

  if (v34)
  {
    [v39 addLogMsgState:v34];
  }

  if (v36)
  {
    [v39 addLogMsgState:v36];
  }

  v42 = +[GEOAPStateFactory sharedFactory];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __123__GEOAPPortal_captureMapsInteractionWithInteractionType_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_66;
  v49[3] = &unk_1E7953A00;
  v50 = v39;
  v43 = v39;
  [v42 sessionStateForType:6 callback:v49];

  v17[2](v17);
LABEL_21:

  v32 = *MEMORY[0x1E69E9840];
}

void __123__GEOAPPortal_captureMapsInteractionWithInteractionType_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __123__GEOAPPortal_captureMapsInteractionWithInteractionType_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_66(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureMapsEngagementWithUser_mapsUseLastDate:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v74 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __127__GEOAPPortal_captureMapsEngagementWithUser_mapsUseLastDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v68[3] = &unk_1E7959478;
  v16 = v15;
  v70 = v16;
  v17 = v14;
  v69 = v17;
  v18 = MEMORY[0x1AC5A12F0](v68);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_22;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (v20)
  {
    v21 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v73 = v22;
      _os_log_impl(&dword_1AB634000, v21, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_22;
  }

  if (v13)
  {
    [v13 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v23 != 0.0 && v23 >= arc4random() / 4294967300.0)
  {
LABEL_22:
    v18[2](v18);
    goto LABEL_23;
  }

  v24 = 0x1E7952000uLL;
  v25 = +[GEOAPStateFactory sharedFactory];
  v26 = [v25 stateForType:48];
  v27 = [v26 copy];

  if (v27)
  {
    [v11 doubleValue];
    v29 = v28;
    v30 = [v27 user];
    [v30 setMapsUseLastDate:v29];
  }

  v58 = v27;
  v60 = v11;
  v61 = v25;
  v59 = v12;
  if ([v12 count])
  {
    v55 = v16;
    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v32 = v12;
    v33 = [v32 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v65;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v65 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v64 + 1) + 8 * i);
          v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v37, "stateType")}];
          [v31 setObject:v37 forKeyedSubscript:v38];
        }

        v34 = [v32 countByEnumeratingWithState:&v64 objects:v71 count:16];
      }

      while (v34);
    }

    v39 = [v31 copy];
    v16 = v55;
    v25 = v61;
    v24 = 0x1E7952000;
  }

  else
  {
    v39 = 0;
  }

  v57 = v39;
  if (GEOConfigGetBOOL())
  {
    v56 = 0;
    v41 = 0;
  }

  else
  {
    v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v25, "logMsgStateTypeForType:", 49)}];
    v43 = [v39 objectForKeyedSubscript:v42];
    v56 = v42;
    if (!v43)
    {
      v43 = [v25 stateForType:49];
    }

    v41 = v43;
  }

  v44 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v44 setEventType:64];
  v45 = objc_alloc_init(MEMORY[0x1E69A1F18]);
  [v44 setMapsEngagement:v45];

  v46 = +[GEOAPUtils currentDailyAggregationTimestamp];
  v47 = [v44 mapsEngagement];
  [v47 setSummaryDate:v46];

  v48 = +[GEOAPUtils currentDailyAggregationRepresentativeString];
  v49 = [v44 mapsEngagement];
  [v49 setAggregationSummaryDate:v48];

  v50 = +[GEOAPUtils myAppType];
  v51 = [v44 mapsEngagement];
  [v51 setAppType:v50];

  v52 = [v44 mapsEngagement];
  [v52 setReportingChannel:2];

  if (v41)
  {
    [v44 addLogMsgState:v41];
  }

  v12 = v59;
  if (v58)
  {
    [v44 addLogMsgState:v58];
  }

  v53 = [*(v24 + 2120) sharedFactory];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __127__GEOAPPortal_captureMapsEngagementWithUser_mapsUseLastDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_64;
  v62[3] = &unk_1E7953A00;
  v63 = v44;
  v54 = v44;
  [v53 sessionStateForType:2 callback:v62];

  v18[2](v18);
  v11 = v60;
LABEL_23:

  v40 = *MEMORY[0x1E69E9840];
}

void __127__GEOAPPortal_captureMapsEngagementWithUser_mapsUseLastDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __127__GEOAPPortal_captureMapsEngagementWithUser_mapsUseLastDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureMapLaunchWithLaunchUri:(id)a3 sourceAppId:(id)a4 GEOTimeToLeaveMapLaunch_minutesUntilEvent:(id)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9
{
  v126 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __165__GEOAPPortal_captureMapLaunchWithLaunchUri_sourceAppId_GEOTimeToLeaveMapLaunch_minutesUntilEvent_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v120[3] = &unk_1E7959478;
  v21 = v20;
  v122 = v21;
  v22 = v19;
  v121 = v22;
  v23 = MEMORY[0x1AC5A12F0](v120);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v24 = +[GEOAPServiceManager sharedManager];
  v25 = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (v25)
  {
    v26 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v125 = v27;
      _os_log_impl(&dword_1AB634000, v26, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v18)
  {
    [v18 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v28 != 0.0 && v28 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v23[2](v23);
    goto LABEL_21;
  }

  v104 = +[GEOAPStateFactory sharedFactory];
  v105 = v16;
  v106 = v15;
  v90 = v18;
  v91 = v17;
  v89 = v21;
  if ([v17 count])
  {
    v112 = v14;
    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v30 = v17;
    v31 = [v30 countByEnumeratingWithState:&v116 objects:v123 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v117;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v117 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v116 + 1) + 8 * i);
          v36 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v35, "stateType")}];
          [v29 setObject:v35 forKeyedSubscript:v36];
        }

        v32 = [v30 countByEnumeratingWithState:&v116 objects:v123 count:16];
      }

      while (v32);
    }

    v37 = [v29 copy];
    v14 = v112;
  }

  else
  {
    v37 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v39 = 0;
    v113 = 0;
  }

  else
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 65)}];
    v113 = [v37 objectForKeyedSubscript:v39];
    if (!v113)
    {
      v113 = [v104 stateForType:65];
    }
  }

  if (GEOConfigGetBOOL())
  {
    v111 = 0;
  }

  else
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 5)}];

    v111 = [v37 objectForKeyedSubscript:v40];
    if (!v111)
    {
      v111 = [v104 stateForType:5];
    }

    v39 = v40;
  }

  if (GEOConfigGetBOOL())
  {
    v110 = 0;
  }

  else
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 15)}];

    v110 = [v37 objectForKeyedSubscript:v41];
    if (!v110)
    {
      v110 = [v104 stateForType:15];
    }

    v39 = v41;
  }

  if (GEOConfigGetBOOL())
  {
    v109 = 0;
  }

  else
  {
    v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 35)}];

    v109 = [v37 objectForKeyedSubscript:v42];
    if (!v109)
    {
      v109 = [v104 stateForType:35];
    }

    v39 = v42;
  }

  if (GEOConfigGetBOOL())
  {
    v103 = 0;
  }

  else
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 30)}];

    v44 = [v37 objectForKeyedSubscript:v43];
    if (!v44)
    {
      v44 = [v104 stateForType:30];
    }

    v103 = v44;
    v39 = v43;
  }

  if (GEOConfigGetBOOL())
  {
    v102 = 0;
  }

  else
  {
    v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 1)}];

    v46 = [v37 objectForKeyedSubscript:v45];
    if (!v46)
    {
      v46 = [v104 stateForType:1];
    }

    v102 = v46;
    v39 = v45;
  }

  if (GEOConfigGetBOOL())
  {
    v101 = 0;
  }

  else
  {
    v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 3)}];

    v48 = [v37 objectForKeyedSubscript:v47];
    if (!v48)
    {
      v48 = [v104 stateForType:3];
    }

    v101 = v48;
    v39 = v47;
  }

  if (GEOConfigGetBOOL())
  {
    v108 = 0;
  }

  else
  {
    v49 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 26)}];

    v108 = [v37 objectForKeyedSubscript:v49];
    if (!v108)
    {
      v108 = [v104 stateForType:26];
    }

    v39 = v49;
  }

  if (GEOConfigGetBOOL())
  {
    v100 = 0;
  }

  else
  {
    v50 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 64)}];

    v51 = [v37 objectForKeyedSubscript:v50];
    if (!v51)
    {
      v51 = [v104 stateForType:64];
    }

    v100 = v51;
    v39 = v50;
  }

  if (GEOConfigGetBOOL())
  {
    v99 = 0;
  }

  else
  {
    v52 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 13)}];

    v53 = [v37 objectForKeyedSubscript:v52];
    if (!v53)
    {
      v53 = [v104 stateForType:13];
    }

    v99 = v53;
    v39 = v52;
  }

  if (GEOConfigGetBOOL())
  {
    v98 = 0;
  }

  else
  {
    v54 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 14)}];

    v55 = [v37 objectForKeyedSubscript:v54];
    if (!v55)
    {
      v55 = [v104 stateForType:14];
    }

    v98 = v55;
    v39 = v54;
  }

  if (GEOConfigGetBOOL())
  {
    v97 = 0;
  }

  else
  {
    v56 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 9)}];

    v57 = [v37 objectForKeyedSubscript:v56];
    if (!v57)
    {
      v57 = [v104 stateForType:9];
    }

    v97 = v57;
    v39 = v56;
  }

  if (GEOConfigGetBOOL())
  {
    v96 = 0;
  }

  else
  {
    v58 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 10)}];

    v59 = [v37 objectForKeyedSubscript:v58];
    if (!v59)
    {
      v59 = [v104 stateForType:10];
    }

    v96 = v59;
    v39 = v58;
  }

  if (GEOConfigGetBOOL())
  {
    v95 = 0;
  }

  else
  {
    v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 20)}];

    v61 = [v37 objectForKeyedSubscript:v60];
    if (!v61)
    {
      v61 = [v104 stateForType:20];
    }

    v95 = v61;
    v39 = v60;
  }

  if (GEOConfigGetBOOL())
  {
    v94 = 0;
  }

  else
  {
    v62 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 42)}];

    v63 = [v37 objectForKeyedSubscript:v62];
    if (!v63)
    {
      v63 = [v104 stateForType:42];
    }

    v94 = v63;
    v39 = v62;
  }

  if (GEOConfigGetBOOL())
  {
    v92 = 0;
  }

  else
  {
    v64 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 70)}];

    v92 = [v37 objectForKeyedSubscript:v64];
    if (!v92)
    {
      v92 = [v104 stateForType:70];
    }

    v39 = v64;
  }

  if (GEOConfigGetBOOL())
  {
    v65 = 0;
  }

  else
  {
    v66 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 7)}];

    v67 = [v37 objectForKeyedSubscript:v66];
    if (!v67)
    {
      v67 = [v104 stateForType:7];
    }

    v65 = v67;
    v39 = v66;
  }

  if (GEOConfigGetBOOL())
  {
    v107 = 0;
  }

  else
  {
    v68 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 17)}];

    v107 = [v37 objectForKeyedSubscript:v68];
    if (!v107)
    {
      v107 = [v104 stateForType:17];
    }

    v39 = v68;
  }

  v93 = v37;
  if (GEOConfigGetBOOL())
  {
    v69 = 0;
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 19)}];
    v71 = v70 = v37;

    v72 = [v70 objectForKeyedSubscript:v71];
    if (!v72)
    {
      v72 = [v104 stateForType:19];
    }

    v69 = v72;
    v39 = v71;
  }

  if (GEOConfigGetBOOL())
  {
    v73 = 0;
  }

  else
  {
    v74 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v104, "logMsgStateTypeForType:", 27)}];

    v75 = [v93 objectForKeyedSubscript:v74];
    if (!v75)
    {
      v75 = [v104 stateForType:27];
    }

    v73 = v75;
    v39 = v74;
  }

  v76 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v76 setEventType:17];
  v77 = objc_alloc_init(MEMORY[0x1E69A1F10]);
  [v76 setMapLaunchEvent:v77];

  v78 = [v76 mapLaunchEvent];
  v79 = v14;
  [v78 setLaunchUri:v14];

  v80 = [v76 mapLaunchEvent];
  [v80 setSourceAppId:v106];

  v81 = objc_alloc_init(MEMORY[0x1E69A2628]);
  v82 = [v76 mapLaunchEvent];
  [v82 setTimeToLeave:v81];

  if (v105)
  {
    [v105 doubleValue];
    v84 = v83;
    v85 = [v76 mapLaunchEvent];
    v86 = [v85 timeToLeave];
    [v86 setMinutesUntilEvent:v84];
  }

  if (v65)
  {
    [v76 addLogMsgState:v65];
  }

  if (v111)
  {
    [v76 addLogMsgState:?];
  }

  if (v102)
  {
    [v76 addLogMsgState:?];
  }

  if (v101)
  {
    [v76 addLogMsgState:?];
  }

  if (v103)
  {
    [v76 addLogMsgState:?];
  }

  if (v113)
  {
    [v76 addLogMsgState:v113];
  }

  if (v95)
  {
    [v76 addLogMsgState:?];
  }

  if (v99)
  {
    [v76 addLogMsgState:?];
  }

  if (v98)
  {
    [v76 addLogMsgState:?];
  }

  if (v97)
  {
    [v76 addLogMsgState:?];
  }

  if (v96)
  {
    [v76 addLogMsgState:?];
  }

  if (v100)
  {
    [v76 addLogMsgState:?];
  }

  if (v110)
  {
    [v76 addLogMsgState:v110];
  }

  if (v107)
  {
    [v76 addLogMsgState:?];
  }

  if (v69)
  {
    [v76 addLogMsgState:v69];
  }

  if (v73)
  {
    [v76 addLogMsgState:v73];
  }

  if (v94)
  {
    [v76 addLogMsgState:?];
  }

  if (v109)
  {
    [v76 addLogMsgState:v109];
  }

  if (v65)
  {
    [v76 addLogMsgState:v65];
  }

  if (v108)
  {
    [v76 addLogMsgState:v108];
  }

  if (v92)
  {
    [v76 addLogMsgState:v92];
  }

  v87 = +[GEOAPStateFactory sharedFactory];
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = __165__GEOAPPortal_captureMapLaunchWithLaunchUri_sourceAppId_GEOTimeToLeaveMapLaunch_minutesUntilEvent_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_61;
  v114[3] = &unk_1E7953A00;
  v88 = v76;
  v115 = v88;
  [v87 sessionStateForType:6 callback:v114];

  v23[2](v23);
  v14 = v79;
  v16 = v105;
  v15 = v106;
  v18 = v90;
  v17 = v91;
  v21 = v89;
LABEL_21:

  v38 = *MEMORY[0x1E69E9840];
}

void __165__GEOAPPortal_captureMapLaunchWithLaunchUri_sourceAppId_GEOTimeToLeaveMapLaunch_minutesUntilEvent_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __165__GEOAPPortal_captureMapLaunchWithLaunchUri_sourceAppId_GEOTimeToLeaveMapLaunch_minutesUntilEvent_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_61(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureImpressionEventWithAdditionalStates:(id)a3 providedDropRate:(id)a4 completionQueue:(id)a5 completionBlock:(id)a6
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __107__GEOAPPortal_captureImpressionEventWithAdditionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v56[3] = &unk_1E7959478;
  v13 = v12;
  v58 = v13;
  v14 = v11;
  v57 = v14;
  v15 = MEMORY[0x1AC5A12F0](v56);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v16 = +[GEOAPServiceManager sharedManager];
  v17 = [v16 eventCollectionIsDisabledForCurrentProcess];

  if (v17)
  {
    v18 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v61 = v19;
      _os_log_impl(&dword_1AB634000, v18, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v10)
  {
    [v10 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v20 != 0.0 && v20 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v15[2](v15);
    goto LABEL_21;
  }

  v21 = +[GEOAPStateFactory sharedFactory];
  v46 = v21;
  v44 = v9;
  if ([v9 count])
  {
    v47 = v13;
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v23 = v9;
    v24 = [v23 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v53;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v53 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v52 + 1) + 8 * i);
          v29 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v28, "stateType", v44)}];
          [v22 setObject:v28 forKeyedSubscript:v29];
        }

        v25 = [v23 countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v25);
    }

    v30 = [v22 copy];
    v13 = v47;
    v21 = v46;
  }

  else
  {
    v30 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v32 = 0;
    v49 = 0;
  }

  else
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v21, "logMsgStateTypeForType:", 2)}];
    v49 = [v30 objectForKeyedSubscript:v32];
    if (!v49)
    {
      v49 = [v21 stateForType:2];
    }
  }

  v9 = v44;
  if (GEOConfigGetBOOL())
  {
    v48 = 0;
  }

  else
  {
    v33 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v21, "logMsgStateTypeForType:", 1)}];

    v48 = [v30 objectForKeyedSubscript:v33];
    if (!v48)
    {
      v48 = [v21 stateForType:1];
    }

    v32 = v33;
  }

  if (GEOConfigGetBOOL())
  {
    v34 = 0;
  }

  else
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v21, "logMsgStateTypeForType:", 55)}];

    v36 = [v30 objectForKeyedSubscript:v35];
    if (!v36)
    {
      v36 = [v21 stateForType:55];
    }

    v34 = v36;
    v32 = v35;
  }

  v45 = v30;
  if (GEOConfigGetBOOL())
  {
    v37 = 0;
  }

  else
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v21, "logMsgStateTypeForType:", 70)}];

    v39 = [v45 objectForKeyedSubscript:v38];
    if (!v39)
    {
      v39 = [v21 stateForType:70];
    }

    v37 = v39;
    v32 = v38;
  }

  v40 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v40 setEventType:57];
  v41 = objc_alloc_init(MEMORY[0x1E69A1F00]);
  [v40 setImpressionEvent:v41];

  if (v48)
  {
    [v40 addLogMsgState:?];
  }

  if (v49)
  {
    [v40 addLogMsgState:?];
  }

  if (v34)
  {
    [v40 addLogMsgState:v34];
  }

  if (v37)
  {
    [v40 addLogMsgState:v37];
  }

  v42 = +[GEOAPStateFactory sharedFactory];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __107__GEOAPPortal_captureImpressionEventWithAdditionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_58;
  v50[3] = &unk_1E7953A00;
  v51 = v40;
  v43 = v40;
  [v42 sessionStateForType:8 callback:v50];

  v15[2](v15);
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];
}

void __107__GEOAPPortal_captureImpressionEventWithAdditionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __107__GEOAPPortal_captureImpressionEventWithAdditionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureHardStopWithScore:(id)a3 digits:(id)a4 cities:(id)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9
{
  v111 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __120__GEOAPPortal_captureHardStopWithScore_digits_cities_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v103[3] = &unk_1E7959478;
  v21 = v20;
  v105 = v21;
  v22 = v19;
  v104 = v22;
  v23 = MEMORY[0x1AC5A12F0](v103);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v24 = +[GEOAPServiceManager sharedManager];
  v25 = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (v25)
  {
    v26 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v110 = v27;
      _os_log_impl(&dword_1AB634000, v26, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v18)
  {
    [v18 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v28 != 0.0 && v28 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v23[2](v23);
    goto LABEL_21;
  }

  v29 = +[GEOAPStateFactory sharedFactory];
  v86 = v16;
  v87 = v14;
  v79 = v21;
  v80 = v18;
  v82 = v29;
  v83 = v15;
  v81 = v17;
  if ([v17 count])
  {
    v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v31 = v17;
    v32 = [v31 countByEnumeratingWithState:&v99 objects:v108 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v100;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v100 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v99 + 1) + 8 * i);
          v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v36, "stateType")}];
          [v30 setObject:v36 forKeyedSubscript:v37];
        }

        v33 = [v31 countByEnumeratingWithState:&v99 objects:v108 count:16];
      }

      while (v33);
    }

    v38 = [v30 copy];
    v29 = v82;
    v15 = v83;
  }

  else
  {
    v38 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v29, "logMsgStateTypeForType:", 30)}];
    v42 = [v38 objectForKeyedSubscript:v40];
    if (!v42)
    {
      v42 = [v29 stateForType:30];
    }

    v41 = v42;
  }

  if (GEOConfigGetBOOL())
  {
    v88 = 0;
  }

  else
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v29, "logMsgStateTypeForType:", 1)}];

    v88 = [v38 objectForKeyedSubscript:v43];
    if (!v88)
    {
      v88 = [v29 stateForType:1];
    }

    v40 = v43;
  }

  if (GEOConfigGetBOOL())
  {
    v44 = 0;
  }

  else
  {
    v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v29, "logMsgStateTypeForType:", 3)}];

    v44 = [v38 objectForKeyedSubscript:v45];
    if (!v44)
    {
      v44 = [v29 stateForType:3];
    }

    v40 = v45;
  }

  v84 = v44;
  v78 = v38;
  if (GEOConfigGetBOOL())
  {
    v76 = 0;
    v77 = v40;
  }

  else
  {
    v46 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v29, "logMsgStateTypeForType:", 42)}];

    v47 = [v38 objectForKeyedSubscript:v46];
    if (!v47)
    {
      v47 = [v29 stateForType:42];
    }

    v76 = v47;
    v77 = v46;
  }

  v85 = v41;
  v48 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v48 setEventType:47];
  v49 = objc_alloc_init(MEMORY[0x1E69A1EF0]);
  [v48 setHardStop:v49];

  if (v87)
  {
    [v87 doubleValue];
    v51 = v50;
    v52 = [v48 hardStop];
    [v52 setScore:v51];
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v53 = v15;
  v54 = [v53 countByEnumeratingWithState:&v95 objects:v107 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v96;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v96 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v95 + 1) + 8 * j);
        v59 = [v48 hardStop];
        [v59 addDigits:{objc_msgSend(v58, "unsignedLongLongValue")}];
      }

      v55 = [v53 countByEnumeratingWithState:&v95 objects:v107 count:16];
    }

    while (v55);
  }

  v60 = [v48 hardStop];
  v61 = [v60 cities];

  if (!v61)
  {
    v62 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v86, "count")}];
    v63 = [v48 hardStop];
    [v63 setCities:v62];
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v64 = v86;
  v65 = [v64 countByEnumeratingWithState:&v91 objects:v106 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v92;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v92 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v91 + 1) + 8 * k);
        v70 = [v48 hardStop];
        v71 = [v70 cities];
        v72 = [v69 copy];
        [v71 addObject:v72];
      }

      v66 = [v64 countByEnumeratingWithState:&v91 objects:v106 count:16];
    }

    while (v66);
  }

  if (v85)
  {
    [v48 addLogMsgState:?];
  }

  v16 = v86;
  v18 = v80;
  v17 = v81;
  if (v88)
  {
    [v48 addLogMsgState:?];
  }

  v15 = v83;
  if (v84)
  {
    [v48 addLogMsgState:v84];
  }

  v73 = v76;
  if (v76)
  {
    [v48 addLogMsgState:v76];
  }

  v74 = +[GEOAPStateFactory sharedFactory];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __120__GEOAPPortal_captureHardStopWithScore_digits_cities_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_56;
  v89[3] = &unk_1E7953A00;
  v90 = v48;
  v75 = v48;
  [v74 sessionStateForType:7 callback:v89];

  v23[2](v23);
  v14 = v87;
  v21 = v79;
LABEL_21:

  v39 = *MEMORY[0x1E69E9840];
}

void __120__GEOAPPortal_captureHardStopWithScore_digits_cities_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __120__GEOAPPortal_captureHardStopWithScore_digits_cities_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_56(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureGridDurationWithDurationMs:(id)a3 previousState:(int)a4 endState:(int)a5 endStateErrorReasons:(id)a6 displayType:(int)a7 additionalStates:(id)a8 providedDropRate:(id)a9 completionQueue:(id)a10 completionBlock:(id)a11
{
  v106 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __171__GEOAPPortal_captureGridDurationWithDurationMs_previousState_endState_endStateErrorReasons_displayType_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v99[3] = &unk_1E7959478;
  v19 = v18;
  v101 = v19;
  v20 = v17;
  v100 = v20;
  v21 = MEMORY[0x1AC5A12F0](v99);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v22 = +[GEOAPServiceManager sharedManager];
  v23 = [v22 eventCollectionIsDisabledForCurrentProcess];

  if (v23)
  {
    v24 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v105 = v25;
      _os_log_impl(&dword_1AB634000, v24, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v16)
  {
    [v16 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v26 != 0.0 && v26 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v21[2](v21);
    goto LABEL_21;
  }

  v27 = +[GEOAPStateFactory sharedFactory];
  v74 = v19;
  v75 = v16;
  v78 = v27;
  v79 = v14;
  v80 = v13;
  v76 = v15;
  if ([v15 count])
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v29 = v15;
    v30 = [v29 countByEnumeratingWithState:&v95 objects:v103 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v96;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v96 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v95 + 1) + 8 * i);
          v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "stateType")}];
          [v28 setObject:v34 forKeyedSubscript:v35];
        }

        v31 = [v29 countByEnumeratingWithState:&v95 objects:v103 count:16];
      }

      while (v31);
    }

    v36 = [v28 copy];
    v14 = v79;
    v13 = v80;
    v27 = v78;
  }

  else
  {
    v36 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 65)}];
    v40 = [v36 objectForKeyedSubscript:v38];
    if (!v40)
    {
      v40 = [v27 stateForType:65];
    }

    v39 = v40;
  }

  if (GEOConfigGetBOOL())
  {
    v77 = 0;
  }

  else
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 15)}];

    v77 = [v36 objectForKeyedSubscript:v41];
    if (!v77)
    {
      v77 = [v27 stateForType:15];
    }

    v38 = v41;
  }

  if (GEOConfigGetBOOL())
  {
    v85 = 0;
  }

  else
  {
    v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 30)}];

    v85 = [v36 objectForKeyedSubscript:v42];
    if (!v85)
    {
      v85 = [v27 stateForType:30];
    }

    v38 = v42;
  }

  if (GEOConfigGetBOOL())
  {
    v82 = 0;
  }

  else
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 1)}];

    v44 = [v36 objectForKeyedSubscript:v43];
    if (!v44)
    {
      v44 = [v27 stateForType:1];
    }

    v82 = v44;
    v38 = v43;
  }

  if (GEOConfigGetBOOL())
  {
    v84 = 0;
  }

  else
  {
    v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 3)}];

    v84 = [v36 objectForKeyedSubscript:v45];
    if (!v84)
    {
      v84 = [v27 stateForType:3];
    }

    v38 = v45;
  }

  if (GEOConfigGetBOOL())
  {
    v83 = 0;
  }

  else
  {
    v46 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 64)}];

    v83 = [v36 objectForKeyedSubscript:v46];
    if (!v83)
    {
      v83 = [v27 stateForType:64];
    }

    v38 = v46;
  }

  if (GEOConfigGetBOOL())
  {
    v81 = 0;
  }

  else
  {
    v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "logMsgStateTypeForType:", 9)}];

    v48 = [v36 objectForKeyedSubscript:v47];
    if (!v48)
    {
      v48 = [v27 stateForType:9];
    }

    v81 = v48;
    v38 = v47;
  }

  v49 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v49 setEventType:34];
  v50 = objc_alloc_init(MEMORY[0x1E69A1EE0]);
  [v49 setGridDuration:v50];

  if (v13)
  {
    v51 = [v13 unsignedLongLongValue];
    v52 = [v49 gridDuration];
    [v52 setDurationMs:v51];
  }

  v72 = v39;
  v73 = v36;
  v53 = [v49 gridDuration];
  [v53 setPreviousState:a4];

  v54 = [v49 gridDuration];
  [v54 setEndState:a5];

  v55 = [v49 gridDuration];
  v56 = [v55 endStateErrorReasons];

  if (!v56)
  {
    v57 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v58 = [v49 gridDuration];
    [v58 setEndStateErrorReasons:v57];
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v59 = v14;
  v60 = [v59 countByEnumeratingWithState:&v91 objects:v102 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v92;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v92 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v91 + 1) + 8 * j);
        v65 = [v49 gridDuration];
        v66 = [v65 endStateErrorReasons];
        v67 = [v64 copy];
        [v66 addObject:v67];
      }

      v61 = [v59 countByEnumeratingWithState:&v91 objects:v102 count:16];
    }

    while (v61);
  }

  v68 = [v49 gridDuration];
  [v68 setDisplayType:a7];

  if (v82)
  {
    [v49 addLogMsgState:?];
  }

  v13 = v80;
  v19 = v74;
  v16 = v75;
  if (v84)
  {
    [v49 addLogMsgState:?];
  }

  if (v85)
  {
    [v49 addLogMsgState:v85];
  }

  v14 = v79;
  if (v72)
  {
    [v49 addLogMsgState:v72];
  }

  if (v81)
  {
    [v49 addLogMsgState:?];
  }

  if (v83)
  {
    [v49 addLogMsgState:v83];
  }

  if (v77)
  {
    [v49 addLogMsgState:v77];
  }

  v69 = +[GEOAPStateFactory sharedFactory];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __171__GEOAPPortal_captureGridDurationWithDurationMs_previousState_endState_endStateErrorReasons_displayType_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_54;
  v89[3] = &unk_1E7953A00;
  v90 = v49;
  v70 = v49;
  [v69 sessionStateForType:6 callback:v89];

  v21[2](v21);
  v15 = v76;
LABEL_21:

  v37 = *MEMORY[0x1E69E9840];
}

void __171__GEOAPPortal_captureGridDurationWithDurationMs_previousState_endState_endStateErrorReasons_displayType_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __171__GEOAPPortal_captureGridDurationWithDurationMs_previousState_endState_endStateErrorReasons_displayType_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureFindMyUsageWithUserActionEventAction:(int)a3 userActionEventTarget:(int)a4 userActionEventValue:(id)a5 additionalStates:(id)a6 providedDropRate:(id)a7 completionQueue:(id)a8 completionBlock:(id)a9
{
  v75 = *MEMORY[0x1E69E9840];
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __168__GEOAPPortal_captureFindMyUsageWithUserActionEventAction_userActionEventTarget_userActionEventValue_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v69[3] = &unk_1E7959478;
  v19 = v18;
  v71 = v19;
  v20 = v17;
  v70 = v20;
  v21 = MEMORY[0x1AC5A12F0](v69);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_21;
  }

  v62 = a3;
  v22 = +[GEOAPServiceManager sharedManager];
  v23 = [v22 AppleInternal];

  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

  v24 = +[GEOAPServiceManager sharedManager];
  v25 = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (v25)
  {
    v26 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      GEOApplicationIdentifierOrProcessName();
      v28 = v27 = v14;
      *buf = 138412290;
      v74 = v28;
      _os_log_impl(&dword_1AB634000, v26, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);

      v14 = v27;
    }

    goto LABEL_21;
  }

  if (v16)
  {
    [v16 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v29 != 0.0 && v29 >= arc4random() / 4294967300.0)
  {
LABEL_21:
    v21[2](v21);
    goto LABEL_22;
  }

  v30 = +[GEOAPStateFactory sharedFactory];
  v57 = a4;
  v58 = v15;
  v59 = v30;
  if ([v15 count])
  {
    v55 = v19;
    v60 = v14;
    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v32 = v15;
    v33 = [v32 countByEnumeratingWithState:&v65 objects:v72 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v66;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v66 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v65 + 1) + 8 * i);
          v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v37, "stateType", v55)}];
          [v31 setObject:v37 forKeyedSubscript:v38];
        }

        v34 = [v32 countByEnumeratingWithState:&v65 objects:v72 count:16];
      }

      while (v34);
    }

    v39 = [v31 copy];
    v30 = v59;
    v14 = v60;
    v19 = v55;
  }

  else
  {
    v39 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v61 = 0;
    v41 = 0;
  }

  else
  {
    v61 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v30, "logMsgStateTypeForType:", 65)}];
    v42 = [v39 objectForKeyedSubscript:?];
    if (!v42)
    {
      v42 = [v30 stateForType:65];
    }

    v41 = v42;
  }

  v15 = v58;
  v56 = v39;
  if (GEOConfigGetBOOL())
  {
    v43 = 0;
  }

  else
  {
    v55 = v41;
    v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v30, "logMsgStateTypeForType:", 1)}];

    v45 = [v39 objectForKeyedSubscript:v44];
    if (!v45)
    {
      v45 = [v30 stateForType:1];
    }

    v43 = v45;
    v61 = v44;
    v41 = v55;
  }

  v46 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v46 setEventType:1];
  v47 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v46 setUserActionEvent:v47];

  v48 = [v46 userActionEvent];
  [v48 setUserActionEventAction:v62];

  v49 = [v46 userActionEvent];
  [v49 setUserActionEventTarget:v57];

  v50 = [v46 userActionEvent];
  [v50 setUserActionEventValue:v14];

  if (v43)
  {
    [v46 addLogMsgState:v43];
  }

  if (v41)
  {
    [v46 addLogMsgState:v41];
  }

  v51 = +[GEOAPStateFactory sharedFactory];
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __168__GEOAPPortal_captureFindMyUsageWithUserActionEventAction_userActionEventTarget_userActionEventValue_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_52;
  v63[3] = &unk_1E7953A00;
  v64 = v46;
  v52 = v46;
  v53 = v41;
  v54 = v52;
  [v51 sessionStateForType:7 callback:v63];

  v21[2](v21);
LABEL_22:

  v40 = *MEMORY[0x1E69E9840];
}

void __168__GEOAPPortal_captureFindMyUsageWithUserActionEventAction_userActionEventTarget_userActionEventValue_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __168__GEOAPPortal_captureFindMyUsageWithUserActionEventAction_userActionEventTarget_userActionEventValue_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_52(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureEvTripWithOutOfCharge:(id)a3 outOfRangeAlertDisplayed:(id)a4 originalTripIncludedChargingStation:(id)a5 chargingStopAddedThroughSar:(id)a6 tripIncludedPreferredChargingStation:(id)a7 stopRemovedDetails:(id)a8 realtimeDodgeballs:(id)a9 chargeLocationDetails:(id)a10 stopAddedDetails:(id)a11 additionalStates:(id)a12 providedDropRate:(id)a13 completionQueue:(id)a14 completionBlock:(id)a15
{
  v173 = *MEMORY[0x1E69E9840];
  v140 = a3;
  v20 = a4;
  v138 = a5;
  v137 = a6;
  v21 = a7;
  v139 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v163[0] = MEMORY[0x1E69E9820];
  v163[1] = 3221225472;
  v163[2] = __313__GEOAPPortal_captureEvTripWithOutOfCharge_outOfRangeAlertDisplayed_originalTripIncludedChargingStation_chargingStopAddedThroughSar_tripIncludedPreferredChargingStation_stopRemovedDetails_realtimeDodgeballs_chargeLocationDetails_stopAddedDetails_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v163[3] = &unk_1E7959478;
  v136 = v28;
  v165 = v136;
  v29 = v27;
  v164 = v29;
  v30 = MEMORY[0x1AC5A12F0](v163);
  if (GEOConfigGetBOOL())
  {
    v30[2](v30);
    v31 = v140;
  }

  else
  {
    v134 = v23;
    v135 = v22;
    v32 = +[GEOAPServiceManager sharedManager];
    v33 = [v32 eventCollectionIsDisabledForCurrentProcess];

    if (v33)
    {
      v34 = GEOGetGEOAPPortalAnalyticsLog();
      v31 = v140;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v172 = v35;
        _os_log_impl(&dword_1AB634000, v34, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v30[2](v30);
      v23 = v134;
      v22 = v135;
    }

    else
    {
      v31 = v140;
      if (v26)
      {
        [v26 doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      v23 = v134;
      v22 = v135;
      if (v36 == 0.0 || v36 < arc4random() / 4294967300.0)
      {
        v37 = +[GEOAPStateFactory sharedFactory];
        v133 = v20;
        v130 = v24;
        v124 = v26;
        v125 = v25;
        v127 = v37;
        v128 = v21;
        if ([v25 count])
        {
          v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v25, "count")}];
          v159 = 0u;
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          v39 = v25;
          v40 = [v39 countByEnumeratingWithState:&v159 objects:v170 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v160;
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v160 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v159 + 1) + 8 * i);
                v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v44, "stateType")}];
                [v38 setObject:v44 forKeyedSubscript:v45];
              }

              v41 = [v39 countByEnumeratingWithState:&v159 objects:v170 count:16];
            }

            while (v41);
          }

          v46 = [v38 copy];
          v31 = v140;
          v20 = v133;
          v37 = v127;
          v21 = v128;
        }

        else
        {
          v46 = 0;
        }

        if (GEOConfigGetBOOL())
        {
          v132 = 0;
          v47 = 0;
        }

        else
        {
          v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v37, "logMsgStateTypeForType:", 30)}];
          v132 = [v46 objectForKeyedSubscript:v47];
          if (!v132)
          {
            v132 = [v37 stateForType:30];
          }
        }

        if (GEOConfigGetBOOL())
        {
          v129 = 0;
        }

        else
        {
          v48 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v37, "logMsgStateTypeForType:", 1)}];

          v49 = [v46 objectForKeyedSubscript:v48];
          if (!v49)
          {
            v49 = [v37 stateForType:1];
          }

          v129 = v49;
          v47 = v48;
        }

        if (GEOConfigGetBOOL())
        {
          v131 = 0;
        }

        else
        {
          v50 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v37, "logMsgStateTypeForType:", 3)}];

          v131 = [v46 objectForKeyedSubscript:v50];
          if (!v131)
          {
            v131 = [v37 stateForType:3];
          }

          v47 = v50;
        }

        if (GEOConfigGetBOOL())
        {
          v126 = 0;
        }

        else
        {
          v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v37, "logMsgStateTypeForType:", 42)}];

          v126 = [v46 objectForKeyedSubscript:v51];
          if (!v126)
          {
            v126 = [v37 stateForType:42];
          }

          v47 = v51;
        }

        v52 = objc_alloc_init(MEMORY[0x1E69A1E90]);
        [v52 setEventType:43];
        v53 = objc_alloc_init(MEMORY[0x1E69A1ED0]);
        [v52 setEvTrip:v53];

        if (v31)
        {
          v54 = [v31 BOOLValue];
          v55 = [v52 evTrip];
          [v55 setOutOfCharge:v54];

          v20 = v133;
        }

        if (v20)
        {
          v56 = [v20 BOOLValue];
          v57 = [v52 evTrip];
          [v57 setOutOfRangeAlertDisplayed:v56];
        }

        if (v138)
        {
          v58 = [v138 BOOLValue];
          v59 = [v52 evTrip];
          [v59 setOriginalTripIncludedChargingStation:v58];
        }

        if (v137)
        {
          v60 = [v137 BOOLValue];
          v61 = [v52 evTrip];
          [v61 setChargingStopAddedThroughSar:v60];
        }

        if (v21)
        {
          v62 = [v21 BOOLValue];
          v63 = [v52 evTrip];
          [v63 setTripIncludedPreferredChargingStation:v62];
        }

        v122 = v47;
        v123 = v46;
        v64 = [v52 evTrip];
        v65 = [v64 stopRemovedDetails];

        if (!v65)
        {
          v66 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v139, "count")}];
          v67 = [v52 evTrip];
          [v67 setStopRemovedDetails:v66];
        }

        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v68 = v139;
        v69 = [v68 countByEnumeratingWithState:&v155 objects:v169 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v156;
          do
          {
            for (j = 0; j != v70; ++j)
            {
              if (*v156 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = *(*(&v155 + 1) + 8 * j);
              v74 = [v52 evTrip];
              v75 = [v74 stopRemovedDetails];
              v76 = [v73 copy];
              [v75 addObject:v76];
            }

            v70 = [v68 countByEnumeratingWithState:&v155 objects:v169 count:16];
          }

          while (v70);
        }

        v77 = [v52 evTrip];
        v78 = [v77 realtimeDodgeballs];

        if (!v78)
        {
          v79 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v135, "count")}];
          v80 = [v52 evTrip];
          [v80 setRealtimeDodgeballs:v79];
        }

        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v81 = v135;
        v82 = [v81 countByEnumeratingWithState:&v151 objects:v168 count:16];
        if (v82)
        {
          v83 = v82;
          v84 = *v152;
          do
          {
            for (k = 0; k != v83; ++k)
            {
              if (*v152 != v84)
              {
                objc_enumerationMutation(v81);
              }

              v86 = *(*(&v151 + 1) + 8 * k);
              v87 = [v52 evTrip];
              v88 = [v87 realtimeDodgeballs];
              v89 = [v86 copy];
              [v88 addObject:v89];
            }

            v83 = [v81 countByEnumeratingWithState:&v151 objects:v168 count:16];
          }

          while (v83);
        }

        v90 = [v52 evTrip];
        v91 = [v90 chargeLocationDetails];

        if (!v91)
        {
          v92 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v134, "count")}];
          v93 = [v52 evTrip];
          [v93 setChargeLocationDetails:v92];
        }

        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v94 = v134;
        v95 = [v94 countByEnumeratingWithState:&v147 objects:v167 count:16];
        if (v95)
        {
          v96 = v95;
          v97 = *v148;
          do
          {
            for (m = 0; m != v96; ++m)
            {
              if (*v148 != v97)
              {
                objc_enumerationMutation(v94);
              }

              v99 = *(*(&v147 + 1) + 8 * m);
              v100 = [v52 evTrip];
              v101 = [v100 chargeLocationDetails];
              v102 = [v99 copy];
              [v101 addObject:v102];
            }

            v96 = [v94 countByEnumeratingWithState:&v147 objects:v167 count:16];
          }

          while (v96);
        }

        v103 = [v52 evTrip];
        v104 = [v103 stopAddedDetails];

        if (!v104)
        {
          v105 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v130, "count")}];
          v106 = [v52 evTrip];
          [v106 setStopAddedDetails:v105];
        }

        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v107 = v130;
        v108 = [v107 countByEnumeratingWithState:&v143 objects:v166 count:16];
        if (v108)
        {
          v109 = v108;
          v110 = *v144;
          do
          {
            for (n = 0; n != v109; ++n)
            {
              if (*v144 != v110)
              {
                objc_enumerationMutation(v107);
              }

              v112 = *(*(&v143 + 1) + 8 * n);
              v113 = [v52 evTrip];
              v114 = [v113 stopAddedDetails];
              v115 = [v112 copy];
              [v114 addObject:v115];
            }

            v109 = [v107 countByEnumeratingWithState:&v143 objects:v166 count:16];
          }

          while (v109);
        }

        v116 = +[GEOAPSharedStateData sharedData];
        v117 = [v116 metroRegion];
        v118 = [v52 evTrip];
        [v118 setMetro:v117];

        if (v129)
        {
          [v52 addLogMsgState:?];
        }

        v31 = v140;
        v21 = v128;
        v24 = v130;
        v26 = v124;
        v25 = v125;
        if (v131)
        {
          [v52 addLogMsgState:?];
        }

        if (v132)
        {
          [v52 addLogMsgState:v132];
        }

        if (v126)
        {
          [v52 addLogMsgState:v126];
        }

        v119 = +[GEOAPStateFactory sharedFactory];
        v141[0] = MEMORY[0x1E69E9820];
        v141[1] = 3221225472;
        v141[2] = __313__GEOAPPortal_captureEvTripWithOutOfCharge_outOfRangeAlertDisplayed_originalTripIncludedChargingStation_chargingStopAddedThroughSar_tripIncludedPreferredChargingStation_stopRemovedDetails_realtimeDodgeballs_chargeLocationDetails_stopAddedDetails_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_50;
        v141[3] = &unk_1E7953A00;
        v142 = v52;
        v120 = v52;
        [v119 sessionStateForType:7 callback:v141];

        v30[2](v30);
        v20 = v133;
        v23 = v134;
        v22 = v135;
      }

      else
      {
        v30[2](v30);
      }
    }
  }

  v121 = *MEMORY[0x1E69E9840];
}

void __313__GEOAPPortal_captureEvTripWithOutOfCharge_outOfRangeAlertDisplayed_originalTripIncludedChargingStation_chargingStopAddedThroughSar_tripIncludedPreferredChargingStation_stopRemovedDetails_realtimeDodgeballs_chargeLocationDetails_stopAddedDetails_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __313__GEOAPPortal_captureEvTripWithOutOfCharge_outOfRangeAlertDisplayed_originalTripIncludedChargingStation_chargingStopAddedThroughSar_tripIncludedPreferredChargingStation_stopRemovedDetails_realtimeDodgeballs_chargeLocationDetails_stopAddedDetails_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureEvRoutingVehicleDetailsWithMake:(id)a3 model:(id)a4 towingNotSupported:(id)a5 batteryCapacity:(id)a6 additionalStates:(id)a7 providedDropRate:(id)a8 completionQueue:(id)a9 completionBlock:(id)a10
{
  v84 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __161__GEOAPPortal_captureEvRoutingVehicleDetailsWithMake_model_towingNotSupported_batteryCapacity_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v78[3] = &unk_1E7959478;
  v23 = v22;
  v80 = v23;
  v24 = v21;
  v79 = v24;
  v25 = MEMORY[0x1AC5A12F0](v78);
  if (!GEOConfigGetBOOL())
  {
    v70 = v24;
    v71 = v19;
    v27 = +[GEOAPServiceManager sharedManager];
    v28 = [v27 eventCollectionIsDisabledForCurrentProcess];

    if (v28)
    {
      v29 = GEOGetGEOAPPortalAnalyticsLog();
      v26 = v20;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v83 = v30;
        _os_log_impl(&dword_1AB634000, v29, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v25[2](v25);
    }

    else
    {
      v26 = v20;
      if (v20)
      {
        [v20 doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      v24 = v70;
      v19 = v71;
      if (v31 != 0.0 && v31 >= arc4random() / 4294967300.0)
      {
        v25[2](v25);
        goto LABEL_56;
      }

      v65 = +[GEOAPStateFactory sharedFactory];
      v66 = v17;
      v67 = v15;
      v64 = v18;
      if ([v71 count])
      {
        v62 = v23;
        v68 = v16;
        v32 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v71, "count")}];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v33 = v71;
        v34 = [v33 countByEnumeratingWithState:&v74 objects:v81 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v75;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v75 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v74 + 1) + 8 * i);
              v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v38, "stateType")}];
              [v32 setObject:v38 forKeyedSubscript:v39];
            }

            v35 = [v33 countByEnumeratingWithState:&v74 objects:v81 count:16];
          }

          while (v35);
        }

        v40 = [v32 copy];
        v16 = v68;
        v23 = v62;
        v18 = v64;
        v26 = v20;
      }

      else
      {
        v40 = 0;
      }

      if (GEOConfigGetBOOL())
      {
        v41 = 0;
        v69 = 0;
      }

      else
      {
        v41 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v65, "logMsgStateTypeForType:", 2)}];
        v69 = [v40 objectForKeyedSubscript:v41];
        if (!v69)
        {
          v69 = [v65 stateForType:2];
        }
      }

      if (GEOConfigGetBOOL())
      {
        v63 = 0;
      }

      else
      {
        v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v65, "logMsgStateTypeForType:", 30)}];

        v63 = [v40 objectForKeyedSubscript:v42];
        if (!v63)
        {
          v63 = [v65 stateForType:30];
        }

        v41 = v42;
      }

      if (GEOConfigGetBOOL())
      {
        v43 = 0;
      }

      else
      {
        v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v65, "logMsgStateTypeForType:", 1)}];

        v45 = [v40 objectForKeyedSubscript:v44];
        if (!v45)
        {
          v45 = [v65 stateForType:1];
        }

        v43 = v45;
        v41 = v44;
      }

      v61 = v40;
      if (GEOConfigGetBOOL())
      {
        v60 = v41;
        v46 = 0;
      }

      else
      {
        v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v65, "logMsgStateTypeForType:", 3)}];

        v48 = [v40 objectForKeyedSubscript:v47];
        if (!v48)
        {
          v48 = [v65 stateForType:3];
        }

        v46 = v48;
        v60 = v47;
      }

      v49 = objc_alloc_init(MEMORY[0x1E69A1E90]);
      [v49 setEventType:42];
      v50 = objc_alloc_init(MEMORY[0x1E69A1EC8]);
      [v49 setEvRoutingVehicleDetails:v50];

      v51 = [v49 evRoutingVehicleDetails];
      [v51 setMake:v67];

      v52 = [v49 evRoutingVehicleDetails];
      [v52 setModel:v16];

      if (v66)
      {
        v53 = [v66 BOOLValue];
        v54 = [v49 evRoutingVehicleDetails];
        [v54 setTowingNotSupported:v53];

        v18 = v64;
      }

      if (v18)
      {
        v55 = [v18 unsignedLongLongValue];
        v56 = [v49 evRoutingVehicleDetails];
        [v56 setBatteryCapacity:v55];

        v18 = v64;
      }

      if (v69)
      {
        [v49 addLogMsgState:?];
      }

      if (v43)
      {
        [v49 addLogMsgState:v43];
      }

      if (v46)
      {
        [v49 addLogMsgState:v46];
      }

      if (v63)
      {
        [v49 addLogMsgState:v63];
      }

      v57 = +[GEOAPStateFactory sharedFactory];
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __161__GEOAPPortal_captureEvRoutingVehicleDetailsWithMake_model_towingNotSupported_batteryCapacity_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_47;
      v72[3] = &unk_1E7953A00;
      v73 = v49;
      v58 = v49;
      [v57 sessionStateForType:7 callback:v72];

      v25[2](v25);
      v17 = v66;
      v15 = v67;
    }

    v24 = v70;
    v19 = v71;
    goto LABEL_56;
  }

  v25[2](v25);
  v26 = v20;
LABEL_56:

  v59 = *MEMORY[0x1E69E9840];
}

void __161__GEOAPPortal_captureEvRoutingVehicleDetailsWithMake_model_towingNotSupported_batteryCapacity_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __161__GEOAPPortal_captureEvRoutingVehicleDetailsWithMake_model_towingNotSupported_batteryCapacity_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_47(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureDisplayAnalyticWithDisplayActionTrigger:(int)a3 requiredResourcesAvailable:(id)a4 totalTime:(id)a5 requestedImageCount:(id)a6 renderedImageCount:(id)a7 movementDistance:(id)a8 meanImageSpacing:(id)a9 displayEvent:(int)a10 additionalStates:(id)a11 providedDropRate:(id)a12 completionQueue:(id)a13 completionBlock:(id)a14
{
  v120 = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a5;
  v103 = a6;
  v20 = a7;
  v106 = a8;
  v21 = a9;
  v104 = a11;
  v107 = a12;
  v22 = a13;
  v23 = a14;
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = __251__GEOAPPortal_captureDisplayAnalyticWithDisplayActionTrigger_requiredResourcesAvailable_totalTime_requestedImageCount_renderedImageCount_movementDistance_meanImageSpacing_displayEvent_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v114[3] = &unk_1E7959478;
  v24 = v23;
  v116 = v24;
  v25 = v22;
  v115 = v25;
  v26 = MEMORY[0x1AC5A12F0](v114);
  v105 = v21;
  if (GEOConfigGetBOOL())
  {
    v26[2](v26);
    v27 = v18;
    v29 = v103;
    v28 = v104;
    v30 = v106;
  }

  else
  {
    v102 = v20;
    v31 = +[GEOAPServiceManager sharedManager];
    v32 = [v31 eventCollectionIsDisabledForCurrentProcess];

    if (v32)
    {
      v33 = GEOGetGEOAPPortalAnalyticsLog();
      v27 = v18;
      v30 = v106;
      v28 = v104;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v119 = v34;
        _os_log_impl(&dword_1AB634000, v33, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v26[2](v26);
      v20 = v102;
      v29 = v103;
    }

    else
    {
      v27 = v18;
      v30 = v106;
      v28 = v104;
      if (v107)
      {
        [v107 doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      v20 = v102;
      if (v35 == 0.0 || v35 < arc4random() / 4294967300.0)
      {
        v95 = +[GEOAPStateFactory sharedFactory];
        v96 = v19;
        v85 = v25;
        v87 = v24;
        if ([v104 count])
        {
          v36 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v104, "count")}];
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v37 = v104;
          v38 = [v37 countByEnumeratingWithState:&v110 objects:v117 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v111;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v111 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v110 + 1) + 8 * i);
                v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v42, "stateType", v85, v87)}];
                [v36 setObject:v42 forKeyedSubscript:v43];
              }

              v39 = [v37 countByEnumeratingWithState:&v110 objects:v117 count:16];
            }

            while (v39);
          }

          v44 = [v36 copy];
          v27 = v18;
          v30 = v106;
        }

        else
        {
          v44 = 0;
        }

        v29 = v103;
        if (GEOConfigGetBOOL())
        {
          v45 = 0;
          v100 = 0;
        }

        else
        {
          v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v95, "logMsgStateTypeForType:", 65)}];
          v100 = [v44 objectForKeyedSubscript:v45];
          if (!v100)
          {
            v100 = [v95 stateForType:65];
          }
        }

        if (GEOConfigGetBOOL())
        {
          v94 = 0;
        }

        else
        {
          v46 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v95, "logMsgStateTypeForType:", 35)}];

          v47 = [v44 objectForKeyedSubscript:v46];
          if (!v47)
          {
            v47 = [v95 stateForType:35];
          }

          v94 = v47;
          v45 = v46;
        }

        if (GEOConfigGetBOOL())
        {
          v93 = 0;
        }

        else
        {
          v48 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v95, "logMsgStateTypeForType:", 30)}];

          v49 = [v44 objectForKeyedSubscript:v48];
          if (!v49)
          {
            v49 = [v95 stateForType:30];
          }

          v93 = v49;
          v45 = v48;
        }

        if (GEOConfigGetBOOL())
        {
          v99 = 0;
        }

        else
        {
          v50 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v95, "logMsgStateTypeForType:", 1)}];

          v99 = [v44 objectForKeyedSubscript:v50];
          if (!v99)
          {
            v99 = [v95 stateForType:1];
          }

          v45 = v50;
        }

        if (GEOConfigGetBOOL())
        {
          v92 = 0;
        }

        else
        {
          v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v95, "logMsgStateTypeForType:", 3)}];

          v52 = [v44 objectForKeyedSubscript:v51];
          if (!v52)
          {
            v52 = [v95 stateForType:3];
          }

          v92 = v52;
          v45 = v51;
        }

        if (GEOConfigGetBOOL())
        {
          v98 = 0;
        }

        else
        {
          v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v95, "logMsgStateTypeForType:", 64)}];

          v98 = [v44 objectForKeyedSubscript:v53];
          if (!v98)
          {
            v98 = [v95 stateForType:64];
          }

          v45 = v53;
        }

        if (GEOConfigGetBOOL())
        {
          v97 = 0;
        }

        else
        {
          v54 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v95, "logMsgStateTypeForType:", 13)}];

          v97 = [v44 objectForKeyedSubscript:v54];
          if (!v97)
          {
            v97 = [v95 stateForType:13];
          }

          v45 = v54;
        }

        if (GEOConfigGetBOOL())
        {
          v91 = 0;
        }

        else
        {
          v55 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v95, "logMsgStateTypeForType:", 14)}];

          v56 = [v44 objectForKeyedSubscript:v55];
          if (!v56)
          {
            v56 = [v95 stateForType:14];
          }

          v91 = v56;
          v45 = v55;
        }

        if (GEOConfigGetBOOL())
        {
          v90 = 0;
        }

        else
        {
          v57 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v95, "logMsgStateTypeForType:", 9)}];

          v58 = [v44 objectForKeyedSubscript:v57];
          if (!v58)
          {
            v58 = [v95 stateForType:9];
          }

          v90 = v58;
          v45 = v57;
        }

        if (GEOConfigGetBOOL())
        {
          v59 = 0;
        }

        else
        {
          v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v95, "logMsgStateTypeForType:", 10)}];

          v61 = [v44 objectForKeyedSubscript:v60];
          if (!v61)
          {
            v61 = [v95 stateForType:10];
          }

          v59 = v61;
          v45 = v60;
        }

        v89 = v44;
        if (GEOConfigGetBOOL())
        {
          v62 = 0;
        }

        else
        {
          v63 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v95, "logMsgStateTypeForType:", 42)}];

          v64 = [v89 objectForKeyedSubscript:v63];
          if (!v64)
          {
            v64 = [v95 stateForType:42];
          }

          v62 = v64;
          v45 = v63;
        }

        v65 = objc_alloc_init(MEMORY[0x1E69A1E90]);
        [v65 setEventType:35];
        v66 = objc_alloc_init(MEMORY[0x1E69A1EC0]);
        [v65 setDisplayAnalytic:v66];

        v67 = [v65 displayAnalytic];
        [v67 setDisplayActionTrigger:a3];

        if (v27)
        {
          v68 = [v27 unsignedLongLongValue];
          v69 = [v65 displayAnalytic];
          [v69 setRequiredResourcesAvailable:v68];
        }

        if (v96)
        {
          v70 = [v96 unsignedLongLongValue];
          v71 = [v65 displayAnalytic];
          [v71 setTotalTime:v70];
        }

        if (v103)
        {
          v72 = [v103 unsignedLongLongValue];
          v73 = [v65 displayAnalytic];
          [v73 setRequestedImageCount:v72];
        }

        if (v102)
        {
          v74 = [v102 unsignedLongLongValue];
          v75 = [v65 displayAnalytic];
          [v75 setRenderedImageCount:v74];
        }

        if (v30)
        {
          v76 = [v30 unsignedLongLongValue];
          v77 = [v65 displayAnalytic];
          [v77 setMovementDistance:v76];

          v30 = v106;
        }

        if (v105)
        {
          [v105 doubleValue];
          v79 = v78;
          v80 = [v65 displayAnalytic];
          [v80 setMeanImageSpacing:v79];
        }

        v81 = [v65 displayAnalytic];
        [v81 setDisplayEvent:a10];

        if (v99)
        {
          [v65 addLogMsgState:?];
        }

        v28 = v104;
        if (v92)
        {
          [v65 addLogMsgState:?];
        }

        if (v93)
        {
          [v65 addLogMsgState:?];
        }

        if (v94)
        {
          [v65 addLogMsgState:?];
        }

        if (v100)
        {
          [v65 addLogMsgState:v100];
        }

        if (v97)
        {
          [v65 addLogMsgState:?];
        }

        if (v91)
        {
          [v65 addLogMsgState:?];
        }

        if (v90)
        {
          [v65 addLogMsgState:?];
        }

        if (v59)
        {
          [v65 addLogMsgState:v59];
          [v65 addLogMsgState:v59];
        }

        if (v98)
        {
          [v65 addLogMsgState:v98];
        }

        if (v62)
        {
          [v65 addLogMsgState:v62];
        }

        v82 = +[GEOAPStateFactory sharedFactory];
        v108[0] = MEMORY[0x1E69E9820];
        v108[1] = 3221225472;
        v108[2] = __251__GEOAPPortal_captureDisplayAnalyticWithDisplayActionTrigger_requiredResourcesAvailable_totalTime_requestedImageCount_renderedImageCount_movementDistance_meanImageSpacing_displayEvent_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_45;
        v108[3] = &unk_1E7953A00;
        v83 = v65;
        v109 = v83;
        [v82 sessionStateForType:5 callback:v108];

        v26[2](v26);
        v19 = v96;
        v20 = v102;
        v25 = v86;
        v24 = v88;
      }

      else
      {
        v26[2](v26);
        v29 = v103;
      }
    }
  }

  v84 = *MEMORY[0x1E69E9840];
}

void __251__GEOAPPortal_captureDisplayAnalyticWithDisplayActionTrigger_requiredResourcesAvailable_totalTime_requestedImageCount_renderedImageCount_movementDistance_meanImageSpacing_displayEvent_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __251__GEOAPPortal_captureDisplayAnalyticWithDisplayActionTrigger_requiredResourcesAvailable_totalTime_requestedImageCount_renderedImageCount_movementDistance_meanImageSpacing_displayEvent_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_45(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureDirectionsServiceMetadataWithDirectionsMetadata:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v77 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __136__GEOAPPortal_captureDirectionsServiceMetadataWithDirectionsMetadata_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v71[3] = &unk_1E7959478;
  v16 = v15;
  v73 = v16;
  v17 = v14;
  v72 = v17;
  v18 = MEMORY[0x1AC5A12F0](v71);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (v20)
  {
    v21 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v76 = v22;
      _os_log_impl(&dword_1AB634000, v21, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v13)
  {
    [v13 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v23 != 0.0 && v23 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v18[2](v18);
    goto LABEL_21;
  }

  v64 = v11;
  v24 = +[GEOAPStateFactory sharedFactory];
  v58 = v24;
  v56 = v12;
  if ([v12 count])
  {
    v61 = v16;
    v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v26 = v12;
    v27 = [v26 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v68;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v68 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v67 + 1) + 8 * i);
          v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v31, "stateType")}];
          [v25 setObject:v31 forKeyedSubscript:v32];
        }

        v28 = [v26 countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v28);
    }

    v33 = [v25 copy];
    v16 = v61;
    v24 = v58;
  }

  else
  {
    v33 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v35 = 0;
    v63 = 0;
  }

  else
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 65)}];
    v36 = [v33 objectForKeyedSubscript:v35];
    if (!v36)
    {
      v36 = [v24 stateForType:65];
    }

    v63 = v36;
  }

  v12 = v56;
  if (GEOConfigGetBOOL())
  {
    v62 = 0;
  }

  else
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 30)}];

    v38 = [v33 objectForKeyedSubscript:v37];
    if (!v38)
    {
      v38 = [v24 stateForType:30];
    }

    v62 = v38;
    v35 = v37;
  }

  if (GEOConfigGetBOOL())
  {
    v60 = 0;
  }

  else
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 1)}];

    v40 = [v33 objectForKeyedSubscript:v39];
    if (!v40)
    {
      v40 = [v24 stateForType:1];
    }

    v60 = v40;
    v35 = v39;
  }

  if (GEOConfigGetBOOL())
  {
    v41 = 0;
  }

  else
  {
    v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 3)}];

    v41 = [v33 objectForKeyedSubscript:v42];
    if (!v41)
    {
      v41 = [v24 stateForType:3];
    }

    v35 = v42;
  }

  v59 = v41;
  v57 = v33;
  if (GEOConfigGetBOOL())
  {
    v43 = 0;
  }

  else
  {
    v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 42)}];

    v45 = [v33 objectForKeyedSubscript:v44];
    if (!v45)
    {
      v45 = [v24 stateForType:42];
    }

    v43 = v45;
    v35 = v44;
  }

  if (GEOConfigGetBOOL())
  {
    v46 = 0;
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "logMsgStateTypeForType:", 70)}];
    v48 = v47 = v24;

    v49 = [v57 objectForKeyedSubscript:v48];
    if (!v49)
    {
      v49 = [v47 stateForType:70];
    }

    v46 = v49;
    v35 = v48;
  }

  v50 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v50 setEventType:63];
  v51 = objc_alloc_init(MEMORY[0x1E69A1F90]);
  [v50 setServiceMetadata:v51];

  v52 = [v50 serviceMetadata];
  [v52 setDirectionsMetadata:v64];

  v53 = [v50 serviceMetadata];
  [v53 setServiceMetadataType:1];

  if (v60)
  {
    [v50 addLogMsgState:?];
  }

  if (v59)
  {
    [v50 addLogMsgState:?];
  }

  if (v62)
  {
    [v50 addLogMsgState:?];
  }

  if (v63)
  {
    [v50 addLogMsgState:?];
  }

  if (v43)
  {
    [v50 addLogMsgState:v43];
  }

  if (v46)
  {
    [v50 addLogMsgState:v46];
  }

  v54 = +[GEOAPStateFactory sharedFactory];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __136__GEOAPPortal_captureDirectionsServiceMetadataWithDirectionsMetadata_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_43;
  v65[3] = &unk_1E7953A00;
  v66 = v50;
  v55 = v50;
  [v54 sessionStateForType:6 callback:v65];

  v18[2](v18);
  v11 = v64;
LABEL_21:

  v34 = *MEMORY[0x1E69E9840];
}

void __136__GEOAPPortal_captureDirectionsServiceMetadataWithDirectionsMetadata_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __136__GEOAPPortal_captureDirectionsServiceMetadataWithDirectionsMetadata_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_43(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureDirectionsWithDirectionsFeedbacks:(id)a3 finalLocation:(id)a4 arrivalLocation:(id)a5 arrivedAtDestination:(id)a6 navigationAudioFeedback:(GEONavigationAudioFeedback *)a7 durationOfTrip:(id)a8 durationInNavigationModes:(id)a9 preArrival:(id)a10 originalEta:(id)a11 isVlfImprovementUsed:(id)a12 isCoarseLocationUsed:(id)a13 acceptedCyclingWorkout:(id)a14 batteryDied:(id)a15 chargingStopAdded:(id)a16 isSiriEngaged:(id)a17 tripOrigin:(id)a18 isBadEvExperience:(id)a19 isEvSampleTrip:(id)a20 stateOfChargeAtOrigin:(id)a21 stateOfChargeAtDestPredicted:(id)a22 stateOfChargeAtDestActual:(id)a23 stateOfChargeDiffAtDest:(id)a24 waypoints:(id)a25 evConsumptionModel:(id)a26 evChargingMode:(id)a27 activeNavMode:(int)a28 arWalkingUsedInRoutePlanning:(id)a29 arWalkingUsedInNavigation:(id)a30 voiceGuidanceLevel:(int)a31 hFPEnabled:(id)a32 isEndRouteTermination:(id)a33 isParkedCarTermination:(id)a34 isTransitionToWalkingTermination:(id)a35 isTransitionToFindmyTermination:(id)a36 parkingDetectionLocation:(id)a37 timeBetweenParkedAndArrival:(id)a38 arrivedAtDestinationCount:(id)a39 inParkingModeCount:(id)a40 isInParkingMode:(id)a41 isSuggestToWalkingTriggered:(id)a42 isTransitedToWalking:(id)a43 isSuggestToFindmyTriggered:(id)a44 isTransitedToFindmy:(id)a45 additionalStates:(id)a46 providedDropRate:(id)a47 completionQueue:(id)a48 completionBlock:(id)a49
{
  v273 = *MEMORY[0x1E69E9840];
  v247 = a3;
  v52 = a4;
  v53 = a5;
  v54 = a6;
  v245 = a8;
  v55 = a9;
  v243 = a10;
  v56 = a11;
  v57 = a12;
  v58 = a13;
  v59 = a14;
  v242 = a15;
  v241 = a16;
  v240 = a17;
  v239 = a18;
  v238 = a19;
  v237 = a20;
  v236 = a21;
  v235 = a22;
  v234 = a23;
  v233 = a24;
  v246 = a25;
  v232 = a26;
  v231 = a27;
  v230 = a29;
  v229 = a30;
  v228 = a32;
  v227 = a33;
  v226 = a34;
  v225 = a35;
  v224 = a36;
  v223 = a37;
  v222 = a38;
  v221 = a39;
  v220 = a40;
  v219 = a41;
  v218 = a42;
  v217 = a43;
  v216 = a44;
  v215 = a45;
  v214 = a46;
  v248 = a47;
  v60 = a48;
  v61 = a49;
  v265[0] = MEMORY[0x1E69E9820];
  v265[1] = 3221225472;
  v265[2] = __978__GEOAPPortal_captureDirectionsWithDirectionsFeedbacks_finalLocation_arrivalLocation_arrivedAtDestination_navigationAudioFeedback_durationOfTrip_durationInNavigationModes_preArrival_originalEta_isVlfImprovementUsed_isCoarseLocationUsed_acceptedCyclingWorkout_batteryDied_chargingStopAdded_isSiriEngaged_tripOrigin_isBadEvExperience_isEvSampleTrip_stateOfChargeAtOrigin_stateOfChargeAtDestPredicted_stateOfChargeAtDestActual_stateOfChargeDiffAtDest_waypoints_evConsumptionModel_evChargingMode_activeNavMode_arWalkingUsedInRoutePlanning_arWalkingUsedInNavigation_voiceGuidanceLevel_hFPEnabled_isEndRouteTermination_isParkedCarTermination_isTransitionToWalkingTermination_isTransitionToFindmyTermination_parkingDetectionLocation_timeBetweenParkedAndArrival_arrivedAtDestinationCount_inParkingModeCount_isInParkingMode_isSuggestToWalkingTriggered_isTransitedToWalking_isSuggestToFindmyTriggered_isTransitedToFindmy_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v265[3] = &unk_1E7959478;
  v213 = v61;
  v267 = v213;
  v212 = v60;
  v266 = v212;
  v62 = MEMORY[0x1AC5A12F0](v265);
  if (GEOConfigGetBOOL())
  {
LABEL_2:
    v62[2](v62);
    goto LABEL_137;
  }

  v211 = v53;
  v63 = +[GEOAPServiceManager sharedManager];
  v64 = [v63 eventCollectionIsDisabledForCurrentProcess];

  if (v64)
  {
    v65 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      v66 = GEOApplicationIdentifierOrProcessName();
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v66;
      _os_log_impl(&dword_1AB634000, v65, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", &buf, 0xCu);
    }

    v62[2](v62);
    v53 = v211;
  }

  else
  {
    if (v248)
    {
      [v248 doubleValue];
    }

    else
    {
      GEOConfigGetDouble();
    }

    v53 = v211;
    if (v67 != 0.0 && v67 >= arc4random() / 4294967300.0)
    {
      goto LABEL_2;
    }

    v199 = +[GEOAPStateFactory sharedFactory];
    v204 = v54;
    v205 = v52;
    v202 = v56;
    v203 = v55;
    v200 = v59;
    v201 = v57;
    if ([v214 count])
    {
      v68 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v214, "count")}];
      v261 = 0u;
      v262 = 0u;
      v263 = 0u;
      v264 = 0u;
      v69 = v214;
      v70 = [v69 countByEnumeratingWithState:&v261 objects:v272 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v262;
        do
        {
          for (i = 0; i != v71; ++i)
          {
            if (*v262 != v72)
            {
              objc_enumerationMutation(v69);
            }

            v74 = *(*(&v261 + 1) + 8 * i);
            v75 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v74, "stateType")}];
            [v68 setObject:v74 forKeyedSubscript:v75];
          }

          v71 = [v69 countByEnumeratingWithState:&v261 objects:v272 count:16];
        }

        while (v71);
      }

      v76 = [v68 copy];
    }

    else
    {
      v76 = 0;
    }

    if (GEOConfigGetBOOL())
    {
      v208 = 0;
      v77 = 0;
    }

    else
    {
      v77 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v199, "logMsgStateTypeForType:", 2)}];
      v208 = [v76 objectForKeyedSubscript:v77];
      if (!v208)
      {
        v208 = [v199 stateForType:2];
      }
    }

    if (GEOConfigGetBOOL())
    {
      v78 = 0;
    }

    else
    {
      v79 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v199, "logMsgStateTypeForType:", 30)}];

      v80 = [v76 objectForKeyedSubscript:v79];
      if (!v80)
      {
        v80 = [v199 stateForType:30];
      }

      v78 = v80;
      v77 = v79;
    }

    if (GEOConfigGetBOOL())
    {
      v207 = 0;
    }

    else
    {
      v81 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v199, "logMsgStateTypeForType:", 1)}];

      v207 = [v76 objectForKeyedSubscript:v81];
      if (!v207)
      {
        v207 = [v199 stateForType:1];
      }

      v77 = v81;
    }

    if (GEOConfigGetBOOL())
    {
      v206 = 0;
    }

    else
    {
      v82 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v199, "logMsgStateTypeForType:", 3)}];

      v206 = [v76 objectForKeyedSubscript:v82];
      if (!v206)
      {
        v206 = [v199 stateForType:3];
      }

      v77 = v82;
    }

    if (GEOConfigGetBOOL())
    {
      v197 = 0;
    }

    else
    {
      v83 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v199, "logMsgStateTypeForType:", 70)}];

      v197 = [v76 objectForKeyedSubscript:v83];
      if (!v197)
      {
        v197 = [v199 stateForType:70];
      }

      v77 = v83;
    }

    v195 = v77;
    v196 = v76;
    v198 = v78;
    v84 = objc_alloc_init(MEMORY[0x1E69A1E90]);
    [v84 setEventType:8];
    v85 = objc_alloc_init(MEMORY[0x1E69A1EB8]);
    [v84 setDirectionsEvent:v85];

    v86 = [v84 directionsEvent];
    v87 = [v86 directionsFeedbacks];

    if (!v87)
    {
      v88 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v247, "count")}];
      v89 = [v84 directionsEvent];
      [v89 setDirectionsFeedbacks:v88];
    }

    v259 = 0u;
    v260 = 0u;
    v257 = 0u;
    v258 = 0u;
    v90 = v247;
    v91 = [v90 countByEnumeratingWithState:&v257 objects:v271 count:16];
    if (v91)
    {
      v92 = v91;
      v93 = *v258;
      do
      {
        for (j = 0; j != v92; ++j)
        {
          if (*v258 != v93)
          {
            objc_enumerationMutation(v90);
          }

          v95 = *(*(&v257 + 1) + 8 * j);
          v96 = [v84 directionsEvent];
          v97 = [v96 directionsFeedbacks];
          v98 = [v95 copy];
          [v97 addObject:v98];
        }

        v92 = [v90 countByEnumeratingWithState:&v257 objects:v271 count:16];
      }

      while (v92);
    }

    v99 = [v84 directionsEvent];
    [v99 setFinalLocation:v205];

    v100 = [v84 directionsEvent];
    [v100 setArrivalLocation:v211];

    if (v204)
    {
      v101 = [v204 BOOLValue];
      v102 = [v84 directionsEvent];
      [v102 setArrivedAtDestination:v101];
    }

    v103 = *&a7->var9;
    v255 = *&a7->var0;
    v256[0] = v103;
    *(v256 + 12) = *&a7->var12;
    v104 = [v84 directionsEvent];
    buf = v255;
    v270[0] = v256[0];
    *(v270 + 12) = *(v256 + 12);
    [v104 setNavigationAudioFeedback:&buf];

    if (v245)
    {
      [v245 doubleValue];
      v106 = v105;
      v107 = [v84 directionsEvent];
      [v107 setDurationOfTrip:v106];
    }

    v108 = [v84 directionsEvent];
    [v108 setDurationInNavigationModes:v203];

    if (v243)
    {
      v109 = [v243 BOOLValue];
      v110 = [v84 directionsEvent];
      [v110 setPreArrival:v109];
    }

    if (v202)
    {
      v111 = [v202 unsignedLongLongValue];
      v112 = [v84 directionsEvent];
      [v112 setOriginalEta:v111];
    }

    if (v201)
    {
      v113 = [v201 BOOLValue];
      v114 = [v84 directionsEvent];
      [v114 setIsVlfImprovementUsed:v113];
    }

    if (v58)
    {
      v115 = [v58 BOOLValue];
      v116 = [v84 directionsEvent];
      [v116 setIsCoarseLocationUsed:v115];
    }

    if (v200)
    {
      v117 = [v200 BOOLValue];
      v118 = [v84 directionsEvent];
      [v118 setAcceptedCyclingWorkout:v117];
    }

    if (v242)
    {
      v119 = [v242 BOOLValue];
      v120 = [v84 directionsEvent];
      [v120 setBatteryDied:v119];
    }

    if (v241)
    {
      v121 = [v241 BOOLValue];
      v122 = [v84 directionsEvent];
      [v122 setChargingStopAdded:v121];
    }

    if (v240)
    {
      v123 = [v240 BOOLValue];
      v124 = [v84 directionsEvent];
      [v124 setIsSiriEngaged:v123];
    }

    v125 = [v84 directionsEvent];
    [v125 setTripOrigin:v239];

    if (v238)
    {
      v126 = [v238 BOOLValue];
      v127 = [v84 directionsEvent];
      [v127 setIsBadEvExperience:v126];
    }

    if (v237)
    {
      v128 = [v237 BOOLValue];
      v129 = [v84 directionsEvent];
      [v129 setIsEvSampleTrip:v128];
    }

    if (v236)
    {
      v130 = [v236 unsignedLongLongValue];
      v131 = [v84 directionsEvent];
      [v131 setStateOfChargeAtOrigin:v130];
    }

    if (v235)
    {
      v132 = [v235 unsignedLongLongValue];
      v133 = [v84 directionsEvent];
      [v133 setStateOfChargeAtDestPredicted:v132];
    }

    if (v234)
    {
      v134 = [v234 unsignedLongLongValue];
      v135 = [v84 directionsEvent];
      [v135 setStateOfChargeAtDestActual:v134];
    }

    if (v233)
    {
      v136 = [v233 unsignedLongLongValue];
      v137 = [v84 directionsEvent];
      [v137 setStateOfChargeDiffAtDest:v136];
    }

    v210 = v58;
    v138 = [v84 directionsEvent];
    v139 = [v138 waypoints];

    if (!v139)
    {
      v140 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v246, "count")}];
      v141 = [v84 directionsEvent];
      [v141 setWaypoints:v140];
    }

    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    v142 = v246;
    v143 = [v142 countByEnumeratingWithState:&v251 objects:v268 count:16];
    if (v143)
    {
      v144 = v143;
      v145 = *v252;
      do
      {
        for (k = 0; k != v144; ++k)
        {
          if (*v252 != v145)
          {
            objc_enumerationMutation(v142);
          }

          v147 = *(*(&v251 + 1) + 8 * k);
          v148 = [v84 directionsEvent];
          v149 = [v148 waypoints];
          v150 = [v147 copy];
          [v149 addObject:v150];
        }

        v144 = [v142 countByEnumeratingWithState:&v251 objects:v268 count:16];
      }

      while (v144);
    }

    v151 = [v84 directionsEvent];
    [v151 setEvConsumptionModel:v232];

    v152 = [v84 directionsEvent];
    [v152 setEvChargingMode:v231];

    v153 = [v84 directionsEvent];
    [v153 setActiveNavMode:a28];

    if (v230)
    {
      v154 = [v230 BOOLValue];
      v155 = [v84 directionsEvent];
      [v155 setArWalkingUsedInRoutePlanning:v154];
    }

    if (v229)
    {
      v156 = [v229 BOOLValue];
      v157 = [v84 directionsEvent];
      [v157 setArWalkingUsedInNavigation:v156];
    }

    v158 = [v84 directionsEvent];
    [v158 setVoiceGuidanceLevel:a31];

    if (v228)
    {
      v159 = [v228 BOOLValue];
      v160 = [v84 directionsEvent];
      [v160 setHFPEnabled:v159];
    }

    if (v227)
    {
      v161 = [v227 BOOLValue];
      v162 = [v84 directionsEvent];
      [v162 setIsEndRouteTermination:v161];
    }

    if (v226)
    {
      v163 = [v226 BOOLValue];
      v164 = [v84 directionsEvent];
      [v164 setIsParkedCarTermination:v163];
    }

    if (v225)
    {
      v165 = [v225 BOOLValue];
      v166 = [v84 directionsEvent];
      [v166 setIsTransitionToWalkingTermination:v165];
    }

    if (v224)
    {
      v167 = [v224 BOOLValue];
      v168 = [v84 directionsEvent];
      [v168 setIsTransitionToFindmyTermination:v167];
    }

    v169 = [v84 directionsEvent];
    [v169 setParkingDetectionLocation:v223];

    if (v222)
    {
      [v222 doubleValue];
      v171 = v170;
      v172 = [v84 directionsEvent];
      [v172 setTimeBetweenParkedAndArrival:v171];
    }

    if (v221)
    {
      v173 = [v221 unsignedLongLongValue];
      v174 = [v84 directionsEvent];
      [v174 setArrivedAtDestinationCount:v173];
    }

    if (v220)
    {
      v175 = [v220 unsignedLongLongValue];
      v176 = [v84 directionsEvent];
      [v176 setInParkingModeCount:v175];
    }

    if (v219)
    {
      v177 = [v219 BOOLValue];
      v178 = [v84 directionsEvent];
      [v178 setIsInParkingMode:v177];
    }

    if (v218)
    {
      v179 = [v218 BOOLValue];
      v180 = [v84 directionsEvent];
      [v180 setIsSuggestToWalkingTriggered:v179];
    }

    if (v217)
    {
      v181 = [v217 BOOLValue];
      v182 = [v84 directionsEvent];
      [v182 setIsTransitedToWalking:v181];
    }

    if (v216)
    {
      v183 = [v216 BOOLValue];
      v184 = [v84 directionsEvent];
      [v184 setIsSuggestToFindmyTriggered:v183];
    }

    if (v215)
    {
      v185 = [v215 BOOLValue];
      v186 = [v84 directionsEvent];
      [v186 setIsTransitedToFindmy:v185];
    }

    v187 = [MEMORY[0x1E69A2710] sharedInstance];
    v188 = [v187 navSessionID];
    v190 = v189;
    v191 = [v84 directionsEvent];
    [v191 setNavSessionId:{v188, v190}];

    if (v198)
    {
      [v84 addLogMsgState:?];
    }

    v52 = v205;
    v56 = v202;
    if (v207)
    {
      [v84 addLogMsgState:?];
    }

    if (v208)
    {
      [v84 addLogMsgState:v208];
    }

    if (v206)
    {
      [v84 addLogMsgState:?];
    }

    if (v197)
    {
      [v84 addLogMsgState:v197];
    }

    v192 = +[GEOAPStateFactory sharedFactory];
    v249[0] = MEMORY[0x1E69E9820];
    v249[1] = 3221225472;
    v249[2] = __978__GEOAPPortal_captureDirectionsWithDirectionsFeedbacks_finalLocation_arrivalLocation_arrivedAtDestination_navigationAudioFeedback_durationOfTrip_durationInNavigationModes_preArrival_originalEta_isVlfImprovementUsed_isCoarseLocationUsed_acceptedCyclingWorkout_batteryDied_chargingStopAdded_isSiriEngaged_tripOrigin_isBadEvExperience_isEvSampleTrip_stateOfChargeAtOrigin_stateOfChargeAtDestPredicted_stateOfChargeAtDestActual_stateOfChargeDiffAtDest_waypoints_evConsumptionModel_evChargingMode_activeNavMode_arWalkingUsedInRoutePlanning_arWalkingUsedInNavigation_voiceGuidanceLevel_hFPEnabled_isEndRouteTermination_isParkedCarTermination_isTransitionToWalkingTermination_isTransitionToFindmyTermination_parkingDetectionLocation_timeBetweenParkedAndArrival_arrivedAtDestinationCount_inParkingModeCount_isInParkingMode_isSuggestToWalkingTriggered_isTransitedToWalking_isSuggestToFindmyTriggered_isTransitedToFindmy_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_41;
    v249[3] = &unk_1E7953A00;
    v193 = v84;
    v250 = v193;
    [v192 sessionStateForType:7 callback:v249];

    v62[2](v62);
    v53 = v211;
    v54 = v204;
    v58 = v210;
    v55 = v203;
    v57 = v201;
    v59 = v200;
  }

LABEL_137:

  v194 = *MEMORY[0x1E69E9840];
}

void __978__GEOAPPortal_captureDirectionsWithDirectionsFeedbacks_finalLocation_arrivalLocation_arrivedAtDestination_navigationAudioFeedback_durationOfTrip_durationInNavigationModes_preArrival_originalEta_isVlfImprovementUsed_isCoarseLocationUsed_acceptedCyclingWorkout_batteryDied_chargingStopAdded_isSiriEngaged_tripOrigin_isBadEvExperience_isEvSampleTrip_stateOfChargeAtOrigin_stateOfChargeAtDestPredicted_stateOfChargeAtDestActual_stateOfChargeDiffAtDest_waypoints_evConsumptionModel_evChargingMode_activeNavMode_arWalkingUsedInRoutePlanning_arWalkingUsedInNavigation_voiceGuidanceLevel_hFPEnabled_isEndRouteTermination_isParkedCarTermination_isTransitionToWalkingTermination_isTransitionToFindmyTermination_parkingDetectionLocation_timeBetweenParkedAndArrival_arrivedAtDestinationCount_inParkingModeCount_isInParkingMode_isSuggestToWalkingTriggered_isTransitedToWalking_isSuggestToFindmyTriggered_isTransitedToFindmy_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __978__GEOAPPortal_captureDirectionsWithDirectionsFeedbacks_finalLocation_arrivalLocation_arrivedAtDestination_navigationAudioFeedback_durationOfTrip_durationInNavigationModes_preArrival_originalEta_isVlfImprovementUsed_isCoarseLocationUsed_acceptedCyclingWorkout_batteryDied_chargingStopAdded_isSiriEngaged_tripOrigin_isBadEvExperience_isEvSampleTrip_stateOfChargeAtOrigin_stateOfChargeAtDestPredicted_stateOfChargeAtDestActual_stateOfChargeDiffAtDest_waypoints_evConsumptionModel_evChargingMode_activeNavMode_arWalkingUsedInRoutePlanning_arWalkingUsedInNavigation_voiceGuidanceLevel_hFPEnabled_isEndRouteTermination_isParkedCarTermination_isTransitionToWalkingTermination_isTransitionToFindmyTermination_parkingDetectionLocation_timeBetweenParkedAndArrival_arrivedAtDestinationCount_inParkingModeCount_isInParkingMode_isSuggestToWalkingTriggered_isTransitedToWalking_isSuggestToFindmyTriggered_isTransitedToFindmy_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_41(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureDirectionsWithDirectionsFeedbacks:(id)a3 finalLocation:(id)a4 arrivalLocation:(id)a5 arrivedAtDestination:(id)a6 navigationAudioFeedback:(GEONavigationAudioFeedback *)a7 durationOfTrip:(id)a8 durationInNavigationModes:(id)a9 preArrival:(id)a10 originalEta:(id)a11 isVlfImprovementUsed:(id)a12 isCoarseLocationUsed:(id)a13 acceptedCyclingWorkout:(id)a14 batteryDied:(id)a15 chargingStopAdded:(id)a16 isSiriEngaged:(id)a17 tripOrigin:(id)a18 isBadEvExperience:(id)a19 isEvSampleTrip:(id)a20 stateOfChargeAtOrigin:(id)a21 stateOfChargeAtDestPredicted:(id)a22 stateOfChargeAtDestActual:(id)a23 stateOfChargeDiffAtDest:(id)a24 waypoints:(id)a25 evConsumptionModel:(id)a26 evChargingMode:(id)a27 activeNavMode:(int)a28 arWalkingUsedInRoutePlanning:(id)a29 arWalkingUsedInNavigation:(id)a30 voiceGuidanceLevel:(int)a31 hFPEnabled:(id)a32 isEndRouteTermination:(id)a33 isParkedCarTermination:(id)a34 isTransitionToWalkingTermination:(id)a35 isTransitionToFindmyTermination:(id)a36 parkingDetectionLocation:(id)a37 timeBetweenParkedAndArrival:(id)a38 arrivedAtDestinationCount:(id)a39 inParkingModeCount:(id)a40 isInParkingMode:(id)a41 isSuggestToWalkingTriggered:(id)a42 isTransitedToWalking:(id)a43 isSuggestToFindmyTriggered:(id)a44 isTransitedToFindmy:(id)a45
{
  v45 = *&a7->var9;
  v48 = *&a7->var0;
  v49[0] = v45;
  *(v49 + 12) = *&a7->var12;
  LODWORD(v47) = a31;
  LODWORD(v46) = a28;
  [a1 captureDirectionsWithDirectionsFeedbacks:a3 finalLocation:a4 arrivalLocation:a5 arrivedAtDestination:a6 navigationAudioFeedback:&v48 durationOfTrip:a8 durationInNavigationModes:a9 preArrival:a10 originalEta:a11 isVlfImprovementUsed:a12 isCoarseLocationUsed:a13 acceptedCyclingWorkout:a14 batteryDied:a15 chargingStopAdded:a16 isSiriEngaged:a17 tripOrigin:a18 isBadEvExperience:a19 isEvSampleTrip:a20 stateOfChargeAtOrigin:a21 stateOfChargeAtDestPredicted:a22 stateOfChargeAtDestActual:a23 stateOfChargeDiffAtDest:a24 waypoints:a25 evConsumptionModel:a26 evChargingMode:a27 activeNavMode:v46 arWalkingUsedInRoutePlanning:a29 arWalkingUsedInNavigation:a30 voiceGuidanceLevel:v47 hFPEnabled:a32 isEndRouteTermination:a33 isParkedCarTermination:a34 isTransitionToWalkingTermination:a35 isTransitionToFindmyTermination:a36 parkingDetectionLocation:a37 timeBetweenParkedAndArrival:a38 arrivedAtDestinationCount:a39 inParkingModeCount:a40 isInParkingMode:a41 isSuggestToWalkingTriggered:a42 isTransitedToWalking:a43 isSuggestToFindmyTriggered:a44 isTransitedToFindmy:a45 additionalStates:0 providedDropRate:0 completionQueue:0 completionBlock:0];
}

+ (void)captureDailyUseSummaryWithUseEvents:(id)a3 summaryPeriod:(int)a4 summaryDate:(id)a5 aggregationSummaryDate:(id)a6 firstEventDate:(id)a7 user_mapsUseLastDate:(id)a8 additionalStates:(id)a9 providedDropRate:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v102 = *MEMORY[0x1E69E9840];
  v84 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v83 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __202__GEOAPPortal_captureDailyUseSummaryWithUseEvents_summaryPeriod_summaryDate_aggregationSummaryDate_firstEventDate_user_mapsUseLastDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v95[3] = &unk_1E7959478;
  v23 = v22;
  v97 = v23;
  v24 = v21;
  v96 = v24;
  v25 = MEMORY[0x1AC5A12F0](v95);
  if (GEOConfigGetBOOL())
  {
LABEL_2:
    v25[2](v25);
    goto LABEL_45;
  }

  v82 = v18;
  v26 = +[GEOAPServiceManager sharedManager];
  v27 = [v26 eventCollectionIsDisabledForCurrentProcess];

  if (v27)
  {
    v28 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v101 = v29;
      _os_log_impl(&dword_1AB634000, v28, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v25[2](v25);
    v18 = v82;
  }

  else
  {
    if (v20)
    {
      [v20 doubleValue];
    }

    else
    {
      GEOConfigGetDouble();
    }

    v18 = v82;
    if (v30 != 0.0 && v30 >= arc4random() / 4294967300.0)
    {
      goto LABEL_2;
    }

    v31 = +[GEOAPStateFactory sharedFactory];
    v32 = [v31 stateForType:48];
    v33 = [v32 copy];

    if (v33)
    {
      [v83 doubleValue];
      v35 = v34;
      v36 = [v33 user];
      [v36 setMapsUseLastDate:v35];
    }

    v78 = v16;
    v79 = v31;
    v73 = v33;
    v74 = v23;
    v76 = v19;
    v77 = v17;
    v75 = v20;
    if ([v19 count])
    {
      v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v19, "count")}];
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v38 = v19;
      v39 = [v38 countByEnumeratingWithState:&v91 objects:v99 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v92;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v92 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v91 + 1) + 8 * i);
            v44 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v43, "stateType")}];
            [v37 setObject:v43 forKeyedSubscript:v44];
          }

          v40 = [v38 countByEnumeratingWithState:&v91 objects:v99 count:16];
        }

        while (v40);
      }

      v45 = [v37 copy];
      v31 = v79;
    }

    else
    {
      v45 = 0;
    }

    if (GEOConfigGetBOOL())
    {
      v71 = 0;
      v80 = 0;
    }

    else
    {
      v71 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v31, "logMsgStateTypeForType:", 49)}];
      v46 = [v45 objectForKeyedSubscript:?];
      if (!v46)
      {
        v46 = [v31 stateForType:49];
      }

      v80 = v46;
    }

    v72 = v45;
    v47 = objc_alloc_init(MEMORY[0x1E69A1E90]);
    [v47 setEventType:50];
    v48 = objc_alloc_init(MEMORY[0x1E69A1EB0]);
    [v47 setDailyUseSummary:v48];

    v49 = [v47 dailyUseSummary];
    v50 = [v49 useEvents];

    if (!v50)
    {
      v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v84, "count")}];
      v52 = [v47 dailyUseSummary];
      [v52 setUseEvents:v51];
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v53 = v84;
    v54 = [v53 countByEnumeratingWithState:&v87 objects:v98 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v88;
      do
      {
        for (j = 0; j != v55; ++j)
        {
          if (*v88 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v87 + 1) + 8 * j);
          v59 = [v47 dailyUseSummary];
          v60 = [v59 useEvents];
          v61 = [v58 copy];
          [v60 addObject:v61];
        }

        v55 = [v53 countByEnumeratingWithState:&v87 objects:v98 count:16];
      }

      while (v55);
    }

    v62 = [v47 dailyUseSummary];
    [v62 setSummaryPeriod:a4];

    v63 = [v47 dailyUseSummary];
    v16 = v78;
    [v63 setSummaryDate:v78];

    v64 = [v47 dailyUseSummary];
    v17 = v77;
    [v64 setAggregationSummaryDate:v77];

    v18 = v82;
    if (v82)
    {
      [v82 doubleValue];
      [GEOAPFuzzers dayResolution:?];
      v66 = v65;
      v67 = [v47 dailyUseSummary];
      [v67 setFirstEventDate:v66];
    }

    v20 = v75;
    v19 = v76;
    if (v80)
    {
      [v47 addLogMsgState:?];
    }

    if (v73)
    {
      [v47 addLogMsgState:v73];
    }

    v68 = +[GEOAPStateFactory sharedFactory];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __202__GEOAPPortal_captureDailyUseSummaryWithUseEvents_summaryPeriod_summaryDate_aggregationSummaryDate_firstEventDate_user_mapsUseLastDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_38;
    v85[3] = &unk_1E7953A00;
    v86 = v47;
    v69 = v47;
    [v68 sessionStateForType:2 callback:v85];

    v25[2](v25);
    v23 = v74;
  }

LABEL_45:

  v70 = *MEMORY[0x1E69E9840];
}

void __202__GEOAPPortal_captureDailyUseSummaryWithUseEvents_summaryPeriod_summaryDate_aggregationSummaryDate_firstEventDate_user_mapsUseLastDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __202__GEOAPPortal_captureDailyUseSummaryWithUseEvents_summaryPeriod_summaryDate_aggregationSummaryDate_firstEventDate_user_mapsUseLastDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureCommuteWindowWithStartTime:(id)a3 duration:(id)a4 predictedExitTime:(id)a5 endReason:(int)a6 numberOfAlertingResponses:(id)a7 numberOfDoomRoutingRequests:(id)a8 predictedDestinations:(id)a9 additionalStates:(id)a10 providedDropRate:(id)a11 completionQueue:(id)a12 completionBlock:(id)a13
{
  v110 = *MEMORY[0x1E69E9840];
  v92 = a3;
  v91 = a4;
  v17 = a5;
  v18 = a7;
  v90 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __228__GEOAPPortal_captureCommuteWindowWithStartTime_duration_predictedExitTime_endReason_numberOfAlertingResponses_numberOfDoomRoutingRequests_predictedDestinations_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v103[3] = &unk_1E7959478;
  v24 = v23;
  v105 = v24;
  v25 = v22;
  v104 = v25;
  v26 = MEMORY[0x1AC5A12F0](v103);
  if (GEOConfigGetBOOL())
  {
    v26[2](v26);
    v28 = v91;
    v27 = v92;
    goto LABEL_10;
  }

  v88 = v18;
  v89 = v17;
  v29 = +[GEOAPServiceManager sharedManager];
  v30 = [v29 platformDiagAndUsage];

  if ((v30 & 1) == 0)
  {
    v26[2](v26);
    v28 = v91;
    v27 = v92;
LABEL_9:
    v18 = v88;
    v17 = v89;
    goto LABEL_10;
  }

  v31 = +[GEOAPServiceManager sharedManager];
  v32 = [v31 eventCollectionIsDisabledForCurrentProcess];

  if (v32)
  {
    v33 = GEOGetGEOAPPortalAnalyticsLog();
    v28 = v91;
    v27 = v92;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v109 = v34;
      _os_log_impl(&dword_1AB634000, v33, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v26[2](v26);
    goto LABEL_9;
  }

  if (v21)
  {
    [v21 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  v28 = v91;
  v27 = v92;
  v18 = v88;
  v17 = v89;
  if (v36 == 0.0 || v36 < arc4random() / 4294967300.0)
  {
    v37 = +[GEOAPStateFactory sharedFactory];
    v79 = v24;
    v80 = v21;
    v83 = v37;
    v84 = v19;
    v81 = v20;
    if ([v20 count])
    {
      v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v20, "count")}];
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v39 = v20;
      v40 = [v39 countByEnumeratingWithState:&v99 objects:v107 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v100;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v100 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v99 + 1) + 8 * i);
            v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v44, "stateType")}];
            [v38 setObject:v44 forKeyedSubscript:v45];
          }

          v41 = [v39 countByEnumeratingWithState:&v99 objects:v107 count:16];
        }

        while (v41);
      }

      v46 = [v38 copy];
      v28 = v91;
      v27 = v92;
      v37 = v83;
      v19 = v84;
    }

    else
    {
      v46 = 0;
    }

    if (GEOConfigGetBOOL())
    {
      v47 = 0;
      v82 = 0;
    }

    else
    {
      v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v37, "logMsgStateTypeForType:", 1)}];
      v82 = [v46 objectForKeyedSubscript:v47];
      if (!v82)
      {
        v82 = [v37 stateForType:1];
      }
    }

    if (GEOConfigGetBOOL())
    {
      v85 = 0;
    }

    else
    {
      v48 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v37, "logMsgStateTypeForType:", 3)}];

      v85 = [v46 objectForKeyedSubscript:v48];
      if (!v85)
      {
        v85 = [v37 stateForType:3];
      }

      v47 = v48;
    }

    v49 = objc_alloc_init(MEMORY[0x1E69A1E90]);
    [v49 setEventType:29];
    v50 = objc_alloc_init(MEMORY[0x1E69A1EA8]);
    [v49 setCommuteWindow:v50];

    if (v27)
    {
      [v27 doubleValue];
      v52 = v51;
      v53 = [v49 commuteWindow];
      [v53 setStartTime:v52];
    }

    if (v28)
    {
      v54 = [v28 unsignedLongLongValue];
      v55 = [v49 commuteWindow];
      [v55 setDuration:v54];
    }

    if (v89)
    {
      v56 = [v89 unsignedLongLongValue];
      v57 = [v49 commuteWindow];
      [v57 setPredictedExitTime:v56];
    }

    v58 = [v49 commuteWindow];
    [v58 setEndReason:a6];

    if (v88)
    {
      v59 = [v88 unsignedLongLongValue];
      v60 = [v49 commuteWindow];
      [v60 setNumberOfAlertingResponses:v59];
    }

    if (v90)
    {
      v61 = [v90 unsignedLongLongValue];
      v62 = [v49 commuteWindow];
      [v62 setNumberOfDoomRoutingRequests:v61];
    }

    v78 = v47;
    v87 = v46;
    v63 = [v49 commuteWindow];
    v64 = [v63 predictedDestinations];

    if (!v64)
    {
      v65 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
      v66 = [v49 commuteWindow];
      [v66 setPredictedDestinations:v65];
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v67 = v19;
    v68 = [v67 countByEnumeratingWithState:&v95 objects:v106 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v96;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v96 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = *(*(&v95 + 1) + 8 * j);
          v73 = [v49 commuteWindow];
          v74 = [v73 predictedDestinations];
          v75 = [v72 copy];
          [v74 addObject:v75];
        }

        v69 = [v67 countByEnumeratingWithState:&v95 objects:v106 count:16];
      }

      while (v69);
    }

    if (v82)
    {
      [v49 addLogMsgState:v82];
    }

    v28 = v91;
    v27 = v92;
    v21 = v80;
    v20 = v81;
    v24 = v79;
    if (v85)
    {
      [v49 addLogMsgState:v85];
    }

    v76 = +[GEOAPStateFactory sharedFactory];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __228__GEOAPPortal_captureCommuteWindowWithStartTime_duration_predictedExitTime_endReason_numberOfAlertingResponses_numberOfDoomRoutingRequests_predictedDestinations_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_35;
    v93[3] = &unk_1E7953A00;
    v94 = v49;
    v77 = v49;
    [v76 sessionStateForType:7 callback:v93];

    v26[2](v26);
    v18 = v88;
    v17 = v89;
    v19 = v84;
  }

  else
  {
    v26[2](v26);
  }

LABEL_10:

  v35 = *MEMORY[0x1E69E9840];
}

void __228__GEOAPPortal_captureCommuteWindowWithStartTime_duration_predictedExitTime_endReason_numberOfAlertingResponses_numberOfDoomRoutingRequests_predictedDestinations_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __228__GEOAPPortal_captureCommuteWindowWithStartTime_duration_predictedExitTime_endReason_numberOfAlertingResponses_numberOfDoomRoutingRequests_predictedDestinations_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_35(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureClientACSuggestionWithQuery:(id)a3 queryTokens:(id)a4 entries:(id)a5 selectedIndex:(id)a6 selectedSectionIndex:(id)a7 withinSectionSelectedIndex:(id)a8 isRetainedQuery:(id)a9 isRerankerTriggered:(id)a10 shouldDifferentiateClientAndServerResults:(id)a11 responseStatus:(int)a12 GEOModelMetadata_modelVersion:(id)a13 GEOModelMetadata_rolloutId:(id)a14 GEOModelMetadata_rolloutDeploymentId:(id)a15 GEOModelMetadata_rolloutFactorpackId:(id)a16 GEOModelMetadata_rolloutRampId:(id)a17 GEOExperimentMetadata_experimentId:(id)a18 GEOExperimentMetadata_deploymentId:(id)a19 GEOExperimentMetadata_treatmentId:(id)a20 GEOExperimentMetadata_experimentDescription:(id)a21 additionalStates:(id)a22 providedDropRate:(id)a23 completionQueue:(id)a24 completionBlock:(id)a25
{
  v222 = *MEMORY[0x1E69E9840];
  v196 = a3;
  v197 = a4;
  v30 = a5;
  v195 = a6;
  v31 = a7;
  v194 = a8;
  v32 = a9;
  v33 = a10;
  v34 = a11;
  v35 = a13;
  v36 = a14;
  v193 = a15;
  v192 = a16;
  v191 = a17;
  v190 = a18;
  v199 = a19;
  v189 = a20;
  v188 = a21;
  v187 = a22;
  v198 = a23;
  v37 = a24;
  v38 = a25;
  v214[0] = MEMORY[0x1E69E9820];
  v214[1] = 3221225472;
  v214[2] = __601__GEOAPPortal_captureClientACSuggestionWithQuery_queryTokens_entries_selectedIndex_selectedSectionIndex_withinSectionSelectedIndex_isRetainedQuery_isRerankerTriggered_shouldDifferentiateClientAndServerResults_responseStatus_GEOModelMetadata_modelVersion_GEOModelMetadata_rolloutId_GEOModelMetadata_rolloutDeploymentId_GEOModelMetadata_rolloutFactorpackId_GEOModelMetadata_rolloutRampId_GEOExperimentMetadata_experimentId_GEOExperimentMetadata_deploymentId_GEOExperimentMetadata_treatmentId_GEOExperimentMetadata_experimentDescription_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v214[3] = &unk_1E7959478;
  v186 = v38;
  v216 = v186;
  v185 = v37;
  v215 = v185;
  v39 = MEMORY[0x1AC5A12F0](v214);
  if (GEOConfigGetBOOL())
  {
    v39[2](v39);
LABEL_188:
    v43 = v199;
    goto LABEL_189;
  }

  v184 = v32;
  v40 = +[GEOAPServiceManager sharedManager];
  v41 = [v40 eventCollectionIsDisabledForCurrentProcess];

  if (v41)
  {
    v42 = GEOGetGEOAPPortalAnalyticsLog();
    v43 = v199;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v44 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v221 = v44;
      _os_log_impl(&dword_1AB634000, v42, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v39[2](v39);
    v32 = v184;
  }

  else
  {
    v43 = v199;
    v161 = v31;
    if (v198)
    {
      [v198 doubleValue];
    }

    else
    {
      GEOConfigGetDouble();
    }

    v32 = v184;
    if (v45 == 0.0 || v45 < arc4random() / 4294967300.0)
    {
      v175 = v35;
      v46 = +[GEOAPStateFactory sharedFactory];
      v176 = v34;
      v177 = v30;
      v158 = v33;
      v160 = v46;
      if ([v187 count])
      {
        v47 = v36;
        v48 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v187, "count")}];
        v210 = 0u;
        v211 = 0u;
        v212 = 0u;
        v213 = 0u;
        v49 = v187;
        v50 = [v49 countByEnumeratingWithState:&v210 objects:v219 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v211;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v211 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v210 + 1) + 8 * i);
              v55 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v54, "stateType")}];
              [v48 setObject:v54 forKeyedSubscript:v55];
            }

            v51 = [v49 countByEnumeratingWithState:&v210 objects:v219 count:16];
          }

          while (v51);
        }

        v56 = [v48 copy];
        v36 = v47;
        v46 = v160;
      }

      else
      {
        v56 = 0;
      }

      if (GEOConfigGetBOOL())
      {
        v57 = 0;
        v183 = 0;
      }

      else
      {
        v57 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 65)}];
        v183 = [v56 objectForKeyedSubscript:v57];
        if (!v183)
        {
          v183 = [v46 stateForType:65];
        }
      }

      if (GEOConfigGetBOOL())
      {
        v173 = 0;
      }

      else
      {
        v58 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 5)}];

        v59 = [v56 objectForKeyedSubscript:v58];
        if (!v59)
        {
          v59 = [v46 stateForType:5];
        }

        v173 = v59;
        v57 = v58;
      }

      if (GEOConfigGetBOOL())
      {
        v182 = 0;
      }

      else
      {
        v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 15)}];

        v182 = [v56 objectForKeyedSubscript:v60];
        if (!v182)
        {
          v182 = [v46 stateForType:15];
        }

        v57 = v60;
      }

      if (GEOConfigGetBOOL())
      {
        v172 = 0;
      }

      else
      {
        v61 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 35)}];

        v62 = [v56 objectForKeyedSubscript:v61];
        if (!v62)
        {
          v62 = [v46 stateForType:35];
        }

        v172 = v62;
        v57 = v61;
      }

      if (GEOConfigGetBOOL())
      {
        v171 = 0;
      }

      else
      {
        v63 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 30)}];

        v64 = [v56 objectForKeyedSubscript:v63];
        if (!v64)
        {
          v64 = [v46 stateForType:30];
        }

        v171 = v64;
        v57 = v63;
      }

      if (GEOConfigGetBOOL())
      {
        v170 = 0;
      }

      else
      {
        v65 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 1)}];

        v66 = [v56 objectForKeyedSubscript:v65];
        if (!v66)
        {
          v66 = [v46 stateForType:1];
        }

        v170 = v66;
        v57 = v65;
      }

      if (GEOConfigGetBOOL())
      {
        v169 = 0;
      }

      else
      {
        v67 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 3)}];

        v68 = [v56 objectForKeyedSubscript:v67];
        if (!v68)
        {
          v68 = [v46 stateForType:3];
        }

        v169 = v68;
        v57 = v67;
      }

      if (GEOConfigGetBOOL())
      {
        v168 = 0;
      }

      else
      {
        v69 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 64)}];

        v70 = [v56 objectForKeyedSubscript:v69];
        if (!v70)
        {
          v70 = [v46 stateForType:64];
        }

        v168 = v70;
        v57 = v69;
      }

      if (GEOConfigGetBOOL())
      {
        v167 = 0;
      }

      else
      {
        v71 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 13)}];

        v72 = [v56 objectForKeyedSubscript:v71];
        if (!v72)
        {
          v72 = [v46 stateForType:13];
        }

        v167 = v72;
        v57 = v71;
      }

      if (GEOConfigGetBOOL())
      {
        v166 = 0;
      }

      else
      {
        v73 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 14)}];

        v74 = [v56 objectForKeyedSubscript:v73];
        if (!v74)
        {
          v74 = [v46 stateForType:14];
        }

        v166 = v74;
        v57 = v73;
      }

      if (GEOConfigGetBOOL())
      {
        v165 = 0;
      }

      else
      {
        v75 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 9)}];

        v76 = [v56 objectForKeyedSubscript:v75];
        if (!v76)
        {
          v76 = [v46 stateForType:9];
        }

        v165 = v76;
        v57 = v75;
      }

      if (GEOConfigGetBOOL())
      {
        v164 = 0;
      }

      else
      {
        v77 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 10)}];

        v78 = [v56 objectForKeyedSubscript:v77];
        if (!v78)
        {
          v78 = [v46 stateForType:10];
        }

        v164 = v78;
        v57 = v77;
      }

      if (GEOConfigGetBOOL())
      {
        v181 = 0;
      }

      else
      {
        v79 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 20)}];

        v181 = [v56 objectForKeyedSubscript:v79];
        if (!v181)
        {
          v181 = [v46 stateForType:20];
        }

        v57 = v79;
      }

      if (GEOConfigGetBOOL())
      {
        v180 = 0;
      }

      else
      {
        v80 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 42)}];

        v180 = [v56 objectForKeyedSubscript:v80];
        if (!v180)
        {
          v180 = [v46 stateForType:42];
        }

        v57 = v80;
      }

      if (GEOConfigGetBOOL())
      {
        v159 = 0;
      }

      else
      {
        v81 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 70)}];

        v159 = [v56 objectForKeyedSubscript:v81];
        if (!v159)
        {
          v159 = [v46 stateForType:70];
        }

        v57 = v81;
      }

      if (GEOConfigGetBOOL())
      {
        v179 = 0;
      }

      else
      {
        v82 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 7)}];

        v179 = [v56 objectForKeyedSubscript:v82];
        if (!v179)
        {
          v179 = [v46 stateForType:7];
        }

        v57 = v82;
      }

      if (GEOConfigGetBOOL())
      {
        v178 = 0;
      }

      else
      {
        v83 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 17)}];

        v178 = [v56 objectForKeyedSubscript:v83];
        if (!v178)
        {
          v178 = [v46 stateForType:17];
        }

        v57 = v83;
      }

      if (GEOConfigGetBOOL())
      {
        v84 = 0;
      }

      else
      {
        v85 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 19)}];

        v84 = [v56 objectForKeyedSubscript:v85];
        if (!v84)
        {
          v84 = [v46 stateForType:19];
        }

        v57 = v85;
      }

      v163 = v84;
      v174 = v36;
      if (GEOConfigGetBOOL())
      {
        v162 = 0;
      }

      else
      {
        v86 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v46, "logMsgStateTypeForType:", 27)}];

        v87 = [v56 objectForKeyedSubscript:v86];
        if (!v87)
        {
          v87 = [v46 stateForType:27];
        }

        v162 = v87;
        v57 = v86;
      }

      v156 = v56;
      v88 = objc_alloc_init(MEMORY[0x1E69A1E90]);
      [v88 setEventType:25];
      v89 = objc_alloc_init(MEMORY[0x1E69A1EA0]);
      [v88 setClientAcSuggestions:v89];

      v90 = [v88 clientAcSuggestions];
      [v90 setQuery:v196];

      v91 = [v88 clientAcSuggestions];
      v92 = [v91 queryTokens];

      if (!v92)
      {
        v93 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v197, "count", v56)}];
        v94 = [v88 clientAcSuggestions];
        [v94 setQueryTokens:v93];
      }

      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v95 = v197;
      v96 = [v95 countByEnumeratingWithState:&v206 objects:v218 count:16];
      if (v96)
      {
        v97 = v96;
        v98 = *v207;
        do
        {
          for (j = 0; j != v97; ++j)
          {
            if (*v207 != v98)
            {
              objc_enumerationMutation(v95);
            }

            v100 = *(*(&v206 + 1) + 8 * j);
            v101 = [v88 clientAcSuggestions];
            v102 = [v101 queryTokens];
            v103 = [v100 copy];
            [v102 addObject:v103];
          }

          v97 = [v95 countByEnumeratingWithState:&v206 objects:v218 count:16];
        }

        while (v97);
      }

      v104 = [v88 clientAcSuggestions];
      v105 = [v104 entries];

      if (!v105)
      {
        v106 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v177, "count")}];
        v107 = [v88 clientAcSuggestions];
        [v107 setEntries:v106];
      }

      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v108 = v177;
      v109 = [v108 countByEnumeratingWithState:&v202 objects:v217 count:16];
      if (v109)
      {
        v110 = v109;
        v111 = *v203;
        do
        {
          for (k = 0; k != v110; ++k)
          {
            if (*v203 != v111)
            {
              objc_enumerationMutation(v108);
            }

            v113 = *(*(&v202 + 1) + 8 * k);
            v114 = [v88 clientAcSuggestions];
            v115 = [v114 entries];
            v116 = [v113 copy];
            [v115 addObject:v116];
          }

          v110 = [v108 countByEnumeratingWithState:&v202 objects:v217 count:16];
        }

        while (v110);
      }

      if (v195)
      {
        v117 = [v195 integerValue];
        v118 = [v88 clientAcSuggestions];
        [v118 setSelectedIndex:v117];
      }

      v32 = v184;
      v33 = v158;
      if (v161)
      {
        v119 = [v161 integerValue];
        v120 = [v88 clientAcSuggestions];
        [v120 setSelectedSectionIndex:v119];
      }

      if (v194)
      {
        v121 = [v194 integerValue];
        v122 = [v88 clientAcSuggestions];
        [v122 setWithinSectionSelectedIndex:v121];
      }

      v30 = v177;
      if (v184)
      {
        v123 = [v184 BOOLValue];
        v124 = [v88 clientAcSuggestions];
        [v124 setIsRetainedQuery:v123];
      }

      if (v158)
      {
        v125 = [v158 BOOLValue];
        v126 = [v88 clientAcSuggestions];
        [v126 setIsRerankerTriggered:v125];
      }

      if (v176)
      {
        v127 = [v176 BOOLValue];
        v128 = [v88 clientAcSuggestions];
        [v128 setShouldDifferentiateClientAndServerResults:v127];
      }

      v129 = [v88 clientAcSuggestions];
      [v129 setResponseStatus:a12];

      v130 = objc_alloc_init(MEMORY[0x1E69A2240]);
      v131 = [v88 clientAcSuggestions];
      [v131 setModelMetadata:v130];

      v132 = [v88 clientAcSuggestions];
      v133 = [v132 modelMetadata];
      [v133 setModelVersion:v175];

      v134 = [v88 clientAcSuggestions];
      v135 = [v134 modelMetadata];
      [v135 setRolloutId:v174];

      v136 = [v88 clientAcSuggestions];
      v137 = [v136 modelMetadata];
      [v137 setRolloutDeploymentId:v193];

      v138 = [v88 clientAcSuggestions];
      v139 = [v138 modelMetadata];
      [v139 setRolloutFactorpackId:v192];

      v140 = [v88 clientAcSuggestions];
      v141 = [v140 modelMetadata];
      [v141 setRolloutRampId:v191];

      v142 = objc_alloc_init(MEMORY[0x1E69A1D98]);
      v143 = [v88 clientAcSuggestions];
      [v143 setTrialExperimentMetadata:v142];

      v144 = [v88 clientAcSuggestions];
      v145 = [v144 trialExperimentMetadata];
      [v145 setExperimentId:v190];

      if (v199)
      {
        v146 = [v199 unsignedLongLongValue];
        v147 = [v88 clientAcSuggestions];
        v148 = [v147 trialExperimentMetadata];
        [v148 setDeploymentId:v146];

        v32 = v184;
      }

      v149 = [v88 clientAcSuggestions];
      v150 = [v149 trialExperimentMetadata];
      [v150 setTreatmentId:v189];

      v151 = [v88 clientAcSuggestions];
      v152 = [v151 trialExperimentMetadata];
      [v152 setExperimentDescription:v188];

      if (v179)
      {
        [v88 addLogMsgState:?];
      }

      if (v172)
      {
        [v88 addLogMsgState:?];
      }

      if (v173)
      {
        [v88 addLogMsgState:?];
      }

      if (v170)
      {
        [v88 addLogMsgState:?];
      }

      if (v169)
      {
        [v88 addLogMsgState:?];
      }

      if (v171)
      {
        [v88 addLogMsgState:?];
      }

      if (v183)
      {
        [v88 addLogMsgState:v183];
      }

      if (v181)
      {
        [v88 addLogMsgState:?];
      }

      if (v167)
      {
        [v88 addLogMsgState:?];
      }

      if (v166)
      {
        [v88 addLogMsgState:?];
      }

      if (v165)
      {
        [v88 addLogMsgState:?];
      }

      if (v164)
      {
        [v88 addLogMsgState:?];
      }

      if (v168)
      {
        [v88 addLogMsgState:?];
      }

      if (v182)
      {
        [v88 addLogMsgState:v182];
      }

      if (v178)
      {
        [v88 addLogMsgState:?];
      }

      if (v163)
      {
        [v88 addLogMsgState:v163];
      }

      if (v162)
      {
        [v88 addLogMsgState:?];
      }

      if (v180)
      {
        [v88 addLogMsgState:v180];
      }

      if (v159)
      {
        [v88 addLogMsgState:v159];
      }

      v153 = +[GEOAPStateFactory sharedFactory];
      v200[0] = MEMORY[0x1E69E9820];
      v200[1] = 3221225472;
      v200[2] = __601__GEOAPPortal_captureClientACSuggestionWithQuery_queryTokens_entries_selectedIndex_selectedSectionIndex_withinSectionSelectedIndex_isRetainedQuery_isRerankerTriggered_shouldDifferentiateClientAndServerResults_responseStatus_GEOModelMetadata_modelVersion_GEOModelMetadata_rolloutId_GEOModelMetadata_rolloutDeploymentId_GEOModelMetadata_rolloutFactorpackId_GEOModelMetadata_rolloutRampId_GEOExperimentMetadata_experimentId_GEOExperimentMetadata_deploymentId_GEOExperimentMetadata_treatmentId_GEOExperimentMetadata_experimentDescription_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_33;
      v200[3] = &unk_1E7953A00;
      v154 = v88;
      v201 = v154;
      [v153 sessionStateForType:6 callback:v200];

      v39[2](v39);
      v31 = v161;
      v35 = v175;
      v34 = v176;
      v36 = v174;
      goto LABEL_188;
    }

    v39[2](v39);
  }

LABEL_189:

  v155 = *MEMORY[0x1E69E9840];
}

void __601__GEOAPPortal_captureClientACSuggestionWithQuery_queryTokens_entries_selectedIndex_selectedSectionIndex_withinSectionSelectedIndex_isRetainedQuery_isRerankerTriggered_shouldDifferentiateClientAndServerResults_responseStatus_GEOModelMetadata_modelVersion_GEOModelMetadata_rolloutId_GEOModelMetadata_rolloutDeploymentId_GEOModelMetadata_rolloutFactorpackId_GEOModelMetadata_rolloutRampId_GEOExperimentMetadata_experimentId_GEOExperimentMetadata_deploymentId_GEOExperimentMetadata_treatmentId_GEOExperimentMetadata_experimentDescription_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __601__GEOAPPortal_captureClientACSuggestionWithQuery_queryTokens_entries_selectedIndex_selectedSectionIndex_withinSectionSelectedIndex_isRetainedQuery_isRerankerTriggered_shouldDifferentiateClientAndServerResults_responseStatus_GEOModelMetadata_modelVersion_GEOModelMetadata_rolloutId_GEOModelMetadata_rolloutDeploymentId_GEOModelMetadata_rolloutFactorpackId_GEOModelMetadata_rolloutRampId_GEOExperimentMetadata_experimentId_GEOExperimentMetadata_deploymentId_GEOExperimentMetadata_treatmentId_GEOExperimentMetadata_experimentDescription_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_33(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureClientACResponseWithQuery:(id)a3 queryTokens:(id)a4 entries:(id)a5 shouldDifferentiateClientAndServerResults:(id)a6 overallLatencyInMs:(id)a7 isRerankerTriggered:(id)a8 isRetainedQuery:(id)a9 additionalStates:(id)a10 providedDropRate:(id)a11 completionQueue:(id)a12 completionBlock:(id)a13
{
  v171 = *MEMORY[0x1E69E9840];
  v147 = a3;
  v18 = a4;
  v148 = a5;
  v19 = a6;
  v146 = a7;
  v145 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v163[0] = MEMORY[0x1E69E9820];
  v163[1] = 3221225472;
  v163[2] = __231__GEOAPPortal_captureClientACResponseWithQuery_queryTokens_entries_shouldDifferentiateClientAndServerResults_overallLatencyInMs_isRerankerTriggered_isRetainedQuery_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v163[3] = &unk_1E7959478;
  v25 = v24;
  v165 = v25;
  v144 = v23;
  v164 = v144;
  v26 = MEMORY[0x1AC5A12F0](v163);
  if (GEOConfigGetBOOL())
  {
    v26[2](v26);
    v28 = v145;
    v27 = v146;
  }

  else
  {
    v143 = v19;
    v29 = +[GEOAPServiceManager sharedManager];
    v30 = [v29 eventCollectionIsDisabledForCurrentProcess];

    if (v30)
    {
      v31 = GEOGetGEOAPPortalAnalyticsLog();
      v28 = v145;
      v27 = v146;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v170 = v32;
        _os_log_impl(&dword_1AB634000, v31, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v26[2](v26);
      v19 = v143;
    }

    else
    {
      v28 = v145;
      v27 = v146;
      if (v22)
      {
        [v22 doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      v19 = v143;
      if (v33 == 0.0 || v33 < arc4random() / 4294967300.0)
      {
        v142 = v18;
        v34 = +[GEOAPStateFactory sharedFactory];
        v120 = v21;
        v121 = v20;
        v123 = v34;
        v118 = v25;
        if ([v21 count])
        {
          v35 = v22;
          v36 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v21, "count")}];
          v159 = 0u;
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          v37 = v21;
          v38 = [v37 countByEnumeratingWithState:&v159 objects:v168 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v160;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v160 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v159 + 1) + 8 * i);
                v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v42, "stateType")}];
                [v36 setObject:v42 forKeyedSubscript:v43];
              }

              v39 = [v37 countByEnumeratingWithState:&v159 objects:v168 count:16];
            }

            while (v39);
          }

          v44 = [v36 copy];
          v22 = v35;
          v34 = v123;
        }

        else
        {
          v44 = 0;
        }

        if (GEOConfigGetBOOL())
        {
          v45 = 0;
          v46 = 0;
        }

        else
        {
          v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 65)}];
          v47 = [v44 objectForKeyedSubscript:v45];
          if (!v47)
          {
            v47 = [v34 stateForType:65];
          }

          v46 = v47;
        }

        if (GEOConfigGetBOOL())
        {
          v133 = 0;
        }

        else
        {
          v48 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 5)}];

          v49 = [v44 objectForKeyedSubscript:v48];
          if (!v49)
          {
            v49 = [v34 stateForType:5];
          }

          v133 = v49;
          v45 = v48;
        }

        if (GEOConfigGetBOOL())
        {
          v141 = 0;
        }

        else
        {
          v50 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 15)}];

          v141 = [v44 objectForKeyedSubscript:v50];
          if (!v141)
          {
            v141 = [v34 stateForType:15];
          }

          v45 = v50;
        }

        if (GEOConfigGetBOOL())
        {
          v132 = 0;
        }

        else
        {
          v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 35)}];

          v52 = [v44 objectForKeyedSubscript:v51];
          if (!v52)
          {
            v52 = [v34 stateForType:35];
          }

          v132 = v52;
          v45 = v51;
        }

        if (GEOConfigGetBOOL())
        {
          v131 = 0;
        }

        else
        {
          v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 30)}];

          v54 = [v44 objectForKeyedSubscript:v53];
          if (!v54)
          {
            v54 = [v34 stateForType:30];
          }

          v131 = v54;
          v45 = v53;
        }

        if (GEOConfigGetBOOL())
        {
          v130 = 0;
        }

        else
        {
          v55 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 1)}];

          v56 = [v44 objectForKeyedSubscript:v55];
          if (!v56)
          {
            v56 = [v34 stateForType:1];
          }

          v130 = v56;
          v45 = v55;
        }

        if (GEOConfigGetBOOL())
        {
          v129 = 0;
        }

        else
        {
          v57 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 3)}];

          v58 = [v44 objectForKeyedSubscript:v57];
          if (!v58)
          {
            v58 = [v34 stateForType:3];
          }

          v129 = v58;
          v45 = v57;
        }

        if (GEOConfigGetBOOL())
        {
          v128 = 0;
        }

        else
        {
          v59 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 64)}];

          v60 = [v44 objectForKeyedSubscript:v59];
          if (!v60)
          {
            v60 = [v34 stateForType:64];
          }

          v128 = v60;
          v45 = v59;
        }

        if (GEOConfigGetBOOL())
        {
          v127 = 0;
        }

        else
        {
          v61 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 13)}];

          v62 = [v44 objectForKeyedSubscript:v61];
          if (!v62)
          {
            v62 = [v34 stateForType:13];
          }

          v127 = v62;
          v45 = v61;
        }

        if (GEOConfigGetBOOL())
        {
          v126 = 0;
        }

        else
        {
          v63 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 14)}];

          v64 = [v44 objectForKeyedSubscript:v63];
          if (!v64)
          {
            v64 = [v34 stateForType:14];
          }

          v126 = v64;
          v45 = v63;
        }

        if (GEOConfigGetBOOL())
        {
          v125 = 0;
        }

        else
        {
          v65 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 9)}];

          v66 = [v44 objectForKeyedSubscript:v65];
          if (!v66)
          {
            v66 = [v34 stateForType:9];
          }

          v125 = v66;
          v45 = v65;
        }

        if (GEOConfigGetBOOL())
        {
          v124 = 0;
        }

        else
        {
          v67 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 10)}];

          v68 = [v44 objectForKeyedSubscript:v67];
          if (!v68)
          {
            v68 = [v34 stateForType:10];
          }

          v124 = v68;
          v45 = v67;
        }

        if (GEOConfigGetBOOL())
        {
          v140 = 0;
        }

        else
        {
          v69 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 20)}];

          v140 = [v44 objectForKeyedSubscript:v69];
          if (!v140)
          {
            v140 = [v34 stateForType:20];
          }

          v45 = v69;
        }

        if (GEOConfigGetBOOL())
        {
          v139 = 0;
        }

        else
        {
          v70 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 42)}];

          v139 = [v44 objectForKeyedSubscript:v70];
          if (!v139)
          {
            v139 = [v34 stateForType:42];
          }

          v45 = v70;
        }

        if (GEOConfigGetBOOL())
        {
          v122 = 0;
        }

        else
        {
          v71 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 70)}];

          v122 = [v44 objectForKeyedSubscript:v71];
          if (!v122)
          {
            v122 = [v34 stateForType:70];
          }

          v45 = v71;
        }

        if (GEOConfigGetBOOL())
        {
          v138 = 0;
        }

        else
        {
          v72 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 7)}];

          v138 = [v44 objectForKeyedSubscript:v72];
          if (!v138)
          {
            v138 = [v34 stateForType:7];
          }

          v45 = v72;
        }

        if (GEOConfigGetBOOL())
        {
          v137 = 0;
        }

        else
        {
          v73 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 17)}];

          v137 = [v44 objectForKeyedSubscript:v73];
          if (!v137)
          {
            v137 = [v34 stateForType:17];
          }

          v45 = v73;
        }

        if (GEOConfigGetBOOL())
        {
          v136 = 0;
        }

        else
        {
          v74 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 19)}];

          v136 = [v44 objectForKeyedSubscript:v74];
          if (!v136)
          {
            v136 = [v34 stateForType:19];
          }

          v45 = v74;
        }

        v119 = v22;
        if (GEOConfigGetBOOL())
        {
          v135 = 0;
        }

        else
        {
          v75 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v34, "logMsgStateTypeForType:", 27)}];

          v135 = [v44 objectForKeyedSubscript:v75];
          if (!v135)
          {
            v135 = [v34 stateForType:27];
          }

          v45 = v75;
        }

        v134 = v46;
        v117 = v44;
        v76 = objc_alloc_init(MEMORY[0x1E69A1E90]);
        [v76 setEventType:25];
        v77 = objc_alloc_init(MEMORY[0x1E69A1EA0]);
        [v76 setClientAcSuggestions:v77];

        v78 = [v76 clientAcSuggestions];
        [v78 setQuery:v147];

        v79 = [v76 clientAcSuggestions];
        v80 = [v79 queryTokens];

        if (!v80)
        {
          v81 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v142, "count")}];
          v82 = [v76 clientAcSuggestions];
          [v82 setQueryTokens:v81];
        }

        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v83 = v142;
        v84 = [v83 countByEnumeratingWithState:&v155 objects:v167 count:16];
        if (v84)
        {
          v85 = v84;
          v86 = *v156;
          do
          {
            for (j = 0; j != v85; ++j)
            {
              if (*v156 != v86)
              {
                objc_enumerationMutation(v83);
              }

              v88 = *(*(&v155 + 1) + 8 * j);
              v89 = [v76 clientAcSuggestions];
              v90 = [v89 queryTokens];
              v91 = [v88 copy];
              [v90 addObject:v91];
            }

            v85 = [v83 countByEnumeratingWithState:&v155 objects:v167 count:16];
          }

          while (v85);
        }

        v92 = [v76 clientAcSuggestions];
        v93 = [v92 entries];

        if (!v93)
        {
          v94 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v148, "count")}];
          v95 = [v76 clientAcSuggestions];
          [v95 setEntries:v94];
        }

        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v96 = v148;
        v97 = [v96 countByEnumeratingWithState:&v151 objects:v166 count:16];
        if (v97)
        {
          v98 = v97;
          v99 = *v152;
          do
          {
            for (k = 0; k != v98; ++k)
            {
              if (*v152 != v99)
              {
                objc_enumerationMutation(v96);
              }

              v101 = *(*(&v151 + 1) + 8 * k);
              v102 = [v76 clientAcSuggestions];
              v103 = [v102 entries];
              v104 = [v101 copy];
              [v103 addObject:v104];
            }

            v98 = [v96 countByEnumeratingWithState:&v151 objects:v166 count:16];
          }

          while (v98);
        }

        if (v143)
        {
          v105 = [v143 BOOLValue];
          v106 = [v76 clientAcSuggestions];
          [v106 setShouldDifferentiateClientAndServerResults:v105];
        }

        v28 = v145;
        v27 = v146;
        v21 = v120;
        v20 = v121;
        if (v146)
        {
          v107 = [v146 integerValue];
          v108 = [v76 clientAcSuggestions];
          [v108 setOverallLatencyInMs:v107];
        }

        if (v145)
        {
          v109 = [v145 BOOLValue];
          v110 = [v76 clientAcSuggestions];
          [v110 setIsRerankerTriggered:v109];
        }

        if (v121)
        {
          v111 = [v121 BOOLValue];
          v112 = [v76 clientAcSuggestions];
          [v112 setIsRetainedQuery:v111];
        }

        v113 = [v76 clientAcSuggestions];
        [v113 setTrigger:2];

        if (v138)
        {
          [v76 addLogMsgState:?];
        }

        if (v132)
        {
          [v76 addLogMsgState:?];
        }

        if (v133)
        {
          [v76 addLogMsgState:?];
        }

        if (v130)
        {
          [v76 addLogMsgState:?];
        }

        if (v129)
        {
          [v76 addLogMsgState:?];
        }

        if (v131)
        {
          [v76 addLogMsgState:?];
        }

        if (v134)
        {
          [v76 addLogMsgState:v134];
        }

        if (v140)
        {
          [v76 addLogMsgState:?];
        }

        if (v127)
        {
          [v76 addLogMsgState:?];
        }

        if (v126)
        {
          [v76 addLogMsgState:?];
        }

        if (v125)
        {
          [v76 addLogMsgState:?];
        }

        if (v124)
        {
          [v76 addLogMsgState:?];
        }

        if (v128)
        {
          [v76 addLogMsgState:?];
        }

        if (v141)
        {
          [v76 addLogMsgState:v141];
        }

        if (v137)
        {
          [v76 addLogMsgState:?];
        }

        if (v136)
        {
          [v76 addLogMsgState:v136];
        }

        if (v135)
        {
          [v76 addLogMsgState:?];
        }

        if (v139)
        {
          [v76 addLogMsgState:v139];
        }

        if (v122)
        {
          [v76 addLogMsgState:v122];
        }

        v114 = +[GEOAPStateFactory sharedFactory];
        v149[0] = MEMORY[0x1E69E9820];
        v149[1] = 3221225472;
        v149[2] = __231__GEOAPPortal_captureClientACResponseWithQuery_queryTokens_entries_shouldDifferentiateClientAndServerResults_overallLatencyInMs_isRerankerTriggered_isRetainedQuery_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_30;
        v149[3] = &unk_1E7953A00;
        v115 = v76;
        v150 = v115;
        [v114 sessionStateForType:6 callback:v149];

        v26[2](v26);
        v18 = v142;
        v19 = v143;
        v25 = v118;
        v22 = v119;
      }

      else
      {
        v26[2](v26);
      }
    }
  }

  v116 = *MEMORY[0x1E69E9840];
}

void __231__GEOAPPortal_captureClientACResponseWithQuery_queryTokens_entries_shouldDifferentiateClientAndServerResults_overallLatencyInMs_isRerankerTriggered_isRetainedQuery_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __231__GEOAPPortal_captureClientACResponseWithQuery_queryTokens_entries_shouldDifferentiateClientAndServerResults_overallLatencyInMs_isRerankerTriggered_isRetainedQuery_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureClientACKeypressWithQuery:(id)a3 queryTokens:(id)a4 entries:(id)a5 keypressStatus:(int)a6 additionalStates:(id)a7 providedDropRate:(id)a8 completionQueue:(id)a9 completionBlock:(id)a10
{
  v157 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v149[0] = MEMORY[0x1E69E9820];
  v149[1] = 3221225472;
  v149[2] = __149__GEOAPPortal_captureClientACKeypressWithQuery_queryTokens_entries_keypressStatus_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v149[3] = &unk_1E7959478;
  v21 = v20;
  v151 = v21;
  v22 = v19;
  v150 = v22;
  v23 = MEMORY[0x1AC5A12F0](v149);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v24 = +[GEOAPServiceManager sharedManager];
  v25 = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (v25)
  {
    v26 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v156 = v27;
      _os_log_impl(&dword_1AB634000, v26, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v18)
  {
    [v18 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v28 != 0.0 && v28 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v23[2](v23);
    goto LABEL_21;
  }

  v126 = +[GEOAPStateFactory sharedFactory];
  v127 = v16;
  v107 = v22;
  v108 = v21;
  v112 = v15;
  v113 = v14;
  v109 = v18;
  if ([v17 count])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v30 = v17;
    v31 = v17;
    v32 = [v31 countByEnumeratingWithState:&v145 objects:v154 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v146;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v146 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v145 + 1) + 8 * i);
          v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v36, "stateType")}];
          [v29 setObject:v36 forKeyedSubscript:v37];
        }

        v33 = [v31 countByEnumeratingWithState:&v145 objects:v154 count:16];
      }

      while (v33);
    }

    v38 = [v29 copy];
    v14 = v113;
    v17 = v30;
  }

  else
  {
    v38 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v40 = 0;
    v133 = 0;
  }

  else
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 65)}];
    v133 = [v38 objectForKeyedSubscript:v40];
    if (!v133)
    {
      v133 = [v126 stateForType:65];
    }
  }

  if (GEOConfigGetBOOL())
  {
    v132 = 0;
  }

  else
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 5)}];

    v132 = [v38 objectForKeyedSubscript:v41];
    if (!v132)
    {
      v132 = [v126 stateForType:5];
    }

    v40 = v41;
  }

  if (GEOConfigGetBOOL())
  {
    v131 = 0;
  }

  else
  {
    v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 15)}];

    v131 = [v38 objectForKeyedSubscript:v42];
    if (!v131)
    {
      v131 = [v126 stateForType:15];
    }

    v40 = v42;
  }

  if (GEOConfigGetBOOL())
  {
    v125 = 0;
  }

  else
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 35)}];

    v44 = [v38 objectForKeyedSubscript:v43];
    if (!v44)
    {
      v44 = [v126 stateForType:35];
    }

    v125 = v44;
    v40 = v43;
  }

  if (GEOConfigGetBOOL())
  {
    v124 = 0;
  }

  else
  {
    v45 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 30)}];

    v46 = [v38 objectForKeyedSubscript:v45];
    if (!v46)
    {
      v46 = [v126 stateForType:30];
    }

    v124 = v46;
    v40 = v45;
  }

  if (GEOConfigGetBOOL())
  {
    v130 = 0;
  }

  else
  {
    v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 1)}];

    v130 = [v38 objectForKeyedSubscript:v47];
    if (!v130)
    {
      v130 = [v126 stateForType:1];
    }

    v40 = v47;
  }

  if (GEOConfigGetBOOL())
  {
    v123 = 0;
  }

  else
  {
    v48 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 3)}];

    v49 = [v38 objectForKeyedSubscript:v48];
    if (!v49)
    {
      v49 = [v126 stateForType:3];
    }

    v123 = v49;
    v40 = v48;
  }

  if (GEOConfigGetBOOL())
  {
    v122 = 0;
  }

  else
  {
    v50 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 64)}];

    v51 = [v38 objectForKeyedSubscript:v50];
    if (!v51)
    {
      v51 = [v126 stateForType:64];
    }

    v122 = v51;
    v40 = v50;
  }

  if (GEOConfigGetBOOL())
  {
    v121 = 0;
  }

  else
  {
    v52 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 13)}];

    v53 = [v38 objectForKeyedSubscript:v52];
    if (!v53)
    {
      v53 = [v126 stateForType:13];
    }

    v121 = v53;
    v40 = v52;
  }

  if (GEOConfigGetBOOL())
  {
    v120 = 0;
  }

  else
  {
    v54 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 14)}];

    v55 = [v38 objectForKeyedSubscript:v54];
    if (!v55)
    {
      v55 = [v126 stateForType:14];
    }

    v120 = v55;
    v40 = v54;
  }

  if (GEOConfigGetBOOL())
  {
    v119 = 0;
  }

  else
  {
    v56 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 9)}];

    v57 = [v38 objectForKeyedSubscript:v56];
    if (!v57)
    {
      v57 = [v126 stateForType:9];
    }

    v119 = v57;
    v40 = v56;
  }

  if (GEOConfigGetBOOL())
  {
    v118 = 0;
  }

  else
  {
    v58 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 10)}];

    v59 = [v38 objectForKeyedSubscript:v58];
    if (!v59)
    {
      v59 = [v126 stateForType:10];
    }

    v118 = v59;
    v40 = v58;
  }

  if (GEOConfigGetBOOL())
  {
    v117 = 0;
  }

  else
  {
    v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 20)}];

    v61 = [v38 objectForKeyedSubscript:v60];
    if (!v61)
    {
      v61 = [v126 stateForType:20];
    }

    v117 = v61;
    v40 = v60;
  }

  if (GEOConfigGetBOOL())
  {
    v129 = 0;
  }

  else
  {
    v62 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 42)}];

    v129 = [v38 objectForKeyedSubscript:v62];
    if (!v129)
    {
      v129 = [v126 stateForType:42];
    }

    v40 = v62;
  }

  if (GEOConfigGetBOOL())
  {
    v111 = 0;
  }

  else
  {
    v63 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 70)}];

    v111 = [v38 objectForKeyedSubscript:v63];
    if (!v111)
    {
      v111 = [v126 stateForType:70];
    }

    v40 = v63;
  }

  if (GEOConfigGetBOOL())
  {
    v64 = 0;
  }

  else
  {
    v65 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 7)}];

    v66 = [v38 objectForKeyedSubscript:v65];
    if (!v66)
    {
      v66 = [v126 stateForType:7];
    }

    v64 = v66;
    v40 = v65;
  }

  if (GEOConfigGetBOOL())
  {
    v128 = 0;
  }

  else
  {
    v67 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 17)}];

    v128 = [v38 objectForKeyedSubscript:v67];
    if (!v128)
    {
      v128 = [v126 stateForType:17];
    }

    v40 = v67;
  }

  if (GEOConfigGetBOOL())
  {
    v115 = 0;
  }

  else
  {
    v68 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 19)}];

    v69 = [v38 objectForKeyedSubscript:v68];
    if (!v69)
    {
      v69 = [v126 stateForType:19];
    }

    v115 = v69;
    v40 = v68;
  }

  v110 = v17;
  if (GEOConfigGetBOOL())
  {
    v114 = 0;
  }

  else
  {
    v70 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v126, "logMsgStateTypeForType:", 27)}];

    v71 = [v38 objectForKeyedSubscript:v70];
    if (!v71)
    {
      v71 = [v126 stateForType:27];
    }

    v114 = v71;
    v40 = v70;
  }

  v116 = v64;
  v105 = v38;
  v72 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v72 setEventType:25];
  v73 = objc_alloc_init(MEMORY[0x1E69A1EA0]);
  [v72 setClientAcSuggestions:v73];

  v74 = [v72 clientAcSuggestions];
  [v74 setQuery:v14];

  v75 = [v72 clientAcSuggestions];
  v76 = [v75 queryTokens];

  if (!v76)
  {
    v77 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count", v38)}];
    v78 = [v72 clientAcSuggestions];
    [v78 setQueryTokens:v77];
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v79 = v15;
  v80 = [v79 countByEnumeratingWithState:&v141 objects:v153 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v142;
    do
    {
      for (j = 0; j != v81; ++j)
      {
        if (*v142 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v84 = *(*(&v141 + 1) + 8 * j);
        v85 = [v72 clientAcSuggestions];
        v86 = [v85 queryTokens];
        v87 = [v84 copy];
        [v86 addObject:v87];
      }

      v81 = [v79 countByEnumeratingWithState:&v141 objects:v153 count:16];
    }

    while (v81);
  }

  v88 = [v72 clientAcSuggestions];
  v89 = [v88 entries];

  if (!v89)
  {
    v90 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v127, "count")}];
    v91 = [v72 clientAcSuggestions];
    [v91 setEntries:v90];
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v92 = v127;
  v93 = [v92 countByEnumeratingWithState:&v137 objects:v152 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = *v138;
    do
    {
      for (k = 0; k != v94; ++k)
      {
        if (*v138 != v95)
        {
          objc_enumerationMutation(v92);
        }

        v97 = *(*(&v137 + 1) + 8 * k);
        v98 = [v72 clientAcSuggestions];
        v99 = [v98 entries];
        v100 = [v97 copy];
        [v99 addObject:v100];
      }

      v94 = [v92 countByEnumeratingWithState:&v137 objects:v152 count:16];
    }

    while (v94);
  }

  v101 = [v72 clientAcSuggestions];
  [v101 setKeypressStatus:a6];

  v102 = [v72 clientAcSuggestions];
  [v102 setTrigger:1];

  if (v116)
  {
    [v72 addLogMsgState:?];
  }

  v15 = v112;
  v14 = v113;
  v16 = v127;
  v22 = v107;
  v21 = v108;
  if (v125)
  {
    [v72 addLogMsgState:?];
  }

  if (v132)
  {
    [v72 addLogMsgState:v132];
  }

  if (v130)
  {
    [v72 addLogMsgState:?];
  }

  if (v123)
  {
    [v72 addLogMsgState:?];
  }

  if (v124)
  {
    [v72 addLogMsgState:?];
  }

  if (v133)
  {
    [v72 addLogMsgState:v133];
  }

  if (v117)
  {
    [v72 addLogMsgState:?];
  }

  if (v121)
  {
    [v72 addLogMsgState:?];
  }

  if (v120)
  {
    [v72 addLogMsgState:?];
  }

  if (v119)
  {
    [v72 addLogMsgState:?];
  }

  if (v118)
  {
    [v72 addLogMsgState:?];
  }

  if (v122)
  {
    [v72 addLogMsgState:?];
  }

  if (v131)
  {
    [v72 addLogMsgState:v131];
  }

  if (v128)
  {
    [v72 addLogMsgState:?];
  }

  if (v115)
  {
    [v72 addLogMsgState:?];
  }

  if (v114)
  {
    [v72 addLogMsgState:?];
  }

  if (v129)
  {
    [v72 addLogMsgState:v129];
  }

  if (v111)
  {
    [v72 addLogMsgState:v111];
  }

  v103 = +[GEOAPStateFactory sharedFactory];
  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = __149__GEOAPPortal_captureClientACKeypressWithQuery_queryTokens_entries_keypressStatus_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_29;
  v135[3] = &unk_1E7953A00;
  v104 = v72;
  v136 = v104;
  [v103 sessionStateForType:6 callback:v135];

  v23[2](v23);
  v18 = v109;
  v17 = v110;
LABEL_21:

  v39 = *MEMORY[0x1E69E9840];
}

void __149__GEOAPPortal_captureClientACKeypressWithQuery_queryTokens_entries_keypressStatus_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __149__GEOAPPortal_captureClientACKeypressWithQuery_queryTokens_entries_keypressStatus_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_29(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)captureBatchTrafficWithLocationCollection:(id)a3 additionalStates:(id)a4 providedDropRate:(id)a5 completionQueue:(id)a6 completionBlock:(id)a7
{
  v59 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __123__GEOAPPortal_captureBatchTrafficWithLocationCollection_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v53[3] = &unk_1E7959478;
  v16 = v15;
  v55 = v16;
  v17 = v14;
  v54 = v17;
  v18 = MEMORY[0x1AC5A12F0](v53);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  v20 = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (v20)
  {
    v21 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v58 = v22;
      _os_log_impl(&dword_1AB634000, v21, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v13)
  {
    [v13 doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  if (v23 != 0.0 && v23 >= arc4random() / 4294967300.0)
  {
LABEL_20:
    v18[2](v18);
    goto LABEL_21;
  }

  v46 = v11;
  v45 = +[GEOAPStateFactory sharedFactory];
  v44 = v12;
  if ([v12 count])
  {
    v42 = v16;
    v43 = v13;
    v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v25 = v12;
    v26 = [v25 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v50;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v50 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v49 + 1) + 8 * i);
          v31 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v30, "stateType", v42, v43)}];
          [v24 setObject:v30 forKeyedSubscript:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v27);
    }

    v32 = [v24 copy];
    v16 = v42;
    v13 = v43;
  }

  else
  {
    v32 = 0;
  }

  if (GEOConfigGetBOOL())
  {
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v34 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v45, "logMsgStateTypeForType:", 1)}];
    v36 = [v32 objectForKeyedSubscript:v34];
    if (!v36)
    {
      v36 = [v45 stateForType:1];
    }

    v35 = v36;
  }

  v12 = v44;
  v37 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v37 setEventType:27];
  v38 = objc_alloc_init(MEMORY[0x1E69A1E98]);
  [v37 setBatchTrafficProbeCollection:v38];

  v39 = [v37 batchTrafficProbeCollection];
  [v39 setLocationCollection:v46];

  if (v35)
  {
    [v37 addLogMsgState:v35];
  }

  v40 = [GEOAPStateFactory sharedFactory:v42];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __123__GEOAPPortal_captureBatchTrafficWithLocationCollection_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_24;
  v47[3] = &unk_1E7953A00;
  v48 = v37;
  v41 = v37;
  [v40 sessionStateForType:11 callback:v47];

  v18[2](v18);
  v11 = v46;
LABEL_21:

  v33 = *MEMORY[0x1E69E9840];
}

void __123__GEOAPPortal_captureBatchTrafficWithLocationCollection_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
      v1 = *(a1 + 40);
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
    }

    v5 = v4;
    dispatch_async(v4, v1);
  }
}

uint64_t __123__GEOAPPortal_captureBatchTrafficWithLocationCollection_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  GEOConfigGetUint64();
  v3 = GEOMakeGEOAPBatchID();
  v4 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v4 uploadBatchId:v3 completion:0 completionQueue:0];
}

+ (void)populateCommonEventValues:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A2398] sharedPlatform];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [MEMORY[0x1E69A2478] modernManager];
    v7 = [v6 activeTileGroup];
    v8 = [v7 environment];
    [v3 setMapsEnvironment:v8];

    if ((GEOConfigGetBOOL() & 1) == 0 && !GEOConfigGetBOOL())
    {
      goto LABEL_13;
    }
  }

  else if ((GEOConfigGetBOOL() & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = 0;
  v13 = 0;
  v9 = objc_alloc_init(MEMORY[0x1E69A1EF8]);
  v10 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  if (v5)
  {
    if (GEOConfigGetBOOL())
    {
      if (populateCommonEventValues__onceToken != -1)
      {
        dispatch_once(&populateCommonEventValues__onceToken, &__block_literal_global_14);
      }

      v11 = populateCommonEventValues__fixedUUID;

      [v9 setDeanonymizeId:GEOConfigGetUInteger()];
      v10 = v11;
    }

    [v9 setIsPaidAccount:{objc_msgSend(MEMORY[0x1E69A26F8], "isPaidAccount", v12)}];
  }

  [v10 getUUIDBytes:&v12];
  [v9 setHigh:v12];
  [v9 setLow:v13];
  [v3 setAnalyticTag:v9];

LABEL_13:
}

void __41__GEOAPPortal_populateCommonEventValues___block_invoke()
{
  v4 = GEOConfigGetBytes();
  if (v4)
  {
    v0 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
    v1 = populateCommonEventValues__fixedUUID;
    populateCommonEventValues__fixedUUID = v0;
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v3 = populateCommonEventValues__fixedUUID;
    populateCommonEventValues__fixedUUID = v2;

    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:populateCommonEventValues__fixedUUID requiringSecureCoding:1 error:0];
    GEOConfigSetBytes();
  }
}

+ (id)_netEventHandlingConfig
{
  if (_netEventHandlingConfig_onceToken != -1)
  {
    dispatch_once(&_netEventHandlingConfig_onceToken, &__block_literal_global_737);
  }

  v3 = _netEventHandlingConfig__config;

  return v3;
}

void __52__GEOAPPortal_NetworkEvent___netEventHandlingConfig__block_invoke()
{
  v87[3] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&Maps, *MEMORY[0x1E69A1A78]);
  v0 = GEOConfigGetDictionary();
  v1 = _netEventHandlingConfig__config;
  _netEventHandlingConfig__config = v0;

  if (!_netEventHandlingConfig__config)
  {
    v86[0] = Maps;
    v84[0] = @"TILE";
    v80 = @"dropRate";
    v81 = &unk_1F2056750;
    v82[0] = @"error";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v82[1] = @"success";
    v83[0] = v31;
    v78 = @"dropRate";
    v79 = &unk_1F2056750;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v83[1] = v30;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
    v84[1] = @"any";
    v85[0] = v29;
    v76[0] = @"error";
    v74 = @"dropRate";
    v75 = &unk_1F2056760;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v77[0] = v28;
    v76[1] = @"success";
    v72 = @"dropRate";
    v73 = &unk_1F2056760;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v77[1] = v27;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];
    v85[1] = v26;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:2];
    v87[0] = v25;
    v86[1] = @"com.apple.geod";
    v70[0] = @"RESOURCE_LOADER";
    v68[0] = @"error";
    v66 = @"dropRate";
    v67 = &unk_1F2056760;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v69[0] = v24;
    v68[1] = @"success";
    v64 = @"dropRate";
    v65 = &unk_1F2056760;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v69[1] = v23;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:2];
    v71[0] = v22;
    v70[1] = @"NETWORK_DEFAULTS";
    v61 = &unk_1F2056750;
    v62[0] = @"error";
    v60 = @"dropRate";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v62[1] = @"success";
    v63[0] = v21;
    v58 = @"dropRate";
    v59 = &unk_1F2056750;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v63[1] = v20;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
    v71[1] = v19;
    v70[2] = @"TILE";
    v55 = &unk_1F2056750;
    v56[0] = @"error";
    v54 = @"dropRate";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v56[1] = @"success";
    v57[0] = v18;
    v52 = @"dropRate";
    v53 = &unk_1F2056750;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v57[1] = v17;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
    v71[2] = v16;
    v70[3] = @"any";
    v49 = &unk_1F2056760;
    v50[0] = @"error";
    v48 = @"dropRate";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v50[1] = @"success";
    v51[0] = v15;
    v46 = @"dropRate";
    v47 = &unk_1F2056760;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v51[1] = v14;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
    v71[3] = v2;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:4];
    v87[1] = v3;
    v86[2] = @"default";
    v44[0] = @"TILE";
    v41 = &unk_1F2056750;
    v42[0] = @"error";
    v40 = @"dropRate";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v42[1] = @"success";
    v43[0] = v4;
    v38 = @"dropRate";
    v39 = &unk_1F2056750;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v43[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
    v44[1] = @"any";
    v45[0] = v6;
    v35 = &unk_1F2056760;
    v36[0] = @"error";
    v34 = @"dropRate";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v36[1] = @"success";
    v37[0] = v7;
    v32 = @"dropRate";
    v33 = &unk_1F2056760;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v37[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v45[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v87[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:3];
    v12 = _netEventHandlingConfig__config;
    _netEventHandlingConfig__config = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)captureCuratedCollectionUserAction:(int)a3 target:(int)a4 value:(id)a5 publisherId:(id)a6 following:(id)a7 collectionId:(id)a8 collectionCategory:(id)a9 collectionCurrentlySaved:(id)a10 verticalIndex:(id)a11 horizontalIndex:(id)a12 placeCardType:(id)a13 possibleActions:(id)a14 impossibleActions:(id)a15 providerId:(id)a16 repeatableSectionIndex:(id)a17 modules:(id)a18
{
  v116 = *MEMORY[0x1E69E9840];
  v91 = a5;
  v21 = a6;
  v81 = a7;
  v86 = a8;
  v85 = a9;
  v84 = a10;
  v89 = a11;
  v88 = a12;
  v87 = a13;
  v22 = a14;
  v23 = a15;
  v83 = a16;
  v82 = a17;
  v90 = a18;
  v24 = objc_alloc_init(MEMORY[0x1E69A2038]);
  v25 = objc_alloc_init(MEMORY[0x1E69A23C8]);
  [v24 setPublisherDetails:v25];

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v26 = v21;
  v27 = [v26 countByEnumeratingWithState:&v106 objects:v115 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v107;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v107 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v106 + 1) + 8 * i);
        v32 = [v24 publisherDetails];
        [v32 addPublisherId:{objc_msgSend(v31, "unsignedLongLongValue")}];
      }

      v28 = [v26 countByEnumeratingWithState:&v106 objects:v115 count:16];
    }

    while (v28);
  }

  v80 = v26;

  v33 = v81;
  v34 = [v81 BOOLValue];
  v35 = [v24 publisherDetails];
  [v35 setCurrentlyFollowing:v34];

  v36 = objc_alloc_init(MEMORY[0x1E69A1C08]);
  [v24 setCollectionDetails:v36];

  v37 = v86;
  if (v86)
  {
    v38 = [v24 collectionDetails];
    [v38 addCollectionId:{objc_msgSend(v86, "unsignedLongLongValue")}];
  }

  v39 = v85;
  v40 = [v85 copy];
  v41 = [v24 collectionDetails];
  [v41 setCollectionCategory:v40];

  v42 = v84;
  if (v84)
  {
    v43 = [v84 BOOLValue];
    v44 = [v24 collectionDetails];
    [v44 setCurrentlySaved:v43];
  }

  if (v89)
  {
    [v24 setVerticalIndex:{objc_msgSend(v89, "unsignedIntValue")}];
  }

  if (v88)
  {
    [v24 setHorizontalIndex:{objc_msgSend(v88, "unsignedIntValue")}];
  }

  if (v87)
  {
    [v24 setPlacecardType:{objc_msgSend(v87, "intValue")}];
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v22;
  v45 = [obj countByEnumeratingWithState:&v102 objects:v114 count:16];
  v46 = v82;
  if (v45)
  {
    v47 = v45;
    v48 = *v103;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v103 != v48)
        {
          objc_enumerationMutation(obj);
        }

        [v24 addPossibleAction:{objc_msgSend(*(*(&v102 + 1) + 8 * j), "intValue")}];
      }

      v47 = [obj countByEnumeratingWithState:&v102 objects:v114 count:16];
    }

    while (v47);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v50 = v23;
  v51 = [v50 countByEnumeratingWithState:&v98 objects:v113 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v99;
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v99 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [v24 addImpossibleAction:{objc_msgSend(*(*(&v98 + 1) + 8 * k), "intValue")}];
      }

      v52 = [v50 countByEnumeratingWithState:&v98 objects:v113 count:16];
    }

    while (v52);
  }

  v55 = v83;
  if (v83)
  {
    [v24 setLocalSearchProviderID:{objc_msgSend(v83, "intValue")}];
  }

  v56 = v90;
  v57 = v91;
  if (v82)
  {
    [v24 setRepeatableSectionIndex:{objc_msgSend(v82, "intValue")}];
  }

  v79 = +[GEOAPSharedStateData sharedData];
  [v79 setCuratedCollectionState:v24];
  if (v90)
  {
    v58 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
    [v58 setStateType:702];
    v59 = objc_alloc_init(MEMORY[0x1E69A2108]);
    [v58 setPlaceCard:v59];

    v92 = v58;
    v60 = [v58 placeCard];
    [v60 setPlacecardType:14];

    v56 = v90;
    if ([v90 count] < 2)
    {
      v33 = v81;
      v37 = v86;
      if ([v90 count] != 1)
      {
LABEL_53:

        v57 = v91;
        goto LABEL_54;
      }

      v71 = [v90 firstObject];
      v72 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v71, "type")}];
      v73 = [v71 metadata];
      v110 = v92;
      v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
      [GEOAPPortal captureUserAction:a3 target:a4 value:v91 moduleType:v72 moduleMetadata:v73 richProviderId:0 additionalStates:v74 completionQueue:0 completionBlock:0];

      v46 = v82;
      v37 = v86;
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v61 = v90;
      v62 = [v61 countByEnumeratingWithState:&v94 objects:v112 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v95;
        do
        {
          for (m = 0; m != v63; ++m)
          {
            if (*v95 != v64)
            {
              objc_enumerationMutation(v61);
            }

            v66 = *(*(&v94 + 1) + 8 * m);
            v67 = objc_alloc_init(MEMORY[0x1E69A2358]);
            [v67 setType:{objc_msgSend(v66, "type")}];
            v68 = [v66 metadata];
            [v67 setMetadata:v68];

            if ([v66 contentsCount])
            {
              v69 = 0;
              do
              {
                [v67 addContent:{objc_msgSend(v66, "contentAtIndex:", v69++)}];
              }

              while (v69 < [v66 contentsCount]);
            }

            v70 = [v92 placeCard];
            [v70 addModules:v67];
          }

          v63 = [v61 countByEnumeratingWithState:&v94 objects:v112 count:16];
        }

        while (v63);
      }

      v111 = v92;
      v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
      [a1 captureUserAction:a3 target:a4 value:v91 moduleType:0 moduleMetadata:0 richProviderId:0 additionalStates:v71 completionQueue:0 completionBlock:0];
      v33 = v81;
      v46 = v82;
      v37 = v86;
    }

    v42 = v84;
    v39 = v85;
    v55 = v83;
    v56 = v90;
    goto LABEL_53;
  }

  [a1 captureUserAction:a3 target:a4 value:v91 moduleType:0 moduleMetadata:0 richProviderId:0 additionalStates:0 completionQueue:0 completionBlock:0];
LABEL_54:

  v75 = *MEMORY[0x1E69E9840];
}

uint64_t __95__GEOAPPortal_UserAction__captureUserAction_target_value_categoriesDisplayed_categorySelected___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPlaceCardPlaceCardType:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 populateWithPlaceActionDetails:v3];
}

uint64_t __211__GEOAPPortal_UserAction__captureTransitPlaceCardUserAction_target_value_mapItem_timestamp_resultIndex_targetID_providerID_animationID_transitCardCategory_transitSystem_transitDepartureSequence_transitIncident___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPlaceCardPlaceCardType:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 populateWithPlaceActionDetails:v3];
}

void __136__GEOAPPortal_UserAction__capturePlaceCardUserAction_target_value_mapItem_timestamp_placeCardType_categoriesDisplayed_categorySelected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) placeCard];
  v1 = +[GEOAPSharedStateData sharedData];
  [v1 setPlaceCardState:v2];
}

+ (void)capturePlaceCardUserAction:(int)a3 target:(int)a4 value:(id)a5 mapItem:(id)a6 timestamp:(double)a7 resultIndex:(int)a8 targetID:(unint64_t)a9 providerID:(id)a10 animationID:(unint64_t)a11 actionURL:(id)a12 photoID:(id)a13 placeCardType:(int)a14 localizedMapItemCategory:(id)a15 availableActions:(id)a16 unactionableUIElements:(id)a17 modules:(id)a18 commingledRichProviderIds:(id)a19 actionRichProviderId:(id)a20 classification:(id)a21
{
  v112 = *MEMORY[0x1E69E9840];
  v81 = a5;
  v22 = a10;
  v23 = a12;
  v24 = a13;
  v82 = a15;
  v25 = a16;
  v26 = a17;
  v86 = a18;
  v27 = a19;
  v28 = a20;
  v75 = a21;
  v29 = [MEMORY[0x1E69A2350] actionDetailsWithMapItem:a6 timestamp:a8 resultIndex:a9 targetID:a7];
  v30 = v29;
  v85 = v22;
  if (v22)
  {
    [v29 setRichProviderId:v22];
  }

  if (a11)
  {
    [v30 setAnimationID:a11];
  }

  if (v23)
  {
    [v30 setActionUrl:v23];
  }

  v80 = v23;
  if (v24)
  {
    [v30 setPhotoId:v24];
  }

  v76 = v28;
  v78 = v24;
  v31 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v31 setStateType:702];
  v32 = objc_alloc_init(MEMORY[0x1E69A2108]);
  [v31 setPlaceCard:v32];

  v33 = [v31 placeCard];
  v73 = v30;
  [v33 setPlaceActionDetails:v30];

  v34 = [v31 placeCard];
  [v34 setPlacecardType:a14];

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v35 = v25;
  v36 = [v35 countByEnumeratingWithState:&v102 objects:v111 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v103;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v103 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v102 + 1) + 8 * i);
        v41 = [v31 placeCard];
        [v41 addPossibleAction:{objc_msgSend(v40, "intValue")}];
      }

      v37 = [v35 countByEnumeratingWithState:&v102 objects:v111 count:16];
    }

    while (v37);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v42 = v26;
  v43 = [v42 countByEnumeratingWithState:&v98 objects:v110 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v99;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v99 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v98 + 1) + 8 * j);
        v48 = [v31 placeCard];
        [v48 addUnactionableUiElement:{objc_msgSend(v47, "intValue")}];
      }

      v44 = [v42 countByEnumeratingWithState:&v98 objects:v110 count:16];
    }

    while (v44);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v49 = v27;
  v50 = [v49 countByEnumeratingWithState:&v94 objects:v109 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v95;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v95 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v94 + 1) + 8 * k);
        v55 = [v31 placeCard];
        [v55 addCommingledRichProviderIds:v54];
      }

      v51 = [v49 countByEnumeratingWithState:&v94 objects:v109 count:16];
    }

    while (v51);
  }

  v56 = [v31 placeCard];
  v57 = v82;
  [v56 setPlacecardCategory:v82];

  v58 = +[GEOAPSharedStateData sharedData];
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __296__GEOAPPortal_UserAction__capturePlaceCardUserAction_target_value_mapItem_timestamp_resultIndex_targetID_providerID_animationID_actionURL_photoID_placeCardType_localizedMapItemCategory_availableActions_unactionableUIElements_modules_commingledRichProviderIds_actionRichProviderId_classification___block_invoke;
  v91[3] = &unk_1E7959400;
  v59 = v58;
  v92 = v59;
  v60 = v31;
  v93 = v60;
  [v59 performPlaceCardStateUpdate:v91];
  if (a3 == 21)
  {
    v61 = +[GEOAPSharedStateData sharedData];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __296__GEOAPPortal_UserAction__capturePlaceCardUserAction_target_value_mapItem_timestamp_resultIndex_targetID_providerID_animationID_actionURL_photoID_placeCardType_localizedMapItemCategory_availableActions_unactionableUIElements_modules_commingledRichProviderIds_actionRichProviderId_classification___block_invoke_2;
    v88[3] = &unk_1E7959400;
    v89 = v86;
    v62 = v60;
    v90 = v62;
    [v61 performPlaceCardStateUpdate:v88];

    v108 = v62;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
    v64 = v76;
    v65 = v81;
    [GEOAPPortal captureUserAction:21 target:a4 value:v81 moduleType:0 moduleMetadata:0 classification:v75 richProviderId:v76 additionalStates:v63 completionQueue:0 completionBlock:0];

    v66 = v75;
    v67 = v89;
  }

  else if ([v86 count] == 1)
  {
    v67 = [v86 firstObject];
    v71 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v67, "type")}];
    [v67 metadata];
    v68 = v72 = v59;
    v107 = v60;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
    v64 = v76;
    v65 = v81;
    v66 = v75;
    [GEOAPPortal captureUserAction:a3 target:a4 value:v81 moduleType:v71 moduleMetadata:v68 classification:v75 richProviderId:v76 additionalStates:v69 completionQueue:0 completionBlock:0];

    v59 = v72;
    v57 = v82;
  }

  else
  {
    v65 = v81;
    if ([v86 count] >= 2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1AB634000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: modules.count <= 1", buf, 2u);
    }

    v106 = v60;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
    v64 = v76;
    v66 = v75;
    [GEOAPPortal captureUserAction:a3 target:a4 value:v81 moduleType:0 moduleMetadata:0 classification:v75 richProviderId:v76 additionalStates:v67 completionQueue:0 completionBlock:0];
  }

  v70 = *MEMORY[0x1E69E9840];
}

void __296__GEOAPPortal_UserAction__capturePlaceCardUserAction_target_value_mapItem_timestamp_resultIndex_targetID_providerID_animationID_actionURL_photoID_placeCardType_localizedMapItemCategory_availableActions_unactionableUIElements_modules_commingledRichProviderIds_actionRichProviderId_classification___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasPlaceCardIsPersonPlacecard])
  {
    v2 = [*(a1 + 32) placeCardIsPersonPlacecard];
    v3 = [*(a1 + 40) placeCard];
    [v3 setIsPersonPlacecard:v2];
  }

  if ([*(a1 + 32) hasPlaceCardIsPersonLocationShared])
  {
    v4 = [*(a1 + 32) placeCardIsPersonLocationShared];
    v5 = [*(a1 + 40) placeCard];
    [v5 setIsPersonLocationShared:v4];
  }

  if ([*(a1 + 32) hasPlaceCardIsPersonAddressAvailable])
  {
    v6 = [*(a1 + 32) placeCardIsPersonAddressAvailable];
    v7 = [*(a1 + 40) placeCard];
    [v7 setIsPersonAddressAvailable:v6];
  }

  v8 = [*(a1 + 40) placeCard];
  [*(a1 + 32) setPlaceCardState:v8];
}

void __296__GEOAPPortal_UserAction__capturePlaceCardUserAction_target_value_mapItem_timestamp_resultIndex_targetID_providerID_animationID_actionURL_photoID_placeCardType_localizedMapItemCategory_availableActions_unactionableUIElements_modules_commingledRichProviderIds_actionRichProviderId_classification___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = objc_alloc_init(MEMORY[0x1E69A2358]);
        [v8 setType:{objc_msgSend(v7, "type", v18)}];
        v9 = [v7 metadata];
        [v8 setMetadata:v9];

        if ([v7 contentsCount])
        {
          v10 = 0;
          do
          {
            [v8 addContent:{objc_msgSend(v7, "contentAtIndex:", v10++)}];
          }

          while (v10 < [v7 contentsCount]);
        }

        v11 = [*(a1 + 40) placeCard];
        [v11 addModules:v8];

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v12 = +[GEOAPStateFactory sharedFactory];
  v13 = [v12 stateForType:18];

  v14 = [v13 placeCard];

  if (v14)
  {
    v15 = [*(a1 + 40) placeCard];
    v16 = [v13 placeCard];
    [v15 mergeFrom:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __105__GEOAPPortal_UserAction__captureUserAction_target_value_placeActionDetails_mapRegion_zoomLevel_mapType___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setMapViewMapRegion:v2];

  [*(a1 + 32) setMapViewZoomLevel:*(a1 + 48)];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);

  return [v4 setMapViewMapType:v3];
}

uint64_t __86__GEOAPPortal_UserAction__captureUserAction_target_value_mapRegion_zoomLevel_mapType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setMapViewMapRegion:v2];

  [*(a1 + 32) setMapViewZoomLevel:*(a1 + 48)];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);

  return [v4 setMapViewMapType:v3];
}

uint64_t __170__GEOAPPortal_UserActionCodeGen__captureUserAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke_2(uint64_t result, int a2, double a3)
{
  if (a2)
  {
    v4 = result;
    objc_opt_self();
    if (sharedManager_onceToken_1185 != -1)
    {
      dispatch_once(&sharedManager_onceToken_1185, &__block_literal_global_68);
    }

    v5 = sharedManager_sharedManager;
    v6 = v5;
    if (v5)
    {
      v7 = *(v4 + 32);
      v8 = v5[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__GEOAPSequencesManager_processUserAction_target_atTime___block_invoke;
      block[3] = &unk_1E7953C28;
      block[4] = v6;
      *&block[5] = a3;
      block[6] = v7;
      dispatch_async(v8, block);
    }

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

void __170__GEOAPPortal_UserActionCodeGen__captureUserAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke()
{
  v0 = +[GEOAPUtils GEOAPApplicationIdentifier];
  captureUserAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock__runningInMapsApp = [v0 isEqualToString:*MEMORY[0x1E69A1A78]];
}

uint64_t __204__GEOAPPortal_UserActionCodeGen__captureVisualIntelligenceShortUserActionsWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureOfflineShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v188 = *MEMORY[0x1E69E9840];
  v176 = a5;
  v175 = a6;
  v177 = a7;
  v178 = a8;
  v174 = a9;
  v15 = a10;
  v157 = a11;
  v156 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  v158 = v15;
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v183 objects:v187 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v184;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v184 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v183 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v183 objects:v187 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:65];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  if (v28)
  {
    v173 = v28;

    goto LABEL_16;
  }

  v29 = 0;
LABEL_14:
  v30 = [v16 stateForType:65];
  v173 = [v30 copy];

  if (v29)
  {
    v31 = 1;
    goto LABEL_19;
  }

LABEL_16:
  v32 = [v16 logMsgStateTypeForType:5];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:v32];
  v34 = [v25 objectForKeyedSubscript:v33];

  if (v34)
  {
    v172 = v34;

    goto LABEL_21;
  }

  v31 = 0;
LABEL_19:
  v35 = [v16 stateForType:5];
  v172 = [v35 copy];

  if (v31)
  {
    v36 = 1;
    goto LABEL_24;
  }

LABEL_21:
  v37 = [v16 logMsgStateTypeForType:15];
  v38 = [MEMORY[0x1E696AD98] numberWithInt:v37];
  v39 = [v25 objectForKeyedSubscript:v38];

  if (v39)
  {
    v171 = v39;

    goto LABEL_26;
  }

  v36 = 0;
LABEL_24:
  v40 = [v16 stateForType:15];
  v171 = [v40 copy];

  if (v36)
  {
    v41 = 1;
    goto LABEL_29;
  }

LABEL_26:
  v42 = [v16 logMsgStateTypeForType:35];
  v43 = [MEMORY[0x1E696AD98] numberWithInt:v42];
  v44 = [v25 objectForKeyedSubscript:v43];

  if (v44)
  {
    v170 = v44;

    goto LABEL_31;
  }

  v41 = 0;
LABEL_29:
  v45 = [v16 stateForType:35];
  v170 = [v45 copy];

  if (v41)
  {
    v46 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v47 = [v16 logMsgStateTypeForType:30];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:v47];
  v49 = [v25 objectForKeyedSubscript:v48];

  if (v49)
  {
    v169 = v49;

    goto LABEL_36;
  }

  v46 = 0;
LABEL_34:
  v50 = [v16 stateForType:30];
  v169 = [v50 copy];

  if (v46)
  {
    v51 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v52 = [v16 logMsgStateTypeForType:1];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:v52];
  v54 = [v25 objectForKeyedSubscript:v53];

  if (!v54)
  {
    v51 = 0;
LABEL_39:
    v55 = 1;
    v56 = [v16 stateForType:1];
    v168 = [v56 copy];

    if (v51)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v168 = v54;

LABEL_40:
  v57 = [v16 logMsgStateTypeForType:3];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:v57];
  v59 = [v25 objectForKeyedSubscript:v58];

  if (v59)
  {
    v167 = v59;

    goto LABEL_45;
  }

  v55 = 0;
LABEL_43:
  v60 = [v16 stateForType:3];
  v167 = [v60 copy];

  if (v55)
  {
    v61 = 1;
    goto LABEL_48;
  }

LABEL_45:
  v62 = [v16 logMsgStateTypeForType:64];
  v63 = [MEMORY[0x1E696AD98] numberWithInt:v62];
  v64 = [v25 objectForKeyedSubscript:v63];

  if (v64)
  {
    v166 = v64;

    goto LABEL_50;
  }

  v61 = 0;
LABEL_48:
  v65 = [v16 stateForType:64];
  v166 = [v65 copy];

  if (v61)
  {
    v66 = 1;
    goto LABEL_53;
  }

LABEL_50:
  v67 = [v16 logMsgStateTypeForType:13];
  v68 = [MEMORY[0x1E696AD98] numberWithInt:v67];
  v69 = [v25 objectForKeyedSubscript:v68];

  if (v69)
  {
    v165 = v69;

    goto LABEL_55;
  }

  v66 = 0;
LABEL_53:
  v70 = [v16 stateForType:13];
  v165 = [v70 copy];

  if (v66)
  {
    v71 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v72 = [v16 logMsgStateTypeForType:14];
  v73 = [MEMORY[0x1E696AD98] numberWithInt:v72];
  v74 = [v25 objectForKeyedSubscript:v73];

  if (v74)
  {
    v164 = v74;

    goto LABEL_60;
  }

  v71 = 0;
LABEL_58:
  v75 = [v16 stateForType:14];
  v164 = [v75 copy];

  if (v71)
  {
    v76 = 1;
    goto LABEL_63;
  }

LABEL_60:
  v77 = [v16 logMsgStateTypeForType:9];
  v78 = [MEMORY[0x1E696AD98] numberWithInt:v77];
  v79 = [v25 objectForKeyedSubscript:v78];

  if (v79)
  {
    v163 = v79;

    goto LABEL_65;
  }

  v76 = 0;
LABEL_63:
  v80 = [v16 stateForType:9];
  v163 = [v80 copy];

  if (v76)
  {
    v81 = 1;
    goto LABEL_68;
  }

LABEL_65:
  v82 = [v16 logMsgStateTypeForType:10];
  v83 = [MEMORY[0x1E696AD98] numberWithInt:v82];
  v84 = [v25 objectForKeyedSubscript:v83];

  if (v84)
  {
    v162 = v84;

    goto LABEL_70;
  }

  v81 = 0;
LABEL_68:
  v85 = [v16 stateForType:10];
  v162 = [v85 copy];

  if (v81)
  {
    v86 = 1;
    goto LABEL_73;
  }

LABEL_70:
  v87 = [v16 logMsgStateTypeForType:20];
  v88 = [MEMORY[0x1E696AD98] numberWithInt:v87];
  v89 = [v25 objectForKeyedSubscript:v88];

  if (v89)
  {
    v161 = v89;

    goto LABEL_75;
  }

  v86 = 0;
LABEL_73:
  v90 = [v16 stateForType:20];
  v161 = [v90 copy];

  if (v86)
  {
    v91 = 1;
    goto LABEL_78;
  }

LABEL_75:
  v92 = [v16 logMsgStateTypeForType:42];
  v93 = [MEMORY[0x1E696AD98] numberWithInt:v92];
  v94 = [v25 objectForKeyedSubscript:v93];

  if (v94)
  {
    v160 = v94;

    goto LABEL_80;
  }

  v91 = 0;
LABEL_78:
  v95 = [v16 stateForType:42];
  v160 = [v95 copy];

  if (v91)
  {
    v96 = 1;
    goto LABEL_83;
  }

LABEL_80:
  v97 = [v16 logMsgStateTypeForType:70];
  v98 = [MEMORY[0x1E696AD98] numberWithInt:v97];
  v99 = [v25 objectForKeyedSubscript:v98];

  if (v99)
  {
    v153 = v99;

    goto LABEL_85;
  }

  v96 = 0;
LABEL_83:
  v100 = [v16 stateForType:70];
  v153 = [v100 copy];

  if (v96)
  {
    v101 = 1;
    goto LABEL_88;
  }

LABEL_85:
  v102 = [v16 logMsgStateTypeForType:69];
  v103 = [MEMORY[0x1E696AD98] numberWithInt:v102];
  v104 = [v25 objectForKeyedSubscript:v103];

  if (v104)
  {
    v105 = v104;

    goto LABEL_90;
  }

  v101 = 0;
LABEL_88:
  v106 = [v16 stateForType:69];
  v105 = [v106 copy];

  if (v101)
  {
    v107 = 1;
    goto LABEL_93;
  }

LABEL_90:
  v108 = [v16 logMsgStateTypeForType:7];
  v109 = [MEMORY[0x1E696AD98] numberWithInt:v108];
  v110 = [v25 objectForKeyedSubscript:v109];

  if (v110)
  {
    v111 = v110;

    goto LABEL_95;
  }

  v107 = 0;
LABEL_93:
  v112 = [v16 stateForType:7];
  v111 = [v112 copy];

  if (v107)
  {
    v113 = 1;
    goto LABEL_98;
  }

LABEL_95:
  v114 = [v16 logMsgStateTypeForType:17];
  v115 = [MEMORY[0x1E696AD98] numberWithInt:v114];
  v116 = [v25 objectForKeyedSubscript:v115];

  if (v116)
  {
    v117 = v116;

    goto LABEL_100;
  }

  v113 = 0;
LABEL_98:
  v118 = [v16 stateForType:17];
  v117 = [v118 copy];

  if (v113)
  {
    v119 = 1;
    goto LABEL_103;
  }

LABEL_100:
  v120 = [v16 logMsgStateTypeForType:19];
  v121 = [MEMORY[0x1E696AD98] numberWithInt:v120];
  v122 = [v25 objectForKeyedSubscript:v121];

  if (v122)
  {
    v123 = v122;

    goto LABEL_104;
  }

  v119 = 0;
LABEL_103:
  v124 = [v16 stateForType:19];
  v123 = [v124 copy];

  if (v119)
  {
LABEL_106:
    v152 = v25;
    v128 = [v16 stateForType:27];
    v159 = [v128 copy];

    goto LABEL_107;
  }

LABEL_104:
  v125 = [v16 logMsgStateTypeForType:27];
  v126 = [MEMORY[0x1E696AD98] numberWithInt:v125];
  v127 = [v25 objectForKeyedSubscript:v126];

  if (!v127)
  {
    goto LABEL_106;
  }

  v152 = v25;
  v128 = v127;
  v159 = v128;
LABEL_107:

  v129 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v129 setEventType:1];
  v130 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v129 setUserActionEvent:v130];

  v131 = [v129 userActionEvent];
  [v131 setUserActionEventAction:a3];

  v132 = [v129 userActionEvent];
  [v132 setUserActionEventTarget:a4];

  v133 = [v129 userActionEvent];
  [v133 setUserActionEventValue:v176];

  v134 = [v129 userActionEvent];
  [v134 setActionRichProviderId:v174];

  if (v175 || v177 || v178)
  {
    v135 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v136 = [v129 userActionEvent];
    [v136 setModuleInfo:v135];

    if (v175)
    {
      v137 = [v175 intValue];
      v138 = [v129 userActionEvent];
      v139 = [v138 moduleInfo];
      [v139 setType:v137];
    }

    if (v177)
    {
      v140 = [v129 userActionEvent];
      v141 = [v140 moduleInfo];
      [v141 setModuleMetadata:v177];
    }

    if (v178)
    {
      v142 = [v129 userActionEvent];
      v143 = [v142 moduleInfo];
      [v143 setClassification:v178];
    }
  }

  if (v173)
  {
    [v129 addLogMsgState:?];
  }

  if (v172)
  {
    [v129 addLogMsgState:?];
  }

  if (v171)
  {
    [v129 addLogMsgState:v171];
  }

  if (v170)
  {
    [v129 addLogMsgState:?];
  }

  if (v169)
  {
    [v129 addLogMsgState:?];
  }

  if (v168)
  {
    [v129 addLogMsgState:v168];
  }

  if (v167)
  {
    [v129 addLogMsgState:?];
  }

  if (v166)
  {
    [v129 addLogMsgState:?];
  }

  if (v165)
  {
    [v129 addLogMsgState:v165];
  }

  if (v164)
  {
    [v129 addLogMsgState:?];
  }

  if (v163)
  {
    [v129 addLogMsgState:?];
  }

  if (v162)
  {
    [v129 addLogMsgState:v162];
  }

  if (v161)
  {
    [v129 addLogMsgState:?];
  }

  if (v160)
  {
    [v129 addLogMsgState:?];
  }

  if (v111)
  {
    [v129 addLogMsgState:v111];
  }

  if (v117)
  {
    [v129 addLogMsgState:v117];
  }

  if (v123)
  {
    [v129 addLogMsgState:v123];
  }

  v144 = v117;
  if (v159)
  {
    [v129 addLogMsgState:v159];
  }

  v145 = v111;
  if (v105)
  {
    [v129 addLogMsgState:v105];
  }

  v146 = v105;
  if (v153)
  {
    [v129 addLogMsgState:v153];
  }

  v147 = +[GEOAPStateFactory sharedFactory];
  v179[0] = MEMORY[0x1E69E9820];
  v179[1] = 3221225472;
  v179[2] = __202__GEOAPPortal_UserActionCodeGen__captureOfflineShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v179[3] = &unk_1E7953B38;
  v148 = v129;
  v180 = v148;
  v149 = v156;
  v182 = v149;
  v150 = v157;
  v181 = v150;
  [v147 sessionStateForType:6 callback:v179];

  v151 = *MEMORY[0x1E69E9840];
}

uint64_t __202__GEOAPPortal_UserActionCodeGen__captureOfflineShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureNearbyTransitShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v167 = *MEMORY[0x1E69E9840];
  v154 = a5;
  v156 = a6;
  v155 = a7;
  v157 = a8;
  v153 = a9;
  v15 = a10;
  v138 = a11;
  v137 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  v139 = v15;
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v30 = 1;
    v29 = v156;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v162 objects:v166 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v163;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v163 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v162 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v162 objects:v166 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:65];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  v29 = v156;
  if (v28)
  {
    v152 = v28;

    goto LABEL_16;
  }

  v30 = 0;
LABEL_14:
  v31 = [v16 stateForType:65];
  v152 = [v31 copy];

  if (v30)
  {
    v32 = 1;
    goto LABEL_19;
  }

LABEL_16:
  v33 = [v16 logMsgStateTypeForType:5];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:v33];
  v35 = [v25 objectForKeyedSubscript:v34];

  if (v35)
  {
    v151 = v35;

    goto LABEL_21;
  }

  v32 = 0;
LABEL_19:
  v36 = [v16 stateForType:5];
  v151 = [v36 copy];

  if (v32)
  {
    v37 = 1;
    goto LABEL_24;
  }

LABEL_21:
  v38 = [v16 logMsgStateTypeForType:15];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:v38];
  v40 = [v25 objectForKeyedSubscript:v39];

  if (v40)
  {
    v150 = v40;

    goto LABEL_26;
  }

  v37 = 0;
LABEL_24:
  v41 = [v16 stateForType:15];
  v150 = [v41 copy];

  if (v37)
  {
    v42 = 1;
    goto LABEL_29;
  }

LABEL_26:
  v43 = [v16 logMsgStateTypeForType:35];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:v43];
  v45 = [v25 objectForKeyedSubscript:v44];

  if (v45)
  {
    v149 = v45;

    goto LABEL_31;
  }

  v42 = 0;
LABEL_29:
  v46 = [v16 stateForType:35];
  v149 = [v46 copy];

  if (v42)
  {
    v47 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v48 = [v16 logMsgStateTypeForType:30];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:v48];
  v50 = [v25 objectForKeyedSubscript:v49];

  if (v50)
  {
    v148 = v50;

    goto LABEL_36;
  }

  v47 = 0;
LABEL_34:
  v51 = [v16 stateForType:30];
  v148 = [v51 copy];

  if (v47)
  {
    v52 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v53 = [v16 logMsgStateTypeForType:1];
  v54 = [MEMORY[0x1E696AD98] numberWithInt:v53];
  v55 = [v25 objectForKeyedSubscript:v54];

  if (!v55)
  {
    v52 = 0;
LABEL_39:
    v56 = 1;
    v57 = [v16 stateForType:1];
    v147 = [v57 copy];

    if (v52)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v147 = v55;

LABEL_40:
  v58 = [v16 logMsgStateTypeForType:3];
  v59 = [MEMORY[0x1E696AD98] numberWithInt:v58];
  v60 = [v25 objectForKeyedSubscript:v59];

  if (v60)
  {
    v146 = v60;

    goto LABEL_45;
  }

  v56 = 0;
LABEL_43:
  v61 = [v16 stateForType:3];
  v146 = [v61 copy];

  if (v56)
  {
    v62 = 1;
    goto LABEL_48;
  }

LABEL_45:
  v63 = [v16 logMsgStateTypeForType:64];
  v64 = [MEMORY[0x1E696AD98] numberWithInt:v63];
  v65 = [v25 objectForKeyedSubscript:v64];

  if (v65)
  {
    v145 = v65;

    goto LABEL_50;
  }

  v62 = 0;
LABEL_48:
  v66 = [v16 stateForType:64];
  v145 = [v66 copy];

  if (v62)
  {
    v67 = 1;
    goto LABEL_53;
  }

LABEL_50:
  v68 = [v16 logMsgStateTypeForType:13];
  v69 = [MEMORY[0x1E696AD98] numberWithInt:v68];
  v70 = [v25 objectForKeyedSubscript:v69];

  if (v70)
  {
    v144 = v70;

    goto LABEL_55;
  }

  v67 = 0;
LABEL_53:
  v71 = [v16 stateForType:13];
  v144 = [v71 copy];

  if (v67)
  {
    v72 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v73 = [v16 logMsgStateTypeForType:14];
  v74 = [MEMORY[0x1E696AD98] numberWithInt:v73];
  v75 = [v25 objectForKeyedSubscript:v74];

  if (v75)
  {
    v143 = v75;

    goto LABEL_60;
  }

  v72 = 0;
LABEL_58:
  v76 = [v16 stateForType:14];
  v143 = [v76 copy];

  if (v72)
  {
    v77 = 1;
    goto LABEL_63;
  }

LABEL_60:
  v78 = [v16 logMsgStateTypeForType:9];
  v79 = [MEMORY[0x1E696AD98] numberWithInt:v78];
  v80 = [v25 objectForKeyedSubscript:v79];

  if (v80)
  {
    v142 = v80;

    goto LABEL_65;
  }

  v77 = 0;
LABEL_63:
  v81 = [v16 stateForType:9];
  v142 = [v81 copy];

  if (v77)
  {
    v82 = 1;
    goto LABEL_68;
  }

LABEL_65:
  v83 = [v16 logMsgStateTypeForType:10];
  v84 = [MEMORY[0x1E696AD98] numberWithInt:v83];
  v85 = [v25 objectForKeyedSubscript:v84];

  if (v85)
  {
    v141 = v85;

    goto LABEL_70;
  }

  v82 = 0;
LABEL_68:
  v86 = [v16 stateForType:10];
  v141 = [v86 copy];

  if (v82)
  {
    v87 = 1;
    goto LABEL_73;
  }

LABEL_70:
  v88 = [v16 logMsgStateTypeForType:20];
  v89 = [MEMORY[0x1E696AD98] numberWithInt:v88];
  v90 = [v25 objectForKeyedSubscript:v89];

  if (v90)
  {
    v140 = v90;

    goto LABEL_75;
  }

  v87 = 0;
LABEL_73:
  v91 = [v16 stateForType:20];
  v140 = [v91 copy];

  if (v87)
  {
    v92 = 1;
    goto LABEL_78;
  }

LABEL_75:
  v93 = [v16 logMsgStateTypeForType:42];
  v94 = [MEMORY[0x1E696AD98] numberWithInt:v93];
  v95 = [v25 objectForKeyedSubscript:v94];

  if (v95)
  {
    v96 = v95;

    goto LABEL_80;
  }

  v92 = 0;
LABEL_78:
  v97 = [v16 stateForType:42];
  v96 = [v97 copy];

  if (v92)
  {
    v98 = 1;
    goto LABEL_83;
  }

LABEL_80:
  v99 = [v16 logMsgStateTypeForType:52];
  v100 = [MEMORY[0x1E696AD98] numberWithInt:v99];
  v101 = [v25 objectForKeyedSubscript:v100];

  if (v101)
  {
    v102 = v101;

    goto LABEL_85;
  }

  v98 = 0;
LABEL_83:
  v103 = [v16 stateForType:52];
  v102 = [v103 copy];

  if (v98)
  {
    v104 = 1;
    goto LABEL_88;
  }

LABEL_85:
  v105 = [v16 logMsgStateTypeForType:70];
  v106 = [MEMORY[0x1E696AD98] numberWithInt:v105];
  v107 = [v25 objectForKeyedSubscript:v106];

  if (v107)
  {
    v108 = v107;

    goto LABEL_89;
  }

  v104 = 0;
LABEL_88:
  v109 = [v16 stateForType:70];
  v108 = [v109 copy];

  if (v104)
  {
LABEL_91:
    v113 = [v16 stateForType:7];
    v114 = [v113 copy];

    goto LABEL_92;
  }

LABEL_89:
  v110 = [v16 logMsgStateTypeForType:7];
  v111 = [MEMORY[0x1E696AD98] numberWithInt:v110];
  v112 = [v25 objectForKeyedSubscript:v111];

  if (!v112)
  {
    goto LABEL_91;
  }

  v113 = v112;
  v114 = v113;
LABEL_92:

  v115 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v115 setEventType:1];
  v116 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v115 setUserActionEvent:v116];

  v117 = [v115 userActionEvent];
  [v117 setUserActionEventAction:a3];

  v118 = [v115 userActionEvent];
  [v118 setUserActionEventTarget:a4];

  v119 = [v115 userActionEvent];
  [v119 setUserActionEventValue:v154];

  v120 = [v115 userActionEvent];
  [v120 setActionRichProviderId:v153];

  if (v29 || v155 || v157)
  {
    v121 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v122 = [v115 userActionEvent];
    [v122 setModuleInfo:v121];

    if (v156)
    {
      v123 = [v156 intValue];
      v124 = [v115 userActionEvent];
      v125 = [v124 moduleInfo];
      [v125 setType:v123];
    }

    if (v155)
    {
      v126 = [v115 userActionEvent];
      v127 = [v126 moduleInfo];
      [v127 setModuleMetadata:v155];
    }

    if (v157)
    {
      v128 = [v115 userActionEvent];
      v129 = [v128 moduleInfo];
      [v129 setClassification:v157];
    }
  }

  if (v152)
  {
    [v115 addLogMsgState:?];
  }

  if (v151)
  {
    [v115 addLogMsgState:?];
  }

  if (v150)
  {
    [v115 addLogMsgState:v150];
  }

  if (v149)
  {
    [v115 addLogMsgState:?];
  }

  if (v148)
  {
    [v115 addLogMsgState:?];
  }

  if (v147)
  {
    [v115 addLogMsgState:v147];
  }

  if (v146)
  {
    [v115 addLogMsgState:?];
  }

  if (v145)
  {
    [v115 addLogMsgState:?];
  }

  if (v144)
  {
    [v115 addLogMsgState:v144];
  }

  if (v143)
  {
    [v115 addLogMsgState:?];
  }

  if (v142)
  {
    [v115 addLogMsgState:?];
  }

  if (v141)
  {
    [v115 addLogMsgState:v141];
  }

  if (v140)
  {
    [v115 addLogMsgState:?];
  }

  if (v96)
  {
    [v115 addLogMsgState:v96];
  }

  if (v102)
  {
    [v115 addLogMsgState:v102];
  }

  if (v114)
  {
    [v115 addLogMsgState:v114];
  }

  if (v108)
  {
    [v115 addLogMsgState:v108];
  }

  v130 = +[GEOAPStateFactory sharedFactory];
  v158[0] = MEMORY[0x1E69E9820];
  v158[1] = 3221225472;
  v158[2] = __208__GEOAPPortal_UserActionCodeGen__captureNearbyTransitShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v158[3] = &unk_1E7953B38;
  v131 = v115;
  v159 = v131;
  v132 = v137;
  v161 = v132;
  v133 = v138;
  v160 = v133;
  [v130 sessionStateForType:6 callback:v158];

  v134 = *MEMORY[0x1E69E9840];
}

uint64_t __208__GEOAPPortal_UserActionCodeGen__captureNearbyTransitShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureOfflineSessionlessUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v112 = *MEMORY[0x1E69E9840];
  v96 = a5;
  v15 = a6;
  v101 = a7;
  v102 = a8;
  v95 = a9;
  v16 = a10;
  v91 = a11;
  v90 = a12;
  v17 = +[GEOAPStateFactory sharedFactory];
  v97 = v15;
  v92 = v16;
  if ([v16 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v107 objects:v111 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v108;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v108 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v107 + 1) + 8 * i);
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "stateType")}];
          [v18 setObject:v24 forKeyedSubscript:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v107 objects:v111 count:16];
      }

      while (v21);
    }

    v26 = [v18 copy];
    if (v26)
    {
      v27 = [v17 logMsgStateTypeForType:2];
      v28 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      v29 = [v26 objectForKeyedSubscript:v28];

      if (v29)
      {
        v94 = v29;
        v15 = v97;
        goto LABEL_17;
      }
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    v15 = v97;
  }

  else
  {
    v26 = 0;
    LOBYTE(v29) = 1;
  }

  v30 = [v17 stateForType:2];
  v94 = [v30 copy];

  if (v29)
  {
    v31 = 1;
    goto LABEL_19;
  }

LABEL_17:
  v32 = [v17 logMsgStateTypeForType:6];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:v32];
  v34 = [v26 objectForKeyedSubscript:v33];

  if (v34)
  {
    goto LABEL_21;
  }

  v31 = 0;
LABEL_19:
  v35 = [v17 stateForType:6];
  v34 = [v35 copy];

  if ((v31 & 1) == 0)
  {
LABEL_21:
    v37 = [v17 logMsgStateTypeForType:30];
    v38 = [MEMORY[0x1E696AD98] numberWithInt:v37];
    v36 = [v26 objectForKeyedSubscript:v38];

    v98 = v36;
    if (v36)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  LOBYTE(v36) = 1;
LABEL_22:
  v39 = [v17 stateForType:30];
  v98 = [v39 copy];

  if (v36)
  {
    v40 = 1;
    goto LABEL_26;
  }

LABEL_24:
  v41 = [v17 logMsgStateTypeForType:1];
  v42 = [MEMORY[0x1E696AD98] numberWithInt:v41];
  v43 = [v26 objectForKeyedSubscript:v42];

  v99 = v43;
  if (v43)
  {
    goto LABEL_27;
  }

  v40 = 0;
LABEL_26:
  LOBYTE(v44) = 1;
  v45 = [v17 stateForType:1];
  v99 = [v45 copy];

  if ((v40 & 1) == 0)
  {
LABEL_27:
    v46 = [v17 logMsgStateTypeForType:3];
    v47 = [MEMORY[0x1E696AD98] numberWithInt:v46];
    v44 = [v26 objectForKeyedSubscript:v47];

    v100 = v44;
    if (v44)
    {
      goto LABEL_30;
    }
  }

  v48 = [v17 stateForType:3];
  v100 = [v48 copy];

  if (v44)
  {
    v49 = 1;
    goto LABEL_32;
  }

LABEL_30:
  v50 = [v17 logMsgStateTypeForType:42];
  v51 = [MEMORY[0x1E696AD98] numberWithInt:v50];
  v52 = [v26 objectForKeyedSubscript:v51];

  if (v52)
  {
    goto LABEL_34;
  }

  v49 = 0;
LABEL_32:
  v53 = [v17 stateForType:42];
  v52 = [v53 copy];

  if (v49)
  {
    v93 = v34;
    v54 = 1;
    goto LABEL_36;
  }

LABEL_34:
  v93 = v34;
  v55 = [v17 logMsgStateTypeForType:70];
  v56 = [MEMORY[0x1E696AD98] numberWithInt:v55];
  v57 = [v26 objectForKeyedSubscript:v56];

  if (v57)
  {
    goto LABEL_38;
  }

  v54 = 0;
LABEL_36:
  v58 = [v17 stateForType:70];
  v57 = [v58 copy];

  if (v54)
  {
    v59 = 1;
    goto LABEL_40;
  }

LABEL_38:
  v60 = [v17 logMsgStateTypeForType:69];
  v61 = [MEMORY[0x1E696AD98] numberWithInt:v60];
  v62 = [v26 objectForKeyedSubscript:v61];

  if (v62)
  {
    goto LABEL_41;
  }

  v59 = 0;
LABEL_40:
  v63 = [v17 stateForType:69];
  v62 = [v63 copy];

  if (v59)
  {
LABEL_42:
    v67 = [v17 stateForType:17];
    v66 = [v67 copy];

    goto LABEL_43;
  }

LABEL_41:
  v64 = [v17 logMsgStateTypeForType:17];
  v65 = [MEMORY[0x1E696AD98] numberWithInt:v64];
  v66 = [v26 objectForKeyedSubscript:v65];

  if (!v66)
  {
    goto LABEL_42;
  }

LABEL_43:
  v68 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v68 setEventType:1];
  v69 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v68 setUserActionEvent:v69];

  v70 = [v68 userActionEvent];
  [v70 setUserActionEventAction:a3];

  v71 = [v68 userActionEvent];
  [v71 setUserActionEventTarget:a4];

  v72 = [v68 userActionEvent];
  [v72 setUserActionEventValue:v96];

  v73 = [v68 userActionEvent];
  [v73 setActionRichProviderId:v95];

  if (v15 || v101 || v102)
  {
    v74 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v75 = [v68 userActionEvent];
    [v75 setModuleInfo:v74];

    if (v97)
    {
      v76 = [v97 intValue];
      v77 = [v68 userActionEvent];
      v78 = [v77 moduleInfo];
      [v78 setType:v76];
    }

    if (v101)
    {
      v79 = [v68 userActionEvent];
      v80 = [v79 moduleInfo];
      [v80 setModuleMetadata:v101];
    }

    if (v102)
    {
      v81 = [v68 userActionEvent];
      v82 = [v81 moduleInfo];
      [v82 setClassification:v102];
    }
  }

  if (v94)
  {
    [v68 addLogMsgState:?];
  }

  if (v98)
  {
    [v68 addLogMsgState:?];
  }

  if (v99)
  {
    [v68 addLogMsgState:v99];
  }

  if (v100)
  {
    [v68 addLogMsgState:?];
  }

  if (v52)
  {
    [v68 addLogMsgState:v52];
  }

  if (v66)
  {
    [v68 addLogMsgState:v66];
  }

  if (v93)
  {
    [v68 addLogMsgState:v93];
  }

  if (v62)
  {
    [v68 addLogMsgState:v62];
  }

  if (v57)
  {
    [v68 addLogMsgState:v57];
  }

  v83 = +[GEOAPStateFactory sharedFactory];
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __208__GEOAPPortal_UserActionCodeGen__captureOfflineSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v103[3] = &unk_1E7953B38;
  v105 = v91;
  v106 = v90;
  v104 = v68;
  v84 = v91;
  v85 = v90;
  v86 = v68;
  [v83 sessionStateForType:8 callback:v103];

  v87 = *MEMORY[0x1E69E9840];
}

uint64_t __208__GEOAPPortal_UserActionCodeGen__captureOfflineSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

uint64_t __208__GEOAPPortal_UserActionCodeGen__captureAccountSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

uint64_t __183__GEOAPPortal_UserActionCodeGen__captureStandardShortWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureRapSessionlessUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v112 = *MEMORY[0x1E69E9840];
  v96 = a5;
  v15 = a6;
  v101 = a7;
  v102 = a8;
  v95 = a9;
  v16 = a10;
  v91 = a11;
  v90 = a12;
  v17 = +[GEOAPStateFactory sharedFactory];
  v97 = v15;
  v92 = v16;
  if ([v16 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v107 objects:v111 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v108;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v108 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v107 + 1) + 8 * i);
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "stateType")}];
          [v18 setObject:v24 forKeyedSubscript:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v107 objects:v111 count:16];
      }

      while (v21);
    }

    v26 = [v18 copy];
    if (v26)
    {
      v27 = [v17 logMsgStateTypeForType:2];
      v28 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      v29 = [v26 objectForKeyedSubscript:v28];

      if (v29)
      {
        v94 = v29;
        v15 = v97;
        goto LABEL_17;
      }
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    v15 = v97;
  }

  else
  {
    v26 = 0;
    LOBYTE(v29) = 1;
  }

  v30 = [v17 stateForType:2];
  v94 = [v30 copy];

  if (v29)
  {
    v31 = 1;
    goto LABEL_19;
  }

LABEL_17:
  v32 = [v17 logMsgStateTypeForType:6];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:v32];
  v34 = [v26 objectForKeyedSubscript:v33];

  if (v34)
  {
    goto LABEL_21;
  }

  v31 = 0;
LABEL_19:
  v35 = [v17 stateForType:6];
  v34 = [v35 copy];

  if ((v31 & 1) == 0)
  {
LABEL_21:
    v37 = [v17 logMsgStateTypeForType:30];
    v38 = [MEMORY[0x1E696AD98] numberWithInt:v37];
    v36 = [v26 objectForKeyedSubscript:v38];

    v98 = v36;
    if (v36)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  LOBYTE(v36) = 1;
LABEL_22:
  v39 = [v17 stateForType:30];
  v98 = [v39 copy];

  if (v36)
  {
    v40 = 1;
    goto LABEL_26;
  }

LABEL_24:
  v41 = [v17 logMsgStateTypeForType:1];
  v42 = [MEMORY[0x1E696AD98] numberWithInt:v41];
  v43 = [v26 objectForKeyedSubscript:v42];

  v99 = v43;
  if (v43)
  {
    goto LABEL_27;
  }

  v40 = 0;
LABEL_26:
  LOBYTE(v44) = 1;
  v45 = [v17 stateForType:1];
  v99 = [v45 copy];

  if ((v40 & 1) == 0)
  {
LABEL_27:
    v46 = [v17 logMsgStateTypeForType:3];
    v47 = [MEMORY[0x1E696AD98] numberWithInt:v46];
    v44 = [v26 objectForKeyedSubscript:v47];

    v100 = v44;
    if (v44)
    {
      goto LABEL_30;
    }
  }

  v48 = [v17 stateForType:3];
  v100 = [v48 copy];

  if (v44)
  {
    v49 = 1;
    goto LABEL_32;
  }

LABEL_30:
  v50 = [v17 logMsgStateTypeForType:42];
  v51 = [MEMORY[0x1E696AD98] numberWithInt:v50];
  v52 = [v26 objectForKeyedSubscript:v51];

  if (v52)
  {
    goto LABEL_34;
  }

  v49 = 0;
LABEL_32:
  v53 = [v17 stateForType:42];
  v52 = [v53 copy];

  if (v49)
  {
    v93 = v34;
    v54 = 1;
    goto LABEL_36;
  }

LABEL_34:
  v93 = v34;
  v55 = [v17 logMsgStateTypeForType:70];
  v56 = [MEMORY[0x1E696AD98] numberWithInt:v55];
  v57 = [v26 objectForKeyedSubscript:v56];

  if (v57)
  {
    goto LABEL_38;
  }

  v54 = 0;
LABEL_36:
  v58 = [v17 stateForType:70];
  v57 = [v58 copy];

  if (v54)
  {
    v59 = 1;
    goto LABEL_40;
  }

LABEL_38:
  v60 = [v17 logMsgStateTypeForType:67];
  v61 = [MEMORY[0x1E696AD98] numberWithInt:v60];
  v62 = [v26 objectForKeyedSubscript:v61];

  if (v62)
  {
    goto LABEL_41;
  }

  v59 = 0;
LABEL_40:
  v63 = [v17 stateForType:67];
  v62 = [v63 copy];

  if (v59)
  {
LABEL_42:
    v67 = [v17 stateForType:51];
    v66 = [v67 copy];

    goto LABEL_43;
  }

LABEL_41:
  v64 = [v17 logMsgStateTypeForType:51];
  v65 = [MEMORY[0x1E696AD98] numberWithInt:v64];
  v66 = [v26 objectForKeyedSubscript:v65];

  if (!v66)
  {
    goto LABEL_42;
  }

LABEL_43:
  v68 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v68 setEventType:1];
  v69 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v68 setUserActionEvent:v69];

  v70 = [v68 userActionEvent];
  [v70 setUserActionEventAction:a3];

  v71 = [v68 userActionEvent];
  [v71 setUserActionEventTarget:a4];

  v72 = [v68 userActionEvent];
  [v72 setUserActionEventValue:v96];

  v73 = [v68 userActionEvent];
  [v73 setActionRichProviderId:v95];

  if (v15 || v101 || v102)
  {
    v74 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v75 = [v68 userActionEvent];
    [v75 setModuleInfo:v74];

    if (v97)
    {
      v76 = [v97 intValue];
      v77 = [v68 userActionEvent];
      v78 = [v77 moduleInfo];
      [v78 setType:v76];
    }

    if (v101)
    {
      v79 = [v68 userActionEvent];
      v80 = [v79 moduleInfo];
      [v80 setModuleMetadata:v101];
    }

    if (v102)
    {
      v81 = [v68 userActionEvent];
      v82 = [v81 moduleInfo];
      [v82 setClassification:v102];
    }
  }

  if (v94)
  {
    [v68 addLogMsgState:?];
  }

  if (v98)
  {
    [v68 addLogMsgState:?];
  }

  if (v99)
  {
    [v68 addLogMsgState:v99];
  }

  if (v100)
  {
    [v68 addLogMsgState:?];
  }

  if (v52)
  {
    [v68 addLogMsgState:v52];
  }

  if (v93)
  {
    [v68 addLogMsgState:v93];
  }

  if (v66)
  {
    [v68 addLogMsgState:v66];
  }

  if (v62)
  {
    [v68 addLogMsgState:v62];
  }

  if (v57)
  {
    [v68 addLogMsgState:v57];
  }

  v83 = +[GEOAPStateFactory sharedFactory];
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __204__GEOAPPortal_UserActionCodeGen__captureRapSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v103[3] = &unk_1E7953B38;
  v105 = v91;
  v106 = v90;
  v104 = v68;
  v84 = v91;
  v85 = v90;
  v86 = v68;
  [v83 sessionStateForType:7 callback:v103];

  v87 = *MEMORY[0x1E69E9840];
}

uint64_t __204__GEOAPPortal_UserActionCodeGen__captureRapSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureTransitShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v197 = *MEMORY[0x1E69E9840];
  v185 = a5;
  v15 = a6;
  v186 = a7;
  v187 = a8;
  v184 = a9;
  v16 = a10;
  v165 = a11;
  v164 = a12;
  v17 = +[GEOAPStateFactory sharedFactory];
  v166 = v16;
  v167 = v15;
  if ([v16 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v192 objects:v196 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v193;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v193 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v192 + 1) + 8 * i);
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "stateType")}];
          [v18 setObject:v24 forKeyedSubscript:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v192 objects:v196 count:16];
      }

      while (v21);
    }

    v26 = [v18 copy];
    if (v26)
    {
      v27 = [v17 logMsgStateTypeForType:65];
      v28 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      v29 = [v26 objectForKeyedSubscript:v28];

      if (v29)
      {
        v183 = v29;

        v15 = v167;
        goto LABEL_18;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v15 = v167;
  }

  else
  {
    v26 = 0;
    v30 = 1;
  }

  v31 = [v17 stateForType:65];
  v183 = [v31 copy];

  if (v30)
  {
    v32 = 1;
    goto LABEL_21;
  }

LABEL_18:
  v33 = [v17 logMsgStateTypeForType:5];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:v33];
  v35 = [v26 objectForKeyedSubscript:v34];

  if (v35)
  {
    v182 = v35;

    goto LABEL_23;
  }

  v32 = 0;
LABEL_21:
  v36 = [v17 stateForType:5];
  v182 = [v36 copy];

  if (v32)
  {
    v37 = 1;
    goto LABEL_26;
  }

LABEL_23:
  v38 = [v17 logMsgStateTypeForType:15];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:v38];
  v40 = [v26 objectForKeyedSubscript:v39];

  if (v40)
  {
    v181 = v40;

    goto LABEL_28;
  }

  v37 = 0;
LABEL_26:
  v41 = [v17 stateForType:15];
  v181 = [v41 copy];

  if (v37)
  {
    v42 = 1;
    goto LABEL_31;
  }

LABEL_28:
  v43 = [v17 logMsgStateTypeForType:35];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:v43];
  v45 = [v26 objectForKeyedSubscript:v44];

  if (v45)
  {
    v180 = v45;

    goto LABEL_33;
  }

  v42 = 0;
LABEL_31:
  v46 = [v17 stateForType:35];
  v180 = [v46 copy];

  if (v42)
  {
    v47 = 1;
    goto LABEL_36;
  }

LABEL_33:
  v48 = [v17 logMsgStateTypeForType:30];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:v48];
  v50 = [v26 objectForKeyedSubscript:v49];

  if (v50)
  {
    v179 = v50;

    goto LABEL_38;
  }

  v47 = 0;
LABEL_36:
  v51 = [v17 stateForType:30];
  v179 = [v51 copy];

  if (v47)
  {
    v52 = 1;
    goto LABEL_41;
  }

LABEL_38:
  v53 = [v17 logMsgStateTypeForType:1];
  v54 = [MEMORY[0x1E696AD98] numberWithInt:v53];
  v55 = [v26 objectForKeyedSubscript:v54];

  if (!v55)
  {
    v52 = 0;
LABEL_41:
    v56 = 1;
    v57 = [v17 stateForType:1];
    v178 = [v57 copy];

    if (v52)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v178 = v55;

LABEL_42:
  v58 = [v17 logMsgStateTypeForType:3];
  v59 = [MEMORY[0x1E696AD98] numberWithInt:v58];
  v60 = [v26 objectForKeyedSubscript:v59];

  if (v60)
  {
    v177 = v60;

    goto LABEL_47;
  }

  v56 = 0;
LABEL_45:
  v61 = [v17 stateForType:3];
  v177 = [v61 copy];

  if (v56)
  {
    v62 = 1;
    goto LABEL_50;
  }

LABEL_47:
  v63 = [v17 logMsgStateTypeForType:64];
  v64 = [MEMORY[0x1E696AD98] numberWithInt:v63];
  v65 = [v26 objectForKeyedSubscript:v64];

  if (v65)
  {
    v176 = v65;

    goto LABEL_52;
  }

  v62 = 0;
LABEL_50:
  v66 = [v17 stateForType:64];
  v176 = [v66 copy];

  if (v62)
  {
    v67 = 1;
    goto LABEL_55;
  }

LABEL_52:
  v68 = [v17 logMsgStateTypeForType:13];
  v69 = [MEMORY[0x1E696AD98] numberWithInt:v68];
  v70 = [v26 objectForKeyedSubscript:v69];

  if (v70)
  {
    v175 = v70;

    goto LABEL_57;
  }

  v67 = 0;
LABEL_55:
  v71 = [v17 stateForType:13];
  v175 = [v71 copy];

  if (v67)
  {
    v72 = 1;
    goto LABEL_60;
  }

LABEL_57:
  v73 = [v17 logMsgStateTypeForType:14];
  v74 = [MEMORY[0x1E696AD98] numberWithInt:v73];
  v75 = [v26 objectForKeyedSubscript:v74];

  if (v75)
  {
    v174 = v75;

    goto LABEL_62;
  }

  v72 = 0;
LABEL_60:
  v76 = [v17 stateForType:14];
  v174 = [v76 copy];

  if (v72)
  {
    v77 = 1;
    goto LABEL_65;
  }

LABEL_62:
  v78 = [v17 logMsgStateTypeForType:9];
  v79 = [MEMORY[0x1E696AD98] numberWithInt:v78];
  v80 = [v26 objectForKeyedSubscript:v79];

  if (v80)
  {
    v173 = v80;

    goto LABEL_67;
  }

  v77 = 0;
LABEL_65:
  v81 = [v17 stateForType:9];
  v173 = [v81 copy];

  if (v77)
  {
    v82 = 1;
    goto LABEL_70;
  }

LABEL_67:
  v83 = [v17 logMsgStateTypeForType:10];
  v84 = [MEMORY[0x1E696AD98] numberWithInt:v83];
  v85 = [v26 objectForKeyedSubscript:v84];

  if (v85)
  {
    v172 = v85;

    goto LABEL_72;
  }

  v82 = 0;
LABEL_70:
  v86 = [v17 stateForType:10];
  v172 = [v86 copy];

  if (v82)
  {
    v87 = 1;
    goto LABEL_75;
  }

LABEL_72:
  v88 = [v17 logMsgStateTypeForType:20];
  v89 = [MEMORY[0x1E696AD98] numberWithInt:v88];
  v90 = [v26 objectForKeyedSubscript:v89];

  if (v90)
  {
    v171 = v90;

    goto LABEL_77;
  }

  v87 = 0;
LABEL_75:
  v91 = [v17 stateForType:20];
  v171 = [v91 copy];

  if (v87)
  {
    v92 = 1;
    goto LABEL_80;
  }

LABEL_77:
  v93 = [v17 logMsgStateTypeForType:42];
  v94 = [MEMORY[0x1E696AD98] numberWithInt:v93];
  v95 = [v26 objectForKeyedSubscript:v94];

  if (v95)
  {
    v170 = v95;

    goto LABEL_82;
  }

  v92 = 0;
LABEL_80:
  v96 = [v17 stateForType:42];
  v170 = [v96 copy];

  if (v92)
  {
    v97 = 1;
    goto LABEL_85;
  }

LABEL_82:
  v98 = [v17 logMsgStateTypeForType:70];
  v99 = [MEMORY[0x1E696AD98] numberWithInt:v98];
  v100 = [v26 objectForKeyedSubscript:v99];

  if (v100)
  {
    v160 = v100;

    goto LABEL_87;
  }

  v97 = 0;
LABEL_85:
  v101 = [v17 stateForType:70];
  v160 = [v101 copy];

  if (v97)
  {
    v102 = 1;
    goto LABEL_90;
  }

LABEL_87:
  v103 = [v17 logMsgStateTypeForType:{7, v160}];
  v104 = [MEMORY[0x1E696AD98] numberWithInt:v103];
  v105 = [v26 objectForKeyedSubscript:v104];

  if (v105)
  {
    v106 = v105;

    goto LABEL_92;
  }

  v102 = 0;
LABEL_90:
  v107 = [v17 stateForType:{7, v160}];
  v106 = [v107 copy];

  if (v102)
  {
    v108 = 1;
    goto LABEL_95;
  }

LABEL_92:
  v109 = [v17 logMsgStateTypeForType:17];
  v110 = [MEMORY[0x1E696AD98] numberWithInt:v109];
  v111 = [v26 objectForKeyedSubscript:v110];

  if (v111)
  {
    v112 = v111;

    goto LABEL_97;
  }

  v108 = 0;
LABEL_95:
  v113 = [v17 stateForType:17];
  v112 = [v113 copy];

  if (v108)
  {
    v114 = 1;
    goto LABEL_100;
  }

LABEL_97:
  v115 = [v17 logMsgStateTypeForType:19];
  v116 = [MEMORY[0x1E696AD98] numberWithInt:v115];
  v117 = [v26 objectForKeyedSubscript:v116];

  if (v117)
  {
    v118 = v117;

    goto LABEL_102;
  }

  v114 = 0;
LABEL_100:
  v119 = [v17 stateForType:19];
  v118 = [v119 copy];

  if (v114)
  {
    v120 = 1;
    goto LABEL_105;
  }

LABEL_102:
  v121 = [v17 logMsgStateTypeForType:27];
  v122 = [MEMORY[0x1E696AD98] numberWithInt:v121];
  v123 = [v26 objectForKeyedSubscript:v122];

  if (v123)
  {
    v124 = v123;

    v125 = v112;
    v126 = v124;
    goto LABEL_107;
  }

  v120 = 0;
LABEL_105:
  v125 = v112;
  v127 = [v17 stateForType:27];
  v126 = [v127 copy];

  if (v120)
  {
    v128 = 1;
    goto LABEL_110;
  }

LABEL_107:
  v129 = [v17 logMsgStateTypeForType:24];
  v130 = [MEMORY[0x1E696AD98] numberWithInt:v129];
  v131 = [v26 objectForKeyedSubscript:v130];

  if (v131)
  {
    v169 = v131;

    goto LABEL_111;
  }

  v128 = 0;
LABEL_110:
  v132 = [v17 stateForType:24];
  v169 = [v132 copy];

  if (v128)
  {
LABEL_113:
    v136 = [v17 stateForType:53];
    v168 = [v136 copy];

    goto LABEL_114;
  }

LABEL_111:
  v133 = [v17 logMsgStateTypeForType:53];
  v134 = [MEMORY[0x1E696AD98] numberWithInt:v133];
  v135 = [v26 objectForKeyedSubscript:v134];

  if (!v135)
  {
    goto LABEL_113;
  }

  v136 = v135;
  v168 = v136;
LABEL_114:

  v137 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v137 setEventType:1];
  v138 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v137 setUserActionEvent:v138];

  v139 = [v137 userActionEvent];
  [v139 setUserActionEventAction:a3];

  v140 = [v137 userActionEvent];
  [v140 setUserActionEventTarget:a4];

  v141 = [v137 userActionEvent];
  [v141 setUserActionEventValue:v185];

  v142 = [v137 userActionEvent];
  [v142 setActionRichProviderId:v184];

  if (v15 || v186 || v187)
  {
    v143 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v144 = [v137 userActionEvent];
    [v144 setModuleInfo:v143];

    if (v15)
    {
      v145 = [v15 intValue];
      v146 = [v137 userActionEvent];
      v147 = [v146 moduleInfo];
      [v147 setType:v145];
    }

    if (v186)
    {
      v148 = [v137 userActionEvent];
      v149 = [v148 moduleInfo];
      [v149 setModuleMetadata:v186];
    }

    if (v187)
    {
      v150 = [v137 userActionEvent];
      v151 = [v150 moduleInfo];
      [v151 setClassification:v187];
    }
  }

  if (v183)
  {
    [v137 addLogMsgState:?];
  }

  if (v182)
  {
    [v137 addLogMsgState:?];
  }

  if (v181)
  {
    [v137 addLogMsgState:v181];
  }

  if (v180)
  {
    [v137 addLogMsgState:?];
  }

  if (v179)
  {
    [v137 addLogMsgState:?];
  }

  if (v178)
  {
    [v137 addLogMsgState:v178];
  }

  if (v177)
  {
    [v137 addLogMsgState:?];
  }

  if (v176)
  {
    [v137 addLogMsgState:?];
  }

  if (v175)
  {
    [v137 addLogMsgState:v175];
  }

  if (v174)
  {
    [v137 addLogMsgState:?];
  }

  if (v173)
  {
    [v137 addLogMsgState:?];
  }

  if (v172)
  {
    [v137 addLogMsgState:v172];
  }

  if (v171)
  {
    [v137 addLogMsgState:?];
  }

  if (v170)
  {
    [v137 addLogMsgState:?];
  }

  if (v106)
  {
    [v137 addLogMsgState:v106];
  }

  if (v125)
  {
    [v137 addLogMsgState:v125];
  }

  if (v118)
  {
    [v137 addLogMsgState:v118];
  }

  v163 = v17;
  if (v126)
  {
    [v137 addLogMsgState:v126];
  }

  v152 = v26;
  if (v169)
  {
    [v137 addLogMsgState:v169];
  }

  v153 = v125;
  if (v168)
  {
    [v137 addLogMsgState:?];
  }

  v154 = v106;
  if (v160)
  {
    [v137 addLogMsgState:v160];
  }

  v155 = +[GEOAPStateFactory sharedFactory];
  v188[0] = MEMORY[0x1E69E9820];
  v188[1] = 3221225472;
  v188[2] = __202__GEOAPPortal_UserActionCodeGen__captureTransitShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v188[3] = &unk_1E7953B38;
  v156 = v137;
  v189 = v156;
  v157 = v164;
  v191 = v157;
  v158 = v165;
  v190 = v158;
  [v155 sessionStateForType:6 callback:v188];

  v159 = *MEMORY[0x1E69E9840];
}

uint64_t __202__GEOAPPortal_UserActionCodeGen__captureTransitShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

uint64_t __207__GEOAPPortal_UserActionCodeGen__capturePredExSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)capturePredExShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v182 = *MEMORY[0x1E69E9840];
  v168 = a5;
  v170 = a6;
  v169 = a7;
  v172 = a8;
  v167 = a9;
  v15 = a10;
  v152 = a11;
  v151 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  v153 = v15;
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v30 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v177 objects:v181 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v178;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v178 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v177 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v177 objects:v181 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:65];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  if (v28)
  {
    v29 = v28;

    goto LABEL_16;
  }

  v30 = 0;
LABEL_14:
  v31 = [v16 stateForType:65];
  v29 = [v31 copy];

  if (v30)
  {
    v32 = 1;
    goto LABEL_19;
  }

LABEL_16:
  v33 = [v16 logMsgStateTypeForType:5];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:v33];
  v35 = [v25 objectForKeyedSubscript:v34];

  if (v35)
  {
    v166 = v35;

    goto LABEL_21;
  }

  v32 = 0;
LABEL_19:
  v36 = [v16 stateForType:5];
  v166 = [v36 copy];

  if (v32)
  {
    v37 = 1;
    goto LABEL_24;
  }

LABEL_21:
  v38 = [v16 logMsgStateTypeForType:15];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:v38];
  v40 = [v25 objectForKeyedSubscript:v39];

  if (v40)
  {
    v165 = v40;

    goto LABEL_26;
  }

  v37 = 0;
LABEL_24:
  v41 = [v16 stateForType:15];
  v165 = [v41 copy];

  if (v37)
  {
    v42 = 1;
    goto LABEL_29;
  }

LABEL_26:
  v43 = [v16 logMsgStateTypeForType:35];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:v43];
  v45 = [v25 objectForKeyedSubscript:v44];

  if (v45)
  {
    v164 = v45;

    goto LABEL_31;
  }

  v42 = 0;
LABEL_29:
  v46 = [v16 stateForType:35];
  v164 = [v46 copy];

  if (v42)
  {
    v47 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v48 = [v16 logMsgStateTypeForType:30];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:v48];
  v50 = [v25 objectForKeyedSubscript:v49];

  if (v50)
  {
    v163 = v50;

    goto LABEL_36;
  }

  v47 = 0;
LABEL_34:
  v51 = [v16 stateForType:30];
  v163 = [v51 copy];

  if (v47)
  {
    v52 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v53 = [v16 logMsgStateTypeForType:1];
  v54 = [MEMORY[0x1E696AD98] numberWithInt:v53];
  v55 = [v25 objectForKeyedSubscript:v54];

  if (!v55)
  {
    v52 = 0;
LABEL_39:
    v56 = 1;
    v57 = [v16 stateForType:1];
    v162 = [v57 copy];

    if (v52)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v162 = v55;

LABEL_40:
  v58 = [v16 logMsgStateTypeForType:3];
  v59 = [MEMORY[0x1E696AD98] numberWithInt:v58];
  v60 = [v25 objectForKeyedSubscript:v59];

  if (v60)
  {
    v61 = v60;

    goto LABEL_45;
  }

  v56 = 0;
LABEL_43:
  v62 = [v16 stateForType:3];
  v61 = [v62 copy];

  if (v56)
  {
    v63 = 1;
    goto LABEL_48;
  }

LABEL_45:
  v64 = [v16 logMsgStateTypeForType:64];
  v65 = [MEMORY[0x1E696AD98] numberWithInt:v64];
  v66 = [v25 objectForKeyedSubscript:v65];

  if (v66)
  {
    v161 = v66;

    goto LABEL_50;
  }

  v63 = 0;
LABEL_48:
  v67 = [v16 stateForType:64];
  v161 = [v67 copy];

  if (v63)
  {
    v68 = 1;
    goto LABEL_53;
  }

LABEL_50:
  v69 = [v16 logMsgStateTypeForType:13];
  v70 = [MEMORY[0x1E696AD98] numberWithInt:v69];
  v71 = [v25 objectForKeyedSubscript:v70];

  if (v71)
  {
    v160 = v71;

    goto LABEL_55;
  }

  v68 = 0;
LABEL_53:
  v72 = [v16 stateForType:13];
  v160 = [v72 copy];

  if (v68)
  {
    v73 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v74 = [v16 logMsgStateTypeForType:14];
  v75 = [MEMORY[0x1E696AD98] numberWithInt:v74];
  v76 = [v25 objectForKeyedSubscript:v75];

  if (v76)
  {
    v159 = v76;

    goto LABEL_60;
  }

  v73 = 0;
LABEL_58:
  v77 = [v16 stateForType:14];
  v159 = [v77 copy];

  if (v73)
  {
    v78 = 1;
    goto LABEL_63;
  }

LABEL_60:
  v79 = [v16 logMsgStateTypeForType:9];
  v80 = [MEMORY[0x1E696AD98] numberWithInt:v79];
  v81 = [v25 objectForKeyedSubscript:v80];

  if (v81)
  {
    v158 = v81;

    goto LABEL_65;
  }

  v78 = 0;
LABEL_63:
  v82 = [v16 stateForType:9];
  v158 = [v82 copy];

  if (v78)
  {
    v83 = 1;
    goto LABEL_68;
  }

LABEL_65:
  v84 = [v16 logMsgStateTypeForType:10];
  v85 = [MEMORY[0x1E696AD98] numberWithInt:v84];
  v86 = [v25 objectForKeyedSubscript:v85];

  if (v86)
  {
    v157 = v86;

    goto LABEL_70;
  }

  v83 = 0;
LABEL_68:
  v87 = [v16 stateForType:10];
  v157 = [v87 copy];

  if (v83)
  {
    v88 = 1;
    goto LABEL_73;
  }

LABEL_70:
  v89 = [v16 logMsgStateTypeForType:20];
  v90 = [MEMORY[0x1E696AD98] numberWithInt:v89];
  v91 = [v25 objectForKeyedSubscript:v90];

  if (v91)
  {
    v156 = v91;

    goto LABEL_75;
  }

  v88 = 0;
LABEL_73:
  v92 = [v16 stateForType:20];
  v156 = [v92 copy];

  if (v88)
  {
    v93 = 1;
    goto LABEL_78;
  }

LABEL_75:
  v94 = [v16 logMsgStateTypeForType:42];
  v95 = [MEMORY[0x1E696AD98] numberWithInt:v94];
  v96 = [v25 objectForKeyedSubscript:v95];

  if (v96)
  {
    v155 = v96;

    goto LABEL_80;
  }

  v93 = 0;
LABEL_78:
  v97 = [v16 stateForType:42];
  v155 = [v97 copy];

  if (v93)
  {
    v98 = 1;
    goto LABEL_83;
  }

LABEL_80:
  v99 = [v16 logMsgStateTypeForType:70];
  v100 = [MEMORY[0x1E696AD98] numberWithInt:v99];
  v101 = [v25 objectForKeyedSubscript:v100];

  if (v101)
  {
    v171 = v29;
    v147 = v101;

    goto LABEL_86;
  }

  v98 = 0;
LABEL_83:
  v102 = [v16 stateForType:70];
  v147 = [v102 copy];

  if (v98)
  {
    v103 = 1;
    goto LABEL_89;
  }

  v171 = v29;
LABEL_86:
  v104 = [v16 logMsgStateTypeForType:{7, v147}];
  v105 = [MEMORY[0x1E696AD98] numberWithInt:v104];
  v106 = [v25 objectForKeyedSubscript:v105];

  if (v106)
  {
    v107 = v106;

    goto LABEL_91;
  }

  v103 = 0;
  v29 = v171;
LABEL_89:
  v108 = [v16 stateForType:{7, v147}];
  v107 = [v108 copy];

  v171 = v29;
  if (v103)
  {
    v109 = 1;
    goto LABEL_94;
  }

LABEL_91:
  v110 = [v16 logMsgStateTypeForType:17];
  v111 = [MEMORY[0x1E696AD98] numberWithInt:v110];
  v112 = [v25 objectForKeyedSubscript:v111];

  if (v112)
  {
    v154 = v112;

    goto LABEL_96;
  }

  v109 = 0;
LABEL_94:
  v113 = [v16 stateForType:17];
  v114 = [v113 copy];

  v154 = v114;
  if (v109)
  {
    v115 = 1;
    goto LABEL_99;
  }

LABEL_96:
  v116 = [v16 logMsgStateTypeForType:19];
  v117 = [MEMORY[0x1E696AD98] numberWithInt:v116];
  v118 = [v25 objectForKeyedSubscript:v117];

  if (v118)
  {
    v119 = v118;

    goto LABEL_100;
  }

  v115 = 0;
LABEL_99:
  v120 = [v16 stateForType:19];
  v119 = [v120 copy];

  if (v115)
  {
LABEL_102:
    v148 = v25;
    v124 = [v16 stateForType:27];
    v125 = [v124 copy];

    goto LABEL_103;
  }

LABEL_100:
  v121 = [v16 logMsgStateTypeForType:27];
  v122 = [MEMORY[0x1E696AD98] numberWithInt:v121];
  v123 = [v25 objectForKeyedSubscript:v122];

  if (!v123)
  {
    goto LABEL_102;
  }

  v148 = v25;
  v124 = v123;
  v125 = v124;
LABEL_103:

  v126 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v126 setEventType:1];
  v127 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v126 setUserActionEvent:v127];

  v128 = [v126 userActionEvent];
  [v128 setUserActionEventAction:a3];

  v129 = [v126 userActionEvent];
  [v129 setUserActionEventTarget:a4];

  v130 = [v126 userActionEvent];
  [v130 setUserActionEventValue:v168];

  v131 = [v126 userActionEvent];
  [v131 setActionRichProviderId:v167];

  v132 = v61;
  if (v170 || v169 || v172)
  {
    v133 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v134 = [v126 userActionEvent];
    [v134 setModuleInfo:v133];

    if (v170)
    {
      v135 = [v170 intValue];
      v136 = [v126 userActionEvent];
      v137 = [v136 moduleInfo];
      [v137 setType:v135];
    }

    if (v169)
    {
      v138 = [v126 userActionEvent];
      v139 = [v138 moduleInfo];
      [v139 setModuleMetadata:v169];
    }

    v61 = v132;
    if (v172)
    {
      v140 = [v126 userActionEvent];
      v141 = [v140 moduleInfo];
      [v141 setClassification:v172];

      v61 = v132;
    }
  }

  if (v171)
  {
    [v126 addLogMsgState:?];
  }

  if (v166)
  {
    [v126 addLogMsgState:v166];
  }

  if (v165)
  {
    [v126 addLogMsgState:?];
  }

  if (v164)
  {
    [v126 addLogMsgState:?];
  }

  if (v163)
  {
    [v126 addLogMsgState:v163];
  }

  if (v162)
  {
    [v126 addLogMsgState:?];
  }

  if (v61)
  {
    [v126 addLogMsgState:v61];
  }

  if (v161)
  {
    [v126 addLogMsgState:v161];
  }

  if (v160)
  {
    [v126 addLogMsgState:?];
  }

  if (v159)
  {
    [v126 addLogMsgState:?];
  }

  if (v158)
  {
    [v126 addLogMsgState:v158];
  }

  if (v157)
  {
    [v126 addLogMsgState:?];
  }

  if (v156)
  {
    [v126 addLogMsgState:?];
  }

  if (v155)
  {
    [v126 addLogMsgState:v155];
  }

  if (v107)
  {
    [v126 addLogMsgState:v107];
  }

  if (v154)
  {
    [v126 addLogMsgState:v154];
  }

  if (v119)
  {
    [v126 addLogMsgState:v119];
  }

  if (v125)
  {
    [v126 addLogMsgState:v125];
  }

  if (v147)
  {
    [v126 addLogMsgState:v147];
  }

  v142 = +[GEOAPStateFactory sharedFactory];
  v173[0] = MEMORY[0x1E69E9820];
  v173[1] = 3221225472;
  v173[2] = __201__GEOAPPortal_UserActionCodeGen__capturePredExShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v173[3] = &unk_1E7953B38;
  v143 = v126;
  v174 = v143;
  v144 = v151;
  v176 = v144;
  v145 = v152;
  v175 = v145;
  [v142 sessionStateForType:6 callback:v173];

  v146 = *MEMORY[0x1E69E9840];
}

uint64_t __201__GEOAPPortal_UserActionCodeGen__capturePredExShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureUGCSessionlessUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v111 = *MEMORY[0x1E69E9840];
  v94 = a5;
  v15 = a6;
  v100 = a7;
  v101 = a8;
  v93 = a9;
  v16 = a10;
  v90 = a11;
  v89 = a12;
  v17 = +[GEOAPStateFactory sharedFactory];
  v95 = v15;
  v91 = v16;
  if ([v16 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v106 objects:v110 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v107;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v107 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v106 + 1) + 8 * i);
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "stateType")}];
          [v18 setObject:v24 forKeyedSubscript:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v106 objects:v110 count:16];
      }

      while (v21);
    }

    v26 = [v18 copy];
    if (v26)
    {
      v27 = [v17 logMsgStateTypeForType:2];
      v28 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      v29 = [v26 objectForKeyedSubscript:v28];

      if (v29)
      {
        v92 = v29;
        v15 = v95;
        goto LABEL_17;
      }
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    v15 = v95;
  }

  else
  {
    v26 = 0;
    LOBYTE(v29) = 1;
  }

  v30 = [v17 stateForType:2];
  v92 = [v30 copy];

  if ((v29 & 1) == 0)
  {
LABEL_17:
    v32 = [v17 logMsgStateTypeForType:30];
    v33 = [MEMORY[0x1E696AD98] numberWithInt:v32];
    v31 = [v26 objectForKeyedSubscript:v33];

    v96 = v31;
    if (v31)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  LOBYTE(v31) = 1;
LABEL_18:
  v34 = [v17 stateForType:30];
  v96 = [v34 copy];

  if (v31)
  {
    v35 = 1;
    goto LABEL_22;
  }

LABEL_20:
  v36 = [v17 logMsgStateTypeForType:1];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:v36];
  v38 = [v26 objectForKeyedSubscript:v37];

  v97 = v38;
  if (!v38)
  {
    v35 = 0;
LABEL_22:
    LOBYTE(v39) = 1;
    v40 = [v17 stateForType:1];
    v97 = [v40 copy];

    if (v35)
    {
      goto LABEL_24;
    }
  }

  v41 = [v17 logMsgStateTypeForType:3];
  v42 = [MEMORY[0x1E696AD98] numberWithInt:v41];
  v39 = [v26 objectForKeyedSubscript:v42];

  v98 = v39;
  if (v39)
  {
    goto LABEL_26;
  }

LABEL_24:
  v43 = [v17 stateForType:3];
  v98 = [v43 copy];

  if ((v39 & 1) == 0)
  {
LABEL_26:
    v45 = [v17 logMsgStateTypeForType:42];
    v46 = [MEMORY[0x1E696AD98] numberWithInt:v45];
    v44 = [v26 objectForKeyedSubscript:v46];

    v99 = v44;
    if (v44)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  LOBYTE(v44) = 1;
LABEL_27:
  v47 = [v17 stateForType:42];
  v99 = [v47 copy];

  if (v44)
  {
    v48 = 1;
    goto LABEL_31;
  }

LABEL_29:
  v49 = [v17 logMsgStateTypeForType:70];
  v50 = [MEMORY[0x1E696AD98] numberWithInt:v49];
  v51 = [v26 objectForKeyedSubscript:v50];

  if (v51)
  {
    goto LABEL_33;
  }

  v48 = 0;
LABEL_31:
  v52 = [v17 stateForType:70];
  v51 = [v52 copy];

  if (v48)
  {
    v53 = 1;
    goto LABEL_35;
  }

LABEL_33:
  v54 = [v17 logMsgStateTypeForType:60];
  v55 = [MEMORY[0x1E696AD98] numberWithInt:v54];
  v56 = [v26 objectForKeyedSubscript:v55];

  if (v56)
  {
    goto LABEL_37;
  }

  v53 = 0;
LABEL_35:
  v57 = [v17 stateForType:60];
  v56 = [v57 copy];

  if (v53)
  {
    v58 = 1;
    goto LABEL_39;
  }

LABEL_37:
  v59 = [v17 logMsgStateTypeForType:62];
  v60 = [MEMORY[0x1E696AD98] numberWithInt:v59];
  v61 = [v26 objectForKeyedSubscript:v60];

  if (v61)
  {
    goto LABEL_40;
  }

  v58 = 0;
LABEL_39:
  v62 = [v17 stateForType:62];
  v61 = [v62 copy];

  if (v58)
  {
LABEL_41:
    v66 = [v17 stateForType:61];
    v65 = [v66 copy];

    goto LABEL_42;
  }

LABEL_40:
  v63 = [v17 logMsgStateTypeForType:61];
  v64 = [MEMORY[0x1E696AD98] numberWithInt:v63];
  v65 = [v26 objectForKeyedSubscript:v64];

  if (!v65)
  {
    goto LABEL_41;
  }

LABEL_42:
  v67 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v67 setEventType:1];
  v68 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v67 setUserActionEvent:v68];

  v69 = [v67 userActionEvent];
  [v69 setUserActionEventAction:a3];

  v70 = [v67 userActionEvent];
  [v70 setUserActionEventTarget:a4];

  v71 = [v67 userActionEvent];
  [v71 setUserActionEventValue:v94];

  v72 = [v67 userActionEvent];
  [v72 setActionRichProviderId:v93];

  if (v15 || v100 || v101)
  {
    v73 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v74 = [v67 userActionEvent];
    [v74 setModuleInfo:v73];

    if (v95)
    {
      v75 = [v95 intValue];
      v76 = [v67 userActionEvent];
      v77 = [v76 moduleInfo];
      [v77 setType:v75];
    }

    if (v100)
    {
      v78 = [v67 userActionEvent];
      v79 = [v78 moduleInfo];
      [v79 setModuleMetadata:v100];
    }

    if (v101)
    {
      v80 = [v67 userActionEvent];
      v81 = [v80 moduleInfo];
      [v81 setClassification:v101];
    }
  }

  if (v92)
  {
    [v67 addLogMsgState:?];
  }

  if (v96)
  {
    [v67 addLogMsgState:?];
  }

  if (v97)
  {
    [v67 addLogMsgState:v97];
  }

  if (v98)
  {
    [v67 addLogMsgState:v98];
  }

  if (v99)
  {
    [v67 addLogMsgState:?];
  }

  if (v56)
  {
    [v67 addLogMsgState:v56];
  }

  if (v65)
  {
    [v67 addLogMsgState:v65];
  }

  if (v61)
  {
    [v67 addLogMsgState:v61];
  }

  if (v51)
  {
    [v67 addLogMsgState:v51];
  }

  v82 = +[GEOAPStateFactory sharedFactory];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __204__GEOAPPortal_UserActionCodeGen__captureUGCSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v102[3] = &unk_1E7953B38;
  v104 = v90;
  v105 = v89;
  v103 = v67;
  v83 = v90;
  v84 = v89;
  v85 = v67;
  [v82 sessionStateForType:7 callback:v102];

  v86 = *MEMORY[0x1E69E9840];
}

uint64_t __204__GEOAPPortal_UserActionCodeGen__captureUGCSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureUGCShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v182 = *MEMORY[0x1E69E9840];
  v168 = a5;
  v171 = a6;
  v169 = a7;
  v172 = a8;
  v167 = a9;
  v15 = a10;
  v149 = a11;
  v148 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  v150 = v15;
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v177 objects:v181 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v178;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v178 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v177 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v177 objects:v181 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:65];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  if (v28)
  {
    v166 = v28;

    goto LABEL_16;
  }

  v29 = 0;
LABEL_14:
  v30 = [v16 stateForType:65];
  v166 = [v30 copy];

  if (v29)
  {
    v31 = 1;
    goto LABEL_19;
  }

LABEL_16:
  v32 = [v16 logMsgStateTypeForType:5];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:v32];
  v34 = [v25 objectForKeyedSubscript:v33];

  if (v34)
  {
    v35 = v34;

    goto LABEL_21;
  }

  v31 = 0;
LABEL_19:
  v36 = [v16 stateForType:5];
  v35 = [v36 copy];

  if (v31)
  {
    v37 = 1;
    goto LABEL_24;
  }

LABEL_21:
  v38 = [v16 logMsgStateTypeForType:15];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:v38];
  v40 = [v25 objectForKeyedSubscript:v39];

  if (v40)
  {
    v164 = v40;

    goto LABEL_26;
  }

  v37 = 0;
LABEL_24:
  v41 = [v16 stateForType:15];
  v164 = [v41 copy];

  if (v37)
  {
    v42 = 1;
    goto LABEL_29;
  }

LABEL_26:
  v43 = [v16 logMsgStateTypeForType:35];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:v43];
  v45 = [v25 objectForKeyedSubscript:v44];

  if (v45)
  {
    v163 = v45;

    goto LABEL_31;
  }

  v42 = 0;
LABEL_29:
  v46 = [v16 stateForType:35];
  v163 = [v46 copy];

  if (v42)
  {
    v47 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v48 = [v16 logMsgStateTypeForType:30];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:v48];
  v50 = [v25 objectForKeyedSubscript:v49];

  if (v50)
  {
    v162 = v50;

    goto LABEL_36;
  }

  v47 = 0;
LABEL_34:
  v51 = [v16 stateForType:30];
  v162 = [v51 copy];

  if (v47)
  {
    v52 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v53 = [v16 logMsgStateTypeForType:1];
  v54 = [MEMORY[0x1E696AD98] numberWithInt:v53];
  v55 = [v25 objectForKeyedSubscript:v54];

  if (!v55)
  {
    v52 = 0;
LABEL_39:
    v56 = 1;
    v57 = [v16 stateForType:1];
    v161 = [v57 copy];

    if (v52)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v161 = v55;

LABEL_40:
  v58 = [v16 logMsgStateTypeForType:3];
  v59 = [MEMORY[0x1E696AD98] numberWithInt:v58];
  v60 = [v25 objectForKeyedSubscript:v59];

  if (v60)
  {
    v160 = v60;

    goto LABEL_45;
  }

  v56 = 0;
LABEL_43:
  v61 = [v16 stateForType:3];
  v160 = [v61 copy];

  if (v56)
  {
    v62 = 1;
    goto LABEL_48;
  }

LABEL_45:
  v63 = [v16 logMsgStateTypeForType:64];
  v64 = [MEMORY[0x1E696AD98] numberWithInt:v63];
  v65 = [v25 objectForKeyedSubscript:v64];

  if (v65)
  {
    v159 = v65;

    goto LABEL_50;
  }

  v62 = 0;
LABEL_48:
  v66 = [v16 stateForType:64];
  v159 = [v66 copy];

  if (v62)
  {
    v67 = 1;
    goto LABEL_53;
  }

LABEL_50:
  v68 = [v16 logMsgStateTypeForType:13];
  v69 = [MEMORY[0x1E696AD98] numberWithInt:v68];
  v70 = [v25 objectForKeyedSubscript:v69];

  if (v70)
  {
    v158 = v70;

    goto LABEL_55;
  }

  v67 = 0;
LABEL_53:
  v71 = [v16 stateForType:13];
  v158 = [v71 copy];

  if (v67)
  {
    v72 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v73 = [v16 logMsgStateTypeForType:14];
  v74 = [MEMORY[0x1E696AD98] numberWithInt:v73];
  v75 = [v25 objectForKeyedSubscript:v74];

  if (v75)
  {
    v157 = v75;

    goto LABEL_60;
  }

  v72 = 0;
LABEL_58:
  v76 = [v16 stateForType:14];
  v157 = [v76 copy];

  if (v72)
  {
    v77 = 1;
    goto LABEL_63;
  }

LABEL_60:
  v78 = [v16 logMsgStateTypeForType:9];
  v79 = [MEMORY[0x1E696AD98] numberWithInt:v78];
  v80 = [v25 objectForKeyedSubscript:v79];

  if (v80)
  {
    v156 = v80;

    goto LABEL_65;
  }

  v77 = 0;
LABEL_63:
  v81 = [v16 stateForType:9];
  v156 = [v81 copy];

  if (v77)
  {
    v82 = 1;
    goto LABEL_68;
  }

LABEL_65:
  v83 = [v16 logMsgStateTypeForType:10];
  v84 = [MEMORY[0x1E696AD98] numberWithInt:v83];
  v85 = [v25 objectForKeyedSubscript:v84];

  if (v85)
  {
    v155 = v85;

    goto LABEL_70;
  }

  v82 = 0;
LABEL_68:
  v86 = [v16 stateForType:10];
  v155 = [v86 copy];

  if (v82)
  {
    v87 = 1;
    goto LABEL_73;
  }

LABEL_70:
  v88 = [v16 logMsgStateTypeForType:20];
  v89 = [MEMORY[0x1E696AD98] numberWithInt:v88];
  v90 = [v25 objectForKeyedSubscript:v89];

  if (v90)
  {
    v154 = v90;

    goto LABEL_75;
  }

  v87 = 0;
LABEL_73:
  v91 = [v16 stateForType:20];
  v154 = [v91 copy];

  if (v87)
  {
    v92 = 1;
    goto LABEL_78;
  }

LABEL_75:
  v93 = [v16 logMsgStateTypeForType:42];
  v94 = [MEMORY[0x1E696AD98] numberWithInt:v93];
  v95 = [v25 objectForKeyedSubscript:v94];

  if (v95)
  {
    v153 = v95;

    goto LABEL_80;
  }

  v92 = 0;
LABEL_78:
  v96 = [v16 stateForType:42];
  v153 = [v96 copy];

  if (v92)
  {
    v97 = 1;
    goto LABEL_83;
  }

LABEL_80:
  v98 = [v16 logMsgStateTypeForType:70];
  v99 = [MEMORY[0x1E696AD98] numberWithInt:v98];
  v100 = [v25 objectForKeyedSubscript:v99];

  if (v100)
  {
    v152 = v100;

    goto LABEL_85;
  }

  v97 = 0;
LABEL_83:
  v101 = [v16 stateForType:70];
  v152 = [v101 copy];

  if (v97)
  {
    v102 = 1;
    goto LABEL_88;
  }

LABEL_85:
  v103 = [v16 logMsgStateTypeForType:7];
  v104 = [MEMORY[0x1E696AD98] numberWithInt:v103];
  v105 = [v25 objectForKeyedSubscript:v104];

  if (v105)
  {
    v106 = v105;

    goto LABEL_90;
  }

  v102 = 0;
LABEL_88:
  v107 = [v16 stateForType:7];
  v106 = [v107 copy];

  if (v102)
  {
    v108 = 1;
    goto LABEL_93;
  }

LABEL_90:
  v109 = [v16 logMsgStateTypeForType:17];
  v110 = [MEMORY[0x1E696AD98] numberWithInt:v109];
  v111 = [v25 objectForKeyedSubscript:v110];

  if (v111)
  {
    v112 = v111;

    goto LABEL_95;
  }

  v108 = 0;
LABEL_93:
  v113 = [v16 stateForType:17];
  v112 = [v113 copy];

  if (v108)
  {
    v114 = 1;
    goto LABEL_98;
  }

LABEL_95:
  v115 = [v16 logMsgStateTypeForType:19];
  v116 = [MEMORY[0x1E696AD98] numberWithInt:v115];
  v117 = [v25 objectForKeyedSubscript:v116];

  if (v117)
  {
    v118 = v117;

    goto LABEL_99;
  }

  v114 = 0;
LABEL_98:
  v119 = [v16 stateForType:19];
  v118 = [v119 copy];

  if (v114)
  {
LABEL_101:
    v165 = v35;
    v123 = [v16 stateForType:27];
    v124 = [v123 copy];

    goto LABEL_102;
  }

LABEL_99:
  v120 = [v16 logMsgStateTypeForType:27];
  v121 = [MEMORY[0x1E696AD98] numberWithInt:v120];
  v122 = [v25 objectForKeyedSubscript:v121];

  if (!v122)
  {
    goto LABEL_101;
  }

  v165 = v35;
  v123 = v122;
  v124 = v123;
LABEL_102:

  v125 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v125 setEventType:1];
  v126 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v125 setUserActionEvent:v126];

  v127 = [v125 userActionEvent];
  v128 = a3;
  [v127 setUserActionEventAction:a3];

  v129 = [v125 userActionEvent];
  [v129 setUserActionEventTarget:a4];

  v130 = [v125 userActionEvent];
  [v130 setUserActionEventValue:v168];

  v131 = [v125 userActionEvent];
  [v131 setActionRichProviderId:v167];

  if (v171 || v169 || v172)
  {
    v132 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v133 = [v125 userActionEvent];
    [v133 setModuleInfo:v132];

    if (v171)
    {
      v134 = [v171 intValue];
      v135 = [v125 userActionEvent];
      v136 = [v135 moduleInfo];
      [v136 setType:v134];
    }

    if (v169)
    {
      v137 = [v125 userActionEvent];
      v138 = [v137 moduleInfo];
      [v138 setModuleMetadata:v169];
    }

    v128 = a3;
    if (v172)
    {
      v139 = [v125 userActionEvent];
      v140 = [v139 moduleInfo];
      [v140 setClassification:v172];

      v128 = a3;
    }
  }

  if (v166)
  {
    [v125 addLogMsgState:?];
  }

  if (v165)
  {
    [v125 addLogMsgState:?];
  }

  if (v164)
  {
    [v125 addLogMsgState:v164];
  }

  if (v163)
  {
    [v125 addLogMsgState:v163];
  }

  if (v162)
  {
    [v125 addLogMsgState:?];
  }

  if (v161)
  {
    [v125 addLogMsgState:?];
  }

  if (v160)
  {
    [v125 addLogMsgState:v160];
  }

  if (v159)
  {
    [v125 addLogMsgState:v159];
  }

  if (v158)
  {
    [v125 addLogMsgState:?];
  }

  if (v157)
  {
    [v125 addLogMsgState:?];
  }

  if (v156)
  {
    [v125 addLogMsgState:v156];
  }

  if (v155)
  {
    [v125 addLogMsgState:v155];
  }

  if (v154)
  {
    [v125 addLogMsgState:?];
  }

  if (v153)
  {
    [v125 addLogMsgState:?];
  }

  if (v106)
  {
    [v125 addLogMsgState:v106];
  }

  if (v112)
  {
    [v125 addLogMsgState:v112];
  }

  if (v118)
  {
    [v125 addLogMsgState:v118];
  }

  if (v124)
  {
    [v125 addLogMsgState:v124];
  }

  if (v152)
  {
    [v125 addLogMsgState:v152];
  }

  if (v128 == 6100 && a4 == 665 || v128 == 6048 && a4 == 612 || v128 == 6049 && a4 == 612 || v128 == 6101 && a4 == 665 || v128 == 6006 && a4 == 665)
  {
    v141 = [v16 stateForType:68];
    v142 = [v141 copy];

    if (v142)
    {
      [v125 addLogMsgState:v142];
    }
  }

  v143 = +[GEOAPStateFactory sharedFactory];
  v173[0] = MEMORY[0x1E69E9820];
  v173[1] = 3221225472;
  v173[2] = __198__GEOAPPortal_UserActionCodeGen__captureUGCShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v173[3] = &unk_1E7953B38;
  v144 = v125;
  v174 = v144;
  v145 = v148;
  v176 = v145;
  v146 = v149;
  v175 = v146;
  [v143 sessionStateForType:6 callback:v173];

  v147 = *MEMORY[0x1E69E9840];
}

uint64_t __198__GEOAPPortal_UserActionCodeGen__captureUGCShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureCuratedCollectionsSessionlessUserActionTargetPairRedactedCCStateWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  LODWORD(v86) = a3;
  HIDWORD(v86) = a4;
  v108 = *MEMORY[0x1E69E9840];
  v94 = a5;
  v15 = a6;
  v97 = a7;
  v98 = a8;
  v93 = a9;
  v16 = a10;
  v88 = a11;
  v87 = a12;
  v17 = +[GEOAPStateFactory sharedFactory];
  v89 = v16;
  v90 = v15;
  if ([v16 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v103 objects:v107 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v104;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v104 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v103 + 1) + 8 * i);
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "stateType", v86)}];
          [v18 setObject:v24 forKeyedSubscript:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v103 objects:v107 count:16];
      }

      while (v21);
    }

    v26 = [v18 copy];
    if (v26)
    {
      v27 = [v17 logMsgStateTypeForType:2];
      v28 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      v29 = [v26 objectForKeyedSubscript:v28];

      if (v29)
      {
        v15 = v90;
        goto LABEL_18;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v15 = v90;
  }

  else
  {
    v26 = 0;
    v30 = 1;
  }

  v31 = [v17 stateForType:{2, v86}];
  v29 = [v31 copy];

  if (v30)
  {
    v32 = 1;
    goto LABEL_20;
  }

LABEL_18:
  v33 = [v17 logMsgStateTypeForType:{39, v86}];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:v33];
  v35 = [v26 objectForKeyedSubscript:v34];

  if (v35)
  {
    goto LABEL_22;
  }

  v32 = 0;
LABEL_20:
  v36 = [v17 stateForType:39];
  v35 = [v36 copy];

  if (v32)
  {
    v37 = 1;
    goto LABEL_24;
  }

LABEL_22:
  v38 = [v17 logMsgStateTypeForType:30];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:v38];
  v40 = [v26 objectForKeyedSubscript:v39];

  if (v40)
  {
    goto LABEL_26;
  }

  v37 = 0;
LABEL_24:
  v41 = [v17 stateForType:30];
  v40 = [v41 copy];

  if (v37)
  {
    v42 = 1;
    goto LABEL_28;
  }

LABEL_26:
  v43 = [v17 logMsgStateTypeForType:1];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:v43];
  v45 = [v26 objectForKeyedSubscript:v44];

  v95 = v45;
  if (v45)
  {
    goto LABEL_29;
  }

  v42 = 0;
LABEL_28:
  LOBYTE(v46) = 1;
  v47 = [v17 stateForType:1];
  v95 = [v47 copy];

  if ((v42 & 1) == 0)
  {
LABEL_29:
    v48 = [v17 logMsgStateTypeForType:3];
    v49 = [MEMORY[0x1E696AD98] numberWithInt:v48];
    v46 = [v26 objectForKeyedSubscript:v49];

    v96 = v46;
    if (v46)
    {
      goto LABEL_32;
    }
  }

  v50 = [v17 stateForType:3];
  v96 = [v50 copy];

  if (v46)
  {
    v51 = 1;
    goto LABEL_34;
  }

LABEL_32:
  v52 = [v17 logMsgStateTypeForType:42];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:v52];
  v54 = [v26 objectForKeyedSubscript:v53];

  if (v54)
  {
    goto LABEL_36;
  }

  v51 = 0;
LABEL_34:
  v55 = [v17 stateForType:42];
  v54 = [v55 copy];

  if (v51)
  {
    v91 = v40;
    v92 = v35;
    v56 = 1;
    goto LABEL_38;
  }

LABEL_36:
  v91 = v40;
  v92 = v35;
  v57 = [v17 logMsgStateTypeForType:70];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:v57];
  v59 = [v26 objectForKeyedSubscript:v58];

  if (v59)
  {
    goto LABEL_39;
  }

  v56 = 0;
LABEL_38:
  v60 = [v17 stateForType:70];
  v59 = [v60 copy];

  if (v56)
  {
LABEL_40:
    v64 = [v17 stateForType:17];
    v63 = [v64 copy];

    goto LABEL_41;
  }

LABEL_39:
  v61 = [v17 logMsgStateTypeForType:17];
  v62 = [MEMORY[0x1E696AD98] numberWithInt:v61];
  v63 = [v26 objectForKeyedSubscript:v62];

  if (!v63)
  {
    goto LABEL_40;
  }

LABEL_41:
  v65 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v65 setEventType:1];
  v66 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v65 setUserActionEvent:v66];

  v67 = [v65 userActionEvent];
  [v67 setUserActionEventAction:v86];

  v68 = [v65 userActionEvent];
  [v68 setUserActionEventTarget:HIDWORD(v86)];

  v69 = [v65 userActionEvent];
  [v69 setUserActionEventValue:v94];

  v70 = [v65 userActionEvent];
  [v70 setActionRichProviderId:v93];

  v71 = v29;
  if (v15 || v97 || v98)
  {
    v72 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v73 = [v65 userActionEvent];
    [v73 setModuleInfo:v72];

    if (v15)
    {
      v74 = [v15 intValue];
      v75 = [v65 userActionEvent];
      v76 = [v75 moduleInfo];
      [v76 setType:v74];
    }

    if (v97)
    {
      v77 = [v65 userActionEvent];
      v78 = [v77 moduleInfo];
      [v78 setModuleMetadata:v97];
    }

    v29 = v71;
    if (v98)
    {
      v79 = [v65 userActionEvent];
      v80 = [v79 moduleInfo];
      [v80 setClassification:v98];

      v29 = v71;
    }
  }

  if (v29)
  {
    [v65 addLogMsgState:v29];
  }

  if (v92)
  {
    [v65 addLogMsgState:?];
  }

  if (v91)
  {
    [v65 addLogMsgState:v91];
  }

  if (v95)
  {
    [v65 addLogMsgState:?];
  }

  if (v96)
  {
    [v65 addLogMsgState:?];
  }

  if (v54)
  {
    [v65 addLogMsgState:v54];
  }

  if (v63)
  {
    [v65 addLogMsgState:v63];
  }

  if (v59)
  {
    [v65 addLogMsgState:v59];
  }

  v81 = +[GEOAPStateFactory sharedFactory];
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __234__GEOAPPortal_UserActionCodeGen__captureCuratedCollectionsSessionlessUserActionTargetPairRedactedCCStateWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v99[3] = &unk_1E7953B38;
  v101 = v88;
  v102 = v87;
  v100 = v65;
  v82 = v88;
  v83 = v87;
  v84 = v65;
  [v81 sessionStateForType:7 callback:v99];

  v85 = *MEMORY[0x1E69E9840];
}

uint64_t __234__GEOAPPortal_UserActionCodeGen__captureCuratedCollectionsSessionlessUserActionTargetPairRedactedCCStateWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureCuratedCollectionsSessionlessUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  LODWORD(v86) = a3;
  HIDWORD(v86) = a4;
  v108 = *MEMORY[0x1E69E9840];
  v94 = a5;
  v15 = a6;
  v97 = a7;
  v98 = a8;
  v93 = a9;
  v16 = a10;
  v88 = a11;
  v87 = a12;
  v17 = +[GEOAPStateFactory sharedFactory];
  v89 = v16;
  v90 = v15;
  if ([v16 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v103 objects:v107 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v104;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v104 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v103 + 1) + 8 * i);
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "stateType", v86)}];
          [v18 setObject:v24 forKeyedSubscript:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v103 objects:v107 count:16];
      }

      while (v21);
    }

    v26 = [v18 copy];
    if (v26)
    {
      v27 = [v17 logMsgStateTypeForType:2];
      v28 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      v29 = [v26 objectForKeyedSubscript:v28];

      if (v29)
      {
        v15 = v90;
        goto LABEL_18;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v15 = v90;
  }

  else
  {
    v26 = 0;
    v30 = 1;
  }

  v31 = [v17 stateForType:{2, v86}];
  v29 = [v31 copy];

  if (v30)
  {
    v32 = 1;
    goto LABEL_20;
  }

LABEL_18:
  v33 = [v17 logMsgStateTypeForType:{39, v86}];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:v33];
  v35 = [v26 objectForKeyedSubscript:v34];

  if (v35)
  {
    goto LABEL_22;
  }

  v32 = 0;
LABEL_20:
  v36 = [v17 stateForType:39];
  v35 = [v36 copy];

  if (v32)
  {
    v37 = 1;
    goto LABEL_24;
  }

LABEL_22:
  v38 = [v17 logMsgStateTypeForType:30];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:v38];
  v40 = [v26 objectForKeyedSubscript:v39];

  if (v40)
  {
    goto LABEL_26;
  }

  v37 = 0;
LABEL_24:
  v41 = [v17 stateForType:30];
  v40 = [v41 copy];

  if (v37)
  {
    v42 = 1;
    goto LABEL_28;
  }

LABEL_26:
  v43 = [v17 logMsgStateTypeForType:1];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:v43];
  v45 = [v26 objectForKeyedSubscript:v44];

  v95 = v45;
  if (v45)
  {
    goto LABEL_29;
  }

  v42 = 0;
LABEL_28:
  LOBYTE(v46) = 1;
  v47 = [v17 stateForType:1];
  v95 = [v47 copy];

  if ((v42 & 1) == 0)
  {
LABEL_29:
    v48 = [v17 logMsgStateTypeForType:3];
    v49 = [MEMORY[0x1E696AD98] numberWithInt:v48];
    v46 = [v26 objectForKeyedSubscript:v49];

    v96 = v46;
    if (v46)
    {
      goto LABEL_32;
    }
  }

  v50 = [v17 stateForType:3];
  v96 = [v50 copy];

  if (v46)
  {
    v51 = 1;
    goto LABEL_34;
  }

LABEL_32:
  v52 = [v17 logMsgStateTypeForType:42];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:v52];
  v54 = [v26 objectForKeyedSubscript:v53];

  if (v54)
  {
    goto LABEL_36;
  }

  v51 = 0;
LABEL_34:
  v55 = [v17 stateForType:42];
  v54 = [v55 copy];

  if (v51)
  {
    v91 = v40;
    v92 = v35;
    v56 = 1;
    goto LABEL_38;
  }

LABEL_36:
  v91 = v40;
  v92 = v35;
  v57 = [v17 logMsgStateTypeForType:70];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:v57];
  v59 = [v26 objectForKeyedSubscript:v58];

  if (v59)
  {
    goto LABEL_39;
  }

  v56 = 0;
LABEL_38:
  v60 = [v17 stateForType:70];
  v59 = [v60 copy];

  if (v56)
  {
LABEL_40:
    v64 = [v17 stateForType:17];
    v63 = [v64 copy];

    goto LABEL_41;
  }

LABEL_39:
  v61 = [v17 logMsgStateTypeForType:17];
  v62 = [MEMORY[0x1E696AD98] numberWithInt:v61];
  v63 = [v26 objectForKeyedSubscript:v62];

  if (!v63)
  {
    goto LABEL_40;
  }

LABEL_41:
  v65 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v65 setEventType:1];
  v66 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v65 setUserActionEvent:v66];

  v67 = [v65 userActionEvent];
  [v67 setUserActionEventAction:v86];

  v68 = [v65 userActionEvent];
  [v68 setUserActionEventTarget:HIDWORD(v86)];

  v69 = [v65 userActionEvent];
  [v69 setUserActionEventValue:v94];

  v70 = [v65 userActionEvent];
  [v70 setActionRichProviderId:v93];

  v71 = v29;
  if (v15 || v97 || v98)
  {
    v72 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v73 = [v65 userActionEvent];
    [v73 setModuleInfo:v72];

    if (v15)
    {
      v74 = [v15 intValue];
      v75 = [v65 userActionEvent];
      v76 = [v75 moduleInfo];
      [v76 setType:v74];
    }

    if (v97)
    {
      v77 = [v65 userActionEvent];
      v78 = [v77 moduleInfo];
      [v78 setModuleMetadata:v97];
    }

    v29 = v71;
    if (v98)
    {
      v79 = [v65 userActionEvent];
      v80 = [v79 moduleInfo];
      [v80 setClassification:v98];

      v29 = v71;
    }
  }

  if (v29)
  {
    [v65 addLogMsgState:v29];
  }

  if (v92)
  {
    [v65 addLogMsgState:?];
  }

  if (v91)
  {
    [v65 addLogMsgState:v91];
  }

  if (v95)
  {
    [v65 addLogMsgState:?];
  }

  if (v96)
  {
    [v65 addLogMsgState:?];
  }

  if (v54)
  {
    [v65 addLogMsgState:v54];
  }

  if (v63)
  {
    [v65 addLogMsgState:v63];
  }

  if (v59)
  {
    [v65 addLogMsgState:v59];
  }

  v81 = +[GEOAPStateFactory sharedFactory];
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __219__GEOAPPortal_UserActionCodeGen__captureCuratedCollectionsSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v99[3] = &unk_1E7953B38;
  v101 = v88;
  v102 = v87;
  v100 = v65;
  v82 = v88;
  v83 = v87;
  v84 = v65;
  [v81 sessionStateForType:7 callback:v99];

  v85 = *MEMORY[0x1E69E9840];
}

uint64_t __219__GEOAPPortal_UserActionCodeGen__captureCuratedCollectionsSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureCuratedCollectionsShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v185 = *MEMORY[0x1E69E9840];
  v173 = a5;
  v172 = a6;
  v174 = a7;
  v175 = a8;
  v171 = a9;
  v15 = a10;
  v154 = a11;
  v153 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  v155 = v15;
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v180 objects:v184 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v181;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v181 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v180 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v180 objects:v184 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:65];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  if (v28)
  {
    v170 = v28;

    goto LABEL_16;
  }

  v29 = 0;
LABEL_14:
  v30 = [v16 stateForType:65];
  v170 = [v30 copy];

  if (v29)
  {
    v31 = 1;
    goto LABEL_19;
  }

LABEL_16:
  v32 = [v16 logMsgStateTypeForType:5];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:v32];
  v34 = [v25 objectForKeyedSubscript:v33];

  if (v34)
  {
    v169 = v34;

    goto LABEL_21;
  }

  v31 = 0;
LABEL_19:
  v35 = [v16 stateForType:5];
  v169 = [v35 copy];

  if (v31)
  {
    v36 = 1;
    goto LABEL_24;
  }

LABEL_21:
  v37 = [v16 logMsgStateTypeForType:39];
  v38 = [MEMORY[0x1E696AD98] numberWithInt:v37];
  v39 = [v25 objectForKeyedSubscript:v38];

  if (v39)
  {
    v168 = v39;

    goto LABEL_26;
  }

  v36 = 0;
LABEL_24:
  v40 = [v16 stateForType:39];
  v168 = [v40 copy];

  if (v36)
  {
    v41 = 1;
    goto LABEL_29;
  }

LABEL_26:
  v42 = [v16 logMsgStateTypeForType:15];
  v43 = [MEMORY[0x1E696AD98] numberWithInt:v42];
  v44 = [v25 objectForKeyedSubscript:v43];

  if (v44)
  {
    v167 = v44;

    goto LABEL_31;
  }

  v41 = 0;
LABEL_29:
  v45 = [v16 stateForType:15];
  v167 = [v45 copy];

  if (v41)
  {
    v46 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v47 = [v16 logMsgStateTypeForType:35];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:v47];
  v49 = [v25 objectForKeyedSubscript:v48];

  if (v49)
  {
    v166 = v49;

    goto LABEL_36;
  }

  v46 = 0;
LABEL_34:
  v50 = [v16 stateForType:35];
  v166 = [v50 copy];

  if (v46)
  {
    v51 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v52 = [v16 logMsgStateTypeForType:30];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:v52];
  v54 = [v25 objectForKeyedSubscript:v53];

  if (v54)
  {
    v165 = v54;

    goto LABEL_41;
  }

  v51 = 0;
LABEL_39:
  v55 = [v16 stateForType:30];
  v165 = [v55 copy];

  if (v51)
  {
    v56 = 1;
    goto LABEL_44;
  }

LABEL_41:
  v57 = [v16 logMsgStateTypeForType:1];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:v57];
  v59 = [v25 objectForKeyedSubscript:v58];

  if (!v59)
  {
    v56 = 0;
LABEL_44:
    v60 = 1;
    v61 = [v16 stateForType:1];
    v164 = [v61 copy];

    if (v56)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v164 = v59;

LABEL_45:
  v62 = [v16 logMsgStateTypeForType:3];
  v63 = [MEMORY[0x1E696AD98] numberWithInt:v62];
  v64 = [v25 objectForKeyedSubscript:v63];

  if (v64)
  {
    v163 = v64;

    goto LABEL_50;
  }

  v60 = 0;
LABEL_48:
  v65 = [v16 stateForType:3];
  v163 = [v65 copy];

  if (v60)
  {
    v66 = 1;
    goto LABEL_53;
  }

LABEL_50:
  v67 = [v16 logMsgStateTypeForType:64];
  v68 = [MEMORY[0x1E696AD98] numberWithInt:v67];
  v69 = [v25 objectForKeyedSubscript:v68];

  if (v69)
  {
    v162 = v69;

    goto LABEL_55;
  }

  v66 = 0;
LABEL_53:
  v70 = [v16 stateForType:64];
  v162 = [v70 copy];

  if (v66)
  {
    v71 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v72 = [v16 logMsgStateTypeForType:13];
  v73 = [MEMORY[0x1E696AD98] numberWithInt:v72];
  v74 = [v25 objectForKeyedSubscript:v73];

  if (v74)
  {
    v161 = v74;

    goto LABEL_60;
  }

  v71 = 0;
LABEL_58:
  v75 = [v16 stateForType:13];
  v161 = [v75 copy];

  if (v71)
  {
    v76 = 1;
    goto LABEL_63;
  }

LABEL_60:
  v77 = [v16 logMsgStateTypeForType:14];
  v78 = [MEMORY[0x1E696AD98] numberWithInt:v77];
  v79 = [v25 objectForKeyedSubscript:v78];

  if (v79)
  {
    v160 = v79;

    goto LABEL_65;
  }

  v76 = 0;
LABEL_63:
  v80 = [v16 stateForType:14];
  v160 = [v80 copy];

  if (v76)
  {
    v81 = 1;
    goto LABEL_68;
  }

LABEL_65:
  v82 = [v16 logMsgStateTypeForType:9];
  v83 = [MEMORY[0x1E696AD98] numberWithInt:v82];
  v84 = [v25 objectForKeyedSubscript:v83];

  if (v84)
  {
    v159 = v84;

    goto LABEL_70;
  }

  v81 = 0;
LABEL_68:
  v85 = [v16 stateForType:9];
  v159 = [v85 copy];

  if (v81)
  {
    v86 = 1;
    goto LABEL_73;
  }

LABEL_70:
  v87 = [v16 logMsgStateTypeForType:10];
  v88 = [MEMORY[0x1E696AD98] numberWithInt:v87];
  v89 = [v25 objectForKeyedSubscript:v88];

  if (v89)
  {
    v158 = v89;

    goto LABEL_75;
  }

  v86 = 0;
LABEL_73:
  v90 = [v16 stateForType:10];
  v158 = [v90 copy];

  if (v86)
  {
    v91 = 1;
    goto LABEL_78;
  }

LABEL_75:
  v92 = [v16 logMsgStateTypeForType:20];
  v93 = [MEMORY[0x1E696AD98] numberWithInt:v92];
  v94 = [v25 objectForKeyedSubscript:v93];

  if (v94)
  {
    v157 = v94;

    goto LABEL_80;
  }

  v91 = 0;
LABEL_78:
  v95 = [v16 stateForType:20];
  v157 = [v95 copy];

  if (v91)
  {
    v96 = 1;
    goto LABEL_83;
  }

LABEL_80:
  v97 = [v16 logMsgStateTypeForType:42];
  v98 = [MEMORY[0x1E696AD98] numberWithInt:v97];
  v99 = [v25 objectForKeyedSubscript:v98];

  if (v99)
  {
    v156 = v99;

    goto LABEL_85;
  }

  v96 = 0;
LABEL_83:
  v100 = [v16 stateForType:42];
  v156 = [v100 copy];

  if (v96)
  {
    v101 = 1;
    goto LABEL_88;
  }

LABEL_85:
  v102 = [v16 logMsgStateTypeForType:70];
  v103 = [MEMORY[0x1E696AD98] numberWithInt:v102];
  v104 = [v25 objectForKeyedSubscript:v103];

  if (v104)
  {
    v150 = v104;

    goto LABEL_90;
  }

  v101 = 0;
LABEL_88:
  v105 = [v16 stateForType:70];
  v150 = [v105 copy];

  if (v101)
  {
    v106 = 1;
    goto LABEL_93;
  }

LABEL_90:
  v107 = [v16 logMsgStateTypeForType:7];
  v108 = [MEMORY[0x1E696AD98] numberWithInt:v107];
  v109 = [v25 objectForKeyedSubscript:v108];

  if (v109)
  {
    v110 = v109;

    goto LABEL_95;
  }

  v106 = 0;
LABEL_93:
  v111 = [v16 stateForType:7];
  v110 = [v111 copy];

  if (v106)
  {
    v112 = 1;
    goto LABEL_98;
  }

LABEL_95:
  v113 = [v16 logMsgStateTypeForType:17];
  v114 = [MEMORY[0x1E696AD98] numberWithInt:v113];
  v115 = [v25 objectForKeyedSubscript:v114];

  if (v115)
  {
    v116 = v115;

    goto LABEL_100;
  }

  v112 = 0;
LABEL_98:
  v117 = [v16 stateForType:17];
  v116 = [v117 copy];

  if (v112)
  {
    v118 = 1;
    goto LABEL_103;
  }

LABEL_100:
  v119 = [v16 logMsgStateTypeForType:19];
  v120 = [MEMORY[0x1E696AD98] numberWithInt:v119];
  v121 = [v25 objectForKeyedSubscript:v120];

  if (v121)
  {
    v122 = v121;

    goto LABEL_104;
  }

  v118 = 0;
LABEL_103:
  v123 = [v16 stateForType:19];
  v122 = [v123 copy];

  if (v118)
  {
LABEL_106:
    v149 = v25;
    v127 = [v16 stateForType:27];
    v128 = [v127 copy];

    goto LABEL_107;
  }

LABEL_104:
  v124 = [v16 logMsgStateTypeForType:27];
  v125 = [MEMORY[0x1E696AD98] numberWithInt:v124];
  v126 = [v25 objectForKeyedSubscript:v125];

  if (!v126)
  {
    goto LABEL_106;
  }

  v149 = v25;
  v127 = v126;
  v128 = v127;
LABEL_107:

  v129 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v129 setEventType:1];
  v130 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v129 setUserActionEvent:v130];

  v131 = [v129 userActionEvent];
  [v131 setUserActionEventAction:a3];

  v132 = [v129 userActionEvent];
  [v132 setUserActionEventTarget:a4];

  v133 = [v129 userActionEvent];
  [v133 setUserActionEventValue:v173];

  v134 = [v129 userActionEvent];
  [v134 setActionRichProviderId:v171];

  if (v172 || v174 || v175)
  {
    v135 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v136 = [v129 userActionEvent];
    [v136 setModuleInfo:v135];

    if (v172)
    {
      v137 = [v172 intValue];
      v138 = [v129 userActionEvent];
      v139 = [v138 moduleInfo];
      [v139 setType:v137];
    }

    if (v174)
    {
      v140 = [v129 userActionEvent];
      v141 = [v140 moduleInfo];
      [v141 setModuleMetadata:v174];
    }

    if (v175)
    {
      v142 = [v129 userActionEvent];
      v143 = [v142 moduleInfo];
      [v143 setClassification:v175];
    }
  }

  if (v170)
  {
    [v129 addLogMsgState:?];
  }

  if (v169)
  {
    [v129 addLogMsgState:?];
  }

  if (v168)
  {
    [v129 addLogMsgState:v168];
  }

  if (v167)
  {
    [v129 addLogMsgState:?];
  }

  if (v166)
  {
    [v129 addLogMsgState:?];
  }

  if (v165)
  {
    [v129 addLogMsgState:v165];
  }

  if (v164)
  {
    [v129 addLogMsgState:?];
  }

  if (v163)
  {
    [v129 addLogMsgState:?];
  }

  if (v162)
  {
    [v129 addLogMsgState:v162];
  }

  if (v161)
  {
    [v129 addLogMsgState:?];
  }

  if (v160)
  {
    [v129 addLogMsgState:?];
  }

  if (v159)
  {
    [v129 addLogMsgState:v159];
  }

  if (v158)
  {
    [v129 addLogMsgState:?];
  }

  if (v157)
  {
    [v129 addLogMsgState:?];
  }

  if (v156)
  {
    [v129 addLogMsgState:v156];
  }

  if (v110)
  {
    [v129 addLogMsgState:v110];
  }

  if (v116)
  {
    [v129 addLogMsgState:v116];
  }

  if (v122)
  {
    [v129 addLogMsgState:v122];
  }

  if (v128)
  {
    [v129 addLogMsgState:v128];
  }

  if (v150)
  {
    [v129 addLogMsgState:v150];
  }

  v144 = +[GEOAPStateFactory sharedFactory];
  v176[0] = MEMORY[0x1E69E9820];
  v176[1] = 3221225472;
  v176[2] = __213__GEOAPPortal_UserActionCodeGen__captureCuratedCollectionsShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v176[3] = &unk_1E7953B38;
  v145 = v129;
  v177 = v145;
  v146 = v153;
  v179 = v146;
  v147 = v154;
  v178 = v147;
  [v144 sessionStateForType:6 callback:v176];

  v148 = *MEMORY[0x1E69E9840];
}

uint64_t __213__GEOAPPortal_UserActionCodeGen__captureCuratedCollectionsShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureEnterMapsShortUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v194 = *MEMORY[0x1E69E9840];
  v182 = a5;
  v15 = a6;
  v183 = a7;
  v184 = a8;
  v181 = a9;
  v16 = a10;
  v162 = a11;
  v161 = a12;
  v17 = +[GEOAPStateFactory sharedFactory];
  v163 = v16;
  v164 = v15;
  if ([v16 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v192 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v189 objects:v193 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v190;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v190 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v189 + 1) + 8 * i);
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "stateType")}];
          [v18 setObject:v24 forKeyedSubscript:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v189 objects:v193 count:16];
      }

      while (v21);
    }

    v26 = [v18 copy];
    if (v26)
    {
      v27 = [v17 logMsgStateTypeForType:65];
      v28 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      v29 = [v26 objectForKeyedSubscript:v28];

      if (v29)
      {
        v180 = v29;

        v15 = v164;
        goto LABEL_18;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v15 = v164;
  }

  else
  {
    v26 = 0;
    v30 = 1;
  }

  v31 = [v17 stateForType:65];
  v180 = [v31 copy];

  if (v30)
  {
    v32 = 1;
    goto LABEL_21;
  }

LABEL_18:
  v33 = [v17 logMsgStateTypeForType:5];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:v33];
  v35 = [v26 objectForKeyedSubscript:v34];

  if (v35)
  {
    v179 = v35;

    goto LABEL_23;
  }

  v32 = 0;
LABEL_21:
  v36 = [v17 stateForType:5];
  v179 = [v36 copy];

  if (v32)
  {
    v37 = 1;
    goto LABEL_26;
  }

LABEL_23:
  v38 = [v17 logMsgStateTypeForType:15];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:v38];
  v40 = [v26 objectForKeyedSubscript:v39];

  if (v40)
  {
    v178 = v40;

    goto LABEL_28;
  }

  v37 = 0;
LABEL_26:
  v41 = [v17 stateForType:15];
  v178 = [v41 copy];

  if (v37)
  {
    v42 = 1;
    goto LABEL_31;
  }

LABEL_28:
  v43 = [v17 logMsgStateTypeForType:35];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:v43];
  v45 = [v26 objectForKeyedSubscript:v44];

  if (v45)
  {
    v177 = v45;

    goto LABEL_33;
  }

  v42 = 0;
LABEL_31:
  v46 = [v17 stateForType:35];
  v177 = [v46 copy];

  if (v42)
  {
    v47 = 1;
    goto LABEL_36;
  }

LABEL_33:
  v48 = [v17 logMsgStateTypeForType:30];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:v48];
  v50 = [v26 objectForKeyedSubscript:v49];

  if (v50)
  {
    v176 = v50;

    goto LABEL_38;
  }

  v47 = 0;
LABEL_36:
  v51 = [v17 stateForType:30];
  v176 = [v51 copy];

  if (v47)
  {
    v52 = 1;
    goto LABEL_41;
  }

LABEL_38:
  v53 = [v17 logMsgStateTypeForType:1];
  v54 = [MEMORY[0x1E696AD98] numberWithInt:v53];
  v55 = [v26 objectForKeyedSubscript:v54];

  if (!v55)
  {
    v52 = 0;
LABEL_41:
    v56 = 1;
    v57 = [v17 stateForType:1];
    v175 = [v57 copy];

    if (v52)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v175 = v55;

LABEL_42:
  v58 = [v17 logMsgStateTypeForType:3];
  v59 = [MEMORY[0x1E696AD98] numberWithInt:v58];
  v60 = [v26 objectForKeyedSubscript:v59];

  if (v60)
  {
    v174 = v60;

    goto LABEL_47;
  }

  v56 = 0;
LABEL_45:
  v61 = [v17 stateForType:3];
  v174 = [v61 copy];

  if (v56)
  {
    v62 = 1;
    goto LABEL_50;
  }

LABEL_47:
  v63 = [v17 logMsgStateTypeForType:41];
  v64 = [MEMORY[0x1E696AD98] numberWithInt:v63];
  v65 = [v26 objectForKeyedSubscript:v64];

  if (v65)
  {
    v173 = v65;

    goto LABEL_52;
  }

  v62 = 0;
LABEL_50:
  v66 = [v17 stateForType:41];
  v173 = [v66 copy];

  if (v62)
  {
    v67 = 1;
    goto LABEL_55;
  }

LABEL_52:
  v68 = [v17 logMsgStateTypeForType:26];
  v69 = [MEMORY[0x1E696AD98] numberWithInt:v68];
  v70 = [v26 objectForKeyedSubscript:v69];

  if (v70)
  {
    v172 = v70;

    goto LABEL_57;
  }

  v67 = 0;
LABEL_55:
  v71 = [v17 stateForType:26];
  v172 = [v71 copy];

  if (v67)
  {
    v72 = 1;
    goto LABEL_60;
  }

LABEL_57:
  v73 = [v17 logMsgStateTypeForType:64];
  v74 = [MEMORY[0x1E696AD98] numberWithInt:v73];
  v75 = [v26 objectForKeyedSubscript:v74];

  if (v75)
  {
    v171 = v75;

    goto LABEL_62;
  }

  v72 = 0;
LABEL_60:
  v76 = [v17 stateForType:64];
  v171 = [v76 copy];

  if (v72)
  {
    v77 = 1;
    goto LABEL_65;
  }

LABEL_62:
  v78 = [v17 logMsgStateTypeForType:13];
  v79 = [MEMORY[0x1E696AD98] numberWithInt:v78];
  v80 = [v26 objectForKeyedSubscript:v79];

  if (v80)
  {
    v170 = v80;

    goto LABEL_67;
  }

  v77 = 0;
LABEL_65:
  v81 = [v17 stateForType:13];
  v170 = [v81 copy];

  if (v77)
  {
    v82 = 1;
    goto LABEL_70;
  }

LABEL_67:
  v83 = [v17 logMsgStateTypeForType:14];
  v84 = [MEMORY[0x1E696AD98] numberWithInt:v83];
  v85 = [v26 objectForKeyedSubscript:v84];

  if (v85)
  {
    v169 = v85;

    goto LABEL_72;
  }

  v82 = 0;
LABEL_70:
  v86 = [v17 stateForType:14];
  v169 = [v86 copy];

  if (v82)
  {
    v87 = 1;
    goto LABEL_75;
  }

LABEL_72:
  v88 = [v17 logMsgStateTypeForType:9];
  v89 = [MEMORY[0x1E696AD98] numberWithInt:v88];
  v90 = [v26 objectForKeyedSubscript:v89];

  if (v90)
  {
    v168 = v90;

    goto LABEL_77;
  }

  v87 = 0;
LABEL_75:
  v91 = [v17 stateForType:9];
  v168 = [v91 copy];

  if (v87)
  {
    v92 = 1;
    goto LABEL_80;
  }

LABEL_77:
  v93 = [v17 logMsgStateTypeForType:10];
  v94 = [MEMORY[0x1E696AD98] numberWithInt:v93];
  v95 = [v26 objectForKeyedSubscript:v94];

  if (v95)
  {
    v167 = v95;

    goto LABEL_82;
  }

  v92 = 0;
LABEL_80:
  v96 = [v17 stateForType:10];
  v167 = [v96 copy];

  if (v92)
  {
    v97 = 1;
    goto LABEL_85;
  }

LABEL_82:
  v98 = [v17 logMsgStateTypeForType:20];
  v99 = [MEMORY[0x1E696AD98] numberWithInt:v98];
  v100 = [v26 objectForKeyedSubscript:v99];

  if (v100)
  {
    v166 = v100;

    goto LABEL_87;
  }

  v97 = 0;
LABEL_85:
  v101 = [v17 stateForType:20];
  v166 = [v101 copy];

  if (v97)
  {
    v102 = 1;
    goto LABEL_90;
  }

LABEL_87:
  v103 = [v17 logMsgStateTypeForType:42];
  v104 = [MEMORY[0x1E696AD98] numberWithInt:v103];
  v105 = [v26 objectForKeyedSubscript:v104];

  if (v105)
  {
    v165 = v105;

    goto LABEL_92;
  }

  v102 = 0;
LABEL_90:
  v106 = [v17 stateForType:42];
  v165 = [v106 copy];

  if (v102)
  {
    v107 = 1;
    goto LABEL_95;
  }

LABEL_92:
  v108 = [v17 logMsgStateTypeForType:70];
  v109 = [MEMORY[0x1E696AD98] numberWithInt:v108];
  v110 = [v26 objectForKeyedSubscript:v109];

  if (v110)
  {
    v158 = v110;

    goto LABEL_97;
  }

  v107 = 0;
LABEL_95:
  v111 = [v17 stateForType:70];
  v158 = [v111 copy];

  if (v107)
  {
    v112 = 1;
    goto LABEL_100;
  }

LABEL_97:
  v113 = [v17 logMsgStateTypeForType:7];
  v114 = [MEMORY[0x1E696AD98] numberWithInt:v113];
  v115 = [v26 objectForKeyedSubscript:v114];

  if (v115)
  {
    v116 = v115;

    goto LABEL_102;
  }

  v112 = 0;
LABEL_100:
  v117 = [v17 stateForType:7];
  v116 = [v117 copy];

  if (v112)
  {
    v118 = 1;
    goto LABEL_105;
  }

LABEL_102:
  v119 = [v17 logMsgStateTypeForType:17];
  v120 = [MEMORY[0x1E696AD98] numberWithInt:v119];
  v121 = [v26 objectForKeyedSubscript:v120];

  if (v121)
  {
    v122 = v121;

    goto LABEL_107;
  }

  v118 = 0;
LABEL_105:
  v123 = [v17 stateForType:17];
  v122 = [v123 copy];

  if (v118)
  {
    v124 = 1;
    goto LABEL_110;
  }

LABEL_107:
  v125 = [v17 logMsgStateTypeForType:19];
  v126 = [MEMORY[0x1E696AD98] numberWithInt:v125];
  v127 = [v26 objectForKeyedSubscript:v126];

  if (v127)
  {
    v128 = v127;

    goto LABEL_111;
  }

  v124 = 0;
LABEL_110:
  v129 = [v17 stateForType:19];
  v128 = [v129 copy];

  if (v124)
  {
LABEL_113:
    v133 = [v17 stateForType:{27, v26}];
    v134 = [v133 copy];

    goto LABEL_114;
  }

LABEL_111:
  v130 = [v17 logMsgStateTypeForType:27];
  v131 = [MEMORY[0x1E696AD98] numberWithInt:v130];
  v132 = [v26 objectForKeyedSubscript:v131];

  if (!v132)
  {
    goto LABEL_113;
  }

  v156 = v26;
  v133 = v132;
  v134 = v133;
LABEL_114:

  v135 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v135 setEventType:1];
  v136 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v135 setUserActionEvent:v136];

  v137 = [v135 userActionEvent];
  [v137 setUserActionEventAction:a3];

  v138 = [v135 userActionEvent];
  [v138 setUserActionEventTarget:a4];

  v139 = [v135 userActionEvent];
  [v139 setUserActionEventValue:v182];

  v140 = [v135 userActionEvent];
  [v140 setActionRichProviderId:v181];

  if (v15 || v183 || v184)
  {
    v141 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v142 = [v135 userActionEvent];
    [v142 setModuleInfo:v141];

    if (v15)
    {
      v143 = [v15 intValue];
      v144 = [v135 userActionEvent];
      v145 = [v144 moduleInfo];
      [v145 setType:v143];
    }

    if (v183)
    {
      v146 = [v135 userActionEvent];
      v147 = [v146 moduleInfo];
      [v147 setModuleMetadata:v183];
    }

    if (v184)
    {
      v148 = [v135 userActionEvent];
      v149 = [v148 moduleInfo];
      [v149 setClassification:v184];
    }
  }

  if (v180)
  {
    [v135 addLogMsgState:?];
  }

  if (v179)
  {
    [v135 addLogMsgState:?];
  }

  if (v178)
  {
    [v135 addLogMsgState:v178];
  }

  if (v177)
  {
    [v135 addLogMsgState:?];
  }

  if (v176)
  {
    [v135 addLogMsgState:?];
  }

  if (v175)
  {
    [v135 addLogMsgState:v175];
  }

  if (v174)
  {
    [v135 addLogMsgState:?];
  }

  if (v173)
  {
    [v135 addLogMsgState:?];
  }

  if (v172)
  {
    [v135 addLogMsgState:v172];
  }

  if (v171)
  {
    [v135 addLogMsgState:?];
  }

  if (v170)
  {
    [v135 addLogMsgState:?];
  }

  if (v169)
  {
    [v135 addLogMsgState:v169];
  }

  if (v168)
  {
    [v135 addLogMsgState:?];
  }

  if (v167)
  {
    [v135 addLogMsgState:?];
  }

  if (v166)
  {
    [v135 addLogMsgState:v166];
  }

  if (v165)
  {
    [v135 addLogMsgState:?];
  }

  if (v116)
  {
    [v135 addLogMsgState:v116];
  }

  if (v122)
  {
    [v135 addLogMsgState:v122];
  }

  if (v128)
  {
    [v135 addLogMsgState:v128];
  }

  if (v134)
  {
    [v135 addLogMsgState:v134];
  }

  v150 = v116;
  if (v158)
  {
    [v135 addLogMsgState:v158];
  }

  v151 = +[GEOAPStateFactory sharedFactory];
  v185[0] = MEMORY[0x1E69E9820];
  v185[1] = 3221225472;
  v185[2] = __204__GEOAPPortal_UserActionCodeGen__captureEnterMapsShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v185[3] = &unk_1E7953B38;
  v152 = v135;
  v186 = v152;
  v153 = v161;
  v188 = v153;
  v154 = v162;
  v187 = v154;
  [v151 sessionStateForType:6 callback:v185];

  v155 = *MEMORY[0x1E69E9840];
}

uint64_t __204__GEOAPPortal_UserActionCodeGen__captureEnterMapsShortUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

uint64_t __180__GEOAPPortal_UserActionCodeGen__captureArpPrivacyWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureSessionlessUserActionWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v117 = *MEMORY[0x1E69E9840];
  v100 = a5;
  v105 = a6;
  v104 = a7;
  v106 = a8;
  v99 = a9;
  v15 = a10;
  v95 = a11;
  v94 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  v96 = v15;
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v112 objects:v116 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v113;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v113 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v112 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v112 objects:v116 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:2];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  if (v28)
  {
    goto LABEL_16;
  }

  v29 = 0;
LABEL_14:
  v30 = [v16 stateForType:2];
  v28 = [v30 copy];

  if (v29)
  {
    LOBYTE(v31) = 1;
    goto LABEL_17;
  }

LABEL_16:
  v32 = [v16 logMsgStateTypeForType:6];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:v32];
  v31 = [v25 objectForKeyedSubscript:v33];

  v101 = v31;
  if (v31)
  {
    goto LABEL_19;
  }

LABEL_17:
  v34 = [v16 stateForType:6];
  v101 = [v34 copy];

  if ((v31 & 1) == 0)
  {
LABEL_19:
    v36 = [v16 logMsgStateTypeForType:30];
    v37 = [MEMORY[0x1E696AD98] numberWithInt:v36];
    v35 = [v25 objectForKeyedSubscript:v37];

    v102 = v35;
    if (v35)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  LOBYTE(v35) = 1;
LABEL_20:
  v38 = [v16 stateForType:30];
  v102 = [v38 copy];

  if (v35)
  {
    LOBYTE(v39) = 1;
    goto LABEL_24;
  }

LABEL_22:
  v40 = [v16 logMsgStateTypeForType:1];
  v41 = [MEMORY[0x1E696AD98] numberWithInt:v40];
  v39 = [v25 objectForKeyedSubscript:v41];

  if (!v39)
  {
LABEL_24:
    v42 = 1;
    v43 = [v16 stateForType:1];
    v98 = [v43 copy];

    if (v39)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v98 = v39;
LABEL_25:
  v44 = [v16 logMsgStateTypeForType:3];
  v45 = [MEMORY[0x1E696AD98] numberWithInt:v44];
  v46 = [v25 objectForKeyedSubscript:v45];

  if (v46)
  {
    goto LABEL_29;
  }

  v42 = 0;
LABEL_27:
  v47 = [v16 stateForType:3];
  v46 = [v47 copy];

  if (v42)
  {
    v48 = 1;
    goto LABEL_31;
  }

LABEL_29:
  v49 = [v16 logMsgStateTypeForType:42];
  v50 = [MEMORY[0x1E696AD98] numberWithInt:v49];
  v51 = [v25 objectForKeyedSubscript:v50];

  if (v51)
  {
    goto LABEL_33;
  }

  v48 = 0;
LABEL_31:
  v52 = [v16 stateForType:42];
  v51 = [v52 copy];

  if (v48)
  {
    v53 = 1;
    goto LABEL_35;
  }

LABEL_33:
  v54 = [v16 logMsgStateTypeForType:70];
  v55 = [MEMORY[0x1E696AD98] numberWithInt:v54];
  v56 = [v25 objectForKeyedSubscript:v55];

  if (v56)
  {
    goto LABEL_36;
  }

  v53 = 0;
LABEL_35:
  v57 = [v16 stateForType:70];
  v56 = [v57 copy];

  if (v53)
  {
LABEL_37:
    v61 = [v16 stateForType:17];
    v60 = [v61 copy];

    goto LABEL_38;
  }

LABEL_36:
  v58 = [v16 logMsgStateTypeForType:17];
  v59 = [MEMORY[0x1E696AD98] numberWithInt:v58];
  v60 = [v25 objectForKeyedSubscript:v59];

  if (!v60)
  {
    goto LABEL_37;
  }

LABEL_38:
  v62 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v62 setEventType:1];
  v63 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v62 setUserActionEvent:v63];

  v64 = [v62 userActionEvent];
  [v64 setUserActionEventAction:a3];

  v65 = [v62 userActionEvent];
  v66 = a4;
  [v65 setUserActionEventTarget:a4];

  v67 = [v62 userActionEvent];
  [v67 setUserActionEventValue:v100];

  v68 = [v62 userActionEvent];
  [v68 setActionRichProviderId:v99];

  v97 = v28;
  if (v105 || v104 || v106)
  {
    v69 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v70 = [v62 userActionEvent];
    [v70 setModuleInfo:v69];

    if (v105)
    {
      v71 = [v105 intValue];
      v72 = [v62 userActionEvent];
      v73 = [v72 moduleInfo];
      [v73 setType:v71];

      v66 = a4;
    }

    if (v104)
    {
      v74 = [v62 userActionEvent];
      v75 = [v74 moduleInfo];
      [v75 setModuleMetadata:v104];

      v66 = a4;
    }

    v28 = v97;
    if (v106)
    {
      v76 = [v62 userActionEvent];
      v77 = [v76 moduleInfo];
      [v77 setClassification:v106];

      v28 = v97;
      v66 = a4;
    }
  }

  if (v28)
  {
    [v62 addLogMsgState:v28];
  }

  if (v102)
  {
    [v62 addLogMsgState:?];
  }

  if (v98)
  {
    [v62 addLogMsgState:?];
  }

  if (v46)
  {
    [v62 addLogMsgState:v46];
  }

  if (v51)
  {
    [v62 addLogMsgState:v51];
  }

  if (v60)
  {
    [v62 addLogMsgState:v60];
  }

  if (v101)
  {
    [v62 addLogMsgState:v101];
  }

  if (v56)
  {
    [v62 addLogMsgState:v56];
  }

  if (a3 != 2059 || v66 != 201)
  {
    v81 = v66 == 30;
    if (a3 != 2059 || v66 != 30)
    {
      if (a3 == 469 && v66 == 201)
      {
        goto LABEL_65;
      }

      if (a3 != 469 || v66 != 30)
      {
        v80 = a3 == 477;
        if (a3 != 477 || a4 != 201)
        {
          goto LABEL_68;
        }

        v93 = [v16 stateForType:68];
        v79 = [v93 copy];

        v81 = 0;
        v80 = 1;
        if (v79)
        {
          goto LABEL_66;
        }

        goto LABEL_67;
      }
    }

    v92 = [v16 stateForType:68];
    v79 = [v92 copy];

    v80 = 0;
    v81 = 1;
    if (!v79)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_65:
  v78 = [v16 stateForType:68];
  v79 = [v78 copy];

  v80 = 0;
  v81 = 0;
  if (v79)
  {
LABEL_66:
    [v62 addLogMsgState:v79];
  }

LABEL_67:

LABEL_68:
  if (v80 && v81)
  {
    goto LABEL_76;
  }

  v82 = a3 == 2073;
  if (a3 == 2073 && a4 == 201)
  {
    v83 = [v16 stateForType:68];
    v84 = [v83 copy];

    if (v84)
    {
      [v62 addLogMsgState:v84];
    }

    v82 = 1;
  }

  if (v81 && v82)
  {
LABEL_76:
    v85 = [v16 stateForType:68];
    v86 = [v85 copy];

    if (v86)
    {
      [v62 addLogMsgState:v86];
    }
  }

  v87 = +[GEOAPStateFactory sharedFactory];
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = __191__GEOAPPortal_UserActionCodeGen__captureSessionlessUserActionWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v108[3] = &unk_1E7953B38;
  v110 = v95;
  v111 = v94;
  v109 = v62;
  v88 = v95;
  v89 = v94;
  v90 = v62;
  [v87 sessionStateForType:8 callback:v108];

  v91 = *MEMORY[0x1E69E9840];
}

uint64_t __191__GEOAPPortal_UserActionCodeGen__captureSessionlessUserActionWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureCarplayUserActionWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v175 = *MEMORY[0x1E69E9840];
  v161 = a5;
  v164 = a6;
  v163 = a7;
  v165 = a8;
  v160 = a9;
  v15 = a10;
  v144 = a11;
  v143 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  v145 = v15;
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v170 objects:v174 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v171;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v171 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v170 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v170 objects:v174 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:65];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  if (v28)
  {
    v159 = v28;

    goto LABEL_16;
  }

  v29 = 0;
LABEL_14:
  v30 = [v16 stateForType:65];
  v159 = [v30 copy];

  if (v29)
  {
    v31 = 1;
    goto LABEL_19;
  }

LABEL_16:
  v32 = [v16 logMsgStateTypeForType:5];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:v32];
  v34 = [v25 objectForKeyedSubscript:v33];

  if (v34)
  {
    v158 = v34;

    goto LABEL_21;
  }

  v31 = 0;
LABEL_19:
  v35 = [v16 stateForType:5];
  v158 = [v35 copy];

  if (v31)
  {
    v36 = 1;
    goto LABEL_24;
  }

LABEL_21:
  v37 = [v16 logMsgStateTypeForType:15];
  v38 = [MEMORY[0x1E696AD98] numberWithInt:v37];
  v39 = [v25 objectForKeyedSubscript:v38];

  if (v39)
  {
    v157 = v39;

    goto LABEL_26;
  }

  v36 = 0;
LABEL_24:
  v40 = [v16 stateForType:15];
  v157 = [v40 copy];

  if (v36)
  {
    v41 = 1;
    goto LABEL_29;
  }

LABEL_26:
  v42 = [v16 logMsgStateTypeForType:30];
  v43 = [MEMORY[0x1E696AD98] numberWithInt:v42];
  v44 = [v25 objectForKeyedSubscript:v43];

  if (v44)
  {
    v156 = v44;

    goto LABEL_31;
  }

  v41 = 0;
LABEL_29:
  v45 = [v16 stateForType:30];
  v156 = [v45 copy];

  if (v41)
  {
    v46 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v47 = [v16 logMsgStateTypeForType:1];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:v47];
  v49 = [v25 objectForKeyedSubscript:v48];

  if (!v49)
  {
    v46 = 0;
LABEL_34:
    v50 = 1;
    v51 = [v16 stateForType:1];
    v155 = [v51 copy];

    if (v46)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v155 = v49;

LABEL_35:
  v52 = [v16 logMsgStateTypeForType:3];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:v52];
  v54 = [v25 objectForKeyedSubscript:v53];

  if (v54)
  {
    v154 = v54;

    goto LABEL_40;
  }

  v50 = 0;
LABEL_38:
  v55 = [v16 stateForType:3];
  v154 = [v55 copy];

  if (v50)
  {
    v56 = 1;
    goto LABEL_43;
  }

LABEL_40:
  v57 = [v16 logMsgStateTypeForType:64];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:v57];
  v59 = [v25 objectForKeyedSubscript:v58];

  if (v59)
  {
    v153 = v59;

    goto LABEL_45;
  }

  v56 = 0;
LABEL_43:
  v60 = [v16 stateForType:64];
  v153 = [v60 copy];

  if (v56)
  {
    v61 = 1;
    goto LABEL_48;
  }

LABEL_45:
  v62 = [v16 logMsgStateTypeForType:13];
  v63 = [MEMORY[0x1E696AD98] numberWithInt:v62];
  v64 = [v25 objectForKeyedSubscript:v63];

  if (v64)
  {
    v152 = v64;

    goto LABEL_50;
  }

  v61 = 0;
LABEL_48:
  v65 = [v16 stateForType:13];
  v152 = [v65 copy];

  if (v61)
  {
    v66 = 1;
    goto LABEL_53;
  }

LABEL_50:
  v67 = [v16 logMsgStateTypeForType:14];
  v68 = [MEMORY[0x1E696AD98] numberWithInt:v67];
  v69 = [v25 objectForKeyedSubscript:v68];

  if (v69)
  {
    v151 = v69;

    goto LABEL_55;
  }

  v66 = 0;
LABEL_53:
  v70 = [v16 stateForType:14];
  v151 = [v70 copy];

  if (v66)
  {
    v71 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v72 = [v16 logMsgStateTypeForType:9];
  v73 = [MEMORY[0x1E696AD98] numberWithInt:v72];
  v74 = [v25 objectForKeyedSubscript:v73];

  if (v74)
  {
    v150 = v74;

    goto LABEL_60;
  }

  v71 = 0;
LABEL_58:
  v75 = [v16 stateForType:9];
  v150 = [v75 copy];

  if (v71)
  {
    v76 = 1;
    goto LABEL_63;
  }

LABEL_60:
  v77 = [v16 logMsgStateTypeForType:10];
  v78 = [MEMORY[0x1E696AD98] numberWithInt:v77];
  v79 = [v25 objectForKeyedSubscript:v78];

  if (v79)
  {
    v149 = v79;

    goto LABEL_65;
  }

  v76 = 0;
LABEL_63:
  v80 = [v16 stateForType:10];
  v149 = [v80 copy];

  if (v76)
  {
    v81 = 1;
    goto LABEL_68;
  }

LABEL_65:
  v82 = [v16 logMsgStateTypeForType:42];
  v83 = [MEMORY[0x1E696AD98] numberWithInt:v82];
  v84 = [v25 objectForKeyedSubscript:v83];

  if (v84)
  {
    v148 = v84;

    goto LABEL_70;
  }

  v81 = 0;
LABEL_68:
  v85 = [v16 stateForType:42];
  v148 = [v85 copy];

  if (v81)
  {
    v86 = 1;
    goto LABEL_73;
  }

LABEL_70:
  v87 = [v16 logMsgStateTypeForType:70];
  v88 = [MEMORY[0x1E696AD98] numberWithInt:v87];
  v89 = [v25 objectForKeyedSubscript:v88];

  if (v89)
  {
    v146 = v89;

    goto LABEL_75;
  }

  v86 = 0;
LABEL_73:
  v90 = [v16 stateForType:70];
  v91 = [v90 copy];

  v146 = v91;
  if (v86)
  {
    v92 = 1;
    goto LABEL_78;
  }

LABEL_75:
  v93 = [v16 logMsgStateTypeForType:17];
  v94 = [MEMORY[0x1E696AD98] numberWithInt:v93];
  v95 = [v25 objectForKeyedSubscript:v94];

  if (v95)
  {
    v96 = v95;

    goto LABEL_80;
  }

  v92 = 0;
LABEL_78:
  v97 = [v16 stateForType:17];
  v96 = [v97 copy];

  if (v92)
  {
    v98 = 1;
    goto LABEL_83;
  }

LABEL_80:
  v99 = [v16 logMsgStateTypeForType:19];
  v100 = [MEMORY[0x1E696AD98] numberWithInt:v99];
  v101 = [v25 objectForKeyedSubscript:v100];

  if (v101)
  {
    v102 = v101;

    goto LABEL_85;
  }

  v98 = 0;
LABEL_83:
  v103 = [v16 stateForType:19];
  v102 = [v103 copy];

  if (v98)
  {
    v104 = 1;
    goto LABEL_88;
  }

LABEL_85:
  v105 = [v16 logMsgStateTypeForType:63];
  v106 = [MEMORY[0x1E696AD98] numberWithInt:v105];
  v107 = [v25 objectForKeyedSubscript:v106];

  if (v107)
  {
    v108 = v107;

    goto LABEL_89;
  }

  v104 = 0;
LABEL_88:
  v109 = [v16 stateForType:63];
  v108 = [v109 copy];

  if (v104)
  {
LABEL_91:
    v142 = v25;
    v113 = [v16 stateForType:27];
    v114 = [v113 copy];

    goto LABEL_92;
  }

LABEL_89:
  v110 = [v16 logMsgStateTypeForType:27];
  v111 = [MEMORY[0x1E696AD98] numberWithInt:v110];
  v112 = [v25 objectForKeyedSubscript:v111];

  if (!v112)
  {
    goto LABEL_91;
  }

  v142 = v25;
  v113 = v112;
  v114 = v113;
LABEL_92:

  v115 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v115 setEventType:1];
  v116 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v115 setUserActionEvent:v116];

  v117 = [v115 userActionEvent];
  v118 = a3;
  [v117 setUserActionEventAction:a3];

  v119 = [v115 userActionEvent];
  [v119 setUserActionEventTarget:a4];

  v120 = [v115 userActionEvent];
  [v120 setUserActionEventValue:v161];

  v121 = [v115 userActionEvent];
  [v121 setActionRichProviderId:v160];

  if (v164 || v163 || v165)
  {
    v122 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v123 = [v115 userActionEvent];
    [v123 setModuleInfo:v122];

    if (v164)
    {
      v124 = [v164 intValue];
      v125 = [v115 userActionEvent];
      v126 = [v125 moduleInfo];
      [v126 setType:v124];
    }

    if (v163)
    {
      v127 = [v115 userActionEvent];
      v128 = [v127 moduleInfo];
      [v128 setModuleMetadata:v163];
    }

    v118 = a3;
    if (v165)
    {
      v129 = [v115 userActionEvent];
      v130 = [v129 moduleInfo];
      [v130 setClassification:v165];
    }
  }

  if (v159)
  {
    [v115 addLogMsgState:?];
  }

  v131 = v146;
  if (v158)
  {
    [v115 addLogMsgState:?];
  }

  if (v157)
  {
    [v115 addLogMsgState:v157];
  }

  if (v156)
  {
    [v115 addLogMsgState:?];
  }

  if (v155)
  {
    [v115 addLogMsgState:?];
  }

  if (v154)
  {
    [v115 addLogMsgState:v154];
  }

  if (v153)
  {
    [v115 addLogMsgState:?];
  }

  if (v152)
  {
    [v115 addLogMsgState:?];
  }

  if (v151)
  {
    [v115 addLogMsgState:v151];
  }

  if (v150)
  {
    [v115 addLogMsgState:?];
  }

  if (v149)
  {
    [v115 addLogMsgState:?];
  }

  if (v148)
  {
    [v115 addLogMsgState:v148];
  }

  if (v96)
  {
    [v115 addLogMsgState:v96];
  }

  if (v102)
  {
    [v115 addLogMsgState:v102];
  }

  if (v114)
  {
    [v115 addLogMsgState:v114];
  }

  if (v108)
  {
    [v115 addLogMsgState:v108];
  }

  if (v146)
  {
    [v115 addLogMsgState:v146];
  }

  if (v118 == 2015 && a4 == 1011)
  {
    v132 = [v16 stateForType:59];
    v133 = [v132 copy];

    if (v133)
    {
      [v115 addLogMsgState:v133];
    }

    v134 = [v16 stateForType:54];
    v135 = [v134 copy];

    if (v135)
    {
      [v115 addLogMsgState:v135];
    }

    v131 = v146;
LABEL_150:

    goto LABEL_151;
  }

  if (v118 == 6097 && a4 == 1009 || v118 == 2007 && a4 == 1023 || a4 == 1011 && v118 == 2007)
  {
    v136 = [v16 stateForType:68];
    v133 = [v136 copy];

    if (v133)
    {
      [v115 addLogMsgState:v133];
    }

    goto LABEL_150;
  }

LABEL_151:
  v137 = +[GEOAPStateFactory sharedFactory];
  v166[0] = MEMORY[0x1E69E9820];
  v166[1] = 3221225472;
  v166[2] = __187__GEOAPPortal_UserActionCodeGen__captureCarplayUserActionWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v166[3] = &unk_1E7953B38;
  v138 = v115;
  v167 = v138;
  v139 = v143;
  v169 = v139;
  v140 = v144;
  v168 = v140;
  [v137 sessionStateForType:6 callback:v166];

  v141 = *MEMORY[0x1E69E9840];
}

uint64_t __187__GEOAPPortal_UserActionCodeGen__captureCarplayUserActionWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureRapShortAndSessionlessUserActionTargetPairWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v226 = *MEMORY[0x1E69E9840];
  v211 = a5;
  v15 = a6;
  v204 = a7;
  v212 = a8;
  v210 = a9;
  v16 = a10;
  v183 = a11;
  v182 = a12;
  v17 = +[GEOAPStateFactory sharedFactory];
  v202 = v15;
  v185 = v16;
  if ([v16 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v221 = 0u;
    v222 = 0u;
    v223 = 0u;
    v224 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v221 objects:v225 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v222;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v222 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v221 + 1) + 8 * i);
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "stateType")}];
          [v18 setObject:v24 forKeyedSubscript:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v221 objects:v225 count:16];
      }

      while (v21);
    }

    v26 = [v18 copy];
    if (v26)
    {
      v27 = [v17 logMsgStateTypeForType:2];
      v28 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      v29 = [v26 objectForKeyedSubscript:v28];

      if (v29)
      {
        v201 = v29;

        v15 = v202;
        goto LABEL_18;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v15 = v202;
  }

  else
  {
    v26 = 0;
    v30 = 1;
  }

  v31 = [v17 stateForType:2];
  v201 = [v31 copy];

  if (v30)
  {
    v32 = 1;
    goto LABEL_21;
  }

LABEL_18:
  v33 = [v17 logMsgStateTypeForType:65];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:v33];
  v35 = [v26 objectForKeyedSubscript:v34];

  if (v35)
  {
    v200 = v35;

    goto LABEL_23;
  }

  v32 = 0;
LABEL_21:
  v36 = [v17 stateForType:65];
  v200 = [v36 copy];

  if (v32)
  {
    v37 = 1;
    goto LABEL_26;
  }

LABEL_23:
  v38 = [v17 logMsgStateTypeForType:5];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:v38];
  v40 = [v26 objectForKeyedSubscript:v39];

  if (v40)
  {
    v197 = v40;

    goto LABEL_28;
  }

  v37 = 0;
LABEL_26:
  v41 = [v17 stateForType:5];
  v197 = [v41 copy];

  if (v37)
  {
    v42 = 1;
    goto LABEL_31;
  }

LABEL_28:
  v43 = [v17 logMsgStateTypeForType:6];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:v43];
  v45 = [v26 objectForKeyedSubscript:v44];

  if (v45)
  {
    v196 = v45;

    goto LABEL_33;
  }

  v42 = 0;
LABEL_31:
  v46 = [v17 stateForType:6];
  v196 = [v46 copy];

  if (v42)
  {
    v47 = 1;
    goto LABEL_36;
  }

LABEL_33:
  v48 = [v17 logMsgStateTypeForType:15];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:v48];
  v50 = [v26 objectForKeyedSubscript:v49];

  if (v50)
  {
    v195 = v50;

    goto LABEL_38;
  }

  v47 = 0;
LABEL_36:
  v51 = [v17 stateForType:15];
  v195 = [v51 copy];

  if (v47)
  {
    v52 = 1;
    goto LABEL_41;
  }

LABEL_38:
  v53 = [v17 logMsgStateTypeForType:35];
  v54 = [MEMORY[0x1E696AD98] numberWithInt:v53];
  v55 = [v26 objectForKeyedSubscript:v54];

  if (v55)
  {
    v194 = v55;

    goto LABEL_43;
  }

  v52 = 0;
LABEL_41:
  v56 = [v17 stateForType:35];
  v194 = [v56 copy];

  if (v52)
  {
    v57 = 1;
    goto LABEL_46;
  }

LABEL_43:
  v58 = [v17 logMsgStateTypeForType:30];
  v59 = [MEMORY[0x1E696AD98] numberWithInt:v58];
  v60 = [v26 objectForKeyedSubscript:v59];

  if (v60)
  {
    v209 = v60;

    goto LABEL_48;
  }

  v57 = 0;
LABEL_46:
  v61 = [v17 stateForType:30];
  v209 = [v61 copy];

  if (v57)
  {
    v62 = 1;
    goto LABEL_51;
  }

LABEL_48:
  v63 = [v17 logMsgStateTypeForType:1];
  v64 = [MEMORY[0x1E696AD98] numberWithInt:v63];
  v65 = [v26 objectForKeyedSubscript:v64];

  if (!v65)
  {
    v62 = 0;
LABEL_51:
    v66 = 1;
    v67 = [v17 stateForType:1];
    v208 = [v67 copy];

    if (v62)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

  v208 = v65;

LABEL_52:
  v68 = [v17 logMsgStateTypeForType:3];
  v69 = [MEMORY[0x1E696AD98] numberWithInt:v68];
  v70 = [v26 objectForKeyedSubscript:v69];

  if (v70)
  {
    v71 = v70;

    goto LABEL_57;
  }

  v66 = 0;
LABEL_55:
  v72 = [v17 stateForType:3];
  v71 = [v72 copy];

  if (v66)
  {
    v73 = 1;
    goto LABEL_60;
  }

LABEL_57:
  v74 = [v17 logMsgStateTypeForType:64];
  v75 = [MEMORY[0x1E696AD98] numberWithInt:v74];
  v76 = [v26 objectForKeyedSubscript:v75];

  if (v76)
  {
    v207 = v76;

    goto LABEL_62;
  }

  v73 = 0;
LABEL_60:
  v77 = [v17 stateForType:64];
  v207 = [v77 copy];

  if (v73)
  {
    v78 = 1;
    goto LABEL_65;
  }

LABEL_62:
  v79 = [v17 logMsgStateTypeForType:13];
  v80 = [MEMORY[0x1E696AD98] numberWithInt:v79];
  v81 = [v26 objectForKeyedSubscript:v80];

  if (v81)
  {
    v193 = v81;

    goto LABEL_67;
  }

  v78 = 0;
LABEL_65:
  v82 = [v17 stateForType:13];
  v193 = [v82 copy];

  if (v78)
  {
    v83 = 1;
    goto LABEL_70;
  }

LABEL_67:
  v84 = [v17 logMsgStateTypeForType:14];
  v85 = [MEMORY[0x1E696AD98] numberWithInt:v84];
  v86 = [v26 objectForKeyedSubscript:v85];

  if (v86)
  {
    v192 = v86;

    goto LABEL_72;
  }

  v83 = 0;
LABEL_70:
  v87 = [v17 stateForType:14];
  v192 = [v87 copy];

  if (v83)
  {
    v88 = 1;
    goto LABEL_75;
  }

LABEL_72:
  v89 = [v17 logMsgStateTypeForType:9];
  v90 = [MEMORY[0x1E696AD98] numberWithInt:v89];
  v91 = [v26 objectForKeyedSubscript:v90];

  if (v91)
  {
    v191 = v91;

    goto LABEL_77;
  }

  v88 = 0;
LABEL_75:
  v92 = [v17 stateForType:9];
  v191 = [v92 copy];

  if (v88)
  {
    v93 = 1;
    goto LABEL_80;
  }

LABEL_77:
  v94 = [v17 logMsgStateTypeForType:10];
  v95 = [MEMORY[0x1E696AD98] numberWithInt:v94];
  v96 = [v26 objectForKeyedSubscript:v95];

  if (v96)
  {
    v190 = v96;

    goto LABEL_82;
  }

  v93 = 0;
LABEL_80:
  v97 = [v17 stateForType:10];
  v190 = [v97 copy];

  if (v93)
  {
    v98 = 1;
    goto LABEL_85;
  }

LABEL_82:
  v99 = [v17 logMsgStateTypeForType:20];
  v100 = [MEMORY[0x1E696AD98] numberWithInt:v99];
  v101 = [v26 objectForKeyedSubscript:v100];

  if (v101)
  {
    v189 = v101;

    goto LABEL_87;
  }

  v98 = 0;
LABEL_85:
  v102 = [v17 stateForType:20];
  v189 = [v102 copy];

  if (v98)
  {
    v103 = 1;
    goto LABEL_90;
  }

LABEL_87:
  v104 = [v17 logMsgStateTypeForType:42];
  v105 = [MEMORY[0x1E696AD98] numberWithInt:v104];
  v106 = [v26 objectForKeyedSubscript:v105];

  if (v106)
  {
    v206 = v106;

    goto LABEL_92;
  }

  v103 = 0;
LABEL_90:
  v107 = [v17 stateForType:42];
  v206 = [v107 copy];

  if (v103)
  {
    v108 = 1;
    goto LABEL_95;
  }

LABEL_92:
  v109 = [v17 logMsgStateTypeForType:70];
  v110 = [MEMORY[0x1E696AD98] numberWithInt:v109];
  v111 = [v26 objectForKeyedSubscript:v110];

  if (v111)
  {
    v188 = v111;

    goto LABEL_97;
  }

  v108 = 0;
LABEL_95:
  v112 = [v17 stateForType:70];
  v188 = [v112 copy];

  if (v108)
  {
    v113 = 1;
    goto LABEL_100;
  }

LABEL_97:
  v114 = [v17 logMsgStateTypeForType:7];
  v115 = [MEMORY[0x1E696AD98] numberWithInt:v114];
  v116 = [v26 objectForKeyedSubscript:v115];

  if (v116)
  {
    v117 = v116;

    goto LABEL_102;
  }

  v113 = 0;
LABEL_100:
  v118 = [v17 stateForType:7];
  v117 = [v118 copy];

  if (v113)
  {
    v119 = 1;
    goto LABEL_105;
  }

LABEL_102:
  v120 = [v17 logMsgStateTypeForType:17];
  v121 = [MEMORY[0x1E696AD98] numberWithInt:v120];
  v122 = [v26 objectForKeyedSubscript:v121];

  if (v122)
  {
    v123 = v122;

    goto LABEL_107;
  }

  v119 = 0;
LABEL_105:
  v124 = [v17 stateForType:17];
  v123 = [v124 copy];

  if (v119)
  {
    v125 = 1;
    goto LABEL_110;
  }

LABEL_107:
  v126 = [v17 logMsgStateTypeForType:51];
  v127 = [MEMORY[0x1E696AD98] numberWithInt:v126];
  v128 = [v26 objectForKeyedSubscript:v127];

  if (v128)
  {
    v205 = v128;

    goto LABEL_112;
  }

  v125 = 0;
LABEL_110:
  v129 = [v17 stateForType:51];
  v205 = [v129 copy];

  if (v125)
  {
    v130 = 1;
    goto LABEL_115;
  }

LABEL_112:
  v131 = [v17 logMsgStateTypeForType:19];
  v132 = [MEMORY[0x1E696AD98] numberWithInt:v131];
  v133 = [v26 objectForKeyedSubscript:v132];

  if (!v133)
  {
    v130 = 0;
LABEL_115:
    v134 = [v17 stateForType:19];
    v187 = [v134 copy];

    if (v130)
    {
      goto LABEL_119;
    }

    goto LABEL_116;
  }

  v187 = v133;

LABEL_116:
  v135 = v71;
  v136 = [v17 logMsgStateTypeForType:27];
  v137 = [MEMORY[0x1E696AD98] numberWithInt:v136];
  v138 = [v26 objectForKeyedSubscript:v137];

  if (v138)
  {
    v184 = v26;
    v139 = v138;
    v186 = v139;
    v71 = v135;
    goto LABEL_120;
  }

  v71 = v135;
LABEL_119:
  v184 = v26;
  v139 = [v17 stateForType:27];
  v186 = [v139 copy];

LABEL_120:
  v140 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v140 setEventType:1];
  v141 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v140 setUserActionEvent:v141];

  v142 = [v140 userActionEvent];
  [v142 setUserActionEventAction:a3];

  v143 = [v140 userActionEvent];
  [v143 setUserActionEventTarget:a4];

  v144 = [v140 userActionEvent];
  [v144 setUserActionEventValue:v211];

  v145 = [v140 userActionEvent];
  [v145 setActionRichProviderId:v210];

  v146 = v204;
  v147 = v15 | v204 | v212;
  v148 = v147 != 0;
  v203 = v71;
  if (v147)
  {
    v149 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v150 = [v140 userActionEvent];
    [v150 setModuleInfo:v149];

    if (v15)
    {
      v151 = [v15 intValue];
      v152 = [v140 userActionEvent];
      v153 = [v152 moduleInfo];
      [v153 setType:v151];

      v146 = v204;
    }

    if (v146)
    {
      v154 = [v140 userActionEvent];
      v155 = [v154 moduleInfo];
      [v155 setModuleMetadata:v146];
    }

    v71 = v203;
    if (v212)
    {
      v156 = [v140 userActionEvent];
      v157 = [v156 moduleInfo];
      [v157 setClassification:v212];

      v71 = v203;
    }
  }

  if (v200)
  {
    [v140 addLogMsgState:?];
  }

  if (v197)
  {
    [v140 addLogMsgState:?];
  }

  if (v195)
  {
    [v140 addLogMsgState:v195];
  }

  if (v194)
  {
    [v140 addLogMsgState:?];
  }

  if (v209)
  {
    [v140 addLogMsgState:?];
  }

  if (v208)
  {
    [v140 addLogMsgState:v208];
  }

  if (v71)
  {
    [v140 addLogMsgState:v71];
  }

  if (v207)
  {
    [v140 addLogMsgState:v207];
  }

  if (v193)
  {
    [v140 addLogMsgState:v193];
  }

  if (v192)
  {
    [v140 addLogMsgState:?];
  }

  if (v191)
  {
    [v140 addLogMsgState:?];
  }

  if (v190)
  {
    [v140 addLogMsgState:v190];
  }

  if (v189)
  {
    [v140 addLogMsgState:?];
  }

  if (v206)
  {
    [v140 addLogMsgState:v206];
  }

  if (v117)
  {
    [v140 addLogMsgState:v117];
  }

  if (v123)
  {
    [v140 addLogMsgState:v123];
  }

  if (v187)
  {
    [v140 addLogMsgState:v187];
  }

  if (v186)
  {
    [v140 addLogMsgState:?];
  }

  if (v205)
  {
    [v140 addLogMsgState:?];
  }

  if (v188)
  {
    [v140 addLogMsgState:v188];
  }

  v158 = +[GEOAPStateFactory sharedFactory];
  v217[0] = MEMORY[0x1E69E9820];
  v217[1] = 3221225472;
  v217[2] = __212__GEOAPPortal_UserActionCodeGen__captureRapShortAndSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v217[3] = &unk_1E7953B38;
  v159 = v140;
  v218 = v159;
  v160 = v182;
  v220 = v160;
  v161 = v183;
  v219 = v161;
  [v158 sessionStateForType:6 callback:v217];

  v162 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v162 setEventType:1];
  v163 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v162 setUserActionEvent:v163];

  v164 = [v162 userActionEvent];
  [v164 setUserActionEventAction:a3];

  v165 = [v162 userActionEvent];
  [v165 setUserActionEventTarget:a4];

  v166 = [v162 userActionEvent];
  [v166 setUserActionEventValue:v211];

  v167 = [v162 userActionEvent];
  [v167 setActionRichProviderId:v210];

  if (v148)
  {
    v168 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v169 = [v162 userActionEvent];
    [v169 setModuleInfo:v168];

    if (v202)
    {
      v170 = [v202 intValue];
      v171 = [v162 userActionEvent];
      v172 = [v171 moduleInfo];
      [v172 setType:v170];
    }

    if (v204)
    {
      v173 = [v162 userActionEvent];
      v174 = [v173 moduleInfo];
      [v174 setModuleMetadata:v204];
    }

    if (v212)
    {
      v175 = [v162 userActionEvent];
      v176 = [v175 moduleInfo];
      [v176 setClassification:v212];
    }
  }

  if (v201)
  {
    [v162 addLogMsgState:?];
  }

  if (v209)
  {
    [v162 addLogMsgState:?];
  }

  if (v208)
  {
    [v162 addLogMsgState:?];
  }

  if (v203)
  {
    [v162 addLogMsgState:v203];
  }

  if (v206)
  {
    [v162 addLogMsgState:?];
  }

  if (v196)
  {
    [v162 addLogMsgState:v196];
  }

  if (v205)
  {
    [v162 addLogMsgState:?];
  }

  if (v188)
  {
    [v162 addLogMsgState:v188];
  }

  v177 = +[GEOAPStateFactory sharedFactory];
  v213[0] = MEMORY[0x1E69E9820];
  v213[1] = 3221225472;
  v213[2] = __212__GEOAPPortal_UserActionCodeGen__captureRapShortAndSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke_2;
  v213[3] = &unk_1E7953B38;
  v178 = v162;
  v214 = v178;
  v179 = v160;
  v216 = v179;
  v180 = v161;
  v215 = v180;
  [v177 sessionStateForType:7 callback:v213];

  v181 = *MEMORY[0x1E69E9840];
}

uint64_t __212__GEOAPPortal_UserActionCodeGen__captureRapShortAndSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

uint64_t __212__GEOAPPortal_UserActionCodeGen__captureRapShortAndSessionlessUserActionTargetPairWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureRapUserActionShortOnlyWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v186 = *MEMORY[0x1E69E9840];
  v174 = a5;
  v173 = a6;
  v175 = a7;
  v176 = a8;
  v172 = a9;
  v15 = a10;
  v155 = a11;
  v154 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  v156 = v15;
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v181 objects:v185 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v182;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v182 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v181 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v181 objects:v185 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:65];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  if (v28)
  {
    v171 = v28;

    goto LABEL_16;
  }

  v29 = 0;
LABEL_14:
  v30 = [v16 stateForType:65];
  v171 = [v30 copy];

  if (v29)
  {
    v31 = 1;
    goto LABEL_19;
  }

LABEL_16:
  v32 = [v16 logMsgStateTypeForType:5];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:v32];
  v34 = [v25 objectForKeyedSubscript:v33];

  if (v34)
  {
    v170 = v34;

    goto LABEL_21;
  }

  v31 = 0;
LABEL_19:
  v35 = [v16 stateForType:5];
  v170 = [v35 copy];

  if (v31)
  {
    v36 = 1;
    goto LABEL_24;
  }

LABEL_21:
  v37 = [v16 logMsgStateTypeForType:15];
  v38 = [MEMORY[0x1E696AD98] numberWithInt:v37];
  v39 = [v25 objectForKeyedSubscript:v38];

  if (v39)
  {
    v169 = v39;

    goto LABEL_26;
  }

  v36 = 0;
LABEL_24:
  v40 = [v16 stateForType:15];
  v169 = [v40 copy];

  if (v36)
  {
    v41 = 1;
    goto LABEL_29;
  }

LABEL_26:
  v42 = [v16 logMsgStateTypeForType:35];
  v43 = [MEMORY[0x1E696AD98] numberWithInt:v42];
  v44 = [v25 objectForKeyedSubscript:v43];

  if (v44)
  {
    v168 = v44;

    goto LABEL_31;
  }

  v41 = 0;
LABEL_29:
  v45 = [v16 stateForType:35];
  v168 = [v45 copy];

  if (v41)
  {
    v46 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v47 = [v16 logMsgStateTypeForType:30];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:v47];
  v49 = [v25 objectForKeyedSubscript:v48];

  if (v49)
  {
    v167 = v49;

    goto LABEL_36;
  }

  v46 = 0;
LABEL_34:
  v50 = [v16 stateForType:30];
  v167 = [v50 copy];

  if (v46)
  {
    v51 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v52 = [v16 logMsgStateTypeForType:1];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:v52];
  v54 = [v25 objectForKeyedSubscript:v53];

  if (!v54)
  {
    v51 = 0;
LABEL_39:
    v55 = 1;
    v56 = [v16 stateForType:1];
    v166 = [v56 copy];

    if (v51)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v166 = v54;

LABEL_40:
  v57 = [v16 logMsgStateTypeForType:3];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:v57];
  v59 = [v25 objectForKeyedSubscript:v58];

  if (v59)
  {
    v165 = v59;

    goto LABEL_45;
  }

  v55 = 0;
LABEL_43:
  v60 = [v16 stateForType:3];
  v165 = [v60 copy];

  if (v55)
  {
    v61 = 1;
    goto LABEL_48;
  }

LABEL_45:
  v62 = [v16 logMsgStateTypeForType:64];
  v63 = [MEMORY[0x1E696AD98] numberWithInt:v62];
  v64 = [v25 objectForKeyedSubscript:v63];

  if (v64)
  {
    v164 = v64;

    goto LABEL_50;
  }

  v61 = 0;
LABEL_48:
  v65 = [v16 stateForType:64];
  v164 = [v65 copy];

  if (v61)
  {
    v66 = 1;
    goto LABEL_53;
  }

LABEL_50:
  v67 = [v16 logMsgStateTypeForType:13];
  v68 = [MEMORY[0x1E696AD98] numberWithInt:v67];
  v69 = [v25 objectForKeyedSubscript:v68];

  if (v69)
  {
    v163 = v69;

    goto LABEL_55;
  }

  v66 = 0;
LABEL_53:
  v70 = [v16 stateForType:13];
  v163 = [v70 copy];

  if (v66)
  {
    v71 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v72 = [v16 logMsgStateTypeForType:14];
  v73 = [MEMORY[0x1E696AD98] numberWithInt:v72];
  v74 = [v25 objectForKeyedSubscript:v73];

  if (v74)
  {
    v162 = v74;

    goto LABEL_60;
  }

  v71 = 0;
LABEL_58:
  v75 = [v16 stateForType:14];
  v162 = [v75 copy];

  if (v71)
  {
    v76 = 1;
    goto LABEL_63;
  }

LABEL_60:
  v77 = [v16 logMsgStateTypeForType:9];
  v78 = [MEMORY[0x1E696AD98] numberWithInt:v77];
  v79 = [v25 objectForKeyedSubscript:v78];

  if (v79)
  {
    v161 = v79;

    goto LABEL_65;
  }

  v76 = 0;
LABEL_63:
  v80 = [v16 stateForType:9];
  v161 = [v80 copy];

  if (v76)
  {
    v81 = 1;
    goto LABEL_68;
  }

LABEL_65:
  v82 = [v16 logMsgStateTypeForType:10];
  v83 = [MEMORY[0x1E696AD98] numberWithInt:v82];
  v84 = [v25 objectForKeyedSubscript:v83];

  if (v84)
  {
    v160 = v84;

    goto LABEL_70;
  }

  v81 = 0;
LABEL_68:
  v85 = [v16 stateForType:10];
  v160 = [v85 copy];

  if (v81)
  {
    v86 = 1;
    goto LABEL_73;
  }

LABEL_70:
  v87 = [v16 logMsgStateTypeForType:20];
  v88 = [MEMORY[0x1E696AD98] numberWithInt:v87];
  v89 = [v25 objectForKeyedSubscript:v88];

  if (v89)
  {
    v159 = v89;

    goto LABEL_75;
  }

  v86 = 0;
LABEL_73:
  v90 = [v16 stateForType:20];
  v159 = [v90 copy];

  if (v86)
  {
    v91 = 1;
    goto LABEL_78;
  }

LABEL_75:
  v92 = [v16 logMsgStateTypeForType:42];
  v93 = [MEMORY[0x1E696AD98] numberWithInt:v92];
  v94 = [v25 objectForKeyedSubscript:v93];

  if (v94)
  {
    v158 = v94;

    goto LABEL_80;
  }

  v91 = 0;
LABEL_78:
  v95 = [v16 stateForType:42];
  v158 = [v95 copy];

  if (v91)
  {
    v96 = 1;
    goto LABEL_83;
  }

LABEL_80:
  v97 = [v16 logMsgStateTypeForType:70];
  v98 = [MEMORY[0x1E696AD98] numberWithInt:v97];
  v99 = [v25 objectForKeyedSubscript:v98];

  if (v99)
  {
    v151 = v99;

    goto LABEL_85;
  }

  v96 = 0;
LABEL_83:
  v100 = [v16 stateForType:70];
  v151 = [v100 copy];

  if (v96)
  {
    v101 = 1;
    goto LABEL_88;
  }

LABEL_85:
  v102 = [v16 logMsgStateTypeForType:7];
  v103 = [MEMORY[0x1E696AD98] numberWithInt:v102];
  v104 = [v25 objectForKeyedSubscript:v103];

  if (v104)
  {
    v105 = v104;

    goto LABEL_90;
  }

  v101 = 0;
LABEL_88:
  v106 = [v16 stateForType:7];
  v105 = [v106 copy];

  if (v101)
  {
    v107 = 1;
    goto LABEL_93;
  }

LABEL_90:
  v108 = [v16 logMsgStateTypeForType:17];
  v109 = [MEMORY[0x1E696AD98] numberWithInt:v108];
  v110 = [v25 objectForKeyedSubscript:v109];

  if (v110)
  {
    v111 = v110;

    goto LABEL_95;
  }

  v107 = 0;
LABEL_93:
  v112 = [v16 stateForType:17];
  v111 = [v112 copy];

  if (v107)
  {
    v113 = 1;
    goto LABEL_98;
  }

LABEL_95:
  v114 = [v16 logMsgStateTypeForType:51];
  v115 = [MEMORY[0x1E696AD98] numberWithInt:v114];
  v116 = [v25 objectForKeyedSubscript:v115];

  if (v116)
  {
    v157 = v116;

    goto LABEL_100;
  }

  v113 = 0;
LABEL_98:
  v117 = [v16 stateForType:51];
  v157 = [v117 copy];

  if (v113)
  {
    v118 = 1;
    goto LABEL_103;
  }

LABEL_100:
  v119 = [v16 logMsgStateTypeForType:19];
  v120 = [MEMORY[0x1E696AD98] numberWithInt:v119];
  v121 = [v25 objectForKeyedSubscript:v120];

  if (v121)
  {
    v122 = v121;

    goto LABEL_104;
  }

  v118 = 0;
LABEL_103:
  v123 = [v16 stateForType:19];
  v122 = [v123 copy];

  if (v118)
  {
LABEL_106:
    v150 = v25;
    v127 = [v16 stateForType:27];
    v128 = [v127 copy];

    goto LABEL_107;
  }

LABEL_104:
  v124 = [v16 logMsgStateTypeForType:27];
  v125 = [MEMORY[0x1E696AD98] numberWithInt:v124];
  v126 = [v25 objectForKeyedSubscript:v125];

  if (!v126)
  {
    goto LABEL_106;
  }

  v150 = v25;
  v127 = v126;
  v128 = v127;
LABEL_107:

  v129 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v129 setEventType:1];
  v130 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v129 setUserActionEvent:v130];

  v131 = [v129 userActionEvent];
  [v131 setUserActionEventAction:a3];

  v132 = [v129 userActionEvent];
  [v132 setUserActionEventTarget:a4];

  v133 = [v129 userActionEvent];
  [v133 setUserActionEventValue:v174];

  v134 = [v129 userActionEvent];
  [v134 setActionRichProviderId:v172];

  if (v173 || v175 || v176)
  {
    v135 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v136 = [v129 userActionEvent];
    [v136 setModuleInfo:v135];

    if (v173)
    {
      v137 = [v173 intValue];
      v138 = [v129 userActionEvent];
      v139 = [v138 moduleInfo];
      [v139 setType:v137];
    }

    if (v175)
    {
      v140 = [v129 userActionEvent];
      v141 = [v140 moduleInfo];
      [v141 setModuleMetadata:v175];
    }

    if (v176)
    {
      v142 = [v129 userActionEvent];
      v143 = [v142 moduleInfo];
      [v143 setClassification:v176];
    }
  }

  if (v171)
  {
    [v129 addLogMsgState:?];
  }

  if (v170)
  {
    [v129 addLogMsgState:?];
  }

  if (v169)
  {
    [v129 addLogMsgState:v169];
  }

  if (v168)
  {
    [v129 addLogMsgState:?];
  }

  if (v167)
  {
    [v129 addLogMsgState:?];
  }

  if (v166)
  {
    [v129 addLogMsgState:v166];
  }

  if (v165)
  {
    [v129 addLogMsgState:?];
  }

  if (v164)
  {
    [v129 addLogMsgState:?];
  }

  if (v163)
  {
    [v129 addLogMsgState:v163];
  }

  if (v162)
  {
    [v129 addLogMsgState:?];
  }

  if (v161)
  {
    [v129 addLogMsgState:?];
  }

  if (v160)
  {
    [v129 addLogMsgState:v160];
  }

  if (v159)
  {
    [v129 addLogMsgState:?];
  }

  if (v158)
  {
    [v129 addLogMsgState:?];
  }

  if (v105)
  {
    [v129 addLogMsgState:v105];
  }

  if (v111)
  {
    [v129 addLogMsgState:v111];
  }

  if (v122)
  {
    [v129 addLogMsgState:v122];
  }

  if (v128)
  {
    [v129 addLogMsgState:v128];
  }

  if (v157)
  {
    [v129 addLogMsgState:v157];
  }

  v144 = v105;
  if (v151)
  {
    [v129 addLogMsgState:v151];
  }

  v145 = +[GEOAPStateFactory sharedFactory];
  v177[0] = MEMORY[0x1E69E9820];
  v177[1] = 3221225472;
  v177[2] = __192__GEOAPPortal_UserActionCodeGen__captureRapUserActionShortOnlyWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v177[3] = &unk_1E7953B38;
  v146 = v129;
  v178 = v146;
  v147 = v154;
  v180 = v147;
  v148 = v155;
  v179 = v148;
  [v145 sessionStateForType:6 callback:v177];

  v149 = *MEMORY[0x1E69E9840];
}

uint64_t __192__GEOAPPortal_UserActionCodeGen__captureRapUserActionShortOnlyWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureMuninCameraUserActionShortOnlyWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  LODWORD(v121) = a3;
  HIDWORD(v121) = a4;
  v149 = *MEMORY[0x1E69E9840];
  v137 = a5;
  v15 = a6;
  v138 = a7;
  v139 = a8;
  v136 = a9;
  v16 = a10;
  v123 = a11;
  v122 = a12;
  v17 = +[GEOAPStateFactory sharedFactory];
  v124 = v16;
  v125 = v15;
  if ([v16 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v144 objects:v148 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v145;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v145 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v144 + 1) + 8 * i);
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "stateType", v121)}];
          [v18 setObject:v24 forKeyedSubscript:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v144 objects:v148 count:16];
      }

      while (v21);
    }

    v26 = [v18 copy];
    if (v26)
    {
      v27 = [v17 logMsgStateTypeForType:65];
      v28 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      v29 = [v26 objectForKeyedSubscript:v28];

      if (v29)
      {
        v30 = v29;

        v15 = v125;
        goto LABEL_18;
      }

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v15 = v125;
  }

  else
  {
    v26 = 0;
    v31 = 1;
  }

  v32 = [v17 stateForType:{65, v121}];
  v30 = [v32 copy];

  if (v31)
  {
    v33 = 1;
    goto LABEL_21;
  }

LABEL_18:
  v34 = [v17 logMsgStateTypeForType:{15, v121}];
  v35 = [MEMORY[0x1E696AD98] numberWithInt:v34];
  v36 = [v26 objectForKeyedSubscript:v35];

  if (v36)
  {
    v135 = v36;

    goto LABEL_23;
  }

  v33 = 0;
LABEL_21:
  v37 = [v17 stateForType:15];
  v135 = [v37 copy];

  if (v33)
  {
    v38 = 1;
    goto LABEL_26;
  }

LABEL_23:
  v39 = [v17 logMsgStateTypeForType:35];
  v40 = [MEMORY[0x1E696AD98] numberWithInt:v39];
  v41 = [v26 objectForKeyedSubscript:v40];

  if (v41)
  {
    v134 = v41;

    goto LABEL_28;
  }

  v38 = 0;
LABEL_26:
  v42 = [v17 stateForType:35];
  v134 = [v42 copy];

  if (v38)
  {
    v43 = 1;
    goto LABEL_31;
  }

LABEL_28:
  v44 = [v17 logMsgStateTypeForType:30];
  v45 = [MEMORY[0x1E696AD98] numberWithInt:v44];
  v46 = [v26 objectForKeyedSubscript:v45];

  if (v46)
  {
    v133 = v46;

    goto LABEL_33;
  }

  v43 = 0;
LABEL_31:
  v47 = [v17 stateForType:30];
  v133 = [v47 copy];

  if (v43)
  {
    v48 = 1;
    goto LABEL_36;
  }

LABEL_33:
  v49 = [v17 logMsgStateTypeForType:1];
  v50 = [MEMORY[0x1E696AD98] numberWithInt:v49];
  v51 = [v26 objectForKeyedSubscript:v50];

  if (!v51)
  {
    v48 = 0;
LABEL_36:
    v52 = 1;
    v53 = [v17 stateForType:1];
    v132 = [v53 copy];

    if (v48)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  v132 = v51;

LABEL_37:
  v54 = [v17 logMsgStateTypeForType:3];
  v55 = [MEMORY[0x1E696AD98] numberWithInt:v54];
  v56 = [v26 objectForKeyedSubscript:v55];

  if (v56)
  {
    v131 = v56;

    goto LABEL_42;
  }

  v52 = 0;
LABEL_40:
  v57 = [v17 stateForType:3];
  v131 = [v57 copy];

  if (v52)
  {
    v58 = 1;
    goto LABEL_45;
  }

LABEL_42:
  v59 = [v17 logMsgStateTypeForType:32];
  v60 = [MEMORY[0x1E696AD98] numberWithInt:v59];
  v61 = [v26 objectForKeyedSubscript:v60];

  if (v61)
  {
    v130 = v61;

    goto LABEL_47;
  }

  v58 = 0;
LABEL_45:
  v62 = [v17 stateForType:32];
  v130 = [v62 copy];

  if (v58)
  {
    v63 = 1;
    goto LABEL_50;
  }

LABEL_47:
  v64 = [v17 logMsgStateTypeForType:13];
  v65 = [MEMORY[0x1E696AD98] numberWithInt:v64];
  v66 = [v26 objectForKeyedSubscript:v65];

  if (v66)
  {
    v129 = v66;

    goto LABEL_52;
  }

  v63 = 0;
LABEL_50:
  v67 = [v17 stateForType:13];
  v129 = [v67 copy];

  if (v63)
  {
    v68 = 1;
    goto LABEL_55;
  }

LABEL_52:
  v69 = [v17 logMsgStateTypeForType:14];
  v70 = [MEMORY[0x1E696AD98] numberWithInt:v69];
  v71 = [v26 objectForKeyedSubscript:v70];

  if (v71)
  {
    v128 = v71;

    goto LABEL_57;
  }

  v68 = 0;
LABEL_55:
  v72 = [v17 stateForType:14];
  v128 = [v72 copy];

  if (v68)
  {
    v73 = 1;
    goto LABEL_60;
  }

LABEL_57:
  v74 = [v17 logMsgStateTypeForType:9];
  v75 = [MEMORY[0x1E696AD98] numberWithInt:v74];
  v76 = [v26 objectForKeyedSubscript:v75];

  if (v76)
  {
    v127 = v76;

    goto LABEL_62;
  }

  v73 = 0;
LABEL_60:
  v77 = [v17 stateForType:9];
  v127 = [v77 copy];

  if (v73)
  {
    v78 = 1;
    goto LABEL_65;
  }

LABEL_62:
  v79 = [v17 logMsgStateTypeForType:10];
  v80 = [MEMORY[0x1E696AD98] numberWithInt:v79];
  v81 = [v26 objectForKeyedSubscript:v80];

  if (v81)
  {
    v126 = v81;

    goto LABEL_67;
  }

  v78 = 0;
LABEL_65:
  v82 = [v17 stateForType:10];
  v126 = [v82 copy];

  if (v78)
  {
    v83 = 1;
    goto LABEL_70;
  }

LABEL_67:
  v84 = [v17 logMsgStateTypeForType:42];
  v85 = [MEMORY[0x1E696AD98] numberWithInt:v84];
  v86 = [v26 objectForKeyedSubscript:v85];

  if (v86)
  {
    v87 = v86;

    goto LABEL_72;
  }

  v83 = 0;
LABEL_70:
  v88 = [v17 stateForType:42];
  v87 = [v88 copy];

  if (v83)
  {
    v89 = 1;
    goto LABEL_75;
  }

LABEL_72:
  v90 = [v17 logMsgStateTypeForType:70];
  v91 = [MEMORY[0x1E696AD98] numberWithInt:v90];
  v92 = [v26 objectForKeyedSubscript:v91];

  if (v92)
  {
    v93 = v92;

    goto LABEL_76;
  }

  v89 = 0;
LABEL_75:
  v94 = [v17 stateForType:70];
  v93 = [v94 copy];

  if (v89)
  {
LABEL_78:
    v98 = [v17 stateForType:17];
    v99 = [v98 copy];

    goto LABEL_79;
  }

LABEL_76:
  v95 = [v17 logMsgStateTypeForType:17];
  v96 = [MEMORY[0x1E696AD98] numberWithInt:v95];
  v97 = [v26 objectForKeyedSubscript:v96];

  if (!v97)
  {
    goto LABEL_78;
  }

  v98 = v97;
  v99 = v98;
LABEL_79:

  v100 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v100 setEventType:1];
  v101 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v100 setUserActionEvent:v101];

  v102 = [v100 userActionEvent];
  [v102 setUserActionEventAction:v121];

  v103 = [v100 userActionEvent];
  [v103 setUserActionEventTarget:HIDWORD(v121)];

  v104 = [v100 userActionEvent];
  [v104 setUserActionEventValue:v137];

  v105 = [v100 userActionEvent];
  [v105 setActionRichProviderId:v136];

  v106 = v30;
  if (v15 || v138 || v139)
  {
    v107 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v108 = [v100 userActionEvent];
    [v108 setModuleInfo:v107];

    if (v15)
    {
      v109 = [v15 intValue];
      v110 = [v100 userActionEvent];
      v111 = [v110 moduleInfo];
      [v111 setType:v109];
    }

    if (v138)
    {
      v112 = [v100 userActionEvent];
      v113 = [v112 moduleInfo];
      [v113 setModuleMetadata:v138];
    }

    v30 = v106;
    if (v139)
    {
      v114 = [v100 userActionEvent];
      v115 = [v114 moduleInfo];
      [v115 setClassification:v139];

      v30 = v106;
    }
  }

  if (v30)
  {
    [v100 addLogMsgState:v30];
  }

  if (v135)
  {
    [v100 addLogMsgState:?];
  }

  if (v134)
  {
    [v100 addLogMsgState:v134];
  }

  if (v133)
  {
    [v100 addLogMsgState:?];
  }

  if (v132)
  {
    [v100 addLogMsgState:?];
  }

  if (v131)
  {
    [v100 addLogMsgState:v131];
  }

  if (v130)
  {
    [v100 addLogMsgState:?];
  }

  if (v129)
  {
    [v100 addLogMsgState:?];
  }

  if (v128)
  {
    [v100 addLogMsgState:v128];
  }

  if (v127)
  {
    [v100 addLogMsgState:?];
  }

  if (v126)
  {
    [v100 addLogMsgState:?];
  }

  if (v87)
  {
    [v100 addLogMsgState:v87];
  }

  if (v99)
  {
    [v100 addLogMsgState:v99];
  }

  if (v93)
  {
    [v100 addLogMsgState:v93];
  }

  v116 = +[GEOAPStateFactory sharedFactory];
  v140[0] = MEMORY[0x1E69E9820];
  v140[1] = 3221225472;
  v140[2] = __200__GEOAPPortal_UserActionCodeGen__captureMuninCameraUserActionShortOnlyWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v140[3] = &unk_1E7953B38;
  v117 = v100;
  v141 = v117;
  v118 = v122;
  v143 = v118;
  v119 = v123;
  v142 = v119;
  [v116 sessionStateForType:6 callback:v140];

  v120 = *MEMORY[0x1E69E9840];
}

uint64_t __200__GEOAPPortal_UserActionCodeGen__captureMuninCameraUserActionShortOnlyWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureMuninUserActionShortOnlyWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  LODWORD(v121) = a3;
  HIDWORD(v121) = a4;
  v149 = *MEMORY[0x1E69E9840];
  v137 = a5;
  v15 = a6;
  v138 = a7;
  v139 = a8;
  v136 = a9;
  v16 = a10;
  v123 = a11;
  v122 = a12;
  v17 = +[GEOAPStateFactory sharedFactory];
  v124 = v16;
  v125 = v15;
  if ([v16 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v144 objects:v148 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v145;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v145 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v144 + 1) + 8 * i);
          v25 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "stateType", v121)}];
          [v18 setObject:v24 forKeyedSubscript:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v144 objects:v148 count:16];
      }

      while (v21);
    }

    v26 = [v18 copy];
    if (v26)
    {
      v27 = [v17 logMsgStateTypeForType:65];
      v28 = [MEMORY[0x1E696AD98] numberWithInt:v27];
      v29 = [v26 objectForKeyedSubscript:v28];

      if (v29)
      {
        v30 = v29;

        v15 = v125;
        goto LABEL_18;
      }

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v15 = v125;
  }

  else
  {
    v26 = 0;
    v31 = 1;
  }

  v32 = [v17 stateForType:{65, v121}];
  v30 = [v32 copy];

  if (v31)
  {
    v33 = 1;
    goto LABEL_21;
  }

LABEL_18:
  v34 = [v17 logMsgStateTypeForType:{15, v121}];
  v35 = [MEMORY[0x1E696AD98] numberWithInt:v34];
  v36 = [v26 objectForKeyedSubscript:v35];

  if (v36)
  {
    v135 = v36;

    goto LABEL_23;
  }

  v33 = 0;
LABEL_21:
  v37 = [v17 stateForType:15];
  v135 = [v37 copy];

  if (v33)
  {
    v38 = 1;
    goto LABEL_26;
  }

LABEL_23:
  v39 = [v17 logMsgStateTypeForType:35];
  v40 = [MEMORY[0x1E696AD98] numberWithInt:v39];
  v41 = [v26 objectForKeyedSubscript:v40];

  if (v41)
  {
    v134 = v41;

    goto LABEL_28;
  }

  v38 = 0;
LABEL_26:
  v42 = [v17 stateForType:35];
  v134 = [v42 copy];

  if (v38)
  {
    v43 = 1;
    goto LABEL_31;
  }

LABEL_28:
  v44 = [v17 logMsgStateTypeForType:30];
  v45 = [MEMORY[0x1E696AD98] numberWithInt:v44];
  v46 = [v26 objectForKeyedSubscript:v45];

  if (v46)
  {
    v133 = v46;

    goto LABEL_33;
  }

  v43 = 0;
LABEL_31:
  v47 = [v17 stateForType:30];
  v133 = [v47 copy];

  if (v43)
  {
    v48 = 1;
    goto LABEL_36;
  }

LABEL_33:
  v49 = [v17 logMsgStateTypeForType:1];
  v50 = [MEMORY[0x1E696AD98] numberWithInt:v49];
  v51 = [v26 objectForKeyedSubscript:v50];

  if (!v51)
  {
    v48 = 0;
LABEL_36:
    v52 = 1;
    v53 = [v17 stateForType:1];
    v132 = [v53 copy];

    if (v48)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  v132 = v51;

LABEL_37:
  v54 = [v17 logMsgStateTypeForType:3];
  v55 = [MEMORY[0x1E696AD98] numberWithInt:v54];
  v56 = [v26 objectForKeyedSubscript:v55];

  if (v56)
  {
    v131 = v56;

    goto LABEL_42;
  }

  v52 = 0;
LABEL_40:
  v57 = [v17 stateForType:3];
  v131 = [v57 copy];

  if (v52)
  {
    v58 = 1;
    goto LABEL_45;
  }

LABEL_42:
  v59 = [v17 logMsgStateTypeForType:32];
  v60 = [MEMORY[0x1E696AD98] numberWithInt:v59];
  v61 = [v26 objectForKeyedSubscript:v60];

  if (v61)
  {
    v130 = v61;

    goto LABEL_47;
  }

  v58 = 0;
LABEL_45:
  v62 = [v17 stateForType:32];
  v130 = [v62 copy];

  if (v58)
  {
    v63 = 1;
    goto LABEL_50;
  }

LABEL_47:
  v64 = [v17 logMsgStateTypeForType:13];
  v65 = [MEMORY[0x1E696AD98] numberWithInt:v64];
  v66 = [v26 objectForKeyedSubscript:v65];

  if (v66)
  {
    v129 = v66;

    goto LABEL_52;
  }

  v63 = 0;
LABEL_50:
  v67 = [v17 stateForType:13];
  v129 = [v67 copy];

  if (v63)
  {
    v68 = 1;
    goto LABEL_55;
  }

LABEL_52:
  v69 = [v17 logMsgStateTypeForType:14];
  v70 = [MEMORY[0x1E696AD98] numberWithInt:v69];
  v71 = [v26 objectForKeyedSubscript:v70];

  if (v71)
  {
    v128 = v71;

    goto LABEL_57;
  }

  v68 = 0;
LABEL_55:
  v72 = [v17 stateForType:14];
  v128 = [v72 copy];

  if (v68)
  {
    v73 = 1;
    goto LABEL_60;
  }

LABEL_57:
  v74 = [v17 logMsgStateTypeForType:9];
  v75 = [MEMORY[0x1E696AD98] numberWithInt:v74];
  v76 = [v26 objectForKeyedSubscript:v75];

  if (v76)
  {
    v127 = v76;

    goto LABEL_62;
  }

  v73 = 0;
LABEL_60:
  v77 = [v17 stateForType:9];
  v127 = [v77 copy];

  if (v73)
  {
    v78 = 1;
    goto LABEL_65;
  }

LABEL_62:
  v79 = [v17 logMsgStateTypeForType:10];
  v80 = [MEMORY[0x1E696AD98] numberWithInt:v79];
  v81 = [v26 objectForKeyedSubscript:v80];

  if (v81)
  {
    v126 = v81;

    goto LABEL_67;
  }

  v78 = 0;
LABEL_65:
  v82 = [v17 stateForType:10];
  v126 = [v82 copy];

  if (v78)
  {
    v83 = 1;
    goto LABEL_70;
  }

LABEL_67:
  v84 = [v17 logMsgStateTypeForType:42];
  v85 = [MEMORY[0x1E696AD98] numberWithInt:v84];
  v86 = [v26 objectForKeyedSubscript:v85];

  if (v86)
  {
    v87 = v86;

    goto LABEL_72;
  }

  v83 = 0;
LABEL_70:
  v88 = [v17 stateForType:42];
  v87 = [v88 copy];

  if (v83)
  {
    v89 = 1;
    goto LABEL_75;
  }

LABEL_72:
  v90 = [v17 logMsgStateTypeForType:70];
  v91 = [MEMORY[0x1E696AD98] numberWithInt:v90];
  v92 = [v26 objectForKeyedSubscript:v91];

  if (v92)
  {
    v93 = v92;

    goto LABEL_76;
  }

  v89 = 0;
LABEL_75:
  v94 = [v17 stateForType:70];
  v93 = [v94 copy];

  if (v89)
  {
LABEL_78:
    v98 = [v17 stateForType:17];
    v99 = [v98 copy];

    goto LABEL_79;
  }

LABEL_76:
  v95 = [v17 logMsgStateTypeForType:17];
  v96 = [MEMORY[0x1E696AD98] numberWithInt:v95];
  v97 = [v26 objectForKeyedSubscript:v96];

  if (!v97)
  {
    goto LABEL_78;
  }

  v98 = v97;
  v99 = v98;
LABEL_79:

  v100 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v100 setEventType:1];
  v101 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v100 setUserActionEvent:v101];

  v102 = [v100 userActionEvent];
  [v102 setUserActionEventAction:v121];

  v103 = [v100 userActionEvent];
  [v103 setUserActionEventTarget:HIDWORD(v121)];

  v104 = [v100 userActionEvent];
  [v104 setUserActionEventValue:v137];

  v105 = [v100 userActionEvent];
  [v105 setActionRichProviderId:v136];

  v106 = v30;
  if (v15 || v138 || v139)
  {
    v107 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v108 = [v100 userActionEvent];
    [v108 setModuleInfo:v107];

    if (v15)
    {
      v109 = [v15 intValue];
      v110 = [v100 userActionEvent];
      v111 = [v110 moduleInfo];
      [v111 setType:v109];
    }

    if (v138)
    {
      v112 = [v100 userActionEvent];
      v113 = [v112 moduleInfo];
      [v113 setModuleMetadata:v138];
    }

    v30 = v106;
    if (v139)
    {
      v114 = [v100 userActionEvent];
      v115 = [v114 moduleInfo];
      [v115 setClassification:v139];

      v30 = v106;
    }
  }

  if (v30)
  {
    [v100 addLogMsgState:v30];
  }

  if (v135)
  {
    [v100 addLogMsgState:?];
  }

  if (v134)
  {
    [v100 addLogMsgState:v134];
  }

  if (v133)
  {
    [v100 addLogMsgState:?];
  }

  if (v132)
  {
    [v100 addLogMsgState:?];
  }

  if (v131)
  {
    [v100 addLogMsgState:v131];
  }

  if (v130)
  {
    [v100 addLogMsgState:?];
  }

  if (v129)
  {
    [v100 addLogMsgState:?];
  }

  if (v128)
  {
    [v100 addLogMsgState:v128];
  }

  if (v127)
  {
    [v100 addLogMsgState:?];
  }

  if (v126)
  {
    [v100 addLogMsgState:?];
  }

  if (v87)
  {
    [v100 addLogMsgState:v87];
  }

  if (v99)
  {
    [v100 addLogMsgState:v99];
  }

  if (v93)
  {
    [v100 addLogMsgState:v93];
  }

  v116 = +[GEOAPStateFactory sharedFactory];
  v140[0] = MEMORY[0x1E69E9820];
  v140[1] = 3221225472;
  v140[2] = __194__GEOAPPortal_UserActionCodeGen__captureMuninUserActionShortOnlyWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v140[3] = &unk_1E7953B38;
  v117 = v100;
  v141 = v117;
  v118 = v122;
  v143 = v118;
  v119 = v123;
  v142 = v119;
  [v116 sessionStateForType:6 callback:v140];

  v120 = *MEMORY[0x1E69E9840];
}

uint64_t __194__GEOAPPortal_UserActionCodeGen__captureMuninUserActionShortOnlyWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)capturePriorityPlacecardActionShortUserActionsWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v192 = *MEMORY[0x1E69E9840];
  v178 = a5;
  v180 = a6;
  v179 = a7;
  v181 = a8;
  v177 = a9;
  v15 = a10;
  v158 = a11;
  v157 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  v159 = v15;
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v30 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v187 objects:v191 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v188;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v188 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v187 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v187 objects:v191 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:58];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  if (v28)
  {
    v29 = v28;

    goto LABEL_16;
  }

  v30 = 0;
LABEL_14:
  v31 = [v16 stateForType:58];
  v29 = [v31 copy];

  if (v30)
  {
    v32 = 1;
    goto LABEL_19;
  }

LABEL_16:
  v33 = [v16 logMsgStateTypeForType:65];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:v33];
  v35 = [v25 objectForKeyedSubscript:v34];

  if (v35)
  {
    v176 = v35;

    goto LABEL_21;
  }

  v32 = 0;
LABEL_19:
  v36 = [v16 stateForType:65];
  v176 = [v36 copy];

  if (v32)
  {
    v37 = 1;
    goto LABEL_24;
  }

LABEL_21:
  v38 = [v16 logMsgStateTypeForType:5];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:v38];
  v40 = [v25 objectForKeyedSubscript:v39];

  if (v40)
  {
    v174 = v40;

    goto LABEL_26;
  }

  v37 = 0;
LABEL_24:
  v41 = [v16 stateForType:5];
  v174 = [v41 copy];

  if (v37)
  {
    v42 = 1;
    goto LABEL_29;
  }

LABEL_26:
  v43 = [v16 logMsgStateTypeForType:15];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:v43];
  v45 = [v25 objectForKeyedSubscript:v44];

  if (v45)
  {
    v173 = v45;

    goto LABEL_31;
  }

  v42 = 0;
LABEL_29:
  v46 = [v16 stateForType:15];
  v173 = [v46 copy];

  if (v42)
  {
    v47 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v48 = [v16 logMsgStateTypeForType:35];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:v48];
  v50 = [v25 objectForKeyedSubscript:v49];

  if (v50)
  {
    v172 = v50;

    goto LABEL_36;
  }

  v47 = 0;
LABEL_34:
  v51 = [v16 stateForType:35];
  v172 = [v51 copy];

  if (v47)
  {
    v52 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v53 = [v16 logMsgStateTypeForType:30];
  v54 = [MEMORY[0x1E696AD98] numberWithInt:v53];
  v55 = [v25 objectForKeyedSubscript:v54];

  if (v55)
  {
    v171 = v55;

    goto LABEL_41;
  }

  v52 = 0;
LABEL_39:
  v56 = [v16 stateForType:30];
  v171 = [v56 copy];

  if (v52)
  {
    v57 = 1;
    goto LABEL_44;
  }

LABEL_41:
  v58 = [v16 logMsgStateTypeForType:1];
  v59 = [MEMORY[0x1E696AD98] numberWithInt:v58];
  v60 = [v25 objectForKeyedSubscript:v59];

  if (!v60)
  {
    v57 = 0;
LABEL_44:
    v61 = 1;
    v62 = [v16 stateForType:1];
    v170 = [v62 copy];

    if (v57)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v170 = v60;

LABEL_45:
  v63 = [v16 logMsgStateTypeForType:3];
  v64 = [MEMORY[0x1E696AD98] numberWithInt:v63];
  v65 = [v25 objectForKeyedSubscript:v64];

  if (v65)
  {
    v169 = v65;

    goto LABEL_50;
  }

  v61 = 0;
LABEL_48:
  v66 = [v16 stateForType:3];
  v169 = [v66 copy];

  if (v61)
  {
    v67 = 1;
    goto LABEL_53;
  }

LABEL_50:
  v68 = [v16 logMsgStateTypeForType:64];
  v69 = [MEMORY[0x1E696AD98] numberWithInt:v68];
  v70 = [v25 objectForKeyedSubscript:v69];

  if (v70)
  {
    v168 = v70;

    goto LABEL_55;
  }

  v67 = 0;
LABEL_53:
  v71 = [v16 stateForType:64];
  v168 = [v71 copy];

  if (v67)
  {
    v72 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v73 = [v16 logMsgStateTypeForType:13];
  v74 = [MEMORY[0x1E696AD98] numberWithInt:v73];
  v75 = [v25 objectForKeyedSubscript:v74];

  if (v75)
  {
    v167 = v75;

    goto LABEL_60;
  }

  v72 = 0;
LABEL_58:
  v76 = [v16 stateForType:13];
  v167 = [v76 copy];

  if (v72)
  {
    v77 = 1;
    goto LABEL_63;
  }

LABEL_60:
  v78 = [v16 logMsgStateTypeForType:14];
  v79 = [MEMORY[0x1E696AD98] numberWithInt:v78];
  v80 = [v25 objectForKeyedSubscript:v79];

  if (v80)
  {
    v166 = v80;

    goto LABEL_65;
  }

  v77 = 0;
LABEL_63:
  v81 = [v16 stateForType:14];
  v166 = [v81 copy];

  if (v77)
  {
    v82 = 1;
    goto LABEL_68;
  }

LABEL_65:
  v83 = [v16 logMsgStateTypeForType:9];
  v84 = [MEMORY[0x1E696AD98] numberWithInt:v83];
  v85 = [v25 objectForKeyedSubscript:v84];

  if (v85)
  {
    v165 = v85;

    goto LABEL_70;
  }

  v82 = 0;
LABEL_68:
  v86 = [v16 stateForType:9];
  v165 = [v86 copy];

  if (v82)
  {
    v87 = 1;
    goto LABEL_73;
  }

LABEL_70:
  v88 = [v16 logMsgStateTypeForType:10];
  v89 = [MEMORY[0x1E696AD98] numberWithInt:v88];
  v90 = [v25 objectForKeyedSubscript:v89];

  if (v90)
  {
    v164 = v90;

    goto LABEL_75;
  }

  v87 = 0;
LABEL_73:
  v91 = [v16 stateForType:10];
  v164 = [v91 copy];

  if (v87)
  {
    v92 = 1;
    goto LABEL_78;
  }

LABEL_75:
  v93 = [v16 logMsgStateTypeForType:20];
  v94 = [MEMORY[0x1E696AD98] numberWithInt:v93];
  v95 = [v25 objectForKeyedSubscript:v94];

  if (v95)
  {
    v163 = v95;

    goto LABEL_80;
  }

  v92 = 0;
LABEL_78:
  v96 = [v16 stateForType:20];
  v163 = [v96 copy];

  if (v92)
  {
    v97 = 1;
    goto LABEL_83;
  }

LABEL_80:
  v98 = [v16 logMsgStateTypeForType:42];
  v99 = [MEMORY[0x1E696AD98] numberWithInt:v98];
  v100 = [v25 objectForKeyedSubscript:v99];

  if (v100)
  {
    v162 = v100;

    goto LABEL_85;
  }

  v97 = 0;
LABEL_83:
  v101 = [v16 stateForType:42];
  v162 = [v101 copy];

  if (v97)
  {
    LOBYTE(v102) = 1;
    goto LABEL_87;
  }

LABEL_85:
  v103 = [v16 logMsgStateTypeForType:70];
  v104 = [MEMORY[0x1E696AD98] numberWithInt:v103];
  v102 = [v25 objectForKeyedSubscript:v104];

  if (v102)
  {
    v161 = v102;

    goto LABEL_89;
  }

LABEL_87:
  v105 = [v16 stateForType:70];
  v161 = [v105 copy];

  if (v102)
  {
    v106 = 1;
    goto LABEL_92;
  }

LABEL_89:
  v107 = [v16 logMsgStateTypeForType:7];
  v108 = [MEMORY[0x1E696AD98] numberWithInt:v107];
  v109 = [v25 objectForKeyedSubscript:v108];

  if (v109)
  {
    v160 = v109;

    goto LABEL_94;
  }

  v106 = 0;
LABEL_92:
  v110 = [v16 stateForType:7];
  v160 = [v110 copy];

  if (v106)
  {
    v111 = 1;
    goto LABEL_97;
  }

LABEL_94:
  v112 = [v16 logMsgStateTypeForType:17];
  v113 = [MEMORY[0x1E696AD98] numberWithInt:v112];
  v114 = [v25 objectForKeyedSubscript:v113];

  if (v114)
  {
    v115 = v114;

    goto LABEL_99;
  }

  v111 = 0;
LABEL_97:
  v116 = [v16 stateForType:17];
  v115 = [v116 copy];

  if (v111)
  {
    v117 = 1;
    goto LABEL_102;
  }

LABEL_99:
  v118 = [v16 logMsgStateTypeForType:19];
  v119 = [MEMORY[0x1E696AD98] numberWithInt:v118];
  v120 = [v25 objectForKeyedSubscript:v119];

  if (v120)
  {
    v121 = v120;

    goto LABEL_103;
  }

  v117 = 0;
LABEL_102:
  v122 = [v16 stateForType:19];
  v121 = [v122 copy];

  if (v117)
  {
LABEL_105:
    v126 = [v16 stateForType:27];
    v127 = [v126 copy];

    goto LABEL_106;
  }

LABEL_103:
  v123 = [v16 logMsgStateTypeForType:27];
  v124 = [MEMORY[0x1E696AD98] numberWithInt:v123];
  v125 = [v25 objectForKeyedSubscript:v124];

  if (!v125)
  {
    goto LABEL_105;
  }

  v126 = v125;
  v127 = v126;
LABEL_106:

  v128 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v128 setEventType:1];
  v129 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v128 setUserActionEvent:v129];

  v130 = [v128 userActionEvent];
  [v130 setUserActionEventAction:a3];

  v131 = [v128 userActionEvent];
  [v131 setUserActionEventTarget:a4];

  v132 = [v128 userActionEvent];
  [v132 setUserActionEventValue:v178];

  v133 = [v128 userActionEvent];
  [v133 setActionRichProviderId:v177];

  v134 = v29;
  if (v180 || v179 || v181)
  {
    v135 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v136 = [v128 userActionEvent];
    [v136 setModuleInfo:v135];

    if (v180)
    {
      v137 = [v180 intValue];
      v138 = [v128 userActionEvent];
      v139 = [v138 moduleInfo];
      [v139 setType:v137];
    }

    if (v179)
    {
      v140 = [v128 userActionEvent];
      v141 = [v140 moduleInfo];
      [v141 setModuleMetadata:v179];
    }

    v29 = v134;
    if (v181)
    {
      v142 = [v128 userActionEvent];
      v143 = [v142 moduleInfo];
      [v143 setClassification:v181];

      v29 = v134;
    }
  }

  if (v176)
  {
    [v128 addLogMsgState:?];
  }

  if (v174)
  {
    [v128 addLogMsgState:v174];
  }

  if (v173)
  {
    [v128 addLogMsgState:v173];
  }

  if (v172)
  {
    [v128 addLogMsgState:?];
  }

  if (v171)
  {
    [v128 addLogMsgState:?];
  }

  if (v170)
  {
    [v128 addLogMsgState:v170];
  }

  if (v169)
  {
    [v128 addLogMsgState:v169];
  }

  if (v168)
  {
    [v128 addLogMsgState:?];
  }

  if (v167)
  {
    [v128 addLogMsgState:?];
  }

  if (v166)
  {
    [v128 addLogMsgState:v166];
  }

  if (v165)
  {
    [v128 addLogMsgState:v165];
  }

  if (v164)
  {
    [v128 addLogMsgState:?];
  }

  if (v163)
  {
    [v128 addLogMsgState:?];
  }

  if (v162)
  {
    [v128 addLogMsgState:v162];
  }

  if (v160)
  {
    [v128 addLogMsgState:v160];
  }

  if (v115)
  {
    [v128 addLogMsgState:v115];
  }

  if (v121)
  {
    [v128 addLogMsgState:v121];
  }

  if (v127)
  {
    [v128 addLogMsgState:v127];
  }

  if (v29)
  {
    [v128 addLogMsgState:v29];
  }

  if (v161)
  {
    [v128 addLogMsgState:?];
  }

  if (a3 == 6036 && a4 == 201)
  {
LABEL_157:
    v144 = [v16 stateForType:68];
    v145 = [v144 copy];

    v146 = 0;
    v147 = 0;
    if (!v145)
    {
LABEL_159:

      goto LABEL_160;
    }

LABEL_158:
    [v128 addLogMsgState:v145];
    goto LABEL_159;
  }

  v147 = a4 == 30;
  if (a3 == 6036 && a4 == 30)
  {
    goto LABEL_168;
  }

  if (a3 == 6074 && a4 == 201)
  {
    goto LABEL_157;
  }

  if (a3 == 6074 && a4 == 30)
  {
LABEL_168:
    v155 = [v16 stateForType:68];
    v145 = [v155 copy];

    v146 = 0;
    v147 = 1;
    if (!v145)
    {
      goto LABEL_159;
    }

    goto LABEL_158;
  }

  v146 = a3 == 50;
  if (a3 == 50 && a4 == 201)
  {
    v156 = [v16 stateForType:68];
    v145 = [v156 copy];

    v147 = 0;
    v146 = 1;
    if (!v145)
    {
      goto LABEL_159;
    }

    goto LABEL_158;
  }

LABEL_160:
  if (v146 && v147)
  {
    v148 = [v16 stateForType:68];
    v149 = [v148 copy];

    if (v149)
    {
      [v128 addLogMsgState:v149];
    }
  }

  v150 = +[GEOAPStateFactory sharedFactory];
  v183[0] = MEMORY[0x1E69E9820];
  v183[1] = 3221225472;
  v183[2] = __209__GEOAPPortal_UserActionCodeGen__capturePriorityPlacecardActionShortUserActionsWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v183[3] = &unk_1E7953B38;
  v151 = v128;
  v184 = v151;
  v152 = v157;
  v186 = v152;
  v153 = v158;
  v185 = v153;
  [v150 sessionStateForType:6 callback:v183];

  v154 = *MEMORY[0x1E69E9840];
}

uint64_t __209__GEOAPPortal_UserActionCodeGen__capturePriorityPlacecardActionShortUserActionsWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)capturePriorityShortUserActionsWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v256 = *MEMORY[0x1E69E9840];
  v242 = a5;
  v15 = a6;
  v16 = a7;
  v244 = a8;
  v241 = a9;
  v17 = a10;
  v220 = a11;
  v219 = a12;
  v18 = +[GEOAPStateFactory sharedFactory];
  v243 = v16;
  v221 = v17;
  if ([v17 count])
  {
    v19 = v15;
    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    v21 = v17;
    v22 = [v21 countByEnumeratingWithState:&v251 objects:v255 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v252;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v252 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v251 + 1) + 8 * i);
          v27 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v26, "stateType")}];
          [v20 setObject:v26 forKeyedSubscript:v27];
        }

        v23 = [v21 countByEnumeratingWithState:&v251 objects:v255 count:16];
      }

      while (v23);
    }

    v28 = [v20 copy];
    if (v28)
    {
      v29 = [v18 logMsgStateTypeForType:65];
      v30 = [MEMORY[0x1E696AD98] numberWithInt:v29];
      v31 = [v28 objectForKeyedSubscript:v30];

      if (v31)
      {
        v32 = v31;

        v15 = v19;
        goto LABEL_18;
      }

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v15 = v19;
  }

  else
  {
    v28 = 0;
    v33 = 1;
  }

  v34 = [v18 stateForType:65];
  v32 = [v34 copy];

  if (v33)
  {
    v35 = 1;
    goto LABEL_21;
  }

LABEL_18:
  v36 = [v18 logMsgStateTypeForType:5];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:v36];
  v38 = [v28 objectForKeyedSubscript:v37];

  if (v38)
  {
    v240 = v38;

    goto LABEL_23;
  }

  v35 = 0;
LABEL_21:
  v39 = [v18 stateForType:5];
  v240 = [v39 copy];

  if (v35)
  {
    v40 = 1;
    goto LABEL_26;
  }

LABEL_23:
  v41 = [v18 logMsgStateTypeForType:15];
  v42 = [MEMORY[0x1E696AD98] numberWithInt:v41];
  v43 = [v28 objectForKeyedSubscript:v42];

  if (v43)
  {
    v239 = v43;

    goto LABEL_28;
  }

  v40 = 0;
LABEL_26:
  v44 = [v18 stateForType:15];
  v239 = [v44 copy];

  if (v40)
  {
    v45 = 1;
    goto LABEL_31;
  }

LABEL_28:
  v46 = [v18 logMsgStateTypeForType:35];
  v47 = [MEMORY[0x1E696AD98] numberWithInt:v46];
  v48 = [v28 objectForKeyedSubscript:v47];

  if (v48)
  {
    v238 = v48;

    goto LABEL_33;
  }

  v45 = 0;
LABEL_31:
  v49 = [v18 stateForType:35];
  v238 = [v49 copy];

  if (v45)
  {
    v50 = 1;
    goto LABEL_36;
  }

LABEL_33:
  v51 = [v18 logMsgStateTypeForType:30];
  v52 = [MEMORY[0x1E696AD98] numberWithInt:v51];
  v53 = [v28 objectForKeyedSubscript:v52];

  if (v53)
  {
    v237 = v53;

    goto LABEL_38;
  }

  v50 = 0;
LABEL_36:
  v54 = [v18 stateForType:30];
  v237 = [v54 copy];

  if (v50)
  {
    v55 = v32;
    v56 = 1;
    goto LABEL_41;
  }

LABEL_38:
  v55 = v32;
  v57 = [v18 logMsgStateTypeForType:1];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:v57];
  v59 = [v28 objectForKeyedSubscript:v58];

  if (!v59)
  {
    v56 = 0;
LABEL_41:
    v60 = 1;
    v61 = [v18 stateForType:1];
    v236 = [v61 copy];

    if (v56)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v236 = v59;

LABEL_42:
  v62 = [v18 logMsgStateTypeForType:3];
  v63 = [MEMORY[0x1E696AD98] numberWithInt:v62];
  v64 = [v28 objectForKeyedSubscript:v63];

  if (v64)
  {
    v235 = v64;

    goto LABEL_47;
  }

  v60 = 0;
LABEL_45:
  v65 = [v18 stateForType:3];
  v235 = [v65 copy];

  if (v60)
  {
    v66 = 1;
    goto LABEL_50;
  }

LABEL_47:
  v67 = [v18 logMsgStateTypeForType:64];
  v68 = [MEMORY[0x1E696AD98] numberWithInt:v67];
  v69 = [v28 objectForKeyedSubscript:v68];

  if (v69)
  {
    v234 = v69;

    goto LABEL_52;
  }

  v66 = 0;
LABEL_50:
  v70 = [v18 stateForType:64];
  v234 = [v70 copy];

  if (v66)
  {
    v71 = 1;
    goto LABEL_55;
  }

LABEL_52:
  v72 = [v18 logMsgStateTypeForType:13];
  v73 = [MEMORY[0x1E696AD98] numberWithInt:v72];
  v74 = [v28 objectForKeyedSubscript:v73];

  if (v74)
  {
    v233 = v74;

    goto LABEL_57;
  }

  v71 = 0;
LABEL_55:
  v75 = [v18 stateForType:13];
  v233 = [v75 copy];

  if (v71)
  {
    v76 = 1;
    goto LABEL_60;
  }

LABEL_57:
  v77 = [v18 logMsgStateTypeForType:14];
  v78 = [MEMORY[0x1E696AD98] numberWithInt:v77];
  v79 = [v28 objectForKeyedSubscript:v78];

  if (v79)
  {
    v232 = v79;

    goto LABEL_62;
  }

  v76 = 0;
LABEL_60:
  v80 = [v18 stateForType:14];
  v232 = [v80 copy];

  if (v76)
  {
    v81 = 1;
    goto LABEL_65;
  }

LABEL_62:
  v82 = [v18 logMsgStateTypeForType:9];
  v83 = [MEMORY[0x1E696AD98] numberWithInt:v82];
  v84 = [v28 objectForKeyedSubscript:v83];

  if (v84)
  {
    v231 = v84;

    goto LABEL_67;
  }

  v81 = 0;
LABEL_65:
  v85 = [v18 stateForType:9];
  v231 = [v85 copy];

  if (v81)
  {
    v86 = 1;
    goto LABEL_70;
  }

LABEL_67:
  v87 = [v18 logMsgStateTypeForType:10];
  v88 = [MEMORY[0x1E696AD98] numberWithInt:v87];
  v89 = [v28 objectForKeyedSubscript:v88];

  if (v89)
  {
    v230 = v89;

    goto LABEL_72;
  }

  v86 = 0;
LABEL_70:
  v90 = [v18 stateForType:10];
  v230 = [v90 copy];

  if (v86)
  {
    v91 = 1;
    goto LABEL_75;
  }

LABEL_72:
  v92 = [v18 logMsgStateTypeForType:20];
  v93 = [MEMORY[0x1E696AD98] numberWithInt:v92];
  v94 = [v28 objectForKeyedSubscript:v93];

  if (v94)
  {
    v229 = v94;

    goto LABEL_77;
  }

  v91 = 0;
LABEL_75:
  v95 = [v18 stateForType:20];
  v229 = [v95 copy];

  if (v91)
  {
    v96 = 1;
    goto LABEL_80;
  }

LABEL_77:
  v97 = [v18 logMsgStateTypeForType:42];
  v98 = [MEMORY[0x1E696AD98] numberWithInt:v97];
  v99 = [v28 objectForKeyedSubscript:v98];

  if (v99)
  {
    v228 = v99;

    goto LABEL_82;
  }

  v96 = 0;
LABEL_80:
  v100 = [v18 stateForType:42];
  v228 = [v100 copy];

  if (v96)
  {
    v101 = 1;
    goto LABEL_85;
  }

LABEL_82:
  v102 = [v18 logMsgStateTypeForType:70];
  v103 = [MEMORY[0x1E696AD98] numberWithInt:v102];
  v104 = [v28 objectForKeyedSubscript:v103];

  if (v104)
  {
    v227 = v104;

    goto LABEL_87;
  }

  v101 = 0;
LABEL_85:
  v105 = [v18 stateForType:70];
  v227 = [v105 copy];

  if (v101)
  {
    v106 = 1;
    goto LABEL_90;
  }

LABEL_87:
  v107 = [v18 logMsgStateTypeForType:7];
  v108 = [MEMORY[0x1E696AD98] numberWithInt:v107];
  v109 = [v28 objectForKeyedSubscript:v108];

  if (v109)
  {
    v226 = v109;

    goto LABEL_92;
  }

  v106 = 0;
LABEL_90:
  v110 = [v18 stateForType:7];
  v226 = [v110 copy];

  if (v106)
  {
    v111 = 1;
    goto LABEL_95;
  }

LABEL_92:
  v112 = [v18 logMsgStateTypeForType:17];
  v113 = [MEMORY[0x1E696AD98] numberWithInt:v112];
  v114 = [v28 objectForKeyedSubscript:v113];

  if (v114)
  {
    v225 = v114;

    goto LABEL_97;
  }

  v111 = 0;
LABEL_95:
  v115 = [v18 stateForType:17];
  v225 = [v115 copy];

  if (v111)
  {
    v116 = 1;
    goto LABEL_100;
  }

LABEL_97:
  v117 = [v18 logMsgStateTypeForType:19];
  v118 = [MEMORY[0x1E696AD98] numberWithInt:v117];
  v119 = [v28 objectForKeyedSubscript:v118];

  if (v119)
  {
    v224 = v119;

    goto LABEL_101;
  }

  v116 = 0;
LABEL_100:
  v120 = [v18 stateForType:19];
  v224 = [v120 copy];

  if (v116)
  {
LABEL_103:
    v218 = v28;
    v124 = [v18 stateForType:27];
    v125 = [v124 copy];

    goto LABEL_104;
  }

LABEL_101:
  v121 = [v18 logMsgStateTypeForType:27];
  v122 = [MEMORY[0x1E696AD98] numberWithInt:v121];
  v123 = [v28 objectForKeyedSubscript:v122];

  if (!v123)
  {
    goto LABEL_103;
  }

  v218 = v28;
  v124 = v123;
  v125 = v124;
LABEL_104:

  v126 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v126 setEventType:1];
  v127 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v126 setUserActionEvent:v127];

  v128 = [v126 userActionEvent];
  [v128 setUserActionEventAction:a3];

  v129 = [v126 userActionEvent];
  v130 = a4;
  [v129 setUserActionEventTarget:a4];

  v131 = [v126 userActionEvent];
  [v131 setUserActionEventValue:v242];

  v132 = [v126 userActionEvent];
  [v132 setActionRichProviderId:v241];

  v223 = v125;
  if (v15 || v243 || v244)
  {
    v133 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v134 = [v126 userActionEvent];
    [v134 setModuleInfo:v133];

    if (v15)
    {
      v135 = [v15 intValue];
      v136 = [v126 userActionEvent];
      v137 = [v136 moduleInfo];
      [v137 setType:v135];

      v130 = a4;
    }

    if (v243)
    {
      v138 = [v126 userActionEvent];
      v139 = [v138 moduleInfo];
      [v139 setModuleMetadata:v243];
    }

    v125 = v223;
    if (v244)
    {
      v140 = [v126 userActionEvent];
      v141 = [v140 moduleInfo];
      [v141 setClassification:v244];

      v125 = v223;
    }
  }

  if (v55)
  {
    [v126 addLogMsgState:v55];
  }

  if (v240)
  {
    [v126 addLogMsgState:v240];
  }

  if (v239)
  {
    [v126 addLogMsgState:?];
  }

  if (v238)
  {
    [v126 addLogMsgState:?];
  }

  if (v237)
  {
    [v126 addLogMsgState:v237];
  }

  if (v236)
  {
    [v126 addLogMsgState:v236];
  }

  if (v235)
  {
    [v126 addLogMsgState:?];
  }

  if (v234)
  {
    [v126 addLogMsgState:?];
  }

  if (v233)
  {
    [v126 addLogMsgState:v233];
  }

  if (v232)
  {
    [v126 addLogMsgState:v232];
  }

  if (v231)
  {
    [v126 addLogMsgState:?];
  }

  if (v230)
  {
    [v126 addLogMsgState:?];
  }

  if (v229)
  {
    [v126 addLogMsgState:v229];
  }

  if (v228)
  {
    [v126 addLogMsgState:v228];
  }

  if (v226)
  {
    [v126 addLogMsgState:?];
  }

  if (v225)
  {
    [v126 addLogMsgState:?];
  }

  if (v224)
  {
    [v126 addLogMsgState:v224];
  }

  if (v125)
  {
    [v126 addLogMsgState:v125];
  }

  if (v227)
  {
    [v126 addLogMsgState:v227];
  }

  v222 = v15;
  v216 = v55;
  if (a3 == 6003 && v130 == 201)
  {
    v142 = [v18 stateForType:{68, v55}];
    v143 = [v142 copy];

    if (v143)
    {
      [v126 addLogMsgState:v143];
    }

    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    goto LABEL_185;
  }

  if (a3 == 2015 && v130 == 102)
  {
    v149 = [v18 stateForType:{56, v55}];
    v143 = [v149 copy];

    if (v143)
    {
      [v126 addLogMsgState:v143];
    }

    v150 = [v18 stateForType:59];
    v151 = [v150 copy];

    if (v151)
    {
      [v126 addLogMsgState:v151];
    }

    v152 = [v18 stateForType:54];
    v153 = [v152 copy];

    if (v153)
    {
      [v126 addLogMsgState:v153];
    }

LABEL_165:
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
LABEL_184:
    v130 = a4;
LABEL_185:

    goto LABEL_186;
  }

  v147 = v130 == 105;
  if (a3 == 2015 && v130 == 105)
  {
    v154 = [v18 stateForType:{56, v55}];
    v143 = [v154 copy];

    if (v143)
    {
      [v126 addLogMsgState:v143];
    }

    v155 = [v18 stateForType:59];
    v156 = [v155 copy];

    if (v156)
    {
      [v126 addLogMsgState:v156];
    }

    v157 = [v18 stateForType:54];
    v158 = [v157 copy];

    if (v158)
    {
      [v126 addLogMsgState:v158];
    }

    v144 = 0;
    v145 = 0;
    v146 = 0;
    v148 = 0;
    v147 = 1;
    goto LABEL_184;
  }

  v146 = v130 == 101;
  if (a3 == 2015 && v130 == 101)
  {
    v159 = [v18 stateForType:{56, v55}];
    v143 = [v159 copy];

    if (v143)
    {
      [v126 addLogMsgState:v143];
    }

    v160 = [v18 stateForType:59];
    v161 = [v160 copy];

    if (v161)
    {
      [v126 addLogMsgState:v161];
    }

    v162 = [v18 stateForType:54];
    v163 = [v162 copy];

    if (v163)
    {
      [v126 addLogMsgState:v163];
    }

    v144 = 0;
    v145 = 0;
    v147 = 0;
    v148 = 0;
    v146 = 1;
    goto LABEL_184;
  }

  if (a3 == 2015 && v130 == 701)
  {
    v201 = [v18 stateForType:{59, v55}];
    v143 = [v201 copy];

    if (v143)
    {
      [v126 addLogMsgState:v143];
    }

    v202 = [v18 stateForType:54];
    v151 = [v202 copy];

    if (v151)
    {
      [v126 addLogMsgState:v151];
    }

    goto LABEL_165;
  }

  v145 = v130 == 11;
  if (a3 == 2015 && v130 == 11)
  {
    v203 = [v18 stateForType:{59, v55}];
    v143 = [v203 copy];

    if (v143)
    {
      [v126 addLogMsgState:v143];
    }

    v204 = [v18 stateForType:54];
    v205 = [v204 copy];

    if (v205)
    {
      [v126 addLogMsgState:v205];
    }

    v144 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 1;
    goto LABEL_184;
  }

  v148 = v130 == 803;
  if (a3 == 2015 && v130 == 803)
  {
    v209 = [v18 stateForType:{59, v55}];
    v143 = [v209 copy];

    if (v143)
    {
      [v126 addLogMsgState:v143];
    }

    v210 = [v18 stateForType:54];
    v211 = [v210 copy];

    if (v211)
    {
      [v126 addLogMsgState:v211];
    }

    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 1;
    goto LABEL_184;
  }

  v144 = a3 == 2007;
  if (a3 == 2007 && v130 == 102)
  {
    v213 = [v18 stateForType:{68, v55}];
    v143 = [v213 copy];

    if (v143)
    {
      [v126 addLogMsgState:v143];
    }

    v214 = [v18 stateForType:57];
    v215 = [v214 copy];

    if (v215)
    {
      [v126 addLogMsgState:v215];
    }

    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    v144 = 1;
    goto LABEL_184;
  }

LABEL_186:
  if (v144 && v147)
  {
    v164 = [v18 stateForType:68];
    v165 = [v164 copy];

    if (v165)
    {
      [v126 addLogMsgState:v165];
    }

    v166 = [v18 stateForType:{57, v216, v218}];
    v167 = [v166 copy];

    if (v167)
    {
      [v126 addLogMsgState:v167];
    }

    v130 = a4;
  }

  if (v144 && v146)
  {
    v168 = [v18 stateForType:68];
    v169 = [v168 copy];

    if (v169)
    {
      [v126 addLogMsgState:v169];
    }

    v170 = [v18 stateForType:{57, v216}];
    v171 = [v170 copy];

    if (v171)
    {
      [v126 addLogMsgState:v171];
    }

    v130 = a4;
  }

  v172 = !v144;
  if (v130 != 8)
  {
    v172 = 1;
  }

  if ((v172 & 1) == 0)
  {
    v173 = [v18 stateForType:68];
    v174 = [v173 copy];

    if (v174)
    {
      [v126 addLogMsgState:v174];
    }
  }

  if (v144 && v145)
  {
    v175 = [v18 stateForType:68];
    v176 = [v175 copy];

    if (v176)
    {
      [v126 addLogMsgState:v176];
    }
  }

  if (v144 && v148)
  {
    v177 = [v18 stateForType:68];
    v178 = [v177 copy];

    if (v178)
    {
      [v126 addLogMsgState:v178];
    }

    v179 = v222;
    v180 = v220;
LABEL_221:

    v185 = v130 == 503;
LABEL_222:
    v186 = v130 == 501;
    goto LABEL_223;
  }

  v181 = !v146;
  if (a3 != 6006)
  {
    v181 = 1;
  }

  if ((v181 & 1) == 0)
  {
    v182 = [v18 stateForType:68];
    v178 = [v182 copy];

    v179 = v222;
    v180 = v220;
    if (v178)
    {
      [v126 addLogMsgState:v178];
    }

    v183 = [v18 stateForType:{57, v216}];
    v184 = [v183 copy];

    if (v184)
    {
      [v126 addLogMsgState:v184];
    }

    v130 = a4;
    goto LABEL_221;
  }

  v185 = v130 == 503;
  v179 = v222;
  v180 = v220;
  if (a3 == 1018 && v130 == 503)
  {
    v198 = [v18 stateForType:57];
    v199 = [v198 copy];

    if (v199)
    {
      [v126 addLogMsgState:v199];
    }

    v185 = 1;
    goto LABEL_222;
  }

  if (a3 == 1017 && v130 == 259)
  {
LABEL_230:
    v191 = [v18 stateForType:{68, v216}];
    v192 = [v191 copy];

    if (v192)
    {
      [v126 addLogMsgState:v192];
    }

LABEL_232:

    goto LABEL_233;
  }

  v186 = v130 == 501;
  if (v130 == 501 && a3 == 1017)
  {
    v200 = [v18 stateForType:68];
    v189 = [v200 copy];

    v190 = 0;
    v187 = 0;
    if (!v189)
    {
      goto LABEL_227;
    }

    goto LABEL_226;
  }

  if (v130 == 503 && a3 == 1017)
  {
    v206 = [v18 stateForType:68];
    v192 = [v206 copy];

    if (v192)
    {
      [v126 addLogMsgState:v192];
    }

    v207 = [v18 stateForType:{57, v216}];
    v208 = [v207 copy];

    if (v208)
    {
      [v126 addLogMsgState:v208];
    }

    goto LABEL_232;
  }

  if (v130 == 49 && a3 == 1017)
  {
    v212 = [v18 stateForType:68];
    v192 = [v212 copy];

    if (v192)
    {
      [v126 addLogMsgState:v192];
    }

    goto LABEL_232;
  }

LABEL_223:
  v187 = a3 == 194;
  if (a3 == 194 && v186)
  {
    v188 = [v18 stateForType:68];
    v189 = [v188 copy];

    v190 = 1;
    v187 = 1;
    if (!v189)
    {
LABEL_227:

      goto LABEL_228;
    }

LABEL_226:
    [v126 addLogMsgState:{v189, v216}];
    v187 = v190;
    goto LABEL_227;
  }

LABEL_228:
  if (v187 && v185)
  {
    goto LABEL_230;
  }

LABEL_233:
  v193 = +[GEOAPStateFactory sharedFactory];
  v247[0] = MEMORY[0x1E69E9820];
  v247[1] = 3221225472;
  v247[2] = __194__GEOAPPortal_UserActionCodeGen__capturePriorityShortUserActionsWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v247[3] = &unk_1E7953B38;
  v194 = v126;
  v248 = v194;
  v195 = v219;
  v250 = v195;
  v196 = v180;
  v249 = v196;
  [v193 sessionStateForType:6 callback:v247];

  v197 = *MEMORY[0x1E69E9840];
}

uint64_t __194__GEOAPPortal_UserActionCodeGen__capturePriorityShortUserActionsWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureFamiliarRoutesOnlyWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v73 = *MEMORY[0x1E69E9840];
  v59 = a5;
  v62 = a6;
  v61 = a7;
  v63 = a8;
  v60 = a9;
  v15 = a10;
  v58 = a11;
  v57 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v69;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v69 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v68 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:65];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  if (v28)
  {
    goto LABEL_15;
  }

  v29 = 0;
LABEL_14:
  v30 = [v16 stateForType:65];
  v28 = [v30 copy];

  if (v29)
  {
LABEL_16:
    v34 = [v16 stateForType:49];
    v33 = [v34 copy];

    goto LABEL_17;
  }

LABEL_15:
  v31 = [v16 logMsgStateTypeForType:49];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:v31];
  v33 = [v25 objectForKeyedSubscript:v32];

  if (!v33)
  {
    goto LABEL_16;
  }

LABEL_17:
  v35 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v35 setEventType:1];
  v36 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v35 setUserActionEvent:v36];

  v37 = [v35 userActionEvent];
  [v37 setUserActionEventAction:a3];

  v38 = [v35 userActionEvent];
  [v38 setUserActionEventTarget:a4];

  v39 = [v35 userActionEvent];
  [v39 setUserActionEventValue:v59];

  v40 = [v35 userActionEvent];
  [v40 setActionRichProviderId:v60];

  if (v62 || v61 || v63)
  {
    v41 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v42 = [v35 userActionEvent];
    [v42 setModuleInfo:v41];

    if (v62)
    {
      v43 = [v62 intValue];
      v44 = [v35 userActionEvent];
      v45 = [v44 moduleInfo];
      [v45 setType:v43];
    }

    if (v61)
    {
      v46 = [v35 userActionEvent];
      v47 = [v46 moduleInfo];
      [v47 setModuleMetadata:v61];
    }

    if (v63)
    {
      v48 = [v35 userActionEvent];
      v49 = [v48 moduleInfo];
      [v49 setClassification:v63];
    }
  }

  if (v28)
  {
    [v35 addLogMsgState:v28];
  }

  if (v33)
  {
    [v35 addLogMsgState:v33];
  }

  v50 = +[GEOAPStateFactory sharedFactory];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __188__GEOAPPortal_UserActionCodeGen__captureFamiliarRoutesOnlyWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v64[3] = &unk_1E7953B38;
  v66 = v58;
  v67 = v57;
  v65 = v35;
  v51 = v58;
  v52 = v57;
  v53 = v35;
  [v50 sessionStateForType:20 callback:v64];

  v54 = *MEMORY[0x1E69E9840];
}

uint64_t __188__GEOAPPortal_UserActionCodeGen__captureFamiliarRoutesOnlyWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureStartEndNavWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v241 = *MEMORY[0x1E69E9840];
  v224 = a5;
  v15 = a6;
  v16 = a7;
  v226 = a8;
  v223 = a9;
  v17 = a10;
  v199 = a11;
  v198 = a12;
  v18 = +[GEOAPStateFactory sharedFactory];
  v219 = v16;
  v200 = v17;
  if ([v17 count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v236 objects:v240 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v237;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v237 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v236 + 1) + 8 * i);
          v26 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v25, "stateType")}];
          [v19 setObject:v25 forKeyedSubscript:v26];
        }

        v22 = [v20 countByEnumeratingWithState:&v236 objects:v240 count:16];
      }

      while (v22);
    }

    v27 = [v19 copy];
    if (v27)
    {
      v28 = [v18 logMsgStateTypeForType:65];
      v29 = [MEMORY[0x1E696AD98] numberWithInt:v28];
      v30 = [v27 objectForKeyedSubscript:v29];

      if (v30)
      {
        v222 = v30;

        v16 = v219;
        goto LABEL_18;
      }

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v16 = v219;
  }

  else
  {
    v27 = 0;
    v31 = 1;
  }

  v32 = [v18 stateForType:65];
  v222 = [v32 copy];

  if (v31)
  {
    v33 = 1;
    goto LABEL_21;
  }

LABEL_18:
  v34 = [v18 logMsgStateTypeForType:5];
  v35 = [MEMORY[0x1E696AD98] numberWithInt:v34];
  v36 = [v27 objectForKeyedSubscript:v35];

  if (v36)
  {
    v37 = v36;

    goto LABEL_23;
  }

  v33 = 0;
LABEL_21:
  v38 = [v18 stateForType:5];
  v37 = [v38 copy];

  if (v33)
  {
    v39 = 1;
    goto LABEL_26;
  }

LABEL_23:
  v40 = [v18 logMsgStateTypeForType:15];
  v41 = [MEMORY[0x1E696AD98] numberWithInt:v40];
  v42 = [v27 objectForKeyedSubscript:v41];

  if (v42)
  {
    v43 = v42;

    goto LABEL_28;
  }

  v39 = 0;
LABEL_26:
  v44 = [v18 stateForType:15];
  v43 = [v44 copy];

  if (v39)
  {
    v45 = 1;
    goto LABEL_31;
  }

LABEL_28:
  v46 = [v18 logMsgStateTypeForType:35];
  v47 = [MEMORY[0x1E696AD98] numberWithInt:v46];
  v48 = [v27 objectForKeyedSubscript:v47];

  if (v48)
  {
    v225 = v48;

    goto LABEL_33;
  }

  v45 = 0;
LABEL_31:
  v49 = [v18 stateForType:35];
  v225 = [v49 copy];

  if (v45)
  {
    v50 = 1;
    goto LABEL_36;
  }

LABEL_33:
  v51 = [v18 logMsgStateTypeForType:30];
  v52 = [MEMORY[0x1E696AD98] numberWithInt:v51];
  v53 = [v27 objectForKeyedSubscript:v52];

  if (v53)
  {
    v54 = v53;

    goto LABEL_38;
  }

  v50 = 0;
LABEL_36:
  v55 = [v18 stateForType:30];
  v54 = [v55 copy];

  if (v50)
  {
    v217 = v54;
    v56 = 1;
    goto LABEL_41;
  }

LABEL_38:
  v217 = v54;
  v57 = [v18 logMsgStateTypeForType:1];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:v57];
  v59 = [v27 objectForKeyedSubscript:v58];

  if (!v59)
  {
    v56 = 0;
LABEL_41:
    v60 = 1;
    v61 = [v18 stateForType:1];
    v216 = [v61 copy];

    if (v56)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v216 = v59;

LABEL_42:
  v62 = [v18 logMsgStateTypeForType:49];
  v63 = [MEMORY[0x1E696AD98] numberWithInt:v62];
  v64 = [v27 objectForKeyedSubscript:v63];

  if (v64)
  {
    v65 = v64;

    goto LABEL_47;
  }

  v60 = 0;
LABEL_45:
  v66 = [v18 stateForType:49];
  v65 = [v66 copy];

  if (v60)
  {
    v67 = 1;
    goto LABEL_50;
  }

LABEL_47:
  v68 = [v18 logMsgStateTypeForType:3];
  v69 = [MEMORY[0x1E696AD98] numberWithInt:v68];
  v70 = [v27 objectForKeyedSubscript:v69];

  if (v70)
  {
    v214 = v70;

    goto LABEL_52;
  }

  v67 = 0;
LABEL_50:
  v71 = [v18 stateForType:3];
  v214 = [v71 copy];

  if (v67)
  {
    v72 = 1;
    goto LABEL_55;
  }

LABEL_52:
  v73 = [v18 logMsgStateTypeForType:64];
  v74 = [MEMORY[0x1E696AD98] numberWithInt:v73];
  v75 = [v27 objectForKeyedSubscript:v74];

  if (v75)
  {
    v213 = v75;

    goto LABEL_57;
  }

  v72 = 0;
LABEL_55:
  v76 = [v18 stateForType:64];
  v213 = [v76 copy];

  if (v72)
  {
    v77 = 1;
    goto LABEL_60;
  }

LABEL_57:
  v78 = [v18 logMsgStateTypeForType:13];
  v79 = [MEMORY[0x1E696AD98] numberWithInt:v78];
  v80 = [v27 objectForKeyedSubscript:v79];

  if (v80)
  {
    v212 = v80;

    goto LABEL_62;
  }

  v77 = 0;
LABEL_60:
  v81 = [v18 stateForType:13];
  v212 = [v81 copy];

  if (v77)
  {
    v82 = 1;
    goto LABEL_65;
  }

LABEL_62:
  v83 = [v18 logMsgStateTypeForType:14];
  v84 = [MEMORY[0x1E696AD98] numberWithInt:v83];
  v85 = [v27 objectForKeyedSubscript:v84];

  if (v85)
  {
    v211 = v85;

    goto LABEL_67;
  }

  v82 = 0;
LABEL_65:
  v86 = [v18 stateForType:14];
  v211 = [v86 copy];

  if (v82)
  {
    v87 = 1;
    goto LABEL_70;
  }

LABEL_67:
  v88 = [v18 logMsgStateTypeForType:9];
  v89 = [MEMORY[0x1E696AD98] numberWithInt:v88];
  v90 = [v27 objectForKeyedSubscript:v89];

  if (v90)
  {
    v210 = v90;

    goto LABEL_72;
  }

  v87 = 0;
LABEL_70:
  v91 = [v18 stateForType:9];
  v210 = [v91 copy];

  if (v87)
  {
    v92 = 1;
    goto LABEL_75;
  }

LABEL_72:
  v93 = [v18 logMsgStateTypeForType:10];
  v94 = [MEMORY[0x1E696AD98] numberWithInt:v93];
  v95 = [v27 objectForKeyedSubscript:v94];

  if (v95)
  {
    v209 = v95;

    goto LABEL_77;
  }

  v92 = 0;
LABEL_75:
  v96 = [v18 stateForType:10];
  v209 = [v96 copy];

  if (v92)
  {
    v97 = 1;
    goto LABEL_80;
  }

LABEL_77:
  v98 = [v18 logMsgStateTypeForType:20];
  v99 = [MEMORY[0x1E696AD98] numberWithInt:v98];
  v100 = [v27 objectForKeyedSubscript:v99];

  if (v100)
  {
    v208 = v100;

    goto LABEL_82;
  }

  v97 = 0;
LABEL_80:
  v101 = [v18 stateForType:20];
  v208 = [v101 copy];

  if (v97)
  {
    v102 = 1;
    goto LABEL_85;
  }

LABEL_82:
  v103 = [v18 logMsgStateTypeForType:42];
  v104 = [MEMORY[0x1E696AD98] numberWithInt:v103];
  v105 = [v27 objectForKeyedSubscript:v104];

  if (v105)
  {
    v207 = v105;

    goto LABEL_87;
  }

  v102 = 0;
LABEL_85:
  v106 = [v18 stateForType:42];
  v207 = [v106 copy];

  if (v102)
  {
    v107 = 1;
    goto LABEL_90;
  }

LABEL_87:
  v108 = [v18 logMsgStateTypeForType:70];
  v109 = [MEMORY[0x1E696AD98] numberWithInt:v108];
  v110 = [v27 objectForKeyedSubscript:v109];

  if (v110)
  {
    v220 = v110;

    goto LABEL_92;
  }

  v107 = 0;
LABEL_90:
  v111 = [v18 stateForType:70];
  v220 = [v111 copy];

  if (v107)
  {
    v112 = 1;
    goto LABEL_95;
  }

LABEL_92:
  v113 = [v18 logMsgStateTypeForType:7];
  v114 = [MEMORY[0x1E696AD98] numberWithInt:v113];
  v115 = [v27 objectForKeyedSubscript:v114];

  if (v115)
  {
    v206 = v115;

    goto LABEL_97;
  }

  v112 = 0;
LABEL_95:
  v116 = [v18 stateForType:7];
  v206 = [v116 copy];

  if (v112)
  {
    v117 = 1;
    goto LABEL_100;
  }

LABEL_97:
  v118 = [v18 logMsgStateTypeForType:17];
  v119 = [MEMORY[0x1E696AD98] numberWithInt:v118];
  v120 = [v27 objectForKeyedSubscript:v119];

  if (v120)
  {
    v205 = v120;

    goto LABEL_102;
  }

  v117 = 0;
LABEL_100:
  v121 = [v18 stateForType:17];
  v205 = [v121 copy];

  if (v117)
  {
    v215 = v65;
    v218 = v43;
    v122 = 1;
    goto LABEL_105;
  }

LABEL_102:
  v215 = v65;
  v123 = [v18 logMsgStateTypeForType:19];
  v124 = [MEMORY[0x1E696AD98] numberWithInt:v123];
  v125 = [v27 objectForKeyedSubscript:v124];

  v218 = v43;
  if (!v125)
  {
    v122 = 0;
LABEL_105:
    v127 = [v18 stateForType:19];
    v126 = [v127 copy];

    if (v122)
    {
      goto LABEL_108;
    }

    goto LABEL_106;
  }

  v126 = v125;

LABEL_106:
  v128 = [v18 logMsgStateTypeForType:27];
  v129 = [MEMORY[0x1E696AD98] numberWithInt:v128];
  v130 = [v27 objectForKeyedSubscript:v129];

  if (v130)
  {
    v203 = v37;
    v131 = v130;
    v204 = v131;
    goto LABEL_109;
  }

LABEL_108:
  v203 = v37;
  v131 = [v18 stateForType:27];
  v204 = [v131 copy];

LABEL_109:
  v132 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v132 setEventType:1];
  v133 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v132 setUserActionEvent:v133];

  v134 = [v132 userActionEvent];
  [v134 setUserActionEventAction:a3];

  v135 = [v132 userActionEvent];
  [v135 setUserActionEventTarget:a4];

  v136 = [v132 userActionEvent];
  [v136 setUserActionEventValue:v224];

  v137 = [v132 userActionEvent];
  [v137 setActionRichProviderId:v223];

  v138 = v15 | v16 | v226;
  v139 = v138 != 0;
  if (v138)
  {
    v140 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v141 = [v132 userActionEvent];
    [v141 setModuleInfo:v140];

    if (v15)
    {
      v142 = [v15 intValue];
      v143 = [v132 userActionEvent];
      v144 = [v143 moduleInfo];
      [v144 setType:v142];

      v16 = v219;
    }

    if (v16)
    {
      v145 = [v132 userActionEvent];
      v146 = [v145 moduleInfo];
      [v146 setModuleMetadata:v16];
    }

    if (v226)
    {
      v147 = [v132 userActionEvent];
      v148 = [v147 moduleInfo];
      [v148 setClassification:v226];
    }
  }

  if (v222)
  {
    [v132 addLogMsgState:?];
  }

  if (v215)
  {
    [v132 addLogMsgState:?];
  }

  if (v126)
  {
    [v132 addLogMsgState:v126];
  }

  v149 = a3 == 3001 && a4 == 305;
  v150 = v149;
  v202 = v150;
  v201 = v15;
  if (v149 || a3 == 3001 && a4 == 301)
  {
    v151 = [v18 stateForType:68];
    v152 = [v151 copy];

    if (v152)
    {
      [v132 addLogMsgState:v152];
    }

    v153 = v202 ^ 1;
  }

  else
  {
    v153 = 0;
    if (a3 == 3001 && a4 == 303)
    {
      v158 = [v18 stateForType:68];
      v155 = [v158 copy];

      v156 = 0;
      if (!v155)
      {
        v195 = 1;
        v196 = 0;
        v197 = 0;
        goto LABEL_151;
      }

      v195 = 1;
      v196 = 0;
      v197 = 0;
      goto LABEL_146;
    }
  }

  v197 = v153;
  if (a3 == 3001 && a4 == 302)
  {
    v154 = [v18 stateForType:68];
    v155 = [v154 copy];

    v156 = 0;
    v196 = 1;
    if (!v155)
    {
      v195 = 0;
      goto LABEL_151;
    }

    v195 = 0;
  }

  else
  {
    v156 = 0;
    if (a3 != 3001 || a4 != 802)
    {
      v195 = 0;
      v196 = 0;
      goto LABEL_152;
    }

    v157 = [v18 stateForType:68];
    v155 = [v157 copy];

    v156 = 1;
    v195 = 0;
    if (!v155)
    {
      v196 = 0;
      goto LABEL_151;
    }

    v196 = 0;
  }

LABEL_146:
  [v132 addLogMsgState:v155];
LABEL_151:

LABEL_152:
  v159 = +[GEOAPStateFactory sharedFactory];
  v232[0] = MEMORY[0x1E69E9820];
  v232[1] = 3221225472;
  v232[2] = __181__GEOAPPortal_UserActionCodeGen__captureStartEndNavWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v232[3] = &unk_1E7953B38;
  v160 = v132;
  v233 = v160;
  v161 = v198;
  v235 = v161;
  v162 = v199;
  v234 = v162;
  [v159 sessionStateForType:20 callback:v232];

  v163 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v163 setEventType:1];
  v164 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v163 setUserActionEvent:v164];

  v165 = [v163 userActionEvent];
  [v165 setUserActionEventAction:a3];

  v166 = [v163 userActionEvent];
  [v166 setUserActionEventTarget:a4];

  v167 = [v163 userActionEvent];
  [v167 setUserActionEventValue:v224];

  v168 = [v163 userActionEvent];
  [v168 setActionRichProviderId:v223];

  v169 = v203;
  if (v139)
  {
    v170 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v171 = [v163 userActionEvent];
    [v171 setModuleInfo:v170];

    if (v201)
    {
      v172 = [v201 intValue];
      v173 = [v163 userActionEvent];
      v174 = [v173 moduleInfo];
      [v174 setType:v172];

      v169 = v203;
    }

    if (v219)
    {
      v175 = [v163 userActionEvent];
      v176 = [v175 moduleInfo];
      [v176 setModuleMetadata:v219];

      v169 = v203;
    }

    if (v226)
    {
      v177 = [v163 userActionEvent];
      v178 = [v177 moduleInfo];
      [v178 setClassification:v226];

      v169 = v203;
    }
  }

  v179 = v225;
  if (v222)
  {
    [v163 addLogMsgState:?];
  }

  if (v169)
  {
    [v163 addLogMsgState:v169];
  }

  if (v218)
  {
    [v163 addLogMsgState:?];
  }

  if (v225)
  {
    [v163 addLogMsgState:v225];
  }

  if (v217)
  {
    [v163 addLogMsgState:v217];
  }

  if (v216)
  {
    [v163 addLogMsgState:?];
  }

  if (v214)
  {
    [v163 addLogMsgState:?];
  }

  if (v213)
  {
    [v163 addLogMsgState:v213];
  }

  if (v212)
  {
    [v163 addLogMsgState:?];
  }

  if (v211)
  {
    [v163 addLogMsgState:?];
  }

  if (v210)
  {
    [v163 addLogMsgState:v210];
  }

  if (v209)
  {
    [v163 addLogMsgState:?];
  }

  if (v208)
  {
    [v163 addLogMsgState:?];
  }

  if (v207)
  {
    [v163 addLogMsgState:v207];
  }

  if (v206)
  {
    [v163 addLogMsgState:?];
  }

  if (v205)
  {
    [v163 addLogMsgState:?];
  }

  if (v126)
  {
    [v163 addLogMsgState:v126];
  }

  if (v204)
  {
    [v163 addLogMsgState:v204];
  }

  if (v220)
  {
    [v163 addLogMsgState:v220];
  }

  if (v202)
  {
    v180 = [v18 stateForType:68];
    v181 = [v180 copy];

    if (v181)
    {
      [v163 addLogMsgState:v181];
    }

    v179 = v225;
  }

  if (v197)
  {
    v182 = [v18 stateForType:68];
    v183 = [v182 copy];

    if (v183)
    {
      [v163 addLogMsgState:v183];
    }

    v179 = v225;
  }

  if (v195)
  {
    v184 = [v18 stateForType:68];
    v185 = [v184 copy];

    if (v185)
    {
      [v163 addLogMsgState:v185];
    }

    v179 = v225;
  }

  if (v196)
  {
    v186 = [v18 stateForType:68];
    v187 = [v186 copy];

    if (v187)
    {
      [v163 addLogMsgState:v187];
    }

    v179 = v225;
  }

  if (v156)
  {
    v188 = [v18 stateForType:68];
    v189 = [v188 copy];

    if (v189)
    {
      [v163 addLogMsgState:v189];
    }

    v179 = v225;
  }

  v190 = +[GEOAPStateFactory sharedFactory];
  v228[0] = MEMORY[0x1E69E9820];
  v228[1] = 3221225472;
  v228[2] = __181__GEOAPPortal_UserActionCodeGen__captureStartEndNavWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke_2;
  v228[3] = &unk_1E7953B38;
  v191 = v163;
  v229 = v191;
  v192 = v161;
  v231 = v192;
  v193 = v162;
  v230 = v193;
  [v190 sessionStateForType:6 callback:v228];

  v194 = *MEMORY[0x1E69E9840];
}

uint64_t __181__GEOAPPortal_UserActionCodeGen__captureStartEndNavWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

uint64_t __181__GEOAPPortal_UserActionCodeGen__captureStartEndNavWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)capturePlaceCardRevealWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v187 = *MEMORY[0x1E69E9840];
  v175 = a5;
  v174 = a6;
  v176 = a7;
  v177 = a8;
  v173 = a9;
  v15 = a10;
  v153 = a11;
  v152 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  v154 = v15;
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v182 objects:v186 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v183;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v183 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v182 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v182 objects:v186 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:65];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  if (v28)
  {
    v171 = v28;

    goto LABEL_16;
  }

  v29 = 0;
LABEL_14:
  v30 = [v16 stateForType:65];
  v171 = [v30 copy];

  if (v29)
  {
    v31 = 1;
    goto LABEL_19;
  }

LABEL_16:
  v32 = [v16 logMsgStateTypeForType:5];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:v32];
  v34 = [v25 objectForKeyedSubscript:v33];

  if (v34)
  {
    v170 = v34;

    goto LABEL_21;
  }

  v31 = 0;
LABEL_19:
  v35 = [v16 stateForType:5];
  v170 = [v35 copy];

  if (v31)
  {
    v36 = 1;
    goto LABEL_24;
  }

LABEL_21:
  v37 = [v16 logMsgStateTypeForType:15];
  v38 = [MEMORY[0x1E696AD98] numberWithInt:v37];
  v39 = [v25 objectForKeyedSubscript:v38];

  if (v39)
  {
    v169 = v39;

    goto LABEL_26;
  }

  v36 = 0;
LABEL_24:
  v40 = [v16 stateForType:15];
  v169 = [v40 copy];

  if (v36)
  {
    v41 = 1;
    goto LABEL_29;
  }

LABEL_26:
  v42 = [v16 logMsgStateTypeForType:35];
  v43 = [MEMORY[0x1E696AD98] numberWithInt:v42];
  v44 = [v25 objectForKeyedSubscript:v43];

  if (v44)
  {
    v168 = v44;

    goto LABEL_31;
  }

  v41 = 0;
LABEL_29:
  v45 = [v16 stateForType:35];
  v168 = [v45 copy];

  if (v41)
  {
    v46 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v47 = [v16 logMsgStateTypeForType:30];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:v47];
  v49 = [v25 objectForKeyedSubscript:v48];

  if (v49)
  {
    v167 = v49;

    goto LABEL_36;
  }

  v46 = 0;
LABEL_34:
  v50 = [v16 stateForType:30];
  v167 = [v50 copy];

  if (v46)
  {
    v51 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v52 = [v16 logMsgStateTypeForType:1];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:v52];
  v54 = [v25 objectForKeyedSubscript:v53];

  if (!v54)
  {
    v51 = 0;
LABEL_39:
    v55 = 1;
    v56 = [v16 stateForType:1];
    v166 = [v56 copy];

    if (v51)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v166 = v54;

LABEL_40:
  v57 = [v16 logMsgStateTypeForType:3];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:v57];
  v59 = [v25 objectForKeyedSubscript:v58];

  if (v59)
  {
    v165 = v59;

    goto LABEL_45;
  }

  v55 = 0;
LABEL_43:
  v60 = [v16 stateForType:3];
  v165 = [v60 copy];

  if (v55)
  {
    v61 = 1;
    goto LABEL_48;
  }

LABEL_45:
  v62 = [v16 logMsgStateTypeForType:56];
  v63 = [MEMORY[0x1E696AD98] numberWithInt:v62];
  v64 = [v25 objectForKeyedSubscript:v63];

  if (v64)
  {
    v164 = v64;

    goto LABEL_50;
  }

  v61 = 0;
LABEL_48:
  v65 = [v16 stateForType:56];
  v164 = [v65 copy];

  if (v61)
  {
    v66 = 1;
    goto LABEL_53;
  }

LABEL_50:
  v67 = [v16 logMsgStateTypeForType:64];
  v68 = [MEMORY[0x1E696AD98] numberWithInt:v67];
  v69 = [v25 objectForKeyedSubscript:v68];

  if (v69)
  {
    v163 = v69;

    goto LABEL_55;
  }

  v66 = 0;
LABEL_53:
  v70 = [v16 stateForType:64];
  v163 = [v70 copy];

  if (v66)
  {
    v71 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v72 = [v16 logMsgStateTypeForType:13];
  v73 = [MEMORY[0x1E696AD98] numberWithInt:v72];
  v74 = [v25 objectForKeyedSubscript:v73];

  if (v74)
  {
    v162 = v74;

    goto LABEL_60;
  }

  v71 = 0;
LABEL_58:
  v75 = [v16 stateForType:13];
  v162 = [v75 copy];

  if (v71)
  {
    v76 = 1;
    goto LABEL_63;
  }

LABEL_60:
  v77 = [v16 logMsgStateTypeForType:14];
  v78 = [MEMORY[0x1E696AD98] numberWithInt:v77];
  v79 = [v25 objectForKeyedSubscript:v78];

  if (v79)
  {
    v161 = v79;

    goto LABEL_65;
  }

  v76 = 0;
LABEL_63:
  v80 = [v16 stateForType:14];
  v161 = [v80 copy];

  if (v76)
  {
    v81 = 1;
    goto LABEL_68;
  }

LABEL_65:
  v82 = [v16 logMsgStateTypeForType:9];
  v83 = [MEMORY[0x1E696AD98] numberWithInt:v82];
  v84 = [v25 objectForKeyedSubscript:v83];

  if (v84)
  {
    v160 = v84;

    goto LABEL_70;
  }

  v81 = 0;
LABEL_68:
  v85 = [v16 stateForType:9];
  v160 = [v85 copy];

  if (v81)
  {
    v86 = 1;
    goto LABEL_73;
  }

LABEL_70:
  v87 = [v16 logMsgStateTypeForType:10];
  v88 = [MEMORY[0x1E696AD98] numberWithInt:v87];
  v89 = [v25 objectForKeyedSubscript:v88];

  if (v89)
  {
    v159 = v89;

    goto LABEL_75;
  }

  v86 = 0;
LABEL_73:
  v90 = [v16 stateForType:10];
  v159 = [v90 copy];

  if (v86)
  {
    v91 = 1;
    goto LABEL_78;
  }

LABEL_75:
  v92 = [v16 logMsgStateTypeForType:20];
  v93 = [MEMORY[0x1E696AD98] numberWithInt:v92];
  v94 = [v25 objectForKeyedSubscript:v93];

  if (v94)
  {
    v158 = v94;

    goto LABEL_80;
  }

  v91 = 0;
LABEL_78:
  v95 = [v16 stateForType:20];
  v158 = [v95 copy];

  if (v91)
  {
    v96 = 1;
    goto LABEL_83;
  }

LABEL_80:
  v97 = [v16 logMsgStateTypeForType:42];
  v98 = [MEMORY[0x1E696AD98] numberWithInt:v97];
  v99 = [v25 objectForKeyedSubscript:v98];

  if (v99)
  {
    v157 = v99;

    goto LABEL_85;
  }

  v96 = 0;
LABEL_83:
  v100 = [v16 stateForType:42];
  v157 = [v100 copy];

  if (v96)
  {
    v101 = 1;
    goto LABEL_88;
  }

LABEL_85:
  v102 = [v16 logMsgStateTypeForType:70];
  v103 = [MEMORY[0x1E696AD98] numberWithInt:v102];
  v104 = [v25 objectForKeyedSubscript:v103];

  if (v104)
  {
    v156 = v104;

    goto LABEL_90;
  }

  v101 = 0;
LABEL_88:
  v105 = [v16 stateForType:70];
  v106 = [v105 copy];

  v156 = v106;
  if (v101)
  {
    v107 = 1;
    goto LABEL_93;
  }

LABEL_90:
  v108 = [v16 logMsgStateTypeForType:7];
  v109 = [MEMORY[0x1E696AD98] numberWithInt:v108];
  v110 = [v25 objectForKeyedSubscript:v109];

  if (v110)
  {
    v111 = v110;

    goto LABEL_95;
  }

  v107 = 0;
LABEL_93:
  v112 = [v16 stateForType:7];
  v111 = [v112 copy];

  if (v107)
  {
    v113 = 1;
    goto LABEL_98;
  }

LABEL_95:
  v114 = [v16 logMsgStateTypeForType:18];
  v115 = [MEMORY[0x1E696AD98] numberWithInt:v114];
  v116 = [v25 objectForKeyedSubscript:v115];

  if (v116)
  {
    v117 = v116;

    goto LABEL_100;
  }

  v113 = 0;
LABEL_98:
  v118 = [v16 stateForType:18];
  v117 = [v118 copy];

  if (v113)
  {
    v119 = 1;
    goto LABEL_103;
  }

LABEL_100:
  v120 = [v16 logMsgStateTypeForType:19];
  v121 = [MEMORY[0x1E696AD98] numberWithInt:v120];
  v122 = [v25 objectForKeyedSubscript:v121];

  if (v122)
  {
    v123 = v122;

    goto LABEL_104;
  }

  v119 = 0;
LABEL_103:
  v124 = [v16 stateForType:19];
  v123 = [v124 copy];

  if (v119)
  {
LABEL_106:
    v128 = [v16 stateForType:27];
    v129 = [v128 copy];

    goto LABEL_107;
  }

LABEL_104:
  v125 = [v16 logMsgStateTypeForType:27];
  v126 = [MEMORY[0x1E696AD98] numberWithInt:v125];
  v127 = [v25 objectForKeyedSubscript:v126];

  if (!v127)
  {
    goto LABEL_106;
  }

  v128 = v127;
  v129 = v128;
LABEL_107:

  v130 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v130 setEventType:1];
  v131 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v130 setUserActionEvent:v131];

  v132 = [v130 userActionEvent];
  [v132 setUserActionEventAction:a3];

  v133 = [v130 userActionEvent];
  [v133 setUserActionEventTarget:a4];

  v134 = [v130 userActionEvent];
  [v134 setUserActionEventValue:v175];

  v135 = [v130 userActionEvent];
  [v135 setActionRichProviderId:v173];

  if (v174 || v176 || v177)
  {
    v136 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v137 = [v130 userActionEvent];
    [v137 setModuleInfo:v136];

    if (v174)
    {
      v138 = [v174 intValue];
      v139 = [v130 userActionEvent];
      v140 = [v139 moduleInfo];
      [v140 setType:v138];
    }

    if (v176)
    {
      v141 = [v130 userActionEvent];
      v142 = [v141 moduleInfo];
      [v142 setModuleMetadata:v176];
    }

    if (v177)
    {
      v143 = [v130 userActionEvent];
      v144 = [v143 moduleInfo];
      [v144 setClassification:v177];
    }
  }

  if (v171)
  {
    [v130 addLogMsgState:?];
  }

  if (v170)
  {
    [v130 addLogMsgState:?];
  }

  if (v169)
  {
    [v130 addLogMsgState:v169];
  }

  if (v168)
  {
    [v130 addLogMsgState:?];
  }

  if (v167)
  {
    [v130 addLogMsgState:?];
  }

  if (v166)
  {
    [v130 addLogMsgState:v166];
  }

  if (v165)
  {
    [v130 addLogMsgState:?];
  }

  if (v164)
  {
    [v130 addLogMsgState:?];
  }

  if (v163)
  {
    [v130 addLogMsgState:v163];
  }

  if (v162)
  {
    [v130 addLogMsgState:?];
  }

  if (v161)
  {
    [v130 addLogMsgState:?];
  }

  if (v160)
  {
    [v130 addLogMsgState:v160];
  }

  if (v159)
  {
    [v130 addLogMsgState:?];
  }

  if (v158)
  {
    [v130 addLogMsgState:?];
  }

  if (v157)
  {
    [v130 addLogMsgState:v157];
  }

  if (v111)
  {
    [v130 addLogMsgState:v111];
  }

  if (v117)
  {
    [v130 addLogMsgState:v117];
  }

  if (v123)
  {
    [v130 addLogMsgState:v123];
  }

  if (v129)
  {
    [v130 addLogMsgState:v129];
  }

  if (v156)
  {
    [v130 addLogMsgState:v156];
  }

  if (a3 == 21 && a4 == 201)
  {
    v145 = [v16 stateForType:68];
    v146 = [v145 copy];

    if (v146)
    {
      [v130 addLogMsgState:v146];
    }
  }

  v147 = +[GEOAPStateFactory sharedFactory];
  v178[0] = MEMORY[0x1E69E9820];
  v178[1] = 3221225472;
  v178[2] = __185__GEOAPPortal_UserActionCodeGen__capturePlaceCardRevealWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v178[3] = &unk_1E7953B38;
  v148 = v130;
  v179 = v148;
  v149 = v152;
  v181 = v149;
  v150 = v153;
  v180 = v150;
  [v147 sessionStateForType:6 callback:v178];

  v151 = *MEMORY[0x1E69E9840];
}

uint64_t __185__GEOAPPortal_UserActionCodeGen__capturePlaceCardRevealWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)captureMapViewEngagementWithAction:(int)a3 target:(int)a4 value:(id)a5 moduleType:(id)a6 moduleMetadata:(id)a7 classification:(id)a8 richProviderId:(id)a9 additionalStates:(id)a10 completionQueue:(id)a11 completionBlock:(id)a12
{
  v73 = *MEMORY[0x1E69E9840];
  v59 = a5;
  v62 = a6;
  v61 = a7;
  v63 = a8;
  v60 = a9;
  v15 = a10;
  v58 = a11;
  v57 = a12;
  v16 = +[GEOAPStateFactory sharedFactory];
  if (![v15 count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v69;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v69 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v68 + 1) + 8 * i);
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v23, "stateType")}];
        [v17 setObject:v23 forKeyedSubscript:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v20);
  }

  v25 = [v17 copy];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = [v16 logMsgStateTypeForType:2];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v28 = [v25 objectForKeyedSubscript:v27];

  if (v28)
  {
    goto LABEL_15;
  }

  v29 = 0;
LABEL_14:
  v30 = [v16 stateForType:2];
  v28 = [v30 copy];

  if (v29)
  {
LABEL_16:
    v34 = [v16 stateForType:1];
    v33 = [v34 copy];

    goto LABEL_17;
  }

LABEL_15:
  v31 = [v16 logMsgStateTypeForType:1];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:v31];
  v33 = [v25 objectForKeyedSubscript:v32];

  if (!v33)
  {
    goto LABEL_16;
  }

LABEL_17:
  v35 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v35 setEventType:1];
  v36 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v35 setUserActionEvent:v36];

  v37 = [v35 userActionEvent];
  [v37 setUserActionEventAction:a3];

  v38 = [v35 userActionEvent];
  [v38 setUserActionEventTarget:a4];

  v39 = [v35 userActionEvent];
  [v39 setUserActionEventValue:v59];

  v40 = [v35 userActionEvent];
  [v40 setActionRichProviderId:v60];

  if (v62 || v61 || v63)
  {
    v41 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    v42 = [v35 userActionEvent];
    [v42 setModuleInfo:v41];

    if (v62)
    {
      v43 = [v62 intValue];
      v44 = [v35 userActionEvent];
      v45 = [v44 moduleInfo];
      [v45 setType:v43];
    }

    if (v61)
    {
      v46 = [v35 userActionEvent];
      v47 = [v46 moduleInfo];
      [v47 setModuleMetadata:v61];
    }

    if (v63)
    {
      v48 = [v35 userActionEvent];
      v49 = [v48 moduleInfo];
      [v49 setClassification:v63];
    }
  }

  if (v28)
  {
    [v35 addLogMsgState:v28];
  }

  if (v33)
  {
    [v35 addLogMsgState:v33];
  }

  v50 = +[GEOAPStateFactory sharedFactory];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __187__GEOAPPortal_UserActionCodeGen__captureMapViewEngagementWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke;
  v64[3] = &unk_1E7953B38;
  v66 = v58;
  v67 = v57;
  v65 = v35;
  v51 = v58;
  v52 = v57;
  v53 = v35;
  [v50 sessionStateForType:8 callback:v64];

  v54 = *MEMORY[0x1E69E9840];
}

uint64_t __187__GEOAPPortal_UserActionCodeGen__captureMapViewEngagementWithAction_target_value_moduleType_moduleMetadata_classification_richProviderId_additionalStates_completionQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addLogMsgState:a2];
  }

  v3 = GEOMakeGEOAPBatchID();
  [GEOAPPortal populateCommonEventValues:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);

  return [GEOAPPortal reportLogMsgEvent:v6 uploadBatchId:v3 completion:v4 completionQueue:v5];
}

+ (void)processMapsDeletionWithCompletionQueue:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[GEOAPServiceManager sharedManager];
  [v7 processMapsDeletionWithCompletionQueue:v6 completion:v5];
}

+ (id)_caChargingStateFromAPChargingState:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7953BB0[a3 - 1];
  }
}

+ (id)_caFeatureFromAPFeature:(int)a3
{
  v3 = @"UNKNOWN";
  if (a3 == 1)
  {
    v3 = @"TREE";
  }

  if (a3 == 2)
  {
    return @"SHADOW";
  }

  else
  {
    return v3;
  }
}

+ (id)_caTriggerTypeFromFromAPThermalPressure:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7953B90[a3 - 1];
  }
}

+ (id)_caNavMapTypeFromAPNavMapType:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7953B78[a3 - 1];
  }
}

+ (int)_eventNavChargingStateFromAPNavChargingState:(int)a3
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

+ (int)_eventNavMapTypeFromAPNavMapType:(int)a3
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

+ (int)_eventThermalPressureFromAPThermalPressure:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (void)captureDirectionsWithDirectionsFeedbacks:(id)a3 finalLocation:(id)a4 arrivalLocation:(id)a5 arrivedAtDestination:(id)a6 navigationAudioFeedback:(GEONavigationAudioFeedback *)a7 durationOfTrip:(id)a8 durationInNavigationModes:(id)a9 preArrival:(id)a10 originalEta:(id)a11 isVlfImprovementUsed:(id)a12 isCoarseLocationUsed:(id)a13 acceptedCyclingWorkout:(id)a14 batteryDied:(id)a15 chargingStopAdded:(id)a16 isSiriEngaged:(id)a17 tripOrigin:(id)a18 wasBadRouteExperience:(id)a19 isBadEvExperience:(id)a20 isEvSampleTrip:(id)a21 stateOfChargeAtOrigin:(id)a22 stateOfChargeAtDestPredicted:(id)a23 stateOfChargeAtDestActual:(id)a24 stateOfChargeDiffAtDest:(id)a25 waypoints:(id)a26 evConsumptionModel:(id)a27 evChargingMode:(id)a28 isEVRoute:(BOOL)a29 activeNavMode:(int)a30 arWalkingUsedInRoutePlanning:(id)a31 arWalkingUsedInNavigation:(id)a32 voiceGuidanceLevel:(int)a33 hFPEnabled:(id)a34 isEndRouteTermination:(id)a35 isParkedCarTermination:(id)a36 isTransitionToWalkingTermination:(id)a37 isTransitionToFindmyTermination:(id)a38 parkingDetectionLocation:(id)a39 timeBetweenParkedAndArrival:(id)a40 arrivedAtDestinationCount:(id)a41 inParkingModeCount:(id)a42 isInParkingMode:(id)a43 isSuggestToWalkingTriggered:(id)a44 isTransitedToWalking:(id)a45 isSuggestToFindmyTriggered:(id)a46 isTransitedToFindmy:(id)a47
{
  v106 = a3;
  v75 = a4;
  v103 = a5;
  v109 = a6;
  v105 = a8;
  v102 = a9;
  v108 = a10;
  v104 = a11;
  v101 = a12;
  v100 = a13;
  v99 = a14;
  v98 = a15;
  v97 = a16;
  v96 = a17;
  v95 = a18;
  v76 = a19;
  v94 = a20;
  v93 = a21;
  v92 = a22;
  v91 = a23;
  v50 = a24;
  v51 = a25;
  v52 = a26;
  v74 = a27;
  v90 = a28;
  v89 = a31;
  v88 = a32;
  v87 = a34;
  v86 = a35;
  v85 = a36;
  v84 = a37;
  v83 = a38;
  v82 = a39;
  v81 = a40;
  v80 = a41;
  v79 = a42;
  v78 = a43;
  v77 = a44;
  v53 = a45;
  v54 = a46;
  v55 = a47;
  v56 = +[GEOAPServiceManager sharedManager];
  v57 = v56;
  if (!a30)
  {
    [v56 reportDailyUsageCountType:167];
    v58 = [v109 BOOLValue];
    v59 = [v108 BOOLValue];
    if ((v58 & 1) != 0 || v59)
    {
      [v57 reportDailyUsageCountType:168];
      [v104 floatValue];
      v64 = v63;
      [v105 floatValue];
      v66 = v64 == 0.0 ? 0 : v58;
      if (v66 == 1 && v65 != 0.0)
      {
        v67 = v65;
        v68 = v64 - v67;
        v69 = v68 / v67;
        if (v68 > 600.0 && v69 > 0.25)
        {
          [v57 reportDailyUsageCountType:171];
        }

        if (v68 > 300.0 && v69 > 0.15)
        {
          [v57 reportDailyUsageCountType:170];
        }

        if (v68 < -300.0 && v69 < -0.15)
        {
          [v57 reportDailyUsageCountType:172];
        }

        if (v68 < -600.0 && v69 < -0.25)
        {
          [v57 reportDailyUsageCountType:173];
        }
      }
    }

    if ([v106 count] >= 2)
    {
      [v57 reportDailyUsageCountType:169];
    }
  }

  if (a29)
  {
    v60 = v74;
    if (([v57 evDirectionsFeedbackAuth] & 1) == 0)
    {
      [v57 setEvDirectionsFeedbackAllowed:0];
      goto LABEL_16;
    }

    if ([v76 BOOLValue])
    {
      [v57 setEvDirectionsFeedbackAllowed:0];
    }

    else
    {
      v70 = [v57 evDirectionsFeedbackAllowed];
      [v57 toggleEVDirectionsFeedbackAllowed];
      if (!v70)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v60 = v74;
    if (([v57 directionsFeedbackAllowed] & 1) == 0)
    {
      [v57 setDirectionsFeedbackAllowed:1];
      goto LABEL_16;
    }
  }

  v61 = a33;
  if ((a33 - 1) >= 3)
  {
    v61 = 0;
  }

  v62 = *&a7->var9;
  v110 = *&a7->var0;
  v111[0] = v62;
  *(v111 + 12) = *&a7->var12;
  LODWORD(v72) = v61;
  LODWORD(v71) = a30;
  [GEOAPPortal captureDirectionsWithDirectionsFeedbacks:v106 finalLocation:v75 arrivalLocation:v103 arrivedAtDestination:v109 navigationAudioFeedback:&v110 durationOfTrip:v105 durationInNavigationModes:v102 preArrival:v108 originalEta:v104 isVlfImprovementUsed:v101 isCoarseLocationUsed:v100 acceptedCyclingWorkout:v99 batteryDied:v98 chargingStopAdded:v97 isSiriEngaged:v96 tripOrigin:v95 isBadEvExperience:v94 isEvSampleTrip:v93 stateOfChargeAtOrigin:v92 stateOfChargeAtDestPredicted:v91 stateOfChargeAtDestActual:v50 stateOfChargeDiffAtDest:v51 waypoints:v52 evConsumptionModel:v60 evChargingMode:v90 activeNavMode:v71 arWalkingUsedInRoutePlanning:v89 arWalkingUsedInNavigation:v88 voiceGuidanceLevel:v72 hFPEnabled:v87 isEndRouteTermination:v86 isParkedCarTermination:v85 isTransitionToWalkingTermination:v84 isTransitionToFindmyTermination:v83 parkingDetectionLocation:v82 timeBetweenParkedAndArrival:v81 arrivedAtDestinationCount:v80 inParkingModeCount:v79 isInParkingMode:v78 isSuggestToWalkingTriggered:v77 isTransitedToWalking:v53 isSuggestToFindmyTriggered:v54 isTransitedToFindmy:v55 additionalStates:0 providedDropRate:0 completionQueue:0 completionBlock:0];
LABEL_16:
}

+ (void)captureCommuteDoomWindow:(id)a3 exitTime:(id)a4 destinations:(id)a5 reason:(int64_t)a6 networkRequests:(unint64_t)a7 alerts:(unint64_t)a8
{
  v49 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v42 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        v17 = objc_alloc_init(MEMORY[0x1E69A23B0]);
        v18 = [v16 objectForKeyedSubscript:&unk_1F2054F38];
        v19 = [v18 integerValue] - 1;
        if (v19 > 3)
        {
          v20 = 0;
        }

        else
        {
          v20 = dword_1AB6C2F60[v19];
        }

        [v17 setDestinationType:v20];

        v21 = [v16 objectForKeyedSubscript:&unk_1F2054F50];
        [v21 doubleValue];
        [v17 setConfidenceScore:?];

        v22 = [v16 objectForKeyedSubscript:&unk_1F2054F68];
        [v17 setChosen:{objc_msgSend(v22, "BOOLValue")}];

        [v11 addObject:v17];
      }

      v13 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v13);
  }

  v23 = MEMORY[0x1E696AD98];
  v37 = [v41 startDate];
  [v37 timeIntervalSinceReferenceDate];
  v34 = [v23 numberWithDouble:?];
  v24 = MEMORY[0x1E696AD98];
  v36 = [v41 endDate];
  v35 = [v41 startDate];
  [v36 timeIntervalSinceDate:v35];
  v25 = [v24 numberWithDouble:?];
  v26 = MEMORY[0x1E696AD98];
  v27 = [v41 startDate];
  [v42 timeIntervalSinceDate:v27];
  v28 = [v26 numberWithDouble:?];
  if (a6 == 2)
  {
    v29 = 2;
  }

  else
  {
    v29 = a6 == 1;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a8];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  v32 = [v11 copy];
  [GEOAPPortal captureCommuteWindowWithStartTime:v34 duration:v25 predictedExitTime:v28 endReason:v29 numberOfAlertingResponses:v30 numberOfDoomRoutingRequests:v31 predictedDestinations:v32];

  v33 = *MEMORY[0x1E69E9840];
}

+ (void)captureTimeToLeaveIntialTravelTimeEventWithTravelTime:(double)a3
{
  v3 = a3 / 60.0;
  if (v3 >= 15.0)
  {
    if (v3 >= 30.0)
    {
      if (v3 >= 60.0)
      {
        if (v3 >= 120.0)
        {
          if (v3 >= 240.0)
          {
            v4 = 6;
          }

          else
          {
            v4 = 5;
          }
        }

        else
        {
          v4 = 4;
        }
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  [GEOAPPortal captureTtlInitialTimeWithTravelTime:v5];
}

+ (void)captureTransitAppLaunchSource:(id)a3 destination:(id)a4 bundleIdentifier:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3.var1;
  v8 = a3.var0;
  v12 = a5;
  v9 = 0;
  if (fabs(v7) <= 180.0 && fabs(v8) <= 90.0)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A1E50]) initWithCoordinate:{v8, v7}];
  }

  v10 = 0;
  if (fabs(var1) <= 180.0 && fabs(var0) <= 90.0)
  {
    v10 = [objc_alloc(MEMORY[0x1E69A1E50]) initWithCoordinate:{var0, var1}];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  [GEOAPPortal captureTransitAppLaunchWithBundleIdentifier:v12 source:v9 destination:v10 timestamp:v11];
}

+ (void)captureMapLaunchEventWithLaunchUrl:(id)a3 sourceAppId:(id)a4 isLaunchedFromTTL:(BOOL)a5 ttlEventTime:(id)a6
{
  v7 = a5;
  v18 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [v11 bundleIdentifier];
  v13 = [v9 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    v14 = +[GEOAPSharedStateData sharedData];
    [v14 setMapLaunchSourceAppId:v9];

    if (v10 || v7)
    {
      v16 = MEMORY[0x1E696AD98];
      [v10 timeIntervalSinceNow];
      v15 = [v16 numberWithDouble:v17 / 60.0];
    }

    else
    {
      v15 = 0;
    }

    [GEOAPPortal captureMapLaunchWithLaunchUri:v18 sourceAppId:v9 GEOTimeToLeaveMapLaunch_minutesUntilEvent:v15];
    if ([v9 isEqualToString:@"com.apple.Maps.GeneralMapsWidget"])
    {
      [GEOAPPortal reportDailyUsageCountType:112];
    }
  }
}

+ (id)addCodeGenDailyCountsWithActionTargetTuple:(unint64_t)a3 actionTargetValue:(id)a4 appGroup:(int)a5
{
  v90 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (GEOGetGEOAPDailyUsageAnalyticsLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGEOAPDailyUsageAnalyticsLog_onceToken, &__block_literal_global_1046);
  }

  v9 = GEOGetGEOAPDailyUsageAnalyticsLog_log;
  if (os_log_type_enabled(GEOGetGEOAPDailyUsageAnalyticsLog_log, OS_LOG_TYPE_DEBUG))
  {
    v88 = 136315138;
    v89 = "+[GEOAPPortal(DailyUsageCodeGen) addCodeGenDailyCountsWithActionTargetTuple:actionTargetValue:appGroup:]";
    _os_log_impl(&dword_1AB634000, v9, OS_LOG_TYPE_DEBUG, "%s", &v88, 0xCu);
  }

  v10 = +[GEOAPSharedStateData sharedData];
  v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
  v12 = v11;
  v13 = &unk_1F2054FC8;
  if (a3 > 0x7FE000003ECLL)
  {
    if (a3 > 0x177D0000025BLL)
    {
      if (a3 <= 0x1B5F000000C8)
      {
        if (a3 <= 0x17A7000000C8)
        {
          if (a3 <= 0x1796000000C8)
          {
            if (a3 > 0x178B000000C8)
            {
              if (a3 > 0x1792000000C8)
              {
                if (a3 > 0x1794000000C8)
                {
                  if (a3 == 0x1794000000C9)
                  {
                    goto LABEL_1016;
                  }

                  v46 = 203;
                }

                else
                {
                  if (a3 == 0x1792000000C9)
                  {
                    goto LABEL_1016;
                  }

                  v46 = 30;
                }

                v16 = v46 & 0xFFFF0000FFFFFFFFLL | 0x179400000000;
              }

              else if (a3 > 0x178D000000C8)
              {
                if (a3 == 0x178D000000C9)
                {
                  goto LABEL_1016;
                }

                v16 = 0x1790000000C9;
              }

              else
              {
                if (a3 == 0x178B000000C9)
                {
                  goto LABEL_1016;
                }

                v16 = 0x178D0000001ELL;
              }
            }

            else
            {
              if (a3 <= 0x177D000006A4)
              {
                if (a3 > 0x177D0000025DLL)
                {
                  if (a3 != 0x177D0000025ELL && a3 != 0x177D00000262)
                  {
                    goto LABEL_1017;
                  }

                  v13 = &unk_1F20557F0;
                }

                else if (a3 == 0x177D0000025CLL)
                {
                  v13 = &unk_1F2055820;
                }

                else
                {
                  v13 = &unk_1F2055838;
                }

                goto LABEL_1016;
              }

              if (a3 > 0x17800000001DLL)
              {
                if (a3 == 0x17800000001ELL)
                {
                  goto LABEL_1016;
                }

                v16 = 0x1780000000C9;
              }

              else
              {
                if (a3 == 0x177D000006A5)
                {
                  v13 = &unk_1F20557D8;
                  goto LABEL_1016;
                }

                v16 = 0x177F000000C9;
              }
            }

            goto LABEL_876;
          }

          if (a3 <= 0x17A000000064)
          {
            if (a3 > 0x179D0000001DLL)
            {
              if (a3 > 0x179E000000C8)
              {
                if (a3 == 0x179E000000C9)
                {
                  goto LABEL_1016;
                }

                v16 = 0x179F000000C9;
              }

              else
              {
                if (a3 == 0x179D0000001ELL)
                {
                  goto LABEL_1016;
                }

                v16 = 0x179D000000C9;
              }
            }

            else if (a3 > 0x179B000000C8)
            {
              if (a3 == 0x179B000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x179C000000C9;
            }

            else
            {
              if (a3 == 0x1796000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x179A000000C9;
            }

            goto LABEL_876;
          }

          if (a3 > 0x17A1000000C8)
          {
            if (a3 > 0x17A2000000C8)
            {
              if (a3 == 0x17A2000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x17A4000000C9;
              goto LABEL_876;
            }

            if (a3 == 0x17A1000000C9)
            {
              goto LABEL_1016;
            }

            if (a3 != 0x17A1000004B9)
            {
              goto LABEL_1017;
            }
          }

          else
          {
            if (a3 <= 0x17A0000004B8)
            {
              if (a3 != 0x17A000000065)
              {
                v16 = 0x17A0000000C9;
                goto LABEL_876;
              }

LABEL_781:
              v13 = &unk_1F2055778;
              goto LABEL_1016;
            }

            if (a3 != 0x17A0000004B9)
            {
              if (a3 != 0x17A100000065)
              {
                goto LABEL_1017;
              }

              goto LABEL_781;
            }
          }

LABEL_782:
          v13 = &unk_1F20550A0;
          goto LABEL_1016;
        }

        if (a3 <= 0x17D100000039)
        {
          if (a3 <= 0x17BB000000C8)
          {
            if (a3 > 0x17AC000000C8)
            {
              if (a3 > 0x17BA000000C8)
              {
                if (a3 == 0x17BA000000C9)
                {
                  goto LABEL_1016;
                }

                v44 = 203;
              }

              else
              {
                if (a3 == 0x17AC000000C9)
                {
                  goto LABEL_1016;
                }

                v44 = 30;
              }

              v16 = v44 & 0xFFFF0000FFFFFFFFLL | 0x17BA00000000;
            }

            else
            {
              if (a3 > 0x17A9000000C8)
              {
                if (a3 != 0x17A9000000C9)
                {
                  if (a3 != 0x17AA00000000)
                  {
                    goto LABEL_1017;
                  }

                  v13 = &unk_1F2055178;
                }

                goto LABEL_1016;
              }

              if (a3 == 0x17A7000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x17A8000000C9;
            }

            goto LABEL_876;
          }

          if (a3 <= 0x17BF000000C8)
          {
            if (a3 > 0x17BD000000C8)
            {
              if (a3 == 0x17BD000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x17BE000000C9;
            }

            else
            {
              if (a3 == 0x17BB000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x17BC000000C9;
            }

            goto LABEL_876;
          }

          if (a3 > 0x17C0000000C8)
          {
            if (a3 == 0x17C0000000C9)
            {
              goto LABEL_1016;
            }

            v16 = 0x17C1000000C9;
            goto LABEL_876;
          }

          if (a3 == 0x17BF000000C9)
          {
            goto LABEL_1016;
          }

          v22 = 0x17BF000004B9;
          goto LABEL_551;
        }

        if (a3 > 0x17D100000400)
        {
          if (a3 > 0x1B5B000000C8)
          {
            if (a3 > 0x1B5D000000C8)
            {
              if (a3 == 0x1B5D000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x1B5E000000C9;
            }

            else
            {
              if (a3 == 0x1B5B000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x1B5C000000C9;
            }

            goto LABEL_876;
          }

          if (a3 > 0x1B59000000C8)
          {
            if (a3 == 0x1B59000000C9)
            {
              goto LABEL_1016;
            }

            v16 = 0x1B5A000000C9;
            goto LABEL_876;
          }

          if (a3 != 0x17D100000401)
          {
            if (a3 != 0x17D90000029ELL)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055730;
            goto LABEL_1016;
          }
        }

        else
        {
          if (a3 <= 0x17D100000190)
          {
            if (a3 > 0x17D1000000C8)
            {
              if (a3 != 0x17D1000000C9)
              {
                v26 = 301;
                goto LABEL_764;
              }
            }

            else if (a3 != 0x17D10000003ALL)
            {
              v26 = 104;
LABEL_764:
              v28 = v26 & 0xFFFF0000FFFFFFFFLL | 0x17D100000000;
LABEL_765:
              if (a3 != v28)
              {
                goto LABEL_1017;
              }

              goto LABEL_766;
            }

            goto LABEL_766;
          }

          if (a3 <= 0x17D1000003F0)
          {
            if (a3 != 0x17D100000191)
            {
              v26 = 607;
              goto LABEL_764;
            }

LABEL_766:
            v13 = &unk_1F20554C0;
            goto LABEL_1016;
          }

          if (a3 != 0x17D1000003F1 && a3 != 0x17D1000003FDLL)
          {
            goto LABEL_1017;
          }
        }

        v13 = &unk_1F2055A78;
        goto LABEL_1016;
      }

      if (a3 <= 0x2345000002D8)
      {
        if (a3 <= 0x2338000003EDLL)
        {
          if (a3 <= 0x232E000003ECLL)
          {
            if (a3 <= 0x1B63000000C8)
            {
              if (a3 > 0x1B61000000C8)
              {
                if (a3 == 0x1B61000000C9)
                {
                  goto LABEL_1016;
                }

                v16 = 0x1B62000000C9;
              }

              else
              {
                if (a3 == 0x1B5F000000C9)
                {
                  goto LABEL_1016;
                }

                v16 = 0x1B60000000C9;
              }

              goto LABEL_876;
            }

            if (a3 <= 0x1F49000003F1)
            {
              if (a3 == 0x1B63000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x1B65000000C9;
              goto LABEL_876;
            }

            if (a3 != 0x1F49000003F2)
            {
              if (a3 != 0x2329000002A3)
              {
                goto LABEL_1017;
              }

              goto LABEL_931;
            }

LABEL_809:
            v13 = &unk_1F20553E8;
            goto LABEL_1016;
          }

          if (a3 <= 0x23380000012ELL)
          {
            if (a3 <= 0x23380000012CLL)
            {
              if (a3 == 0x232E000003EDLL)
              {
                goto LABEL_809;
              }

              v32 = 0x232E000003FDLL;
LABEL_808:
              if (a3 != v32)
              {
                goto LABEL_1017;
              }

              goto LABEL_809;
            }

            if (a3 != 0x23380000012DLL)
            {
              if ([v10 mapSettingsLocationPrecisionType] != 3)
              {
                v13 = &unk_1F20559A0;
                goto LABEL_1016;
              }

              [v12 addObject:&unk_1F2055A48];
              goto LABEL_774;
            }

            if ([v10 mapSettingsLocationPrecisionType] != 3)
            {
              v13 = &unk_1F2055970;
              goto LABEL_1016;
            }

            [v12 addObject:&unk_1F2055A48];
LABEL_999:
            v13 = &unk_1F2055970;
            goto LABEL_1016;
          }

          if (a3 <= 0x2338000003E8)
          {
            if (a3 != 0x23380000012FLL)
            {
              if (a3 != 0x233800000131)
              {
                goto LABEL_1017;
              }

              if ([v10 mapSettingsLocationPrecisionType] == 3)
              {
                [v12 addObject:&unk_1F2055A48];
              }

              v13 = &unk_1F2055A00;
              goto LABEL_1016;
            }

            if ([v10 mapSettingsLocationPrecisionType] != 3)
            {
              v13 = &unk_1F2055988;
              goto LABEL_1016;
            }

            [v12 addObject:&unk_1F2055A48];
            goto LABEL_995;
          }

          if (a3 != 0x2338000003E9)
          {
            v25 = 1005;
            goto LABEL_821;
          }

          goto LABEL_823;
        }

        if (a3 <= 0x233B000003F1)
        {
          if (a3 > 0x233B000003E9)
          {
            if (a3 > 0x233B000003EELL)
            {
              if (a3 == 0x233B000003EFLL)
              {
                goto LABEL_809;
              }

              v34 = 1009;
            }

            else
            {
              if (a3 == 0x233B000003EALL)
              {
                goto LABEL_809;
              }

              v34 = 1005;
            }
          }

          else
          {
            if (a3 <= 0x2338000003EFLL)
            {
              if (a3 != 0x2338000003EELL)
              {
                v25 = 1007;
LABEL_821:
                v56 = v25 & 0xFFFF0000FFFFFFFFLL | 0x233800000000;
LABEL_822:
                if (a3 != v56)
                {
                  goto LABEL_1017;
                }
              }

LABEL_823:
              v13 = &unk_1F2055958;
              goto LABEL_1016;
            }

            if (a3 == 0x2338000003F0)
            {
              goto LABEL_823;
            }

            v34 = 1001;
          }

LABEL_807:
          v32 = v34 & 0xFFFF0000FFFFFFFFLL | 0x233B00000000;
          goto LABEL_808;
        }

        if (a3 <= 0x2345000002D4)
        {
          if (a3 > 0x233B000003FALL)
          {
            if (a3 == 0x233B000003FBLL)
            {
              goto LABEL_809;
            }

            v34 = 1023;
          }

          else
          {
            if (a3 == 0x233B000003F2)
            {
              goto LABEL_809;
            }

            v34 = 1011;
          }

          goto LABEL_807;
        }

        if (a3 <= 0x2345000002D6)
        {
          if (a3 != 0x2345000002D5)
          {
            v21 = 726;
            goto LABEL_834;
          }

LABEL_835:
          v13 = &unk_1F2055130;
          goto LABEL_1016;
        }

        if (a3 == 0x2345000002D7)
        {
          goto LABEL_835;
        }

        v21 = 728;
        goto LABEL_834;
      }

      if (a3 <= 0x2B04000004BFLL)
      {
        if (a3 <= 0x2346000002D8)
        {
          if (a3 <= 0x2346000002D4)
          {
            if (a3 <= 0x2345000002DALL)
            {
              if (a3 != 0x2345000002D9)
              {
                v21 = 730;
                goto LABEL_834;
              }

              goto LABEL_835;
            }

            if (a3 == 0x2345000002DBLL)
            {
              goto LABEL_835;
            }

            v21 = 732;
LABEL_834:
            if (a3 != (v21 & 0xFFFF0000FFFFFFFFLL | 0x234500000000))
            {
              goto LABEL_1017;
            }

            goto LABEL_835;
          }

          if (a3 <= 0x2346000002D6)
          {
            if (a3 != 0x2346000002D5)
            {
              v33 = 726;
              goto LABEL_801;
            }

LABEL_802:
            v13 = &unk_1F2055A90;
            goto LABEL_1016;
          }

          if (a3 == 0x2346000002D7)
          {
            goto LABEL_802;
          }

          v33 = 728;
          goto LABEL_801;
        }

        if (a3 <= 0x234C000000C8)
        {
          if (a3 <= 0x2346000002DALL)
          {
            if (a3 != 0x2346000002D9)
            {
              v33 = 730;
              goto LABEL_801;
            }

            goto LABEL_802;
          }

          if (a3 == 0x2346000002DBLL)
          {
            goto LABEL_802;
          }

          v33 = 732;
LABEL_801:
          if (a3 != (v33 & 0xFFFF0000FFFFFFFFLL | 0x234600000000))
          {
            goto LABEL_1017;
          }

          goto LABEL_802;
        }

        if (a3 <= 0x2AFB000004B7)
        {
          if (a3 == 0x234C000000C9)
          {
            goto LABEL_1016;
          }

          v16 = 0x234D000000C9;
          goto LABEL_876;
        }

        if (a3 != 0x2AFB000004B8)
        {
          v27 = 0x2B04000004B9;
LABEL_828:
          if (a3 != v27)
          {
            goto LABEL_1017;
          }

          goto LABEL_829;
        }

LABEL_790:
        v13 = &unk_1F20557A8;
        goto LABEL_1016;
      }

      if (a3 <= 0x2B0900000070)
      {
        if (a3 <= 0x2B06000004BFLL)
        {
          if (a3 > 0x2B05000004BFLL)
          {
            if (a3 != 0x2B05000004C0)
            {
              v27 = 0x2B06000004B9;
              goto LABEL_828;
            }
          }

          else if (a3 != 0x2B04000004C0)
          {
            v27 = 0x2B05000004B9;
            goto LABEL_828;
          }

LABEL_829:
          v13 = &unk_1F20553D0;
          goto LABEL_1016;
        }

        if (a3 <= 0x2B0900000060)
        {
          if (a3 == 0x2B06000004C0)
          {
            goto LABEL_829;
          }

          v45 = 93;
          goto LABEL_815;
        }

        if (a3 != 0x2B0900000061)
        {
          v45 = 111;
LABEL_815:
          v57 = v45 & 0xFFFF0000FFFFFFFFLL | 0x2B0900000000;
          goto LABEL_894;
        }

LABEL_895:
        v13 = &unk_1F2055A30;
        goto LABEL_1016;
      }

      if (a3 <= 0x4283FFFFFFFFLL)
      {
        if (a3 <= 0x2B12000004BFLL)
        {
          if (a3 != 0x2B0900000071)
          {
            v27 = 0x2B12000004B9;
            goto LABEL_828;
          }

          goto LABEL_895;
        }

        if (a3 == 0x2B12000004C0)
        {
          goto LABEL_829;
        }

        v23 = 0x2B130000006DLL;
LABEL_789:
        if (a3 != v23)
        {
          goto LABEL_1017;
        }

        goto LABEL_790;
      }

      if (a3 <= 0x42B400000001)
      {
        if (a3 == 0x428400000000)
        {
          v13 = &unk_1F2055328;
          goto LABEL_1016;
        }

        v47 = 1;
        goto LABEL_840;
      }

      if (a3 != 0x42B400000002)
      {
        v47 = 4;
LABEL_840:
        v39 = v47 & 0xFFFF0000FFFFFFFFLL | 0x42B400000000;
LABEL_841:
        if (a3 != v39)
        {
          goto LABEL_1017;
        }
      }

LABEL_842:
      v13 = &unk_1F20554D8;
      goto LABEL_1016;
    }

    if (a3 > 0xBB9000000C8)
    {
      if (a3 <= 0x177300000086)
      {
        if (a3 <= 0xBB9000004BALL)
        {
          if (a3 <= 0xBB900000321)
          {
            if (a3 > 0xBB900000130)
            {
              if (a3 > 0xBB900000191)
              {
                if (a3 == 0xBB900000192)
                {
LABEL_774:
                  v13 = &unk_1F20559A0;
                  goto LABEL_1016;
                }

                if (a3 != 0xBB900000193)
                {
                  goto LABEL_1017;
                }

LABEL_995:
                v13 = &unk_1F2055988;
                goto LABEL_1016;
              }

              if (a3 != 0xBB900000131)
              {
                if (a3 != 0xBB900000191)
                {
                  goto LABEL_1017;
                }

                goto LABEL_999;
              }

              if ([v10 mapSettingsLocationPrecisionType] == 2)
              {
                [v12 addObject:&unk_1F20559E8];
              }

              [v12 addObject:&unk_1F2055A00];
              if (![v10 mapSettingsEBike])
              {
                v13 = &unk_1F20559B8;
                goto LABEL_1016;
              }

              v15 = &unk_1F2055A18;
LABEL_975:
              [v12 addObject:v15];
              v13 = &unk_1F20559B8;
              goto LABEL_1016;
            }

            if (a3 > 0xBB90000012DLL)
            {
              if (a3 == 0xBB90000012ELL)
              {
                if ([v10 mapSettingsLocationPrecisionType] == 2)
                {
                  [v12 addObject:&unk_1F20559E8];
                }

                v15 = &unk_1F20559A0;
              }

              else
              {
                if (a3 != 0xBB90000012FLL)
                {
                  goto LABEL_1017;
                }

                if ([v10 mapSettingsLocationPrecisionType] == 2)
                {
                  [v12 addObject:&unk_1F20559E8];
                }

                v15 = &unk_1F2055988;
              }

              goto LABEL_975;
            }

            if (a3 != 0xBB9000000C9)
            {
              if (a3 != 0xBB90000012DLL)
              {
                goto LABEL_1017;
              }

              if ([v10 mapSettingsLocationPrecisionType] == 2)
              {
                [v12 addObject:&unk_1F20559E8];
              }

              v15 = &unk_1F2055970;
              goto LABEL_975;
            }

            [v11 addObject:&unk_1F20559B8];
            if (a5 != 1)
            {
              goto LABEL_1017;
            }

LABEL_966:
            v13 = &unk_1F20559D0;
            goto LABEL_1016;
          }

          if (a3 > 0xBB9000003EDLL)
          {
            if (a3 > 0xBB9000003EFLL)
            {
              if (a3 == 0xBB9000003F0)
              {
                goto LABEL_823;
              }

              v42 = 1010;
            }

            else
            {
              if (a3 == 0xBB9000003EELL)
              {
                goto LABEL_823;
              }

              v42 = 1007;
            }
          }

          else
          {
            if (a3 <= 0xBB9000003E8)
            {
              if (a3 != 0xBB900000322 && a3 != 0xBB900000323)
              {
                goto LABEL_1017;
              }

              goto LABEL_966;
            }

            if (a3 == 0xBB9000003E9)
            {
              goto LABEL_823;
            }

            v42 = 1005;
          }

          v56 = v42 & 0xFFFF0000FFFFFFFFLL | 0xBB900000000;
          goto LABEL_822;
        }

        if (a3 <= 0x1389000004B7)
        {
          if (a3 <= 0xBB9000004D4)
          {
            if (a3 > 0xBB9000004C4)
            {
              if (a3 == 0xBB9000004C5)
              {
                goto LABEL_895;
              }

              v24 = 1222;
            }

            else
            {
              if (a3 == 0xBB9000004BBLL)
              {
                goto LABEL_895;
              }

              v24 = 1220;
            }

LABEL_893:
            v57 = v24 & 0xFFFF0000FFFFFFFFLL | 0xBB900000000;
LABEL_894:
            if (a3 != v57)
            {
              goto LABEL_1017;
            }

            goto LABEL_895;
          }

          if (a3 <= 0xFA1000004B7)
          {
            if (a3 == 0xBB9000004D5)
            {
              goto LABEL_895;
            }

            v16 = 0xBF7000000C9;
LABEL_876:
            if (a3 != v16)
            {
              goto LABEL_1017;
            }

LABEL_1016:
            [v12 addObject:v13];
            goto LABEL_1017;
          }

          if (a3 != 0xFA1000004B8)
          {
            if (a3 != 0xFA600000284)
            {
              goto LABEL_1017;
            }

            goto LABEL_952;
          }

LABEL_704:
          v13 = &unk_1F2055160;
          goto LABEL_1016;
        }

        if (a3 <= 0x17730000001DLL)
        {
          if (a3 <= 0x1392000000C8)
          {
            if (a3 != 0x1389000004B8)
            {
              v16 = 0x1391000000C9;
              goto LABEL_876;
            }

            goto LABEL_704;
          }

          if (a3 == 0x1392000000C9)
          {
            goto LABEL_1016;
          }

          v40 = 0x177300000000;
          goto LABEL_686;
        }

        if (a3 <= 0x177300000082)
        {
          if (a3 != 0x17730000001ELL)
          {
            v20 = 130;
            goto LABEL_714;
          }

LABEL_675:
          v13 = &unk_1F2055370;
          goto LABEL_1016;
        }

        if (a3 != 0x177300000083)
        {
          v20 = 132;
LABEL_714:
          if (a3 != (v20 & 0xFFFF0000FFFFFFFFLL | 0x177300000000))
          {
            goto LABEL_1017;
          }
        }

LABEL_715:
        v13 = &unk_1F2055340;
        goto LABEL_1016;
      }

      if (a3 <= 0x1777000004B8)
      {
        if (a3 > 0x177300000321)
        {
          if (a3 > 0x1775000004B8)
          {
            if (a3 > 0x1776000000C8)
            {
              if (a3 == 0x1776000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x1777000000C9;
              goto LABEL_876;
            }

            if (a3 != 0x1775000004B9)
            {
              if (a3 != 0x177600000065)
              {
                goto LABEL_1017;
              }

              goto LABEL_781;
            }

            goto LABEL_782;
          }

          if (a3 > 0x17740000001DLL)
          {
            if (a3 == 0x17740000001ELL)
            {
              goto LABEL_1016;
            }

            v16 = 0x1774000000C9;
            goto LABEL_876;
          }

          if (a3 != 0x177300000322)
          {
            if (a3 == 0x177300000323)
            {
              [v11 addObject:&unk_1F2055340];
              if ([v10 mapsInOfflineMode])
              {
                [v12 addObject:&unk_1F2055358];
              }

              if (a5 == 1)
              {
                v13 = &unk_1F20553A0;
                goto LABEL_1016;
              }
            }

            goto LABEL_1017;
          }
        }

        else
        {
          if (a3 <= 0x17730000025ELL)
          {
            if (a3 <= 0x1773000000C8)
            {
              if (a3 != 0x177300000087)
              {
                v20 = 137;
                goto LABEL_714;
              }

              goto LABEL_715;
            }

            if (a3 != 0x1773000000C9)
            {
              if (a3 != 0x1773000000CBLL)
              {
                goto LABEL_1017;
              }

              [v11 addObject:&unk_1F2055340];
              if ([v10 mapsInOfflineMode])
              {
                [v12 addObject:&unk_1F2055358];
              }

              goto LABEL_675;
            }

            [v11 addObject:&unk_1F2055340];
            if ([v10 mapsInOfflineMode])
            {
              [v12 addObject:&unk_1F2055358];
            }

            [v12 addObject:&unk_1F2055370];
            v82 = a5 - 1;
            if ((a5 - 1) < 3)
            {
              v83 = &unk_1E7953BC8;
              goto LABEL_980;
            }

            goto LABEL_1017;
          }

          if (a3 > 0x1773000002BCLL)
          {
            if (a3 == 0x1773000002BDLL)
            {
              [v11 addObject:&unk_1F2055340];
              if ([v10 mapsInOfflineMode])
              {
                [v12 addObject:&unk_1F2055358];
              }

              if (a5 == 2)
              {
                v13 = &unk_1F2055388;
                goto LABEL_1016;
              }
            }

            else if (a3 == 0x1773000002BELL)
            {
              [v11 addObject:&unk_1F2055340];
              if ([v10 mapsInOfflineMode])
              {
                [v12 addObject:&unk_1F2055358];
              }

              if (a5 == 3)
              {
                v13 = &unk_1F20553B8;
                goto LABEL_1016;
              }
            }

            goto LABEL_1017;
          }

          if (a3 != 0x17730000025FLL)
          {
            v40 = 0x17730000028ALL;
LABEL_686:
            if (a3 != v40)
            {
              goto LABEL_1017;
            }
          }
        }

        [v11 addObject:&unk_1F2055340];
        if (([v10 mapsInOfflineMode] & 1) == 0)
        {
          goto LABEL_1017;
        }

        v13 = &unk_1F2055358;
        goto LABEL_1016;
      }

      if (a3 > 0x177A000000CALL)
      {
        if (a3 > 0x177D00000092)
        {
          if (a3 <= 0x177D000000C8)
          {
            if (a3 == 0x177D00000093)
            {
              v13 = &unk_1F20557C0;
            }

            else
            {
              if (a3 != 0x177D00000099)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055808;
            }

            goto LABEL_1016;
          }

          if (a3 != 0x177D000000C9 && a3 != 0x177D000000CBLL)
          {
            goto LABEL_1017;
          }
        }

        else
        {
          if (a3 <= 0x177C000000C8)
          {
            if (a3 == 0x177A000000CBLL)
            {
              goto LABEL_1016;
            }

            v16 = 0x177B000000C9;
            goto LABEL_876;
          }

          if (a3 == 0x177C000000C9)
          {
            goto LABEL_1016;
          }

          if (a3 != 0x177D0000001ELL)
          {
            goto LABEL_1017;
          }

          [v11 addObject:&unk_1F2054FC8];
          v11 = v12;
        }

        [v11 addObject:&unk_1F2054FC8];
        goto LABEL_842;
      }

      if (a3 <= 0x1779000000CALL)
      {
        if (a3 > 0x17790000001DLL)
        {
          if (a3 == 0x17790000001ELL)
          {
            goto LABEL_1016;
          }

          v16 = 0x1779000000C9;
          goto LABEL_876;
        }

        if (a3 != 0x1777000004B9)
        {
          v16 = 0x1778000000C9;
          goto LABEL_876;
        }

        goto LABEL_782;
      }

      if (a3 > 0x177A0000001DLL)
      {
        if (a3 == 0x177A0000001ELL)
        {
          goto LABEL_1016;
        }

        v16 = 0x177A000000C9;
        goto LABEL_876;
      }

      if (a3 == 0x1779000000CBLL)
      {
        goto LABEL_1016;
      }

      v41 = 0x1779000004B9;
LABEL_568:
      if (a3 != v41)
      {
        goto LABEL_1017;
      }

      goto LABEL_782;
    }

    if (a3 > 0x818000000C8)
    {
      if (a3 <= 0x8330000006CLL)
      {
        if (a3 <= 0x822000000FBLL)
        {
          if (a3 <= 0x819000000C8)
          {
            if (a3 <= 0x818000000FFLL)
            {
              if (a3 != 0x818000000C9)
              {
                v18 = 251;
LABEL_746:
                if (a3 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x81800000000))
                {
                  goto LABEL_1017;
                }

                goto LABEL_878;
              }

              v84 = &unk_1F2055100;
LABEL_1009:
              [v11 addObject:v84];
              v13 = &unk_1F2054FC8;
              goto LABEL_1016;
            }

            if (a3 == 0x81800000100)
            {
LABEL_878:
              v13 = &unk_1F2055100;
              goto LABEL_1016;
            }

            v49 = 30;
LABEL_875:
            v16 = v49 & 0xFFFF0000FFFFFFFFLL | 0x81900000000;
            goto LABEL_876;
          }

          if (a3 <= 0x82200000007)
          {
            if (a3 == 0x819000000C9)
            {
              goto LABEL_1016;
            }

            v49 = 203;
            goto LABEL_875;
          }

          if (a3 != 0x82200000008 && a3 != 0x822000000FBLL)
          {
            goto LABEL_1017;
          }

LABEL_890:
          v13 = &unk_1F2055850;
          goto LABEL_1016;
        }

        if (a3 <= 0x82E000000C8)
        {
          if (a3 > 0x824000000C8)
          {
            if (a3 != 0x824000000C9)
            {
              if (a3 != 0x82B00000103)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055760;
            }

            goto LABEL_1016;
          }

          if (a3 != 0x822000000FCLL)
          {
            v16 = 0x823000000C9;
            goto LABEL_876;
          }

          goto LABEL_890;
        }

        if (a3 > 0x830000000FALL)
        {
          if (a3 == 0x830000000FBLL)
          {
LABEL_899:
            v13 = &unk_1F2055868;
            goto LABEL_1016;
          }

          v50 = 259;
        }

        else
        {
          if (a3 == 0x82E000000C9)
          {
            goto LABEL_1016;
          }

          v50 = 8;
        }

        if (a3 != (v50 & 0xFFFF0000FFFFFFFFLL | 0x83000000000))
        {
          goto LABEL_1017;
        }

        goto LABEL_899;
      }

      if (a3 <= 0xBB900000060)
      {
        if (a3 <= 0x8700000029CLL)
        {
          if (a3 > 0x8630000001DLL)
          {
            if (a3 != 0x8630000001ELL)
            {
              if (a3 != 0x86D0000029DLL)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055088;
            }

            goto LABEL_1016;
          }

          if (a3 != 0x8330000006DLL)
          {
            v16 = 0x833000000C9;
            goto LABEL_876;
          }

          goto LABEL_790;
        }

        if (a3 > 0x893FFFFFFFFLL)
        {
          if (a3 == 0x89400000000)
          {
            v13 = &unk_1F20550B8;
            goto LABEL_1016;
          }

          v24 = 93;
          goto LABEL_893;
        }

        if (a3 != 0x8700000029DLL)
        {
          if (a3 != 0x8710000029DLL)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055D00;
          goto LABEL_1016;
        }

LABEL_857:
        v13 = &unk_1F2055040;
        goto LABEL_1016;
      }

      if (a3 <= 0xBB900000082)
      {
        if (a3 <= 0xBB900000070)
        {
          if (a3 == 0xBB900000061)
          {
            goto LABEL_895;
          }

          v24 = 111;
          goto LABEL_893;
        }

        if (a3 == 0xBB900000071)
        {
          goto LABEL_895;
        }

        if (a3 != 0xBB900000082)
        {
          goto LABEL_1017;
        }

LABEL_887:
        v13 = &unk_1F2055940;
        goto LABEL_1016;
      }

      if (a3 <= 0xBB900000086)
      {
        if (a3 != 0xBB900000083)
        {
          if (a3 != 0xBB900000084)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055928;
          goto LABEL_1016;
        }

        goto LABEL_887;
      }

      if (a3 == 0xBB900000087)
      {
LABEL_903:
        if (v8)
        {
          v13 = &unk_1F2055928;
        }

        else
        {
          v13 = &unk_1F2055940;
        }

        goto LABEL_1016;
      }

      v55 = 0xBB900000089;
LABEL_902:
      if (a3 != v55)
      {
        goto LABEL_1017;
      }

      goto LABEL_903;
    }

    if (a3 > 0x80C0000001DLL)
    {
      if (a3 <= 0x813000000C8)
      {
        if (a3 <= 0x81300000007)
        {
          if (a3 > 0x80C000000CALL)
          {
            if (a3 != 0x80C000000CBLL)
            {
              if (a3 != 0x81000000008)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055C58;
            }

            goto LABEL_1016;
          }

          if (a3 == 0x80C0000001ELL)
          {
            goto LABEL_1016;
          }

          v16 = 0x80C000000C9;
          goto LABEL_876;
        }

        if (a3 <= 0x8130000006CLL)
        {
          if (a3 != 0x81300000008)
          {
            v43 = 11;
            goto LABEL_742;
          }

LABEL_743:
          v13 = &unk_1F2055898;
          goto LABEL_1016;
        }

        if (a3 == 0x8130000006DLL)
        {
          goto LABEL_743;
        }

        v43 = 119;
LABEL_742:
        if (a3 != (v43 & 0xFFFF0000FFFFFFFFLL | 0x81300000000))
        {
          goto LABEL_1017;
        }

        goto LABEL_743;
      }

      if (a3 > 0x814000000FBLL)
      {
        if (a3 <= 0x81400000102)
        {
          if (a3 != 0x814000000FCLL && a3 != 0x81400000100)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055B20;
          goto LABEL_1016;
        }

        if (a3 == 0x81400000103)
        {
          v13 = &unk_1F2055B38;
          goto LABEL_1016;
        }

        v18 = 8;
        goto LABEL_746;
      }

      if (a3 > 0x813000000FFLL)
      {
        if (a3 == 0x81300000100)
        {
          goto LABEL_743;
        }

        v43 = 1201;
        goto LABEL_742;
      }

      if (a3 == 0x813000000C9)
      {
        v84 = &unk_1F2055898;
        goto LABEL_1009;
      }

      if (a3 != 0x813000000FBLL)
      {
        goto LABEL_1017;
      }

      [v11 addObject:&unk_1F2055898];
LABEL_573:
      v13 = &unk_1F20555C8;
      goto LABEL_1016;
    }

    if (a3 > 0x801FFFFFFFFLL)
    {
      if (a3 > 0x809000000FDLL)
      {
        if (a3 > 0x80B000000C8)
        {
          if (a3 == 0x80B000000C9)
          {
            goto LABEL_1016;
          }

          v37 = 203;
        }

        else
        {
          if (a3 == 0x809000000FELL)
          {
            v13 = &unk_1F2055880;
            goto LABEL_1016;
          }

          v37 = 30;
        }

        v16 = v37 & 0xFFFF0000FFFFFFFFLL | 0x80B00000000;
        goto LABEL_876;
      }

      if (a3 > 0x803FFFFFFFFLL)
      {
        if (a3 != 0x80400000000)
        {
          v39 = 0x80900000008;
          goto LABEL_841;
        }
      }

      else if (a3 != 0x80200000000)
      {
        v30 = 0x80300000000;
        goto LABEL_733;
      }

LABEL_734:
      v13 = &unk_1F20550E8;
      goto LABEL_1016;
    }

    if (a3 > 0x7FF000003ECLL)
    {
      if (a3 <= 0x801000000FDLL)
      {
        if (a3 != 0x7FF000003EDLL)
        {
          v35 = 0x80100000008;
          goto LABEL_724;
        }

LABEL_591:
        v13 = &unk_1F2055550;
        goto LABEL_1016;
      }

      if (a3 != 0x801000000FELL)
      {
        v52 = 0x801000003EDLL;
        goto LABEL_590;
      }

LABEL_725:
      v13 = &unk_1F2055B80;
      goto LABEL_1016;
    }

    if (a3 == 0x7FE000003EDLL)
    {
      goto LABEL_591;
    }

    if (a3 == 0x7FF00000008)
    {
      goto LABEL_725;
    }

    v35 = 0x7FF000000FELL;
LABEL_724:
    if (a3 != v35)
    {
      goto LABEL_1017;
    }

    goto LABEL_725;
  }

  if (a3 > 0x3EC000001F4)
  {
    if (a3 <= 0x418000001F8)
    {
      if (a3 <= 0x413000001F8)
      {
        if (a3 > 0x411000001F4)
        {
          if (a3 <= 0x412000001F6)
          {
            if (a3 > 0x411000001F8 && a3 <= 0x412000001F4 && a3 != 0x411000001F9 && a3 != 0x41200000000)
            {
              goto LABEL_1017;
            }

            goto LABEL_859;
          }

          if (a3 > 0x413000001F4 || a3 <= 0x412000001F9)
          {
            goto LABEL_859;
          }

          if (a3 != 0x41300000000)
          {
            goto LABEL_1017;
          }

          goto LABEL_869;
        }

        if (a3 <= 0x3FC000004B7)
        {
          if (a3 <= 0x3EC000001F7)
          {
            goto LABEL_859;
          }

          if (a3 <= 0x3F2000004B7)
          {
            if (a3 != 0x3EC000001F8 && a3 != 0x3EC000001F9)
            {
              goto LABEL_1017;
            }

            goto LABEL_859;
          }

          if (a3 == 0x3F2000004B8)
          {
            goto LABEL_704;
          }

          v36 = 0x3F3000004B8;
        }

        else
        {
          if (a3 <= 0x408000000C8)
          {
            if (a3 <= 0x406000000C8)
            {
              if (a3 != 0x3FC000004B8 && a3 != 0x40600000050)
              {
                goto LABEL_1017;
              }

              goto LABEL_704;
            }

            if (a3 == 0x406000000C9)
            {
              goto LABEL_1016;
            }

            v41 = 0x406000004B9;
            goto LABEL_568;
          }

          if (a3 > 0x410000004B7)
          {
            if (a3 == 0x410000004B8)
            {
              goto LABEL_704;
            }

            if (a3 != 0x41100000000)
            {
              goto LABEL_1017;
            }

            goto LABEL_859;
          }

          if (a3 == 0x408000000C9)
          {
            goto LABEL_1016;
          }

          v36 = 0x40A000004B8;
        }
      }

      else
      {
        if (a3 > 0x416000001F5)
        {
          if (a3 > 0x417000001F6)
          {
            if (a3 <= 0x418000001F4)
            {
              if (a3 <= 0x417000001F9)
              {
                goto LABEL_859;
              }

              if (a3 != 0x41800000000)
              {
                goto LABEL_1017;
              }
            }
          }

          else
          {
            if (a3 > 0x416000004B7)
            {
              if (a3 <= 0x417000001F4)
              {
                if (a3 == 0x416000004B8)
                {
                  goto LABEL_704;
                }

                if (a3 != 0x41700000000)
                {
                  goto LABEL_1017;
                }
              }

              goto LABEL_859;
            }

            if (a3 > 0x416000001F9)
            {
              goto LABEL_1017;
            }
          }

          goto LABEL_869;
        }

        if (a3 <= 0x415000001F4)
        {
          if (a3 > 0x414000001F6)
          {
            if (a3 > 0x414000001F9)
            {
              if (a3 != 0x41500000000)
              {
                goto LABEL_1017;
              }

              goto LABEL_859;
            }
          }

          else if (a3 <= 0x414000001F4)
          {
            if (a3 == 0x413000001F9)
            {
              goto LABEL_859;
            }

            if (a3 != 0x41400000000)
            {
              goto LABEL_1017;
            }
          }

          goto LABEL_869;
        }

        if (a3 <= 0x415000001F8)
        {
          goto LABEL_859;
        }

        if (a3 > 0x415FFFFFFFFLL)
        {
          if (a3 != 0x41600000000 && a3 != 0x416000001F5)
          {
            goto LABEL_1017;
          }

          goto LABEL_869;
        }

        if (a3 == 0x415000001F9)
        {
          goto LABEL_859;
        }

        v36 = 0x415000004B8;
      }

      if (a3 != v36)
      {
        goto LABEL_1017;
      }

      goto LABEL_704;
    }

    if (a3 <= 0x7D700000322)
    {
      if (a3 <= 0x41F000000C8)
      {
        if (a3 <= 0x41A000001F4)
        {
          if (a3 > 0x419000001F6)
          {
            if (a3 <= 0x419000001F9)
            {
              goto LABEL_859;
            }

            if (a3 != 0x41A00000000)
            {
              goto LABEL_1017;
            }
          }

          else
          {
            if (a3 > 0x419000001F4)
            {
              goto LABEL_859;
            }

            if (a3 != 0x418000001F9)
            {
              if (a3 != 0x41900000000)
              {
                goto LABEL_1017;
              }

              goto LABEL_859;
            }
          }

          goto LABEL_869;
        }

        if (a3 <= 0x41A000001F8)
        {
          goto LABEL_869;
        }

        if (a3 > 0x41D000001F5)
        {
          if (a3 != 0x41D000001F6)
          {
            if (a3 != 0x41F00000008)
            {
              goto LABEL_1017;
            }

            goto LABEL_953;
          }
        }

        else
        {
          if (a3 == 0x41A000001F9)
          {
            goto LABEL_869;
          }

          if (a3 != 0x41D000001F5)
          {
            goto LABEL_1017;
          }
        }

LABEL_952:
        if ([v10 placeCardPlaceCardType] != 12)
        {
          goto LABEL_1017;
        }

LABEL_953:
        v13 = &unk_1F20554A8;
        goto LABEL_1016;
      }

      if (a3 <= 0x7D700000062)
      {
        if (a3 <= 0x7D4000003F1)
        {
          if (a3 <= 0x7D4000000C8)
          {
            if (a3 == 0x41F000000C9)
            {
              goto LABEL_1016;
            }

            v23 = 0x7D10000006DLL;
            goto LABEL_789;
          }

          if (a3 == 0x7D4000000C9)
          {
            [v11 addObject:&unk_1F2054FC8];
            goto LABEL_952;
          }

          if (a3 != 0x7D4000003F1)
          {
            goto LABEL_1017;
          }

LABEL_613:
          [v12 addObject:&unk_1F20553E8];
          v13 = &unk_1F2055B08;
          goto LABEL_1016;
        }

        if (a3 <= 0x7D70000000ALL)
        {
          if (a3 != 0x7D4000003F2)
          {
            if (a3 != 0x7D4000003FFLL)
            {
              goto LABEL_1017;
            }

            goto LABEL_809;
          }

          goto LABEL_613;
        }

        if (a3 != 0x7D70000000BLL)
        {
          if (a3 != 0x7D70000003BLL)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055C10;
          goto LABEL_1016;
        }

LABEL_639:
        [v11 addObject:&unk_1F2055BB0];
        if (([v10 mapsInOfflineMode] & 1) == 0)
        {
          goto LABEL_1017;
        }

        v13 = &unk_1F2055BC8;
        goto LABEL_1016;
      }

      if (a3 <= 0x7D70000025ELL)
      {
        if (a3 > 0x7D700000065)
        {
          if (a3 != 0x7D700000066)
          {
            v23 = 0x7D70000006DLL;
            goto LABEL_789;
          }
        }

        else
        {
          if (a3 == 0x7D700000063)
          {
            goto LABEL_790;
          }

          if (a3 != 0x7D700000065)
          {
            goto LABEL_1017;
          }
        }

        goto LABEL_639;
      }

      if (a3 <= 0x7D7000002BDLL)
      {
        if (a3 == 0x7D70000025FLL)
        {
          v13 = &unk_1F2055BE0;
        }

        else
        {
          if (a3 != 0x7D7000002BDLL)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055BF8;
        }

        goto LABEL_1016;
      }

      if (a3 == 0x7D7000002BELL)
      {
        v13 = &unk_1F2055C40;
        goto LABEL_1016;
      }

      v19 = 802;
      goto LABEL_660;
    }

    if (a3 <= 0x7DF00000321)
    {
      if (a3 <= 0x7DE0000003ALL)
      {
        if (a3 > 0x7D7000003F2)
        {
          if (a3 > 0x7D7000004B6)
          {
            if (a3 != 0x7D7000004B7)
            {
              if (a3 != 0x7DE0000000BLL)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055CB8;
              goto LABEL_1016;
            }

            goto LABEL_790;
          }

          if (a3 == 0x7D7000003F3)
          {
            goto LABEL_591;
          }

          if (a3 != 0x7D7000003FFLL)
          {
            goto LABEL_1017;
          }

          [v11 addObject:&unk_1F2055550];
          goto LABEL_613;
        }

        if (a3 > 0x7D7000003EALL)
        {
          if (a3 == 0x7D7000003EBLL)
          {
            goto LABEL_591;
          }

          v52 = 0x7D7000003F1;
LABEL_590:
          if (a3 != v52)
          {
            goto LABEL_1017;
          }

          goto LABEL_591;
        }

        if (a3 == 0x7D700000323)
        {
LABEL_661:
          v13 = &unk_1F2055C28;
          goto LABEL_1016;
        }

        v19 = 804;
LABEL_660:
        if (a3 != (v19 & 0xFFFF0000FFFFFFFFLL | 0x7D700000000))
        {
          goto LABEL_1017;
        }

        goto LABEL_661;
      }

      if (a3 > 0x7DF00000064)
      {
        if (a3 > 0x7DF000002BCLL)
        {
          if (a3 == 0x7DF000002BDLL)
          {
            if (([a1 permittedToCountAC] & 1) == 0)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F20558E0;
          }

          else
          {
            if (a3 != 0x7DF000002BELL || ([a1 permittedToCountAC] & 1) == 0)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055910;
          }

          goto LABEL_1016;
        }

        if (a3 == 0x7DF00000065 || a3 == 0x7DF00000066)
        {
          [v11 addObject:&unk_1F20558B0];
          if ([v10 mapsInOfflineMode])
          {
            v13 = &unk_1F20558C8;
            goto LABEL_1016;
          }
        }

        goto LABEL_1017;
      }

      if (a3 <= 0x7DE000003FELL)
      {
        if (a3 == 0x7DE0000003BLL)
        {
          v13 = &unk_1F2055CA0;
        }

        else
        {
          if (a3 != 0x7DE0000025FLL)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055C88;
        }

        goto LABEL_1016;
      }

      if (a3 == 0x7DE000003FFLL)
      {
        goto LABEL_613;
      }

      v54 = 99;
LABEL_610:
      v53 = v54 & 0xFFFF0000FFFFFFFFLL | 0x7DF00000000;
      goto LABEL_611;
    }

    if (a3 > 0x7EE000002E5)
    {
      if (a3 > 0x7F700000007)
      {
        if (a3 <= 0x7FE00000007)
        {
          if (a3 == 0x7F700000008)
          {
            v13 = &unk_1F2055CD0;
            goto LABEL_1016;
          }

          v39 = 0x7F800000008;
          goto LABEL_841;
        }

        if (a3 == 0x7FE00000008)
        {
          goto LABEL_725;
        }

        v35 = 0x7FE000000FELL;
        goto LABEL_724;
      }

      if (a3 <= 0x7EF0000000ALL)
      {
        if (a3 == 0x7EE000002E6)
        {
          v13 = &unk_1F2055AA8;
          goto LABEL_1016;
        }

        v23 = 0x7EE000004B3;
        goto LABEL_789;
      }

      if (a3 != 0x7EF0000000BLL)
      {
        v39 = 0x7F500000008;
        goto LABEL_841;
      }

      v51 = @"DOWNLOAD_OFFLINE_MAP";
      goto LABEL_957;
    }

    if (a3 > 0x7E0000000C8)
    {
      if (a3 > 0x7EE0000000CLL)
      {
        if (a3 == 0x7EE0000000DLL)
        {
          [v11 addObject:&unk_1F2055AC0];
          [v12 addObject:&unk_1F2055AD8];
          if (([v10 mapsInOfflineMode] & 1) == 0)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055AF0;
        }

        else
        {
          if (a3 != 0x7EE0000006DLL)
          {
            goto LABEL_1017;
          }

          [v11 addObject:&unk_1F20557A8];
          v13 = &unk_1F20557A8;
        }
      }

      else if (a3 != 0x7E0000000C9)
      {
        if (a3 != 0x7E90000000DLL)
        {
          goto LABEL_1017;
        }

        v13 = &unk_1F2055C70;
      }

      goto LABEL_1016;
    }

    if (a3 > 0x7DF00000324)
    {
      if (a3 != 0x7DF00000325)
      {
        v54 = 1207;
        goto LABEL_610;
      }
    }

    else if (a3 != 0x7DF00000322 && a3 != 0x7DF00000323)
    {
      goto LABEL_1017;
    }

    v13 = &unk_1F20558F8;
    goto LABEL_1016;
  }

  if (a3 > 0x1730000012DLL)
  {
    if (a3 <= 0x1EFFFFFFFFFLL)
    {
      if (a3 <= 0x196000004B7)
      {
        if (a3 > 0x17D000000C8)
        {
          if (a3 > 0x18A000000C8)
          {
            if (a3 > 0x194000001F5)
            {
              if (a3 != 0x194000001F6 && a3 != 0x195000000C9)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055610;
              goto LABEL_1016;
            }

            if (a3 == 0x18A000000C9)
            {
              goto LABEL_625;
            }

            v38 = 0x18A000000CBLL;
            goto LABEL_624;
          }

          if (a3 > 0x17D000002BDLL)
          {
            if (a3 == 0x17D000002BELL)
            {
              goto LABEL_625;
            }

            v38 = 0x17E00000051;
LABEL_624:
            if (a3 != v38)
            {
              goto LABEL_1017;
            }

            goto LABEL_625;
          }

          if (a3 == 0x17D000000C9)
          {
            goto LABEL_625;
          }

          v31 = 203;
        }

        else if (a3 > 0x17D0000002DLL)
        {
          if (a3 > 0x17D00000055)
          {
            if (a3 == 0x17D00000056)
            {
              goto LABEL_625;
            }

            v31 = 90;
          }

          else
          {
            if (a3 == 0x17D0000002ELL)
            {
              goto LABEL_625;
            }

            v31 = 84;
          }
        }

        else
        {
          if (a3 <= 0x17300000130)
          {
            if (a3 != 0x1730000012ELL)
            {
              v14 = 303;
LABEL_563:
              v38 = v14 & 0xFFFF0000FFFFFFFFLL | 0x17300000000;
              goto LABEL_624;
            }

            goto LABEL_625;
          }

          if (a3 == 0x17300000131)
          {
            goto LABEL_625;
          }

          v31 = 30;
        }

        v38 = v31 & 0xFFFF0000FFFFFFFFLL | 0x17D00000000;
        goto LABEL_624;
      }

      if (a3 <= 0x1A8000004B7)
      {
        if (a3 > 0x1A200000064)
        {
          if (a3 > 0x1A3000004B6)
          {
            if (a3 == 0x1A3000004B7)
            {
              goto LABEL_790;
            }

            v23 = 0x1A400000063;
            goto LABEL_789;
          }

          if (a3 == 0x1A200000065 || a3 == 0x1A200000066)
          {
            [v11 addObject:&unk_1F2055460];
            if ([v10 mapsInOfflineMode])
            {
              v13 = &unk_1F2055478;
              goto LABEL_1016;
            }
          }

          goto LABEL_1017;
        }

        if (a3 <= 0x19F0000006CLL)
        {
          if (a3 == 0x196000004B8)
          {
            goto LABEL_704;
          }

          v22 = 0x19C000004B9;
          goto LABEL_551;
        }

        if (a3 == 0x19F0000006DLL)
        {
          goto LABEL_790;
        }

        v53 = 0x1A00000006DLL;
LABEL_611:
        if (a3 != v53)
        {
          goto LABEL_1017;
        }

        goto LABEL_790;
      }

      if (a3 <= 0x1DE00000092)
      {
        if (a3 <= 0x1D500000083)
        {
          if (a3 != 0x1A8000004B8)
          {
            if (a3 != 0x1CF00000083)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055748;
            goto LABEL_1016;
          }

          goto LABEL_704;
        }

        if (a3 == 0x1D500000084)
        {
          v13 = &unk_1F2055010;
          goto LABEL_1016;
        }

        v55 = 0x1D600000088;
        goto LABEL_902;
      }

      if (a3 > 0x1ECFFFFFFFFLL)
      {
        if (a3 == 0x1ED00000000)
        {
          v13 = &unk_1F2055CE8;
        }

        else
        {
          if (a3 != 0x1EF00000000)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055418;
        }

        goto LABEL_1016;
      }

      if (a3 != 0x1DE00000093)
      {
        if (a3 != 0x1EC00000000)
        {
          goto LABEL_1017;
        }

        v13 = &unk_1F2055790;
        goto LABEL_1016;
      }

LABEL_630:
      v13 = &unk_1F2055B98;
      goto LABEL_1016;
    }

    if (a3 <= 0x3E9000001F7)
    {
      if (a3 <= 0x20300000092)
      {
        if (a3 > 0x1F400000091)
        {
          if (a3 <= 0x1F600000091)
          {
            if (a3 != 0x1F400000092 && a3 != 0x1F500000092)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055B50;
            goto LABEL_1016;
          }

          if (a3 != 0x1F600000092)
          {
            if (a3 != 0x1FB00000093)
            {
              goto LABEL_1017;
            }

            goto LABEL_630;
          }
        }

        else
        {
          if (a3 <= 0x1F1FFFFFFFFLL)
          {
            if (a3 == 0x1F000000000)
            {
              v13 = &unk_1F2055400;
            }

            else
            {
              if (a3 != 0x1F100000000)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055448;
            }

            goto LABEL_1016;
          }

          if (a3 == 0x1F200000000)
          {
            v13 = &unk_1F2055430;
            goto LABEL_1016;
          }

          if (a3 != 0x1F300000092)
          {
            goto LABEL_1017;
          }
        }

        v13 = &unk_1F2055148;
        goto LABEL_1016;
      }

      if (a3 <= 0x3E8FFFFFFFFLL)
      {
        if (a3 > 0x20E0000012CLL)
        {
          if (a3 == 0x20E0000012DLL)
          {
            v13 = &unk_1F20552F8;
          }

          else
          {
            if (a3 != 0x20F0000012DLL)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055310;
          }
        }

        else if (a3 == 0x20300000093)
        {
          v13 = &unk_1F2055D18;
        }

        else
        {
          if (a3 != 0x20300000099)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055D30;
        }

        goto LABEL_1016;
      }

      if (a3 <= 0x3E9000001F5 && a3 != 0x3E900000000 && a3 != 0x3E9000001F5)
      {
        goto LABEL_1017;
      }

LABEL_859:
      [v10 mapViewStyleZoomLevel];
      if (v58 < 12.0)
      {
        [v12 addObject:&unk_1F20554F0];
      }

      [v10 mapViewStyleZoomLevel];
      if (v59 >= 12.0)
      {
        v13 = &unk_1F2055508;
        goto LABEL_1016;
      }

      goto LABEL_1017;
    }

    if (a3 <= 0x3EA000001F8)
    {
      if (a3 <= 0x3EA000001F4)
      {
        if (a3 > 0x3E9000004B7)
        {
          if (a3 == 0x3E9000004B8)
          {
            goto LABEL_704;
          }

          if (a3 != 0x3EA00000000)
          {
            goto LABEL_1017;
          }
        }

        else if (a3 != 0x3E9000001F8 && a3 != 0x3E9000001F9)
        {
          goto LABEL_1017;
        }
      }

      goto LABEL_859;
    }

    if (a3 > 0x3EB000001F6)
    {
      if (a3 > 0x3EB000001F9)
      {
        if (a3 != 0x3EC00000000)
        {
          goto LABEL_1017;
        }

        goto LABEL_859;
      }
    }

    else if (a3 <= 0x3EB000001F4)
    {
      if (a3 == 0x3EA000001F9)
      {
        goto LABEL_859;
      }

      if (a3 != 0x3EB00000000)
      {
        goto LABEL_1017;
      }
    }

LABEL_869:
    [v10 mapViewStyleZoomLevel];
    if (v60 < 12.0)
    {
      [v12 addObject:&unk_1F20554F0];
    }

    [v10 mapViewStyleZoomLevel];
    if (v61 >= 12.0)
    {
      v13 = &unk_1F2055508;
      goto LABEL_1016;
    }

    goto LABEL_1017;
  }

  if (a3 > 0x67FFFFFFFFLL)
  {
    if (a3 <= 0xF50000006CLL)
    {
      if (a3 <= 0x7A00000191)
      {
        if (a3 > 0x7800000191)
        {
          if (a3 > 0x7900000191)
          {
            if (a3 != 0x7900000192)
            {
              v17 = 0x7A0000012ELL;
LABEL_855:
              if (a3 != v17)
              {
                goto LABEL_1017;
              }

              goto LABEL_856;
            }
          }

          else
          {
            if (a3 == 0x7800000192)
            {
              goto LABEL_856;
            }

            if (a3 != 0x790000012ELL)
            {
              goto LABEL_1017;
            }
          }

          v13 = &unk_1F2055058;
          goto LABEL_1016;
        }

        if (a3 <= 0x7700000191)
        {
          if (a3 == 0x6800000000)
          {
            [v11 addObject:&unk_1F2055280];
            if ([v10 mapUiShownActiveNavMode] == 5)
            {
              [v12 addObject:&unk_1F2055298];
            }

            if ([v10 mapUiShownActiveNavMode] == 1)
            {
              [v12 addObject:&unk_1F20552B0];
            }

            if ([v10 mapUiShownActiveNavMode] == 3)
            {
              [v12 addObject:&unk_1F20552C8];
            }

            if ([v10 mapUiShownActiveNavMode] == 2)
            {
              v13 = &unk_1F20552E0;
              goto LABEL_1016;
            }

            goto LABEL_1017;
          }

          v17 = 0x770000012ELL;
          goto LABEL_855;
        }

        if (a3 != 0x7700000192)
        {
          v17 = 0x780000012ELL;
          goto LABEL_855;
        }

LABEL_856:
        [v11 addObject:&unk_1F2055028];
        goto LABEL_857;
      }

      if (a3 > 0x9D00000014)
      {
        if (a3 > 0xD60000006CLL)
        {
          if (a3 != 0xD60000006DLL)
          {
            if (a3 != 0xF30000001FLL || ([v8 isEqualToString:@"AUTOMOBILE"] & 1) == 0)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055520;
            goto LABEL_1016;
          }

          goto LABEL_790;
        }

        if (a3 == 0x9D00000015)
        {
LABEL_850:
          v13 = &unk_1F2055490;
          goto LABEL_1016;
        }

        v48 = 0xC800000015;
      }

      else
      {
        if (a3 <= 0x7B00000191)
        {
          if (a3 == 0x7A00000192)
          {
            goto LABEL_856;
          }

          if (a3 != 0x7B0000012ELL)
          {
            goto LABEL_1017;
          }

LABEL_909:
          v13 = &unk_1F2055070;
          goto LABEL_1016;
        }

        if (a3 == 0x7B00000192)
        {
          goto LABEL_909;
        }

        v48 = 0x9B00000015;
      }

      if (a3 != v48)
      {
        goto LABEL_1017;
      }

      goto LABEL_850;
    }

    if (a3 > 0x13E000000CBLL)
    {
      if (a3 > 0x171FFFFFFFFLL)
      {
        if (a3 <= 0x173000000C8)
        {
          if (a3 == 0x17200000000)
          {
            v13 = &unk_1F20550D0;
            goto LABEL_1016;
          }

          v14 = 8;
          goto LABEL_563;
        }

        if (a3 != 0x173000000C9)
        {
          v14 = 301;
          goto LABEL_563;
        }

LABEL_625:
        v13 = &unk_1F2055B68;
        goto LABEL_1016;
      }

      if (a3 == 0x13E000000CCLL)
      {
        goto LABEL_1016;
      }

      if (a3 == 0x15100000322)
      {
        [v11 addObject:&unk_1F2054FE0];
        v78 = +[GEOAPSharedStateData sharedData];
        v79 = [v78 hasCarPlayInfo];

        if ((v79 & 1) == 0)
        {
          goto LABEL_1017;
        }

        v13 = &unk_1F2054FF8;
        goto LABEL_1016;
      }

      v22 = 0x16D000004B9;
LABEL_551:
      if (a3 != v22)
      {
        goto LABEL_1017;
      }

      goto LABEL_782;
    }

    if (a3 > 0x11A000000C8)
    {
      if (a3 <= 0x13E00000037)
      {
        if (a3 == 0x11A000000C9 || a3 == 0x11C000000C9)
        {
          goto LABEL_1016;
        }

        v28 = 0x12300000001;
        goto LABEL_765;
      }

      if (a3 - 0x13E00000038 < 2)
      {
        goto LABEL_1016;
      }

      goto LABEL_1017;
    }

    if (a3 - 0x11900000038 < 2)
    {
      goto LABEL_1016;
    }

    if (a3 == 0xF50000006DLL)
    {
      goto LABEL_790;
    }

    if (a3 != 0xFA000001F8)
    {
      goto LABEL_1017;
    }

    v51 = @"OFFLINE";
LABEL_957:
    if (([v8 isEqualToString:v51] & 1) == 0)
    {
      goto LABEL_1017;
    }

    v13 = &unk_1F2055B68;
    goto LABEL_1016;
  }

  if (a3 > 0x1500000102)
  {
    if (a3 <= 0x32000000C8)
    {
      if (a3 <= 0x1500000130)
      {
        if (a3 > 0x150000012DLL)
        {
          if (a3 == 0x150000012ELL)
          {
            v13 = &unk_1F2055718;
          }

          else
          {
            if (a3 != 0x150000012FLL)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055700;
          }
        }

        else if (a3 == 0x1500000103)
        {
          v13 = &unk_1F2055598;
        }

        else
        {
          if (a3 != 0x150000012DLL)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F20556E8;
        }

        goto LABEL_1016;
      }

      if (a3 > 0x2D000006ABLL)
      {
        if (a3 == 0x2D000006ACLL)
        {
          v13 = &unk_1F2055118;
          goto LABEL_1016;
        }

        v16 = 0x320000001ELL;
        goto LABEL_876;
      }

      if (a3 == 0x1500000131)
      {
        v13 = &unk_1F20556D0;
        goto LABEL_1016;
      }

      if (a3 != 0x15000003EFLL)
      {
        goto LABEL_1017;
      }

      goto LABEL_591;
    }

    if (a3 > 0x59FFFFFFFFLL)
    {
      if (a3 > 0x5BFFFFFFFFLL)
      {
        if (a3 == 0x5C00000000)
        {
          goto LABEL_734;
        }

        v30 = 0x5D00000000;
      }

      else
      {
        if (a3 == 0x5A00000000)
        {
          goto LABEL_734;
        }

        v30 = 0x5B00000000;
      }

LABEL_733:
      if (a3 != v30)
      {
        goto LABEL_1017;
      }

      goto LABEL_734;
    }

    if (a3 <= 0x5400000007)
    {
      if (a3 == 0x32000000C9)
      {
        goto LABEL_1016;
      }

      v30 = 0x5300000000;
      goto LABEL_733;
    }

    if (a3 == 0x5400000008)
    {
      goto LABEL_725;
    }

    v35 = 0x54000000FELL;
    goto LABEL_724;
  }

  if (a3 <= 0x1500000083)
  {
    if (a3 > 0x150000001BLL)
    {
      if (a3 > 0x1500000081)
      {
        if (a3 == 0x1500000082)
        {
          v13 = &unk_1F20556B8;
        }

        else
        {
          v13 = &unk_1F20555B0;
        }
      }

      else if (a3 == 0x150000001CLL)
      {
        v13 = &unk_1F2055580;
      }

      else
      {
        if (a3 != 0x150000001DLL)
        {
          goto LABEL_1017;
        }

        v13 = &unk_1F2055538;
      }

      goto LABEL_1016;
    }

    if (a3 == 0x110000026ELL)
    {
      v13 = &unk_1F2055A60;
      goto LABEL_1016;
    }

    if (a3 != 0x1300000000)
    {
      if (a3 != 0x1500000013)
      {
        goto LABEL_1017;
      }

      v13 = &unk_1F2055568;
      goto LABEL_1016;
    }

    [v11 addObject:&unk_1F2055190];
    if ([v10 mapsInOfflineMode])
    {
      [v12 addObject:&unk_1F20551A8];
    }

    v62 = +[GEOAPSharedStateData sharedData];
    v63 = [v62 is3rdPartyPunchIn];

    if (v63)
    {
      [v12 addObject:&unk_1F20551C0];
    }

    v64 = +[GEOAPSharedStateData sharedData];
    v65 = [v64 isFindMyPunchIn];

    if (v65)
    {
      [v12 addObject:&unk_1F20551D8];
    }

    v66 = +[GEOAPSharedStateData sharedData];
    v67 = [v66 isOther2ndPartyPunchIn];

    if (v67)
    {
      [v12 addObject:&unk_1F20551F0];
    }

    v68 = +[GEOAPSharedStateData sharedData];
    v69 = [v68 isSafariPunchIn];

    if (v69)
    {
      [v12 addObject:&unk_1F2055208];
    }

    v70 = +[GEOAPSharedStateData sharedData];
    v71 = [v70 isSiriPunchIn];

    if (v71)
    {
      [v12 addObject:&unk_1F2055220];
    }

    v72 = +[GEOAPSharedStateData sharedData];
    v73 = [v72 isSMSPunchIn];

    if (v73)
    {
      [v12 addObject:&unk_1F2055238];
    }

    v74 = +[GEOAPSharedStateData sharedData];
    v75 = [v74 isSpotlightPunchIn];

    if (v75)
    {
      [v12 addObject:&unk_1F2055250];
    }

    v76 = +[GEOAPSharedStateData sharedData];
    v77 = [v76 isMapsWidgetPunchIn];

    if (v77)
    {
LABEL_931:
      v13 = &unk_1F2055268;
      goto LABEL_1016;
    }

    goto LABEL_1017;
  }

  if (a3 <= 0x1500000092)
  {
    if (a3 > 0x1500000088)
    {
      if (a3 == 0x1500000089)
      {
        goto LABEL_573;
      }

      v29 = 140;
    }

    else
    {
      if (a3 == 0x1500000084)
      {
        v13 = &unk_1F20556A0;
        goto LABEL_1016;
      }

      v29 = 135;
    }

LABEL_572:
    if (a3 != (v29 & 0xFFFF0000FFFFFFFFLL | 0x1500000000))
    {
      goto LABEL_1017;
    }

    goto LABEL_573;
  }

  if (a3 <= 0x15000000C8)
  {
    if (a3 == 0x1500000093)
    {
      [v11 addObject:&unk_1F20555C8];
      v13 = &unk_1F20555E0;
    }

    else
    {
      if (a3 != 0x150000009BLL)
      {
        goto LABEL_1017;
      }

      v13 = &unk_1F2055688;
    }

    goto LABEL_1016;
  }

  if (a3 != 0x15000000C9)
  {
    v29 = 254;
    goto LABEL_572;
  }

  [v11 addObject:&unk_1F20555F8];
  v80 = +[GEOAPSharedStateData sharedData];
  v81 = [v80 placeCardIsPersonLocationShared];

  if (v81)
  {
    [v12 addObject:&unk_1F2055610];
  }

  if ([v10 hasShowcase])
  {
    [v12 addObject:&unk_1F2055628];
  }

  v82 = a5 - 1;
  if ((a5 - 1) < 3)
  {
    v83 = &unk_1E7953BE0;
LABEL_980:
    v13 = v83[v82];
    goto LABEL_1016;
  }

LABEL_1017:
  if ([v12 count])
  {
    v85 = [v12 copy];
  }

  else
  {
    v85 = 0;
  }

  v86 = *MEMORY[0x1E69E9840];

  return v85;
}

+ (id)addStaticDailyCountsWithActionTargetTuple:(unint64_t)a3 actionTargetValue:(id)a4 appGroup:(int)a5
{
  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
  v7 = v6;
  switch(a3)
  {
    case 0x1300000000uLL:
      v8 = &unk_1F2054F80;
      break;
    case 0x89500000000uLL:
      v8 = &unk_1F2054FB0;
      break;
    case 0x1400000000uLL:
      v8 = &unk_1F2054F98;
      break;
    default:
      goto LABEL_8;
  }

  [v6 addObject:v8];
LABEL_8:
  v9 = [v7 copy];

  return v9;
}

+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)a3 chanceOfRain:(id)a4 chanceOfSnow:(id)a5 endTime:(id)a6 durationUntilEventEnd:(id)a7 durationUntilEventStart:(id)a8 startTime:(id)a9 temperature:(id)a10 timeOfDay:(id)a11 timeSinceBackgrounded:(id)a12 actualTransportMode:(int)a13 dayOfWeek:(id)a14 distanceFromHereToHome:(int)a15 distanceFromHereToOrigin:(int)a16 distanceFromHereToParkedCar:(int)a17 distanceFromHereToWork:(int)a18 distanceFromHere:(int)a19 distanceFromOriginToDestination:(int)a20 entryType:(int)a21 weatherType:(int)a22 mapType:(int)a23 predictedTransportMode:(int)a24 preferredTransportMode:(int)a25 isTourist:(id)a26 isCarplayConnected:(id)a27 isTransitPossible:(id)a28 userLocation:(id)a29 isVehicleBluetoothConnected:(id)a30 weatherAqi:(id)a31 modelName:(int)a32 modelVersion:(id)a33 modelTrainedDate:(id)a34
{
  LODWORD(v36) = a32;
  LODWORD(v35) = a25;
  LODWORD(v34) = a13;
  [a1 capturePredExTrainingWithChanceOfPrecipitation:a3 chanceOfRain:a4 chanceOfSnow:a5 endTime:a6 durationUntilEventEnd:a7 durationUntilEventStart:a8 startTime:a9 temperature:a10 timeOfDay:a11 timeSinceBackgrounded:a12 actualTransportMode:v34 dayOfWeek:a14 distanceFromHereToHome:__PAIR64__(a16 distanceFromHereToOrigin:a15) distanceFromHereToParkedCar:__PAIR64__(a18 distanceFromHereToWork:a17) distanceFromHere:__PAIR64__(a20 distanceFromOriginToDestination:a19) entryType:__PAIR64__(a22 weatherType:a21) mapType:__PAIR64__(a24 predictedTransportMode:a23) preferredTransportMode:v35 isInBasemode:0 isTourist:a26 isCarplayConnected:a27 isTransitPossible:a28 routePlanningScreenPresented:0 userLocation:a29 isVehicleBluetoothConnected:a30 weatherAqi:a31 modelName:v36 modelVersion:a33 modelTrainedDate:a34];
}

+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)a3 chanceOfRain:(id)a4 chanceOfSnow:(id)a5 endTime:(id)a6 durationUntilEventEnd:(id)a7 durationUntilEventStart:(id)a8 startTime:(id)a9 temperature:(id)a10 timeOfDay:(id)a11 timeSinceBackgrounded:(id)a12 actualTransportMode:(int)a13 dayOfWeek:(id)a14 distanceFromHereToHome:(int)a15 distanceFromHereToOrigin:(int)a16 distanceFromHereToParkedCar:(int)a17 distanceFromHereToWork:(int)a18 distanceFromHere:(int)a19 distanceFromOriginToDestination:(int)a20 entryType:(int)a21 weatherType:(int)a22 mapType:(int)a23 predictedTransportMode:(int)a24 preferredTransportMode:(int)a25 isInBasemode:(id)a26 isTourist:(id)a27 isCarplayConnected:(id)a28 isTransitPossible:(id)a29 routePlanningScreenPresented:(id)a30 userLocation:(id)a31 isVehicleBluetoothConnected:(id)a32 weatherAqi:(id)a33 modelName:(int)a34 modelVersion:(id)a35 modelTrainedDate:(id)a36
{
  v71 = a3;
  v70 = a4;
  v69 = a5;
  v68 = a6;
  v67 = a7;
  v66 = a8;
  v65 = a9;
  v64 = a10;
  v63 = a11;
  v62 = a12;
  v56 = a14;
  v61 = a26;
  v57 = a27;
  v58 = a28;
  v59 = a29;
  v60 = a30;
  v41 = a31;
  v42 = a32;
  v43 = a33;
  v44 = a35;
  v45 = a36;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2050000000;
  v46 = getPPUtilsClass_softClass;
  v76 = getPPUtilsClass_softClass;
  if (!getPPUtilsClass_softClass)
  {
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __getPPUtilsClass_block_invoke;
    v72[3] = &unk_1E79595B8;
    v72[4] = &v73;
    __getPPUtilsClass_block_invoke(v72);
    v46 = v74[3];
  }

  v47 = v46;
  _Block_object_dispose(&v73, 8);
  [v41 lat];
  v49 = v48;
  [v41 lng];
  v51 = [v46 coordinatesToGeoHashWithLength:4 latitude:v49 longitude:v50];
  if (!GEOConfigGetBOOL())
  {
    a22 = 0;
  }

  LODWORD(v55) = a34;
  LODWORD(v54) = a25;
  LODWORD(v53) = a13;
  [GEOAPPortal capturePredExTrainingWithChanceOfPrecipitation:v71 chanceOfRain:v70 chanceOfSnow:v69 endTime:v68 durationUntilEventEnd:v67 durationUntilEventStart:v66 startTime:v65 temperature:v64 timeOfDay:v63 timeSinceBackgrounded:v62 actualTransportMode:v53 dayOfWeek:v56 distanceFromHereToHome:__PAIR64__(a16 distanceFromHereToOrigin:a15) distanceFromHereToParkedCar:__PAIR64__(a18 distanceFromHereToWork:a17) distanceFromHere:__PAIR64__(a20 distanceFromOriginToDestination:a19) entryType:__PAIR64__(a22 weatherType:a21) mapType:__PAIR64__(a24 predictedTransportMode:a23) preferredTransportMode:v54 isInBasemode:v61 isCarplayConnected:v58 isTourist:v57 isTransitPossible:v59 routePlanningScreenPresented:v60 userLocationGeohash4:v51 isVehicleBluetoothConnected:v42 weatherAqi:v43 modelName:v55 modelVersion:v44 modelTrainedDate:v45];
}

+ (void)captureGridDuration:(double)a3 previousState:(int)a4 endState:(int)a5 displayType:(int)a6 errors:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v27 = a7;
  v25 = a5;
  if (a5 == 2)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__2363;
    v37 = __Block_byref_object_dispose__2364;
    v38 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __91__GEOAPPortal_GridDuration__captureGridDuration_previousState_endState_displayType_errors___block_invoke;
    v32[3] = &unk_1E7957EF0;
    v32[4] = &v33;
    v9 = MEMORY[0x1AC5A12F0](v32);
    v10 = v34[5];
    v34[5] = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v27;
    v13 = 0;
    v14 = [v12 countByEnumeratingWithState:&v28 objects:v39 count:16];
    if (v14)
    {
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
          v18 = (*(v34[5] + 16))();
          v19 = [MEMORY[0x1E696AD98] numberWithInt:v18];
          v20 = [v11 objectForKeyedSubscript:v19];

          if (!v20)
          {
            v20 = objc_alloc_init(MEMORY[0x1E69A1EE8]);
            [v20 setType:v18];
            if (!v13)
            {
              v13 = [MEMORY[0x1E695DF70] array];
            }

            [v13 addObject:v20];
            v21 = [MEMORY[0x1E696AD98] numberWithInt:v18];
            [v11 setObject:v20 forKeyedSubscript:v21];
          }

          [v20 setCount:{objc_msgSend(v20, "count") + 1}];
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v39 count:16];
      }

      while (v14);
    }

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v13 = 0;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithDouble:a3 * 1000.0];
  [GEOAPPortal captureGridDurationWithDurationMs:v22 previousState:a4 endState:v25 endStateErrorReasons:v13 displayType:a6];

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __91__GEOAPPortal_GridDuration__captureGridDuration_previousState_endState_displayType_errors___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x1E696A978]];

  if (!v5)
  {
    v7 = [v3 domain];
    v8 = GEOErrorDomain();
    v9 = [v7 isEqualToString:v8];

    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = [v3 code];
    if (v10 != -9)
    {
      if (v10 != -19)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_12:
    v11 = 2;
    goto LABEL_36;
  }

  v6 = [v3 code];
  if (v6 == -1009)
  {
    goto LABEL_12;
  }

  if (v6 == -1005)
  {
    v11 = 4;
    goto LABEL_36;
  }

  if (v6 != -1001)
  {
LABEL_10:
    v12 = [v3 userInfo];
    v13 = *MEMORY[0x1E696AA08];
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v14)
    {
      v15 = *(*(*(a1 + 32) + 8) + 40);
      v16 = [v3 userInfo];
      v17 = [v16 objectForKeyedSubscript:v13];
      v11 = (*(v15 + 16))(v15, v17);

      goto LABEL_36;
    }

    v18 = [v3 userInfo];
    v19 = *MEMORY[0x1E69A1950];
    v20 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69A1950]];

    if (v20)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v21 = [v3 userInfo];
      v22 = [v21 objectForKeyedSubscript:v19];

      v23 = [v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v44;
LABEL_16:
        v26 = 0;
        while (1)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v43 + 1) + 8 * v26);
          v28 = (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
          if (v28 != 1)
          {
            break;
          }

          if (v24 == ++v26)
          {
            v24 = [v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
            if (v24)
            {
              goto LABEL_16;
            }

            goto LABEL_33;
          }
        }

LABEL_34:
        v11 = v28;
        goto LABEL_35;
      }
    }

    else
    {
      v29 = [v3 userInfo];
      v30 = [v29 objectForKeyedSubscript:@"UnderlyingErrors"];

      if (!v30)
      {
        v11 = 1;
        goto LABEL_36;
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v31 = [v3 userInfo];
      v22 = [v31 objectForKeyedSubscript:@"UnderlyingErrors"];

      v32 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v40;
LABEL_27:
        v35 = 0;
        while (1)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(v22);
          }

          v36 = *(*(&v39 + 1) + 8 * v35);
          v28 = (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
          if (v28 != 1)
          {
            goto LABEL_34;
          }

          if (v33 == ++v35)
          {
            v33 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v33)
            {
              goto LABEL_27;
            }

            break;
          }
        }
      }
    }

LABEL_33:
    v11 = 1;
LABEL_35:

    goto LABEL_36;
  }

LABEL_9:
  v11 = 3;
LABEL_36:

  v37 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (void)captureFindMyUserActionType:(id)a3 ownerContext:(id)a4 productType:(id)a5
{
  v7 = a5;
  v13 = a4;
  v8 = [&unk_1F2056700 objectForKeyedSubscript:a3];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = [&unk_1F2056728 objectForKeyedSubscript:v7];

  if (v11)
  {
    v12 = [v11 integerValue];
  }

  else
  {
    v12 = 0;
  }

  [GEOAPPortal captureFindMyUsageWithUserActionEventAction:v10 userActionEventTarget:v12 userActionEventValue:v13 additionalStates:0 providedDropRate:0 completionQueue:0 completionBlock:0];
}

@end