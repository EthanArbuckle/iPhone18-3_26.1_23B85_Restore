@interface GEOAPPortal
+ (BOOL)isRunningInVisualIntelligence;
+ (BOOL)permittedToCountAC;
+ (id)_caChargingStateFromAPChargingState:(int)state;
+ (id)_caFeatureFromAPFeature:(int)feature;
+ (id)_caNavMapTypeFromAPNavMapType:(int)type;
+ (id)_caTriggerTypeFromFromAPThermalPressure:(int)pressure;
+ (id)_netEventHandlingConfig;
+ (id)addCodeGenDailyCountsWithActionTargetTuple:(unint64_t)tuple actionTargetValue:(id)value appGroup:(int)group;
+ (id)addStaticDailyCountsWithActionTargetTuple:(unint64_t)tuple actionTargetValue:(id)value appGroup:(int)group;
+ (id)captureQueue;
+ (int)_eventNavChargingStateFromAPNavChargingState:(int)state;
+ (int)_eventNavMapTypeFromAPNavMapType:(int)type;
+ (int)_eventThermalPressureFromAPThermalPressure:(int)pressure;
+ (void)captureBatchTrafficWithLocationCollection:(id)collection additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureCarplayUserActionWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureClientACKeypressWithQuery:(id)query queryTokens:(id)tokens entries:(id)entries keypressStatus:(int)status additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)self0;
+ (void)captureClientACResponseWithQuery:(id)query queryTokens:(id)tokens entries:(id)entries shouldDifferentiateClientAndServerResults:(id)results overallLatencyInMs:(id)ms isRerankerTriggered:(id)triggered isRetainedQuery:(id)retainedQuery additionalStates:(id)self0 providedDropRate:(id)self1 completionQueue:(id)self2 completionBlock:(id)self3;
+ (void)captureClientACSuggestionWithQuery:(id)query queryTokens:(id)tokens entries:(id)entries selectedIndex:(id)index selectedSectionIndex:(id)sectionIndex withinSectionSelectedIndex:(id)selectedIndex isRetainedQuery:(id)retainedQuery isRerankerTriggered:(id)self0 shouldDifferentiateClientAndServerResults:(id)self1 responseStatus:(int)self2 GEOModelMetadata_modelVersion:(id)self3 GEOModelMetadata_rolloutId:(id)self4 GEOModelMetadata_rolloutDeploymentId:(id)self5 GEOModelMetadata_rolloutFactorpackId:(id)self6 GEOModelMetadata_rolloutRampId:(id)self7 GEOExperimentMetadata_experimentId:(id)self8 GEOExperimentMetadata_deploymentId:(id)self9 GEOExperimentMetadata_treatmentId:(id)metadata_treatmentId GEOExperimentMetadata_experimentDescription:(id)description additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureCommuteDoomWindow:(id)window exitTime:(id)time destinations:(id)destinations reason:(int64_t)reason networkRequests:(unint64_t)requests alerts:(unint64_t)alerts;
+ (void)captureCommuteWindowWithStartTime:(id)time duration:(id)duration predictedExitTime:(id)exitTime endReason:(int)reason numberOfAlertingResponses:(id)responses numberOfDoomRoutingRequests:(id)requests predictedDestinations:(id)destinations additionalStates:(id)self0 providedDropRate:(id)self1 completionQueue:(id)self2 completionBlock:(id)self3;
+ (void)captureCuratedCollectionUserAction:(int)action target:(int)target value:(id)value publisherId:(id)id following:(id)following collectionId:(id)collectionId collectionCategory:(id)category collectionCurrentlySaved:(id)self0 verticalIndex:(id)self1 horizontalIndex:(id)self2 placeCardType:(id)self3 possibleActions:(id)self4 impossibleActions:(id)self5 providerId:(id)self6 repeatableSectionIndex:(id)self7 modules:(id)self8;
+ (void)captureCuratedCollectionsSessionlessUserActionTargetPairRedactedCCStateWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureCuratedCollectionsSessionlessUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureCuratedCollectionsShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureDailyUseSummaryWithUseEvents:(id)events summaryPeriod:(int)period summaryDate:(id)date aggregationSummaryDate:(id)summaryDate firstEventDate:(id)eventDate user_mapsUseLastDate:(id)lastDate additionalStates:(id)states providedDropRate:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureDirectionsServiceMetadataWithDirectionsMetadata:(id)metadata additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureDirectionsWithDirectionsFeedbacks:(id)feedbacks finalLocation:(id)location arrivalLocation:(id)arrivalLocation arrivedAtDestination:(id)destination navigationAudioFeedback:(GEONavigationAudioFeedback *)feedback durationOfTrip:(id)trip durationInNavigationModes:(id)modes preArrival:(id)self0 originalEta:(id)self1 isVlfImprovementUsed:(id)self2 isCoarseLocationUsed:(id)self3 acceptedCyclingWorkout:(id)self4 batteryDied:(id)self5 chargingStopAdded:(id)self6 isSiriEngaged:(id)self7 tripOrigin:(id)self8 isBadEvExperience:(id)self9 isEvSampleTrip:(id)sampleTrip stateOfChargeAtOrigin:(id)atOrigin stateOfChargeAtDestPredicted:(id)predicted stateOfChargeAtDestActual:(id)actual stateOfChargeDiffAtDest:(id)dest waypoints:(id)waypoints evConsumptionModel:(id)model evChargingMode:(id)mode activeNavMode:(int)navMode arWalkingUsedInRoutePlanning:(id)planning arWalkingUsedInNavigation:(id)feedbacks0 voiceGuidanceLevel:(int)feedbacks1 hFPEnabled:(id)feedbacks2 isEndRouteTermination:(id)feedbacks3 isParkedCarTermination:(id)feedbacks4 isTransitionToWalkingTermination:(id)feedbacks5 isTransitionToFindmyTermination:(id)feedbacks6 parkingDetectionLocation:(id)feedbacks7 timeBetweenParkedAndArrival:(id)feedbacks8 arrivedAtDestinationCount:(id)feedbacks9 inParkingModeCount:(id)location0 isInParkingMode:(id)location1 isSuggestToWalkingTriggered:(id)location2 isTransitedToWalking:(id)location3 isSuggestToFindmyTriggered:(id)location4 isTransitedToFindmy:(id)location5;
+ (void)captureDirectionsWithDirectionsFeedbacks:(id)feedbacks finalLocation:(id)location arrivalLocation:(id)arrivalLocation arrivedAtDestination:(id)destination navigationAudioFeedback:(GEONavigationAudioFeedback *)feedback durationOfTrip:(id)trip durationInNavigationModes:(id)modes preArrival:(id)self0 originalEta:(id)self1 isVlfImprovementUsed:(id)self2 isCoarseLocationUsed:(id)self3 acceptedCyclingWorkout:(id)self4 batteryDied:(id)self5 chargingStopAdded:(id)self6 isSiriEngaged:(id)self7 tripOrigin:(id)self8 isBadEvExperience:(id)self9 isEvSampleTrip:(id)sampleTrip stateOfChargeAtOrigin:(id)atOrigin stateOfChargeAtDestPredicted:(id)predicted stateOfChargeAtDestActual:(id)actual stateOfChargeDiffAtDest:(id)dest waypoints:(id)waypoints evConsumptionModel:(id)model evChargingMode:(id)mode activeNavMode:(int)navMode arWalkingUsedInRoutePlanning:(id)planning arWalkingUsedInNavigation:(id)feedbacks0 voiceGuidanceLevel:(int)feedbacks1 hFPEnabled:(id)feedbacks2 isEndRouteTermination:(id)feedbacks3 isParkedCarTermination:(id)feedbacks4 isTransitionToWalkingTermination:(id)feedbacks5 isTransitionToFindmyTermination:(id)feedbacks6 parkingDetectionLocation:(id)feedbacks7 timeBetweenParkedAndArrival:(id)feedbacks8 arrivedAtDestinationCount:(id)feedbacks9 inParkingModeCount:(id)location0 isInParkingMode:(id)location1 isSuggestToWalkingTriggered:(id)location2 isTransitedToWalking:(id)location3 isSuggestToFindmyTriggered:(id)location4 isTransitedToFindmy:(id)location5 additionalStates:(id)location6 providedDropRate:(id)location7 completionQueue:(id)location8 completionBlock:(id)location9;
+ (void)captureDirectionsWithDirectionsFeedbacks:(id)feedbacks finalLocation:(id)location arrivalLocation:(id)arrivalLocation arrivedAtDestination:(id)destination navigationAudioFeedback:(GEONavigationAudioFeedback *)feedback durationOfTrip:(id)trip durationInNavigationModes:(id)modes preArrival:(id)self0 originalEta:(id)self1 isVlfImprovementUsed:(id)self2 isCoarseLocationUsed:(id)self3 acceptedCyclingWorkout:(id)self4 batteryDied:(id)self5 chargingStopAdded:(id)self6 isSiriEngaged:(id)self7 tripOrigin:(id)self8 wasBadRouteExperience:(id)self9 isBadEvExperience:(id)evExperience isEvSampleTrip:(id)sampleTrip stateOfChargeAtOrigin:(id)atOrigin stateOfChargeAtDestPredicted:(id)predicted stateOfChargeAtDestActual:(id)actual stateOfChargeDiffAtDest:(id)dest waypoints:(id)waypoints evConsumptionModel:(id)model evChargingMode:(id)mode isEVRoute:(BOOL)route activeNavMode:(int)feedbacks0 arWalkingUsedInRoutePlanning:(id)feedbacks1 arWalkingUsedInNavigation:(id)feedbacks2 voiceGuidanceLevel:(int)feedbacks3 hFPEnabled:(id)feedbacks4 isEndRouteTermination:(id)feedbacks5 isParkedCarTermination:(id)feedbacks6 isTransitionToWalkingTermination:(id)feedbacks7 isTransitionToFindmyTermination:(id)feedbacks8 parkingDetectionLocation:(id)feedbacks9 timeBetweenParkedAndArrival:(id)location0 arrivedAtDestinationCount:(id)location1 inParkingModeCount:(id)location2 isInParkingMode:(id)location3 isSuggestToWalkingTriggered:(id)location4 isTransitedToWalking:(id)location5 isSuggestToFindmyTriggered:(id)location6 isTransitedToFindmy:(id)location7;
+ (void)captureDisplayAnalyticWithDisplayActionTrigger:(int)trigger requiredResourcesAvailable:(id)available totalTime:(id)time requestedImageCount:(id)count renderedImageCount:(id)imageCount movementDistance:(id)distance meanImageSpacing:(id)spacing displayEvent:(int)self0 additionalStates:(id)self1 providedDropRate:(id)self2 completionQueue:(id)self3 completionBlock:(id)self4;
+ (void)captureEnterMapsShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureEvRoutingVehicleDetailsWithMake:(id)make model:(id)model towingNotSupported:(id)supported batteryCapacity:(id)capacity additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)self0;
+ (void)captureEvTripWithOutOfCharge:(id)charge outOfRangeAlertDisplayed:(id)displayed originalTripIncludedChargingStation:(id)station chargingStopAddedThroughSar:(id)sar tripIncludedPreferredChargingStation:(id)chargingStation stopRemovedDetails:(id)details realtimeDodgeballs:(id)dodgeballs chargeLocationDetails:(id)self0 stopAddedDetails:(id)self1 additionalStates:(id)self2 providedDropRate:(id)self3 completionQueue:(id)self4 completionBlock:(id)self5;
+ (void)captureFamiliarRoutesOnlyWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureFindMyUsageWithUserActionEventAction:(int)action userActionEventTarget:(int)target userActionEventValue:(id)value additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureFindMyUserActionType:(id)type ownerContext:(id)context productType:(id)productType;
+ (void)captureGridDuration:(double)duration previousState:(int)state endState:(int)endState displayType:(int)type errors:(id)errors;
+ (void)captureGridDurationWithDurationMs:(id)ms previousState:(int)state endState:(int)endState endStateErrorReasons:(id)reasons displayType:(int)type additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)self0 completionBlock:(id)self1;
+ (void)captureHardStopWithScore:(id)score digits:(id)digits cities:(id)cities additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureImpressionEventWithAdditionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureMapLaunchEventWithLaunchUrl:(id)url sourceAppId:(id)id isLaunchedFromTTL:(BOOL)l ttlEventTime:(id)time;
+ (void)captureMapLaunchWithLaunchUri:(id)uri sourceAppId:(id)id GEOTimeToLeaveMapLaunch_minutesUntilEvent:(id)event additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureMapViewEngagementWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureMapsEngagementWithUser_mapsUseLastDate:(id)date additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureMapsInteractionWithInteractionType:(int)type additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureMarcoLiteWithTotalNavTime:(id)time usageStates:(id)states vioTrigger:(int)trigger additionalStates:(id)additionalStates providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureMuninCameraUserActionShortOnlyWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureMuninUserActionShortOnlyWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureNavThermalPressureWithThermalPressure:(id)pressure disableMapFeatures:(id)features navMapType:(int)type collectionTrigger:(int)trigger additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)self0;
+ (void)captureNavTraceWithNavTraceData:(id)data additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureNearbyTransitShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureNetEventSummaryWithGroups:(id)groups additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureNetSelectionHarvestWithHarvestData:(id)data additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureNetworkEventWithNetworkService:(int)service requestAppIdentifier:(id)identifier requestAppIdMajorVer:(id)ver requestAppIdMinorVer:(id)minorVer requestErrorDomain:(id)domain requestErrorCode:(id)code requestDataSize:(id)size responseDataSize:(id)self0 totalTime:(id)self1 httpResponseCode:(id)self2 serviceIpAddress:(id)self3 taskMetrics:(id)self4 mptcpServiceType:(int)self5 mptcpNegotiated:(id)self6 rnfTriggered:(id)self7 queuedTime:(id)self8 redirectCount:(id)self9 requestStart:(id)start requestEnd:(id)end wasBackground:(id)background additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureOfflineSessionlessUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureOfflineShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)capturePeriodicSettingsWithMapSettings:(id)settings mapUiShown:(id)shown mapsFeatures:(id)features mapsUserSettings:(id)userSettings routingSettings:(id)routingSettings additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)self0 completionBlock:(id)self1;
+ (void)capturePlaceCardRevealWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)capturePlaceCardUserAction:(int)action target:(int)target value:(id)value mapItem:(id)item timestamp:(double)timestamp resultIndex:(int)index targetID:(unint64_t)d providerID:(id)self0 animationID:(unint64_t)self1 actionURL:(id)self2 photoID:(id)self3 placeCardType:(int)self4 localizedMapItemCategory:(id)self5 availableActions:(id)self6 unactionableUIElements:(id)self7 modules:(id)self8 commingledRichProviderIds:(id)self9 actionRichProviderId:(id)id classification:(id)classification;
+ (void)capturePlacesServiceMetadataWithPlacesMetadata:(id)metadata additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)capturePoiBusynessDataWithTimestamp:(id)timestamp GEOLatLng_lat:(id)lng_lat GEOLatLng_lng:(id)lng_lng horizontalAccuracy:(id)accuracy verticalAccuracy:(id)verticalAccuracy altitude:(id)altitude poiPredictions:(id)predictions additionalStates:(id)self0 providedDropRate:(id)self1 completionQueue:(id)self2 completionBlock:(id)self3;
+ (void)capturePredExShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)precipitation chanceOfRain:(id)rain chanceOfSnow:(id)snow endTime:(id)time durationUntilEventEnd:(id)end durationUntilEventStart:(id)start startTime:(id)startTime temperature:(id)self0 timeOfDay:(id)self1 timeSinceBackgrounded:(id)self2 actualTransportMode:(int)self3 dayOfWeek:(id)self4 distanceFromHereToHome:(int)self5 distanceFromHereToOrigin:(int)self6 distanceFromHereToParkedCar:(int)self7 distanceFromHereToWork:(int)self8 distanceFromHere:(int)self9 distanceFromOriginToDestination:(int)destination entryType:(int)type weatherType:(int)weatherType mapType:(int)mapType predictedTransportMode:(int)transportMode preferredTransportMode:(int)preferredTransportMode isInBasemode:(id)basemode isCarplayConnected:(id)connected isTourist:(id)tourist isTransitPossible:(id)possible routePlanningScreenPresented:(id)precipitation0 userLocationGeohash4:(id)precipitation1 isVehicleBluetoothConnected:(id)precipitation2 weatherAqi:(id)precipitation3 modelName:(int)precipitation4 modelVersion:(id)precipitation5 modelTrainedDate:(id)precipitation6;
+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)precipitation chanceOfRain:(id)rain chanceOfSnow:(id)snow endTime:(id)time durationUntilEventEnd:(id)end durationUntilEventStart:(id)start startTime:(id)startTime temperature:(id)self0 timeOfDay:(id)self1 timeSinceBackgrounded:(id)self2 actualTransportMode:(int)self3 dayOfWeek:(id)self4 distanceFromHereToHome:(int)self5 distanceFromHereToOrigin:(int)self6 distanceFromHereToParkedCar:(int)self7 distanceFromHereToWork:(int)self8 distanceFromHere:(int)self9 distanceFromOriginToDestination:(int)destination entryType:(int)type weatherType:(int)weatherType mapType:(int)mapType predictedTransportMode:(int)transportMode preferredTransportMode:(int)preferredTransportMode isInBasemode:(id)basemode isCarplayConnected:(id)connected isTourist:(id)tourist isTransitPossible:(id)possible routePlanningScreenPresented:(id)precipitation0 userLocationGeohash4:(id)precipitation1 isVehicleBluetoothConnected:(id)precipitation2 weatherAqi:(id)precipitation3 modelName:(int)precipitation4 modelVersion:(id)precipitation5 modelTrainedDate:(id)precipitation6 additionalStates:(id)precipitation7 providedDropRate:(id)precipitation8 completionQueue:(id)precipitation9 completionBlock:(id)rain0;
+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)precipitation chanceOfRain:(id)rain chanceOfSnow:(id)snow endTime:(id)time durationUntilEventEnd:(id)end durationUntilEventStart:(id)start startTime:(id)startTime temperature:(id)self0 timeOfDay:(id)self1 timeSinceBackgrounded:(id)self2 actualTransportMode:(int)self3 dayOfWeek:(id)self4 distanceFromHereToHome:(int)self5 distanceFromHereToOrigin:(int)self6 distanceFromHereToParkedCar:(int)self7 distanceFromHereToWork:(int)self8 distanceFromHere:(int)self9 distanceFromOriginToDestination:(int)destination entryType:(int)type weatherType:(int)weatherType mapType:(int)mapType predictedTransportMode:(int)transportMode preferredTransportMode:(int)preferredTransportMode isInBasemode:(id)basemode isTourist:(id)tourist isCarplayConnected:(id)connected isTransitPossible:(id)possible routePlanningScreenPresented:(id)precipitation0 userLocation:(id)precipitation1 isVehicleBluetoothConnected:(id)precipitation2 weatherAqi:(id)precipitation3 modelName:(int)precipitation4 modelVersion:(id)precipitation5 modelTrainedDate:(id)precipitation6;
+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)precipitation chanceOfRain:(id)rain chanceOfSnow:(id)snow endTime:(id)time durationUntilEventEnd:(id)end durationUntilEventStart:(id)start startTime:(id)startTime temperature:(id)self0 timeOfDay:(id)self1 timeSinceBackgrounded:(id)self2 actualTransportMode:(int)self3 dayOfWeek:(id)self4 distanceFromHereToHome:(int)self5 distanceFromHereToOrigin:(int)self6 distanceFromHereToParkedCar:(int)self7 distanceFromHereToWork:(int)self8 distanceFromHere:(int)self9 distanceFromOriginToDestination:(int)destination entryType:(int)type weatherType:(int)weatherType mapType:(int)mapType predictedTransportMode:(int)transportMode preferredTransportMode:(int)preferredTransportMode isTourist:(id)tourist isCarplayConnected:(id)connected isTransitPossible:(id)possible userLocation:(id)location isVehicleBluetoothConnected:(id)precipitation0 weatherAqi:(id)precipitation1 modelName:(int)precipitation2 modelVersion:(id)precipitation3 modelTrainedDate:(id)precipitation4;
+ (void)capturePressureDataWithPressureData:(id)data additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)capturePriorityPlacecardActionShortUserActionsWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)capturePriorityShortUserActionsWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureProactiveSuggestionWithListType:(int)type interactedItemIndex:(id)index duration:(id)duration proactiveItems:(id)items additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)self0;
+ (void)captureRapSessionlessUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureRapShortAndSessionlessUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureRapUserActionShortOnlyWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureRealTrafficWithLocationCollection:(id)collection additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureRedactedDirectionsServiceMetadataWithRedactedDirectionsMetadata:(id)metadata GEORedactedDirectionsClientMetadata_destinationHash:(id)hash GEORedactedDirectionsClientMetadata_predictedDepartureTimeDelta:(id)delta additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureRideBookedWithRideBookedSessionId:(id)id bookedUsingMaps:(id)maps cancelled:(id)cancelled contactedDriver:(id)driver viewedInProactiveTray:(id)tray tappedProactiveTrayItem:(id)item viewedDetails:(id)details invalidVehicleLocation:(id)self0 missingVehicleLocation:(id)self1 rideAppId:(id)self2 rideAppVersion:(id)self3 intentResponseFailures:(id)self4 additionalStates:(id)self5 providedDropRate:(id)self6 completionQueue:(id)self7 completionBlock:(id)self8;
+ (void)captureRideBookingWithRideBookingSessionId:(id)id statusIssue:(int)issue endState:(int)state endView:(int)view rideAppId:(id)appId rideAppVersion:(id)version originBlurred:(id)blurred destinationBlurred:(id)self0 exploredOtherOptions:(id)self1 distanceToPickupInMeters:(id)self2 paymentIsApplePay:(id)self3 numberOfAvailableExtensions:(id)self4 switchedApp:(id)self5 comparedRideOptions:(id)self6 showedSurgePricingAlert:(id)self7 durationOfSessionInSeconds:(id)self8 installedApp:(id)self9 timestamp:(id)timestamp unavailable:(id)unavailable movedPickupLocation:(id)location errorMessages:(id)messages intentResponseFailures:(id)failures additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureSessionlessUserActionWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureShowcaseSuppressionWithBusinessId:(id)id localSearchProviderID:(id)d showcaseId:(id)showcaseId suppressionReason:(int)reason adamId:(id)adamId additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)self0 completionBlock:(id)self1;
+ (void)captureStartEndNavWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureTableBookedWithBookedTableSessionId:(id)id bookedTables:(id)tables additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureTableBookingWithBookTableSessionId:(id)id endState:(int)state endView:(int)view bookTableAppId:(id)appId muid:(id)muid blurredReservationTimestamp:(id)timestamp blurredBookingTimestamp:(id)bookingTimestamp durationOfSessionInSeconds:(id)self0 installNeeded:(id)self1 installNeededTappedAppId:(id)self2 installCompleted:(id)self3 tableSize:(id)self4 addedSpecialRequest:(id)self5 swipedAvailableTimes:(id)self6 tappedDatePicker:(id)self7 errorMessages:(id)self8 additionalStates:(id)self9 providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureTelemetricWithTelemetricEntitys:(id)entitys additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureTimeToLeaveIntialTravelTimeEventWithTravelTime:(double)time;
+ (void)captureTransitAppLaunchSource:(id)source destination:(id)destination bundleIdentifier:(id)identifier;
+ (void)captureTransitAppLaunchWithBundleIdentifier:(id)identifier source:(id)source destination:(id)destination timestamp:(id)timestamp additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)self0;
+ (void)captureTransitShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureTtlHypothesisWithArrival:(int)arrival departure:(int)departure ttlUiNotificationShown:(int)shown earliestArrivalOffset:(id)offset earliestDepartureOffset:(id)departureOffset latestArrivalOffset:(id)arrivalOffset latestDepartureOffset:(id)latestDepartureOffset numberOfReroutes:(id)self0 additionalStates:(id)self1 providedDropRate:(id)self2 completionQueue:(id)self3 completionBlock:(id)self4;
+ (void)captureTtlInitialTimeWithTravelTime:(id)time additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureUGCSessionlessUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureUGCShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2;
+ (void)captureUgcDeleteLogsWithCertificates:(id)certificates signature:(id)signature trigger:(int)trigger additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)captureVlfUsageWithEntryPoint:(id)point sessionTimeMs:(id)ms timeRoundedToHour:(id)hour localizationDetails:(id)details finalState:(int)state postFusionCorrection:(id)correction initialPositionContextClassification:(GEOVLFPositionContextClassification *)classification initialLocation:(id)self0 initializationFailureDetails:(id)self1 arStates:(id)self2 deviceOrientations:(id)self3 crowdsourcingDetails:(id)self4 arFailureTypes:(id)self5 additionalStates:(id)self6 providedDropRate:(id)self7 completionQueue:(id)self8 completionBlock:(id)self9;
+ (void)captureWidgetInteractionWithMapsWidgetType:(int)type endState:(int)state lockedMode:(id)mode localHour:(id)hour localDayOfWeek:(id)week duration:(id)duration mapsNearbyWidget:(id)widget mapsTransitWidget:(id)self0 mapsDestinationsWidget:(id)self1 additionalStates:(id)self2 providedDropRate:(id)self3 completionQueue:(id)self4 completionBlock:(id)self5;
+ (void)captureWifiProbeWithWifiConnectionQuality:(id)quality additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block;
+ (void)populateCommonEventValues:(id)values;
+ (void)processMapsDeletionWithCompletionQueue:(id)queue completion:(id)completion;
+ (void)reportLogMsgEvent:(id)event uploadBatchId:(unint64_t)id completion:(id)completion completionQueue:(id)queue;
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

+ (void)reportLogMsgEvent:(id)event uploadBatchId:(unint64_t)id completion:(id)completion completionQueue:(id)queue
{
  v91 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  completionCopy = completion;
  idCopy = id;
  v10 = GEOBatchLogMessageType();
  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  isInternalInstall = [mEMORY[0x1E69A2398] isInternalInstall];

  if (isInternalInstall)
  {
    v13 = GEOGetGEOAPPortalAnalyticsLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
LABEL_122:

      goto LABEL_123;
    }

    eventType = [eventCopy eventType];
    v15 = @"LOG_MSG_EVENT_TYPE_UNKNOWN";
    switch(eventType)
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
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", eventType];
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
          v90 = eventCopy;
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
    logMsgStates = [eventCopy logMsgStates];
    v19 = [logMsgStates countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (!v19)
    {
      goto LABEL_152;
    }

    v20 = v19;
    v21 = v10;
    v22 = completionCopy;
    v23 = *v79;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v79 != v23)
        {
          objc_enumerationMutation(logMsgStates);
        }

        v25 = *(*(&v78 + 1) + 8 * i);
        if ([v25 hasCarPlay])
        {
          carPlay = [v25 carPlay];
          isConnected = [carPlay isConnected];

          if (isConnected)
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

      v20 = [logMsgStates countByEnumeratingWithState:&v78 objects:v84 count:16];
      if (v20)
      {
        continue;
      }

      goto LABEL_151;
    }
  }

  networkEvent = [eventCopy networkEvent];
  requestAppIdentifier = [networkEvent requestAppIdentifier];
  v30 = *MEMORY[0x1E69A1A78];
  v31 = [requestAppIdentifier isEqualToString:*MEMORY[0x1E69A1A78]];

  if (!v31)
  {
    goto LABEL_153;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  logMsgStates = [eventCopy logMsgStates];
  v32 = [logMsgStates countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v32)
  {
    v33 = v32;
    v21 = v10;
    v22 = completionCopy;
    v34 = *v75;
    while (2)
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v75 != v34)
        {
          objc_enumerationMutation(logMsgStates);
        }

        if ([*(*(&v74 + 1) + 8 * j) hasPairedDevice])
        {
          v38 = +[GEOAPServiceManager sharedManager];
          [v38 reportDailyUsageCountType:34 usageString:0 usageBool:0 appId:v30];
LABEL_150:

          goto LABEL_151;
        }
      }

      v33 = [logMsgStates countByEnumeratingWithState:&v74 objects:v83 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }

LABEL_151:
    completionCopy = v22;
    v10 = v21;
  }

LABEL_152:

LABEL_153:
  if ([eventCopy eventType] == 1)
  {
    v66 = completionCopy;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    logMsgStates2 = [eventCopy logMsgStates];
    v41 = [logMsgStates2 countByEnumeratingWithState:&v70 objects:v82 count:16];
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
          objc_enumerationMutation(logMsgStates2);
        }

        v45 = *(*(&v70 + 1) + 8 * k);
        if ([v45 hasMapSettings])
        {
          mapSettings = [v45 mapSettings];
          if ([mapSettings hasLocationType])
          {
            mapSettings2 = [v45 mapSettings];
            locationType = [mapSettings2 locationType];

            if (locationType == 3)
            {
              v49 = 24;
LABEL_169:
              searchResults = +[GEOAPServiceManager sharedManager];
              userActionEvent = +[GEOAPUtils GEOAPApplicationIdentifier];
              [searchResults reportDailyUsageCountType:v49 usageString:0 usageBool:0 appId:userActionEvent];
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

        searchResults = [v45 searchResults];
        if (![searchResults includesEnrichedResult])
        {
          goto LABEL_171;
        }

        userActionEvent = [eventCopy userActionEvent];
        if ([userActionEvent userActionEventAction] == 2015)
        {
          userActionEvent2 = [eventCopy userActionEvent];
          userActionEventTarget = [userActionEvent2 userActionEventTarget];

          if (userActionEventTarget != 101)
          {
            continue;
          }

          v49 = 175;
          goto LABEL_169;
        }

LABEL_170:

LABEL_171:
      }

      v42 = [logMsgStates2 countByEnumeratingWithState:&v70 objects:v82 count:16];
      if (!v42)
      {
LABEL_174:

        userActionEvent3 = [eventCopy userActionEvent];
        if ([userActionEvent3 userActionEventAction] == 19)
        {

          completionCopy = v66;
          goto LABEL_185;
        }

        userActionEvent4 = [eventCopy userActionEvent];
        userActionEventAction = [userActionEvent4 userActionEventAction];

        completionCopy = v66;
        if (userActionEventAction == 2196)
        {
LABEL_185:
          captureQueue = [self captureQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __74__GEOAPPortal_reportLogMsgEvent_uploadBatchId_completion_completionQueue___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = self;
          dispatch_async(captureQueue, block);
          goto LABEL_186;
        }

        goto LABEL_187;
      }
    }
  }

  if ([eventCopy eventType] == 25)
  {
    captureQueue = [eventCopy clientAcSuggestions];
    if ((-[NSObject keypressStatus](captureQueue, "keypressStatus") == 1 || -[NSObject trigger](captureQueue, "trigger") == 2) && [self permittedToCountAC])
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
  [GEOAPPortal populateCommonEventValues:eventCopy];
  [eventCopy clearSensitiveFields:0];
  [v62 addLogMsgEvent:eventCopy];
  v63 = +[GEOAPServiceManager sharedManager];
  data = [v62 data];
  [v63 reportLogMsg:data uploadBatchId:idCopy completion:completionCopy];

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

+ (void)captureWifiProbeWithWifiConnectionQuality:(id)quality additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v61 = *MEMORY[0x1E69E9840];
  qualityCopy = quality;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __123__GEOAPPortal_captureWifiProbeWithWifiConnectionQuality_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v55[3] = &unk_1E7959478;
  v16 = blockCopy;
  v57 = v16;
  v17 = queueCopy;
  v56 = v17;
  v18 = MEMORY[0x1AC5A12F0](v55);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_21;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  platformDiagAndUsage = [v19 platformDiagAndUsage];

  if ((platformDiagAndUsage & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v21 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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

  v48 = qualityCopy;
  v47 = +[GEOAPStateFactory sharedFactory];
  v46 = statesCopy;
  if ([statesCopy count])
  {
    v44 = v16;
    v45 = rateCopy;
    v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v27 = statesCopy;
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
    rateCopy = v45;
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

  statesCopy = v46;
  v39 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v39 setEventType:31];
  v40 = objc_alloc_init(MEMORY[0x1E69A1FF0]);
  [v39 setWifiConnectionQualityProbeEvent:v40];

  wifiConnectionQualityProbeEvent = [v39 wifiConnectionQualityProbeEvent];
  [wifiConnectionQualityProbeEvent setWifiConnectionQuality:v48];

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
  qualityCopy = v48;
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

+ (void)captureWidgetInteractionWithMapsWidgetType:(int)type endState:(int)state lockedMode:(id)mode localHour:(id)hour localDayOfWeek:(id)week duration:(id)duration mapsNearbyWidget:(id)widget mapsTransitWidget:(id)self0 mapsDestinationsWidget:(id)self1 additionalStates:(id)self2 providedDropRate:(id)self3 completionQueue:(id)self4 completionBlock:(id)self5
{
  v133 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  hourCopy = hour;
  weekCopy = week;
  durationCopy = duration;
  widgetCopy = widget;
  transitWidgetCopy = transitWidget;
  destinationsWidgetCopy = destinationsWidget;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = __236__GEOAPPortal_captureWidgetInteractionWithMapsWidgetType_endState_lockedMode_localHour_localDayOfWeek_duration_mapsNearbyWidget_mapsTransitWidget_mapsDestinationsWidget_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v127[3] = &unk_1E7959478;
  v24 = blockCopy;
  v129 = v24;
  v25 = queueCopy;
  v128 = v25;
  v26 = MEMORY[0x1AC5A12F0](v127);
  v112 = v24;
  v113 = rateCopy;
  if (GEOConfigGetBOOL())
  {
    v26[2](v26);
    v27 = modeCopy;
LABEL_9:
    v34 = durationCopy;
    v33 = weekCopy;
    goto LABEL_10;
  }

  v110 = widgetCopy;
  v111 = hourCopy;
  v28 = +[GEOAPServiceManager sharedManager];
  platformDiagAndUsage = [v28 platformDiagAndUsage];

  if ((platformDiagAndUsage & 1) == 0)
  {
    v26[2](v26);
    v27 = modeCopy;
    widgetCopy = v110;
    goto LABEL_9;
  }

  v30 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v30 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
  {
    v32 = GEOGetGEOAPPortalAnalyticsLog();
    v27 = modeCopy;
    v34 = durationCopy;
    v33 = weekCopy;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v35 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v132 = v35;
      _os_log_impl(&dword_1AB634000, v32, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    goto LABEL_25;
  }

  if (rateCopy)
  {
    [rateCopy doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  v27 = modeCopy;
  v34 = durationCopy;
  v33 = weekCopy;
  if (v37 != 0.0 && v37 >= arc4random() / 4294967300.0)
  {
LABEL_25:
    v26[2](v26);
    widgetCopy = v110;
    goto LABEL_10;
  }

  v38 = +[GEOAPStateFactory sharedFactory];
  v98 = v38;
  v90 = statesCopy;
  if ([statesCopy count])
  {
    v39 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v40 = statesCopy;
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
    v27 = modeCopy;
    hourCopy = v111;
    v34 = durationCopy;
    v33 = weekCopy;
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
    v27 = modeCopy;
  }

  v73 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v73 setEventType:13];
  v74 = objc_alloc_init(MEMORY[0x1E69A1F28]);
  [v73 setMapsWidgetsInteractionSession:v74];

  mapsWidgetsInteractionSession = [v73 mapsWidgetsInteractionSession];
  [mapsWidgetsInteractionSession setMapsWidgetType:type];

  mapsWidgetsInteractionSession2 = [v73 mapsWidgetsInteractionSession];
  [mapsWidgetsInteractionSession2 setEndState:state];

  if (v27)
  {
    bOOLValue = [v27 BOOLValue];
    mapsWidgetsInteractionSession3 = [v73 mapsWidgetsInteractionSession];
    [mapsWidgetsInteractionSession3 setLockedMode:bOOLValue];

    hourCopy = v111;
  }

  if (hourCopy)
  {
    integerValue = [hourCopy integerValue];
    mapsWidgetsInteractionSession4 = [v73 mapsWidgetsInteractionSession];
    [mapsWidgetsInteractionSession4 setLocalHour:integerValue];
  }

  if (v33)
  {
    integerValue2 = [v33 integerValue];
    mapsWidgetsInteractionSession5 = [v73 mapsWidgetsInteractionSession];
    [mapsWidgetsInteractionSession5 setLocalDayOfWeek:integerValue2];
  }

  if (v34)
  {
    integerValue3 = [v34 integerValue];
    mapsWidgetsInteractionSession6 = [v73 mapsWidgetsInteractionSession];
    [mapsWidgetsInteractionSession6 setDuration:integerValue3];
  }

  mapsWidgetsInteractionSession7 = [v73 mapsWidgetsInteractionSession];
  [mapsWidgetsInteractionSession7 setMapsNearbyWidget:v110];

  mapsWidgetsInteractionSession8 = [v73 mapsWidgetsInteractionSession];
  [mapsWidgetsInteractionSession8 setMapsTransitWidget:transitWidgetCopy];

  mapsWidgetsInteractionSession9 = [v73 mapsWidgetsInteractionSession];
  [mapsWidgetsInteractionSession9 setMapsDestinationsWidget:destinationsWidgetCopy];

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
  widgetCopy = v110;
  hourCopy = v111;
  statesCopy = v90;
  v27 = modeCopy;
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

+ (void)captureVlfUsageWithEntryPoint:(id)point sessionTimeMs:(id)ms timeRoundedToHour:(id)hour localizationDetails:(id)details finalState:(int)state postFusionCorrection:(id)correction initialPositionContextClassification:(GEOVLFPositionContextClassification *)classification initialLocation:(id)self0 initializationFailureDetails:(id)self1 arStates:(id)self2 deviceOrientations:(id)self3 crowdsourcingDetails:(id)self4 arFailureTypes:(id)self5 additionalStates:(id)self6 providedDropRate:(id)self7 completionQueue:(id)self8 completionBlock:(id)self9
{
  v164 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  msCopy = ms;
  hourCopy = hour;
  detailsCopy = details;
  correctionCopy = correction;
  locationCopy = location;
  failureDetailsCopy = failureDetails;
  statesCopy = states;
  orientationsCopy = orientations;
  crowdsourcingDetailsCopy = crowdsourcingDetails;
  typesCopy = types;
  additionalStatesCopy = additionalStates;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 3221225472;
  v156[2] = __341__GEOAPPortal_captureVlfUsageWithEntryPoint_sessionTimeMs_timeRoundedToHour_localizationDetails_finalState_postFusionCorrection_initialPositionContextClassification_initialLocation_initializationFailureDetails_arStates_deviceOrientations_crowdsourcingDetails_arFailureTypes_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v156[3] = &unk_1E7959478;
  v32 = blockCopy;
  v158 = v32;
  v33 = queueCopy;
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
  v130 = hourCopy;
  v35 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v35 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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
    hourCopy = v130;
  }

  else
  {
    if (rateCopy)
    {
      [rateCopy doubleValue];
    }

    else
    {
      GEOConfigGetDouble();
    }

    v33 = v129;
    hourCopy = v130;
    if (v39 != 0.0 && v39 >= arc4random() / 4294967300.0)
    {
      goto LABEL_2;
    }

    v114 = v32;
    v118 = +[GEOAPStateFactory sharedFactory];
    v121 = statesCopy;
    v122 = failureDetailsCopy;
    v119 = crowdsourcingDetailsCopy;
    v120 = orientationsCopy;
    v115 = typesCopy;
    v123 = locationCopy;
    if ([additionalStatesCopy count])
    {
      v40 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(additionalStatesCopy, "count")}];
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      v41 = additionalStatesCopy;
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
      v49 = msCopy;
      hourCopy = v130;
    }

    else
    {
      v48 = 0;
      v49 = msCopy;
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

    vlfUsage = [v56 vlfUsage];
    [vlfUsage setEntryPoint:pointCopy];

    if (v49)
    {
      unsignedLongLongValue = [v49 unsignedLongLongValue];
      vlfUsage2 = [v56 vlfUsage];
      [vlfUsage2 setSessionTimeMs:unsignedLongLongValue];

      hourCopy = v130;
    }

    v112 = v51;
    if (hourCopy)
    {
      unsignedLongLongValue2 = [hourCopy unsignedLongLongValue];
      vlfUsage3 = [v56 vlfUsage];
      [vlfUsage3 setTimeRoundedToHour:unsignedLongLongValue2];
    }

    v117 = v50;
    vlfUsage4 = [v56 vlfUsage];
    localizationDetails = [vlfUsage4 localizationDetails];

    if (!localizationDetails)
    {
      v65 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(detailsCopy, "count")}];
      vlfUsage5 = [v56 vlfUsage];
      [vlfUsage5 setLocalizationDetails:v65];
    }

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v67 = detailsCopy;
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
          vlfUsage6 = [v56 vlfUsage];
          localizationDetails2 = [vlfUsage6 localizationDetails];
          v75 = [v72 copy];
          [localizationDetails2 addObject:v75];
        }

        v69 = [v67 countByEnumeratingWithState:&v148 objects:v162 count:16];
      }

      while (v69);
    }

    vlfUsage7 = [v56 vlfUsage];
    [vlfUsage7 setFinalState:state];

    vlfUsage8 = [v56 vlfUsage];
    [vlfUsage8 setPostFusionCorrection:correctionCopy];

    v147 = *classification;
    vlfUsage9 = [v56 vlfUsage];
    buf = v147;
    [vlfUsage9 setInitialPositionContextClassification:&buf];

    vlfUsage10 = [v56 vlfUsage];
    [vlfUsage10 setInitialLocation:v123];

    vlfUsage11 = [v56 vlfUsage];
    [vlfUsage11 setInitializationFailureDetails:v122];

    vlfUsage12 = [v56 vlfUsage];
    arStates = [vlfUsage12 arStates];

    if (!arStates)
    {
      v83 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v121, "count")}];
      vlfUsage13 = [v56 vlfUsage];
      [vlfUsage13 setArStates:v83];
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
          vlfUsage14 = [v56 vlfUsage];
          arStates2 = [vlfUsage14 arStates];
          v93 = [v90 copy];
          [arStates2 addObject:v93];
        }

        v87 = [v85 countByEnumeratingWithState:&v143 objects:v160 count:16];
      }

      while (v87);
    }

    vlfUsage15 = [v56 vlfUsage];
    deviceOrientations = [vlfUsage15 deviceOrientations];

    if (!deviceOrientations)
    {
      v96 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v120, "count")}];
      vlfUsage16 = [v56 vlfUsage];
      [vlfUsage16 setDeviceOrientations:v96];
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
          vlfUsage17 = [v56 vlfUsage];
          deviceOrientations2 = [vlfUsage17 deviceOrientations];
          v106 = [v103 copy];
          [deviceOrientations2 addObject:v106];
        }

        v100 = [v98 countByEnumeratingWithState:&v139 objects:v159 count:16];
      }

      while (v100);
    }

    vlfUsage18 = [v56 vlfUsage];
    [vlfUsage18 setCrowdsourcingDetails:v119];

    vlfUsage19 = [v56 vlfUsage];
    typesCopy = v115;
    [vlfUsage19 setArFailureTypes:v115];

    if (v117)
    {
      [v56 addLogMsgState:?];
    }

    locationCopy = v123;
    orientationsCopy = v120;
    statesCopy = v121;
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
    hourCopy = v130;
    crowdsourcingDetailsCopy = v119;
    failureDetailsCopy = v122;
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

+ (void)captureUgcDeleteLogsWithCertificates:(id)certificates signature:(id)signature trigger:(int)trigger additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v92 = *MEMORY[0x1E69E9840];
  certificatesCopy = certificates;
  signatureCopy = signature;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __136__GEOAPPortal_captureUgcDeleteLogsWithCertificates_signature_trigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v85[3] = &unk_1E7959478;
  v20 = blockCopy;
  v87 = v20;
  v21 = queueCopy;
  v86 = v21;
  v22 = MEMORY[0x1AC5A12F0](v85);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  triggerCopy = trigger;
  v23 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v23 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v72 = signatureCopy;
  v73 = certificatesCopy;
  v70 = v28;
  v67 = rateCopy;
  v68 = statesCopy;
  v66 = v20;
  if ([statesCopy count])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v30 = statesCopy;
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

  logDiscard = [v44 logDiscard];
  certificates = [logDiscard certificates];

  if (!certificates)
  {
    v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v73, "count")}];
    logDiscard2 = [v44 logDiscard];
    [logDiscard2 setCertificates:v48];
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
        logDiscard3 = [v44 logDiscard];
        certificates2 = [logDiscard3 certificates];
        v58 = [v55 copy];
        [certificates2 addObject:v58];
      }

      v52 = [v50 countByEnumeratingWithState:&v77 objects:v88 count:16];
    }

    while (v52);
  }

  logDiscard4 = [v44 logDiscard];
  [logDiscard4 setSignature:v72];

  logDiscard5 = [v44 logDiscard];
  [logDiscard5 setTrigger:triggerCopy];

  if (v69)
  {
    [v44 addLogMsgState:v69];
  }

  rateCopy = v67;
  statesCopy = v68;
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
  signatureCopy = v72;
  certificatesCopy = v73;
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

+ (void)captureTtlInitialTimeWithTravelTime:(id)time additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v68 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __117__GEOAPPortal_captureTtlInitialTimeWithTravelTime_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v62[3] = &unk_1E7959478;
  v16 = blockCopy;
  v64 = v16;
  v17 = queueCopy;
  v63 = v17;
  v18 = MEMORY[0x1AC5A12F0](v62);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_21;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  platformDiagAndUsage = [v19 platformDiagAndUsage];

  if ((platformDiagAndUsage & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v21 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v53 = statesCopy;
  if ([statesCopy count])
  {
    v50 = v16;
    v51 = timeCopy;
    v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = statesCopy;
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
    timeCopy = v51;
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

  if (timeCopy)
  {
    [timeCopy doubleValue];
    v45 = v44;
    [v42 timeToLeaveInitialTravelTimeEvent];
    v47 = v46 = timeCopy;
    [v47 setTravelTime:v45];

    timeCopy = v46;
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
  statesCopy = v53;
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

+ (void)captureTtlHypothesisWithArrival:(int)arrival departure:(int)departure ttlUiNotificationShown:(int)shown earliestArrivalOffset:(id)offset earliestDepartureOffset:(id)departureOffset latestArrivalOffset:(id)arrivalOffset latestDepartureOffset:(id)latestDepartureOffset numberOfReroutes:(id)self0 additionalStates:(id)self1 providedDropRate:(id)self2 completionQueue:(id)self3 completionBlock:(id)self4
{
  v96 = *MEMORY[0x1E69E9840];
  offsetCopy = offset;
  departureOffsetCopy = departureOffset;
  arrivalOffsetCopy = arrivalOffset;
  latestDepartureOffsetCopy = latestDepartureOffset;
  reroutesCopy = reroutes;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __251__GEOAPPortal_captureTtlHypothesisWithArrival_departure_ttlUiNotificationShown_earliestArrivalOffset_earliestDepartureOffset_latestArrivalOffset_latestDepartureOffset_numberOfReroutes_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v90[3] = &unk_1E7959478;
  v24 = blockCopy;
  v92 = v24;
  v25 = queueCopy;
  v91 = v25;
  v26 = MEMORY[0x1AC5A12F0](v90);
  v82 = rateCopy;
  if (!GEOConfigGetBOOL())
  {
    v79 = v25;
    v80 = v24;
    v81 = departureOffsetCopy;
    v29 = +[GEOAPServiceManager sharedManager];
    platformDiagAndUsage = [v29 platformDiagAndUsage];

    if (platformDiagAndUsage)
    {
      v31 = +[GEOAPServiceManager sharedManager];
      eventCollectionIsDisabledForCurrentProcess = [v31 eventCollectionIsDisabledForCurrentProcess];

      if (!eventCollectionIsDisabledForCurrentProcess)
      {
        if (rateCopy)
        {
          [rateCopy doubleValue];
        }

        else
        {
          GEOConfigGetDouble();
        }

        v27 = offsetCopy;
        departureOffsetCopy = v81;
        v25 = v79;
        if (v36 != 0.0 && v36 >= arc4random() / 4294967300.0)
        {
          v26[2](v26);
          goto LABEL_3;
        }

        v75 = +[GEOAPStateFactory sharedFactory];
        v70 = statesCopy;
        if ([statesCopy count])
        {
          v73 = latestDepartureOffsetCopy;
          v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v38 = statesCopy;
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
          v27 = offsetCopy;
          latestDepartureOffsetCopy = v73;
          v24 = v80;
        }

        else
        {
          v45 = 0;
        }

        v28 = arrivalOffsetCopy;
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

        statesCopy = v70;
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

        timeToLeaveHypothesisEvent = [v47 timeToLeaveHypothesisEvent];
        [timeToLeaveHypothesisEvent setArrival:arrival];

        timeToLeaveHypothesisEvent2 = [v47 timeToLeaveHypothesisEvent];
        [timeToLeaveHypothesisEvent2 setDeparture:departure];

        timeToLeaveHypothesisEvent3 = [v47 timeToLeaveHypothesisEvent];
        [timeToLeaveHypothesisEvent3 setTtlUiNotificationShown:shown];

        if (v27)
        {
          [v27 doubleValue];
          v53 = v52;
          timeToLeaveHypothesisEvent4 = [v47 timeToLeaveHypothesisEvent];
          [timeToLeaveHypothesisEvent4 setEarliestArrivalOffset:v53];
        }

        if (v81)
        {
          [v81 doubleValue];
          v56 = v55;
          timeToLeaveHypothesisEvent5 = [v47 timeToLeaveHypothesisEvent];
          [timeToLeaveHypothesisEvent5 setEarliestDepartureOffset:v56];
        }

        if (arrivalOffsetCopy)
        {
          [arrivalOffsetCopy doubleValue];
          v59 = v58;
          timeToLeaveHypothesisEvent6 = [v47 timeToLeaveHypothesisEvent];
          [timeToLeaveHypothesisEvent6 setLatestArrivalOffset:v59];
        }

        if (latestDepartureOffsetCopy)
        {
          [latestDepartureOffsetCopy doubleValue];
          v62 = v61;
          timeToLeaveHypothesisEvent7 = [v47 timeToLeaveHypothesisEvent];
          [timeToLeaveHypothesisEvent7 setLatestDepartureOffset:v62];
        }

        if (reroutesCopy)
        {
          unsignedLongLongValue = [reroutesCopy unsignedLongLongValue];
          timeToLeaveHypothesisEvent8 = [v47 timeToLeaveHypothesisEvent];
          [timeToLeaveHypothesisEvent8 setNumberOfReroutes:unsignedLongLongValue];

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
        departureOffsetCopy = v81;
LABEL_11:
        v25 = v79;
        goto LABEL_12;
      }

      v33 = GEOGetGEOAPPortalAnalyticsLog();
      v27 = offsetCopy;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v95 = v34;
        _os_log_impl(&dword_1AB634000, v33, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v26[2](v26);
      departureOffsetCopy = v81;
    }

    else
    {
      v26[2](v26);
      v27 = offsetCopy;
      departureOffsetCopy = v81;
    }

    v28 = arrivalOffsetCopy;
    goto LABEL_11;
  }

  v26[2](v26);
  v27 = offsetCopy;
LABEL_3:
  v28 = arrivalOffsetCopy;
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

+ (void)captureTransitAppLaunchWithBundleIdentifier:(id)identifier source:(id)source destination:(id)destination timestamp:(id)timestamp additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)self0
{
  v79 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sourceCopy = source;
  destinationCopy = destination;
  timestampCopy = timestamp;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __154__GEOAPPortal_captureTransitAppLaunchWithBundleIdentifier_source_destination_timestamp_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v73[3] = &unk_1E7959478;
  v23 = blockCopy;
  v75 = v23;
  v24 = queueCopy;
  v74 = v24;
  v25 = MEMORY[0x1AC5A12F0](v73);
  if (!GEOConfigGetBOOL())
  {
    v65 = v24;
    v66 = statesCopy;
    v27 = +[GEOAPServiceManager sharedManager];
    eventCollectionIsDisabledForCurrentProcess = [v27 eventCollectionIsDisabledForCurrentProcess];

    if (eventCollectionIsDisabledForCurrentProcess)
    {
      v29 = GEOGetGEOAPPortalAnalyticsLog();
      v26 = rateCopy;
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
      v26 = rateCopy;
      if (rateCopy)
      {
        [rateCopy doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      v24 = v65;
      statesCopy = v66;
      if (v31 != 0.0 && v31 >= arc4random() / 4294967300.0)
      {
        v25[2](v25);
        goto LABEL_41;
      }

      v63 = +[GEOAPStateFactory sharedFactory];
      v64 = identifierCopy;
      if ([v66 count])
      {
        v57 = v23;
        v58 = timestampCopy;
        v59 = destinationCopy;
        v61 = sourceCopy;
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
        destinationCopy = v59;
        sourceCopy = v61;
        v23 = v57;
        timestampCopy = v58;
        v26 = rateCopy;
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

      transitAppLaunchEvent = [v46 transitAppLaunchEvent];
      [transitAppLaunchEvent setBundleIdentifier:v64];

      transitAppLaunchEvent2 = [v46 transitAppLaunchEvent];
      [transitAppLaunchEvent2 setSource:sourceCopy];

      transitAppLaunchEvent3 = [v46 transitAppLaunchEvent];
      [transitAppLaunchEvent3 setDestination:destinationCopy];

      if (timestampCopy)
      {
        [timestampCopy doubleValue];
        v52 = v51;
        transitAppLaunchEvent4 = [v46 transitAppLaunchEvent];
        [transitAppLaunchEvent4 setTimestamp:v52];
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
      identifierCopy = v64;
    }

    v24 = v65;
    statesCopy = v66;
    goto LABEL_41;
  }

  v25[2](v25);
  v26 = rateCopy;
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

+ (void)captureTelemetricWithTelemetricEntitys:(id)entitys additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v87 = *MEMORY[0x1E69E9840];
  entitysCopy = entitys;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __120__GEOAPPortal_captureTelemetricWithTelemetricEntitys_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v80[3] = &unk_1E7959478;
  v16 = blockCopy;
  v82 = v16;
  v17 = queueCopy;
  v81 = v17;
  v18 = MEMORY[0x1AC5A12F0](v80);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_21;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  platformDiagAndUsage = [v19 platformDiagAndUsage];

  if ((platformDiagAndUsage & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v21 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v68 = entitysCopy;
  v64 = rateCopy;
  v65 = statesCopy;
  v63 = v16;
  if ([statesCopy count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v28 = statesCopy;
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
    entitysCopy = v68;
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

  telemetric = [v43 telemetric];
  telemetricEntitys = [telemetric telemetricEntitys];

  if (!telemetricEntitys)
  {
    v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(entitysCopy, "count")}];
    telemetric2 = [v43 telemetric];
    [telemetric2 setTelemetricEntitys:v47];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v49 = entitysCopy;
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
        telemetric3 = [v43 telemetric];
        telemetricEntitys2 = [telemetric3 telemetricEntitys];
        v57 = [v54 copy];
        [telemetricEntitys2 addObject:v57];
      }

      v51 = [v49 countByEnumeratingWithState:&v72 objects:v83 count:16];
    }

    while (v51);
  }

  if (v66)
  {
    [v43 addLogMsgState:v66];
  }

  entitysCopy = v68;
  v16 = v63;
  rateCopy = v64;
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
  statesCopy = v65;
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

+ (void)captureTableBookingWithBookTableSessionId:(id)id endState:(int)state endView:(int)view bookTableAppId:(id)appId muid:(id)muid blurredReservationTimestamp:(id)timestamp blurredBookingTimestamp:(id)bookingTimestamp durationOfSessionInSeconds:(id)self0 installNeeded:(id)self1 installNeededTappedAppId:(id)self2 installCompleted:(id)self3 tableSize:(id)self4 addedSpecialRequest:(id)self5 swipedAvailableTimes:(id)self6 tappedDatePicker:(id)self7 errorMessages:(id)self8 additionalStates:(id)self9 providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v142 = *MEMORY[0x1E69E9840];
  idCopy = id;
  appIdCopy = appId;
  muidCopy = muid;
  timestampCopy = timestamp;
  bookingTimestampCopy = bookingTimestamp;
  secondsCopy = seconds;
  neededCopy = needed;
  tappedAppIdCopy = tappedAppId;
  completedCopy = completed;
  sizeCopy = size;
  requestCopy = request;
  timesCopy = times;
  pickerCopy = picker;
  messagesCopy = messages;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = __377__GEOAPPortal_captureTableBookingWithBookTableSessionId_endState_endView_bookTableAppId_muid_blurredReservationTimestamp_blurredBookingTimestamp_durationOfSessionInSeconds_installNeeded_installNeededTappedAppId_installCompleted_tableSize_addedSpecialRequest_swipedAvailableTimes_tappedDatePicker_errorMessages_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v135[3] = &unk_1E7959478;
  v115 = blockCopy;
  v137 = v115;
  v34 = queueCopy;
  v136 = v34;
  v35 = MEMORY[0x1AC5A12F0](v135);
  if (GEOConfigGetBOOL())
  {
    v35[2](v35);
LABEL_7:
    v40 = statesCopy;
    goto LABEL_8;
  }

  v114 = appIdCopy;
  v36 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v36 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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
    appIdCopy = v114;
    goto LABEL_7;
  }

  if (rateCopy)
  {
    [rateCopy doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  appIdCopy = v114;
  v40 = statesCopy;
  if (v42 == 0.0 || v42 < arc4random() / 4294967300.0)
  {
    v104 = +[GEOAPStateFactory sharedFactory];
    v105 = bookingTimestampCopy;
    v101 = completedCopy;
    v102 = neededCopy;
    v99 = requestCopy;
    v100 = sizeCopy;
    v103 = muidCopy;
    if ([statesCopy count])
    {
      v43 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v44 = statesCopy;
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
      appIdCopy = v114;
      neededCopy = v102;
      muidCopy = v103;
      sizeCopy = v100;
      requestCopy = v99;
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

    tableBookingSession = [v55 tableBookingSession];
    [tableBookingSession setBookTableSessionId:idCopy];

    tableBookingSession2 = [v55 tableBookingSession];
    [tableBookingSession2 setEndState:state];

    tableBookingSession3 = [v55 tableBookingSession];
    [tableBookingSession3 setEndView:view];

    tableBookingSession4 = [v55 tableBookingSession];
    [tableBookingSession4 setBookTableAppId:appIdCopy];

    if (muidCopy)
    {
      unsignedLongLongValue = [muidCopy unsignedLongLongValue];
      tableBookingSession5 = [v55 tableBookingSession];
      [tableBookingSession5 setMuid:unsignedLongLongValue];
    }

    if (timestampCopy)
    {
      integerValue = [timestampCopy integerValue];
      tableBookingSession6 = [v55 tableBookingSession];
      [tableBookingSession6 setBlurredReservationTimestamp:integerValue];
    }

    if (v105)
    {
      integerValue2 = [v105 integerValue];
      tableBookingSession7 = [v55 tableBookingSession];
      [tableBookingSession7 setBlurredBookingTimestamp:integerValue2];
    }

    if (secondsCopy)
    {
      [secondsCopy doubleValue];
      v68 = v67;
      tableBookingSession8 = [v55 tableBookingSession];
      [tableBookingSession8 setDurationOfSessionInSeconds:v68];
    }

    if (neededCopy)
    {
      bOOLValue = [neededCopy BOOLValue];
      tableBookingSession9 = [v55 tableBookingSession];
      [tableBookingSession9 setInstallNeeded:bOOLValue];
    }

    tableBookingSession10 = [v55 tableBookingSession];
    [tableBookingSession10 setInstallNeededTappedAppId:tappedAppIdCopy];

    if (completedCopy)
    {
      bOOLValue2 = [completedCopy BOOLValue];
      tableBookingSession11 = [v55 tableBookingSession];
      [tableBookingSession11 setInstallCompleted:bOOLValue2];
    }

    if (sizeCopy)
    {
      unsignedLongLongValue2 = [sizeCopy unsignedLongLongValue];
      tableBookingSession12 = [v55 tableBookingSession];
      [tableBookingSession12 setTableSize:unsignedLongLongValue2];
    }

    if (requestCopy)
    {
      bOOLValue3 = [requestCopy BOOLValue];
      tableBookingSession13 = [v55 tableBookingSession];
      [tableBookingSession13 setAddedSpecialRequest:bOOLValue3];
    }

    if (timesCopy)
    {
      bOOLValue4 = [timesCopy BOOLValue];
      tableBookingSession14 = [v55 tableBookingSession];
      [tableBookingSession14 setSwipedAvailableTimes:bOOLValue4];
    }

    if (pickerCopy)
    {
      bOOLValue5 = [pickerCopy BOOLValue];
      tableBookingSession15 = [v55 tableBookingSession];
      [tableBookingSession15 setTappedDatePicker:bOOLValue5];
    }

    tableBookingSession16 = [v55 tableBookingSession];
    errorMessages = [tableBookingSession16 errorMessages];

    if (!errorMessages)
    {
      v85 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(messagesCopy, "count")}];
      tableBookingSession17 = [v55 tableBookingSession];
      [tableBookingSession17 setErrorMessages:v85];
    }

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v87 = messagesCopy;
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
          tableBookingSession18 = [v55 tableBookingSession];
          errorMessages2 = [tableBookingSession18 errorMessages];
          v95 = [v92 copy];
          [errorMessages2 addObject:v95];
        }

        v89 = [v87 countByEnumeratingWithState:&v127 objects:v138 count:16];
      }

      while (v89);
    }

    if (v109)
    {
      [v55 addLogMsgState:?];
    }

    appIdCopy = v114;
    completedCopy = v101;
    neededCopy = v102;
    sizeCopy = v100;
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
    muidCopy = v103;
    bookingTimestampCopy = v105;
    v40 = statesCopy;
    requestCopy = v99;
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

+ (void)captureTableBookedWithBookedTableSessionId:(id)id bookedTables:(id)tables additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v92 = *MEMORY[0x1E69E9840];
  idCopy = id;
  tablesCopy = tables;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __137__GEOAPPortal_captureTableBookedWithBookedTableSessionId_bookedTables_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v85[3] = &unk_1E7959478;
  v19 = blockCopy;
  v87 = v19;
  v20 = queueCopy;
  v86 = v20;
  v21 = MEMORY[0x1AC5A12F0](v85);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v22 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v22 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v70 = tablesCopy;
  v71 = idCopy;
  v65 = rateCopy;
  v66 = statesCopy;
  v64 = v19;
  if ([statesCopy count])
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v29 = statesCopy;
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
    tablesCopy = v70;
    idCopy = v71;
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

  tableBookedSession = [v43 tableBookedSession];
  [tableBookedSession setBookedTableSessionId:idCopy];

  tableBookedSession2 = [v43 tableBookedSession];
  bookedTables = [tableBookedSession2 bookedTables];

  if (!bookedTables)
  {
    v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(tablesCopy, "count")}];
    tableBookedSession3 = [v43 tableBookedSession];
    [tableBookedSession3 setBookedTables:v48];
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v50 = tablesCopy;
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
        tableBookedSession4 = [v43 tableBookedSession];
        bookedTables2 = [tableBookedSession4 bookedTables];
        v58 = [v55 copy];
        [bookedTables2 addObject:v58];
      }

      v52 = [v50 countByEnumeratingWithState:&v77 objects:v88 count:16];
    }

    while (v52);
  }

  if (v68)
  {
    [v43 addLogMsgState:v68];
  }

  tablesCopy = v70;
  idCopy = v71;
  statesCopy = v66;
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
  rateCopy = v65;
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

+ (void)captureShowcaseSuppressionWithBusinessId:(id)id localSearchProviderID:(id)d showcaseId:(id)showcaseId suppressionReason:(int)reason adamId:(id)adamId additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)self0 completionBlock:(id)self1
{
  v83 = *MEMORY[0x1E69E9840];
  idCopy = id;
  dCopy = d;
  showcaseIdCopy = showcaseId;
  adamIdCopy = adamId;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __180__GEOAPPortal_captureShowcaseSuppressionWithBusinessId_localSearchProviderID_showcaseId_suppressionReason_adamId_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v77[3] = &unk_1E7959478;
  v23 = blockCopy;
  v79 = v23;
  v24 = queueCopy;
  v78 = v24;
  v25 = MEMORY[0x1AC5A12F0](v77);
  if (GEOConfigGetBOOL())
  {
    v25[2](v25);
    goto LABEL_56;
  }

  v70 = statesCopy;
  v26 = adamIdCopy;
  v27 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v27 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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
    adamIdCopy = v26;
    goto LABEL_22;
  }

  if (rateCopy)
  {
    [rateCopy doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  adamIdCopy = v26;
  if (v31 != 0.0 && v31 >= arc4random() / 4294967300.0)
  {
    v25[2](v25);
LABEL_22:
    statesCopy = v70;
    goto LABEL_56;
  }

  v60 = +[GEOAPStateFactory sharedFactory];
  v61 = idCopy;
  v65 = dCopy;
  if ([v70 count])
  {
    v63 = rateCopy;
    v67 = showcaseIdCopy;
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
    rateCopy = v63;
    dCopy = v65;
    showcaseIdCopy = v67;
    adamIdCopy = v26;
  }

  else
  {
    v66 = 0;
  }

  statesCopy = v70;
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
    unsignedLongLongValue = [v61 unsignedLongLongValue];
    showcaseSuppression = [v46 showcaseSuppression];
    [showcaseSuppression setBusinessId:unsignedLongLongValue];

    dCopy = v65;
  }

  if (dCopy)
  {
    integerValue = [dCopy integerValue];
    showcaseSuppression2 = [v46 showcaseSuppression];
    [showcaseSuppression2 setLocalSearchProviderID:integerValue];
  }

  showcaseSuppression3 = [v46 showcaseSuppression];
  [showcaseSuppression3 setShowcaseId:showcaseIdCopy];

  showcaseSuppression4 = [v46 showcaseSuppression];
  [showcaseSuppression4 setSuppressionReason:reason];

  showcaseSuppression5 = [v46 showcaseSuppression];
  [showcaseSuppression5 setAdamId:adamIdCopy];

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
  idCopy = v61;
  dCopy = v65;
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

+ (void)captureRideBookingWithRideBookingSessionId:(id)id statusIssue:(int)issue endState:(int)state endView:(int)view rideAppId:(id)appId rideAppVersion:(id)version originBlurred:(id)blurred destinationBlurred:(id)self0 exploredOtherOptions:(id)self1 distanceToPickupInMeters:(id)self2 paymentIsApplePay:(id)self3 numberOfAvailableExtensions:(id)self4 switchedApp:(id)self5 comparedRideOptions:(id)self6 showedSurgePricingAlert:(id)self7 durationOfSessionInSeconds:(id)self8 installedApp:(id)self9 timestamp:(id)timestamp unavailable:(id)unavailable movedPickupLocation:(id)location errorMessages:(id)messages intentResponseFailures:(id)failures additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v183 = *MEMORY[0x1E69E9840];
  idCopy = id;
  appIdCopy = appId;
  versionCopy = version;
  blurredCopy = blurred;
  destinationBlurredCopy = destinationBlurred;
  optionsCopy = options;
  metersCopy = meters;
  payCopy = pay;
  extensionsCopy = extensions;
  appCopy = app;
  rideOptionsCopy = rideOptions;
  alertCopy = alert;
  secondsCopy = seconds;
  installedAppCopy = installedApp;
  timestampCopy = timestamp;
  unavailableCopy = unavailable;
  locationCopy = location;
  messagesCopy = messages;
  failuresCopy = failures;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v175[0] = MEMORY[0x1E69E9820];
  v175[1] = 3221225472;
  v175[2] = __478__GEOAPPortal_captureRideBookingWithRideBookingSessionId_statusIssue_endState_endView_rideAppId_rideAppVersion_originBlurred_destinationBlurred_exploredOtherOptions_distanceToPickupInMeters_paymentIsApplePay_numberOfAvailableExtensions_switchedApp_comparedRideOptions_showedSurgePricingAlert_durationOfSessionInSeconds_installedApp_timestamp_unavailable_movedPickupLocation_errorMessages_intentResponseFailures_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v175[3] = &unk_1E7959478;
  v147 = blockCopy;
  v177 = v147;
  v40 = queueCopy;
  v176 = v40;
  v41 = MEMORY[0x1AC5A12F0](v175);
  if (GEOConfigGetBOOL())
  {
LABEL_2:
    v41[2](v41);
    goto LABEL_99;
  }

  v145 = statesCopy;
  v146 = rideOptionsCopy;
  v42 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v42 eventCollectionIsDisabledForCurrentProcess];

  v141 = destinationBlurredCopy;
  if (eventCollectionIsDisabledForCurrentProcess)
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
    destinationBlurredCopy = v141;
    statesCopy = v145;
    rideOptionsCopy = v146;
  }

  else
  {
    if (rateCopy)
    {
      [rateCopy doubleValue];
    }

    else
    {
      GEOConfigGetDouble();
    }

    statesCopy = v145;
    rideOptionsCopy = v146;
    if (v46 != 0.0 && v46 >= arc4random() / 4294967300.0)
    {
      goto LABEL_2;
    }

    v136 = +[GEOAPStateFactory sharedFactory];
    v131 = versionCopy;
    v132 = appIdCopy;
    v129 = extensionsCopy;
    v130 = payCopy;
    v137 = appCopy;
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
      versionCopy = v131;
      appIdCopy = v132;
      extensionsCopy = v129;
      rideOptionsCopy = v146;
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

    rideBookingSession = [v63 rideBookingSession];
    [rideBookingSession setRideBookingSessionId:idCopy];

    rideBookingSession2 = [v63 rideBookingSession];
    [rideBookingSession2 setStatusIssue:issue];

    rideBookingSession3 = [v63 rideBookingSession];
    [rideBookingSession3 setEndState:state];

    rideBookingSession4 = [v63 rideBookingSession];
    [rideBookingSession4 setEndView:view];

    rideBookingSession5 = [v63 rideBookingSession];
    [rideBookingSession5 setRideAppId:appIdCopy];

    rideBookingSession6 = [v63 rideBookingSession];
    [rideBookingSession6 setRideAppVersion:versionCopy];

    rideBookingSession7 = [v63 rideBookingSession];
    [rideBookingSession7 setOriginBlurred:blurredCopy];

    rideBookingSession8 = [v63 rideBookingSession];
    [rideBookingSession8 setDestinationBlurred:v141];

    if (optionsCopy)
    {
      bOOLValue = [optionsCopy BOOLValue];
      rideBookingSession9 = [v63 rideBookingSession];
      [rideBookingSession9 setExploredOtherOptions:bOOLValue];
    }

    if (metersCopy)
    {
      [metersCopy doubleValue];
      v76 = v75;
      rideBookingSession10 = [v63 rideBookingSession];
      [rideBookingSession10 setDistanceToPickupInMeters:v76];
    }

    if (payCopy)
    {
      bOOLValue2 = [payCopy BOOLValue];
      rideBookingSession11 = [v63 rideBookingSession];
      [rideBookingSession11 setPaymentIsApplePay:bOOLValue2];
    }

    if (extensionsCopy)
    {
      unsignedLongLongValue = [extensionsCopy unsignedLongLongValue];
      rideBookingSession12 = [v63 rideBookingSession];
      [rideBookingSession12 setNumberOfAvailableExtensions:unsignedLongLongValue];
    }

    if (v137)
    {
      bOOLValue3 = [v137 BOOLValue];
      rideBookingSession13 = [v63 rideBookingSession];
      [rideBookingSession13 setSwitchedApp:bOOLValue3];
    }

    if (rideOptionsCopy)
    {
      bOOLValue4 = [rideOptionsCopy BOOLValue];
      rideBookingSession14 = [v63 rideBookingSession];
      [rideBookingSession14 setComparedRideOptions:bOOLValue4];
    }

    if (alertCopy)
    {
      bOOLValue5 = [alertCopy BOOLValue];
      rideBookingSession15 = [v63 rideBookingSession];
      [rideBookingSession15 setShowedSurgePricingAlert:bOOLValue5];
    }

    if (secondsCopy)
    {
      [secondsCopy doubleValue];
      v89 = v88;
      rideBookingSession16 = [v63 rideBookingSession];
      [rideBookingSession16 setDurationOfSessionInSeconds:v89];
    }

    if (installedAppCopy)
    {
      bOOLValue6 = [installedAppCopy BOOLValue];
      rideBookingSession17 = [v63 rideBookingSession];
      [rideBookingSession17 setInstalledApp:bOOLValue6];
    }

    if (timestampCopy)
    {
      integerValue = [timestampCopy integerValue];
      rideBookingSession18 = [v63 rideBookingSession];
      [rideBookingSession18 setTimestamp:integerValue];
    }

    if (unavailableCopy)
    {
      bOOLValue7 = [unavailableCopy BOOLValue];
      rideBookingSession19 = [v63 rideBookingSession];
      [rideBookingSession19 setUnavailable:bOOLValue7];
    }

    if (locationCopy)
    {
      bOOLValue8 = [locationCopy BOOLValue];
      rideBookingSession20 = [v63 rideBookingSession];
      [rideBookingSession20 setMovedPickupLocation:bOOLValue8];
    }

    rideBookingSession21 = [v63 rideBookingSession];
    errorMessages = [rideBookingSession21 errorMessages];

    if (!errorMessages)
    {
      v101 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(messagesCopy, "count")}];
      rideBookingSession22 = [v63 rideBookingSession];
      [rideBookingSession22 setErrorMessages:v101];
    }

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v103 = messagesCopy;
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
          rideBookingSession23 = [v63 rideBookingSession];
          errorMessages2 = [rideBookingSession23 errorMessages];
          v111 = [v108 copy];
          [errorMessages2 addObject:v111];
        }

        v105 = [v103 countByEnumeratingWithState:&v167 objects:v179 count:16];
      }

      while (v105);
    }

    rideBookingSession24 = [v63 rideBookingSession];
    intentResponseFailures = [rideBookingSession24 intentResponseFailures];

    if (!intentResponseFailures)
    {
      v114 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(failuresCopy, "count")}];
      rideBookingSession25 = [v63 rideBookingSession];
      [rideBookingSession25 setIntentResponseFailures:v114];
    }

    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v116 = failuresCopy;
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
          rideBookingSession26 = [v63 rideBookingSession];
          intentResponseFailures2 = [rideBookingSession26 intentResponseFailures];
          v124 = [v121 copy];
          [intentResponseFailures2 addObject:v124];
        }

        v118 = [v116 countByEnumeratingWithState:&v163 objects:v178 count:16];
      }

      while (v118);
    }

    if (v138)
    {
      [v63 addLogMsgState:?];
    }

    appIdCopy = v132;
    payCopy = v130;
    rideOptionsCopy = v146;
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
    destinationBlurredCopy = v141;
    appCopy = v137;
    statesCopy = v145;
    extensionsCopy = v129;
    versionCopy = v131;
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

+ (void)captureRideBookedWithRideBookedSessionId:(id)id bookedUsingMaps:(id)maps cancelled:(id)cancelled contactedDriver:(id)driver viewedInProactiveTray:(id)tray tappedProactiveTrayItem:(id)item viewedDetails:(id)details invalidVehicleLocation:(id)self0 missingVehicleLocation:(id)self1 rideAppId:(id)self2 rideAppVersion:(id)self3 intentResponseFailures:(id)self4 additionalStates:(id)self5 providedDropRate:(id)self6 completionQueue:(id)self7 completionBlock:(id)self8
{
  v133 = *MEMORY[0x1E69E9840];
  idCopy = id;
  mapsCopy = maps;
  cancelledCopy = cancelled;
  driverCopy = driver;
  trayCopy = tray;
  itemCopy = item;
  detailsCopy = details;
  locationCopy = location;
  vehicleLocationCopy = vehicleLocation;
  appIdCopy = appId;
  versionCopy = version;
  failuresCopy = failures;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __318__GEOAPPortal_captureRideBookedWithRideBookedSessionId_bookedUsingMaps_cancelled_contactedDriver_viewedInProactiveTray_tappedProactiveTrayItem_viewedDetails_invalidVehicleLocation_missingVehicleLocation_rideAppId_rideAppVersion_intentResponseFailures_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v126[3] = &unk_1E7959478;
  v108 = blockCopy;
  v128 = v108;
  v33 = queueCopy;
  v127 = v33;
  v34 = MEMORY[0x1AC5A12F0](v126);
  v112 = driverCopy;
  if (GEOConfigGetBOOL())
  {
    v34[2](v34);
    v35 = mapsCopy;
  }

  else
  {
    v106 = statesCopy;
    v107 = failuresCopy;
    v36 = +[GEOAPServiceManager sharedManager];
    eventCollectionIsDisabledForCurrentProcess = [v36 eventCollectionIsDisabledForCurrentProcess];

    if (eventCollectionIsDisabledForCurrentProcess)
    {
      v38 = GEOGetGEOAPPortalAnalyticsLog();
      v35 = mapsCopy;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v39 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v132 = v39;
        _os_log_impl(&dword_1AB634000, v38, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v34[2](v34);
      statesCopy = v106;
      failuresCopy = v107;
    }

    else
    {
      v35 = mapsCopy;
      if (rateCopy)
      {
        [rateCopy doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      statesCopy = v106;
      failuresCopy = v107;
      if (v40 == 0.0 || v40 < arc4random() / 4294967300.0)
      {
        v41 = +[GEOAPStateFactory sharedFactory];
        v98 = cancelledCopy;
        v99 = trayCopy;
        v96 = locationCopy;
        v97 = detailsCopy;
        v94 = v41;
        v95 = vehicleLocationCopy;
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
          v35 = mapsCopy;
          cancelledCopy = v98;
          vehicleLocationCopy = v95;
          locationCopy = v96;
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

        rideBookedSession = [v55 rideBookedSession];
        [rideBookedSession setRideBookedSessionId:idCopy];

        if (v35)
        {
          bOOLValue = [v35 BOOLValue];
          rideBookedSession2 = [v55 rideBookedSession];
          [rideBookedSession2 setBookedUsingMaps:bOOLValue];
        }

        if (cancelledCopy)
        {
          bOOLValue2 = [cancelledCopy BOOLValue];
          rideBookedSession3 = [v55 rideBookedSession];
          [rideBookedSession3 setCancelled:bOOLValue2];
        }

        if (v112)
        {
          bOOLValue3 = [v112 BOOLValue];
          rideBookedSession4 = [v55 rideBookedSession];
          [rideBookedSession4 setContactedDriver:bOOLValue3];
        }

        if (v99)
        {
          bOOLValue4 = [v99 BOOLValue];
          rideBookedSession5 = [v55 rideBookedSession];
          [rideBookedSession5 setViewedInProactiveTray:bOOLValue4];
        }

        if (itemCopy)
        {
          bOOLValue5 = [itemCopy BOOLValue];
          rideBookedSession6 = [v55 rideBookedSession];
          [rideBookedSession6 setTappedProactiveTrayItem:bOOLValue5];
        }

        if (detailsCopy)
        {
          bOOLValue6 = [detailsCopy BOOLValue];
          rideBookedSession7 = [v55 rideBookedSession];
          [rideBookedSession7 setViewedDetails:bOOLValue6];
        }

        if (locationCopy)
        {
          bOOLValue7 = [locationCopy BOOLValue];
          rideBookedSession8 = [v55 rideBookedSession];
          [rideBookedSession8 setInvalidVehicleLocation:bOOLValue7];
        }

        if (vehicleLocationCopy)
        {
          bOOLValue8 = [vehicleLocationCopy BOOLValue];
          rideBookedSession9 = [v55 rideBookedSession];
          [rideBookedSession9 setMissingVehicleLocation:bOOLValue8];
        }

        rideBookedSession10 = [v55 rideBookedSession];
        [rideBookedSession10 setRideAppId:appIdCopy];

        rideBookedSession11 = [v55 rideBookedSession];
        [rideBookedSession11 setRideAppVersion:versionCopy];

        rideBookedSession12 = [v55 rideBookedSession];
        intentResponseFailures = [rideBookedSession12 intentResponseFailures];

        if (!intentResponseFailures)
        {
          v78 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v107, "count")}];
          rideBookedSession13 = [v55 rideBookedSession];
          [rideBookedSession13 setIntentResponseFailures:v78];
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
              rideBookedSession14 = [v55 rideBookedSession];
              intentResponseFailures2 = [rideBookedSession14 intentResponseFailures];
              v88 = [v85 copy];
              [intentResponseFailures2 addObject:v88];
            }

            v82 = [v80 countByEnumeratingWithState:&v118 objects:v129 count:16];
          }

          while (v82);
        }

        if (v103)
        {
          [v55 addLogMsgState:?];
        }

        detailsCopy = v97;
        cancelledCopy = v98;
        vehicleLocationCopy = v95;
        failuresCopy = v107;
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
        v35 = mapsCopy;
        trayCopy = v99;
        statesCopy = v106;
        locationCopy = v96;
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

+ (void)captureRedactedDirectionsServiceMetadataWithRedactedDirectionsMetadata:(id)metadata GEORedactedDirectionsClientMetadata_destinationHash:(id)hash GEORedactedDirectionsClientMetadata_predictedDepartureTimeDelta:(id)delta additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v80 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  hashCopy = hash;
  deltaCopy = delta;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __268__GEOAPPortal_captureRedactedDirectionsServiceMetadataWithRedactedDirectionsMetadata_GEORedactedDirectionsClientMetadata_destinationHash_GEORedactedDirectionsClientMetadata_predictedDepartureTimeDelta_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v74[3] = &unk_1E7959478;
  v21 = blockCopy;
  v76 = v21;
  v22 = queueCopy;
  v75 = v22;
  v23 = MEMORY[0x1AC5A12F0](v74);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v24 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v65 = hashCopy;
  v66 = metadataCopy;
  v61 = v29;
  v62 = statesCopy;
  if ([statesCopy count])
  {
    v58 = v21;
    v63 = deltaCopy;
    v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v31 = statesCopy;
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
    deltaCopy = v63;
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

  statesCopy = v62;
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

  redactedServiceMetadata = [v45 redactedServiceMetadata];
  [redactedServiceMetadata setRedactedDirectionsMetadata:v66];

  v48 = objc_alloc_init(MEMORY[0x1E69A2428]);
  redactedServiceMetadata2 = [v45 redactedServiceMetadata];
  [redactedServiceMetadata2 setRedactedDirectionsClientMetadata:v48];

  if (deltaCopy)
  {
    +[GEOAPFuzzers fiveMinResolution:](GEOAPFuzzers, "fiveMinResolution:", [deltaCopy integerValue]);
    v51 = v50;
    redactedServiceMetadata3 = [v45 redactedServiceMetadata];
    [redactedServiceMetadata3 redactedDirectionsClientMetadata];
    v54 = v53 = deltaCopy;
    [v54 setPredictedDepartureTimeDelta:v51];

    deltaCopy = v53;
    statesCopy = v62;
  }

  redactedServiceMetadata4 = [v45 redactedServiceMetadata];
  [redactedServiceMetadata4 setServiceMetadataType:3];

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
  hashCopy = v65;

  metadataCopy = v66;
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

+ (void)captureRealTrafficWithLocationCollection:(id)collection additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v59 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __122__GEOAPPortal_captureRealTrafficWithLocationCollection_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v53[3] = &unk_1E7959478;
  v16 = blockCopy;
  v55 = v16;
  v17 = queueCopy;
  v54 = v17;
  v18 = MEMORY[0x1AC5A12F0](v53);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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

  v46 = collectionCopy;
  v45 = +[GEOAPStateFactory sharedFactory];
  v44 = statesCopy;
  if ([statesCopy count])
  {
    v42 = v16;
    v43 = rateCopy;
    v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v25 = statesCopy;
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
    rateCopy = v43;
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

  statesCopy = v44;
  v37 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v37 setEventType:26];
  v38 = objc_alloc_init(MEMORY[0x1E69A1F78]);
  [v37 setRealtimeTrafficProbeCollection:v38];

  realtimeTrafficProbeCollection = [v37 realtimeTrafficProbeCollection];
  [realtimeTrafficProbeCollection setLocationCollection:v46];

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
  collectionCopy = v46;
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

+ (void)captureProactiveSuggestionWithListType:(int)type interactedItemIndex:(id)index duration:(id)duration proactiveItems:(id)items additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)self0
{
  v96 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  durationCopy = duration;
  itemsCopy = items;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __164__GEOAPPortal_captureProactiveSuggestionWithListType_interactedItemIndex_duration_proactiveItems_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v89[3] = &unk_1E7959478;
  v21 = blockCopy;
  v91 = v21;
  v22 = queueCopy;
  v90 = v22;
  v23 = MEMORY[0x1AC5A12F0](v89);
  if (GEOConfigGetBOOL())
  {
LABEL_2:
    v23[2](v23);
    goto LABEL_50;
  }

  v78 = rateCopy;
  v24 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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
    rateCopy = v78;
  }

  else
  {
    rateCopy = v78;
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

    v75 = durationCopy;
    v29 = +[GEOAPStateFactory sharedFactory];
    v74 = indexCopy;
    v68 = v21;
    v69 = statesCopy;
    v71 = v29;
    v72 = itemsCopy;
    if ([statesCopy count])
    {
      v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v31 = statesCopy;
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
      itemsCopy = v72;
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

    proactiveSuggestionInteractionSessionEvent = [v43 proactiveSuggestionInteractionSessionEvent];
    [proactiveSuggestionInteractionSessionEvent setListType:type];

    if (v74)
    {
      integerValue = [v74 integerValue];
      proactiveSuggestionInteractionSessionEvent2 = [v43 proactiveSuggestionInteractionSessionEvent];
      [proactiveSuggestionInteractionSessionEvent2 setInteractedItemIndex:integerValue];

      v41 = v75;
    }

    if (v41)
    {
      integerValue2 = [v41 integerValue];
      proactiveSuggestionInteractionSessionEvent3 = [v43 proactiveSuggestionInteractionSessionEvent];
      [proactiveSuggestionInteractionSessionEvent3 setDuration:integerValue2];
    }

    v77 = v38;
    proactiveSuggestionInteractionSessionEvent4 = [v43 proactiveSuggestionInteractionSessionEvent];
    proactiveItems = [proactiveSuggestionInteractionSessionEvent4 proactiveItems];

    if (!proactiveItems)
    {
      v52 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
      proactiveSuggestionInteractionSessionEvent5 = [v43 proactiveSuggestionInteractionSessionEvent];
      [proactiveSuggestionInteractionSessionEvent5 setProactiveItems:v52];
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v54 = itemsCopy;
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
          proactiveSuggestionInteractionSessionEvent6 = [v43 proactiveSuggestionInteractionSessionEvent];
          proactiveItems2 = [proactiveSuggestionInteractionSessionEvent6 proactiveItems];
          v62 = [v59 copy];
          [proactiveItems2 addObject:v62];
        }

        v56 = [v54 countByEnumeratingWithState:&v81 objects:v92 count:16];
      }

      while (v56);
    }

    if (v73)
    {
      [v43 addLogMsgState:?];
    }

    itemsCopy = v72;
    v21 = v68;
    statesCopy = v69;
    rateCopy = v78;
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
    indexCopy = v74;
    durationCopy = v75;
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

+ (void)capturePressureDataWithPressureData:(id)data additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v59 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __117__GEOAPPortal_capturePressureDataWithPressureData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v53[3] = &unk_1E7959478;
  v16 = blockCopy;
  v55 = v16;
  v17 = queueCopy;
  v54 = v17;
  v18 = MEMORY[0x1AC5A12F0](v53);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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

  v46 = dataCopy;
  v45 = +[GEOAPStateFactory sharedFactory];
  v44 = statesCopy;
  if ([statesCopy count])
  {
    v42 = v16;
    v43 = rateCopy;
    v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v25 = statesCopy;
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
    rateCopy = v43;
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

  statesCopy = v44;
  v37 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v37 setEventType:51];
  v38 = objc_alloc_init(MEMORY[0x1E69A1F68]);
  [v37 setPressureData:v38];

  pressureData = [v37 pressureData];
  [pressureData setPressureData:v46];

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
  dataCopy = v46;
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

+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)precipitation chanceOfRain:(id)rain chanceOfSnow:(id)snow endTime:(id)time durationUntilEventEnd:(id)end durationUntilEventStart:(id)start startTime:(id)startTime temperature:(id)self0 timeOfDay:(id)self1 timeSinceBackgrounded:(id)self2 actualTransportMode:(int)self3 dayOfWeek:(id)self4 distanceFromHereToHome:(int)self5 distanceFromHereToOrigin:(int)self6 distanceFromHereToParkedCar:(int)self7 distanceFromHereToWork:(int)self8 distanceFromHere:(int)self9 distanceFromOriginToDestination:(int)destination entryType:(int)type weatherType:(int)weatherType mapType:(int)mapType predictedTransportMode:(int)transportMode preferredTransportMode:(int)preferredTransportMode isInBasemode:(id)basemode isCarplayConnected:(id)connected isTourist:(id)tourist isTransitPossible:(id)possible routePlanningScreenPresented:(id)precipitation0 userLocationGeohash4:(id)precipitation1 isVehicleBluetoothConnected:(id)precipitation2 weatherAqi:(id)precipitation3 modelName:(int)precipitation4 modelVersion:(id)precipitation5 modelTrainedDate:(id)precipitation6 additionalStates:(id)precipitation7 providedDropRate:(id)precipitation8 completionQueue:(id)precipitation9 completionBlock:(id)rain0
{
  v195 = *MEMORY[0x1E69E9840];
  precipitationCopy = precipitation;
  rainCopy = rain;
  snowCopy = snow;
  timeCopy = time;
  endCopy = end;
  startCopy = start;
  startTimeCopy = startTime;
  temperatureCopy = temperature;
  dayCopy = day;
  backgroundedCopy = backgrounded;
  weekCopy = week;
  basemodeCopy = basemode;
  connectedCopy = connected;
  touristCopy = tourist;
  possibleCopy = possible;
  presentedCopy = presented;
  geohash4Copy = geohash4;
  bluetoothConnectedCopy = bluetoothConnected;
  aqiCopy = aqi;
  versionCopy = version;
  dateCopy = date;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v189[0] = MEMORY[0x1E69E9820];
  v189[1] = 3221225472;
  v189[2] = __705__GEOAPPortal_capturePredExTrainingWithChanceOfPrecipitation_chanceOfRain_chanceOfSnow_endTime_durationUntilEventEnd_durationUntilEventStart_startTime_temperature_timeOfDay_timeSinceBackgrounded_actualTransportMode_dayOfWeek_distanceFromHereToHome_distanceFromHereToOrigin_distanceFromHereToParkedCar_distanceFromHereToWork_distanceFromHere_distanceFromOriginToDestination_entryType_weatherType_mapType_predictedTransportMode_preferredTransportMode_isInBasemode_isCarplayConnected_isTourist_isTransitPossible_routePlanningScreenPresented_userLocationGeohash4_isVehicleBluetoothConnected_weatherAqi_modelName_modelVersion_modelTrainedDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v189[3] = &unk_1E7959478;
  v54 = blockCopy;
  v191 = v54;
  v164 = queueCopy;
  v190 = v164;
  v55 = MEMORY[0x1AC5A12F0](v189);
  v175 = backgroundedCopy;
  v171 = possibleCopy;
  if (GEOConfigGetBOOL())
  {
    v56 = rainCopy;
    v57 = startTimeCopy;
    (*(v55 + 16))(v55);
    v58 = precipitationCopy;
    v59 = v55;
LABEL_7:
    v64 = presentedCopy;
    goto LABEL_8;
  }

  v57 = startTimeCopy;
  v162 = v55;
  v163 = endCopy;
  v60 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v60 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
  {
    v56 = rainCopy;
    v62 = GEOGetGEOAPPortalAnalyticsLog();
    v58 = precipitationCopy;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v63 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v194 = v63;
      _os_log_impl(&dword_1AB634000, v62, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v59 = v162;
    v162[2](v162);
    endCopy = v163;
    goto LABEL_7;
  }

  v58 = precipitationCopy;
  if (rateCopy)
  {
    [rateCopy doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  endCopy = v163;
  v64 = presentedCopy;
  if (v66 == 0.0 || v66 < arc4random() / 4294967300.0)
  {
    v158 = +[GEOAPStateFactory sharedFactory];
    v159 = weekCopy;
    v160 = rainCopy;
    v157 = v57;
    if ([statesCopy count])
    {
      v67 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      v188 = 0u;
      v68 = statesCopy;
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
      v76 = precipitationCopy;
      rainCopy = v160;
      endCopy = v163;
      v77 = v157;
    }

    else
    {
      v75 = 0;
      v76 = precipitationCopy;
      v77 = v57;
    }

    v155 = rateCopy;
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
      predExTrainingData = [v85 predExTrainingData];
      [predExTrainingData setChanceOfPrecipitation:v88];
    }

    if (rainCopy)
    {
      [rainCopy doubleValue];
      v91 = v90;
      predExTrainingData2 = [v85 predExTrainingData];
      [predExTrainingData2 setChanceOfRain:v91];
    }

    if (snowCopy)
    {
      [snowCopy doubleValue];
      v94 = v93;
      predExTrainingData3 = [v85 predExTrainingData];
      [predExTrainingData3 setChanceOfSnow:v94];
    }

    if (timeCopy)
    {
      [timeCopy doubleValue];
      v97 = v96;
      predExTrainingData4 = [v85 predExTrainingData];
      [predExTrainingData4 setEndTime:v97];
    }

    if (endCopy)
    {
      [endCopy doubleValue];
      v100 = v99;
      predExTrainingData5 = [v85 predExTrainingData];
      [predExTrainingData5 setDurationUntilEventEnd:v100];
    }

    if (startCopy)
    {
      [startCopy doubleValue];
      v103 = v102;
      predExTrainingData6 = [v85 predExTrainingData];
      [predExTrainingData6 setDurationUntilEventStart:v103];
    }

    if (v77)
    {
      [v77 doubleValue];
      v106 = v105;
      predExTrainingData7 = [v85 predExTrainingData];
      [predExTrainingData7 setStartTime:v106];
    }

    if (temperatureCopy)
    {
      [temperatureCopy doubleValue];
      v109 = v108;
      predExTrainingData8 = [v85 predExTrainingData];
      [predExTrainingData8 setTemperature:v109];
    }

    if (dayCopy)
    {
      [dayCopy doubleValue];
      v112 = v111;
      predExTrainingData9 = [v85 predExTrainingData];
      [predExTrainingData9 setTimeOfDay:v112];
    }

    if (v175)
    {
      [v175 doubleValue];
      v115 = v114;
      predExTrainingData10 = [v85 predExTrainingData];
      [predExTrainingData10 setTimeSinceBackgrounded:v115];
    }

    predExTrainingData11 = [v85 predExTrainingData];
    [predExTrainingData11 setActualTransportMode:mode];

    if (v159)
    {
      [v159 doubleValue];
      v119 = v118;
      predExTrainingData12 = [v85 predExTrainingData];
      [predExTrainingData12 setDayOfWeek:v119];
    }

    predExTrainingData13 = [v85 predExTrainingData];
    [predExTrainingData13 setDistanceFromHereToHome:home];

    predExTrainingData14 = [v85 predExTrainingData];
    [predExTrainingData14 setDistanceFromHereToOrigin:origin];

    predExTrainingData15 = [v85 predExTrainingData];
    [predExTrainingData15 setDistanceFromHereToParkedCar:car];

    predExTrainingData16 = [v85 predExTrainingData];
    [predExTrainingData16 setDistanceFromHereToWork:work];

    predExTrainingData17 = [v85 predExTrainingData];
    [predExTrainingData17 setDistanceFromHere:here];

    predExTrainingData18 = [v85 predExTrainingData];
    [predExTrainingData18 setDistanceFromOriginToDestination:destination];

    predExTrainingData19 = [v85 predExTrainingData];
    [predExTrainingData19 setEntryType:type];

    predExTrainingData20 = [v85 predExTrainingData];
    [predExTrainingData20 setWeatherType:weatherType];

    predExTrainingData21 = [v85 predExTrainingData];
    [predExTrainingData21 setMapType:mapType];

    predExTrainingData22 = [v85 predExTrainingData];
    [predExTrainingData22 setPredictedTransportMode:transportMode];

    predExTrainingData23 = [v85 predExTrainingData];
    [predExTrainingData23 setPreferredTransportMode:preferredTransportMode];

    if (basemodeCopy)
    {
      bOOLValue = [basemodeCopy BOOLValue];
      predExTrainingData24 = [v85 predExTrainingData];
      [predExTrainingData24 setIsInBasemode:bOOLValue];
    }

    v56 = v160;
    v57 = v157;
    if (connectedCopy)
    {
      bOOLValue2 = [connectedCopy BOOLValue];
      predExTrainingData25 = [v85 predExTrainingData];
      [predExTrainingData25 setIsCarplayConnected:bOOLValue2];
    }

    if (touristCopy)
    {
      [touristCopy doubleValue];
      v137 = v136;
      predExTrainingData26 = [v85 predExTrainingData];
      [predExTrainingData26 setIsTourist:v137];
    }

    if (v171)
    {
      bOOLValue3 = [v171 BOOLValue];
      predExTrainingData27 = [v85 predExTrainingData];
      [predExTrainingData27 setIsTransitPossible:bOOLValue3];
    }

    if (presentedCopy)
    {
      bOOLValue4 = [presentedCopy BOOLValue];
      predExTrainingData28 = [v85 predExTrainingData];
      [predExTrainingData28 setRoutePlanningScreenPresented:bOOLValue4];
    }

    predExTrainingData29 = [v85 predExTrainingData];
    [predExTrainingData29 setUserLocationGeohash4:geohash4Copy];

    if (bluetoothConnectedCopy)
    {
      bOOLValue5 = [bluetoothConnectedCopy BOOLValue];
      predExTrainingData30 = [v85 predExTrainingData];
      [predExTrainingData30 setIsVehicleBluetoothConnected:bOOLValue5];

      v56 = v160;
    }

    if (aqiCopy)
    {
      unsignedLongLongValue = [aqiCopy unsignedLongLongValue];
      predExTrainingData31 = [v85 predExTrainingData];
      [predExTrainingData31 setWeatherAqi:unsignedLongLongValue];

      v56 = v160;
    }

    predExTrainingData32 = [v85 predExTrainingData];
    [predExTrainingData32 setModelName:name];

    predExTrainingData33 = [v85 predExTrainingData];
    [predExTrainingData33 setModelVersion:versionCopy];

    predExTrainingData34 = [v85 predExTrainingData];
    [predExTrainingData34 setModelTrainedDate:dateCopy];

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

    endCopy = v163;
    weekCopy = v159;
    v58 = precipitationCopy;
    v64 = presentedCopy;
    v54 = v154;
    rateCopy = v155;
  }

  else
  {
    v56 = rainCopy;
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

+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)precipitation chanceOfRain:(id)rain chanceOfSnow:(id)snow endTime:(id)time durationUntilEventEnd:(id)end durationUntilEventStart:(id)start startTime:(id)startTime temperature:(id)self0 timeOfDay:(id)self1 timeSinceBackgrounded:(id)self2 actualTransportMode:(int)self3 dayOfWeek:(id)self4 distanceFromHereToHome:(int)self5 distanceFromHereToOrigin:(int)self6 distanceFromHereToParkedCar:(int)self7 distanceFromHereToWork:(int)self8 distanceFromHere:(int)self9 distanceFromOriginToDestination:(int)destination entryType:(int)type weatherType:(int)weatherType mapType:(int)mapType predictedTransportMode:(int)transportMode preferredTransportMode:(int)preferredTransportMode isInBasemode:(id)basemode isCarplayConnected:(id)connected isTourist:(id)tourist isTransitPossible:(id)possible routePlanningScreenPresented:(id)precipitation0 userLocationGeohash4:(id)precipitation1 isVehicleBluetoothConnected:(id)precipitation2 weatherAqi:(id)precipitation3 modelName:(int)precipitation4 modelVersion:(id)precipitation5 modelTrainedDate:(id)precipitation6
{
  LODWORD(v38) = name;
  LODWORD(v37) = preferredTransportMode;
  LODWORD(v36) = mode;
  [self capturePredExTrainingWithChanceOfPrecipitation:precipitation chanceOfRain:rain chanceOfSnow:snow endTime:time durationUntilEventEnd:end durationUntilEventStart:start startTime:startTime temperature:temperature timeOfDay:day timeSinceBackgrounded:backgrounded actualTransportMode:v36 dayOfWeek:week distanceFromHereToHome:__PAIR64__(origin distanceFromHereToOrigin:home) distanceFromHereToParkedCar:__PAIR64__(work distanceFromHereToWork:car) distanceFromHere:__PAIR64__(destination distanceFromOriginToDestination:here) entryType:__PAIR64__(weatherType weatherType:type) mapType:__PAIR64__(transportMode predictedTransportMode:mapType) preferredTransportMode:v37 isInBasemode:basemode isCarplayConnected:connected isTourist:tourist isTransitPossible:possible routePlanningScreenPresented:presented userLocationGeohash4:geohash4 isVehicleBluetoothConnected:bluetoothConnected weatherAqi:aqi modelName:v38 modelVersion:version modelTrainedDate:date additionalStates:0 providedDropRate:0 completionQueue:0 completionBlock:0];
}

+ (void)capturePoiBusynessDataWithTimestamp:(id)timestamp GEOLatLng_lat:(id)lng_lat GEOLatLng_lng:(id)lng_lng horizontalAccuracy:(id)accuracy verticalAccuracy:(id)verticalAccuracy altitude:(id)altitude poiPredictions:(id)predictions additionalStates:(id)self0 providedDropRate:(id)self1 completionQueue:(id)self2 completionBlock:(id)self3
{
  v119 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  lng_latCopy = lng_lat;
  lng_lngCopy = lng_lng;
  accuracyCopy = accuracy;
  verticalAccuracyCopy = verticalAccuracy;
  altitudeCopy = altitude;
  predictionsCopy = predictions;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __205__GEOAPPortal_capturePoiBusynessDataWithTimestamp_GEOLatLng_lat_GEOLatLng_lng_horizontalAccuracy_verticalAccuracy_altitude_poiPredictions_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v112[3] = &unk_1E7959478;
  v26 = blockCopy;
  v114 = v26;
  v27 = queueCopy;
  v113 = v27;
  v28 = MEMORY[0x1AC5A12F0](v112);
  v99 = verticalAccuracyCopy;
  if (GEOConfigGetBOOL())
  {
    v28[2](v28);
    v30 = lng_latCopy;
    v29 = timestampCopy;
  }

  else
  {
    v96 = accuracyCopy;
    v97 = lng_lngCopy;
    v31 = +[GEOAPServiceManager sharedManager];
    eventCollectionIsDisabledForCurrentProcess = [v31 eventCollectionIsDisabledForCurrentProcess];

    if (eventCollectionIsDisabledForCurrentProcess)
    {
      v33 = GEOGetGEOAPPortalAnalyticsLog();
      v30 = lng_latCopy;
      v29 = timestampCopy;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v118 = v34;
        _os_log_impl(&dword_1AB634000, v33, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v28[2](v28);
      accuracyCopy = v96;
      lng_lngCopy = v97;
    }

    else
    {
      v30 = lng_latCopy;
      v29 = timestampCopy;
      if (rateCopy)
      {
        [rateCopy doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      accuracyCopy = v96;
      lng_lngCopy = v97;
      if (v35 == 0.0 || v35 < arc4random() / 4294967300.0)
      {
        v36 = +[GEOAPStateFactory sharedFactory];
        v91 = v26;
        v92 = rateCopy;
        v94 = v36;
        v95 = predictionsCopy;
        v93 = statesCopy;
        if ([statesCopy count])
        {
          v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v38 = statesCopy;
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
          v30 = lng_latCopy;
          v29 = timestampCopy;
          v36 = v94;
          predictionsCopy = v95;
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
          poiBusynessData = [v48 poiBusynessData];
          [poiBusynessData setTimestamp:v51];
        }

        v53 = objc_alloc_init(MEMORY[0x1E69A1E50]);
        poiBusynessData2 = [v48 poiBusynessData];
        [poiBusynessData2 setLocation:v53];

        if (v30)
        {
          [v30 doubleValue];
          v56 = v55;
          poiBusynessData3 = [v48 poiBusynessData];
          location = [poiBusynessData3 location];
          [location setLat:v56];
        }

        if (v97)
        {
          [v97 doubleValue];
          v60 = v59;
          poiBusynessData4 = [v48 poiBusynessData];
          location2 = [poiBusynessData4 location];
          [location2 setLng:v60];
        }

        if (v96)
        {
          [v96 doubleValue];
          v64 = v63;
          poiBusynessData5 = [v48 poiBusynessData];
          [poiBusynessData5 setHorizontalAccuracy:v64];
        }

        if (v99)
        {
          [v99 doubleValue];
          v67 = v66;
          poiBusynessData6 = [v48 poiBusynessData];
          [poiBusynessData6 setVerticalAccuracy:v67];
        }

        if (altitudeCopy)
        {
          [altitudeCopy doubleValue];
          v70 = v69;
          poiBusynessData7 = [v48 poiBusynessData];
          [poiBusynessData7 setAltitude:v70];
        }

        v88 = v46;
        v90 = v45;
        poiBusynessData8 = [v48 poiBusynessData];
        poiPredictions = [poiBusynessData8 poiPredictions];

        if (!poiPredictions)
        {
          v74 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(predictionsCopy, "count")}];
          poiBusynessData9 = [v48 poiBusynessData];
          [poiBusynessData9 setPoiPredictions:v74];
        }

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v76 = predictionsCopy;
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
              poiBusynessData10 = [v48 poiBusynessData];
              poiPredictions2 = [poiBusynessData10 poiPredictions];
              v84 = [v81 copy];
              [poiPredictions2 addObject:v84];
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
        v30 = lng_latCopy;
        v29 = timestampCopy;
        accuracyCopy = v96;
        lng_lngCopy = v97;
        predictionsCopy = v95;
        rateCopy = v92;
        statesCopy = v93;
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

+ (void)capturePlacesServiceMetadataWithPlacesMetadata:(id)metadata additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v77 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __128__GEOAPPortal_capturePlacesServiceMetadataWithPlacesMetadata_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v71[3] = &unk_1E7959478;
  v16 = blockCopy;
  v73 = v16;
  v17 = queueCopy;
  v72 = v17;
  v18 = MEMORY[0x1AC5A12F0](v71);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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

  v64 = metadataCopy;
  v24 = +[GEOAPStateFactory sharedFactory];
  v58 = v24;
  v56 = statesCopy;
  if ([statesCopy count])
  {
    v61 = v16;
    v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v26 = statesCopy;
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

  statesCopy = v56;
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

  serviceMetadata = [v50 serviceMetadata];
  [serviceMetadata setPlacesMetadata:v64];

  serviceMetadata2 = [v50 serviceMetadata];
  [serviceMetadata2 setServiceMetadataType:2];

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
  metadataCopy = v64;
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

+ (void)capturePeriodicSettingsWithMapSettings:(id)settings mapUiShown:(id)shown mapsFeatures:(id)features mapsUserSettings:(id)userSettings routingSettings:(id)routingSettings additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)self0 completionBlock:(id)self1
{
  v81 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  shownCopy = shown;
  featuresCopy = features;
  userSettingsCopy = userSettings;
  routingSettingsCopy = routingSettings;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __177__GEOAPPortal_capturePeriodicSettingsWithMapSettings_mapUiShown_mapsFeatures_mapsUserSettings_routingSettings_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v75[3] = &unk_1E7959478;
  v24 = blockCopy;
  v77 = v24;
  v25 = queueCopy;
  v76 = v25;
  v26 = MEMORY[0x1AC5A12F0](v75);
  if (!GEOConfigGetBOOL())
  {
    v66 = v25;
    v67 = routingSettingsCopy;
    v28 = +[GEOAPServiceManager sharedManager];
    eventCollectionIsDisabledForCurrentProcess = [v28 eventCollectionIsDisabledForCurrentProcess];

    if (eventCollectionIsDisabledForCurrentProcess)
    {
      v30 = GEOGetGEOAPPortalAnalyticsLog();
      v27 = statesCopy;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v80 = v31;
        _os_log_impl(&dword_1AB634000, v30, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v26[2](v26);
      routingSettingsCopy = v67;
    }

    else
    {
      v27 = statesCopy;
      if (rateCopy)
      {
        [rateCopy doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      v25 = v66;
      routingSettingsCopy = v67;
      if (v32 != 0.0 && v32 >= arc4random() / 4294967300.0)
      {
        v26[2](v26);
        goto LABEL_45;
      }

      v60 = +[GEOAPStateFactory sharedFactory];
      v57 = v24;
      v61 = userSettingsCopy;
      if ([statesCopy count])
      {
        v58 = rateCopy;
        v62 = featuresCopy;
        v64 = shownCopy;
        v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v34 = statesCopy;
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
        featuresCopy = v62;
        shownCopy = v64;
        rateCopy = v58;
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

      v27 = statesCopy;
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

      periodicSettingsSummary = [v47 periodicSettingsSummary];
      [periodicSettingsSummary setMapSettings:settingsCopy];

      periodicSettingsSummary2 = [v47 periodicSettingsSummary];
      [periodicSettingsSummary2 setMapUiShown:shownCopy];

      periodicSettingsSummary3 = [v47 periodicSettingsSummary];
      [periodicSettingsSummary3 setMapsFeatures:featuresCopy];

      periodicSettingsSummary4 = [v47 periodicSettingsSummary];
      [periodicSettingsSummary4 setMapsUserSettings:v61];

      periodicSettingsSummary5 = [v47 periodicSettingsSummary];
      [periodicSettingsSummary5 setRoutingSettings:v67];

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
      userSettingsCopy = v61;
      routingSettingsCopy = v67;
      v24 = v57;
    }

    v25 = v66;
    goto LABEL_45;
  }

  v26[2](v26);
  v27 = statesCopy;
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

+ (void)captureNetworkEventWithNetworkService:(int)service requestAppIdentifier:(id)identifier requestAppIdMajorVer:(id)ver requestAppIdMinorVer:(id)minorVer requestErrorDomain:(id)domain requestErrorCode:(id)code requestDataSize:(id)size responseDataSize:(id)self0 totalTime:(id)self1 httpResponseCode:(id)self2 serviceIpAddress:(id)self3 taskMetrics:(id)self4 mptcpServiceType:(int)self5 mptcpNegotiated:(id)self6 rnfTriggered:(id)self7 queuedTime:(id)self8 redirectCount:(id)self9 requestStart:(id)start requestEnd:(id)end wasBackground:(id)background additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v166 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  verCopy = ver;
  minorVerCopy = minorVer;
  domainCopy = domain;
  codeCopy = code;
  sizeCopy = size;
  dataSizeCopy = dataSize;
  timeCopy = time;
  responseCodeCopy = responseCode;
  addressCopy = address;
  metricsCopy = metrics;
  negotiatedCopy = negotiated;
  triggeredCopy = triggered;
  queuedTimeCopy = queuedTime;
  countCopy = count;
  startCopy = start;
  endCopy = end;
  backgroundCopy = background;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v160[0] = MEMORY[0x1E69E9820];
  v160[1] = 3221225472;
  v160[2] = __416__GEOAPPortal_captureNetworkEventWithNetworkService_requestAppIdentifier_requestAppIdMajorVer_requestAppIdMinorVer_requestErrorDomain_requestErrorCode_requestDataSize_responseDataSize_totalTime_httpResponseCode_serviceIpAddress_taskMetrics_mptcpServiceType_mptcpNegotiated_rnfTriggered_queuedTime_redirectCount_requestStart_requestEnd_wasBackground_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v160[3] = &unk_1E7959478;
  v141 = blockCopy;
  v162 = v141;
  v140 = queueCopy;
  v161 = v140;
  v40 = MEMORY[0x1AC5A12F0](v160);
  if (GEOConfigGetBOOL())
  {
    v40[2](v40);
    v41 = codeCopy;
LABEL_22:
    v56 = sizeCopy;
    goto LABEL_23;
  }

  v136 = v40;
  v139 = verCopy;
  v42 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v42 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
  {
    v44 = GEOGetGEOAPPortalAnalyticsLog();
    v41 = codeCopy;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v45 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v165 = v45;
      _os_log_impl(&dword_1AB634000, v44, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v40 = v136;
    v136[2](v136);
    verCopy = v139;
    goto LABEL_22;
  }

  v41 = codeCopy;
  if (rateCopy)
  {
    [rateCopy doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  v47 = v46;
  verCopy = v139;
  if (v46 != 0.0 && v46 >= arc4random() / 4294967300.0)
  {
    v40 = v136;
    v136[2](v136);
    goto LABEL_22;
  }

  v124 = +[GEOAPStateFactory sharedFactory];
  v122 = timeCopy;
  v135 = responseCodeCopy;
  v125 = metricsCopy;
  v126 = addressCopy;
  if ([statesCopy count])
  {
    v48 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v49 = statesCopy;
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
    v41 = codeCopy;
    timeCopy = v122;
    responseCodeCopy = v135;
  }

  else
  {
    v138 = 0;
  }

  v56 = sizeCopy;
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

  networkEvent = [v73 networkEvent];
  [networkEvent setNetworkService:service];

  networkEvent2 = [v73 networkEvent];
  [networkEvent2 setRequestAppIdentifier:identifierCopy];

  networkEvent3 = [v73 networkEvent];
  [networkEvent3 setRequestAppIdMajorVer:v139];

  networkEvent4 = [v73 networkEvent];
  [networkEvent4 setRequestAppIdMinorVer:minorVerCopy];

  networkEvent5 = [v73 networkEvent];
  [networkEvent5 setRequestErrorDomain:domainCopy];

  if (v41)
  {
    integerValue = [v41 integerValue];
    networkEvent6 = [v73 networkEvent];
    [networkEvent6 setRequestErrorCode:integerValue];
  }

  if (v56)
  {
    integerValue2 = [v56 integerValue];
    networkEvent7 = [v73 networkEvent];
    [networkEvent7 setRequestDataSize:integerValue2];
  }

  if (dataSizeCopy)
  {
    integerValue3 = [dataSizeCopy integerValue];
    networkEvent8 = [v73 networkEvent];
    [networkEvent8 setResponseDataSize:integerValue3];
  }

  if (timeCopy)
  {
    integerValue4 = [timeCopy integerValue];
    networkEvent9 = [v73 networkEvent];
    [networkEvent9 setTotalTime:integerValue4];

    responseCodeCopy = v135;
  }

  if (responseCodeCopy)
  {
    integerValue5 = [responseCodeCopy integerValue];
    networkEvent10 = [v73 networkEvent];
    [networkEvent10 setHttpResponseCode:integerValue5];
  }

  networkEvent11 = [v73 networkEvent];
  [networkEvent11 setServiceIpAddress:v126];

  networkEvent12 = [v73 networkEvent];
  [networkEvent12 setTaskMetrics:v125];

  networkEvent13 = [v73 networkEvent];
  [networkEvent13 setMptcpServiceType:type];

  if (negotiatedCopy)
  {
    bOOLValue = [negotiatedCopy BOOLValue];
    networkEvent14 = [v73 networkEvent];
    [networkEvent14 setMptcpNegotiated:bOOLValue];
  }

  if (triggeredCopy)
  {
    bOOLValue2 = [triggeredCopy BOOLValue];
    networkEvent15 = [v73 networkEvent];
    [networkEvent15 setRnfTriggered:bOOLValue2];
  }

  if (queuedTimeCopy)
  {
    integerValue6 = [queuedTimeCopy integerValue];
    networkEvent16 = [v73 networkEvent];
    [networkEvent16 setQueuedTime:integerValue6];
  }

  if (countCopy)
  {
    integerValue7 = [countCopy integerValue];
    networkEvent17 = [v73 networkEvent];
    [networkEvent17 setRedirectCount:integerValue7];
  }

  if (startCopy)
  {
    [startCopy doubleValue];
    v102 = v101;
    networkEvent18 = [v73 networkEvent];
    [networkEvent18 setRequestStart:v102];
  }

  if (endCopy)
  {
    [endCopy doubleValue];
    v105 = v104;
    networkEvent19 = [v73 networkEvent];
    [networkEvent19 setRequestEnd:v105];
  }

  if (backgroundCopy)
  {
    bOOLValue3 = [backgroundCopy BOOLValue];
    networkEvent20 = [v73 networkEvent];
    [networkEvent20 setWasBackground:bOOLValue3];
  }

  modernManager = [MEMORY[0x1E69A2478] modernManager];
  activeTileGroup = [modernManager activeTileGroup];
  identifier = [activeTileGroup identifier];
  networkEvent21 = [v73 networkEvent];
  [networkEvent21 setTilesetId:identifier];

  if (GEOConfigGetBOOL())
  {
    defaultConfiguration = [MEMORY[0x1E69A2470] defaultConfiguration];
    environment = [defaultConfiguration environment];
    networkEvent22 = [v73 networkEvent];
    [networkEvent22 setManifestEnv:environment];
  }

  v116 = [MEMORY[0x1E696AD98] numberWithDouble:round((1.0 - v47) * 10000.0)];
  unsignedIntValue = [v116 unsignedIntValue];
  networkEvent23 = [v73 networkEvent];
  [networkEvent23 setSamplingRate:unsignedIntValue];

  if (v134)
  {
    [v73 addLogMsgState:?];
  }

  timeCopy = v122;
  responseCodeCopy = v135;
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

  verCopy = v139;
  metricsCopy = v125;
  addressCopy = v126;
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

+ (void)captureNetSelectionHarvestWithHarvestData:(id)data additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __123__GEOAPPortal_captureNetSelectionHarvestWithHarvestData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v32[3] = &unk_1E7959478;
  v14 = blockCopy;
  v34 = v14;
  v15 = queueCopy;
  v33 = v15;
  v16 = MEMORY[0x1AC5A12F0](v32);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_13;
  }

  v17 = +[GEOAPServiceManager sharedManager];
  platformDiagAndUsage = [v17 platformDiagAndUsage];

  if ((platformDiagAndUsage & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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

  networkSelectionHarvest = [v24 networkSelectionHarvest];
  [networkSelectionHarvest setHarvestData:dataCopy];

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

+ (void)captureNetEventSummaryWithGroups:(id)groups additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v86 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __114__GEOAPPortal_captureNetEventSummaryWithGroups_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v79[3] = &unk_1E7959478;
  v16 = blockCopy;
  v81 = v16;
  v17 = queueCopy;
  v80 = v17;
  v18 = MEMORY[0x1AC5A12F0](v79);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v68 = groupsCopy;
  v64 = rateCopy;
  v65 = statesCopy;
  v63 = v16;
  if ([statesCopy count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v26 = statesCopy;
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
    groupsCopy = v68;
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

  networkEventSummary = [v41 networkEventSummary];
  groups = [networkEventSummary groups];

  if (!groups)
  {
    v45 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(groupsCopy, "count")}];
    networkEventSummary2 = [v41 networkEventSummary];
    [networkEventSummary2 setGroups:v45];
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v47 = groupsCopy;
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
        networkEventSummary3 = [v41 networkEventSummary];
        groups2 = [networkEventSummary3 groups];
        v55 = [v52 copy];
        [groups2 addObject:v55];
      }

      v49 = [v47 countByEnumeratingWithState:&v71 objects:v82 count:16];
    }

    while (v49);
  }

  if (v61)
  {
    [v41 addLogMsgState:v61];
  }

  groupsCopy = v68;
  v16 = v63;
  rateCopy = v64;
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
  statesCopy = v65;
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

+ (void)captureNavTraceWithNavTraceData:(id)data additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v69 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __113__GEOAPPortal_captureNavTraceWithNavTraceData_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v63[3] = &unk_1E7959478;
  v16 = blockCopy;
  v65 = v16;
  v17 = queueCopy;
  v64 = v17;
  v18 = MEMORY[0x1AC5A12F0](v63);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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

  v56 = dataCopy;
  v24 = +[GEOAPStateFactory sharedFactory];
  v52 = v24;
  v50 = statesCopy;
  if ([statesCopy count])
  {
    v53 = v16;
    v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v26 = statesCopy;
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

  statesCopy = v50;
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

  fullNavTrace = [v45 fullNavTrace];
  [fullNavTrace setNavTraceData:v56];

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
  dataCopy = v56;
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

+ (void)captureNavThermalPressureWithThermalPressure:(id)pressure disableMapFeatures:(id)features navMapType:(int)type collectionTrigger:(int)trigger additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)self0
{
  v107 = *MEMORY[0x1E69E9840];
  pressureCopy = pressure;
  featuresCopy = features;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __174__GEOAPPortal_captureNavThermalPressureWithThermalPressure_disableMapFeatures_navMapType_collectionTrigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v100[3] = &unk_1E7959478;
  v19 = blockCopy;
  v102 = v19;
  v20 = queueCopy;
  v101 = v20;
  v21 = MEMORY[0x1AC5A12F0](v100);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v22 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v22 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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

  v76 = rateCopy;
  v27 = +[GEOAPStateFactory sharedFactory];
  v78 = v27;
  v79 = featuresCopy;
  v80 = pressureCopy;
  v77 = statesCopy;
  v75 = v19;
  if ([statesCopy count])
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v29 = statesCopy;
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
    featuresCopy = v79;
    pressureCopy = v80;
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

  if (pressureCopy)
  {
    unsignedLongLongValue = [pressureCopy unsignedLongLongValue];
    thermalPressure = [v55 thermalPressure];
    [thermalPressure setThermalPressure:unsignedLongLongValue];
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v59 = featuresCopy;
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
        thermalPressure2 = [v55 thermalPressure];
        [thermalPressure2 addDisableMapFeatures:{objc_msgSend(v64, "integerValue")}];
      }

      v61 = [v59 countByEnumeratingWithState:&v92 objects:v103 count:16];
    }

    while (v61);
  }

  thermalPressure3 = [v55 thermalPressure];
  [thermalPressure3 setNavMapType:type];

  thermalPressure4 = [v55 thermalPressure];
  [thermalPressure4 setCollectionTrigger:trigger];

  if (v73)
  {
    [v55 addLogMsgState:v73];
  }

  featuresCopy = v79;
  v19 = v75;
  if (v87)
  {
    [v55 addLogMsgState:?];
  }

  if (v86)
  {
    [v55 addLogMsgState:v86];
  }

  pressureCopy = v80;
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
  rateCopy = v76;
  statesCopy = v77;
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

+ (void)captureMarcoLiteWithTotalNavTime:(id)time usageStates:(id)states vioTrigger:(int)trigger additionalStates:(id)additionalStates providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v93 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  statesCopy = states;
  additionalStatesCopy = additionalStates;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __137__GEOAPPortal_captureMarcoLiteWithTotalNavTime_usageStates_vioTrigger_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v86[3] = &unk_1E7959478;
  v20 = blockCopy;
  v88 = v20;
  v21 = queueCopy;
  v87 = v21;
  v22 = MEMORY[0x1AC5A12F0](v86);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_21;
  }

  triggerCopy = trigger;
  v23 = +[GEOAPServiceManager sharedManager];
  platformDiagAndUsageOrAppleInternal = [v23 platformDiagAndUsageOrAppleInternal];

  if ((platformDiagAndUsageOrAppleInternal & 1) == 0)
  {
    goto LABEL_21;
  }

  v25 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v25 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v72 = timeCopy;
  v73 = statesCopy;
  v68 = v20;
  v69 = rateCopy;
  v70 = additionalStatesCopy;
  v71 = v30;
  if ([additionalStatesCopy count])
  {
    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(additionalStatesCopy, "count")}];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v32 = additionalStatesCopy;
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
    timeCopy = v72;
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

  if (timeCopy)
  {
    unsignedLongLongValue = [timeCopy unsignedLongLongValue];
    marcoLiteUsage = [v45 marcoLiteUsage];
    [marcoLiteUsage setTotalNavTime:unsignedLongLongValue];
  }

  marcoLiteUsage2 = [v45 marcoLiteUsage];
  usageStates = [marcoLiteUsage2 usageStates];

  if (!usageStates)
  {
    v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v73, "count")}];
    marcoLiteUsage3 = [v45 marcoLiteUsage];
    [marcoLiteUsage3 setUsageStates:v51];
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
        marcoLiteUsage4 = [v45 marcoLiteUsage];
        usageStates2 = [marcoLiteUsage4 usageStates];
        v61 = [v58 copy];
        [usageStates2 addObject:v61];
      }

      v55 = [v53 countByEnumeratingWithState:&v78 objects:v89 count:16];
    }

    while (v55);
  }

  marcoLiteUsage5 = [v45 marcoLiteUsage];
  [marcoLiteUsage5 setVioTrigger:triggerCopy];

  if (v66)
  {
    [v45 addLogMsgState:v66];
  }

  timeCopy = v72;
  rateCopy = v69;
  additionalStatesCopy = v70;
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
  statesCopy = v73;
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

+ (void)captureMapsInteractionWithInteractionType:(int)type additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v61 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __123__GEOAPPortal_captureMapsInteractionWithInteractionType_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v55[3] = &unk_1E7959478;
  v15 = blockCopy;
  v57 = v15;
  v16 = queueCopy;
  v56 = v16;
  v17 = MEMORY[0x1AC5A12F0](v55);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v18 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v18 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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

  typeCopy = type;
  v23 = +[GEOAPStateFactory sharedFactory];
  v46 = statesCopy;
  v47 = v23;
  if ([statesCopy count])
  {
    v44 = v15;
    v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v25 = statesCopy;
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

  statesCopy = v46;
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

  mapsInteraction = [v39 mapsInteraction];
  [mapsInteraction setInteractionType:typeCopy];

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

+ (void)captureMapsEngagementWithUser_mapsUseLastDate:(id)date additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v74 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __127__GEOAPPortal_captureMapsEngagementWithUser_mapsUseLastDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v68[3] = &unk_1E7959478;
  v16 = blockCopy;
  v70 = v16;
  v17 = queueCopy;
  v69 = v17;
  v18 = MEMORY[0x1AC5A12F0](v68);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_22;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
    [dateCopy doubleValue];
    v29 = v28;
    user = [v27 user];
    [user setMapsUseLastDate:v29];
  }

  v58 = v27;
  v60 = dateCopy;
  v61 = v25;
  v59 = statesCopy;
  if ([statesCopy count])
  {
    v55 = v16;
    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v32 = statesCopy;
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
  mapsEngagement = [v44 mapsEngagement];
  [mapsEngagement setSummaryDate:v46];

  v48 = +[GEOAPUtils currentDailyAggregationRepresentativeString];
  mapsEngagement2 = [v44 mapsEngagement];
  [mapsEngagement2 setAggregationSummaryDate:v48];

  v50 = +[GEOAPUtils myAppType];
  mapsEngagement3 = [v44 mapsEngagement];
  [mapsEngagement3 setAppType:v50];

  mapsEngagement4 = [v44 mapsEngagement];
  [mapsEngagement4 setReportingChannel:2];

  if (v41)
  {
    [v44 addLogMsgState:v41];
  }

  statesCopy = v59;
  if (v58)
  {
    [v44 addLogMsgState:v58];
  }

  sharedFactory = [*(v24 + 2120) sharedFactory];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __127__GEOAPPortal_captureMapsEngagementWithUser_mapsUseLastDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke_64;
  v62[3] = &unk_1E7953A00;
  v63 = v44;
  v54 = v44;
  [sharedFactory sessionStateForType:2 callback:v62];

  v18[2](v18);
  dateCopy = v60;
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

+ (void)captureMapLaunchWithLaunchUri:(id)uri sourceAppId:(id)id GEOTimeToLeaveMapLaunch_minutesUntilEvent:(id)event additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v126 = *MEMORY[0x1E69E9840];
  uriCopy = uri;
  idCopy = id;
  eventCopy = event;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __165__GEOAPPortal_captureMapLaunchWithLaunchUri_sourceAppId_GEOTimeToLeaveMapLaunch_minutesUntilEvent_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v120[3] = &unk_1E7959478;
  v21 = blockCopy;
  v122 = v21;
  v22 = queueCopy;
  v121 = v22;
  v23 = MEMORY[0x1AC5A12F0](v120);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v24 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v105 = eventCopy;
  v106 = idCopy;
  v90 = rateCopy;
  v91 = statesCopy;
  v89 = v21;
  if ([statesCopy count])
  {
    v112 = uriCopy;
    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v30 = statesCopy;
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
    uriCopy = v112;
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

  mapLaunchEvent = [v76 mapLaunchEvent];
  v79 = uriCopy;
  [mapLaunchEvent setLaunchUri:uriCopy];

  mapLaunchEvent2 = [v76 mapLaunchEvent];
  [mapLaunchEvent2 setSourceAppId:v106];

  v81 = objc_alloc_init(MEMORY[0x1E69A2628]);
  mapLaunchEvent3 = [v76 mapLaunchEvent];
  [mapLaunchEvent3 setTimeToLeave:v81];

  if (v105)
  {
    [v105 doubleValue];
    v84 = v83;
    mapLaunchEvent4 = [v76 mapLaunchEvent];
    timeToLeave = [mapLaunchEvent4 timeToLeave];
    [timeToLeave setMinutesUntilEvent:v84];
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
  uriCopy = v79;
  eventCopy = v105;
  idCopy = v106;
  rateCopy = v90;
  statesCopy = v91;
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

+ (void)captureImpressionEventWithAdditionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v62 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __107__GEOAPPortal_captureImpressionEventWithAdditionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v56[3] = &unk_1E7959478;
  v13 = blockCopy;
  v58 = v13;
  v14 = queueCopy;
  v57 = v14;
  v15 = MEMORY[0x1AC5A12F0](v56);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v16 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v16 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v44 = statesCopy;
  if ([statesCopy count])
  {
    v47 = v13;
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v23 = statesCopy;
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

  statesCopy = v44;
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

+ (void)captureHardStopWithScore:(id)score digits:(id)digits cities:(id)cities additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v111 = *MEMORY[0x1E69E9840];
  scoreCopy = score;
  digitsCopy = digits;
  citiesCopy = cities;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __120__GEOAPPortal_captureHardStopWithScore_digits_cities_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v103[3] = &unk_1E7959478;
  v21 = blockCopy;
  v105 = v21;
  v22 = queueCopy;
  v104 = v22;
  v23 = MEMORY[0x1AC5A12F0](v103);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v24 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v86 = citiesCopy;
  v87 = scoreCopy;
  v79 = v21;
  v80 = rateCopy;
  v82 = v29;
  v83 = digitsCopy;
  v81 = statesCopy;
  if ([statesCopy count])
  {
    v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v31 = statesCopy;
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
    digitsCopy = v83;
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
    hardStop = [v48 hardStop];
    [hardStop setScore:v51];
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v53 = digitsCopy;
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
        hardStop2 = [v48 hardStop];
        [hardStop2 addDigits:{objc_msgSend(v58, "unsignedLongLongValue")}];
      }

      v55 = [v53 countByEnumeratingWithState:&v95 objects:v107 count:16];
    }

    while (v55);
  }

  hardStop3 = [v48 hardStop];
  cities = [hardStop3 cities];

  if (!cities)
  {
    v62 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v86, "count")}];
    hardStop4 = [v48 hardStop];
    [hardStop4 setCities:v62];
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
        hardStop5 = [v48 hardStop];
        cities2 = [hardStop5 cities];
        v72 = [v69 copy];
        [cities2 addObject:v72];
      }

      v66 = [v64 countByEnumeratingWithState:&v91 objects:v106 count:16];
    }

    while (v66);
  }

  if (v85)
  {
    [v48 addLogMsgState:?];
  }

  citiesCopy = v86;
  rateCopy = v80;
  statesCopy = v81;
  if (v88)
  {
    [v48 addLogMsgState:?];
  }

  digitsCopy = v83;
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
  scoreCopy = v87;
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

+ (void)captureGridDurationWithDurationMs:(id)ms previousState:(int)state endState:(int)endState endStateErrorReasons:(id)reasons displayType:(int)type additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)self0 completionBlock:(id)self1
{
  v106 = *MEMORY[0x1E69E9840];
  msCopy = ms;
  reasonsCopy = reasons;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __171__GEOAPPortal_captureGridDurationWithDurationMs_previousState_endState_endStateErrorReasons_displayType_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v99[3] = &unk_1E7959478;
  v19 = blockCopy;
  v101 = v19;
  v20 = queueCopy;
  v100 = v20;
  v21 = MEMORY[0x1AC5A12F0](v99);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v22 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v22 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v75 = rateCopy;
  v78 = v27;
  v79 = reasonsCopy;
  v80 = msCopy;
  v76 = statesCopy;
  if ([statesCopy count])
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v29 = statesCopy;
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
    reasonsCopy = v79;
    msCopy = v80;
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

  if (msCopy)
  {
    unsignedLongLongValue = [msCopy unsignedLongLongValue];
    gridDuration = [v49 gridDuration];
    [gridDuration setDurationMs:unsignedLongLongValue];
  }

  v72 = v39;
  v73 = v36;
  gridDuration2 = [v49 gridDuration];
  [gridDuration2 setPreviousState:state];

  gridDuration3 = [v49 gridDuration];
  [gridDuration3 setEndState:endState];

  gridDuration4 = [v49 gridDuration];
  endStateErrorReasons = [gridDuration4 endStateErrorReasons];

  if (!endStateErrorReasons)
  {
    v57 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(reasonsCopy, "count")}];
    gridDuration5 = [v49 gridDuration];
    [gridDuration5 setEndStateErrorReasons:v57];
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v59 = reasonsCopy;
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
        gridDuration6 = [v49 gridDuration];
        endStateErrorReasons2 = [gridDuration6 endStateErrorReasons];
        v67 = [v64 copy];
        [endStateErrorReasons2 addObject:v67];
      }

      v61 = [v59 countByEnumeratingWithState:&v91 objects:v102 count:16];
    }

    while (v61);
  }

  gridDuration7 = [v49 gridDuration];
  [gridDuration7 setDisplayType:type];

  if (v82)
  {
    [v49 addLogMsgState:?];
  }

  msCopy = v80;
  v19 = v74;
  rateCopy = v75;
  if (v84)
  {
    [v49 addLogMsgState:?];
  }

  if (v85)
  {
    [v49 addLogMsgState:v85];
  }

  reasonsCopy = v79;
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
  statesCopy = v76;
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

+ (void)captureFindMyUsageWithUserActionEventAction:(int)action userActionEventTarget:(int)target userActionEventValue:(id)value additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v75 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __168__GEOAPPortal_captureFindMyUsageWithUserActionEventAction_userActionEventTarget_userActionEventValue_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v69[3] = &unk_1E7959478;
  v19 = blockCopy;
  v71 = v19;
  v20 = queueCopy;
  v70 = v20;
  v21 = MEMORY[0x1AC5A12F0](v69);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_21;
  }

  actionCopy = action;
  v22 = +[GEOAPServiceManager sharedManager];
  appleInternal = [v22 AppleInternal];

  if ((appleInternal & 1) == 0)
  {
    goto LABEL_21;
  }

  v24 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
  {
    v26 = GEOGetGEOAPPortalAnalyticsLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      GEOApplicationIdentifierOrProcessName();
      v28 = v27 = valueCopy;
      *buf = 138412290;
      v74 = v28;
      _os_log_impl(&dword_1AB634000, v26, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);

      valueCopy = v27;
    }

    goto LABEL_21;
  }

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  targetCopy = target;
  v58 = statesCopy;
  v59 = v30;
  if ([statesCopy count])
  {
    v55 = v19;
    v60 = valueCopy;
    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v32 = statesCopy;
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
    valueCopy = v60;
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

  statesCopy = v58;
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

  userActionEvent = [v46 userActionEvent];
  [userActionEvent setUserActionEventAction:actionCopy];

  userActionEvent2 = [v46 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:targetCopy];

  userActionEvent3 = [v46 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

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

+ (void)captureEvTripWithOutOfCharge:(id)charge outOfRangeAlertDisplayed:(id)displayed originalTripIncludedChargingStation:(id)station chargingStopAddedThroughSar:(id)sar tripIncludedPreferredChargingStation:(id)chargingStation stopRemovedDetails:(id)details realtimeDodgeballs:(id)dodgeballs chargeLocationDetails:(id)self0 stopAddedDetails:(id)self1 additionalStates:(id)self2 providedDropRate:(id)self3 completionQueue:(id)self4 completionBlock:(id)self5
{
  v173 = *MEMORY[0x1E69E9840];
  chargeCopy = charge;
  displayedCopy = displayed;
  stationCopy = station;
  sarCopy = sar;
  chargingStationCopy = chargingStation;
  detailsCopy = details;
  dodgeballsCopy = dodgeballs;
  locationDetailsCopy = locationDetails;
  addedDetailsCopy = addedDetails;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v163[0] = MEMORY[0x1E69E9820];
  v163[1] = 3221225472;
  v163[2] = __313__GEOAPPortal_captureEvTripWithOutOfCharge_outOfRangeAlertDisplayed_originalTripIncludedChargingStation_chargingStopAddedThroughSar_tripIncludedPreferredChargingStation_stopRemovedDetails_realtimeDodgeballs_chargeLocationDetails_stopAddedDetails_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v163[3] = &unk_1E7959478;
  v136 = blockCopy;
  v165 = v136;
  v29 = queueCopy;
  v164 = v29;
  v30 = MEMORY[0x1AC5A12F0](v163);
  if (GEOConfigGetBOOL())
  {
    v30[2](v30);
    v31 = chargeCopy;
  }

  else
  {
    v134 = locationDetailsCopy;
    v135 = dodgeballsCopy;
    v32 = +[GEOAPServiceManager sharedManager];
    eventCollectionIsDisabledForCurrentProcess = [v32 eventCollectionIsDisabledForCurrentProcess];

    if (eventCollectionIsDisabledForCurrentProcess)
    {
      v34 = GEOGetGEOAPPortalAnalyticsLog();
      v31 = chargeCopy;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v172 = v35;
        _os_log_impl(&dword_1AB634000, v34, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v30[2](v30);
      locationDetailsCopy = v134;
      dodgeballsCopy = v135;
    }

    else
    {
      v31 = chargeCopy;
      if (rateCopy)
      {
        [rateCopy doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      locationDetailsCopy = v134;
      dodgeballsCopy = v135;
      if (v36 == 0.0 || v36 < arc4random() / 4294967300.0)
      {
        v37 = +[GEOAPStateFactory sharedFactory];
        v133 = displayedCopy;
        v130 = addedDetailsCopy;
        v124 = rateCopy;
        v125 = statesCopy;
        v127 = v37;
        v128 = chargingStationCopy;
        if ([statesCopy count])
        {
          v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
          v159 = 0u;
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          v39 = statesCopy;
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
          v31 = chargeCopy;
          displayedCopy = v133;
          v37 = v127;
          chargingStationCopy = v128;
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
          bOOLValue = [v31 BOOLValue];
          evTrip = [v52 evTrip];
          [evTrip setOutOfCharge:bOOLValue];

          displayedCopy = v133;
        }

        if (displayedCopy)
        {
          bOOLValue2 = [displayedCopy BOOLValue];
          evTrip2 = [v52 evTrip];
          [evTrip2 setOutOfRangeAlertDisplayed:bOOLValue2];
        }

        if (stationCopy)
        {
          bOOLValue3 = [stationCopy BOOLValue];
          evTrip3 = [v52 evTrip];
          [evTrip3 setOriginalTripIncludedChargingStation:bOOLValue3];
        }

        if (sarCopy)
        {
          bOOLValue4 = [sarCopy BOOLValue];
          evTrip4 = [v52 evTrip];
          [evTrip4 setChargingStopAddedThroughSar:bOOLValue4];
        }

        if (chargingStationCopy)
        {
          bOOLValue5 = [chargingStationCopy BOOLValue];
          evTrip5 = [v52 evTrip];
          [evTrip5 setTripIncludedPreferredChargingStation:bOOLValue5];
        }

        v122 = v47;
        v123 = v46;
        evTrip6 = [v52 evTrip];
        stopRemovedDetails = [evTrip6 stopRemovedDetails];

        if (!stopRemovedDetails)
        {
          v66 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(detailsCopy, "count")}];
          evTrip7 = [v52 evTrip];
          [evTrip7 setStopRemovedDetails:v66];
        }

        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v68 = detailsCopy;
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
              evTrip8 = [v52 evTrip];
              stopRemovedDetails2 = [evTrip8 stopRemovedDetails];
              v76 = [v73 copy];
              [stopRemovedDetails2 addObject:v76];
            }

            v70 = [v68 countByEnumeratingWithState:&v155 objects:v169 count:16];
          }

          while (v70);
        }

        evTrip9 = [v52 evTrip];
        realtimeDodgeballs = [evTrip9 realtimeDodgeballs];

        if (!realtimeDodgeballs)
        {
          v79 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v135, "count")}];
          evTrip10 = [v52 evTrip];
          [evTrip10 setRealtimeDodgeballs:v79];
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
              evTrip11 = [v52 evTrip];
              realtimeDodgeballs2 = [evTrip11 realtimeDodgeballs];
              v89 = [v86 copy];
              [realtimeDodgeballs2 addObject:v89];
            }

            v83 = [v81 countByEnumeratingWithState:&v151 objects:v168 count:16];
          }

          while (v83);
        }

        evTrip12 = [v52 evTrip];
        chargeLocationDetails = [evTrip12 chargeLocationDetails];

        if (!chargeLocationDetails)
        {
          v92 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v134, "count")}];
          evTrip13 = [v52 evTrip];
          [evTrip13 setChargeLocationDetails:v92];
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
              evTrip14 = [v52 evTrip];
              chargeLocationDetails2 = [evTrip14 chargeLocationDetails];
              v102 = [v99 copy];
              [chargeLocationDetails2 addObject:v102];
            }

            v96 = [v94 countByEnumeratingWithState:&v147 objects:v167 count:16];
          }

          while (v96);
        }

        evTrip15 = [v52 evTrip];
        stopAddedDetails = [evTrip15 stopAddedDetails];

        if (!stopAddedDetails)
        {
          v105 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v130, "count")}];
          evTrip16 = [v52 evTrip];
          [evTrip16 setStopAddedDetails:v105];
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
              evTrip17 = [v52 evTrip];
              stopAddedDetails2 = [evTrip17 stopAddedDetails];
              v115 = [v112 copy];
              [stopAddedDetails2 addObject:v115];
            }

            v109 = [v107 countByEnumeratingWithState:&v143 objects:v166 count:16];
          }

          while (v109);
        }

        v116 = +[GEOAPSharedStateData sharedData];
        metroRegion = [v116 metroRegion];
        evTrip18 = [v52 evTrip];
        [evTrip18 setMetro:metroRegion];

        if (v129)
        {
          [v52 addLogMsgState:?];
        }

        v31 = chargeCopy;
        chargingStationCopy = v128;
        addedDetailsCopy = v130;
        rateCopy = v124;
        statesCopy = v125;
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
        displayedCopy = v133;
        locationDetailsCopy = v134;
        dodgeballsCopy = v135;
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

+ (void)captureEvRoutingVehicleDetailsWithMake:(id)make model:(id)model towingNotSupported:(id)supported batteryCapacity:(id)capacity additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)self0
{
  v84 = *MEMORY[0x1E69E9840];
  makeCopy = make;
  modelCopy = model;
  supportedCopy = supported;
  capacityCopy = capacity;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __161__GEOAPPortal_captureEvRoutingVehicleDetailsWithMake_model_towingNotSupported_batteryCapacity_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v78[3] = &unk_1E7959478;
  v23 = blockCopy;
  v80 = v23;
  v24 = queueCopy;
  v79 = v24;
  v25 = MEMORY[0x1AC5A12F0](v78);
  if (!GEOConfigGetBOOL())
  {
    v70 = v24;
    v71 = statesCopy;
    v27 = +[GEOAPServiceManager sharedManager];
    eventCollectionIsDisabledForCurrentProcess = [v27 eventCollectionIsDisabledForCurrentProcess];

    if (eventCollectionIsDisabledForCurrentProcess)
    {
      v29 = GEOGetGEOAPPortalAnalyticsLog();
      v26 = rateCopy;
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
      v26 = rateCopy;
      if (rateCopy)
      {
        [rateCopy doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      v24 = v70;
      statesCopy = v71;
      if (v31 != 0.0 && v31 >= arc4random() / 4294967300.0)
      {
        v25[2](v25);
        goto LABEL_56;
      }

      v65 = +[GEOAPStateFactory sharedFactory];
      v66 = supportedCopy;
      v67 = makeCopy;
      v64 = capacityCopy;
      if ([v71 count])
      {
        v62 = v23;
        v68 = modelCopy;
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
        modelCopy = v68;
        v23 = v62;
        capacityCopy = v64;
        v26 = rateCopy;
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

      evRoutingVehicleDetails = [v49 evRoutingVehicleDetails];
      [evRoutingVehicleDetails setMake:v67];

      evRoutingVehicleDetails2 = [v49 evRoutingVehicleDetails];
      [evRoutingVehicleDetails2 setModel:modelCopy];

      if (v66)
      {
        bOOLValue = [v66 BOOLValue];
        evRoutingVehicleDetails3 = [v49 evRoutingVehicleDetails];
        [evRoutingVehicleDetails3 setTowingNotSupported:bOOLValue];

        capacityCopy = v64;
      }

      if (capacityCopy)
      {
        unsignedLongLongValue = [capacityCopy unsignedLongLongValue];
        evRoutingVehicleDetails4 = [v49 evRoutingVehicleDetails];
        [evRoutingVehicleDetails4 setBatteryCapacity:unsignedLongLongValue];

        capacityCopy = v64;
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
      supportedCopy = v66;
      makeCopy = v67;
    }

    v24 = v70;
    statesCopy = v71;
    goto LABEL_56;
  }

  v25[2](v25);
  v26 = rateCopy;
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

+ (void)captureDisplayAnalyticWithDisplayActionTrigger:(int)trigger requiredResourcesAvailable:(id)available totalTime:(id)time requestedImageCount:(id)count renderedImageCount:(id)imageCount movementDistance:(id)distance meanImageSpacing:(id)spacing displayEvent:(int)self0 additionalStates:(id)self1 providedDropRate:(id)self2 completionQueue:(id)self3 completionBlock:(id)self4
{
  v120 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  timeCopy = time;
  countCopy = count;
  imageCountCopy = imageCount;
  distanceCopy = distance;
  spacingCopy = spacing;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = __251__GEOAPPortal_captureDisplayAnalyticWithDisplayActionTrigger_requiredResourcesAvailable_totalTime_requestedImageCount_renderedImageCount_movementDistance_meanImageSpacing_displayEvent_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v114[3] = &unk_1E7959478;
  v24 = blockCopy;
  v116 = v24;
  v25 = queueCopy;
  v115 = v25;
  v26 = MEMORY[0x1AC5A12F0](v114);
  v105 = spacingCopy;
  if (GEOConfigGetBOOL())
  {
    v26[2](v26);
    v27 = availableCopy;
    v29 = countCopy;
    v28 = statesCopy;
    v30 = distanceCopy;
  }

  else
  {
    v102 = imageCountCopy;
    v31 = +[GEOAPServiceManager sharedManager];
    eventCollectionIsDisabledForCurrentProcess = [v31 eventCollectionIsDisabledForCurrentProcess];

    if (eventCollectionIsDisabledForCurrentProcess)
    {
      v33 = GEOGetGEOAPPortalAnalyticsLog();
      v27 = availableCopy;
      v30 = distanceCopy;
      v28 = statesCopy;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v119 = v34;
        _os_log_impl(&dword_1AB634000, v33, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v26[2](v26);
      imageCountCopy = v102;
      v29 = countCopy;
    }

    else
    {
      v27 = availableCopy;
      v30 = distanceCopy;
      v28 = statesCopy;
      if (rateCopy)
      {
        [rateCopy doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      imageCountCopy = v102;
      if (v35 == 0.0 || v35 < arc4random() / 4294967300.0)
      {
        v95 = +[GEOAPStateFactory sharedFactory];
        v96 = timeCopy;
        v85 = v25;
        v87 = v24;
        if ([statesCopy count])
        {
          v36 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v37 = statesCopy;
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
          v27 = availableCopy;
          v30 = distanceCopy;
        }

        else
        {
          v44 = 0;
        }

        v29 = countCopy;
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

        displayAnalytic = [v65 displayAnalytic];
        [displayAnalytic setDisplayActionTrigger:trigger];

        if (v27)
        {
          unsignedLongLongValue = [v27 unsignedLongLongValue];
          displayAnalytic2 = [v65 displayAnalytic];
          [displayAnalytic2 setRequiredResourcesAvailable:unsignedLongLongValue];
        }

        if (v96)
        {
          unsignedLongLongValue2 = [v96 unsignedLongLongValue];
          displayAnalytic3 = [v65 displayAnalytic];
          [displayAnalytic3 setTotalTime:unsignedLongLongValue2];
        }

        if (countCopy)
        {
          unsignedLongLongValue3 = [countCopy unsignedLongLongValue];
          displayAnalytic4 = [v65 displayAnalytic];
          [displayAnalytic4 setRequestedImageCount:unsignedLongLongValue3];
        }

        if (v102)
        {
          unsignedLongLongValue4 = [v102 unsignedLongLongValue];
          displayAnalytic5 = [v65 displayAnalytic];
          [displayAnalytic5 setRenderedImageCount:unsignedLongLongValue4];
        }

        if (v30)
        {
          unsignedLongLongValue5 = [v30 unsignedLongLongValue];
          displayAnalytic6 = [v65 displayAnalytic];
          [displayAnalytic6 setMovementDistance:unsignedLongLongValue5];

          v30 = distanceCopy;
        }

        if (v105)
        {
          [v105 doubleValue];
          v79 = v78;
          displayAnalytic7 = [v65 displayAnalytic];
          [displayAnalytic7 setMeanImageSpacing:v79];
        }

        displayAnalytic8 = [v65 displayAnalytic];
        [displayAnalytic8 setDisplayEvent:event];

        if (v99)
        {
          [v65 addLogMsgState:?];
        }

        v28 = statesCopy;
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
        timeCopy = v96;
        imageCountCopy = v102;
        v25 = v86;
        v24 = v88;
      }

      else
      {
        v26[2](v26);
        v29 = countCopy;
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

+ (void)captureDirectionsServiceMetadataWithDirectionsMetadata:(id)metadata additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v77 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __136__GEOAPPortal_captureDirectionsServiceMetadataWithDirectionsMetadata_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v71[3] = &unk_1E7959478;
  v16 = blockCopy;
  v73 = v16;
  v17 = queueCopy;
  v72 = v17;
  v18 = MEMORY[0x1AC5A12F0](v71);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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

  v64 = metadataCopy;
  v24 = +[GEOAPStateFactory sharedFactory];
  v58 = v24;
  v56 = statesCopy;
  if ([statesCopy count])
  {
    v61 = v16;
    v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v26 = statesCopy;
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

  statesCopy = v56;
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

  serviceMetadata = [v50 serviceMetadata];
  [serviceMetadata setDirectionsMetadata:v64];

  serviceMetadata2 = [v50 serviceMetadata];
  [serviceMetadata2 setServiceMetadataType:1];

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
  metadataCopy = v64;
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

+ (void)captureDirectionsWithDirectionsFeedbacks:(id)feedbacks finalLocation:(id)location arrivalLocation:(id)arrivalLocation arrivedAtDestination:(id)destination navigationAudioFeedback:(GEONavigationAudioFeedback *)feedback durationOfTrip:(id)trip durationInNavigationModes:(id)modes preArrival:(id)self0 originalEta:(id)self1 isVlfImprovementUsed:(id)self2 isCoarseLocationUsed:(id)self3 acceptedCyclingWorkout:(id)self4 batteryDied:(id)self5 chargingStopAdded:(id)self6 isSiriEngaged:(id)self7 tripOrigin:(id)self8 isBadEvExperience:(id)self9 isEvSampleTrip:(id)sampleTrip stateOfChargeAtOrigin:(id)atOrigin stateOfChargeAtDestPredicted:(id)predicted stateOfChargeAtDestActual:(id)actual stateOfChargeDiffAtDest:(id)dest waypoints:(id)waypoints evConsumptionModel:(id)model evChargingMode:(id)mode activeNavMode:(int)navMode arWalkingUsedInRoutePlanning:(id)planning arWalkingUsedInNavigation:(id)feedbacks0 voiceGuidanceLevel:(int)feedbacks1 hFPEnabled:(id)feedbacks2 isEndRouteTermination:(id)feedbacks3 isParkedCarTermination:(id)feedbacks4 isTransitionToWalkingTermination:(id)feedbacks5 isTransitionToFindmyTermination:(id)feedbacks6 parkingDetectionLocation:(id)feedbacks7 timeBetweenParkedAndArrival:(id)feedbacks8 arrivedAtDestinationCount:(id)feedbacks9 inParkingModeCount:(id)location0 isInParkingMode:(id)location1 isSuggestToWalkingTriggered:(id)location2 isTransitedToWalking:(id)location3 isSuggestToFindmyTriggered:(id)location4 isTransitedToFindmy:(id)location5 additionalStates:(id)location6 providedDropRate:(id)location7 completionQueue:(id)location8 completionBlock:(id)location9
{
  v273 = *MEMORY[0x1E69E9840];
  feedbacksCopy = feedbacks;
  locationCopy = location;
  arrivalLocationCopy = arrivalLocation;
  destinationCopy = destination;
  tripCopy = trip;
  modesCopy = modes;
  arrivalCopy = arrival;
  etaCopy = eta;
  usedCopy = used;
  locationUsedCopy = locationUsed;
  workoutCopy = workout;
  diedCopy = died;
  addedCopy = added;
  engagedCopy = engaged;
  originCopy = origin;
  experienceCopy = experience;
  sampleTripCopy = sampleTrip;
  atOriginCopy = atOrigin;
  predictedCopy = predicted;
  actualCopy = actual;
  destCopy = dest;
  waypointsCopy = waypoints;
  modelCopy = model;
  modeCopy = mode;
  planningCopy = planning;
  navigationCopy = navigation;
  enabledCopy = enabled;
  terminationCopy = termination;
  carTerminationCopy = carTermination;
  walkingTerminationCopy = walkingTermination;
  findmyTerminationCopy = findmyTermination;
  detectionLocationCopy = detectionLocation;
  andArrivalCopy = andArrival;
  countCopy = count;
  modeCountCopy = modeCount;
  parkingModeCopy = parkingMode;
  triggeredCopy = triggered;
  walkingCopy = walking;
  findmyTriggeredCopy = findmyTriggered;
  findmyCopy = findmy;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v265[0] = MEMORY[0x1E69E9820];
  v265[1] = 3221225472;
  v265[2] = __978__GEOAPPortal_captureDirectionsWithDirectionsFeedbacks_finalLocation_arrivalLocation_arrivedAtDestination_navigationAudioFeedback_durationOfTrip_durationInNavigationModes_preArrival_originalEta_isVlfImprovementUsed_isCoarseLocationUsed_acceptedCyclingWorkout_batteryDied_chargingStopAdded_isSiriEngaged_tripOrigin_isBadEvExperience_isEvSampleTrip_stateOfChargeAtOrigin_stateOfChargeAtDestPredicted_stateOfChargeAtDestActual_stateOfChargeDiffAtDest_waypoints_evConsumptionModel_evChargingMode_activeNavMode_arWalkingUsedInRoutePlanning_arWalkingUsedInNavigation_voiceGuidanceLevel_hFPEnabled_isEndRouteTermination_isParkedCarTermination_isTransitionToWalkingTermination_isTransitionToFindmyTermination_parkingDetectionLocation_timeBetweenParkedAndArrival_arrivedAtDestinationCount_inParkingModeCount_isInParkingMode_isSuggestToWalkingTriggered_isTransitedToWalking_isSuggestToFindmyTriggered_isTransitedToFindmy_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v265[3] = &unk_1E7959478;
  v213 = blockCopy;
  v267 = v213;
  v212 = queueCopy;
  v266 = v212;
  v62 = MEMORY[0x1AC5A12F0](v265);
  if (GEOConfigGetBOOL())
  {
LABEL_2:
    v62[2](v62);
    goto LABEL_137;
  }

  v211 = arrivalLocationCopy;
  v63 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v63 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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
    arrivalLocationCopy = v211;
  }

  else
  {
    if (rateCopy)
    {
      [rateCopy doubleValue];
    }

    else
    {
      GEOConfigGetDouble();
    }

    arrivalLocationCopy = v211;
    if (v67 != 0.0 && v67 >= arc4random() / 4294967300.0)
    {
      goto LABEL_2;
    }

    v199 = +[GEOAPStateFactory sharedFactory];
    v204 = destinationCopy;
    v205 = locationCopy;
    v202 = etaCopy;
    v203 = modesCopy;
    v200 = workoutCopy;
    v201 = usedCopy;
    if ([statesCopy count])
    {
      v68 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
      v261 = 0u;
      v262 = 0u;
      v263 = 0u;
      v264 = 0u;
      v69 = statesCopy;
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

    directionsEvent = [v84 directionsEvent];
    directionsFeedbacks = [directionsEvent directionsFeedbacks];

    if (!directionsFeedbacks)
    {
      v88 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(feedbacksCopy, "count")}];
      directionsEvent2 = [v84 directionsEvent];
      [directionsEvent2 setDirectionsFeedbacks:v88];
    }

    v259 = 0u;
    v260 = 0u;
    v257 = 0u;
    v258 = 0u;
    v90 = feedbacksCopy;
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
          directionsEvent3 = [v84 directionsEvent];
          directionsFeedbacks2 = [directionsEvent3 directionsFeedbacks];
          v98 = [v95 copy];
          [directionsFeedbacks2 addObject:v98];
        }

        v92 = [v90 countByEnumeratingWithState:&v257 objects:v271 count:16];
      }

      while (v92);
    }

    directionsEvent4 = [v84 directionsEvent];
    [directionsEvent4 setFinalLocation:v205];

    directionsEvent5 = [v84 directionsEvent];
    [directionsEvent5 setArrivalLocation:v211];

    if (v204)
    {
      bOOLValue = [v204 BOOLValue];
      directionsEvent6 = [v84 directionsEvent];
      [directionsEvent6 setArrivedAtDestination:bOOLValue];
    }

    v103 = *&feedback->var9;
    v255 = *&feedback->var0;
    v256[0] = v103;
    *(v256 + 12) = *&feedback->var12;
    directionsEvent7 = [v84 directionsEvent];
    buf = v255;
    v270[0] = v256[0];
    *(v270 + 12) = *(v256 + 12);
    [directionsEvent7 setNavigationAudioFeedback:&buf];

    if (tripCopy)
    {
      [tripCopy doubleValue];
      v106 = v105;
      directionsEvent8 = [v84 directionsEvent];
      [directionsEvent8 setDurationOfTrip:v106];
    }

    directionsEvent9 = [v84 directionsEvent];
    [directionsEvent9 setDurationInNavigationModes:v203];

    if (arrivalCopy)
    {
      bOOLValue2 = [arrivalCopy BOOLValue];
      directionsEvent10 = [v84 directionsEvent];
      [directionsEvent10 setPreArrival:bOOLValue2];
    }

    if (v202)
    {
      unsignedLongLongValue = [v202 unsignedLongLongValue];
      directionsEvent11 = [v84 directionsEvent];
      [directionsEvent11 setOriginalEta:unsignedLongLongValue];
    }

    if (v201)
    {
      bOOLValue3 = [v201 BOOLValue];
      directionsEvent12 = [v84 directionsEvent];
      [directionsEvent12 setIsVlfImprovementUsed:bOOLValue3];
    }

    if (locationUsedCopy)
    {
      bOOLValue4 = [locationUsedCopy BOOLValue];
      directionsEvent13 = [v84 directionsEvent];
      [directionsEvent13 setIsCoarseLocationUsed:bOOLValue4];
    }

    if (v200)
    {
      bOOLValue5 = [v200 BOOLValue];
      directionsEvent14 = [v84 directionsEvent];
      [directionsEvent14 setAcceptedCyclingWorkout:bOOLValue5];
    }

    if (diedCopy)
    {
      bOOLValue6 = [diedCopy BOOLValue];
      directionsEvent15 = [v84 directionsEvent];
      [directionsEvent15 setBatteryDied:bOOLValue6];
    }

    if (addedCopy)
    {
      bOOLValue7 = [addedCopy BOOLValue];
      directionsEvent16 = [v84 directionsEvent];
      [directionsEvent16 setChargingStopAdded:bOOLValue7];
    }

    if (engagedCopy)
    {
      bOOLValue8 = [engagedCopy BOOLValue];
      directionsEvent17 = [v84 directionsEvent];
      [directionsEvent17 setIsSiriEngaged:bOOLValue8];
    }

    directionsEvent18 = [v84 directionsEvent];
    [directionsEvent18 setTripOrigin:originCopy];

    if (experienceCopy)
    {
      bOOLValue9 = [experienceCopy BOOLValue];
      directionsEvent19 = [v84 directionsEvent];
      [directionsEvent19 setIsBadEvExperience:bOOLValue9];
    }

    if (sampleTripCopy)
    {
      bOOLValue10 = [sampleTripCopy BOOLValue];
      directionsEvent20 = [v84 directionsEvent];
      [directionsEvent20 setIsEvSampleTrip:bOOLValue10];
    }

    if (atOriginCopy)
    {
      unsignedLongLongValue2 = [atOriginCopy unsignedLongLongValue];
      directionsEvent21 = [v84 directionsEvent];
      [directionsEvent21 setStateOfChargeAtOrigin:unsignedLongLongValue2];
    }

    if (predictedCopy)
    {
      unsignedLongLongValue3 = [predictedCopy unsignedLongLongValue];
      directionsEvent22 = [v84 directionsEvent];
      [directionsEvent22 setStateOfChargeAtDestPredicted:unsignedLongLongValue3];
    }

    if (actualCopy)
    {
      unsignedLongLongValue4 = [actualCopy unsignedLongLongValue];
      directionsEvent23 = [v84 directionsEvent];
      [directionsEvent23 setStateOfChargeAtDestActual:unsignedLongLongValue4];
    }

    if (destCopy)
    {
      unsignedLongLongValue5 = [destCopy unsignedLongLongValue];
      directionsEvent24 = [v84 directionsEvent];
      [directionsEvent24 setStateOfChargeDiffAtDest:unsignedLongLongValue5];
    }

    v210 = locationUsedCopy;
    directionsEvent25 = [v84 directionsEvent];
    waypoints = [directionsEvent25 waypoints];

    if (!waypoints)
    {
      v140 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(waypointsCopy, "count")}];
      directionsEvent26 = [v84 directionsEvent];
      [directionsEvent26 setWaypoints:v140];
    }

    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    v142 = waypointsCopy;
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
          directionsEvent27 = [v84 directionsEvent];
          waypoints2 = [directionsEvent27 waypoints];
          v150 = [v147 copy];
          [waypoints2 addObject:v150];
        }

        v144 = [v142 countByEnumeratingWithState:&v251 objects:v268 count:16];
      }

      while (v144);
    }

    directionsEvent28 = [v84 directionsEvent];
    [directionsEvent28 setEvConsumptionModel:modelCopy];

    directionsEvent29 = [v84 directionsEvent];
    [directionsEvent29 setEvChargingMode:modeCopy];

    directionsEvent30 = [v84 directionsEvent];
    [directionsEvent30 setActiveNavMode:navMode];

    if (planningCopy)
    {
      bOOLValue11 = [planningCopy BOOLValue];
      directionsEvent31 = [v84 directionsEvent];
      [directionsEvent31 setArWalkingUsedInRoutePlanning:bOOLValue11];
    }

    if (navigationCopy)
    {
      bOOLValue12 = [navigationCopy BOOLValue];
      directionsEvent32 = [v84 directionsEvent];
      [directionsEvent32 setArWalkingUsedInNavigation:bOOLValue12];
    }

    directionsEvent33 = [v84 directionsEvent];
    [directionsEvent33 setVoiceGuidanceLevel:level];

    if (enabledCopy)
    {
      bOOLValue13 = [enabledCopy BOOLValue];
      directionsEvent34 = [v84 directionsEvent];
      [directionsEvent34 setHFPEnabled:bOOLValue13];
    }

    if (terminationCopy)
    {
      bOOLValue14 = [terminationCopy BOOLValue];
      directionsEvent35 = [v84 directionsEvent];
      [directionsEvent35 setIsEndRouteTermination:bOOLValue14];
    }

    if (carTerminationCopy)
    {
      bOOLValue15 = [carTerminationCopy BOOLValue];
      directionsEvent36 = [v84 directionsEvent];
      [directionsEvent36 setIsParkedCarTermination:bOOLValue15];
    }

    if (walkingTerminationCopy)
    {
      bOOLValue16 = [walkingTerminationCopy BOOLValue];
      directionsEvent37 = [v84 directionsEvent];
      [directionsEvent37 setIsTransitionToWalkingTermination:bOOLValue16];
    }

    if (findmyTerminationCopy)
    {
      bOOLValue17 = [findmyTerminationCopy BOOLValue];
      directionsEvent38 = [v84 directionsEvent];
      [directionsEvent38 setIsTransitionToFindmyTermination:bOOLValue17];
    }

    directionsEvent39 = [v84 directionsEvent];
    [directionsEvent39 setParkingDetectionLocation:detectionLocationCopy];

    if (andArrivalCopy)
    {
      [andArrivalCopy doubleValue];
      v171 = v170;
      directionsEvent40 = [v84 directionsEvent];
      [directionsEvent40 setTimeBetweenParkedAndArrival:v171];
    }

    if (countCopy)
    {
      unsignedLongLongValue6 = [countCopy unsignedLongLongValue];
      directionsEvent41 = [v84 directionsEvent];
      [directionsEvent41 setArrivedAtDestinationCount:unsignedLongLongValue6];
    }

    if (modeCountCopy)
    {
      unsignedLongLongValue7 = [modeCountCopy unsignedLongLongValue];
      directionsEvent42 = [v84 directionsEvent];
      [directionsEvent42 setInParkingModeCount:unsignedLongLongValue7];
    }

    if (parkingModeCopy)
    {
      bOOLValue18 = [parkingModeCopy BOOLValue];
      directionsEvent43 = [v84 directionsEvent];
      [directionsEvent43 setIsInParkingMode:bOOLValue18];
    }

    if (triggeredCopy)
    {
      bOOLValue19 = [triggeredCopy BOOLValue];
      directionsEvent44 = [v84 directionsEvent];
      [directionsEvent44 setIsSuggestToWalkingTriggered:bOOLValue19];
    }

    if (walkingCopy)
    {
      bOOLValue20 = [walkingCopy BOOLValue];
      directionsEvent45 = [v84 directionsEvent];
      [directionsEvent45 setIsTransitedToWalking:bOOLValue20];
    }

    if (findmyTriggeredCopy)
    {
      bOOLValue21 = [findmyTriggeredCopy BOOLValue];
      directionsEvent46 = [v84 directionsEvent];
      [directionsEvent46 setIsSuggestToFindmyTriggered:bOOLValue21];
    }

    if (findmyCopy)
    {
      bOOLValue22 = [findmyCopy BOOLValue];
      directionsEvent47 = [v84 directionsEvent];
      [directionsEvent47 setIsTransitedToFindmy:bOOLValue22];
    }

    mEMORY[0x1E69A2710] = [MEMORY[0x1E69A2710] sharedInstance];
    navSessionID = [mEMORY[0x1E69A2710] navSessionID];
    v190 = v189;
    directionsEvent48 = [v84 directionsEvent];
    [directionsEvent48 setNavSessionId:{navSessionID, v190}];

    if (v198)
    {
      [v84 addLogMsgState:?];
    }

    locationCopy = v205;
    etaCopy = v202;
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
    arrivalLocationCopy = v211;
    destinationCopy = v204;
    locationUsedCopy = v210;
    modesCopy = v203;
    usedCopy = v201;
    workoutCopy = v200;
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

+ (void)captureDirectionsWithDirectionsFeedbacks:(id)feedbacks finalLocation:(id)location arrivalLocation:(id)arrivalLocation arrivedAtDestination:(id)destination navigationAudioFeedback:(GEONavigationAudioFeedback *)feedback durationOfTrip:(id)trip durationInNavigationModes:(id)modes preArrival:(id)self0 originalEta:(id)self1 isVlfImprovementUsed:(id)self2 isCoarseLocationUsed:(id)self3 acceptedCyclingWorkout:(id)self4 batteryDied:(id)self5 chargingStopAdded:(id)self6 isSiriEngaged:(id)self7 tripOrigin:(id)self8 isBadEvExperience:(id)self9 isEvSampleTrip:(id)sampleTrip stateOfChargeAtOrigin:(id)atOrigin stateOfChargeAtDestPredicted:(id)predicted stateOfChargeAtDestActual:(id)actual stateOfChargeDiffAtDest:(id)dest waypoints:(id)waypoints evConsumptionModel:(id)model evChargingMode:(id)mode activeNavMode:(int)navMode arWalkingUsedInRoutePlanning:(id)planning arWalkingUsedInNavigation:(id)feedbacks0 voiceGuidanceLevel:(int)feedbacks1 hFPEnabled:(id)feedbacks2 isEndRouteTermination:(id)feedbacks3 isParkedCarTermination:(id)feedbacks4 isTransitionToWalkingTermination:(id)feedbacks5 isTransitionToFindmyTermination:(id)feedbacks6 parkingDetectionLocation:(id)feedbacks7 timeBetweenParkedAndArrival:(id)feedbacks8 arrivedAtDestinationCount:(id)feedbacks9 inParkingModeCount:(id)location0 isInParkingMode:(id)location1 isSuggestToWalkingTriggered:(id)location2 isTransitedToWalking:(id)location3 isSuggestToFindmyTriggered:(id)location4 isTransitedToFindmy:(id)location5
{
  v45 = *&feedback->var9;
  v48 = *&feedback->var0;
  v49[0] = v45;
  *(v49 + 12) = *&feedback->var12;
  LODWORD(v47) = level;
  LODWORD(v46) = navMode;
  [self captureDirectionsWithDirectionsFeedbacks:feedbacks finalLocation:location arrivalLocation:arrivalLocation arrivedAtDestination:destination navigationAudioFeedback:&v48 durationOfTrip:trip durationInNavigationModes:modes preArrival:arrival originalEta:eta isVlfImprovementUsed:used isCoarseLocationUsed:locationUsed acceptedCyclingWorkout:workout batteryDied:died chargingStopAdded:added isSiriEngaged:engaged tripOrigin:origin isBadEvExperience:experience isEvSampleTrip:sampleTrip stateOfChargeAtOrigin:atOrigin stateOfChargeAtDestPredicted:predicted stateOfChargeAtDestActual:actual stateOfChargeDiffAtDest:dest waypoints:waypoints evConsumptionModel:model evChargingMode:mode activeNavMode:v46 arWalkingUsedInRoutePlanning:planning arWalkingUsedInNavigation:navigation voiceGuidanceLevel:v47 hFPEnabled:enabled isEndRouteTermination:termination isParkedCarTermination:carTermination isTransitionToWalkingTermination:walkingTermination isTransitionToFindmyTermination:findmyTermination parkingDetectionLocation:detectionLocation timeBetweenParkedAndArrival:andArrival arrivedAtDestinationCount:count inParkingModeCount:modeCount isInParkingMode:parkingMode isSuggestToWalkingTriggered:triggered isTransitedToWalking:walking isSuggestToFindmyTriggered:findmyTriggered isTransitedToFindmy:findmy additionalStates:0 providedDropRate:0 completionQueue:0 completionBlock:0];
}

+ (void)captureDailyUseSummaryWithUseEvents:(id)events summaryPeriod:(int)period summaryDate:(id)date aggregationSummaryDate:(id)summaryDate firstEventDate:(id)eventDate user_mapsUseLastDate:(id)lastDate additionalStates:(id)states providedDropRate:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v102 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  dateCopy = date;
  summaryDateCopy = summaryDate;
  eventDateCopy = eventDate;
  lastDateCopy = lastDate;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __202__GEOAPPortal_captureDailyUseSummaryWithUseEvents_summaryPeriod_summaryDate_aggregationSummaryDate_firstEventDate_user_mapsUseLastDate_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v95[3] = &unk_1E7959478;
  v23 = blockCopy;
  v97 = v23;
  v24 = queueCopy;
  v96 = v24;
  v25 = MEMORY[0x1AC5A12F0](v95);
  if (GEOConfigGetBOOL())
  {
LABEL_2:
    v25[2](v25);
    goto LABEL_45;
  }

  v82 = eventDateCopy;
  v26 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v26 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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
    eventDateCopy = v82;
  }

  else
  {
    if (rateCopy)
    {
      [rateCopy doubleValue];
    }

    else
    {
      GEOConfigGetDouble();
    }

    eventDateCopy = v82;
    if (v30 != 0.0 && v30 >= arc4random() / 4294967300.0)
    {
      goto LABEL_2;
    }

    v31 = +[GEOAPStateFactory sharedFactory];
    v32 = [v31 stateForType:48];
    v33 = [v32 copy];

    if (v33)
    {
      [lastDateCopy doubleValue];
      v35 = v34;
      user = [v33 user];
      [user setMapsUseLastDate:v35];
    }

    v78 = dateCopy;
    v79 = v31;
    v73 = v33;
    v74 = v23;
    v76 = statesCopy;
    v77 = summaryDateCopy;
    v75 = rateCopy;
    if ([statesCopy count])
    {
      v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v38 = statesCopy;
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

    dailyUseSummary = [v47 dailyUseSummary];
    useEvents = [dailyUseSummary useEvents];

    if (!useEvents)
    {
      v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(eventsCopy, "count")}];
      dailyUseSummary2 = [v47 dailyUseSummary];
      [dailyUseSummary2 setUseEvents:v51];
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v53 = eventsCopy;
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
          dailyUseSummary3 = [v47 dailyUseSummary];
          useEvents2 = [dailyUseSummary3 useEvents];
          v61 = [v58 copy];
          [useEvents2 addObject:v61];
        }

        v55 = [v53 countByEnumeratingWithState:&v87 objects:v98 count:16];
      }

      while (v55);
    }

    dailyUseSummary4 = [v47 dailyUseSummary];
    [dailyUseSummary4 setSummaryPeriod:period];

    dailyUseSummary5 = [v47 dailyUseSummary];
    dateCopy = v78;
    [dailyUseSummary5 setSummaryDate:v78];

    dailyUseSummary6 = [v47 dailyUseSummary];
    summaryDateCopy = v77;
    [dailyUseSummary6 setAggregationSummaryDate:v77];

    eventDateCopy = v82;
    if (v82)
    {
      [v82 doubleValue];
      [GEOAPFuzzers dayResolution:?];
      v66 = v65;
      dailyUseSummary7 = [v47 dailyUseSummary];
      [dailyUseSummary7 setFirstEventDate:v66];
    }

    rateCopy = v75;
    statesCopy = v76;
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

+ (void)captureCommuteWindowWithStartTime:(id)time duration:(id)duration predictedExitTime:(id)exitTime endReason:(int)reason numberOfAlertingResponses:(id)responses numberOfDoomRoutingRequests:(id)requests predictedDestinations:(id)destinations additionalStates:(id)self0 providedDropRate:(id)self1 completionQueue:(id)self2 completionBlock:(id)self3
{
  v110 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  durationCopy = duration;
  exitTimeCopy = exitTime;
  responsesCopy = responses;
  requestsCopy = requests;
  destinationsCopy = destinations;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __228__GEOAPPortal_captureCommuteWindowWithStartTime_duration_predictedExitTime_endReason_numberOfAlertingResponses_numberOfDoomRoutingRequests_predictedDestinations_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v103[3] = &unk_1E7959478;
  v24 = blockCopy;
  v105 = v24;
  v25 = queueCopy;
  v104 = v25;
  v26 = MEMORY[0x1AC5A12F0](v103);
  if (GEOConfigGetBOOL())
  {
    v26[2](v26);
    v28 = durationCopy;
    v27 = timeCopy;
    goto LABEL_10;
  }

  v88 = responsesCopy;
  v89 = exitTimeCopy;
  v29 = +[GEOAPServiceManager sharedManager];
  platformDiagAndUsage = [v29 platformDiagAndUsage];

  if ((platformDiagAndUsage & 1) == 0)
  {
    v26[2](v26);
    v28 = durationCopy;
    v27 = timeCopy;
LABEL_9:
    responsesCopy = v88;
    exitTimeCopy = v89;
    goto LABEL_10;
  }

  v31 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v31 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
  {
    v33 = GEOGetGEOAPPortalAnalyticsLog();
    v28 = durationCopy;
    v27 = timeCopy;
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
  }

  else
  {
    GEOConfigGetDouble();
  }

  v28 = durationCopy;
  v27 = timeCopy;
  responsesCopy = v88;
  exitTimeCopy = v89;
  if (v36 == 0.0 || v36 < arc4random() / 4294967300.0)
  {
    v37 = +[GEOAPStateFactory sharedFactory];
    v79 = v24;
    v80 = rateCopy;
    v83 = v37;
    v84 = destinationsCopy;
    v81 = statesCopy;
    if ([statesCopy count])
    {
      v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v39 = statesCopy;
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
      v28 = durationCopy;
      v27 = timeCopy;
      v37 = v83;
      destinationsCopy = v84;
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
      commuteWindow = [v49 commuteWindow];
      [commuteWindow setStartTime:v52];
    }

    if (v28)
    {
      unsignedLongLongValue = [v28 unsignedLongLongValue];
      commuteWindow2 = [v49 commuteWindow];
      [commuteWindow2 setDuration:unsignedLongLongValue];
    }

    if (v89)
    {
      unsignedLongLongValue2 = [v89 unsignedLongLongValue];
      commuteWindow3 = [v49 commuteWindow];
      [commuteWindow3 setPredictedExitTime:unsignedLongLongValue2];
    }

    commuteWindow4 = [v49 commuteWindow];
    [commuteWindow4 setEndReason:reason];

    if (v88)
    {
      unsignedLongLongValue3 = [v88 unsignedLongLongValue];
      commuteWindow5 = [v49 commuteWindow];
      [commuteWindow5 setNumberOfAlertingResponses:unsignedLongLongValue3];
    }

    if (requestsCopy)
    {
      unsignedLongLongValue4 = [requestsCopy unsignedLongLongValue];
      commuteWindow6 = [v49 commuteWindow];
      [commuteWindow6 setNumberOfDoomRoutingRequests:unsignedLongLongValue4];
    }

    v78 = v47;
    v87 = v46;
    commuteWindow7 = [v49 commuteWindow];
    predictedDestinations = [commuteWindow7 predictedDestinations];

    if (!predictedDestinations)
    {
      v65 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(destinationsCopy, "count")}];
      commuteWindow8 = [v49 commuteWindow];
      [commuteWindow8 setPredictedDestinations:v65];
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v67 = destinationsCopy;
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
          commuteWindow9 = [v49 commuteWindow];
          predictedDestinations2 = [commuteWindow9 predictedDestinations];
          v75 = [v72 copy];
          [predictedDestinations2 addObject:v75];
        }

        v69 = [v67 countByEnumeratingWithState:&v95 objects:v106 count:16];
      }

      while (v69);
    }

    if (v82)
    {
      [v49 addLogMsgState:v82];
    }

    v28 = durationCopy;
    v27 = timeCopy;
    rateCopy = v80;
    statesCopy = v81;
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
    responsesCopy = v88;
    exitTimeCopy = v89;
    destinationsCopy = v84;
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

+ (void)captureClientACSuggestionWithQuery:(id)query queryTokens:(id)tokens entries:(id)entries selectedIndex:(id)index selectedSectionIndex:(id)sectionIndex withinSectionSelectedIndex:(id)selectedIndex isRetainedQuery:(id)retainedQuery isRerankerTriggered:(id)self0 shouldDifferentiateClientAndServerResults:(id)self1 responseStatus:(int)self2 GEOModelMetadata_modelVersion:(id)self3 GEOModelMetadata_rolloutId:(id)self4 GEOModelMetadata_rolloutDeploymentId:(id)self5 GEOModelMetadata_rolloutFactorpackId:(id)self6 GEOModelMetadata_rolloutRampId:(id)self7 GEOExperimentMetadata_experimentId:(id)self8 GEOExperimentMetadata_deploymentId:(id)self9 GEOExperimentMetadata_treatmentId:(id)metadata_treatmentId GEOExperimentMetadata_experimentDescription:(id)description additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v222 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  tokensCopy = tokens;
  entriesCopy = entries;
  indexCopy = index;
  sectionIndexCopy = sectionIndex;
  selectedIndexCopy = selectedIndex;
  retainedQueryCopy = retainedQuery;
  triggeredCopy = triggered;
  resultsCopy = results;
  versionCopy = version;
  idCopy = id;
  deploymentIdCopy = deploymentId;
  factorpackIdCopy = factorpackId;
  rampIdCopy = rampId;
  metadata_experimentIdCopy = metadata_experimentId;
  metadata_deploymentIdCopy = metadata_deploymentId;
  metadata_treatmentIdCopy = metadata_treatmentId;
  descriptionCopy = description;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v214[0] = MEMORY[0x1E69E9820];
  v214[1] = 3221225472;
  v214[2] = __601__GEOAPPortal_captureClientACSuggestionWithQuery_queryTokens_entries_selectedIndex_selectedSectionIndex_withinSectionSelectedIndex_isRetainedQuery_isRerankerTriggered_shouldDifferentiateClientAndServerResults_responseStatus_GEOModelMetadata_modelVersion_GEOModelMetadata_rolloutId_GEOModelMetadata_rolloutDeploymentId_GEOModelMetadata_rolloutFactorpackId_GEOModelMetadata_rolloutRampId_GEOExperimentMetadata_experimentId_GEOExperimentMetadata_deploymentId_GEOExperimentMetadata_treatmentId_GEOExperimentMetadata_experimentDescription_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v214[3] = &unk_1E7959478;
  v186 = blockCopy;
  v216 = v186;
  v185 = queueCopy;
  v215 = v185;
  v39 = MEMORY[0x1AC5A12F0](v214);
  if (GEOConfigGetBOOL())
  {
    v39[2](v39);
LABEL_188:
    v43 = metadata_deploymentIdCopy;
    goto LABEL_189;
  }

  v184 = retainedQueryCopy;
  v40 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v40 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
  {
    v42 = GEOGetGEOAPPortalAnalyticsLog();
    v43 = metadata_deploymentIdCopy;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v44 = GEOApplicationIdentifierOrProcessName();
      *buf = 138412290;
      v221 = v44;
      _os_log_impl(&dword_1AB634000, v42, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
    }

    v39[2](v39);
    retainedQueryCopy = v184;
  }

  else
  {
    v43 = metadata_deploymentIdCopy;
    v161 = sectionIndexCopy;
    if (rateCopy)
    {
      [rateCopy doubleValue];
    }

    else
    {
      GEOConfigGetDouble();
    }

    retainedQueryCopy = v184;
    if (v45 == 0.0 || v45 < arc4random() / 4294967300.0)
    {
      v175 = versionCopy;
      v46 = +[GEOAPStateFactory sharedFactory];
      v176 = resultsCopy;
      v177 = entriesCopy;
      v158 = triggeredCopy;
      v160 = v46;
      if ([statesCopy count])
      {
        v47 = idCopy;
        v48 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
        v210 = 0u;
        v211 = 0u;
        v212 = 0u;
        v213 = 0u;
        v49 = statesCopy;
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
        idCopy = v47;
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
      v174 = idCopy;
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

      clientAcSuggestions = [v88 clientAcSuggestions];
      [clientAcSuggestions setQuery:queryCopy];

      clientAcSuggestions2 = [v88 clientAcSuggestions];
      queryTokens = [clientAcSuggestions2 queryTokens];

      if (!queryTokens)
      {
        v93 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(tokensCopy, "count", v56)}];
        clientAcSuggestions3 = [v88 clientAcSuggestions];
        [clientAcSuggestions3 setQueryTokens:v93];
      }

      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v95 = tokensCopy;
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
            clientAcSuggestions4 = [v88 clientAcSuggestions];
            queryTokens2 = [clientAcSuggestions4 queryTokens];
            v103 = [v100 copy];
            [queryTokens2 addObject:v103];
          }

          v97 = [v95 countByEnumeratingWithState:&v206 objects:v218 count:16];
        }

        while (v97);
      }

      clientAcSuggestions5 = [v88 clientAcSuggestions];
      entries = [clientAcSuggestions5 entries];

      if (!entries)
      {
        v106 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v177, "count")}];
        clientAcSuggestions6 = [v88 clientAcSuggestions];
        [clientAcSuggestions6 setEntries:v106];
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
            clientAcSuggestions7 = [v88 clientAcSuggestions];
            entries2 = [clientAcSuggestions7 entries];
            v116 = [v113 copy];
            [entries2 addObject:v116];
          }

          v110 = [v108 countByEnumeratingWithState:&v202 objects:v217 count:16];
        }

        while (v110);
      }

      if (indexCopy)
      {
        integerValue = [indexCopy integerValue];
        clientAcSuggestions8 = [v88 clientAcSuggestions];
        [clientAcSuggestions8 setSelectedIndex:integerValue];
      }

      retainedQueryCopy = v184;
      triggeredCopy = v158;
      if (v161)
      {
        integerValue2 = [v161 integerValue];
        clientAcSuggestions9 = [v88 clientAcSuggestions];
        [clientAcSuggestions9 setSelectedSectionIndex:integerValue2];
      }

      if (selectedIndexCopy)
      {
        integerValue3 = [selectedIndexCopy integerValue];
        clientAcSuggestions10 = [v88 clientAcSuggestions];
        [clientAcSuggestions10 setWithinSectionSelectedIndex:integerValue3];
      }

      entriesCopy = v177;
      if (v184)
      {
        bOOLValue = [v184 BOOLValue];
        clientAcSuggestions11 = [v88 clientAcSuggestions];
        [clientAcSuggestions11 setIsRetainedQuery:bOOLValue];
      }

      if (v158)
      {
        bOOLValue2 = [v158 BOOLValue];
        clientAcSuggestions12 = [v88 clientAcSuggestions];
        [clientAcSuggestions12 setIsRerankerTriggered:bOOLValue2];
      }

      if (v176)
      {
        bOOLValue3 = [v176 BOOLValue];
        clientAcSuggestions13 = [v88 clientAcSuggestions];
        [clientAcSuggestions13 setShouldDifferentiateClientAndServerResults:bOOLValue3];
      }

      clientAcSuggestions14 = [v88 clientAcSuggestions];
      [clientAcSuggestions14 setResponseStatus:status];

      v130 = objc_alloc_init(MEMORY[0x1E69A2240]);
      clientAcSuggestions15 = [v88 clientAcSuggestions];
      [clientAcSuggestions15 setModelMetadata:v130];

      clientAcSuggestions16 = [v88 clientAcSuggestions];
      modelMetadata = [clientAcSuggestions16 modelMetadata];
      [modelMetadata setModelVersion:v175];

      clientAcSuggestions17 = [v88 clientAcSuggestions];
      modelMetadata2 = [clientAcSuggestions17 modelMetadata];
      [modelMetadata2 setRolloutId:v174];

      clientAcSuggestions18 = [v88 clientAcSuggestions];
      modelMetadata3 = [clientAcSuggestions18 modelMetadata];
      [modelMetadata3 setRolloutDeploymentId:deploymentIdCopy];

      clientAcSuggestions19 = [v88 clientAcSuggestions];
      modelMetadata4 = [clientAcSuggestions19 modelMetadata];
      [modelMetadata4 setRolloutFactorpackId:factorpackIdCopy];

      clientAcSuggestions20 = [v88 clientAcSuggestions];
      modelMetadata5 = [clientAcSuggestions20 modelMetadata];
      [modelMetadata5 setRolloutRampId:rampIdCopy];

      v142 = objc_alloc_init(MEMORY[0x1E69A1D98]);
      clientAcSuggestions21 = [v88 clientAcSuggestions];
      [clientAcSuggestions21 setTrialExperimentMetadata:v142];

      clientAcSuggestions22 = [v88 clientAcSuggestions];
      trialExperimentMetadata = [clientAcSuggestions22 trialExperimentMetadata];
      [trialExperimentMetadata setExperimentId:metadata_experimentIdCopy];

      if (metadata_deploymentIdCopy)
      {
        unsignedLongLongValue = [metadata_deploymentIdCopy unsignedLongLongValue];
        clientAcSuggestions23 = [v88 clientAcSuggestions];
        trialExperimentMetadata2 = [clientAcSuggestions23 trialExperimentMetadata];
        [trialExperimentMetadata2 setDeploymentId:unsignedLongLongValue];

        retainedQueryCopy = v184;
      }

      clientAcSuggestions24 = [v88 clientAcSuggestions];
      trialExperimentMetadata3 = [clientAcSuggestions24 trialExperimentMetadata];
      [trialExperimentMetadata3 setTreatmentId:metadata_treatmentIdCopy];

      clientAcSuggestions25 = [v88 clientAcSuggestions];
      trialExperimentMetadata4 = [clientAcSuggestions25 trialExperimentMetadata];
      [trialExperimentMetadata4 setExperimentDescription:descriptionCopy];

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
      sectionIndexCopy = v161;
      versionCopy = v175;
      resultsCopy = v176;
      idCopy = v174;
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

+ (void)captureClientACResponseWithQuery:(id)query queryTokens:(id)tokens entries:(id)entries shouldDifferentiateClientAndServerResults:(id)results overallLatencyInMs:(id)ms isRerankerTriggered:(id)triggered isRetainedQuery:(id)retainedQuery additionalStates:(id)self0 providedDropRate:(id)self1 completionQueue:(id)self2 completionBlock:(id)self3
{
  v171 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  tokensCopy = tokens;
  entriesCopy = entries;
  resultsCopy = results;
  msCopy = ms;
  triggeredCopy = triggered;
  retainedQueryCopy = retainedQuery;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v163[0] = MEMORY[0x1E69E9820];
  v163[1] = 3221225472;
  v163[2] = __231__GEOAPPortal_captureClientACResponseWithQuery_queryTokens_entries_shouldDifferentiateClientAndServerResults_overallLatencyInMs_isRerankerTriggered_isRetainedQuery_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v163[3] = &unk_1E7959478;
  v25 = blockCopy;
  v165 = v25;
  v144 = queueCopy;
  v164 = v144;
  v26 = MEMORY[0x1AC5A12F0](v163);
  if (GEOConfigGetBOOL())
  {
    v26[2](v26);
    v28 = triggeredCopy;
    v27 = msCopy;
  }

  else
  {
    v143 = resultsCopy;
    v29 = +[GEOAPServiceManager sharedManager];
    eventCollectionIsDisabledForCurrentProcess = [v29 eventCollectionIsDisabledForCurrentProcess];

    if (eventCollectionIsDisabledForCurrentProcess)
    {
      v31 = GEOGetGEOAPPortalAnalyticsLog();
      v28 = triggeredCopy;
      v27 = msCopy;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = GEOApplicationIdentifierOrProcessName();
        *buf = 138412290;
        v170 = v32;
        _os_log_impl(&dword_1AB634000, v31, OS_LOG_TYPE_DEBUG, "collection is disabled for current process (%@)", buf, 0xCu);
      }

      v26[2](v26);
      resultsCopy = v143;
    }

    else
    {
      v28 = triggeredCopy;
      v27 = msCopy;
      if (rateCopy)
      {
        [rateCopy doubleValue];
      }

      else
      {
        GEOConfigGetDouble();
      }

      resultsCopy = v143;
      if (v33 == 0.0 || v33 < arc4random() / 4294967300.0)
      {
        v142 = tokensCopy;
        v34 = +[GEOAPStateFactory sharedFactory];
        v120 = statesCopy;
        v121 = retainedQueryCopy;
        v123 = v34;
        v118 = v25;
        if ([statesCopy count])
        {
          v35 = rateCopy;
          v36 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
          v159 = 0u;
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          v37 = statesCopy;
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
          rateCopy = v35;
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

        v119 = rateCopy;
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

        clientAcSuggestions = [v76 clientAcSuggestions];
        [clientAcSuggestions setQuery:queryCopy];

        clientAcSuggestions2 = [v76 clientAcSuggestions];
        queryTokens = [clientAcSuggestions2 queryTokens];

        if (!queryTokens)
        {
          v81 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v142, "count")}];
          clientAcSuggestions3 = [v76 clientAcSuggestions];
          [clientAcSuggestions3 setQueryTokens:v81];
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
              clientAcSuggestions4 = [v76 clientAcSuggestions];
              queryTokens2 = [clientAcSuggestions4 queryTokens];
              v91 = [v88 copy];
              [queryTokens2 addObject:v91];
            }

            v85 = [v83 countByEnumeratingWithState:&v155 objects:v167 count:16];
          }

          while (v85);
        }

        clientAcSuggestions5 = [v76 clientAcSuggestions];
        entries = [clientAcSuggestions5 entries];

        if (!entries)
        {
          v94 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(entriesCopy, "count")}];
          clientAcSuggestions6 = [v76 clientAcSuggestions];
          [clientAcSuggestions6 setEntries:v94];
        }

        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v96 = entriesCopy;
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
              clientAcSuggestions7 = [v76 clientAcSuggestions];
              entries2 = [clientAcSuggestions7 entries];
              v104 = [v101 copy];
              [entries2 addObject:v104];
            }

            v98 = [v96 countByEnumeratingWithState:&v151 objects:v166 count:16];
          }

          while (v98);
        }

        if (v143)
        {
          bOOLValue = [v143 BOOLValue];
          clientAcSuggestions8 = [v76 clientAcSuggestions];
          [clientAcSuggestions8 setShouldDifferentiateClientAndServerResults:bOOLValue];
        }

        v28 = triggeredCopy;
        v27 = msCopy;
        statesCopy = v120;
        retainedQueryCopy = v121;
        if (msCopy)
        {
          integerValue = [msCopy integerValue];
          clientAcSuggestions9 = [v76 clientAcSuggestions];
          [clientAcSuggestions9 setOverallLatencyInMs:integerValue];
        }

        if (triggeredCopy)
        {
          bOOLValue2 = [triggeredCopy BOOLValue];
          clientAcSuggestions10 = [v76 clientAcSuggestions];
          [clientAcSuggestions10 setIsRerankerTriggered:bOOLValue2];
        }

        if (v121)
        {
          bOOLValue3 = [v121 BOOLValue];
          clientAcSuggestions11 = [v76 clientAcSuggestions];
          [clientAcSuggestions11 setIsRetainedQuery:bOOLValue3];
        }

        clientAcSuggestions12 = [v76 clientAcSuggestions];
        [clientAcSuggestions12 setTrigger:2];

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
        tokensCopy = v142;
        resultsCopy = v143;
        v25 = v118;
        rateCopy = v119;
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

+ (void)captureClientACKeypressWithQuery:(id)query queryTokens:(id)tokens entries:(id)entries keypressStatus:(int)status additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)self0
{
  v157 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  tokensCopy = tokens;
  entriesCopy = entries;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v149[0] = MEMORY[0x1E69E9820];
  v149[1] = 3221225472;
  v149[2] = __149__GEOAPPortal_captureClientACKeypressWithQuery_queryTokens_entries_keypressStatus_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v149[3] = &unk_1E7959478;
  v21 = blockCopy;
  v151 = v21;
  v22 = queueCopy;
  v150 = v22;
  v23 = MEMORY[0x1AC5A12F0](v149);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v24 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v24 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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
  v127 = entriesCopy;
  v107 = v22;
  v108 = v21;
  v112 = tokensCopy;
  v113 = queryCopy;
  v109 = rateCopy;
  if ([statesCopy count])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v30 = statesCopy;
    v31 = statesCopy;
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
    queryCopy = v113;
    statesCopy = v30;
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

  v110 = statesCopy;
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

  clientAcSuggestions = [v72 clientAcSuggestions];
  [clientAcSuggestions setQuery:queryCopy];

  clientAcSuggestions2 = [v72 clientAcSuggestions];
  queryTokens = [clientAcSuggestions2 queryTokens];

  if (!queryTokens)
  {
    v77 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(tokensCopy, "count", v38)}];
    clientAcSuggestions3 = [v72 clientAcSuggestions];
    [clientAcSuggestions3 setQueryTokens:v77];
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v79 = tokensCopy;
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
        clientAcSuggestions4 = [v72 clientAcSuggestions];
        queryTokens2 = [clientAcSuggestions4 queryTokens];
        v87 = [v84 copy];
        [queryTokens2 addObject:v87];
      }

      v81 = [v79 countByEnumeratingWithState:&v141 objects:v153 count:16];
    }

    while (v81);
  }

  clientAcSuggestions5 = [v72 clientAcSuggestions];
  entries = [clientAcSuggestions5 entries];

  if (!entries)
  {
    v90 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v127, "count")}];
    clientAcSuggestions6 = [v72 clientAcSuggestions];
    [clientAcSuggestions6 setEntries:v90];
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
        clientAcSuggestions7 = [v72 clientAcSuggestions];
        entries2 = [clientAcSuggestions7 entries];
        v100 = [v97 copy];
        [entries2 addObject:v100];
      }

      v94 = [v92 countByEnumeratingWithState:&v137 objects:v152 count:16];
    }

    while (v94);
  }

  clientAcSuggestions8 = [v72 clientAcSuggestions];
  [clientAcSuggestions8 setKeypressStatus:status];

  clientAcSuggestions9 = [v72 clientAcSuggestions];
  [clientAcSuggestions9 setTrigger:1];

  if (v116)
  {
    [v72 addLogMsgState:?];
  }

  tokensCopy = v112;
  queryCopy = v113;
  entriesCopy = v127;
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
  rateCopy = v109;
  statesCopy = v110;
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

+ (void)captureBatchTrafficWithLocationCollection:(id)collection additionalStates:(id)states providedDropRate:(id)rate completionQueue:(id)queue completionBlock:(id)block
{
  v59 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  statesCopy = states;
  rateCopy = rate;
  queueCopy = queue;
  blockCopy = block;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __123__GEOAPPortal_captureBatchTrafficWithLocationCollection_additionalStates_providedDropRate_completionQueue_completionBlock___block_invoke;
  v53[3] = &unk_1E7959478;
  v16 = blockCopy;
  v55 = v16;
  v17 = queueCopy;
  v54 = v17;
  v18 = MEMORY[0x1AC5A12F0](v53);
  if (GEOConfigGetBOOL())
  {
    goto LABEL_20;
  }

  v19 = +[GEOAPServiceManager sharedManager];
  eventCollectionIsDisabledForCurrentProcess = [v19 eventCollectionIsDisabledForCurrentProcess];

  if (eventCollectionIsDisabledForCurrentProcess)
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

  if (rateCopy)
  {
    [rateCopy doubleValue];
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

  v46 = collectionCopy;
  v45 = +[GEOAPStateFactory sharedFactory];
  v44 = statesCopy;
  if ([statesCopy count])
  {
    v42 = v16;
    v43 = rateCopy;
    v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v25 = statesCopy;
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
    rateCopy = v43;
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

  statesCopy = v44;
  v37 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v37 setEventType:27];
  v38 = objc_alloc_init(MEMORY[0x1E69A1E98]);
  [v37 setBatchTrafficProbeCollection:v38];

  batchTrafficProbeCollection = [v37 batchTrafficProbeCollection];
  [batchTrafficProbeCollection setLocationCollection:v46];

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
  collectionCopy = v46;
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

+ (void)populateCommonEventValues:(id)values
{
  valuesCopy = values;
  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  isInternalInstall = [mEMORY[0x1E69A2398] isInternalInstall];

  if (isInternalInstall)
  {
    modernManager = [MEMORY[0x1E69A2478] modernManager];
    activeTileGroup = [modernManager activeTileGroup];
    environment = [activeTileGroup environment];
    [valuesCopy setMapsEnvironment:environment];

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
  if (isInternalInstall)
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
  [valuesCopy setAnalyticTag:v9];

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

+ (void)captureCuratedCollectionUserAction:(int)action target:(int)target value:(id)value publisherId:(id)id following:(id)following collectionId:(id)collectionId collectionCategory:(id)category collectionCurrentlySaved:(id)self0 verticalIndex:(id)self1 horizontalIndex:(id)self2 placeCardType:(id)self3 possibleActions:(id)self4 impossibleActions:(id)self5 providerId:(id)self6 repeatableSectionIndex:(id)self7 modules:(id)self8
{
  v116 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  idCopy = id;
  followingCopy = following;
  collectionIdCopy = collectionId;
  categoryCopy = category;
  savedCopy = saved;
  indexCopy = index;
  horizontalIndexCopy = horizontalIndex;
  typeCopy = type;
  actionsCopy = actions;
  impossibleActionsCopy = impossibleActions;
  providerIdCopy = providerId;
  sectionIndexCopy = sectionIndex;
  modulesCopy = modules;
  v24 = objc_alloc_init(MEMORY[0x1E69A2038]);
  v25 = objc_alloc_init(MEMORY[0x1E69A23C8]);
  [v24 setPublisherDetails:v25];

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v26 = idCopy;
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
        publisherDetails = [v24 publisherDetails];
        [publisherDetails addPublisherId:{objc_msgSend(v31, "unsignedLongLongValue")}];
      }

      v28 = [v26 countByEnumeratingWithState:&v106 objects:v115 count:16];
    }

    while (v28);
  }

  v80 = v26;

  v33 = followingCopy;
  bOOLValue = [followingCopy BOOLValue];
  publisherDetails2 = [v24 publisherDetails];
  [publisherDetails2 setCurrentlyFollowing:bOOLValue];

  v36 = objc_alloc_init(MEMORY[0x1E69A1C08]);
  [v24 setCollectionDetails:v36];

  v37 = collectionIdCopy;
  if (collectionIdCopy)
  {
    collectionDetails = [v24 collectionDetails];
    [collectionDetails addCollectionId:{objc_msgSend(collectionIdCopy, "unsignedLongLongValue")}];
  }

  v39 = categoryCopy;
  v40 = [categoryCopy copy];
  collectionDetails2 = [v24 collectionDetails];
  [collectionDetails2 setCollectionCategory:v40];

  v42 = savedCopy;
  if (savedCopy)
  {
    bOOLValue2 = [savedCopy BOOLValue];
    collectionDetails3 = [v24 collectionDetails];
    [collectionDetails3 setCurrentlySaved:bOOLValue2];
  }

  if (indexCopy)
  {
    [v24 setVerticalIndex:{objc_msgSend(indexCopy, "unsignedIntValue")}];
  }

  if (horizontalIndexCopy)
  {
    [v24 setHorizontalIndex:{objc_msgSend(horizontalIndexCopy, "unsignedIntValue")}];
  }

  if (typeCopy)
  {
    [v24 setPlacecardType:{objc_msgSend(typeCopy, "intValue")}];
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = actionsCopy;
  v45 = [obj countByEnumeratingWithState:&v102 objects:v114 count:16];
  v46 = sectionIndexCopy;
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
  v50 = impossibleActionsCopy;
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

  v55 = providerIdCopy;
  if (providerIdCopy)
  {
    [v24 setLocalSearchProviderID:{objc_msgSend(providerIdCopy, "intValue")}];
  }

  v56 = modulesCopy;
  v57 = valueCopy;
  if (sectionIndexCopy)
  {
    [v24 setRepeatableSectionIndex:{objc_msgSend(sectionIndexCopy, "intValue")}];
  }

  v79 = +[GEOAPSharedStateData sharedData];
  [v79 setCuratedCollectionState:v24];
  if (modulesCopy)
  {
    v58 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
    [v58 setStateType:702];
    v59 = objc_alloc_init(MEMORY[0x1E69A2108]);
    [v58 setPlaceCard:v59];

    v92 = v58;
    placeCard = [v58 placeCard];
    [placeCard setPlacecardType:14];

    v56 = modulesCopy;
    if ([modulesCopy count] < 2)
    {
      v33 = followingCopy;
      v37 = collectionIdCopy;
      if ([modulesCopy count] != 1)
      {
LABEL_53:

        v57 = valueCopy;
        goto LABEL_54;
      }

      firstObject = [modulesCopy firstObject];
      v72 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(firstObject, "type")}];
      metadata = [firstObject metadata];
      v110 = v92;
      v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
      [GEOAPPortal captureUserAction:action target:target value:valueCopy moduleType:v72 moduleMetadata:metadata richProviderId:0 additionalStates:v74 completionQueue:0 completionBlock:0];

      v46 = sectionIndexCopy;
      v37 = collectionIdCopy;
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v61 = modulesCopy;
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
            metadata2 = [v66 metadata];
            [v67 setMetadata:metadata2];

            if ([v66 contentsCount])
            {
              v69 = 0;
              do
              {
                [v67 addContent:{objc_msgSend(v66, "contentAtIndex:", v69++)}];
              }

              while (v69 < [v66 contentsCount]);
            }

            placeCard2 = [v92 placeCard];
            [placeCard2 addModules:v67];
          }

          v63 = [v61 countByEnumeratingWithState:&v94 objects:v112 count:16];
        }

        while (v63);
      }

      v111 = v92;
      firstObject = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
      [self captureUserAction:action target:target value:valueCopy moduleType:0 moduleMetadata:0 richProviderId:0 additionalStates:firstObject completionQueue:0 completionBlock:0];
      v33 = followingCopy;
      v46 = sectionIndexCopy;
      v37 = collectionIdCopy;
    }

    v42 = savedCopy;
    v39 = categoryCopy;
    v55 = providerIdCopy;
    v56 = modulesCopy;
    goto LABEL_53;
  }

  [self captureUserAction:action target:target value:valueCopy moduleType:0 moduleMetadata:0 richProviderId:0 additionalStates:0 completionQueue:0 completionBlock:0];
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

+ (void)capturePlaceCardUserAction:(int)action target:(int)target value:(id)value mapItem:(id)item timestamp:(double)timestamp resultIndex:(int)index targetID:(unint64_t)d providerID:(id)self0 animationID:(unint64_t)self1 actionURL:(id)self2 photoID:(id)self3 placeCardType:(int)self4 localizedMapItemCategory:(id)self5 availableActions:(id)self6 unactionableUIElements:(id)self7 modules:(id)self8 commingledRichProviderIds:(id)self9 actionRichProviderId:(id)id classification:(id)classification
{
  v112 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  iDCopy = iD;
  lCopy = l;
  photoIDCopy = photoID;
  categoryCopy = category;
  actionsCopy = actions;
  elementsCopy = elements;
  modulesCopy = modules;
  idsCopy = ids;
  idCopy = id;
  classificationCopy = classification;
  v29 = [MEMORY[0x1E69A2350] actionDetailsWithMapItem:item timestamp:index resultIndex:d targetID:timestamp];
  v30 = v29;
  v85 = iDCopy;
  if (iDCopy)
  {
    [v29 setRichProviderId:iDCopy];
  }

  if (animationID)
  {
    [v30 setAnimationID:animationID];
  }

  if (lCopy)
  {
    [v30 setActionUrl:lCopy];
  }

  v80 = lCopy;
  if (photoIDCopy)
  {
    [v30 setPhotoId:photoIDCopy];
  }

  v76 = idCopy;
  v78 = photoIDCopy;
  v31 = objc_alloc_init(MEMORY[0x1E69A1FF8]);
  [v31 setStateType:702];
  v32 = objc_alloc_init(MEMORY[0x1E69A2108]);
  [v31 setPlaceCard:v32];

  placeCard = [v31 placeCard];
  v73 = v30;
  [placeCard setPlaceActionDetails:v30];

  placeCard2 = [v31 placeCard];
  [placeCard2 setPlacecardType:type];

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v35 = actionsCopy;
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
        placeCard3 = [v31 placeCard];
        [placeCard3 addPossibleAction:{objc_msgSend(v40, "intValue")}];
      }

      v37 = [v35 countByEnumeratingWithState:&v102 objects:v111 count:16];
    }

    while (v37);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v42 = elementsCopy;
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
        placeCard4 = [v31 placeCard];
        [placeCard4 addUnactionableUiElement:{objc_msgSend(v47, "intValue")}];
      }

      v44 = [v42 countByEnumeratingWithState:&v98 objects:v110 count:16];
    }

    while (v44);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v49 = idsCopy;
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
        placeCard5 = [v31 placeCard];
        [placeCard5 addCommingledRichProviderIds:v54];
      }

      v51 = [v49 countByEnumeratingWithState:&v94 objects:v109 count:16];
    }

    while (v51);
  }

  placeCard6 = [v31 placeCard];
  v57 = categoryCopy;
  [placeCard6 setPlacecardCategory:categoryCopy];

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
  if (action == 21)
  {
    v61 = +[GEOAPSharedStateData sharedData];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __296__GEOAPPortal_UserAction__capturePlaceCardUserAction_target_value_mapItem_timestamp_resultIndex_targetID_providerID_animationID_actionURL_photoID_placeCardType_localizedMapItemCategory_availableActions_unactionableUIElements_modules_commingledRichProviderIds_actionRichProviderId_classification___block_invoke_2;
    v88[3] = &unk_1E7959400;
    v89 = modulesCopy;
    v62 = v60;
    v90 = v62;
    [v61 performPlaceCardStateUpdate:v88];

    v108 = v62;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
    v64 = v76;
    v65 = valueCopy;
    [GEOAPPortal captureUserAction:21 target:target value:valueCopy moduleType:0 moduleMetadata:0 classification:classificationCopy richProviderId:v76 additionalStates:v63 completionQueue:0 completionBlock:0];

    v66 = classificationCopy;
    firstObject = v89;
  }

  else if ([modulesCopy count] == 1)
  {
    firstObject = [modulesCopy firstObject];
    v71 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(firstObject, "type")}];
    [firstObject metadata];
    v68 = v72 = v59;
    v107 = v60;
    v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
    v64 = v76;
    v65 = valueCopy;
    v66 = classificationCopy;
    [GEOAPPortal captureUserAction:action target:target value:valueCopy moduleType:v71 moduleMetadata:v68 classification:classificationCopy richProviderId:v76 additionalStates:v69 completionQueue:0 completionBlock:0];

    v59 = v72;
    v57 = categoryCopy;
  }

  else
  {
    v65 = valueCopy;
    if ([modulesCopy count] >= 2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1AB634000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: modules.count <= 1", buf, 2u);
    }

    v106 = v60;
    firstObject = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
    v64 = v76;
    v66 = classificationCopy;
    [GEOAPPortal captureUserAction:action target:target value:valueCopy moduleType:0 moduleMetadata:0 classification:classificationCopy richProviderId:v76 additionalStates:firstObject completionQueue:0 completionBlock:0];
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

+ (void)captureOfflineShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v188 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  v158 = statesCopy;
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v18 = statesCopy;
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

  userActionEvent = [v129 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v129 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v129 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v129 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v135 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v129 userActionEvent];
    [userActionEvent5 setModuleInfo:v135];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v129 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v129 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v129 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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
  v149 = blockCopy;
  v182 = v149;
  v150 = queueCopy;
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

+ (void)captureNearbyTransitShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v167 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  v139 = statesCopy;
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v30 = 1;
    v29 = typeCopy;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v18 = statesCopy;
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

  v29 = typeCopy;
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

  userActionEvent = [v115 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v115 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v115 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v115 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (v29 || metadataCopy || classificationCopy)
  {
    v121 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v115 userActionEvent];
    [userActionEvent5 setModuleInfo:v121];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v115 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v115 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v115 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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
  v132 = blockCopy;
  v161 = v132;
  v133 = queueCopy;
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

+ (void)captureOfflineSessionlessUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v112 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v17 = +[GEOAPStateFactory sharedFactory];
  v97 = typeCopy;
  v92 = statesCopy;
  if ([statesCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v19 = statesCopy;
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
        typeCopy = v97;
        goto LABEL_17;
      }
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    typeCopy = v97;
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

  userActionEvent = [v68 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v68 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v68 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v68 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v74 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v68 userActionEvent];
    [userActionEvent5 setModuleInfo:v74];

    if (v97)
    {
      intValue = [v97 intValue];
      userActionEvent6 = [v68 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v68 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v68 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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
  v105 = queueCopy;
  v106 = blockCopy;
  v104 = v68;
  v84 = queueCopy;
  v85 = blockCopy;
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

+ (void)captureRapSessionlessUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v112 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v17 = +[GEOAPStateFactory sharedFactory];
  v97 = typeCopy;
  v92 = statesCopy;
  if ([statesCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v19 = statesCopy;
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
        typeCopy = v97;
        goto LABEL_17;
      }
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    typeCopy = v97;
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

  userActionEvent = [v68 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v68 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v68 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v68 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v74 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v68 userActionEvent];
    [userActionEvent5 setModuleInfo:v74];

    if (v97)
    {
      intValue = [v97 intValue];
      userActionEvent6 = [v68 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v68 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v68 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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
  v105 = queueCopy;
  v106 = blockCopy;
  v104 = v68;
  v84 = queueCopy;
  v85 = blockCopy;
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

+ (void)captureTransitShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v197 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v17 = +[GEOAPStateFactory sharedFactory];
  v166 = statesCopy;
  v167 = typeCopy;
  if ([statesCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v19 = statesCopy;
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

        typeCopy = v167;
        goto LABEL_18;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    typeCopy = v167;
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

  userActionEvent = [v137 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v137 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v137 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v137 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v143 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v137 userActionEvent];
    [userActionEvent5 setModuleInfo:v143];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v137 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v137 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v137 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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
  v157 = blockCopy;
  v191 = v157;
  v158 = queueCopy;
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

+ (void)capturePredExShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v182 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  v153 = statesCopy;
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v30 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v18 = statesCopy;
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

  userActionEvent = [v126 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v126 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v126 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v126 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  v132 = v61;
  if (typeCopy || metadataCopy || classificationCopy)
  {
    v133 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v126 userActionEvent];
    [userActionEvent5 setModuleInfo:v133];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v126 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v126 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    v61 = v132;
    if (classificationCopy)
    {
      userActionEvent8 = [v126 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];

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
  v144 = blockCopy;
  v176 = v144;
  v145 = queueCopy;
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

+ (void)captureUGCSessionlessUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v111 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v17 = +[GEOAPStateFactory sharedFactory];
  v95 = typeCopy;
  v91 = statesCopy;
  if ([statesCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v19 = statesCopy;
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
        typeCopy = v95;
        goto LABEL_17;
      }
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    typeCopy = v95;
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

  userActionEvent = [v67 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v67 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v67 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v67 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v73 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v67 userActionEvent];
    [userActionEvent5 setModuleInfo:v73];

    if (v95)
    {
      intValue = [v95 intValue];
      userActionEvent6 = [v67 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v67 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v67 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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
  v104 = queueCopy;
  v105 = blockCopy;
  v103 = v67;
  v83 = queueCopy;
  v84 = blockCopy;
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

+ (void)captureUGCShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v182 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  v150 = statesCopy;
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v18 = statesCopy;
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

  userActionEvent = [v125 userActionEvent];
  actionCopy3 = action;
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v125 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v125 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v125 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v132 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v125 userActionEvent];
    [userActionEvent5 setModuleInfo:v132];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v125 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v125 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    actionCopy3 = action;
    if (classificationCopy)
    {
      userActionEvent8 = [v125 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];

      actionCopy3 = action;
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

  if (actionCopy3 == 6100 && target == 665 || actionCopy3 == 6048 && target == 612 || actionCopy3 == 6049 && target == 612 || actionCopy3 == 6101 && target == 665 || actionCopy3 == 6006 && target == 665)
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
  v145 = blockCopy;
  v176 = v145;
  v146 = queueCopy;
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

+ (void)captureCuratedCollectionsSessionlessUserActionTargetPairRedactedCCStateWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  LODWORD(v86) = action;
  HIDWORD(v86) = target;
  v108 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v17 = +[GEOAPStateFactory sharedFactory];
  v89 = statesCopy;
  v90 = typeCopy;
  if ([statesCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v19 = statesCopy;
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
        typeCopy = v90;
        goto LABEL_18;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    typeCopy = v90;
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

  userActionEvent = [v65 userActionEvent];
  [userActionEvent setUserActionEventAction:v86];

  userActionEvent2 = [v65 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:HIDWORD(v86)];

  userActionEvent3 = [v65 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v65 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  v71 = v29;
  if (typeCopy || metadataCopy || classificationCopy)
  {
    v72 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v65 userActionEvent];
    [userActionEvent5 setModuleInfo:v72];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v65 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v65 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    v29 = v71;
    if (classificationCopy)
    {
      userActionEvent8 = [v65 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];

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
  v101 = queueCopy;
  v102 = blockCopy;
  v100 = v65;
  v82 = queueCopy;
  v83 = blockCopy;
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

+ (void)captureCuratedCollectionsSessionlessUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  LODWORD(v86) = action;
  HIDWORD(v86) = target;
  v108 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v17 = +[GEOAPStateFactory sharedFactory];
  v89 = statesCopy;
  v90 = typeCopy;
  if ([statesCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v19 = statesCopy;
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
        typeCopy = v90;
        goto LABEL_18;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    typeCopy = v90;
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

  userActionEvent = [v65 userActionEvent];
  [userActionEvent setUserActionEventAction:v86];

  userActionEvent2 = [v65 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:HIDWORD(v86)];

  userActionEvent3 = [v65 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v65 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  v71 = v29;
  if (typeCopy || metadataCopy || classificationCopy)
  {
    v72 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v65 userActionEvent];
    [userActionEvent5 setModuleInfo:v72];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v65 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v65 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    v29 = v71;
    if (classificationCopy)
    {
      userActionEvent8 = [v65 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];

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
  v101 = queueCopy;
  v102 = blockCopy;
  v100 = v65;
  v82 = queueCopy;
  v83 = blockCopy;
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

+ (void)captureCuratedCollectionsShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v185 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  v155 = statesCopy;
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v18 = statesCopy;
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

  userActionEvent = [v129 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v129 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v129 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v129 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v135 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v129 userActionEvent];
    [userActionEvent5 setModuleInfo:v135];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v129 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v129 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v129 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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
  v146 = blockCopy;
  v179 = v146;
  v147 = queueCopy;
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

+ (void)captureEnterMapsShortUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v194 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v17 = +[GEOAPStateFactory sharedFactory];
  v163 = statesCopy;
  v164 = typeCopy;
  if ([statesCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v192 = 0u;
    v19 = statesCopy;
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

        typeCopy = v164;
        goto LABEL_18;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    typeCopy = v164;
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

  userActionEvent = [v135 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v135 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v135 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v135 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v141 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v135 userActionEvent];
    [userActionEvent5 setModuleInfo:v141];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v135 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v135 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v135 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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
  v153 = blockCopy;
  v188 = v153;
  v154 = queueCopy;
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

+ (void)captureSessionlessUserActionWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v117 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  v96 = statesCopy;
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v18 = statesCopy;
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

  userActionEvent = [v62 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v62 userActionEvent];
  targetCopy4 = target;
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v62 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v62 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  v97 = v28;
  if (typeCopy || metadataCopy || classificationCopy)
  {
    v69 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v62 userActionEvent];
    [userActionEvent5 setModuleInfo:v69];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v62 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];

      targetCopy4 = target;
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v62 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];

      targetCopy4 = target;
    }

    v28 = v97;
    if (classificationCopy)
    {
      userActionEvent8 = [v62 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];

      v28 = v97;
      targetCopy4 = target;
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

  if (action != 2059 || targetCopy4 != 201)
  {
    v81 = targetCopy4 == 30;
    if (action != 2059 || targetCopy4 != 30)
    {
      if (action == 469 && targetCopy4 == 201)
      {
        goto LABEL_65;
      }

      if (action != 469 || targetCopy4 != 30)
      {
        v80 = action == 477;
        if (action != 477 || target != 201)
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

  v82 = action == 2073;
  if (action == 2073 && target == 201)
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
  v110 = queueCopy;
  v111 = blockCopy;
  v109 = v62;
  v88 = queueCopy;
  v89 = blockCopy;
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

+ (void)captureCarplayUserActionWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v175 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  v145 = statesCopy;
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v18 = statesCopy;
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

  userActionEvent = [v115 userActionEvent];
  actionCopy2 = action;
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v115 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v115 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v115 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v122 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v115 userActionEvent];
    [userActionEvent5 setModuleInfo:v122];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v115 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v115 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    actionCopy2 = action;
    if (classificationCopy)
    {
      userActionEvent8 = [v115 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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

  if (actionCopy2 == 2015 && target == 1011)
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

  if (actionCopy2 == 6097 && target == 1009 || actionCopy2 == 2007 && target == 1023 || target == 1011 && actionCopy2 == 2007)
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
  v139 = blockCopy;
  v169 = v139;
  v140 = queueCopy;
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

+ (void)captureRapShortAndSessionlessUserActionTargetPairWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v226 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v17 = +[GEOAPStateFactory sharedFactory];
  v202 = typeCopy;
  v185 = statesCopy;
  if ([statesCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v221 = 0u;
    v222 = 0u;
    v223 = 0u;
    v224 = 0u;
    v19 = statesCopy;
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

        typeCopy = v202;
        goto LABEL_18;
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    typeCopy = v202;
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

  userActionEvent = [v140 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v140 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v140 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v140 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  v146 = metadataCopy;
  v147 = typeCopy | metadataCopy | classificationCopy;
  v148 = v147 != 0;
  v203 = v71;
  if (v147)
  {
    v149 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v140 userActionEvent];
    [userActionEvent5 setModuleInfo:v149];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v140 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];

      v146 = metadataCopy;
    }

    if (v146)
    {
      userActionEvent7 = [v140 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:v146];
    }

    v71 = v203;
    if (classificationCopy)
    {
      userActionEvent8 = [v140 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];

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
  v160 = blockCopy;
  v220 = v160;
  v161 = queueCopy;
  v219 = v161;
  [v158 sessionStateForType:6 callback:v217];

  v162 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v162 setEventType:1];
  v163 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v162 setUserActionEvent:v163];

  userActionEvent9 = [v162 userActionEvent];
  [userActionEvent9 setUserActionEventAction:action];

  userActionEvent10 = [v162 userActionEvent];
  [userActionEvent10 setUserActionEventTarget:target];

  userActionEvent11 = [v162 userActionEvent];
  [userActionEvent11 setUserActionEventValue:valueCopy];

  userActionEvent12 = [v162 userActionEvent];
  [userActionEvent12 setActionRichProviderId:idCopy];

  if (v148)
  {
    v168 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent13 = [v162 userActionEvent];
    [userActionEvent13 setModuleInfo:v168];

    if (v202)
    {
      intValue2 = [v202 intValue];
      userActionEvent14 = [v162 userActionEvent];
      moduleInfo4 = [userActionEvent14 moduleInfo];
      [moduleInfo4 setType:intValue2];
    }

    if (metadataCopy)
    {
      userActionEvent15 = [v162 userActionEvent];
      moduleInfo5 = [userActionEvent15 moduleInfo];
      [moduleInfo5 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent16 = [v162 userActionEvent];
      moduleInfo6 = [userActionEvent16 moduleInfo];
      [moduleInfo6 setClassification:classificationCopy];
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

+ (void)captureRapUserActionShortOnlyWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v186 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  v156 = statesCopy;
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v18 = statesCopy;
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

  userActionEvent = [v129 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v129 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v129 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v129 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v135 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v129 userActionEvent];
    [userActionEvent5 setModuleInfo:v135];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v129 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v129 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v129 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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
  v147 = blockCopy;
  v180 = v147;
  v148 = queueCopy;
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

+ (void)captureMuninCameraUserActionShortOnlyWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  LODWORD(v121) = action;
  HIDWORD(v121) = target;
  v149 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v17 = +[GEOAPStateFactory sharedFactory];
  v124 = statesCopy;
  v125 = typeCopy;
  if ([statesCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v19 = statesCopy;
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

        typeCopy = v125;
        goto LABEL_18;
      }

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    typeCopy = v125;
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

  userActionEvent = [v100 userActionEvent];
  [userActionEvent setUserActionEventAction:v121];

  userActionEvent2 = [v100 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:HIDWORD(v121)];

  userActionEvent3 = [v100 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v100 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  v106 = v30;
  if (typeCopy || metadataCopy || classificationCopy)
  {
    v107 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v100 userActionEvent];
    [userActionEvent5 setModuleInfo:v107];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v100 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v100 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    v30 = v106;
    if (classificationCopy)
    {
      userActionEvent8 = [v100 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];

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
  v118 = blockCopy;
  v143 = v118;
  v119 = queueCopy;
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

+ (void)captureMuninUserActionShortOnlyWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  LODWORD(v121) = action;
  HIDWORD(v121) = target;
  v149 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v17 = +[GEOAPStateFactory sharedFactory];
  v124 = statesCopy;
  v125 = typeCopy;
  if ([statesCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v19 = statesCopy;
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

        typeCopy = v125;
        goto LABEL_18;
      }

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    typeCopy = v125;
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

  userActionEvent = [v100 userActionEvent];
  [userActionEvent setUserActionEventAction:v121];

  userActionEvent2 = [v100 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:HIDWORD(v121)];

  userActionEvent3 = [v100 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v100 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  v106 = v30;
  if (typeCopy || metadataCopy || classificationCopy)
  {
    v107 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v100 userActionEvent];
    [userActionEvent5 setModuleInfo:v107];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v100 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v100 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    v30 = v106;
    if (classificationCopy)
    {
      userActionEvent8 = [v100 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];

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
  v118 = blockCopy;
  v143 = v118;
  v119 = queueCopy;
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

+ (void)capturePriorityPlacecardActionShortUserActionsWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v192 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  v159 = statesCopy;
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v30 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v18 = statesCopy;
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

  userActionEvent = [v128 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v128 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v128 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v128 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  v134 = v29;
  if (typeCopy || metadataCopy || classificationCopy)
  {
    v135 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v128 userActionEvent];
    [userActionEvent5 setModuleInfo:v135];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v128 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v128 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    v29 = v134;
    if (classificationCopy)
    {
      userActionEvent8 = [v128 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];

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

  if (action == 6036 && target == 201)
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

  v147 = target == 30;
  if (action == 6036 && target == 30)
  {
    goto LABEL_168;
  }

  if (action == 6074 && target == 201)
  {
    goto LABEL_157;
  }

  if (action == 6074 && target == 30)
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

  v146 = action == 50;
  if (action == 50 && target == 201)
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
  v152 = blockCopy;
  v186 = v152;
  v153 = queueCopy;
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

+ (void)capturePriorityShortUserActionsWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v256 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v18 = +[GEOAPStateFactory sharedFactory];
  v243 = metadataCopy;
  v221 = statesCopy;
  if ([statesCopy count])
  {
    v19 = typeCopy;
    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    v21 = statesCopy;
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

        typeCopy = v19;
        goto LABEL_18;
      }

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    typeCopy = v19;
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

  userActionEvent = [v126 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v126 userActionEvent];
  targetCopy6 = target;
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v126 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v126 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  v223 = v125;
  if (typeCopy || v243 || classificationCopy)
  {
    v133 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v126 userActionEvent];
    [userActionEvent5 setModuleInfo:v133];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v126 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];

      targetCopy6 = target;
    }

    if (v243)
    {
      userActionEvent7 = [v126 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:v243];
    }

    v125 = v223;
    if (classificationCopy)
    {
      userActionEvent8 = [v126 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];

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

  v222 = typeCopy;
  v216 = v55;
  if (action == 6003 && targetCopy6 == 201)
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

  if (action == 2015 && targetCopy6 == 102)
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
    targetCopy6 = target;
LABEL_185:

    goto LABEL_186;
  }

  v147 = targetCopy6 == 105;
  if (action == 2015 && targetCopy6 == 105)
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

  v146 = targetCopy6 == 101;
  if (action == 2015 && targetCopy6 == 101)
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

  if (action == 2015 && targetCopy6 == 701)
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

  v145 = targetCopy6 == 11;
  if (action == 2015 && targetCopy6 == 11)
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

  v148 = targetCopy6 == 803;
  if (action == 2015 && targetCopy6 == 803)
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

  v144 = action == 2007;
  if (action == 2007 && targetCopy6 == 102)
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

    targetCopy6 = target;
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

    targetCopy6 = target;
  }

  v172 = !v144;
  if (targetCopy6 != 8)
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
    v180 = queueCopy;
LABEL_221:

    v185 = targetCopy6 == 503;
LABEL_222:
    v186 = targetCopy6 == 501;
    goto LABEL_223;
  }

  v181 = !v146;
  if (action != 6006)
  {
    v181 = 1;
  }

  if ((v181 & 1) == 0)
  {
    v182 = [v18 stateForType:68];
    v178 = [v182 copy];

    v179 = v222;
    v180 = queueCopy;
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

    targetCopy6 = target;
    goto LABEL_221;
  }

  v185 = targetCopy6 == 503;
  v179 = v222;
  v180 = queueCopy;
  if (action == 1018 && targetCopy6 == 503)
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

  if (action == 1017 && targetCopy6 == 259)
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

  v186 = targetCopy6 == 501;
  if (targetCopy6 == 501 && action == 1017)
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

  if (targetCopy6 == 503 && action == 1017)
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

  if (targetCopy6 == 49 && action == 1017)
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
  v187 = action == 194;
  if (action == 194 && v186)
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
  v195 = blockCopy;
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

+ (void)captureFamiliarRoutesOnlyWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v73 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v18 = statesCopy;
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

  userActionEvent = [v35 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v35 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v35 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v35 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v41 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v35 userActionEvent];
    [userActionEvent5 setModuleInfo:v41];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v35 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v35 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v35 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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
  v66 = queueCopy;
  v67 = blockCopy;
  v65 = v35;
  v51 = queueCopy;
  v52 = blockCopy;
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

+ (void)captureStartEndNavWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v241 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v18 = +[GEOAPStateFactory sharedFactory];
  v219 = metadataCopy;
  v200 = statesCopy;
  if ([statesCopy count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v20 = statesCopy;
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

        metadataCopy = v219;
        goto LABEL_18;
      }

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    metadataCopy = v219;
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

  userActionEvent = [v132 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v132 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v132 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v132 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  v138 = typeCopy | metadataCopy | classificationCopy;
  v139 = v138 != 0;
  if (v138)
  {
    v140 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v132 userActionEvent];
    [userActionEvent5 setModuleInfo:v140];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v132 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];

      metadataCopy = v219;
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v132 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v132 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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

  v149 = action == 3001 && target == 305;
  v150 = v149;
  v202 = v150;
  v201 = typeCopy;
  if (v149 || action == 3001 && target == 301)
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
    if (action == 3001 && target == 303)
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
  if (action == 3001 && target == 302)
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
    if (action != 3001 || target != 802)
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
  v161 = blockCopy;
  v235 = v161;
  v162 = queueCopy;
  v234 = v162;
  [v159 sessionStateForType:20 callback:v232];

  v163 = objc_alloc_init(MEMORY[0x1E69A1E90]);
  [v163 setEventType:1];
  v164 = objc_alloc_init(MEMORY[0x1E69A1FD8]);
  [v163 setUserActionEvent:v164];

  userActionEvent9 = [v163 userActionEvent];
  [userActionEvent9 setUserActionEventAction:action];

  userActionEvent10 = [v163 userActionEvent];
  [userActionEvent10 setUserActionEventTarget:target];

  userActionEvent11 = [v163 userActionEvent];
  [userActionEvent11 setUserActionEventValue:valueCopy];

  userActionEvent12 = [v163 userActionEvent];
  [userActionEvent12 setActionRichProviderId:idCopy];

  v169 = v203;
  if (v139)
  {
    v170 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent13 = [v163 userActionEvent];
    [userActionEvent13 setModuleInfo:v170];

    if (v201)
    {
      intValue2 = [v201 intValue];
      userActionEvent14 = [v163 userActionEvent];
      moduleInfo4 = [userActionEvent14 moduleInfo];
      [moduleInfo4 setType:intValue2];

      v169 = v203;
    }

    if (v219)
    {
      userActionEvent15 = [v163 userActionEvent];
      moduleInfo5 = [userActionEvent15 moduleInfo];
      [moduleInfo5 setModuleMetadata:v219];

      v169 = v203;
    }

    if (classificationCopy)
    {
      userActionEvent16 = [v163 userActionEvent];
      moduleInfo6 = [userActionEvent16 moduleInfo];
      [moduleInfo6 setClassification:classificationCopy];

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

+ (void)capturePlaceCardRevealWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v187 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  v154 = statesCopy;
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v18 = statesCopy;
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

  userActionEvent = [v130 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v130 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v130 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v130 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v136 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v130 userActionEvent];
    [userActionEvent5 setModuleInfo:v136];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v130 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v130 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v130 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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

  if (action == 21 && target == 201)
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
  v149 = blockCopy;
  v181 = v149;
  v150 = queueCopy;
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

+ (void)captureMapViewEngagementWithAction:(int)action target:(int)target value:(id)value moduleType:(id)type moduleMetadata:(id)metadata classification:(id)classification richProviderId:(id)id additionalStates:(id)self0 completionQueue:(id)self1 completionBlock:(id)self2
{
  v73 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  typeCopy = type;
  metadataCopy = metadata;
  classificationCopy = classification;
  idCopy = id;
  statesCopy = states;
  queueCopy = queue;
  blockCopy = block;
  v16 = +[GEOAPStateFactory sharedFactory];
  if (![statesCopy count])
  {
    v25 = 0;
LABEL_13:
    v29 = 1;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(statesCopy, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v18 = statesCopy;
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

  userActionEvent = [v35 userActionEvent];
  [userActionEvent setUserActionEventAction:action];

  userActionEvent2 = [v35 userActionEvent];
  [userActionEvent2 setUserActionEventTarget:target];

  userActionEvent3 = [v35 userActionEvent];
  [userActionEvent3 setUserActionEventValue:valueCopy];

  userActionEvent4 = [v35 userActionEvent];
  [userActionEvent4 setActionRichProviderId:idCopy];

  if (typeCopy || metadataCopy || classificationCopy)
  {
    v41 = objc_alloc_init(MEMORY[0x1E69A1FE0]);
    userActionEvent5 = [v35 userActionEvent];
    [userActionEvent5 setModuleInfo:v41];

    if (typeCopy)
    {
      intValue = [typeCopy intValue];
      userActionEvent6 = [v35 userActionEvent];
      moduleInfo = [userActionEvent6 moduleInfo];
      [moduleInfo setType:intValue];
    }

    if (metadataCopy)
    {
      userActionEvent7 = [v35 userActionEvent];
      moduleInfo2 = [userActionEvent7 moduleInfo];
      [moduleInfo2 setModuleMetadata:metadataCopy];
    }

    if (classificationCopy)
    {
      userActionEvent8 = [v35 userActionEvent];
      moduleInfo3 = [userActionEvent8 moduleInfo];
      [moduleInfo3 setClassification:classificationCopy];
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
  v66 = queueCopy;
  v67 = blockCopy;
  v65 = v35;
  v51 = queueCopy;
  v52 = blockCopy;
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

+ (void)processMapsDeletionWithCompletionQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v7 = +[GEOAPServiceManager sharedManager];
  [v7 processMapsDeletionWithCompletionQueue:queueCopy completion:completionCopy];
}

+ (id)_caChargingStateFromAPChargingState:(int)state
{
  if ((state - 1) > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7953BB0[state - 1];
  }
}

+ (id)_caFeatureFromAPFeature:(int)feature
{
  v3 = @"UNKNOWN";
  if (feature == 1)
  {
    v3 = @"TREE";
  }

  if (feature == 2)
  {
    return @"SHADOW";
  }

  else
  {
    return v3;
  }
}

+ (id)_caTriggerTypeFromFromAPThermalPressure:(int)pressure
{
  if ((pressure - 1) > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7953B90[pressure - 1];
  }
}

+ (id)_caNavMapTypeFromAPNavMapType:(int)type
{
  if ((type - 1) > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7953B78[type - 1];
  }
}

+ (int)_eventNavChargingStateFromAPNavChargingState:(int)state
{
  if ((state - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

+ (int)_eventNavMapTypeFromAPNavMapType:(int)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (int)_eventThermalPressureFromAPThermalPressure:(int)pressure
{
  if ((pressure - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return pressure;
  }
}

+ (void)captureDirectionsWithDirectionsFeedbacks:(id)feedbacks finalLocation:(id)location arrivalLocation:(id)arrivalLocation arrivedAtDestination:(id)destination navigationAudioFeedback:(GEONavigationAudioFeedback *)feedback durationOfTrip:(id)trip durationInNavigationModes:(id)modes preArrival:(id)self0 originalEta:(id)self1 isVlfImprovementUsed:(id)self2 isCoarseLocationUsed:(id)self3 acceptedCyclingWorkout:(id)self4 batteryDied:(id)self5 chargingStopAdded:(id)self6 isSiriEngaged:(id)self7 tripOrigin:(id)self8 wasBadRouteExperience:(id)self9 isBadEvExperience:(id)evExperience isEvSampleTrip:(id)sampleTrip stateOfChargeAtOrigin:(id)atOrigin stateOfChargeAtDestPredicted:(id)predicted stateOfChargeAtDestActual:(id)actual stateOfChargeDiffAtDest:(id)dest waypoints:(id)waypoints evConsumptionModel:(id)model evChargingMode:(id)mode isEVRoute:(BOOL)route activeNavMode:(int)feedbacks0 arWalkingUsedInRoutePlanning:(id)feedbacks1 arWalkingUsedInNavigation:(id)feedbacks2 voiceGuidanceLevel:(int)feedbacks3 hFPEnabled:(id)feedbacks4 isEndRouteTermination:(id)feedbacks5 isParkedCarTermination:(id)feedbacks6 isTransitionToWalkingTermination:(id)feedbacks7 isTransitionToFindmyTermination:(id)feedbacks8 parkingDetectionLocation:(id)feedbacks9 timeBetweenParkedAndArrival:(id)location0 arrivedAtDestinationCount:(id)location1 inParkingModeCount:(id)location2 isInParkingMode:(id)location3 isSuggestToWalkingTriggered:(id)location4 isTransitedToWalking:(id)location5 isSuggestToFindmyTriggered:(id)location6 isTransitedToFindmy:(id)location7
{
  feedbacksCopy = feedbacks;
  locationCopy = location;
  arrivalLocationCopy = arrivalLocation;
  destinationCopy = destination;
  tripCopy = trip;
  modesCopy = modes;
  arrivalCopy = arrival;
  etaCopy = eta;
  usedCopy = used;
  locationUsedCopy = locationUsed;
  workoutCopy = workout;
  diedCopy = died;
  addedCopy = added;
  engagedCopy = engaged;
  originCopy = origin;
  experienceCopy = experience;
  evExperienceCopy = evExperience;
  sampleTripCopy = sampleTrip;
  atOriginCopy = atOrigin;
  predictedCopy = predicted;
  actualCopy = actual;
  destCopy = dest;
  waypointsCopy = waypoints;
  modelCopy = model;
  modeCopy = mode;
  planningCopy = planning;
  navigationCopy = navigation;
  enabledCopy = enabled;
  terminationCopy = termination;
  carTerminationCopy = carTermination;
  walkingTerminationCopy = walkingTermination;
  findmyTerminationCopy = findmyTermination;
  detectionLocationCopy = detectionLocation;
  andArrivalCopy = andArrival;
  countCopy = count;
  modeCountCopy = modeCount;
  parkingModeCopy = parkingMode;
  triggeredCopy = triggered;
  walkingCopy = walking;
  findmyTriggeredCopy = findmyTriggered;
  findmyCopy = findmy;
  v56 = +[GEOAPServiceManager sharedManager];
  v57 = v56;
  if (!navMode)
  {
    [v56 reportDailyUsageCountType:167];
    bOOLValue = [destinationCopy BOOLValue];
    bOOLValue2 = [arrivalCopy BOOLValue];
    if ((bOOLValue & 1) != 0 || bOOLValue2)
    {
      [v57 reportDailyUsageCountType:168];
      [etaCopy floatValue];
      v64 = v63;
      [tripCopy floatValue];
      v66 = v64 == 0.0 ? 0 : bOOLValue;
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

    if ([feedbacksCopy count] >= 2)
    {
      [v57 reportDailyUsageCountType:169];
    }
  }

  if (route)
  {
    v60 = modelCopy;
    if (([v57 evDirectionsFeedbackAuth] & 1) == 0)
    {
      [v57 setEvDirectionsFeedbackAllowed:0];
      goto LABEL_16;
    }

    if ([experienceCopy BOOLValue])
    {
      [v57 setEvDirectionsFeedbackAllowed:0];
    }

    else
    {
      evDirectionsFeedbackAllowed = [v57 evDirectionsFeedbackAllowed];
      [v57 toggleEVDirectionsFeedbackAllowed];
      if (!evDirectionsFeedbackAllowed)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v60 = modelCopy;
    if (([v57 directionsFeedbackAllowed] & 1) == 0)
    {
      [v57 setDirectionsFeedbackAllowed:1];
      goto LABEL_16;
    }
  }

  levelCopy = level;
  if ((level - 1) >= 3)
  {
    levelCopy = 0;
  }

  v62 = *&feedback->var9;
  v110 = *&feedback->var0;
  v111[0] = v62;
  *(v111 + 12) = *&feedback->var12;
  LODWORD(v72) = levelCopy;
  LODWORD(v71) = navMode;
  [GEOAPPortal captureDirectionsWithDirectionsFeedbacks:feedbacksCopy finalLocation:locationCopy arrivalLocation:arrivalLocationCopy arrivedAtDestination:destinationCopy navigationAudioFeedback:&v110 durationOfTrip:tripCopy durationInNavigationModes:modesCopy preArrival:arrivalCopy originalEta:etaCopy isVlfImprovementUsed:usedCopy isCoarseLocationUsed:locationUsedCopy acceptedCyclingWorkout:workoutCopy batteryDied:diedCopy chargingStopAdded:addedCopy isSiriEngaged:engagedCopy tripOrigin:originCopy isBadEvExperience:evExperienceCopy isEvSampleTrip:sampleTripCopy stateOfChargeAtOrigin:atOriginCopy stateOfChargeAtDestPredicted:predictedCopy stateOfChargeAtDestActual:actualCopy stateOfChargeDiffAtDest:destCopy waypoints:waypointsCopy evConsumptionModel:v60 evChargingMode:modeCopy activeNavMode:v71 arWalkingUsedInRoutePlanning:planningCopy arWalkingUsedInNavigation:navigationCopy voiceGuidanceLevel:v72 hFPEnabled:enabledCopy isEndRouteTermination:terminationCopy isParkedCarTermination:carTerminationCopy isTransitionToWalkingTermination:walkingTerminationCopy isTransitionToFindmyTermination:findmyTerminationCopy parkingDetectionLocation:detectionLocationCopy timeBetweenParkedAndArrival:andArrivalCopy arrivedAtDestinationCount:countCopy inParkingModeCount:modeCountCopy isInParkingMode:parkingModeCopy isSuggestToWalkingTriggered:triggeredCopy isTransitedToWalking:walkingCopy isSuggestToFindmyTriggered:findmyTriggeredCopy isTransitedToFindmy:findmyCopy additionalStates:0 providedDropRate:0 completionQueue:0 completionBlock:0];
LABEL_16:
}

+ (void)captureCommuteDoomWindow:(id)window exitTime:(id)time destinations:(id)destinations reason:(int64_t)reason networkRequests:(unint64_t)requests alerts:(unint64_t)alerts
{
  v49 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  timeCopy = time;
  destinationsCopy = destinations;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = destinationsCopy;
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
  startDate = [windowCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v34 = [v23 numberWithDouble:?];
  v24 = MEMORY[0x1E696AD98];
  endDate = [windowCopy endDate];
  startDate2 = [windowCopy startDate];
  [endDate timeIntervalSinceDate:startDate2];
  v25 = [v24 numberWithDouble:?];
  v26 = MEMORY[0x1E696AD98];
  startDate3 = [windowCopy startDate];
  [timeCopy timeIntervalSinceDate:startDate3];
  v28 = [v26 numberWithDouble:?];
  if (reason == 2)
  {
    v29 = 2;
  }

  else
  {
    v29 = reason == 1;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:alerts];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:requests];
  v32 = [v11 copy];
  [GEOAPPortal captureCommuteWindowWithStartTime:v34 duration:v25 predictedExitTime:v28 endReason:v29 numberOfAlertingResponses:v30 numberOfDoomRoutingRequests:v31 predictedDestinations:v32];

  v33 = *MEMORY[0x1E69E9840];
}

+ (void)captureTimeToLeaveIntialTravelTimeEventWithTravelTime:(double)time
{
  v3 = time / 60.0;
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

+ (void)captureTransitAppLaunchSource:(id)source destination:(id)destination bundleIdentifier:(id)identifier
{
  var1 = destination.var1;
  var0 = destination.var0;
  v7 = source.var1;
  v8 = source.var0;
  identifierCopy = identifier;
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
  [GEOAPPortal captureTransitAppLaunchWithBundleIdentifier:identifierCopy source:v9 destination:v10 timestamp:v11];
}

+ (void)captureMapLaunchEventWithLaunchUrl:(id)url sourceAppId:(id)id isLaunchedFromTTL:(BOOL)l ttlEventTime:(id)time
{
  lCopy = l;
  urlCopy = url;
  idCopy = id;
  timeCopy = time;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v13 = [idCopy isEqualToString:bundleIdentifier];

  if ((v13 & 1) == 0)
  {
    v14 = +[GEOAPSharedStateData sharedData];
    [v14 setMapLaunchSourceAppId:idCopy];

    if (timeCopy || lCopy)
    {
      v16 = MEMORY[0x1E696AD98];
      [timeCopy timeIntervalSinceNow];
      v15 = [v16 numberWithDouble:v17 / 60.0];
    }

    else
    {
      v15 = 0;
    }

    [GEOAPPortal captureMapLaunchWithLaunchUri:urlCopy sourceAppId:idCopy GEOTimeToLeaveMapLaunch_minutesUntilEvent:v15];
    if ([idCopy isEqualToString:@"com.apple.Maps.GeneralMapsWidget"])
    {
      [GEOAPPortal reportDailyUsageCountType:112];
    }
  }
}

+ (id)addCodeGenDailyCountsWithActionTargetTuple:(unint64_t)tuple actionTargetValue:(id)value appGroup:(int)group
{
  v90 = *MEMORY[0x1E69E9840];
  valueCopy = value;
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
  if (tuple > 0x7FE000003ECLL)
  {
    if (tuple > 0x177D0000025BLL)
    {
      if (tuple <= 0x1B5F000000C8)
      {
        if (tuple <= 0x17A7000000C8)
        {
          if (tuple <= 0x1796000000C8)
          {
            if (tuple > 0x178B000000C8)
            {
              if (tuple > 0x1792000000C8)
              {
                if (tuple > 0x1794000000C8)
                {
                  if (tuple == 0x1794000000C9)
                  {
                    goto LABEL_1016;
                  }

                  v46 = 203;
                }

                else
                {
                  if (tuple == 0x1792000000C9)
                  {
                    goto LABEL_1016;
                  }

                  v46 = 30;
                }

                v16 = v46 & 0xFFFF0000FFFFFFFFLL | 0x179400000000;
              }

              else if (tuple > 0x178D000000C8)
              {
                if (tuple == 0x178D000000C9)
                {
                  goto LABEL_1016;
                }

                v16 = 0x1790000000C9;
              }

              else
              {
                if (tuple == 0x178B000000C9)
                {
                  goto LABEL_1016;
                }

                v16 = 0x178D0000001ELL;
              }
            }

            else
            {
              if (tuple <= 0x177D000006A4)
              {
                if (tuple > 0x177D0000025DLL)
                {
                  if (tuple != 0x177D0000025ELL && tuple != 0x177D00000262)
                  {
                    goto LABEL_1017;
                  }

                  v13 = &unk_1F20557F0;
                }

                else if (tuple == 0x177D0000025CLL)
                {
                  v13 = &unk_1F2055820;
                }

                else
                {
                  v13 = &unk_1F2055838;
                }

                goto LABEL_1016;
              }

              if (tuple > 0x17800000001DLL)
              {
                if (tuple == 0x17800000001ELL)
                {
                  goto LABEL_1016;
                }

                v16 = 0x1780000000C9;
              }

              else
              {
                if (tuple == 0x177D000006A5)
                {
                  v13 = &unk_1F20557D8;
                  goto LABEL_1016;
                }

                v16 = 0x177F000000C9;
              }
            }

            goto LABEL_876;
          }

          if (tuple <= 0x17A000000064)
          {
            if (tuple > 0x179D0000001DLL)
            {
              if (tuple > 0x179E000000C8)
              {
                if (tuple == 0x179E000000C9)
                {
                  goto LABEL_1016;
                }

                v16 = 0x179F000000C9;
              }

              else
              {
                if (tuple == 0x179D0000001ELL)
                {
                  goto LABEL_1016;
                }

                v16 = 0x179D000000C9;
              }
            }

            else if (tuple > 0x179B000000C8)
            {
              if (tuple == 0x179B000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x179C000000C9;
            }

            else
            {
              if (tuple == 0x1796000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x179A000000C9;
            }

            goto LABEL_876;
          }

          if (tuple > 0x17A1000000C8)
          {
            if (tuple > 0x17A2000000C8)
            {
              if (tuple == 0x17A2000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x17A4000000C9;
              goto LABEL_876;
            }

            if (tuple == 0x17A1000000C9)
            {
              goto LABEL_1016;
            }

            if (tuple != 0x17A1000004B9)
            {
              goto LABEL_1017;
            }
          }

          else
          {
            if (tuple <= 0x17A0000004B8)
            {
              if (tuple != 0x17A000000065)
              {
                v16 = 0x17A0000000C9;
                goto LABEL_876;
              }

LABEL_781:
              v13 = &unk_1F2055778;
              goto LABEL_1016;
            }

            if (tuple != 0x17A0000004B9)
            {
              if (tuple != 0x17A100000065)
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

        if (tuple <= 0x17D100000039)
        {
          if (tuple <= 0x17BB000000C8)
          {
            if (tuple > 0x17AC000000C8)
            {
              if (tuple > 0x17BA000000C8)
              {
                if (tuple == 0x17BA000000C9)
                {
                  goto LABEL_1016;
                }

                v44 = 203;
              }

              else
              {
                if (tuple == 0x17AC000000C9)
                {
                  goto LABEL_1016;
                }

                v44 = 30;
              }

              v16 = v44 & 0xFFFF0000FFFFFFFFLL | 0x17BA00000000;
            }

            else
            {
              if (tuple > 0x17A9000000C8)
              {
                if (tuple != 0x17A9000000C9)
                {
                  if (tuple != 0x17AA00000000)
                  {
                    goto LABEL_1017;
                  }

                  v13 = &unk_1F2055178;
                }

                goto LABEL_1016;
              }

              if (tuple == 0x17A7000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x17A8000000C9;
            }

            goto LABEL_876;
          }

          if (tuple <= 0x17BF000000C8)
          {
            if (tuple > 0x17BD000000C8)
            {
              if (tuple == 0x17BD000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x17BE000000C9;
            }

            else
            {
              if (tuple == 0x17BB000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x17BC000000C9;
            }

            goto LABEL_876;
          }

          if (tuple > 0x17C0000000C8)
          {
            if (tuple == 0x17C0000000C9)
            {
              goto LABEL_1016;
            }

            v16 = 0x17C1000000C9;
            goto LABEL_876;
          }

          if (tuple == 0x17BF000000C9)
          {
            goto LABEL_1016;
          }

          v22 = 0x17BF000004B9;
          goto LABEL_551;
        }

        if (tuple > 0x17D100000400)
        {
          if (tuple > 0x1B5B000000C8)
          {
            if (tuple > 0x1B5D000000C8)
            {
              if (tuple == 0x1B5D000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x1B5E000000C9;
            }

            else
            {
              if (tuple == 0x1B5B000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x1B5C000000C9;
            }

            goto LABEL_876;
          }

          if (tuple > 0x1B59000000C8)
          {
            if (tuple == 0x1B59000000C9)
            {
              goto LABEL_1016;
            }

            v16 = 0x1B5A000000C9;
            goto LABEL_876;
          }

          if (tuple != 0x17D100000401)
          {
            if (tuple != 0x17D90000029ELL)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055730;
            goto LABEL_1016;
          }
        }

        else
        {
          if (tuple <= 0x17D100000190)
          {
            if (tuple > 0x17D1000000C8)
            {
              if (tuple != 0x17D1000000C9)
              {
                v26 = 301;
                goto LABEL_764;
              }
            }

            else if (tuple != 0x17D10000003ALL)
            {
              v26 = 104;
LABEL_764:
              v28 = v26 & 0xFFFF0000FFFFFFFFLL | 0x17D100000000;
LABEL_765:
              if (tuple != v28)
              {
                goto LABEL_1017;
              }

              goto LABEL_766;
            }

            goto LABEL_766;
          }

          if (tuple <= 0x17D1000003F0)
          {
            if (tuple != 0x17D100000191)
            {
              v26 = 607;
              goto LABEL_764;
            }

LABEL_766:
            v13 = &unk_1F20554C0;
            goto LABEL_1016;
          }

          if (tuple != 0x17D1000003F1 && tuple != 0x17D1000003FDLL)
          {
            goto LABEL_1017;
          }
        }

        v13 = &unk_1F2055A78;
        goto LABEL_1016;
      }

      if (tuple <= 0x2345000002D8)
      {
        if (tuple <= 0x2338000003EDLL)
        {
          if (tuple <= 0x232E000003ECLL)
          {
            if (tuple <= 0x1B63000000C8)
            {
              if (tuple > 0x1B61000000C8)
              {
                if (tuple == 0x1B61000000C9)
                {
                  goto LABEL_1016;
                }

                v16 = 0x1B62000000C9;
              }

              else
              {
                if (tuple == 0x1B5F000000C9)
                {
                  goto LABEL_1016;
                }

                v16 = 0x1B60000000C9;
              }

              goto LABEL_876;
            }

            if (tuple <= 0x1F49000003F1)
            {
              if (tuple == 0x1B63000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x1B65000000C9;
              goto LABEL_876;
            }

            if (tuple != 0x1F49000003F2)
            {
              if (tuple != 0x2329000002A3)
              {
                goto LABEL_1017;
              }

              goto LABEL_931;
            }

LABEL_809:
            v13 = &unk_1F20553E8;
            goto LABEL_1016;
          }

          if (tuple <= 0x23380000012ELL)
          {
            if (tuple <= 0x23380000012CLL)
            {
              if (tuple == 0x232E000003EDLL)
              {
                goto LABEL_809;
              }

              v32 = 0x232E000003FDLL;
LABEL_808:
              if (tuple != v32)
              {
                goto LABEL_1017;
              }

              goto LABEL_809;
            }

            if (tuple != 0x23380000012DLL)
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

          if (tuple <= 0x2338000003E8)
          {
            if (tuple != 0x23380000012FLL)
            {
              if (tuple != 0x233800000131)
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

          if (tuple != 0x2338000003E9)
          {
            v25 = 1005;
            goto LABEL_821;
          }

          goto LABEL_823;
        }

        if (tuple <= 0x233B000003F1)
        {
          if (tuple > 0x233B000003E9)
          {
            if (tuple > 0x233B000003EELL)
            {
              if (tuple == 0x233B000003EFLL)
              {
                goto LABEL_809;
              }

              v34 = 1009;
            }

            else
            {
              if (tuple == 0x233B000003EALL)
              {
                goto LABEL_809;
              }

              v34 = 1005;
            }
          }

          else
          {
            if (tuple <= 0x2338000003EFLL)
            {
              if (tuple != 0x2338000003EELL)
              {
                v25 = 1007;
LABEL_821:
                v56 = v25 & 0xFFFF0000FFFFFFFFLL | 0x233800000000;
LABEL_822:
                if (tuple != v56)
                {
                  goto LABEL_1017;
                }
              }

LABEL_823:
              v13 = &unk_1F2055958;
              goto LABEL_1016;
            }

            if (tuple == 0x2338000003F0)
            {
              goto LABEL_823;
            }

            v34 = 1001;
          }

LABEL_807:
          v32 = v34 & 0xFFFF0000FFFFFFFFLL | 0x233B00000000;
          goto LABEL_808;
        }

        if (tuple <= 0x2345000002D4)
        {
          if (tuple > 0x233B000003FALL)
          {
            if (tuple == 0x233B000003FBLL)
            {
              goto LABEL_809;
            }

            v34 = 1023;
          }

          else
          {
            if (tuple == 0x233B000003F2)
            {
              goto LABEL_809;
            }

            v34 = 1011;
          }

          goto LABEL_807;
        }

        if (tuple <= 0x2345000002D6)
        {
          if (tuple != 0x2345000002D5)
          {
            v21 = 726;
            goto LABEL_834;
          }

LABEL_835:
          v13 = &unk_1F2055130;
          goto LABEL_1016;
        }

        if (tuple == 0x2345000002D7)
        {
          goto LABEL_835;
        }

        v21 = 728;
        goto LABEL_834;
      }

      if (tuple <= 0x2B04000004BFLL)
      {
        if (tuple <= 0x2346000002D8)
        {
          if (tuple <= 0x2346000002D4)
          {
            if (tuple <= 0x2345000002DALL)
            {
              if (tuple != 0x2345000002D9)
              {
                v21 = 730;
                goto LABEL_834;
              }

              goto LABEL_835;
            }

            if (tuple == 0x2345000002DBLL)
            {
              goto LABEL_835;
            }

            v21 = 732;
LABEL_834:
            if (tuple != (v21 & 0xFFFF0000FFFFFFFFLL | 0x234500000000))
            {
              goto LABEL_1017;
            }

            goto LABEL_835;
          }

          if (tuple <= 0x2346000002D6)
          {
            if (tuple != 0x2346000002D5)
            {
              v33 = 726;
              goto LABEL_801;
            }

LABEL_802:
            v13 = &unk_1F2055A90;
            goto LABEL_1016;
          }

          if (tuple == 0x2346000002D7)
          {
            goto LABEL_802;
          }

          v33 = 728;
          goto LABEL_801;
        }

        if (tuple <= 0x234C000000C8)
        {
          if (tuple <= 0x2346000002DALL)
          {
            if (tuple != 0x2346000002D9)
            {
              v33 = 730;
              goto LABEL_801;
            }

            goto LABEL_802;
          }

          if (tuple == 0x2346000002DBLL)
          {
            goto LABEL_802;
          }

          v33 = 732;
LABEL_801:
          if (tuple != (v33 & 0xFFFF0000FFFFFFFFLL | 0x234600000000))
          {
            goto LABEL_1017;
          }

          goto LABEL_802;
        }

        if (tuple <= 0x2AFB000004B7)
        {
          if (tuple == 0x234C000000C9)
          {
            goto LABEL_1016;
          }

          v16 = 0x234D000000C9;
          goto LABEL_876;
        }

        if (tuple != 0x2AFB000004B8)
        {
          v27 = 0x2B04000004B9;
LABEL_828:
          if (tuple != v27)
          {
            goto LABEL_1017;
          }

          goto LABEL_829;
        }

LABEL_790:
        v13 = &unk_1F20557A8;
        goto LABEL_1016;
      }

      if (tuple <= 0x2B0900000070)
      {
        if (tuple <= 0x2B06000004BFLL)
        {
          if (tuple > 0x2B05000004BFLL)
          {
            if (tuple != 0x2B05000004C0)
            {
              v27 = 0x2B06000004B9;
              goto LABEL_828;
            }
          }

          else if (tuple != 0x2B04000004C0)
          {
            v27 = 0x2B05000004B9;
            goto LABEL_828;
          }

LABEL_829:
          v13 = &unk_1F20553D0;
          goto LABEL_1016;
        }

        if (tuple <= 0x2B0900000060)
        {
          if (tuple == 0x2B06000004C0)
          {
            goto LABEL_829;
          }

          v45 = 93;
          goto LABEL_815;
        }

        if (tuple != 0x2B0900000061)
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

      if (tuple <= 0x4283FFFFFFFFLL)
      {
        if (tuple <= 0x2B12000004BFLL)
        {
          if (tuple != 0x2B0900000071)
          {
            v27 = 0x2B12000004B9;
            goto LABEL_828;
          }

          goto LABEL_895;
        }

        if (tuple == 0x2B12000004C0)
        {
          goto LABEL_829;
        }

        v23 = 0x2B130000006DLL;
LABEL_789:
        if (tuple != v23)
        {
          goto LABEL_1017;
        }

        goto LABEL_790;
      }

      if (tuple <= 0x42B400000001)
      {
        if (tuple == 0x428400000000)
        {
          v13 = &unk_1F2055328;
          goto LABEL_1016;
        }

        v47 = 1;
        goto LABEL_840;
      }

      if (tuple != 0x42B400000002)
      {
        v47 = 4;
LABEL_840:
        v39 = v47 & 0xFFFF0000FFFFFFFFLL | 0x42B400000000;
LABEL_841:
        if (tuple != v39)
        {
          goto LABEL_1017;
        }
      }

LABEL_842:
      v13 = &unk_1F20554D8;
      goto LABEL_1016;
    }

    if (tuple > 0xBB9000000C8)
    {
      if (tuple <= 0x177300000086)
      {
        if (tuple <= 0xBB9000004BALL)
        {
          if (tuple <= 0xBB900000321)
          {
            if (tuple > 0xBB900000130)
            {
              if (tuple > 0xBB900000191)
              {
                if (tuple == 0xBB900000192)
                {
LABEL_774:
                  v13 = &unk_1F20559A0;
                  goto LABEL_1016;
                }

                if (tuple != 0xBB900000193)
                {
                  goto LABEL_1017;
                }

LABEL_995:
                v13 = &unk_1F2055988;
                goto LABEL_1016;
              }

              if (tuple != 0xBB900000131)
              {
                if (tuple != 0xBB900000191)
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

            if (tuple > 0xBB90000012DLL)
            {
              if (tuple == 0xBB90000012ELL)
              {
                if ([v10 mapSettingsLocationPrecisionType] == 2)
                {
                  [v12 addObject:&unk_1F20559E8];
                }

                v15 = &unk_1F20559A0;
              }

              else
              {
                if (tuple != 0xBB90000012FLL)
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

            if (tuple != 0xBB9000000C9)
            {
              if (tuple != 0xBB90000012DLL)
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
            if (group != 1)
            {
              goto LABEL_1017;
            }

LABEL_966:
            v13 = &unk_1F20559D0;
            goto LABEL_1016;
          }

          if (tuple > 0xBB9000003EDLL)
          {
            if (tuple > 0xBB9000003EFLL)
            {
              if (tuple == 0xBB9000003F0)
              {
                goto LABEL_823;
              }

              v42 = 1010;
            }

            else
            {
              if (tuple == 0xBB9000003EELL)
              {
                goto LABEL_823;
              }

              v42 = 1007;
            }
          }

          else
          {
            if (tuple <= 0xBB9000003E8)
            {
              if (tuple != 0xBB900000322 && tuple != 0xBB900000323)
              {
                goto LABEL_1017;
              }

              goto LABEL_966;
            }

            if (tuple == 0xBB9000003E9)
            {
              goto LABEL_823;
            }

            v42 = 1005;
          }

          v56 = v42 & 0xFFFF0000FFFFFFFFLL | 0xBB900000000;
          goto LABEL_822;
        }

        if (tuple <= 0x1389000004B7)
        {
          if (tuple <= 0xBB9000004D4)
          {
            if (tuple > 0xBB9000004C4)
            {
              if (tuple == 0xBB9000004C5)
              {
                goto LABEL_895;
              }

              v24 = 1222;
            }

            else
            {
              if (tuple == 0xBB9000004BBLL)
              {
                goto LABEL_895;
              }

              v24 = 1220;
            }

LABEL_893:
            v57 = v24 & 0xFFFF0000FFFFFFFFLL | 0xBB900000000;
LABEL_894:
            if (tuple != v57)
            {
              goto LABEL_1017;
            }

            goto LABEL_895;
          }

          if (tuple <= 0xFA1000004B7)
          {
            if (tuple == 0xBB9000004D5)
            {
              goto LABEL_895;
            }

            v16 = 0xBF7000000C9;
LABEL_876:
            if (tuple != v16)
            {
              goto LABEL_1017;
            }

LABEL_1016:
            [v12 addObject:v13];
            goto LABEL_1017;
          }

          if (tuple != 0xFA1000004B8)
          {
            if (tuple != 0xFA600000284)
            {
              goto LABEL_1017;
            }

            goto LABEL_952;
          }

LABEL_704:
          v13 = &unk_1F2055160;
          goto LABEL_1016;
        }

        if (tuple <= 0x17730000001DLL)
        {
          if (tuple <= 0x1392000000C8)
          {
            if (tuple != 0x1389000004B8)
            {
              v16 = 0x1391000000C9;
              goto LABEL_876;
            }

            goto LABEL_704;
          }

          if (tuple == 0x1392000000C9)
          {
            goto LABEL_1016;
          }

          v40 = 0x177300000000;
          goto LABEL_686;
        }

        if (tuple <= 0x177300000082)
        {
          if (tuple != 0x17730000001ELL)
          {
            v20 = 130;
            goto LABEL_714;
          }

LABEL_675:
          v13 = &unk_1F2055370;
          goto LABEL_1016;
        }

        if (tuple != 0x177300000083)
        {
          v20 = 132;
LABEL_714:
          if (tuple != (v20 & 0xFFFF0000FFFFFFFFLL | 0x177300000000))
          {
            goto LABEL_1017;
          }
        }

LABEL_715:
        v13 = &unk_1F2055340;
        goto LABEL_1016;
      }

      if (tuple <= 0x1777000004B8)
      {
        if (tuple > 0x177300000321)
        {
          if (tuple > 0x1775000004B8)
          {
            if (tuple > 0x1776000000C8)
            {
              if (tuple == 0x1776000000C9)
              {
                goto LABEL_1016;
              }

              v16 = 0x1777000000C9;
              goto LABEL_876;
            }

            if (tuple != 0x1775000004B9)
            {
              if (tuple != 0x177600000065)
              {
                goto LABEL_1017;
              }

              goto LABEL_781;
            }

            goto LABEL_782;
          }

          if (tuple > 0x17740000001DLL)
          {
            if (tuple == 0x17740000001ELL)
            {
              goto LABEL_1016;
            }

            v16 = 0x1774000000C9;
            goto LABEL_876;
          }

          if (tuple != 0x177300000322)
          {
            if (tuple == 0x177300000323)
            {
              [v11 addObject:&unk_1F2055340];
              if ([v10 mapsInOfflineMode])
              {
                [v12 addObject:&unk_1F2055358];
              }

              if (group == 1)
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
          if (tuple <= 0x17730000025ELL)
          {
            if (tuple <= 0x1773000000C8)
            {
              if (tuple != 0x177300000087)
              {
                v20 = 137;
                goto LABEL_714;
              }

              goto LABEL_715;
            }

            if (tuple != 0x1773000000C9)
            {
              if (tuple != 0x1773000000CBLL)
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
            v82 = group - 1;
            if ((group - 1) < 3)
            {
              v83 = &unk_1E7953BC8;
              goto LABEL_980;
            }

            goto LABEL_1017;
          }

          if (tuple > 0x1773000002BCLL)
          {
            if (tuple == 0x1773000002BDLL)
            {
              [v11 addObject:&unk_1F2055340];
              if ([v10 mapsInOfflineMode])
              {
                [v12 addObject:&unk_1F2055358];
              }

              if (group == 2)
              {
                v13 = &unk_1F2055388;
                goto LABEL_1016;
              }
            }

            else if (tuple == 0x1773000002BELL)
            {
              [v11 addObject:&unk_1F2055340];
              if ([v10 mapsInOfflineMode])
              {
                [v12 addObject:&unk_1F2055358];
              }

              if (group == 3)
              {
                v13 = &unk_1F20553B8;
                goto LABEL_1016;
              }
            }

            goto LABEL_1017;
          }

          if (tuple != 0x17730000025FLL)
          {
            v40 = 0x17730000028ALL;
LABEL_686:
            if (tuple != v40)
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

      if (tuple > 0x177A000000CALL)
      {
        if (tuple > 0x177D00000092)
        {
          if (tuple <= 0x177D000000C8)
          {
            if (tuple == 0x177D00000093)
            {
              v13 = &unk_1F20557C0;
            }

            else
            {
              if (tuple != 0x177D00000099)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055808;
            }

            goto LABEL_1016;
          }

          if (tuple != 0x177D000000C9 && tuple != 0x177D000000CBLL)
          {
            goto LABEL_1017;
          }
        }

        else
        {
          if (tuple <= 0x177C000000C8)
          {
            if (tuple == 0x177A000000CBLL)
            {
              goto LABEL_1016;
            }

            v16 = 0x177B000000C9;
            goto LABEL_876;
          }

          if (tuple == 0x177C000000C9)
          {
            goto LABEL_1016;
          }

          if (tuple != 0x177D0000001ELL)
          {
            goto LABEL_1017;
          }

          [v11 addObject:&unk_1F2054FC8];
          v11 = v12;
        }

        [v11 addObject:&unk_1F2054FC8];
        goto LABEL_842;
      }

      if (tuple <= 0x1779000000CALL)
      {
        if (tuple > 0x17790000001DLL)
        {
          if (tuple == 0x17790000001ELL)
          {
            goto LABEL_1016;
          }

          v16 = 0x1779000000C9;
          goto LABEL_876;
        }

        if (tuple != 0x1777000004B9)
        {
          v16 = 0x1778000000C9;
          goto LABEL_876;
        }

        goto LABEL_782;
      }

      if (tuple > 0x177A0000001DLL)
      {
        if (tuple == 0x177A0000001ELL)
        {
          goto LABEL_1016;
        }

        v16 = 0x177A000000C9;
        goto LABEL_876;
      }

      if (tuple == 0x1779000000CBLL)
      {
        goto LABEL_1016;
      }

      v41 = 0x1779000004B9;
LABEL_568:
      if (tuple != v41)
      {
        goto LABEL_1017;
      }

      goto LABEL_782;
    }

    if (tuple > 0x818000000C8)
    {
      if (tuple <= 0x8330000006CLL)
      {
        if (tuple <= 0x822000000FBLL)
        {
          if (tuple <= 0x819000000C8)
          {
            if (tuple <= 0x818000000FFLL)
            {
              if (tuple != 0x818000000C9)
              {
                v18 = 251;
LABEL_746:
                if (tuple != (v18 & 0xFFFF0000FFFFFFFFLL | 0x81800000000))
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

            if (tuple == 0x81800000100)
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

          if (tuple <= 0x82200000007)
          {
            if (tuple == 0x819000000C9)
            {
              goto LABEL_1016;
            }

            v49 = 203;
            goto LABEL_875;
          }

          if (tuple != 0x82200000008 && tuple != 0x822000000FBLL)
          {
            goto LABEL_1017;
          }

LABEL_890:
          v13 = &unk_1F2055850;
          goto LABEL_1016;
        }

        if (tuple <= 0x82E000000C8)
        {
          if (tuple > 0x824000000C8)
          {
            if (tuple != 0x824000000C9)
            {
              if (tuple != 0x82B00000103)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055760;
            }

            goto LABEL_1016;
          }

          if (tuple != 0x822000000FCLL)
          {
            v16 = 0x823000000C9;
            goto LABEL_876;
          }

          goto LABEL_890;
        }

        if (tuple > 0x830000000FALL)
        {
          if (tuple == 0x830000000FBLL)
          {
LABEL_899:
            v13 = &unk_1F2055868;
            goto LABEL_1016;
          }

          v50 = 259;
        }

        else
        {
          if (tuple == 0x82E000000C9)
          {
            goto LABEL_1016;
          }

          v50 = 8;
        }

        if (tuple != (v50 & 0xFFFF0000FFFFFFFFLL | 0x83000000000))
        {
          goto LABEL_1017;
        }

        goto LABEL_899;
      }

      if (tuple <= 0xBB900000060)
      {
        if (tuple <= 0x8700000029CLL)
        {
          if (tuple > 0x8630000001DLL)
          {
            if (tuple != 0x8630000001ELL)
            {
              if (tuple != 0x86D0000029DLL)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055088;
            }

            goto LABEL_1016;
          }

          if (tuple != 0x8330000006DLL)
          {
            v16 = 0x833000000C9;
            goto LABEL_876;
          }

          goto LABEL_790;
        }

        if (tuple > 0x893FFFFFFFFLL)
        {
          if (tuple == 0x89400000000)
          {
            v13 = &unk_1F20550B8;
            goto LABEL_1016;
          }

          v24 = 93;
          goto LABEL_893;
        }

        if (tuple != 0x8700000029DLL)
        {
          if (tuple != 0x8710000029DLL)
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

      if (tuple <= 0xBB900000082)
      {
        if (tuple <= 0xBB900000070)
        {
          if (tuple == 0xBB900000061)
          {
            goto LABEL_895;
          }

          v24 = 111;
          goto LABEL_893;
        }

        if (tuple == 0xBB900000071)
        {
          goto LABEL_895;
        }

        if (tuple != 0xBB900000082)
        {
          goto LABEL_1017;
        }

LABEL_887:
        v13 = &unk_1F2055940;
        goto LABEL_1016;
      }

      if (tuple <= 0xBB900000086)
      {
        if (tuple != 0xBB900000083)
        {
          if (tuple != 0xBB900000084)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055928;
          goto LABEL_1016;
        }

        goto LABEL_887;
      }

      if (tuple == 0xBB900000087)
      {
LABEL_903:
        if (valueCopy)
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
      if (tuple != v55)
      {
        goto LABEL_1017;
      }

      goto LABEL_903;
    }

    if (tuple > 0x80C0000001DLL)
    {
      if (tuple <= 0x813000000C8)
      {
        if (tuple <= 0x81300000007)
        {
          if (tuple > 0x80C000000CALL)
          {
            if (tuple != 0x80C000000CBLL)
            {
              if (tuple != 0x81000000008)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055C58;
            }

            goto LABEL_1016;
          }

          if (tuple == 0x80C0000001ELL)
          {
            goto LABEL_1016;
          }

          v16 = 0x80C000000C9;
          goto LABEL_876;
        }

        if (tuple <= 0x8130000006CLL)
        {
          if (tuple != 0x81300000008)
          {
            v43 = 11;
            goto LABEL_742;
          }

LABEL_743:
          v13 = &unk_1F2055898;
          goto LABEL_1016;
        }

        if (tuple == 0x8130000006DLL)
        {
          goto LABEL_743;
        }

        v43 = 119;
LABEL_742:
        if (tuple != (v43 & 0xFFFF0000FFFFFFFFLL | 0x81300000000))
        {
          goto LABEL_1017;
        }

        goto LABEL_743;
      }

      if (tuple > 0x814000000FBLL)
      {
        if (tuple <= 0x81400000102)
        {
          if (tuple != 0x814000000FCLL && tuple != 0x81400000100)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055B20;
          goto LABEL_1016;
        }

        if (tuple == 0x81400000103)
        {
          v13 = &unk_1F2055B38;
          goto LABEL_1016;
        }

        v18 = 8;
        goto LABEL_746;
      }

      if (tuple > 0x813000000FFLL)
      {
        if (tuple == 0x81300000100)
        {
          goto LABEL_743;
        }

        v43 = 1201;
        goto LABEL_742;
      }

      if (tuple == 0x813000000C9)
      {
        v84 = &unk_1F2055898;
        goto LABEL_1009;
      }

      if (tuple != 0x813000000FBLL)
      {
        goto LABEL_1017;
      }

      [v11 addObject:&unk_1F2055898];
LABEL_573:
      v13 = &unk_1F20555C8;
      goto LABEL_1016;
    }

    if (tuple > 0x801FFFFFFFFLL)
    {
      if (tuple > 0x809000000FDLL)
      {
        if (tuple > 0x80B000000C8)
        {
          if (tuple == 0x80B000000C9)
          {
            goto LABEL_1016;
          }

          v37 = 203;
        }

        else
        {
          if (tuple == 0x809000000FELL)
          {
            v13 = &unk_1F2055880;
            goto LABEL_1016;
          }

          v37 = 30;
        }

        v16 = v37 & 0xFFFF0000FFFFFFFFLL | 0x80B00000000;
        goto LABEL_876;
      }

      if (tuple > 0x803FFFFFFFFLL)
      {
        if (tuple != 0x80400000000)
        {
          v39 = 0x80900000008;
          goto LABEL_841;
        }
      }

      else if (tuple != 0x80200000000)
      {
        v30 = 0x80300000000;
        goto LABEL_733;
      }

LABEL_734:
      v13 = &unk_1F20550E8;
      goto LABEL_1016;
    }

    if (tuple > 0x7FF000003ECLL)
    {
      if (tuple <= 0x801000000FDLL)
      {
        if (tuple != 0x7FF000003EDLL)
        {
          v35 = 0x80100000008;
          goto LABEL_724;
        }

LABEL_591:
        v13 = &unk_1F2055550;
        goto LABEL_1016;
      }

      if (tuple != 0x801000000FELL)
      {
        v52 = 0x801000003EDLL;
        goto LABEL_590;
      }

LABEL_725:
      v13 = &unk_1F2055B80;
      goto LABEL_1016;
    }

    if (tuple == 0x7FE000003EDLL)
    {
      goto LABEL_591;
    }

    if (tuple == 0x7FF00000008)
    {
      goto LABEL_725;
    }

    v35 = 0x7FF000000FELL;
LABEL_724:
    if (tuple != v35)
    {
      goto LABEL_1017;
    }

    goto LABEL_725;
  }

  if (tuple > 0x3EC000001F4)
  {
    if (tuple <= 0x418000001F8)
    {
      if (tuple <= 0x413000001F8)
      {
        if (tuple > 0x411000001F4)
        {
          if (tuple <= 0x412000001F6)
          {
            if (tuple > 0x411000001F8 && tuple <= 0x412000001F4 && tuple != 0x411000001F9 && tuple != 0x41200000000)
            {
              goto LABEL_1017;
            }

            goto LABEL_859;
          }

          if (tuple > 0x413000001F4 || tuple <= 0x412000001F9)
          {
            goto LABEL_859;
          }

          if (tuple != 0x41300000000)
          {
            goto LABEL_1017;
          }

          goto LABEL_869;
        }

        if (tuple <= 0x3FC000004B7)
        {
          if (tuple <= 0x3EC000001F7)
          {
            goto LABEL_859;
          }

          if (tuple <= 0x3F2000004B7)
          {
            if (tuple != 0x3EC000001F8 && tuple != 0x3EC000001F9)
            {
              goto LABEL_1017;
            }

            goto LABEL_859;
          }

          if (tuple == 0x3F2000004B8)
          {
            goto LABEL_704;
          }

          v36 = 0x3F3000004B8;
        }

        else
        {
          if (tuple <= 0x408000000C8)
          {
            if (tuple <= 0x406000000C8)
            {
              if (tuple != 0x3FC000004B8 && tuple != 0x40600000050)
              {
                goto LABEL_1017;
              }

              goto LABEL_704;
            }

            if (tuple == 0x406000000C9)
            {
              goto LABEL_1016;
            }

            v41 = 0x406000004B9;
            goto LABEL_568;
          }

          if (tuple > 0x410000004B7)
          {
            if (tuple == 0x410000004B8)
            {
              goto LABEL_704;
            }

            if (tuple != 0x41100000000)
            {
              goto LABEL_1017;
            }

            goto LABEL_859;
          }

          if (tuple == 0x408000000C9)
          {
            goto LABEL_1016;
          }

          v36 = 0x40A000004B8;
        }
      }

      else
      {
        if (tuple > 0x416000001F5)
        {
          if (tuple > 0x417000001F6)
          {
            if (tuple <= 0x418000001F4)
            {
              if (tuple <= 0x417000001F9)
              {
                goto LABEL_859;
              }

              if (tuple != 0x41800000000)
              {
                goto LABEL_1017;
              }
            }
          }

          else
          {
            if (tuple > 0x416000004B7)
            {
              if (tuple <= 0x417000001F4)
              {
                if (tuple == 0x416000004B8)
                {
                  goto LABEL_704;
                }

                if (tuple != 0x41700000000)
                {
                  goto LABEL_1017;
                }
              }

              goto LABEL_859;
            }

            if (tuple > 0x416000001F9)
            {
              goto LABEL_1017;
            }
          }

          goto LABEL_869;
        }

        if (tuple <= 0x415000001F4)
        {
          if (tuple > 0x414000001F6)
          {
            if (tuple > 0x414000001F9)
            {
              if (tuple != 0x41500000000)
              {
                goto LABEL_1017;
              }

              goto LABEL_859;
            }
          }

          else if (tuple <= 0x414000001F4)
          {
            if (tuple == 0x413000001F9)
            {
              goto LABEL_859;
            }

            if (tuple != 0x41400000000)
            {
              goto LABEL_1017;
            }
          }

          goto LABEL_869;
        }

        if (tuple <= 0x415000001F8)
        {
          goto LABEL_859;
        }

        if (tuple > 0x415FFFFFFFFLL)
        {
          if (tuple != 0x41600000000 && tuple != 0x416000001F5)
          {
            goto LABEL_1017;
          }

          goto LABEL_869;
        }

        if (tuple == 0x415000001F9)
        {
          goto LABEL_859;
        }

        v36 = 0x415000004B8;
      }

      if (tuple != v36)
      {
        goto LABEL_1017;
      }

      goto LABEL_704;
    }

    if (tuple <= 0x7D700000322)
    {
      if (tuple <= 0x41F000000C8)
      {
        if (tuple <= 0x41A000001F4)
        {
          if (tuple > 0x419000001F6)
          {
            if (tuple <= 0x419000001F9)
            {
              goto LABEL_859;
            }

            if (tuple != 0x41A00000000)
            {
              goto LABEL_1017;
            }
          }

          else
          {
            if (tuple > 0x419000001F4)
            {
              goto LABEL_859;
            }

            if (tuple != 0x418000001F9)
            {
              if (tuple != 0x41900000000)
              {
                goto LABEL_1017;
              }

              goto LABEL_859;
            }
          }

          goto LABEL_869;
        }

        if (tuple <= 0x41A000001F8)
        {
          goto LABEL_869;
        }

        if (tuple > 0x41D000001F5)
        {
          if (tuple != 0x41D000001F6)
          {
            if (tuple != 0x41F00000008)
            {
              goto LABEL_1017;
            }

            goto LABEL_953;
          }
        }

        else
        {
          if (tuple == 0x41A000001F9)
          {
            goto LABEL_869;
          }

          if (tuple != 0x41D000001F5)
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

      if (tuple <= 0x7D700000062)
      {
        if (tuple <= 0x7D4000003F1)
        {
          if (tuple <= 0x7D4000000C8)
          {
            if (tuple == 0x41F000000C9)
            {
              goto LABEL_1016;
            }

            v23 = 0x7D10000006DLL;
            goto LABEL_789;
          }

          if (tuple == 0x7D4000000C9)
          {
            [v11 addObject:&unk_1F2054FC8];
            goto LABEL_952;
          }

          if (tuple != 0x7D4000003F1)
          {
            goto LABEL_1017;
          }

LABEL_613:
          [v12 addObject:&unk_1F20553E8];
          v13 = &unk_1F2055B08;
          goto LABEL_1016;
        }

        if (tuple <= 0x7D70000000ALL)
        {
          if (tuple != 0x7D4000003F2)
          {
            if (tuple != 0x7D4000003FFLL)
            {
              goto LABEL_1017;
            }

            goto LABEL_809;
          }

          goto LABEL_613;
        }

        if (tuple != 0x7D70000000BLL)
        {
          if (tuple != 0x7D70000003BLL)
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

      if (tuple <= 0x7D70000025ELL)
      {
        if (tuple > 0x7D700000065)
        {
          if (tuple != 0x7D700000066)
          {
            v23 = 0x7D70000006DLL;
            goto LABEL_789;
          }
        }

        else
        {
          if (tuple == 0x7D700000063)
          {
            goto LABEL_790;
          }

          if (tuple != 0x7D700000065)
          {
            goto LABEL_1017;
          }
        }

        goto LABEL_639;
      }

      if (tuple <= 0x7D7000002BDLL)
      {
        if (tuple == 0x7D70000025FLL)
        {
          v13 = &unk_1F2055BE0;
        }

        else
        {
          if (tuple != 0x7D7000002BDLL)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055BF8;
        }

        goto LABEL_1016;
      }

      if (tuple == 0x7D7000002BELL)
      {
        v13 = &unk_1F2055C40;
        goto LABEL_1016;
      }

      v19 = 802;
      goto LABEL_660;
    }

    if (tuple <= 0x7DF00000321)
    {
      if (tuple <= 0x7DE0000003ALL)
      {
        if (tuple > 0x7D7000003F2)
        {
          if (tuple > 0x7D7000004B6)
          {
            if (tuple != 0x7D7000004B7)
            {
              if (tuple != 0x7DE0000000BLL)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055CB8;
              goto LABEL_1016;
            }

            goto LABEL_790;
          }

          if (tuple == 0x7D7000003F3)
          {
            goto LABEL_591;
          }

          if (tuple != 0x7D7000003FFLL)
          {
            goto LABEL_1017;
          }

          [v11 addObject:&unk_1F2055550];
          goto LABEL_613;
        }

        if (tuple > 0x7D7000003EALL)
        {
          if (tuple == 0x7D7000003EBLL)
          {
            goto LABEL_591;
          }

          v52 = 0x7D7000003F1;
LABEL_590:
          if (tuple != v52)
          {
            goto LABEL_1017;
          }

          goto LABEL_591;
        }

        if (tuple == 0x7D700000323)
        {
LABEL_661:
          v13 = &unk_1F2055C28;
          goto LABEL_1016;
        }

        v19 = 804;
LABEL_660:
        if (tuple != (v19 & 0xFFFF0000FFFFFFFFLL | 0x7D700000000))
        {
          goto LABEL_1017;
        }

        goto LABEL_661;
      }

      if (tuple > 0x7DF00000064)
      {
        if (tuple > 0x7DF000002BCLL)
        {
          if (tuple == 0x7DF000002BDLL)
          {
            if (([self permittedToCountAC] & 1) == 0)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F20558E0;
          }

          else
          {
            if (tuple != 0x7DF000002BELL || ([self permittedToCountAC] & 1) == 0)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055910;
          }

          goto LABEL_1016;
        }

        if (tuple == 0x7DF00000065 || tuple == 0x7DF00000066)
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

      if (tuple <= 0x7DE000003FELL)
      {
        if (tuple == 0x7DE0000003BLL)
        {
          v13 = &unk_1F2055CA0;
        }

        else
        {
          if (tuple != 0x7DE0000025FLL)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055C88;
        }

        goto LABEL_1016;
      }

      if (tuple == 0x7DE000003FFLL)
      {
        goto LABEL_613;
      }

      v54 = 99;
LABEL_610:
      v53 = v54 & 0xFFFF0000FFFFFFFFLL | 0x7DF00000000;
      goto LABEL_611;
    }

    if (tuple > 0x7EE000002E5)
    {
      if (tuple > 0x7F700000007)
      {
        if (tuple <= 0x7FE00000007)
        {
          if (tuple == 0x7F700000008)
          {
            v13 = &unk_1F2055CD0;
            goto LABEL_1016;
          }

          v39 = 0x7F800000008;
          goto LABEL_841;
        }

        if (tuple == 0x7FE00000008)
        {
          goto LABEL_725;
        }

        v35 = 0x7FE000000FELL;
        goto LABEL_724;
      }

      if (tuple <= 0x7EF0000000ALL)
      {
        if (tuple == 0x7EE000002E6)
        {
          v13 = &unk_1F2055AA8;
          goto LABEL_1016;
        }

        v23 = 0x7EE000004B3;
        goto LABEL_789;
      }

      if (tuple != 0x7EF0000000BLL)
      {
        v39 = 0x7F500000008;
        goto LABEL_841;
      }

      v51 = @"DOWNLOAD_OFFLINE_MAP";
      goto LABEL_957;
    }

    if (tuple > 0x7E0000000C8)
    {
      if (tuple > 0x7EE0000000CLL)
      {
        if (tuple == 0x7EE0000000DLL)
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
          if (tuple != 0x7EE0000006DLL)
          {
            goto LABEL_1017;
          }

          [v11 addObject:&unk_1F20557A8];
          v13 = &unk_1F20557A8;
        }
      }

      else if (tuple != 0x7E0000000C9)
      {
        if (tuple != 0x7E90000000DLL)
        {
          goto LABEL_1017;
        }

        v13 = &unk_1F2055C70;
      }

      goto LABEL_1016;
    }

    if (tuple > 0x7DF00000324)
    {
      if (tuple != 0x7DF00000325)
      {
        v54 = 1207;
        goto LABEL_610;
      }
    }

    else if (tuple != 0x7DF00000322 && tuple != 0x7DF00000323)
    {
      goto LABEL_1017;
    }

    v13 = &unk_1F20558F8;
    goto LABEL_1016;
  }

  if (tuple > 0x1730000012DLL)
  {
    if (tuple <= 0x1EFFFFFFFFFLL)
    {
      if (tuple <= 0x196000004B7)
      {
        if (tuple > 0x17D000000C8)
        {
          if (tuple > 0x18A000000C8)
          {
            if (tuple > 0x194000001F5)
            {
              if (tuple != 0x194000001F6 && tuple != 0x195000000C9)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055610;
              goto LABEL_1016;
            }

            if (tuple == 0x18A000000C9)
            {
              goto LABEL_625;
            }

            v38 = 0x18A000000CBLL;
            goto LABEL_624;
          }

          if (tuple > 0x17D000002BDLL)
          {
            if (tuple == 0x17D000002BELL)
            {
              goto LABEL_625;
            }

            v38 = 0x17E00000051;
LABEL_624:
            if (tuple != v38)
            {
              goto LABEL_1017;
            }

            goto LABEL_625;
          }

          if (tuple == 0x17D000000C9)
          {
            goto LABEL_625;
          }

          v31 = 203;
        }

        else if (tuple > 0x17D0000002DLL)
        {
          if (tuple > 0x17D00000055)
          {
            if (tuple == 0x17D00000056)
            {
              goto LABEL_625;
            }

            v31 = 90;
          }

          else
          {
            if (tuple == 0x17D0000002ELL)
            {
              goto LABEL_625;
            }

            v31 = 84;
          }
        }

        else
        {
          if (tuple <= 0x17300000130)
          {
            if (tuple != 0x1730000012ELL)
            {
              v14 = 303;
LABEL_563:
              v38 = v14 & 0xFFFF0000FFFFFFFFLL | 0x17300000000;
              goto LABEL_624;
            }

            goto LABEL_625;
          }

          if (tuple == 0x17300000131)
          {
            goto LABEL_625;
          }

          v31 = 30;
        }

        v38 = v31 & 0xFFFF0000FFFFFFFFLL | 0x17D00000000;
        goto LABEL_624;
      }

      if (tuple <= 0x1A8000004B7)
      {
        if (tuple > 0x1A200000064)
        {
          if (tuple > 0x1A3000004B6)
          {
            if (tuple == 0x1A3000004B7)
            {
              goto LABEL_790;
            }

            v23 = 0x1A400000063;
            goto LABEL_789;
          }

          if (tuple == 0x1A200000065 || tuple == 0x1A200000066)
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

        if (tuple <= 0x19F0000006CLL)
        {
          if (tuple == 0x196000004B8)
          {
            goto LABEL_704;
          }

          v22 = 0x19C000004B9;
          goto LABEL_551;
        }

        if (tuple == 0x19F0000006DLL)
        {
          goto LABEL_790;
        }

        v53 = 0x1A00000006DLL;
LABEL_611:
        if (tuple != v53)
        {
          goto LABEL_1017;
        }

        goto LABEL_790;
      }

      if (tuple <= 0x1DE00000092)
      {
        if (tuple <= 0x1D500000083)
        {
          if (tuple != 0x1A8000004B8)
          {
            if (tuple != 0x1CF00000083)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055748;
            goto LABEL_1016;
          }

          goto LABEL_704;
        }

        if (tuple == 0x1D500000084)
        {
          v13 = &unk_1F2055010;
          goto LABEL_1016;
        }

        v55 = 0x1D600000088;
        goto LABEL_902;
      }

      if (tuple > 0x1ECFFFFFFFFLL)
      {
        if (tuple == 0x1ED00000000)
        {
          v13 = &unk_1F2055CE8;
        }

        else
        {
          if (tuple != 0x1EF00000000)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055418;
        }

        goto LABEL_1016;
      }

      if (tuple != 0x1DE00000093)
      {
        if (tuple != 0x1EC00000000)
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

    if (tuple <= 0x3E9000001F7)
    {
      if (tuple <= 0x20300000092)
      {
        if (tuple > 0x1F400000091)
        {
          if (tuple <= 0x1F600000091)
          {
            if (tuple != 0x1F400000092 && tuple != 0x1F500000092)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055B50;
            goto LABEL_1016;
          }

          if (tuple != 0x1F600000092)
          {
            if (tuple != 0x1FB00000093)
            {
              goto LABEL_1017;
            }

            goto LABEL_630;
          }
        }

        else
        {
          if (tuple <= 0x1F1FFFFFFFFLL)
          {
            if (tuple == 0x1F000000000)
            {
              v13 = &unk_1F2055400;
            }

            else
            {
              if (tuple != 0x1F100000000)
              {
                goto LABEL_1017;
              }

              v13 = &unk_1F2055448;
            }

            goto LABEL_1016;
          }

          if (tuple == 0x1F200000000)
          {
            v13 = &unk_1F2055430;
            goto LABEL_1016;
          }

          if (tuple != 0x1F300000092)
          {
            goto LABEL_1017;
          }
        }

        v13 = &unk_1F2055148;
        goto LABEL_1016;
      }

      if (tuple <= 0x3E8FFFFFFFFLL)
      {
        if (tuple > 0x20E0000012CLL)
        {
          if (tuple == 0x20E0000012DLL)
          {
            v13 = &unk_1F20552F8;
          }

          else
          {
            if (tuple != 0x20F0000012DLL)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055310;
          }
        }

        else if (tuple == 0x20300000093)
        {
          v13 = &unk_1F2055D18;
        }

        else
        {
          if (tuple != 0x20300000099)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F2055D30;
        }

        goto LABEL_1016;
      }

      if (tuple <= 0x3E9000001F5 && tuple != 0x3E900000000 && tuple != 0x3E9000001F5)
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

    if (tuple <= 0x3EA000001F8)
    {
      if (tuple <= 0x3EA000001F4)
      {
        if (tuple > 0x3E9000004B7)
        {
          if (tuple == 0x3E9000004B8)
          {
            goto LABEL_704;
          }

          if (tuple != 0x3EA00000000)
          {
            goto LABEL_1017;
          }
        }

        else if (tuple != 0x3E9000001F8 && tuple != 0x3E9000001F9)
        {
          goto LABEL_1017;
        }
      }

      goto LABEL_859;
    }

    if (tuple > 0x3EB000001F6)
    {
      if (tuple > 0x3EB000001F9)
      {
        if (tuple != 0x3EC00000000)
        {
          goto LABEL_1017;
        }

        goto LABEL_859;
      }
    }

    else if (tuple <= 0x3EB000001F4)
    {
      if (tuple == 0x3EA000001F9)
      {
        goto LABEL_859;
      }

      if (tuple != 0x3EB00000000)
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

  if (tuple > 0x67FFFFFFFFLL)
  {
    if (tuple <= 0xF50000006CLL)
    {
      if (tuple <= 0x7A00000191)
      {
        if (tuple > 0x7800000191)
        {
          if (tuple > 0x7900000191)
          {
            if (tuple != 0x7900000192)
            {
              v17 = 0x7A0000012ELL;
LABEL_855:
              if (tuple != v17)
              {
                goto LABEL_1017;
              }

              goto LABEL_856;
            }
          }

          else
          {
            if (tuple == 0x7800000192)
            {
              goto LABEL_856;
            }

            if (tuple != 0x790000012ELL)
            {
              goto LABEL_1017;
            }
          }

          v13 = &unk_1F2055058;
          goto LABEL_1016;
        }

        if (tuple <= 0x7700000191)
        {
          if (tuple == 0x6800000000)
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

        if (tuple != 0x7700000192)
        {
          v17 = 0x780000012ELL;
          goto LABEL_855;
        }

LABEL_856:
        [v11 addObject:&unk_1F2055028];
        goto LABEL_857;
      }

      if (tuple > 0x9D00000014)
      {
        if (tuple > 0xD60000006CLL)
        {
          if (tuple != 0xD60000006DLL)
          {
            if (tuple != 0xF30000001FLL || ([valueCopy isEqualToString:@"AUTOMOBILE"] & 1) == 0)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055520;
            goto LABEL_1016;
          }

          goto LABEL_790;
        }

        if (tuple == 0x9D00000015)
        {
LABEL_850:
          v13 = &unk_1F2055490;
          goto LABEL_1016;
        }

        v48 = 0xC800000015;
      }

      else
      {
        if (tuple <= 0x7B00000191)
        {
          if (tuple == 0x7A00000192)
          {
            goto LABEL_856;
          }

          if (tuple != 0x7B0000012ELL)
          {
            goto LABEL_1017;
          }

LABEL_909:
          v13 = &unk_1F2055070;
          goto LABEL_1016;
        }

        if (tuple == 0x7B00000192)
        {
          goto LABEL_909;
        }

        v48 = 0x9B00000015;
      }

      if (tuple != v48)
      {
        goto LABEL_1017;
      }

      goto LABEL_850;
    }

    if (tuple > 0x13E000000CBLL)
    {
      if (tuple > 0x171FFFFFFFFLL)
      {
        if (tuple <= 0x173000000C8)
        {
          if (tuple == 0x17200000000)
          {
            v13 = &unk_1F20550D0;
            goto LABEL_1016;
          }

          v14 = 8;
          goto LABEL_563;
        }

        if (tuple != 0x173000000C9)
        {
          v14 = 301;
          goto LABEL_563;
        }

LABEL_625:
        v13 = &unk_1F2055B68;
        goto LABEL_1016;
      }

      if (tuple == 0x13E000000CCLL)
      {
        goto LABEL_1016;
      }

      if (tuple == 0x15100000322)
      {
        [v11 addObject:&unk_1F2054FE0];
        v78 = +[GEOAPSharedStateData sharedData];
        hasCarPlayInfo = [v78 hasCarPlayInfo];

        if ((hasCarPlayInfo & 1) == 0)
        {
          goto LABEL_1017;
        }

        v13 = &unk_1F2054FF8;
        goto LABEL_1016;
      }

      v22 = 0x16D000004B9;
LABEL_551:
      if (tuple != v22)
      {
        goto LABEL_1017;
      }

      goto LABEL_782;
    }

    if (tuple > 0x11A000000C8)
    {
      if (tuple <= 0x13E00000037)
      {
        if (tuple == 0x11A000000C9 || tuple == 0x11C000000C9)
        {
          goto LABEL_1016;
        }

        v28 = 0x12300000001;
        goto LABEL_765;
      }

      if (tuple - 0x13E00000038 < 2)
      {
        goto LABEL_1016;
      }

      goto LABEL_1017;
    }

    if (tuple - 0x11900000038 < 2)
    {
      goto LABEL_1016;
    }

    if (tuple == 0xF50000006DLL)
    {
      goto LABEL_790;
    }

    if (tuple != 0xFA000001F8)
    {
      goto LABEL_1017;
    }

    v51 = @"OFFLINE";
LABEL_957:
    if (([valueCopy isEqualToString:v51] & 1) == 0)
    {
      goto LABEL_1017;
    }

    v13 = &unk_1F2055B68;
    goto LABEL_1016;
  }

  if (tuple > 0x1500000102)
  {
    if (tuple <= 0x32000000C8)
    {
      if (tuple <= 0x1500000130)
      {
        if (tuple > 0x150000012DLL)
        {
          if (tuple == 0x150000012ELL)
          {
            v13 = &unk_1F2055718;
          }

          else
          {
            if (tuple != 0x150000012FLL)
            {
              goto LABEL_1017;
            }

            v13 = &unk_1F2055700;
          }
        }

        else if (tuple == 0x1500000103)
        {
          v13 = &unk_1F2055598;
        }

        else
        {
          if (tuple != 0x150000012DLL)
          {
            goto LABEL_1017;
          }

          v13 = &unk_1F20556E8;
        }

        goto LABEL_1016;
      }

      if (tuple > 0x2D000006ABLL)
      {
        if (tuple == 0x2D000006ACLL)
        {
          v13 = &unk_1F2055118;
          goto LABEL_1016;
        }

        v16 = 0x320000001ELL;
        goto LABEL_876;
      }

      if (tuple == 0x1500000131)
      {
        v13 = &unk_1F20556D0;
        goto LABEL_1016;
      }

      if (tuple != 0x15000003EFLL)
      {
        goto LABEL_1017;
      }

      goto LABEL_591;
    }

    if (tuple > 0x59FFFFFFFFLL)
    {
      if (tuple > 0x5BFFFFFFFFLL)
      {
        if (tuple == 0x5C00000000)
        {
          goto LABEL_734;
        }

        v30 = 0x5D00000000;
      }

      else
      {
        if (tuple == 0x5A00000000)
        {
          goto LABEL_734;
        }

        v30 = 0x5B00000000;
      }

LABEL_733:
      if (tuple != v30)
      {
        goto LABEL_1017;
      }

      goto LABEL_734;
    }

    if (tuple <= 0x5400000007)
    {
      if (tuple == 0x32000000C9)
      {
        goto LABEL_1016;
      }

      v30 = 0x5300000000;
      goto LABEL_733;
    }

    if (tuple == 0x5400000008)
    {
      goto LABEL_725;
    }

    v35 = 0x54000000FELL;
    goto LABEL_724;
  }

  if (tuple <= 0x1500000083)
  {
    if (tuple > 0x150000001BLL)
    {
      if (tuple > 0x1500000081)
      {
        if (tuple == 0x1500000082)
        {
          v13 = &unk_1F20556B8;
        }

        else
        {
          v13 = &unk_1F20555B0;
        }
      }

      else if (tuple == 0x150000001CLL)
      {
        v13 = &unk_1F2055580;
      }

      else
      {
        if (tuple != 0x150000001DLL)
        {
          goto LABEL_1017;
        }

        v13 = &unk_1F2055538;
      }

      goto LABEL_1016;
    }

    if (tuple == 0x110000026ELL)
    {
      v13 = &unk_1F2055A60;
      goto LABEL_1016;
    }

    if (tuple != 0x1300000000)
    {
      if (tuple != 0x1500000013)
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
    is3rdPartyPunchIn = [v62 is3rdPartyPunchIn];

    if (is3rdPartyPunchIn)
    {
      [v12 addObject:&unk_1F20551C0];
    }

    v64 = +[GEOAPSharedStateData sharedData];
    isFindMyPunchIn = [v64 isFindMyPunchIn];

    if (isFindMyPunchIn)
    {
      [v12 addObject:&unk_1F20551D8];
    }

    v66 = +[GEOAPSharedStateData sharedData];
    isOther2ndPartyPunchIn = [v66 isOther2ndPartyPunchIn];

    if (isOther2ndPartyPunchIn)
    {
      [v12 addObject:&unk_1F20551F0];
    }

    v68 = +[GEOAPSharedStateData sharedData];
    isSafariPunchIn = [v68 isSafariPunchIn];

    if (isSafariPunchIn)
    {
      [v12 addObject:&unk_1F2055208];
    }

    v70 = +[GEOAPSharedStateData sharedData];
    isSiriPunchIn = [v70 isSiriPunchIn];

    if (isSiriPunchIn)
    {
      [v12 addObject:&unk_1F2055220];
    }

    v72 = +[GEOAPSharedStateData sharedData];
    isSMSPunchIn = [v72 isSMSPunchIn];

    if (isSMSPunchIn)
    {
      [v12 addObject:&unk_1F2055238];
    }

    v74 = +[GEOAPSharedStateData sharedData];
    isSpotlightPunchIn = [v74 isSpotlightPunchIn];

    if (isSpotlightPunchIn)
    {
      [v12 addObject:&unk_1F2055250];
    }

    v76 = +[GEOAPSharedStateData sharedData];
    isMapsWidgetPunchIn = [v76 isMapsWidgetPunchIn];

    if (isMapsWidgetPunchIn)
    {
LABEL_931:
      v13 = &unk_1F2055268;
      goto LABEL_1016;
    }

    goto LABEL_1017;
  }

  if (tuple <= 0x1500000092)
  {
    if (tuple > 0x1500000088)
    {
      if (tuple == 0x1500000089)
      {
        goto LABEL_573;
      }

      v29 = 140;
    }

    else
    {
      if (tuple == 0x1500000084)
      {
        v13 = &unk_1F20556A0;
        goto LABEL_1016;
      }

      v29 = 135;
    }

LABEL_572:
    if (tuple != (v29 & 0xFFFF0000FFFFFFFFLL | 0x1500000000))
    {
      goto LABEL_1017;
    }

    goto LABEL_573;
  }

  if (tuple <= 0x15000000C8)
  {
    if (tuple == 0x1500000093)
    {
      [v11 addObject:&unk_1F20555C8];
      v13 = &unk_1F20555E0;
    }

    else
    {
      if (tuple != 0x150000009BLL)
      {
        goto LABEL_1017;
      }

      v13 = &unk_1F2055688;
    }

    goto LABEL_1016;
  }

  if (tuple != 0x15000000C9)
  {
    v29 = 254;
    goto LABEL_572;
  }

  [v11 addObject:&unk_1F20555F8];
  v80 = +[GEOAPSharedStateData sharedData];
  placeCardIsPersonLocationShared = [v80 placeCardIsPersonLocationShared];

  if (placeCardIsPersonLocationShared)
  {
    [v12 addObject:&unk_1F2055610];
  }

  if ([v10 hasShowcase])
  {
    [v12 addObject:&unk_1F2055628];
  }

  v82 = group - 1;
  if ((group - 1) < 3)
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

+ (id)addStaticDailyCountsWithActionTargetTuple:(unint64_t)tuple actionTargetValue:(id)value appGroup:(int)group
{
  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
  v7 = v6;
  switch(tuple)
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

+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)precipitation chanceOfRain:(id)rain chanceOfSnow:(id)snow endTime:(id)time durationUntilEventEnd:(id)end durationUntilEventStart:(id)start startTime:(id)startTime temperature:(id)self0 timeOfDay:(id)self1 timeSinceBackgrounded:(id)self2 actualTransportMode:(int)self3 dayOfWeek:(id)self4 distanceFromHereToHome:(int)self5 distanceFromHereToOrigin:(int)self6 distanceFromHereToParkedCar:(int)self7 distanceFromHereToWork:(int)self8 distanceFromHere:(int)self9 distanceFromOriginToDestination:(int)destination entryType:(int)type weatherType:(int)weatherType mapType:(int)mapType predictedTransportMode:(int)transportMode preferredTransportMode:(int)preferredTransportMode isTourist:(id)tourist isCarplayConnected:(id)connected isTransitPossible:(id)possible userLocation:(id)location isVehicleBluetoothConnected:(id)precipitation0 weatherAqi:(id)precipitation1 modelName:(int)precipitation2 modelVersion:(id)precipitation3 modelTrainedDate:(id)precipitation4
{
  LODWORD(v36) = name;
  LODWORD(v35) = preferredTransportMode;
  LODWORD(v34) = mode;
  [self capturePredExTrainingWithChanceOfPrecipitation:precipitation chanceOfRain:rain chanceOfSnow:snow endTime:time durationUntilEventEnd:end durationUntilEventStart:start startTime:startTime temperature:temperature timeOfDay:day timeSinceBackgrounded:backgrounded actualTransportMode:v34 dayOfWeek:week distanceFromHereToHome:__PAIR64__(origin distanceFromHereToOrigin:home) distanceFromHereToParkedCar:__PAIR64__(work distanceFromHereToWork:car) distanceFromHere:__PAIR64__(destination distanceFromOriginToDestination:here) entryType:__PAIR64__(weatherType weatherType:type) mapType:__PAIR64__(transportMode predictedTransportMode:mapType) preferredTransportMode:v35 isInBasemode:0 isTourist:tourist isCarplayConnected:connected isTransitPossible:possible routePlanningScreenPresented:0 userLocation:location isVehicleBluetoothConnected:bluetoothConnected weatherAqi:aqi modelName:v36 modelVersion:version modelTrainedDate:date];
}

+ (void)capturePredExTrainingWithChanceOfPrecipitation:(id)precipitation chanceOfRain:(id)rain chanceOfSnow:(id)snow endTime:(id)time durationUntilEventEnd:(id)end durationUntilEventStart:(id)start startTime:(id)startTime temperature:(id)self0 timeOfDay:(id)self1 timeSinceBackgrounded:(id)self2 actualTransportMode:(int)self3 dayOfWeek:(id)self4 distanceFromHereToHome:(int)self5 distanceFromHereToOrigin:(int)self6 distanceFromHereToParkedCar:(int)self7 distanceFromHereToWork:(int)self8 distanceFromHere:(int)self9 distanceFromOriginToDestination:(int)destination entryType:(int)type weatherType:(int)weatherType mapType:(int)mapType predictedTransportMode:(int)transportMode preferredTransportMode:(int)preferredTransportMode isInBasemode:(id)basemode isTourist:(id)tourist isCarplayConnected:(id)connected isTransitPossible:(id)possible routePlanningScreenPresented:(id)precipitation0 userLocation:(id)precipitation1 isVehicleBluetoothConnected:(id)precipitation2 weatherAqi:(id)precipitation3 modelName:(int)precipitation4 modelVersion:(id)precipitation5 modelTrainedDate:(id)precipitation6
{
  precipitationCopy = precipitation;
  rainCopy = rain;
  snowCopy = snow;
  timeCopy = time;
  endCopy = end;
  startCopy = start;
  startTimeCopy = startTime;
  temperatureCopy = temperature;
  dayCopy = day;
  backgroundedCopy = backgrounded;
  weekCopy = week;
  basemodeCopy = basemode;
  touristCopy = tourist;
  connectedCopy = connected;
  possibleCopy = possible;
  presentedCopy = presented;
  locationCopy = location;
  bluetoothConnectedCopy = bluetoothConnected;
  aqiCopy = aqi;
  versionCopy = version;
  dateCopy = date;
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
  [locationCopy lat];
  v49 = v48;
  [locationCopy lng];
  v51 = [v46 coordinatesToGeoHashWithLength:4 latitude:v49 longitude:v50];
  if (!GEOConfigGetBOOL())
  {
    weatherType = 0;
  }

  LODWORD(v55) = name;
  LODWORD(v54) = preferredTransportMode;
  LODWORD(v53) = mode;
  [GEOAPPortal capturePredExTrainingWithChanceOfPrecipitation:precipitationCopy chanceOfRain:rainCopy chanceOfSnow:snowCopy endTime:timeCopy durationUntilEventEnd:endCopy durationUntilEventStart:startCopy startTime:startTimeCopy temperature:temperatureCopy timeOfDay:dayCopy timeSinceBackgrounded:backgroundedCopy actualTransportMode:v53 dayOfWeek:weekCopy distanceFromHereToHome:__PAIR64__(origin distanceFromHereToOrigin:home) distanceFromHereToParkedCar:__PAIR64__(work distanceFromHereToWork:car) distanceFromHere:__PAIR64__(destination distanceFromOriginToDestination:here) entryType:__PAIR64__(weatherType weatherType:type) mapType:__PAIR64__(transportMode predictedTransportMode:mapType) preferredTransportMode:v54 isInBasemode:basemodeCopy isCarplayConnected:connectedCopy isTourist:touristCopy isTransitPossible:possibleCopy routePlanningScreenPresented:presentedCopy userLocationGeohash4:v51 isVehicleBluetoothConnected:bluetoothConnectedCopy weatherAqi:aqiCopy modelName:v55 modelVersion:versionCopy modelTrainedDate:dateCopy];
}

+ (void)captureGridDuration:(double)duration previousState:(int)state endState:(int)endState displayType:(int)type errors:(id)errors
{
  v40 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  endStateCopy = endState;
  if (endState == 2)
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = errorsCopy;
    array = 0;
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
          v20 = [dictionary objectForKeyedSubscript:v19];

          if (!v20)
          {
            v20 = objc_alloc_init(MEMORY[0x1E69A1EE8]);
            [v20 setType:v18];
            if (!array)
            {
              array = [MEMORY[0x1E695DF70] array];
            }

            [array addObject:v20];
            v21 = [MEMORY[0x1E696AD98] numberWithInt:v18];
            [dictionary setObject:v20 forKeyedSubscript:v21];
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
    array = 0;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithDouble:duration * 1000.0];
  [GEOAPPortal captureGridDurationWithDurationMs:v22 previousState:state endState:endStateCopy endStateErrorReasons:array displayType:type];

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

+ (void)captureFindMyUserActionType:(id)type ownerContext:(id)context productType:(id)productType
{
  productTypeCopy = productType;
  contextCopy = context;
  v8 = [&unk_1F2056700 objectForKeyedSubscript:type];
  v9 = v8;
  if (v8)
  {
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v11 = [&unk_1F2056728 objectForKeyedSubscript:productTypeCopy];

  if (v11)
  {
    integerValue2 = [v11 integerValue];
  }

  else
  {
    integerValue2 = 0;
  }

  [GEOAPPortal captureFindMyUsageWithUserActionEventAction:integerValue userActionEventTarget:integerValue2 userActionEventValue:contextCopy additionalStates:0 providedDropRate:0 completionQueue:0 completionBlock:0];
}

@end