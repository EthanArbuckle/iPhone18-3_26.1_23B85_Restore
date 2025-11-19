__CFString *BMMomentsEventDataAgeRangeTypeAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89060[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataBiologicalSexTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89098[a1];
  }

  return v2;
}

__CFString *BMMomentsEventDataOnboardingFlowCompletionAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89780[a1];
  }

  return v2;
}

uint64_t BMMomentsEventDataEventBundleResourceTypeDecode(uint64_t result)
{
  if (result >= 0x11)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataEventBundleResourcePhotoAssetMediaTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataEventBundleBundleSuperTypeDecode(uint64_t result)
{
  if (result >= 0xC)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataEventBundleSummarizationGranularityDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataEventProviderTypeDecode(uint64_t result)
{
  if (result >= 0xC)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataEventCategoryTypeDecode(uint64_t result)
{
  if (result >= 0x19)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataSuggestedEventCategoryTypeDecode(uint64_t result)
{
  if (result >= 0xD)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataGeoPOICategoryTypeDecode(uint64_t result)
{
  if (result >= 0x4E)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataPlaceDiscoveryTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataLocationModeTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataPhotoMomentSourceTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataTripModeTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataSourceAppTypeDecode(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_185543AE4[a1];
  }
}

uint64_t BMMomentsEventDataPhotoMomentInferenceTypeDecode(uint64_t result)
{
  if (result >= 0x20)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataBundleInterfaceTypeDecode(uint64_t result)
{
  if (result >= 0x10)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataActionTypeDecode(uint64_t result)
{
  if (result >= 0xD)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataGenreTypeDecode(uint64_t result)
{
  if (result >= 0x1D)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataMediaTypeDecode(uint64_t result)
{
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataAgeRangeTypeDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataBiologicalSexTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataBundleEngagementTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataSuggestionTypeDecode(uint64_t result)
{
  if (result >= 0x1A)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataAppEntryEventTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataClientActivityEventTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataPhotoSourceTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataPhotoLibraryTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataPRTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataMapItemSourceTypeDecode(uint64_t result)
{
  if (result >= 0x12)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataVisitPlaceTypesDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataPlaceInferenceGranularityTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataRankingTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataLabelConfidenceScoreTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataTimeCorrelationScoreTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataDistanceFromHomeTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataCallDurationTypesDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataInteractionCountTypesDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataBundleInteractionTypesDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataCallPlaceTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataAvailabilityTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataAnomalousTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataStateOfMindLabelDecode(uint64_t result)
{
  if (result >= 0x27)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataStateOfMindDomainDecode(uint64_t result)
{
  if (result >= 0x13)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataStateOfMindValenceClassificationDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataStateOfMindReflectiveIntervalDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataPersonRelationshipTagDecode(uint64_t result)
{
  if (result >= 0x1E)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMomentsEventDataOnboardingFlowCompletionDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMPhotosNotificationTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosNotificationTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_991);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMPhotosNotificationTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosNotificationTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E897D8[a1];
  }

  return v2;
}

uint64_t BMPhotosNotificationTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMUserFocusModeComputedUpdateReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMUserFocusModeComputedUpdateReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1215);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMUserFocusModeComputedUpdateReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMUserFocusModeComputedSemanticTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMUserFocusModeComputedSemanticTypeFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_48_1180);
  if (result)
  {
    return *(&BMUserFocusModeComputedSemanticTypeFromString_sortedEnums + (((result - BMUserFocusModeComputedSemanticTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMUserFocusModeComputedUpdateSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMUserFocusModeComputedUpdateSourceFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_59);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMUserFocusModeComputedUpdateSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMUserFocusModeComputedUpdateReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E898B0[a1];
  }

  return v2;
}

__CFString *BMUserFocusModeComputedSemanticTypeAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E898D0[a1];
  }

  return v2;
}

__CFString *BMUserFocusModeComputedUpdateSourceAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89930[a1];
  }

  return v2;
}

uint64_t BMUserFocusModeComputedUpdateReasonDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMUserFocusModeComputedSemanticTypeDecode(uint64_t result)
{
  if (result >= 0xC)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMUserFocusModeComputedUpdateSourceDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSafariPageLoadPlatformFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariPageLoadPlatformFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_1795);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMSafariPageLoadPlatformFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariPageLoadDeviceClassFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariPageLoadDeviceClassFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_21);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMSafariPageLoadDeviceClassFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariPageLoadEntryPointFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariPageLoadEntryPointFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_29);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMSafariPageLoadEntryPointFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariPageLoadPlatformAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89A50[a1];
  }

  return v2;
}

__CFString *BMSafariPageLoadDeviceClassAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89A70[a1];
  }

  return v2;
}

__CFString *BMSafariPageLoadEntryPointAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89A88[a1];
  }

  return v2;
}

uint64_t BMSafariPageLoadPlatformDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariPageLoadDeviceClassDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSafariPageLoadEntryPointDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMContextSyncLOIUserSpecificPlaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMContextSyncLOIUserSpecificPlaceTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_2249);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMContextSyncLOIUserSpecificPlaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMContextSyncLOIPlaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMContextSyncLOIPlaceTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_27);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMContextSyncLOIPlaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMContextSyncLOIUserSpecificPlaceTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89BB8[a1];
  }

  return v2;
}

__CFString *BMContextSyncLOIPlaceTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89BE0[a1];
  }

  return v2;
}

uint64_t BMContextSyncLOIUserSpecificPlaceTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMContextSyncLOIPlaceTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMDeviceAccessoryChargingSessionSideFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceAccessoryChargingSessionSideFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_3343);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMDeviceAccessoryChargingSessionSideFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceAccessoryChargingSessionSideAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89E40[a1];
  }

  return v2;
}

uint64_t BMDeviceAccessoryChargingSessionSideDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMAeroMLPhotosSearchSessionPhotosLibrarySizeBucketFromString(const void *a1)
{
  result = bsearch_b(a1, BMAeroMLPhotosSearchSessionPhotosLibrarySizeBucketFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_3805);
  if (result)
  {
    return *(&BMAeroMLPhotosSearchSessionPhotosLibrarySizeBucketFromString_sortedEnums + (((result - BMAeroMLPhotosSearchSessionPhotosLibrarySizeBucketFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAeroMLPhotosSearchSessionPhotosLibrarySizeBucketAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89F08[a1];
  }

  return v2;
}

uint64_t BMAeroMLPhotosSearchSessionPhotosLibrarySizeBucketDecode(uint64_t result)
{
  if (result >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMContextSyncCellularAvailabilityStatusDeviceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMContextSyncCellularAvailabilityStatusDeviceTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_24);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMContextSyncCellularAvailabilityStatusDeviceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMContextSyncCellularAvailabilityStatusStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMContextSyncCellularAvailabilityStatusStateFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_4158);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMContextSyncCellularAvailabilityStatusStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMContextSyncCellularAvailabilityStatusDeviceTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8A000[a1];
  }

  return v2;
}

__CFString *BMContextSyncCellularAvailabilityStatusStateAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E89FD8[a1];
  }

  return v2;
}

uint64_t BMContextSyncCellularAvailabilityStatusStateDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMContextSyncCellularAvailabilityStatusDeviceTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSensitiveContentAnalysisUIInteractionAgeGroupFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisUIInteractionAgeGroupFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_24_4643);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMSensitiveContentAnalysisUIInteractionAgeGroupFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSensitiveContentAnalysisUIInteractionEventDirectionFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisUIInteractionEventDirectionFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_38);
  if (result)
  {
    return *(&BMMessagesSearchEventBuildTypeFromString_sortedEnums + (((result - BMSensitiveContentAnalysisUIInteractionEventDirectionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSensitiveContentAnalysisUIInteractionActionFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisUIInteractionActionFromString_sortedStrings, 0x17uLL, 8uLL, &__block_literal_global_114);
  if (result)
  {
    return *(&BMSensitiveContentAnalysisUIInteractionActionFromString_sortedEnums + (((result - BMSensitiveContentAnalysisUIInteractionActionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSensitiveContentAnalysisUIInteractionSubContentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisUIInteractionSubContentTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_145);
  if (result)
  {
    return *(&BMPhotosLiveTypeFromString_sortedEnums + (((result - BMSensitiveContentAnalysisUIInteractionSubContentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSensitiveContentAnalysisUIInteractionStepFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisUIInteractionStepFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_185);
  if (result)
  {
    return *(&BMSensitiveContentAnalysisUIInteractionStepFromString_sortedEnums + (((result - BMSensitiveContentAnalysisUIInteractionStepFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSensitiveContentAnalysisUIInteractionStepAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8A498[a1];
  }

  return v2;
}

__CFString *BMSensitiveContentAnalysisUIInteractionAgeGroupAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8A2E8[a1];
  }

  return v2;
}

__CFString *BMSensitiveContentAnalysisUIInteractionEventDirectionAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8A308[a1];
  }

  return v2;
}

__CFString *BMSensitiveContentAnalysisUIInteractionActionAsString(uint64_t a1)
{
  if (a1 >= 0x18)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8A348[a1];
  }

  return v2;
}

__CFString *BMSensitiveContentAnalysisUIInteractionSubContentTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8A450[a1];
  }

  return v2;
}

__CFString *BMSensitiveContentAnalysisUIInteractionInteractionTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8A2C8[a1];
  }

  return v2;
}

_BYTE *BMSensitiveContentAnalysisUIInteractionInteractionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisUIInteractionInteractionTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_4791);
  if (result)
  {
    return *(&BMGeneratedImageFailureReasonFeatureFromString_sortedEnums + (((result - BMSensitiveContentAnalysisUIInteractionInteractionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMSensitiveContentAnalysisUIInteractionInteractionTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSensitiveContentAnalysisUIInteractionAgeGroupDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSensitiveContentAnalysisUIInteractionEventDirectionDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *BMSensitiveContentAnalysisUIInteractionScreenAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8A330[a1];
  }

  return v2;
}

_BYTE *BMSensitiveContentAnalysisUIInteractionScreenFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisUIInteractionScreenFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_46);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMSensitiveContentAnalysisUIInteractionScreenFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMSensitiveContentAnalysisUIInteractionScreenDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSensitiveContentAnalysisUIInteractionActionDecode(uint64_t result)
{
  if (result >= 0x18)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *BMSensitiveContentAnalysisUIInteractionContentTypeAsString(uint64_t a1)
{
  if (a1 < 9 && ((0x11Fu >> a1) & 1) != 0)
  {
    v2 = off_1E6E8A408[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  return v2;
}

_BYTE *BMSensitiveContentAnalysisUIInteractionContentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisUIInteractionContentTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_131);
  if (result)
  {
    return *(&BMSensitiveContentAnalysisMediaAnalysisContentTypeFromString_sortedEnums + (((result - BMSensitiveContentAnalysisUIInteractionContentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMSensitiveContentAnalysisUIInteractionContentTypeDecode(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return dword_185544C04[a1];
  }
}

uint64_t BMSensitiveContentAnalysisUIInteractionSubContentTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *BMSensitiveContentAnalysisUIInteractionHarmsAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8A478[a1];
  }

  return v2;
}

_BYTE *BMSensitiveContentAnalysisUIInteractionHarmsFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisUIInteractionHarmsFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_156);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMSensitiveContentAnalysisUIInteractionHarmsFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMSensitiveContentAnalysisUIInteractionHarmsDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSensitiveContentAnalysisUIInteractionStepDecode(uint64_t result)
{
  if (result >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *BMSensitiveContentAnalysisUIInteractionOptionsAsString(uint64_t a1)
{
  if (a1 > 31)
  {
    if (a1 > 255)
    {
      switch(a1)
      {
        case 0x100:
          v2 = @"ReportToApple";

          return v2;
        case 0x200:
          v2 = @"Unsubscribe";

          return v2;
        case 0x400:
          v2 = @"ReportToAuthorities";

          return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x20:
          v2 = @"DeleteItem";

          return v2;
        case 0x40:
          v2 = @"HideContent";

          return v2;
        case 0x80:
          v2 = @"ShowContent";

          return v2;
      }
    }

LABEL_52:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];

    return v2;
  }

  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v2 = @"BlockContact";

        return v2;
      case 8:
        v2 = @"BlockContacts";

        return v2;
      case 0x10:
        v2 = @"LeaveConversation";

        return v2;
    }

    goto LABEL_52;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v2 = @"WaysToGetHelp";

        return v2;
      }

      goto LABEL_52;
    }

    v2 = @"MessageSomeone";
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

_BYTE *BMSensitiveContentAnalysisUIInteractionOptionsFromString(const void *a1)
{
  result = bsearch_b(a1, BMSensitiveContentAnalysisUIInteractionOptionsFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_190);
  if (result)
  {
    return *(&BMSensitiveContentAnalysisUIInteractionOptionsFromString_sortedEnums + (((result - BMSensitiveContentAnalysisUIInteractionOptionsFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMSensitiveContentAnalysisUIInteractionOptionsDecode(uint64_t result)
{
  if (result > 127)
  {
    if (result > 511)
    {
      if (result == 512 || result == 1024)
      {
        return result;
      }
    }

    else if (result == 128 || result == 256)
    {
      return result;
    }

    return 0;
  }

  if (((result - 4) > 0x3C || ((1 << (result - 4)) & 0x1000000010001011) == 0) && result >= 3)
  {
    return 0;
  }

  return result;
}

_BYTE *BMSiriExecutionTaskStepFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriExecutionTaskStepFromString_sortedStrings, 0x5EuLL, 8uLL, &__block_literal_global_4867);
  if (result)
  {
    return *(&BMSiriExecutionTaskStepFromString_sortedEnums + (((result - BMSiriExecutionTaskStepFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriExecutionTaskStepAsString(uint64_t a1)
{
  if (a1 >= 0x5F)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8A828[a1];
  }

  return v2;
}

uint64_t BMSiriExecutionTaskStepDecode(uint64_t result)
{
  if (result >= 0x5F)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMHealthWorkoutEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMHealthWorkoutEventTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_5250);
  if (result)
  {
    return *(&BMTranslationLanguageCodeSourceFromString_sortedEnums + (((result - BMHealthWorkoutEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMHealthWorkoutEventTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8AB70[a1];
  }

  return v2;
}

uint64_t BMHealthWorkoutEventTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMDeviceAdaptiveVolumeReadFrom(uint64_t a1, void *a2)
{
  v4 = objc_opt_new();
  v5 = objc_opt_new();
LABEL_2:
  while (1)
  {
    v6 = [a2 position];
    if (v6 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v492 = 0;
      v10 = [a2 position] + 1;
      if (v10 >= [a2 position] && (v11 = objc_msgSend(a2, "position") + 1, v11 <= objc_msgSend(a2, "length")))
      {
        v12 = [a2 data];
        [v12 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v9 |= (v492 & 0x7F) << v7;
      if ((v492 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      v13 = v8++ >= 9;
      if (v13)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [a2 hasError] ? 0 : v9;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 16) = 1;
        while (1)
        {
          v492 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v492 & 0x7F) << v15;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v13 = v16++ >= 9;
          if (v13)
          {
            v21 = 0;
LABEL_745:
            *(a1 + 88) = v21;
            goto LABEL_2;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

        goto LABEL_745;
      case 2u:
        v242 = 0;
        v243 = 0;
        v244 = 0;
        *(a1 + 17) = 1;
        while (1)
        {
          v492 = 0;
          v245 = [a2 position] + 1;
          if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 1, v246 <= objc_msgSend(a2, "length")))
          {
            v247 = [a2 data];
            [v247 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v244 |= (v492 & 0x7F) << v242;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v242 += 7;
          v13 = v243++ >= 9;
          if (v13)
          {
            v248 = 0;
            goto LABEL_749;
          }
        }

        if ([a2 hasError])
        {
          v248 = 0;
        }

        else
        {
          v248 = v244;
        }

LABEL_749:
        *(a1 + 92) = v248;
        continue;
      case 3u:
        v207 = 0;
        v208 = 0;
        v209 = 0;
        *(a1 + 18) = 1;
        while (1)
        {
          v492 = 0;
          v210 = [a2 position] + 1;
          if (v210 >= [a2 position] && (v211 = objc_msgSend(a2, "position") + 1, v211 <= objc_msgSend(a2, "length")))
          {
            v212 = [a2 data];
            [v212 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v209 |= (v492 & 0x7F) << v207;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v207 += 7;
          v13 = v208++ >= 9;
          if (v13)
          {
            v213 = 0;
            goto LABEL_725;
          }
        }

        if ([a2 hasError])
        {
          v213 = 0;
        }

        else
        {
          v213 = v209;
        }

LABEL_725:
        *(a1 + 96) = v213;
        continue;
      case 4u:
        v228 = 0;
        v229 = 0;
        v230 = 0;
        *(a1 + 19) = 1;
        while (1)
        {
          v492 = 0;
          v231 = [a2 position] + 1;
          if (v231 >= [a2 position] && (v232 = objc_msgSend(a2, "position") + 1, v232 <= objc_msgSend(a2, "length")))
          {
            v233 = [a2 data];
            [v233 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v230 |= (v492 & 0x7F) << v228;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v228 += 7;
          v13 = v229++ >= 9;
          if (v13)
          {
            v234 = 0;
            goto LABEL_737;
          }
        }

        if ([a2 hasError])
        {
          v234 = 0;
        }

        else
        {
          v234 = v230;
        }

LABEL_737:
        *(a1 + 100) = v234;
        continue;
      case 5u:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + 20) = 1;
        while (1)
        {
          v492 = 0;
          v154 = [a2 position] + 1;
          if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
          {
            v156 = [a2 data];
            [v156 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v153 |= (v492 & 0x7F) << v151;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v13 = v152++ >= 9;
          if (v13)
          {
            v157 = 0;
            goto LABEL_693;
          }
        }

        if ([a2 hasError])
        {
          v157 = 0;
        }

        else
        {
          v157 = v153;
        }

LABEL_693:
        *(a1 + 104) = v157;
        continue;
      case 6u:
        v284 = 0;
        v285 = 0;
        v286 = 0;
        *(a1 + 21) = 1;
        while (1)
        {
          v492 = 0;
          v287 = [a2 position] + 1;
          if (v287 >= [a2 position] && (v288 = objc_msgSend(a2, "position") + 1, v288 <= objc_msgSend(a2, "length")))
          {
            v289 = [a2 data];
            [v289 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v286 |= (v492 & 0x7F) << v284;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v284 += 7;
          v13 = v285++ >= 9;
          if (v13)
          {
            v290 = 0;
            goto LABEL_773;
          }
        }

        if ([a2 hasError])
        {
          v290 = 0;
        }

        else
        {
          v290 = v286;
        }

LABEL_773:
        *(a1 + 108) = v290;
        continue;
      case 7u:
        v319 = 0;
        v320 = 0;
        v321 = 0;
        *(a1 + 22) = 1;
        while (1)
        {
          v492 = 0;
          v322 = [a2 position] + 1;
          if (v322 >= [a2 position] && (v323 = objc_msgSend(a2, "position") + 1, v323 <= objc_msgSend(a2, "length")))
          {
            v324 = [a2 data];
            [v324 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v321 |= (v492 & 0x7F) << v319;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v319 += 7;
          v13 = v320++ >= 9;
          if (v13)
          {
            v325 = 0;
            goto LABEL_793;
          }
        }

        if ([a2 hasError])
        {
          v325 = 0;
        }

        else
        {
          v325 = v321;
        }

LABEL_793:
        *(a1 + 112) = v325;
        continue;
      case 8u:
        v235 = 0;
        v236 = 0;
        v237 = 0;
        *(a1 + 23) = 1;
        while (1)
        {
          v492 = 0;
          v238 = [a2 position] + 1;
          if (v238 >= [a2 position] && (v239 = objc_msgSend(a2, "position") + 1, v239 <= objc_msgSend(a2, "length")))
          {
            v240 = [a2 data];
            [v240 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v237 |= (v492 & 0x7F) << v235;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v235 += 7;
          v13 = v236++ >= 9;
          if (v13)
          {
            v241 = 0;
            goto LABEL_741;
          }
        }

        if ([a2 hasError])
        {
          v241 = 0;
        }

        else
        {
          v241 = v237;
        }

LABEL_741:
        *(a1 + 116) = v241;
        continue;
      case 9u:
        v340 = 0;
        v341 = 0;
        v342 = 0;
        *(a1 + 24) = 1;
        while (1)
        {
          v492 = 0;
          v343 = [a2 position] + 1;
          if (v343 >= [a2 position] && (v344 = objc_msgSend(a2, "position") + 1, v344 <= objc_msgSend(a2, "length")))
          {
            v345 = [a2 data];
            [v345 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v342 |= (v492 & 0x7F) << v340;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v340 += 7;
          v13 = v341++ >= 9;
          if (v13)
          {
            v346 = 0;
            goto LABEL_805;
          }
        }

        if ([a2 hasError])
        {
          v346 = 0;
        }

        else
        {
          v346 = v342;
        }

LABEL_805:
        *(a1 + 120) = v346;
        continue;
      case 0xAu:
        v186 = 0;
        v187 = 0;
        v188 = 0;
        *(a1 + 25) = 1;
        while (1)
        {
          v492 = 0;
          v189 = [a2 position] + 1;
          if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
          {
            v191 = [a2 data];
            [v191 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v188 |= (v492 & 0x7F) << v186;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v186 += 7;
          v13 = v187++ >= 9;
          if (v13)
          {
            v192 = 0;
            goto LABEL_713;
          }
        }

        if ([a2 hasError])
        {
          v192 = 0;
        }

        else
        {
          v192 = v188;
        }

LABEL_713:
        *(a1 + 124) = v192;
        continue;
      case 0xBu:
        v333 = 0;
        v334 = 0;
        v335 = 0;
        *(a1 + 26) = 1;
        while (1)
        {
          v492 = 0;
          v336 = [a2 position] + 1;
          if (v336 >= [a2 position] && (v337 = objc_msgSend(a2, "position") + 1, v337 <= objc_msgSend(a2, "length")))
          {
            v338 = [a2 data];
            [v338 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v335 |= (v492 & 0x7F) << v333;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v333 += 7;
          v13 = v334++ >= 9;
          if (v13)
          {
            v339 = 0;
            goto LABEL_801;
          }
        }

        if ([a2 hasError])
        {
          v339 = 0;
        }

        else
        {
          v339 = v335;
        }

LABEL_801:
        *(a1 + 128) = v339;
        continue;
      case 0xCu:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 27) = 1;
        while (1)
        {
          v492 = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v492 & 0x7F) << v137;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v13 = v138++ >= 9;
          if (v13)
          {
            v143 = 0;
            goto LABEL_685;
          }
        }

        if ([a2 hasError])
        {
          v143 = 0;
        }

        else
        {
          v143 = v139;
        }

LABEL_685:
        *(a1 + 132) = v143;
        continue;
      case 0xDu:
        v179 = 0;
        v180 = 0;
        v181 = 0;
        *(a1 + 28) = 1;
        while (1)
        {
          v492 = 0;
          v182 = [a2 position] + 1;
          if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 1, v183 <= objc_msgSend(a2, "length")))
          {
            v184 = [a2 data];
            [v184 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v181 |= (v492 & 0x7F) << v179;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v179 += 7;
          v13 = v180++ >= 9;
          if (v13)
          {
            v185 = 0;
            goto LABEL_709;
          }
        }

        if ([a2 hasError])
        {
          v185 = 0;
        }

        else
        {
          v185 = v181;
        }

LABEL_709:
        *(a1 + 136) = v185;
        continue;
      case 0xEu:
        v312 = 0;
        v313 = 0;
        v314 = 0;
        *(a1 + 29) = 1;
        while (1)
        {
          v492 = 0;
          v315 = [a2 position] + 1;
          if (v315 >= [a2 position] && (v316 = objc_msgSend(a2, "position") + 1, v316 <= objc_msgSend(a2, "length")))
          {
            v317 = [a2 data];
            [v317 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v314 |= (v492 & 0x7F) << v312;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v312 += 7;
          v13 = v313++ >= 9;
          if (v13)
          {
            v318 = 0;
            goto LABEL_789;
          }
        }

        if ([a2 hasError])
        {
          v318 = 0;
        }

        else
        {
          v318 = v314;
        }

LABEL_789:
        *(a1 + 140) = v318;
        continue;
      case 0xFu:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 30) = 1;
        while (1)
        {
          v492 = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            v120 = [a2 data];
            [v120 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (v492 & 0x7F) << v115;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v13 = v116++ >= 9;
          if (v13)
          {
            v121 = 0;
            goto LABEL_673;
          }
        }

        if ([a2 hasError])
        {
          v121 = 0;
        }

        else
        {
          v121 = v117;
        }

LABEL_673:
        *(a1 + 144) = v121;
        continue;
      case 0x10u:
        v214 = 0;
        v215 = 0;
        v216 = 0;
        *(a1 + 31) = 1;
        while (1)
        {
          v492 = 0;
          v217 = [a2 position] + 1;
          if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 1, v218 <= objc_msgSend(a2, "length")))
          {
            v219 = [a2 data];
            [v219 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v216 |= (v492 & 0x7F) << v214;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v214 += 7;
          v13 = v215++ >= 9;
          if (v13)
          {
            v220 = 0;
            goto LABEL_729;
          }
        }

        if ([a2 hasError])
        {
          v220 = 0;
        }

        else
        {
          v220 = v216;
        }

LABEL_729:
        *(a1 + 148) = v220;
        continue;
      case 0x11u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 32) = 1;
        while (1)
        {
          v492 = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v492 & 0x7F) << v94;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v13 = v95++ >= 9;
          if (v13)
          {
            v100 = 0;
            goto LABEL_661;
          }
        }

        if ([a2 hasError])
        {
          v100 = 0;
        }

        else
        {
          v100 = v96;
        }

LABEL_661:
        *(a1 + 152) = v100;
        continue;
      case 0x12u:
        v256 = 0;
        v257 = 0;
        v258 = 0;
        *(a1 + 33) = 1;
        while (1)
        {
          v492 = 0;
          v259 = [a2 position] + 1;
          if (v259 >= [a2 position] && (v260 = objc_msgSend(a2, "position") + 1, v260 <= objc_msgSend(a2, "length")))
          {
            v261 = [a2 data];
            [v261 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v258 |= (v492 & 0x7F) << v256;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v256 += 7;
          v13 = v257++ >= 9;
          if (v13)
          {
            v262 = 0;
            goto LABEL_757;
          }
        }

        if ([a2 hasError])
        {
          v262 = 0;
        }

        else
        {
          v262 = v258;
        }

LABEL_757:
        *(a1 + 156) = v262;
        continue;
      case 0x13u:
        v326 = 0;
        v327 = 0;
        v328 = 0;
        *(a1 + 34) = 1;
        while (1)
        {
          v492 = 0;
          v329 = [a2 position] + 1;
          if (v329 >= [a2 position] && (v330 = objc_msgSend(a2, "position") + 1, v330 <= objc_msgSend(a2, "length")))
          {
            v331 = [a2 data];
            [v331 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v328 |= (v492 & 0x7F) << v326;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v326 += 7;
          v13 = v327++ >= 9;
          if (v13)
          {
            v332 = 0;
            goto LABEL_797;
          }
        }

        if ([a2 hasError])
        {
          v332 = 0;
        }

        else
        {
          v332 = v328;
        }

LABEL_797:
        *(a1 + 160) = v332;
        continue;
      case 0x14u:
        v383 = 0;
        v384 = 0;
        v385 = 0;
        *(a1 + 35) = 1;
        while (1)
        {
          v492 = 0;
          v386 = [a2 position] + 1;
          if (v386 >= [a2 position] && (v387 = objc_msgSend(a2, "position") + 1, v387 <= objc_msgSend(a2, "length")))
          {
            v388 = [a2 data];
            [v388 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v385 |= (v492 & 0x7F) << v383;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v383 += 7;
          v13 = v384++ >= 9;
          if (v13)
          {
            v389 = 0;
            goto LABEL_830;
          }
        }

        if ([a2 hasError])
        {
          v389 = 0;
        }

        else
        {
          v389 = v385;
        }

LABEL_830:
        *(a1 + 164) = v389;
        continue;
      case 0x15u:
        v270 = 0;
        v271 = 0;
        v272 = 0;
        *(a1 + 36) = 1;
        while (1)
        {
          v492 = 0;
          v273 = [a2 position] + 1;
          if (v273 >= [a2 position] && (v274 = objc_msgSend(a2, "position") + 1, v274 <= objc_msgSend(a2, "length")))
          {
            v275 = [a2 data];
            [v275 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v272 |= (v492 & 0x7F) << v270;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v270 += 7;
          v13 = v271++ >= 9;
          if (v13)
          {
            v276 = 0;
            goto LABEL_765;
          }
        }

        if ([a2 hasError])
        {
          v276 = 0;
        }

        else
        {
          v276 = v272;
        }

LABEL_765:
        *(a1 + 168) = v276;
        continue;
      case 0x16u:
        v305 = 0;
        v306 = 0;
        v307 = 0;
        *(a1 + 37) = 1;
        while (1)
        {
          v492 = 0;
          v308 = [a2 position] + 1;
          if (v308 >= [a2 position] && (v309 = objc_msgSend(a2, "position") + 1, v309 <= objc_msgSend(a2, "length")))
          {
            v310 = [a2 data];
            [v310 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v307 |= (v492 & 0x7F) << v305;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v305 += 7;
          v13 = v306++ >= 9;
          if (v13)
          {
            v311 = 0;
            goto LABEL_785;
          }
        }

        if ([a2 hasError])
        {
          v311 = 0;
        }

        else
        {
          v311 = v307;
        }

LABEL_785:
        *(a1 + 172) = v311;
        continue;
      case 0x17u:
        v369 = 0;
        v370 = 0;
        v371 = 0;
        *(a1 + 38) = 1;
        while (1)
        {
          v492 = 0;
          v372 = [a2 position] + 1;
          if (v372 >= [a2 position] && (v373 = objc_msgSend(a2, "position") + 1, v373 <= objc_msgSend(a2, "length")))
          {
            v374 = [a2 data];
            [v374 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v371 |= (v492 & 0x7F) << v369;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v369 += 7;
          v13 = v370++ >= 9;
          if (v13)
          {
            v375 = 0;
            goto LABEL_822;
          }
        }

        if ([a2 hasError])
        {
          v375 = 0;
        }

        else
        {
          v375 = v371;
        }

LABEL_822:
        *(a1 + 176) = v375;
        continue;
      case 0x18u:
        v411 = 0;
        v412 = 0;
        v413 = 0;
        *(a1 + 39) = 1;
        while (1)
        {
          v492 = 0;
          v414 = [a2 position] + 1;
          if (v414 >= [a2 position] && (v415 = objc_msgSend(a2, "position") + 1, v415 <= objc_msgSend(a2, "length")))
          {
            v416 = [a2 data];
            [v416 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v413 |= (v492 & 0x7F) << v411;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v411 += 7;
          v13 = v412++ >= 9;
          if (v13)
          {
            v417 = 0;
            goto LABEL_846;
          }
        }

        if ([a2 hasError])
        {
          v417 = 0;
        }

        else
        {
          v417 = v413;
        }

LABEL_846:
        *(a1 + 180) = v417;
        continue;
      case 0x19u:
        v200 = 0;
        v201 = 0;
        v202 = 0;
        *(a1 + 40) = 1;
        while (1)
        {
          v492 = 0;
          v203 = [a2 position] + 1;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
          {
            v205 = [a2 data];
            [v205 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v202 |= (v492 & 0x7F) << v200;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v200 += 7;
          v13 = v201++ >= 9;
          if (v13)
          {
            v206 = 0;
            goto LABEL_721;
          }
        }

        if ([a2 hasError])
        {
          v206 = 0;
        }

        else
        {
          v206 = v202;
        }

LABEL_721:
        *(a1 + 184) = v206;
        continue;
      case 0x1Au:
        v193 = 0;
        v194 = 0;
        v195 = 0;
        *(a1 + 41) = 1;
        while (1)
        {
          v492 = 0;
          v196 = [a2 position] + 1;
          if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
          {
            v198 = [a2 data];
            [v198 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v195 |= (v492 & 0x7F) << v193;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v193 += 7;
          v13 = v194++ >= 9;
          if (v13)
          {
            v199 = 0;
            goto LABEL_717;
          }
        }

        if ([a2 hasError])
        {
          v199 = 0;
        }

        else
        {
          v199 = v195;
        }

LABEL_717:
        *(a1 + 188) = v199;
        continue;
      case 0x1Bu:
        v439 = 0;
        v440 = 0;
        v441 = 0;
        *(a1 + 42) = 1;
        while (1)
        {
          v492 = 0;
          v442 = [a2 position] + 1;
          if (v442 >= [a2 position] && (v443 = objc_msgSend(a2, "position") + 1, v443 <= objc_msgSend(a2, "length")))
          {
            v444 = [a2 data];
            [v444 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v441 |= (v492 & 0x7F) << v439;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v439 += 7;
          v13 = v440++ >= 9;
          if (v13)
          {
            v445 = 0;
            goto LABEL_862;
          }
        }

        if ([a2 hasError])
        {
          v445 = 0;
        }

        else
        {
          v445 = v441;
        }

LABEL_862:
        *(a1 + 192) = v445;
        continue;
      case 0x1Cu:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 43) = 1;
        while (1)
        {
          v492 = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v492 & 0x7F) << v85;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v13 = v86++ >= 9;
          if (v13)
          {
            v91 = 0;
            goto LABEL_657;
          }
        }

        if ([a2 hasError])
        {
          v91 = 0;
        }

        else
        {
          v91 = v87;
        }

LABEL_657:
        *(a1 + 196) = v91;
        continue;
      case 0x1Du:
        v418 = 0;
        v419 = 0;
        v420 = 0;
        *(a1 + 44) = 1;
        while (1)
        {
          v492 = 0;
          v421 = [a2 position] + 1;
          if (v421 >= [a2 position] && (v422 = objc_msgSend(a2, "position") + 1, v422 <= objc_msgSend(a2, "length")))
          {
            v423 = [a2 data];
            [v423 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v420 |= (v492 & 0x7F) << v418;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v418 += 7;
          v13 = v419++ >= 9;
          if (v13)
          {
            v424 = 0;
            goto LABEL_850;
          }
        }

        if ([a2 hasError])
        {
          v424 = 0;
        }

        else
        {
          v424 = v420;
        }

LABEL_850:
        *(a1 + 200) = v424;
        continue;
      case 0x1Eu:
        v425 = 0;
        v426 = 0;
        v427 = 0;
        *(a1 + 45) = 1;
        while (1)
        {
          v492 = 0;
          v428 = [a2 position] + 1;
          if (v428 >= [a2 position] && (v429 = objc_msgSend(a2, "position") + 1, v429 <= objc_msgSend(a2, "length")))
          {
            v430 = [a2 data];
            [v430 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v427 |= (v492 & 0x7F) << v425;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v425 += 7;
          v13 = v426++ >= 9;
          if (v13)
          {
            v431 = 0;
            goto LABEL_854;
          }
        }

        if ([a2 hasError])
        {
          v431 = 0;
        }

        else
        {
          v431 = v427;
        }

LABEL_854:
        *(a1 + 204) = v431;
        continue;
      case 0x1Fu:
        v347 = 0;
        v348 = 0;
        v349 = 0;
        *(a1 + 46) = 1;
        while (1)
        {
          v492 = 0;
          v350 = [a2 position] + 1;
          if (v350 >= [a2 position] && (v351 = objc_msgSend(a2, "position") + 1, v351 <= objc_msgSend(a2, "length")))
          {
            v352 = [a2 data];
            [v352 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v349 |= (v492 & 0x7F) << v347;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v347 += 7;
          v13 = v348++ >= 9;
          if (v13)
          {
            v353 = 0;
            goto LABEL_809;
          }
        }

        if ([a2 hasError])
        {
          v353 = 0;
        }

        else
        {
          v353 = v349;
        }

LABEL_809:
        *(a1 + 208) = v353;
        continue;
      case 0x20u:
        v249 = 0;
        v250 = 0;
        v251 = 0;
        *(a1 + 47) = 1;
        while (1)
        {
          v492 = 0;
          v252 = [a2 position] + 1;
          if (v252 >= [a2 position] && (v253 = objc_msgSend(a2, "position") + 1, v253 <= objc_msgSend(a2, "length")))
          {
            v254 = [a2 data];
            [v254 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v251 |= (v492 & 0x7F) << v249;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v249 += 7;
          v13 = v250++ >= 9;
          if (v13)
          {
            v255 = 0;
            goto LABEL_753;
          }
        }

        if ([a2 hasError])
        {
          v255 = 0;
        }

        else
        {
          v255 = v251;
        }

LABEL_753:
        *(a1 + 212) = v255;
        continue;
      case 0x21u:
        v354 = 0;
        v355 = 0;
        v356 = 0;
        *(a1 + 48) = 1;
        while (1)
        {
          v492 = 0;
          v357 = [a2 position] + 1;
          if (v357 >= [a2 position] && (v358 = objc_msgSend(a2, "position") + 1, v358 <= objc_msgSend(a2, "length")))
          {
            v359 = [a2 data];
            [v359 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v356 |= (v492 & 0x7F) << v354;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v354 += 7;
          v13 = v355++ >= 9;
          if (v13)
          {
            v360 = 0;
            goto LABEL_813;
          }
        }

        if ([a2 hasError])
        {
          v360 = 0;
        }

        else
        {
          v360 = v356;
        }

LABEL_813:
        *(a1 + 216) = v360;
        continue;
      case 0x22u:
        v92 = PBReaderReadString();
        v93 = 344;
        goto LABEL_156;
      case 0x23u:
        v92 = PBReaderReadString();
        v93 = 352;
LABEL_156:
        v122 = *(a1 + v93);
        *(a1 + v93) = v92;

        continue;
      case 0x24u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 49) = 1;
        while (1)
        {
          v492 = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v492 & 0x7F) << v71;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v13 = v72++ >= 9;
          if (v13)
          {
            v77 = 0;
            goto LABEL_649;
          }
        }

        if ([a2 hasError])
        {
          v77 = 0;
        }

        else
        {
          v77 = v73;
        }

LABEL_649:
        *(a1 + 220) = v77;
        continue;
      case 0x25u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 50) = 1;
        while (1)
        {
          v492 = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v492 & 0x7F) << v78;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v13 = v79++ >= 9;
          if (v13)
          {
            v84 = 0;
            goto LABEL_653;
          }
        }

        if ([a2 hasError])
        {
          v84 = 0;
        }

        else
        {
          v84 = v80;
        }

LABEL_653:
        *(a1 + 224) = v84;
        continue;
      case 0x26u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 51) = 1;
        while (1)
        {
          v492 = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v492 & 0x7F) << v43;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v13 = v44++ >= 9;
          if (v13)
          {
            v49 = 0;
            goto LABEL_633;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v45;
        }

LABEL_633:
        *(a1 + 228) = v49;
        continue;
      case 0x27u:
        v432 = 0;
        v433 = 0;
        v434 = 0;
        *(a1 + 52) = 1;
        while (1)
        {
          v492 = 0;
          v435 = [a2 position] + 1;
          if (v435 >= [a2 position] && (v436 = objc_msgSend(a2, "position") + 1, v436 <= objc_msgSend(a2, "length")))
          {
            v437 = [a2 data];
            [v437 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v434 |= (v492 & 0x7F) << v432;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v432 += 7;
          v13 = v433++ >= 9;
          if (v13)
          {
            v438 = 0;
            goto LABEL_858;
          }
        }

        if ([a2 hasError])
        {
          v438 = 0;
        }

        else
        {
          v438 = v434;
        }

LABEL_858:
        *(a1 + 232) = v438;
        continue;
      case 0x28u:
        v376 = 0;
        v377 = 0;
        v378 = 0;
        *(a1 + 53) = 1;
        while (1)
        {
          v492 = 0;
          v379 = [a2 position] + 1;
          if (v379 >= [a2 position] && (v380 = objc_msgSend(a2, "position") + 1, v380 <= objc_msgSend(a2, "length")))
          {
            v381 = [a2 data];
            [v381 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v378 |= (v492 & 0x7F) << v376;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v376 += 7;
          v13 = v377++ >= 9;
          if (v13)
          {
            v382 = 0;
            goto LABEL_826;
          }
        }

        if ([a2 hasError])
        {
          v382 = 0;
        }

        else
        {
          v382 = v378;
        }

LABEL_826:
        *(a1 + 236) = v382;
        continue;
      case 0x29u:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 54) = 1;
        while (1)
        {
          v492 = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v492 & 0x7F) << v158;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v13 = v159++ >= 9;
          if (v13)
          {
            v164 = 0;
            goto LABEL_697;
          }
        }

        if ([a2 hasError])
        {
          v164 = 0;
        }

        else
        {
          v164 = v160;
        }

LABEL_697:
        *(a1 + 240) = v164;
        continue;
      case 0x2Au:
        v263 = 0;
        v264 = 0;
        v265 = 0;
        *(a1 + 55) = 1;
        while (1)
        {
          v492 = 0;
          v266 = [a2 position] + 1;
          if (v266 >= [a2 position] && (v267 = objc_msgSend(a2, "position") + 1, v267 <= objc_msgSend(a2, "length")))
          {
            v268 = [a2 data];
            [v268 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v265 |= (v492 & 0x7F) << v263;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v263 += 7;
          v13 = v264++ >= 9;
          if (v13)
          {
            v269 = 0;
            goto LABEL_761;
          }
        }

        if ([a2 hasError])
        {
          v269 = 0;
        }

        else
        {
          v269 = v265;
        }

LABEL_761:
        *(a1 + 244) = v269;
        continue;
      case 0x2Bu:
        v397 = 0;
        v398 = 0;
        v399 = 0;
        *(a1 + 56) = 1;
        while (1)
        {
          v492 = 0;
          v400 = [a2 position] + 1;
          if (v400 >= [a2 position] && (v401 = objc_msgSend(a2, "position") + 1, v401 <= objc_msgSend(a2, "length")))
          {
            v402 = [a2 data];
            [v402 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v399 |= (v492 & 0x7F) << v397;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v397 += 7;
          v13 = v398++ >= 9;
          if (v13)
          {
            v403 = 0;
            goto LABEL_838;
          }
        }

        if ([a2 hasError])
        {
          v403 = 0;
        }

        else
        {
          v403 = v399;
        }

LABEL_838:
        *(a1 + 248) = v403;
        continue;
      case 0x2Cu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 57) = 1;
        while (1)
        {
          v492 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v492 & 0x7F) << v29;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v13 = v30++ >= 9;
          if (v13)
          {
            v35 = 0;
            goto LABEL_625;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_625:
        *(a1 + 252) = v35;
        continue;
      case 0x2Du:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        *(a1 + 58) = 1;
        while (1)
        {
          v492 = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            v113 = [a2 data];
            [v113 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v110 |= (v492 & 0x7F) << v108;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v13 = v109++ >= 9;
          if (v13)
          {
            v114 = 0;
            goto LABEL_669;
          }
        }

        if ([a2 hasError])
        {
          v114 = 0;
        }

        else
        {
          v114 = v110;
        }

LABEL_669:
        *(a1 + 256) = v114;
        continue;
      case 0x2Eu:
        v361 = 0;
        v362 = 0;
        v363 = 0;
        v364 = MEMORY[0x1E696AD98];
        while (1)
        {
          v492 = 0;
          v365 = [a2 position] + 1;
          if (v365 >= [a2 position] && (v366 = objc_msgSend(a2, "position") + 1, v366 <= objc_msgSend(a2, "length")))
          {
            v367 = [a2 data];
            [v367 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v363 |= (v492 & 0x7F) << v361;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v361 += 7;
          v13 = v362++ >= 9;
          if (v13)
          {
            v368 = 0;
            goto LABEL_817;
          }
        }

        if ([a2 hasError])
        {
          v368 = 0;
        }

        else
        {
          v368 = v363;
        }

LABEL_817:
        v482 = [v364 numberWithUnsignedInt:v368];
        if (!v482)
        {
          goto LABEL_887;
        }

        v483 = v482;
        v484 = v4;
        goto LABEL_872;
      case 0x2Fu:
        v468 = 0;
        v469 = 0;
        v470 = 0;
        *(a1 + 59) = 1;
        while (1)
        {
          v492 = 0;
          v471 = [a2 position] + 1;
          if (v471 >= [a2 position] && (v472 = objc_msgSend(a2, "position") + 1, v472 <= objc_msgSend(a2, "length")))
          {
            v473 = [a2 data];
            [v473 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v470 |= (v492 & 0x7F) << v468;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v468 += 7;
          v13 = v469++ >= 9;
          if (v13)
          {
            v474 = 0;
            goto LABEL_880;
          }
        }

        if ([a2 hasError])
        {
          v474 = 0;
        }

        else
        {
          v474 = v470;
        }

LABEL_880:
        *(a1 + 260) = v474;
        continue;
      case 0x30u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 60) = 1;
        while (1)
        {
          v492 = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v492 & 0x7F) << v57;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v13 = v58++ >= 9;
          if (v13)
          {
            v63 = 0;
            goto LABEL_641;
          }
        }

        if ([a2 hasError])
        {
          v63 = 0;
        }

        else
        {
          v63 = v59;
        }

LABEL_641:
        *(a1 + 264) = v63;
        continue;
      case 0x31u:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        *(a1 + 61) = 1;
        while (1)
        {
          v492 = 0;
          v126 = [a2 position] + 1;
          if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 1, v127 <= objc_msgSend(a2, "length")))
          {
            v128 = [a2 data];
            [v128 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v125 |= (v492 & 0x7F) << v123;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v123 += 7;
          v13 = v124++ >= 9;
          if (v13)
          {
            v129 = 0;
            goto LABEL_677;
          }
        }

        if ([a2 hasError])
        {
          v129 = 0;
        }

        else
        {
          v129 = v125;
        }

LABEL_677:
        *(a1 + 268) = v129;
        continue;
      case 0x32u:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 62) = 1;
        while (1)
        {
          v492 = 0;
          v147 = [a2 position] + 1;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
          {
            v149 = [a2 data];
            [v149 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v146 |= (v492 & 0x7F) << v144;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v13 = v145++ >= 9;
          if (v13)
          {
            v150 = 0;
            goto LABEL_689;
          }
        }

        if ([a2 hasError])
        {
          v150 = 0;
        }

        else
        {
          v150 = v146;
        }

LABEL_689:
        *(a1 + 272) = v150;
        continue;
      case 0x33u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 63) = 1;
        while (1)
        {
          v492 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v492 & 0x7F) << v22;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v13 = v23++ >= 9;
          if (v13)
          {
            v28 = 0;
            goto LABEL_621;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_621:
        *(a1 + 276) = v28;
        continue;
      case 0x34u:
        v475 = 0;
        v476 = 0;
        v477 = 0;
        *(a1 + 64) = 1;
        while (1)
        {
          v492 = 0;
          v478 = [a2 position] + 1;
          if (v478 >= [a2 position] && (v479 = objc_msgSend(a2, "position") + 1, v479 <= objc_msgSend(a2, "length")))
          {
            v480 = [a2 data];
            [v480 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v477 |= (v492 & 0x7F) << v475;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v475 += 7;
          v13 = v476++ >= 9;
          if (v13)
          {
            v481 = 0;
            goto LABEL_884;
          }
        }

        if ([a2 hasError])
        {
          v481 = 0;
        }

        else
        {
          v481 = v477;
        }

LABEL_884:
        *(a1 + 280) = v481;
        continue;
      case 0x35u:
        v461 = 0;
        v462 = 0;
        v463 = 0;
        *(a1 + 65) = 1;
        while (1)
        {
          v492 = 0;
          v464 = [a2 position] + 1;
          if (v464 >= [a2 position] && (v465 = objc_msgSend(a2, "position") + 1, v465 <= objc_msgSend(a2, "length")))
          {
            v466 = [a2 data];
            [v466 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v463 |= (v492 & 0x7F) << v461;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v461 += 7;
          v13 = v462++ >= 9;
          if (v13)
          {
            v467 = 0;
            goto LABEL_876;
          }
        }

        if ([a2 hasError])
        {
          v467 = 0;
        }

        else
        {
          v467 = v463;
        }

LABEL_876:
        *(a1 + 284) = v467;
        continue;
      case 0x36u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 66) = 1;
        while (1)
        {
          v492 = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v492 & 0x7F) << v50;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v13 = v51++ >= 9;
          if (v13)
          {
            v56 = 0;
            goto LABEL_637;
          }
        }

        if ([a2 hasError])
        {
          v56 = 0;
        }

        else
        {
          v56 = v52;
        }

LABEL_637:
        *(a1 + 288) = v56;
        continue;
      case 0x37u:
        v446 = 0;
        v447 = 0;
        v448 = 0;
        *(a1 + 67) = 1;
        while (1)
        {
          v492 = 0;
          v449 = [a2 position] + 1;
          if (v449 >= [a2 position] && (v450 = objc_msgSend(a2, "position") + 1, v450 <= objc_msgSend(a2, "length")))
          {
            v451 = [a2 data];
            [v451 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v448 |= (v492 & 0x7F) << v446;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v446 += 7;
          v13 = v447++ >= 9;
          if (v13)
          {
            v452 = 0;
            goto LABEL_866;
          }
        }

        if ([a2 hasError])
        {
          v452 = 0;
        }

        else
        {
          v452 = v448;
        }

LABEL_866:
        *(a1 + 292) = v452;
        continue;
      case 0x38u:
        v453 = 0;
        v454 = 0;
        v455 = 0;
        v456 = MEMORY[0x1E696AD98];
        while (1)
        {
          v492 = 0;
          v457 = [a2 position] + 1;
          if (v457 >= [a2 position] && (v458 = objc_msgSend(a2, "position") + 1, v458 <= objc_msgSend(a2, "length")))
          {
            v459 = [a2 data];
            [v459 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v455 |= (v492 & 0x7F) << v453;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v453 += 7;
          v13 = v454++ >= 9;
          if (v13)
          {
            v460 = 0;
            goto LABEL_870;
          }
        }

        if ([a2 hasError])
        {
          v460 = 0;
        }

        else
        {
          v460 = v455;
        }

LABEL_870:
        v485 = [v456 numberWithUnsignedInt:v460];
        if (!v485)
        {
LABEL_887:
          v490 = 0;
          goto LABEL_886;
        }

        v483 = v485;
        v484 = v5;
LABEL_872:
        [v484 addObject:v483];

        break;
      case 0x39u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 68) = 1;
        while (1)
        {
          v492 = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v492 & 0x7F) << v64;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v13 = v65++ >= 9;
          if (v13)
          {
            v70 = 0;
            goto LABEL_645;
          }
        }

        if ([a2 hasError])
        {
          v70 = 0;
        }

        else
        {
          v70 = v66;
        }

LABEL_645:
        *(a1 + 296) = v70;
        continue;
      case 0x3Au:
        v390 = 0;
        v391 = 0;
        v392 = 0;
        *(a1 + 69) = 1;
        while (1)
        {
          v492 = 0;
          v393 = [a2 position] + 1;
          if (v393 >= [a2 position] && (v394 = objc_msgSend(a2, "position") + 1, v394 <= objc_msgSend(a2, "length")))
          {
            v395 = [a2 data];
            [v395 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v392 |= (v492 & 0x7F) << v390;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v390 += 7;
          v13 = v391++ >= 9;
          if (v13)
          {
            v396 = 0;
            goto LABEL_834;
          }
        }

        if ([a2 hasError])
        {
          v396 = 0;
        }

        else
        {
          v396 = v392;
        }

LABEL_834:
        *(a1 + 300) = v396;
        continue;
      case 0x3Bu:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 70) = 1;
        while (1)
        {
          v492 = 0;
          v133 = [a2 position] + 1;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
          {
            v135 = [a2 data];
            [v135 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v132 |= (v492 & 0x7F) << v130;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v13 = v131++ >= 9;
          if (v13)
          {
            v136 = 0;
            goto LABEL_681;
          }
        }

        if ([a2 hasError])
        {
          v136 = 0;
        }

        else
        {
          v136 = v132;
        }

LABEL_681:
        *(a1 + 304) = v136;
        continue;
      case 0x3Cu:
        v404 = 0;
        v405 = 0;
        v406 = 0;
        *(a1 + 71) = 1;
        while (1)
        {
          v492 = 0;
          v407 = [a2 position] + 1;
          if (v407 >= [a2 position] && (v408 = objc_msgSend(a2, "position") + 1, v408 <= objc_msgSend(a2, "length")))
          {
            v409 = [a2 data];
            [v409 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v406 |= (v492 & 0x7F) << v404;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v404 += 7;
          v13 = v405++ >= 9;
          if (v13)
          {
            v410 = 0;
            goto LABEL_842;
          }
        }

        if ([a2 hasError])
        {
          v410 = 0;
        }

        else
        {
          v410 = v406;
        }

LABEL_842:
        *(a1 + 308) = v410;
        continue;
      case 0x3Du:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        *(a1 + 72) = 1;
        while (1)
        {
          v492 = 0;
          v168 = [a2 position] + 1;
          if (v168 >= [a2 position] && (v169 = objc_msgSend(a2, "position") + 1, v169 <= objc_msgSend(a2, "length")))
          {
            v170 = [a2 data];
            [v170 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v167 |= (v492 & 0x7F) << v165;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v13 = v166++ >= 9;
          if (v13)
          {
            v171 = 0;
            goto LABEL_701;
          }
        }

        if ([a2 hasError])
        {
          v171 = 0;
        }

        else
        {
          v171 = v167;
        }

LABEL_701:
        *(a1 + 312) = v171;
        continue;
      case 0x3Eu:
        v277 = 0;
        v278 = 0;
        v279 = 0;
        *(a1 + 73) = 1;
        while (1)
        {
          v492 = 0;
          v280 = [a2 position] + 1;
          if (v280 >= [a2 position] && (v281 = objc_msgSend(a2, "position") + 1, v281 <= objc_msgSend(a2, "length")))
          {
            v282 = [a2 data];
            [v282 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v279 |= (v492 & 0x7F) << v277;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v277 += 7;
          v13 = v278++ >= 9;
          if (v13)
          {
            v283 = 0;
            goto LABEL_769;
          }
        }

        if ([a2 hasError])
        {
          v283 = 0;
        }

        else
        {
          v283 = v279;
        }

LABEL_769:
        *(a1 + 316) = v283;
        continue;
      case 0x3Fu:
        v298 = 0;
        v299 = 0;
        v300 = 0;
        *(a1 + 74) = 1;
        while (1)
        {
          v492 = 0;
          v301 = [a2 position] + 1;
          if (v301 >= [a2 position] && (v302 = objc_msgSend(a2, "position") + 1, v302 <= objc_msgSend(a2, "length")))
          {
            v303 = [a2 data];
            [v303 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v300 |= (v492 & 0x7F) << v298;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v298 += 7;
          v13 = v299++ >= 9;
          if (v13)
          {
            v304 = 0;
            goto LABEL_781;
          }
        }

        if ([a2 hasError])
        {
          v304 = 0;
        }

        else
        {
          v304 = v300;
        }

LABEL_781:
        *(a1 + 320) = v304;
        continue;
      case 0x40u:
        v221 = 0;
        v222 = 0;
        v223 = 0;
        *(a1 + 75) = 1;
        while (1)
        {
          v492 = 0;
          v224 = [a2 position] + 1;
          if (v224 >= [a2 position] && (v225 = objc_msgSend(a2, "position") + 1, v225 <= objc_msgSend(a2, "length")))
          {
            v226 = [a2 data];
            [v226 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v223 |= (v492 & 0x7F) << v221;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v221 += 7;
          v13 = v222++ >= 9;
          if (v13)
          {
            v227 = 0;
            goto LABEL_733;
          }
        }

        if ([a2 hasError])
        {
          v227 = 0;
        }

        else
        {
          v227 = v223;
        }

LABEL_733:
        *(a1 + 324) = v227;
        continue;
      case 0x41u:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        *(a1 + 76) = 1;
        while (1)
        {
          v492 = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            v177 = [a2 data];
            [v177 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v174 |= (v492 & 0x7F) << v172;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v13 = v173++ >= 9;
          if (v13)
          {
            v178 = 0;
            goto LABEL_705;
          }
        }

        if ([a2 hasError])
        {
          v178 = 0;
        }

        else
        {
          v178 = v174;
        }

LABEL_705:
        *(a1 + 328) = v178;
        continue;
      case 0x42u:
        v291 = 0;
        v292 = 0;
        v293 = 0;
        *(a1 + 77) = 1;
        while (1)
        {
          v492 = 0;
          v294 = [a2 position] + 1;
          if (v294 >= [a2 position] && (v295 = objc_msgSend(a2, "position") + 1, v295 <= objc_msgSend(a2, "length")))
          {
            v296 = [a2 data];
            [v296 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v293 |= (v492 & 0x7F) << v291;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v291 += 7;
          v13 = v292++ >= 9;
          if (v13)
          {
            v297 = 0;
            goto LABEL_777;
          }
        }

        if ([a2 hasError])
        {
          v297 = 0;
        }

        else
        {
          v297 = v293;
        }

LABEL_777:
        *(a1 + 332) = v297;
        continue;
      case 0x43u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 78) = 1;
        while (1)
        {
          v492 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v492 & 0x7F) << v36;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v13 = v37++ >= 9;
          if (v13)
          {
            v42 = 0;
            goto LABEL_629;
          }
        }

        if ([a2 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v38;
        }

LABEL_629:
        *(a1 + 336) = v42;
        continue;
      case 0x44u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 79) = 1;
        while (1)
        {
          v492 = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v492 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v492 & 0x7F) << v101;
          if ((v492 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v13 = v102++ >= 9;
          if (v13)
          {
            v107 = 0;
            goto LABEL_665;
          }
        }

        if ([a2 hasError])
        {
          v107 = 0;
        }

        else
        {
          v107 = v103;
        }

LABEL_665:
        *(a1 + 340) = v107;
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_887;
    }
  }

  v486 = [v4 copy];
  v487 = *(a1 + 360);
  *(a1 + 360) = v486;

  v488 = [v5 copy];
  v489 = *(a1 + 368);
  *(a1 + 368) = v488;

  v490 = [a2 hasError] ^ 1;
LABEL_886:

  return v490;
}

_BYTE *BMSageTranscriptSerializationFormatFromString(const void *a1)
{
  result = bsearch_b(a1, BMSageTranscriptSerializationFormatFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_5986);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMSageTranscriptSerializationFormatFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSageTranscriptSerializationFormatAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8AE28[a1];
  }

  return v2;
}

uint64_t BMSageTranscriptSerializationFormatDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMWalletTransactionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletTransactionTypeFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_6777);
  if (result)
  {
    return *(&BMContextSyncWalletTransactionTypeFromString_sortedEnums + (((result - BMWalletTransactionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletTransactionMerchantTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletTransactionMerchantTypeFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_45);
  if (result)
  {
    return *(&BMWalletSettledTransactionMerchantTypeFromString_sortedEnums + (((result - BMWalletTransactionMerchantTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWalletTransactionTypeAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8AF50[a1];
  }

  return v2;
}

__CFString *BMWalletTransactionMerchantTypeAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8AF88[a1];
  }

  return v2;
}

uint64_t BMWalletTransactionTypeDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMWalletTransactionMerchantTypeDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMLocationHashedCoordinatesSpeedRangeFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocationHashedCoordinatesSpeedRangeFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_7411);
  if (result)
  {
    return *(&BMLocationHashedCoordinatesSpeedRangeFromString_sortedEnums + (((result - BMLocationHashedCoordinatesSpeedRangeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMLocationHashedCoordinatesAltitudeRangeFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocationHashedCoordinatesAltitudeRangeFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_63_7401);
  if (result)
  {
    return *(&BMLocationHashedCoordinatesAltitudeRangeFromString_sortedEnums + (((result - BMLocationHashedCoordinatesAltitudeRangeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMLocationHashedCoordinatesDistanceRangeFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocationHashedCoordinatesDistanceRangeFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_71);
  if (result)
  {
    return *(&BMLocationHashedCoordinatesDistanceRangeFromString_sortedEnums + (((result - BMLocationHashedCoordinatesDistanceRangeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLocationHashedCoordinatesSpeedRangeAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B158[a1];
  }

  return v2;
}

__CFString *BMLocationHashedCoordinatesAltitudeRangeAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B1B0[a1];
  }

  return v2;
}

__CFString *BMLocationHashedCoordinatesDistanceRangeAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B200[a1];
  }

  return v2;
}

uint64_t BMLocationHashedCoordinatesSpeedRangeDecode(uint64_t result)
{
  if (result >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMLocationHashedCoordinatesAltitudeRangeDecode(uint64_t result)
{
  if (result >= 0xA)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMLocationHashedCoordinatesDistanceRangeDecode(uint64_t result)
{
  if (result >= 0xA)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMMLSELabeledDataStoreLabelingEvidenceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSELabeledDataStoreLabelingEvidenceTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_8261);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMMLSELabeledDataStoreLabelingEvidenceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMLSELabeledDataStoreLabelingEvidenceTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B398[a1];
  }

  return v2;
}

uint64_t BMMLSELabeledDataStoreLabelingEvidenceTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMPhotosDeleteTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosDeleteTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_8561);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMPhotosDeleteTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosDeleteTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B400[a1];
  }

  return v2;
}

uint64_t BMPhotosDeleteTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMMediaNowPlayingOutputDeviceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMediaNowPlayingOutputDeviceTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_8878);
  if (result)
  {
    return *(&BMMediaRouteOutputDeviceTypeFromString_sortedEnums + (((result - BMMediaNowPlayingOutputDeviceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMediaNowPlayingOutputDeviceSubTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMediaNowPlayingOutputDeviceSubTypeFromString_sortedStrings, 0x15uLL, 8uLL, &__block_literal_global_84);
  if (result)
  {
    return *(&BMMediaRouteOutputDeviceSubTypeFromString_sortedEnums + (((result - BMMediaNowPlayingOutputDeviceSubTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMediaNowPlayingOutputDeviceTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B640[a1];
  }

  return v2;
}

__CFString *BMMediaNowPlayingOutputDeviceSubTypeAsString(uint64_t a1)
{
  if (a1 >= 0x16)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B670[a1];
  }

  return v2;
}

_BYTE *BMMediaNowPlayingPlaybackStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMMediaNowPlayingPlaybackStateFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_101);
  if (result)
  {
    return *(&BMMediaNowPlayingPlaybackStateFromString_sortedEnums + (((result - BMMediaNowPlayingPlaybackStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMediaNowPlayingMediaTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMediaNowPlayingMediaTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_109);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMediaNowPlayingMediaTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMediaNowPlayingMediaSubtypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMediaNowPlayingMediaSubtypeFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_132);
  if (result)
  {
    return *(&BMMediaNowPlayingMediaSubtypeFromString_sortedEnums + (((result - BMMediaNowPlayingMediaSubtypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMediaNowPlayingPlaybackStateAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B720[a1];
  }

  return v2;
}

__CFString *BMMediaNowPlayingMediaTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B750[a1];
  }

  return v2;
}

__CFString *BMMediaNowPlayingMediaSubtypeAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B768[a1];
  }

  return v2;
}

uint64_t BMMediaNowPlayingOutputDeviceTypeDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMediaNowPlayingOutputDeviceSubTypeDecode(uint64_t result)
{
  if (result >= 0x16)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMediaNowPlayingPlaybackStateDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMediaNowPlayingMediaTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMediaNowPlayingMediaSubtypeDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMCommCenterEmergencyVoiceCallMatchedEmNumSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMCommCenterEmergencyVoiceCallMatchedEmNumSourceFromString_sortedStrings, 0x11uLL, 8uLL, &__block_literal_global_9510);
  if (result)
  {
    return *(&BMCommCenterEmergencyVoiceCallMatchedEmNumSourceFromString_sortedEnums + (((result - BMCommCenterEmergencyVoiceCallMatchedEmNumSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMCommCenterEmergencyVoiceCallSIP380ProcedureFromString(const void *a1)
{
  result = bsearch_b(a1, BMCommCenterEmergencyVoiceCallSIP380ProcedureFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_69);
  if (result)
  {
    return *(&BMPhotosLiveTypeFromString_sortedEnums + (((result - BMCommCenterEmergencyVoiceCallSIP380ProcedureFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMCommCenterEmergencyVoiceCallEmergencyURNFromString(const void *a1)
{
  result = bsearch_b(a1, BMCommCenterEmergencyVoiceCallEmergencyURNFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_86);
  if (result)
  {
    return *(&BMCommCenterEmergencyVoiceCallEmergencyURNFromString_sortedEnums + (((result - BMCommCenterEmergencyVoiceCallEmergencyURNFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMCommCenterEmergencyVoiceCallMatchedEmNumSourceAsString(uint64_t a1)
{
  if (a1 >= 0x12)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B8D8[a1];
  }

  return v2;
}

__CFString *BMCommCenterEmergencyVoiceCallSIP380ProcedureAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B968[a1];
  }

  return v2;
}

__CFString *BMCommCenterEmergencyVoiceCallEmergencyURNAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8B990[a1];
  }

  return v2;
}

uint64_t BMCommCenterEmergencyVoiceCallMatchedEmNumSourceDecode(uint64_t result)
{
  if (result >= 0x12)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMCommCenterEmergencyVoiceCallSIP380ProcedureDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMCommCenterEmergencyVoiceCallEmergencyURNDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMAdPlatformsDiscardReasonsDiscardReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMAdPlatformsDiscardReasonsDiscardReasonFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_9780);
  if (result)
  {
    return *(&BMAdPlatformsDiscardReasonsDiscardReasonFromString_sortedEnums + (((result - BMAdPlatformsDiscardReasonsDiscardReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMAdPlatformsDiscardReasonsPlacementFromString(const void *a1)
{
  result = bsearch_b(a1, BMAdPlatformsDiscardReasonsPlacementFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_45_9743);
  if (result)
  {
    return *(&BMAdPlatformsOpportunityPlacementFromString_sortedEnums + (((result - BMAdPlatformsDiscardReasonsPlacementFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMAdPlatformsDiscardReasonsPlacementDecode(uint64_t result)
{
  if (result > 7004)
  {
    if ((result - 7005) >= 4 && result != 9000)
    {
      return 0;
    }
  }

  else if ((result - 100) >= 6 && result)
  {
    return 0;
  }

  return result;
}

__CFString *BMAdPlatformsDiscardReasonsDiscardReasonAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 2701)
    {
      v2 = @"Frequency";
    }

    else if (a1 == 2700)
    {
      v2 = @"Age";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *BMAdPlatformsDiscardReasonsPlacementAsString(uint64_t a1)
{
  if (a1 > 104)
  {
    if (a1 > 7006)
    {
      switch(a1)
      {
        case 0x1B5F:
          v2 = @"ASProduct";

          return v2;
        case 0x1B60:
          v2 = @"ASDownload";

          return v2;
        case 0x2328:
          v2 = @"Downey";

          return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x69:
          v2 = @"Audio";

          return v2;
        case 0x1B5D:
          v2 = @"ASLanding";

          return v2;
        case 0x1B5E:
          v2 = @"ASToday";

          return v2;
      }
    }

LABEL_51:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];

    return v2;
  }

  if (a1 > 101)
  {
    if (a1 == 102)
    {
      v2 = @"Grid";
    }

    else if (a1 == 103)
    {
      v2 = @"Interstitial";
    }

    else
    {
      v2 = @"Video";
    }
  }

  else if (a1)
  {
    if (a1 != 100)
    {
      if (a1 == 101)
      {
        v2 = @"List";

        return v2;
      }

      goto LABEL_51;
    }

    v2 = @"Content";
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

uint64_t BMAdPlatformsDiscardReasonsDiscardReasonDecode(uint64_t result)
{
  if ((result - 2700) < 2 || result == 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

_BYTE *BMIntelligencePlatformFeatureStoreCategoryTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMIntelligencePlatformFeatureStoreCategoryTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_10169);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMIntelligencePlatformFeatureStoreCategoryTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMIntelligencePlatformFeatureStoreCategoryTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8BB20[a1];
  }

  return v2;
}

uint64_t BMIntelligencePlatformFeatureStoreCategoryTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMAppIntentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_10416);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMAppIntentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMAppIntentHandlingStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentHandlingStatusFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_36_10391);
  if (result)
  {
    return *(&BMSiriRemembersInteractionInteractionStatusFromString_sortedEnums + (((result - BMAppIntentHandlingStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMAppIntentInteractionDirectionFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppIntentInteractionDirectionFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_47);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMAppIntentInteractionDirectionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppIntentTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8BC18[a1];
  }

  return v2;
}

__CFString *BMAppIntentHandlingStatusAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8BC38[a1];
  }

  return v2;
}

__CFString *BMAppIntentInteractionDirectionAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8BC78[a1];
  }

  return v2;
}

uint64_t BMAppIntentTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppIntentHandlingStatusDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMAppIntentInteractionDirectionDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMMLSEShareSheetFeedbackTimeoutOccurrenceFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSEShareSheetFeedbackTimeoutOccurrenceFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_10827);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMMLSEShareSheetFeedbackTimeoutOccurrenceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMLSEShareSheetFeedbackTimeoutOccurrenceAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8BE70[a1];
  }

  return v2;
}

_BYTE *BMMLSEShareSheetFeedbackEngagementTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSEShareSheetFeedbackEngagementTypeFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_33_11106);
  if (result)
  {
    return *(&BMMLSEShareSheetFeedbackEngagementTypeFromString_sortedEnums + (((result - BMMLSEShareSheetFeedbackEngagementTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMLSEShareSheetFeedbackInferenceSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSEShareSheetFeedbackInferenceSourceFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_41);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMMLSEShareSheetFeedbackInferenceSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMLSEShareSheetFeedbackEngagementTypeAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8BE88[a1];
  }

  return v2;
}

__CFString *BMMLSEShareSheetFeedbackInferenceSourceAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8BEC8[a1];
  }

  return v2;
}

uint64_t BMMLSEShareSheetFeedbackTimeoutOccurrenceDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMLSEShareSheetFeedbackEngagementTypeDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMLSEShareSheetFeedbackInferenceSourceDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *BMPhotosSearchTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Select";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

uint64_t BMPhotosSearchTypeDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketTimeBucketFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketTimeBucketFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_12388);
  if (result)
  {
    return *(&BMAppDocumentInteractionTypeFromString_sortedEnums + (((result - BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketTimeBucketFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketTimeBucketAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8C2D0[a1];
  }

  return v2;
}

_BYTE *BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHashedLocationFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHashedLocationFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_27_12647);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHashedLocationFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHashedLocationAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8C2F8[a1];
  }

  return v2;
}

_BYTE *BMSiriAssistantSuggestionFeaturesTemporalFeaturesTimePeriodFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriAssistantSuggestionFeaturesTemporalFeaturesTimePeriodFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_41_12661);
  if (result)
  {
    return *(&BMSiriAssistantSuggestionFeaturesTemporalFeaturesTimePeriodFromString_sortedEnums + (((result - BMSiriAssistantSuggestionFeaturesTemporalFeaturesTimePeriodFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriAssistantSuggestionFeaturesTemporalFeaturesTimePeriodAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8C318[a1];
  }

  return v2;
}

_BYTE *BMSiriAssistantSuggestionFeaturesLoggingTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriAssistantSuggestionFeaturesLoggingTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_49);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMSiriAssistantSuggestionFeaturesLoggingTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriAssistantSuggestionFeaturesLoggingTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8C340[a1];
  }

  return v2;
}

uint64_t BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketTimeBucketDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSiriAssistantSuggestionFeaturesEnvironmentFeaturesHashedLocationDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSiriAssistantSuggestionFeaturesTemporalFeaturesTimePeriodDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSiriAssistantSuggestionFeaturesLoggingTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSafariAutoPlayAutoPlaySignalFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariAutoPlayAutoPlaySignalFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_12860);
  if (result)
  {
    return *(&BMGeneratedImageFailureReasonFeatureFromString_sortedEnums + (((result - BMSafariAutoPlayAutoPlaySignalFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariAutoPlayAutoPlaySignalAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8C398[a1];
  }

  return v2;
}

uint64_t BMSafariAutoPlayAutoPlaySignalDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

id _CurrentBootSessionUUID()
{
  if (_CurrentBootSessionUUID_onceToken != -1)
  {
    dispatch_once(&_CurrentBootSessionUUID_onceToken, &__block_literal_global_7);
  }

  v1 = _CurrentBootSessionUUID_bootSessionUUID;

  return v1;
}

_BYTE *BMTextUnderstandingPoemAnalyticsSourcesFromString(const void *a1)
{
  result = bsearch_b(a1, BMTextUnderstandingPoemAnalyticsSourcesFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_13580);
  if (result)
  {
    return *(&BMTextUnderstandingPoemAnalyticsSourcesFromString_sortedEnums + (((result - BMTextUnderstandingPoemAnalyticsSourcesFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMTextUnderstandingPoemAnalyticsSourcesAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8C4C0[a1];
  }

  return v2;
}

uint64_t BMTextUnderstandingPoemAnalyticsSourcesDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketFromString_sortedStrings, 0x16uLL, 8uLL, &__block_literal_global_13801);
  if (result)
  {
    return *(&BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketFromString_sortedEnums + (((result - BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketAsString(uint64_t a1)
{
  if (a1 >= 0x17)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8DC70[a1];
  }

  return v2;
}

__CFString *BMMLSEVirtualFeatureStoreFeatureFeatureValueMissingReasonAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"NotAvailable";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

_BYTE *BMMLSEVirtualFeatureStoreFeaturefeatureNameFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSEVirtualFeatureStoreFeaturefeatureNameFromString_sortedStrings, 0x2C5uLL, 8uLL, &__block_literal_global_2204);
  if (result)
  {
    return *(&BMMLSEVirtualFeatureStoreFeaturefeatureNameFromString_sortedEnums + (((result - BMMLSEVirtualFeatureStoreFeaturefeatureNameFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMLSEVirtualFeatureStoreFeaturefeatureNameAsString(uint64_t a1)
{
  if (a1 >= 0x2C6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8DD28[a1];
  }

  return v2;
}

uint64_t BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketDecode(uint64_t result)
{
  if (result >= 0x17)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMLSEVirtualFeatureStoreFeatureFeatureValueMissingReasonDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMLSEVirtualFeatureStoreFeaturefeatureNameDecode(uint64_t result)
{
  if (result >= 0x2C6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMLifeEventActivityActivityTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMLifeEventActivityActivityTypeFromString_sortedStrings, 0x11uLL, 8uLL, &__block_literal_global_15449);
  if (result)
  {
    return *(&BMLifeEventActivityActivityTypeFromString_sortedEnums + (((result - BMLifeEventActivityActivityTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLifeEventActivityActivityTypeAsString(uint64_t a1)
{
  if (a1 >= 0x12)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F488[a1];
  }

  return v2;
}

uint64_t BMLifeEventActivityActivityTypeDecode(uint64_t result)
{
  if (result >= 0x12)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSleepScheduleStateStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMSleepScheduleStateStateFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_15645);
  if (result)
  {
    return *(&BMSleepScheduleStateStateFromString_sortedEnums + (((result - BMSleepScheduleStateStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSleepScheduleStateChangeReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMSleepScheduleStateChangeReasonFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_39);
  if (result)
  {
    return *(&BMSleepScheduleStateChangeReasonFromString_sortedEnums + (((result - BMSleepScheduleStateChangeReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSleepScheduleStateStateAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F598[a1];
  }

  return v2;
}

__CFString *BMSleepScheduleStateChangeReasonAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F5C8[a1];
  }

  return v2;
}

uint64_t BMSleepScheduleStateStateDecode(uint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSleepScheduleStateChangeReasonDecode(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMUserFocusSleepModeStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMUserFocusSleepModeStateFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_15842);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMUserFocusSleepModeStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMUserFocusSleepModeChangeReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMUserFocusSleepModeChangeReasonFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_42);
  if (result)
  {
    return *(&BMUserFocusSleepModeChangeReasonFromString_sortedEnums + (((result - BMUserFocusSleepModeChangeReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMUserFocusSleepModeStateAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F678[a1];
  }

  return v2;
}

__CFString *BMUserFocusSleepModeChangeReasonAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F698[a1];
  }

  return v2;
}

uint64_t BMUserFocusSleepModeStateDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMUserFocusSleepModeChangeReasonDecode(uint64_t result)
{
  if (result >= 0xA)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSiriRemembersInteractionInteractionStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriRemembersInteractionInteractionStatusFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_16276);
  if (result)
  {
    return *(&BMSiriRemembersInteractionInteractionStatusFromString_sortedEnums + (((result - BMSiriRemembersInteractionInteractionStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSiriRemembersInteractionInteractionDirectionFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriRemembersInteractionInteractionDirectionFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_36_16263);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMSiriRemembersInteractionInteractionDirectionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSiriRemembersInteractionInteractionSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriRemembersInteractionInteractionSourceFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_44_16251);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMSiriRemembersInteractionInteractionSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSiriRemembersInteractionUserDonatorTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriRemembersInteractionUserDonatorTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_55);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMSiriRemembersInteractionUserDonatorTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriRemembersInteractionInteractionStatusAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F7E8[a1];
  }

  return v2;
}

__CFString *BMSiriRemembersInteractionInteractionDirectionAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F828[a1];
  }

  return v2;
}

__CFString *BMSiriRemembersInteractionInteractionSourceAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F848[a1];
  }

  return v2;
}

__CFString *BMSiriRemembersInteractionUserDonatorTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F860[a1];
  }

  return v2;
}

uint64_t BMSiriRemembersInteractionInteractionStatusDecode(uint64_t result)
{
  if (result >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSiriRemembersInteractionInteractionDirectionDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSiriRemembersInteractionInteractionSourceDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSiriRemembersInteractionUserDonatorTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMLocationSemanticUserSpecificPlaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocationSemanticUserSpecificPlaceTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_16521);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMLocationSemanticUserSpecificPlaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMLocationSemanticPlaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocationSemanticPlaceTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_27_16508);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMLocationSemanticPlaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLocationSemanticUserSpecificPlaceTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F8D8[a1];
  }

  return v2;
}

__CFString *BMLocationSemanticPlaceTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F900[a1];
  }

  return v2;
}

uint64_t BMLocationSemanticUserSpecificPlaceTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMLocationSemanticPlaceTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSiriContextRefreshTriggersContextRefreshTriggerFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriContextRefreshTriggersContextRefreshTriggerFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_17078);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMSiriContextRefreshTriggersContextRefreshTriggerFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriContextRefreshTriggersContextRefreshTriggerAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8F9A8[a1];
  }

  return v2;
}

uint64_t BMSiriContextRefreshTriggersContextRefreshTriggerDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMPhotosCurationTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosCurationTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_17409);
  if (result)
  {
    return *(&BMWalletPaymentsCommerceTrackedOrderOrderStatusFromString_sortedEnums + (((result - BMPhotosCurationTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosCurationTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8FA10[a1];
  }

  return v2;
}

uint64_t BMPhotosCurationTypeDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMLocationEmergencySessionStartLocationProtocolFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocationEmergencySessionStartLocationProtocolFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_18237);
  if (result)
  {
    return *(&BMPhotosLiveTypeFromString_sortedEnums + (((result - BMLocationEmergencySessionStartLocationProtocolFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLocationEmergencySessionStartLocationProtocolAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8FB58[a1];
  }

  return v2;
}

uint64_t BMLocationEmergencySessionStartLocationProtocolDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *BMPhotosPickerTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Select";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

uint64_t BMPhotosPickerTypeDecode(uint64_t result)
{
  if (result >= 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSafariWindowProxyPropertyFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariWindowProxyPropertyFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_19719);
  if (result)
  {
    return *(&BMMessagesSearchEventBuildTypeFromString_sortedEnums + (((result - BMSafariWindowProxyPropertyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariWindowProxyPropertyAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8FD88[a1];
  }

  return v2;
}

uint64_t BMSafariWindowProxyPropertyDecode(uint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMAeroMLPhotosSearchDataCorrelationsUISurfaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAeroMLPhotosSearchDataCorrelationsUISurfaceTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_20536);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMAeroMLPhotosSearchDataCorrelationsUISurfaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMAeroMLPhotosSearchDataCorrelationsReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v185) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v185 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v185 & 0x7F) << v6;
      if ((v185 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = *(a1 + 88);
        *(a1 + 88) = v14;

        continue;
      case 2u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        while (1)
        {
          LOBYTE(v185) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v185 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v185 & 0x7F) << v82;
          if ((v185 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          if (v83++ > 8)
          {
            goto LABEL_216;
          }
        }

        if (([a2 hasError] & 1) != 0 || v84 > 3)
        {
LABEL_216:
          LODWORD(v84) = 0;
        }

        *(a1 + 72) = v84;
        continue;
      case 3u:
        *(a1 + 16) = 1;
        v185 = 0;
        v74 = [a2 position] + 8;
        if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 8, v75 <= objc_msgSend(a2, "length")))
        {
          v157 = [a2 data];
          [v157 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 96;
        goto LABEL_306;
      case 4u:
        *(a1 + 17) = 1;
        v185 = 0;
        v78 = [a2 position] + 8;
        if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 8, v79 <= objc_msgSend(a2, "length")))
        {
          v159 = [a2 data];
          [v159 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 104;
        goto LABEL_306;
      case 5u:
        *(a1 + 18) = 1;
        v185 = 0;
        v53 = [a2 position] + 8;
        if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 8, v54 <= objc_msgSend(a2, "length")))
        {
          v153 = [a2 data];
          [v153 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 112;
        goto LABEL_306;
      case 6u:
        *(a1 + 19) = 1;
        v185 = 0;
        v97 = [a2 position] + 8;
        if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 8, v98 <= objc_msgSend(a2, "length")))
        {
          v165 = [a2 data];
          [v165 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 120;
        goto LABEL_306;
      case 7u:
        *(a1 + 20) = 1;
        v185 = 0;
        v103 = [a2 position] + 8;
        if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 8, v104 <= objc_msgSend(a2, "length")))
        {
          v168 = [a2 data];
          [v168 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 128;
        goto LABEL_306;
      case 8u:
        *(a1 + 21) = 1;
        v185 = 0;
        v80 = [a2 position] + 8;
        if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 8, v81 <= objc_msgSend(a2, "length")))
        {
          v160 = [a2 data];
          [v160 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 136;
        goto LABEL_306;
      case 9u:
        *(a1 + 22) = 1;
        v185 = 0;
        v109 = [a2 position] + 8;
        if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 8, v110 <= objc_msgSend(a2, "length")))
        {
          v171 = [a2 data];
          [v171 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 144;
        goto LABEL_306;
      case 0xAu:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 23) = 1;
        while (1)
        {
          LOBYTE(v185) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v185 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v185 & 0x7F) << v64;
          if ((v185 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v44 = 0;
            goto LABEL_212;
          }
        }

        if ([a2 hasError])
        {
          v44 = 0;
        }

        else
        {
          v44 = v66;
        }

LABEL_212:
        v138 = 76;
        goto LABEL_213;
      case 0xBu:
        *(a1 + 24) = 1;
        v185 = 0;
        v107 = [a2 position] + 8;
        if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 8, v108 <= objc_msgSend(a2, "length")))
        {
          v170 = [a2 data];
          [v170 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 152;
        goto LABEL_306;
      case 0xCu:
        *(a1 + 25) = 1;
        v185 = 0;
        v45 = [a2 position] + 8;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
        {
          v152 = [a2 data];
          [v152 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 160;
        goto LABEL_306;
      case 0xDu:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 27) = 1;
        while (1)
        {
          LOBYTE(v185) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v185 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v185 & 0x7F) << v57;
          if ((v185 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v12 = v58++ >= 9;
          if (v12)
          {
            LOBYTE(v63) = 0;
            goto LABEL_208;
          }
        }

        v63 = (v59 != 0) & ~[a2 hasError];
LABEL_208:
        *(a1 + 26) = v63;
        continue;
      case 0xEu:
        *(a1 + 28) = 1;
        v185 = 0;
        v101 = [a2 position] + 8;
        if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 8, v102 <= objc_msgSend(a2, "length")))
        {
          v167 = [a2 data];
          [v167 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 168;
        goto LABEL_306;
      case 0xFu:
        *(a1 + 29) = 1;
        v185 = 0;
        v34 = [a2 position] + 8;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
        {
          v150 = [a2 data];
          [v150 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 176;
        goto LABEL_306;
      case 0x10u:
        *(a1 + 30) = 1;
        v185 = 0;
        v76 = [a2 position] + 8;
        if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 8, v77 <= objc_msgSend(a2, "length")))
        {
          v158 = [a2 data];
          [v158 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 184;
        goto LABEL_306;
      case 0x11u:
        *(a1 + 31) = 1;
        v185 = 0;
        v30 = [a2 position] + 8;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
        {
          v148 = [a2 data];
          [v148 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 192;
        goto LABEL_306;
      case 0x12u:
        *(a1 + 32) = 1;
        v185 = 0;
        v91 = [a2 position] + 8;
        if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 8, v92 <= objc_msgSend(a2, "length")))
        {
          v162 = [a2 data];
          [v162 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 200;
        goto LABEL_306;
      case 0x13u:
        *(a1 + 33) = 1;
        v185 = 0;
        v105 = [a2 position] + 8;
        if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 8, v106 <= objc_msgSend(a2, "length")))
        {
          v169 = [a2 data];
          [v169 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 208;
        goto LABEL_306;
      case 0x14u:
        *(a1 + 34) = 1;
        v185 = 0;
        v121 = [a2 position] + 8;
        if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 8, v122 <= objc_msgSend(a2, "length")))
        {
          v177 = [a2 data];
          [v177 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 216;
        goto LABEL_306;
      case 0x15u:
        *(a1 + 35) = 1;
        v185 = 0;
        v95 = [a2 position] + 8;
        if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 8, v96 <= objc_msgSend(a2, "length")))
        {
          v164 = [a2 data];
          [v164 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 224;
        goto LABEL_306;
      case 0x16u:
        *(a1 + 36) = 1;
        v185 = 0;
        v99 = [a2 position] + 8;
        if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 8, v100 <= objc_msgSend(a2, "length")))
        {
          v166 = [a2 data];
          [v166 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 232;
        goto LABEL_306;
      case 0x17u:
        *(a1 + 37) = 1;
        v185 = 0;
        v117 = [a2 position] + 8;
        if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 8, v118 <= objc_msgSend(a2, "length")))
        {
          v175 = [a2 data];
          [v175 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 240;
        goto LABEL_306;
      case 0x18u:
        *(a1 + 38) = 1;
        v185 = 0;
        v125 = [a2 position] + 8;
        if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 8, v126 <= objc_msgSend(a2, "length")))
        {
          v179 = [a2 data];
          [v179 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 248;
        goto LABEL_306;
      case 0x19u:
        *(a1 + 39) = 1;
        v185 = 0;
        v72 = [a2 position] + 8;
        if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 8, v73 <= objc_msgSend(a2, "length")))
        {
          v156 = [a2 data];
          [v156 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 256;
        goto LABEL_306;
      case 0x1Au:
        *(a1 + 40) = 1;
        v185 = 0;
        v70 = [a2 position] + 8;
        if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 8, v71 <= objc_msgSend(a2, "length")))
        {
          v155 = [a2 data];
          [v155 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 264;
        goto LABEL_306;
      case 0x1Bu:
        *(a1 + 41) = 1;
        v185 = 0;
        v133 = [a2 position] + 8;
        if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 8, v134 <= objc_msgSend(a2, "length")))
        {
          v183 = [a2 data];
          [v183 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 272;
        goto LABEL_306;
      case 0x1Cu:
        *(a1 + 42) = 1;
        v185 = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v146 = [a2 data];
          [v146 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 280;
        goto LABEL_306;
      case 0x1Du:
        *(a1 + 43) = 1;
        v185 = 0;
        v127 = [a2 position] + 8;
        if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 8, v128 <= objc_msgSend(a2, "length")))
        {
          v180 = [a2 data];
          [v180 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 288;
        goto LABEL_306;
      case 0x1Eu:
        *(a1 + 44) = 1;
        v185 = 0;
        v129 = [a2 position] + 8;
        if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 8, v130 <= objc_msgSend(a2, "length")))
        {
          v181 = [a2 data];
          [v181 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 296;
        goto LABEL_306;
      case 0x1Fu:
        *(a1 + 45) = 1;
        v185 = 0;
        v111 = [a2 position] + 8;
        if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 8, v112 <= objc_msgSend(a2, "length")))
        {
          v172 = [a2 data];
          [v172 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 304;
        goto LABEL_306;
      case 0x20u:
        *(a1 + 46) = 1;
        v185 = 0;
        v89 = [a2 position] + 8;
        if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 8, v90 <= objc_msgSend(a2, "length")))
        {
          v161 = [a2 data];
          [v161 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 312;
        goto LABEL_306;
      case 0x21u:
        *(a1 + 47) = 1;
        v185 = 0;
        v113 = [a2 position] + 8;
        if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 8, v114 <= objc_msgSend(a2, "length")))
        {
          v173 = [a2 data];
          [v173 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 320;
        goto LABEL_306;
      case 0x22u:
        *(a1 + 48) = 1;
        v185 = 0;
        v36 = [a2 position] + 8;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
        {
          v151 = [a2 data];
          [v151 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 328;
        goto LABEL_306;
      case 0x23u:
        *(a1 + 49) = 1;
        v185 = 0;
        v28 = [a2 position] + 8;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
        {
          v147 = [a2 data];
          [v147 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 336;
        goto LABEL_306;
      case 0x24u:
        *(a1 + 50) = 1;
        v185 = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v144 = [a2 data];
          [v144 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 344;
        goto LABEL_306;
      case 0x25u:
        *(a1 + 51) = 1;
        v185 = 0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v145 = [a2 data];
          [v145 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 352;
        goto LABEL_306;
      case 0x26u:
        *(a1 + 52) = 1;
        v185 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v142 = [a2 data];
          [v142 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 360;
        goto LABEL_306;
      case 0x27u:
        *(a1 + 53) = 1;
        v185 = 0;
        v131 = [a2 position] + 8;
        if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 8, v132 <= objc_msgSend(a2, "length")))
        {
          v182 = [a2 data];
          [v182 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 368;
        goto LABEL_306;
      case 0x28u:
        *(a1 + 54) = 1;
        v185 = 0;
        v119 = [a2 position] + 8;
        if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 8, v120 <= objc_msgSend(a2, "length")))
        {
          v176 = [a2 data];
          [v176 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 376;
        goto LABEL_306;
      case 0x29u:
        *(a1 + 55) = 1;
        v185 = 0;
        v55 = [a2 position] + 8;
        if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 8, v56 <= objc_msgSend(a2, "length")))
        {
          v154 = [a2 data];
          [v154 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 384;
        goto LABEL_306;
      case 0x2Au:
        *(a1 + 56) = 1;
        v185 = 0;
        v93 = [a2 position] + 8;
        if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 8, v94 <= objc_msgSend(a2, "length")))
        {
          v163 = [a2 data];
          [v163 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 392;
        goto LABEL_306;
      case 0x2Bu:
        *(a1 + 57) = 1;
        v185 = 0;
        v123 = [a2 position] + 8;
        if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 8, v124 <= objc_msgSend(a2, "length")))
        {
          v178 = [a2 data];
          [v178 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 400;
        goto LABEL_306;
      case 0x2Cu:
        *(a1 + 58) = 1;
        v185 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v139 = [a2 data];
          [v139 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 408;
        goto LABEL_306;
      case 0x2Du:
        *(a1 + 59) = 1;
        v185 = 0;
        v32 = [a2 position] + 8;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
        {
          v149 = [a2 data];
          [v149 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 416;
        goto LABEL_306;
      case 0x2Eu:
        *(a1 + 60) = 1;
        v185 = 0;
        v115 = [a2 position] + 8;
        if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 8, v116 <= objc_msgSend(a2, "length")))
        {
          v174 = [a2 data];
          [v174 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 424;
        goto LABEL_306;
      case 0x2Fu:
        *(a1 + 61) = 1;
        v185 = 0;
        v135 = [a2 position] + 8;
        if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 8, v136 <= objc_msgSend(a2, "length")))
        {
          v184 = [a2 data];
          [v184 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 432;
        goto LABEL_306;
      case 0x30u:
        *(a1 + 62) = 1;
        v185 = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v143 = [a2 data];
          [v143 getBytes:&v185 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v140 = v185;
        v141 = 440;
LABEL_306:
        *(a1 + v141) = v140;
        continue;
      case 0x31u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 63) = 1;
        while (1)
        {
          LOBYTE(v185) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v185 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v185 & 0x7F) << v38;
          if ((v185 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v12 = v39++ >= 9;
          if (v12)
          {
            v44 = 0;
            goto LABEL_202;
          }
        }

        if ([a2 hasError])
        {
          v44 = 0;
        }

        else
        {
          v44 = v40;
        }

LABEL_202:
        v138 = 80;
        goto LABEL_213;
      case 0x32u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 64) = 1;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v185) = 0;
      v50 = [a2 position] + 1;
      if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
      {
        v52 = [a2 data];
        [v52 getBytes:&v185 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v49 |= (v185 & 0x7F) << v47;
      if ((v185 & 0x80) == 0)
      {
        break;
      }

      v47 += 7;
      v12 = v48++ >= 9;
      if (v12)
      {
        v44 = 0;
        goto LABEL_206;
      }
    }

    if ([a2 hasError])
    {
      v44 = 0;
    }

    else
    {
      v44 = v49;
    }

LABEL_206:
    v138 = 84;
LABEL_213:
    *(a1 + v138) = v44;
  }

  return [a2 hasError] ^ 1;
}

__CFString *BMAeroMLPhotosSearchDataCorrelationsUISurfaceTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8FF70[a1];
  }

  return v2;
}

uint64_t BMAeroMLPhotosSearchDataCorrelationsUISurfaceTypeDecode(uint64_t result)
{
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMWebAppInFocusWebAppTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWebAppInFocusWebAppTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_20795);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMWebAppInFocusWebAppTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWebAppInFocusWebAppTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E8FFD8[a1];
  }

  return v2;
}

uint64_t BMWebAppInFocusWebAppTypeDecode(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMSiriMusicInferenceTrainingIndependentSignalsInferenceAppResolutionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriMusicInferenceTrainingIndependentSignalsInferenceAppResolutionTypeFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_21219);
  if (result)
  {
    return *(&BMSiriMusicInferenceTrainingIndependentSignalsInferenceAppResolutionTypeFromString_sortedEnums + (((result - BMSiriMusicInferenceTrainingIndependentSignalsInferenceAppResolutionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriMusicInferenceTrainingIndependentSignalsInferenceAppResolutionTypeAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E902A0[a1];
  }

  return v2;
}

uint64_t BMSiriMusicInferenceTrainingDependentSignalsReadFrom(_BYTE *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v285) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v285 & 0x7F) << v6;
      if ((v285 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        a1[17] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v285 & 0x7F) << v14;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
LABEL_446:
            v269 = 16;
            goto LABEL_509;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
        goto LABEL_446;
      case 2u:
        a1[18] = 1;
        v285 = 0;
        v130 = [a2 position] + 8;
        if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 8, v131 <= objc_msgSend(a2, "length")))
        {
          v282 = [a2 data];
          [v282 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 168;
        goto LABEL_539;
      case 3u:
        a1[19] = 1;
        v285 = 0;
        v114 = [a2 position] + 8;
        if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 8, v115 <= objc_msgSend(a2, "length")))
        {
          v280 = [a2 data];
          [v280 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 176;
        goto LABEL_539;
      case 4u:
        a1[20] = 1;
        v285 = 0;
        v122 = [a2 position] + 8;
        if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 8, v123 <= objc_msgSend(a2, "length")))
        {
          v281 = [a2 data];
          [v281 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 184;
        goto LABEL_539;
      case 5u:
        a1[21] = 1;
        v285 = 0;
        v90 = [a2 position] + 8;
        if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 8, v91 <= objc_msgSend(a2, "length")))
        {
          v277 = [a2 data];
          [v277 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 192;
        goto LABEL_539;
      case 6u:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        a1[23] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            v161 = [a2 data];
            [v161 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v285 & 0x7F) << v156;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v12 = v157++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_460;
          }
        }

        v20 = (v158 != 0) & ~[a2 hasError];
LABEL_460:
        v269 = 22;
        goto LABEL_509;
      case 7u:
        v174 = 0;
        v175 = 0;
        v176 = 0;
        a1[25] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v177 = [a2 position] + 1;
          if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 1, v178 <= objc_msgSend(a2, "length")))
          {
            v179 = [a2 data];
            [v179 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v176 |= (v285 & 0x7F) << v174;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v174 += 7;
          v12 = v175++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_470;
          }
        }

        v20 = (v176 != 0) & ~[a2 hasError];
LABEL_470:
        v269 = 24;
        goto LABEL_509;
      case 8u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        a1[26] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            v129 = [a2 data];
            [v129 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v285 & 0x7F) << v124;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v12 = v125++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_444;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v126;
        }

LABEL_444:
        v270 = 92;
        goto LABEL_514;
      case 9u:
        a1[27] = 1;
        v285 = 0;
        v192 = [a2 position] + 8;
        if (v192 >= [a2 position] && (v193 = objc_msgSend(a2, "position") + 8, v193 <= objc_msgSend(a2, "length")))
        {
          v283 = [a2 data];
          [v283 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 200;
        goto LABEL_539;
      case 0xAu:
        a1[28] = 1;
        v285 = 0;
        v100 = [a2 position] + 8;
        if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 8, v101 <= objc_msgSend(a2, "length")))
        {
          v279 = [a2 data];
          [v279 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 208;
        goto LABEL_539;
      case 0xBu:
        v186 = 0;
        v187 = 0;
        v188 = 0;
        a1[30] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v189 = [a2 position] + 1;
          if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
          {
            v191 = [a2 data];
            [v191 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v188 |= (v285 & 0x7F) << v186;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v186 += 7;
          v12 = v187++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_474;
          }
        }

        v20 = (v188 != 0) & ~[a2 hasError];
LABEL_474:
        v269 = 29;
        goto LABEL_509;
      case 0xCu:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        a1[31] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v285 & 0x7F) << v78;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_422;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v80;
        }

LABEL_422:
        v270 = 96;
        goto LABEL_514;
      case 0xDu:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        a1[32] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v285 & 0x7F) << v94;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_430;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v96;
        }

LABEL_430:
        v270 = 100;
        goto LABEL_514;
      case 0xEu:
        v168 = 0;
        v169 = 0;
        v170 = 0;
        a1[33] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v171 = [a2 position] + 1;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
          {
            v173 = [a2 data];
            [v173 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v170 |= (v285 & 0x7F) << v168;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v168 += 7;
          v12 = v169++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_468;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v170;
        }

LABEL_468:
        v270 = 104;
        goto LABEL_514;
      case 0xFu:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        a1[35] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v285 & 0x7F) << v64;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_414;
          }
        }

        v20 = (v66 != 0) & ~[a2 hasError];
LABEL_414:
        v269 = 34;
        goto LABEL_509;
      case 0x10u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        a1[37] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v285 & 0x7F) << v116;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v12 = v117++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_440;
          }
        }

        v20 = (v118 != 0) & ~[a2 hasError];
LABEL_440:
        v269 = 36;
        goto LABEL_509;
      case 0x11u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        a1[39] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v285 & 0x7F) << v52;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_410;
          }
        }

        v20 = (v54 != 0) & ~[a2 hasError];
LABEL_410:
        v269 = 38;
        goto LABEL_509;
      case 0x12u:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        a1[41] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v141 = [a2 position] + 1;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
          {
            v143 = [a2 data];
            [v143 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v140 |= (v285 & 0x7F) << v138;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v12 = v139++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_452;
          }
        }

        v20 = (v140 != 0) & ~[a2 hasError];
LABEL_452:
        v269 = 40;
        goto LABEL_509;
      case 0x13u:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        a1[43] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            v185 = [a2 data];
            [v185 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v182 |= (v285 & 0x7F) << v180;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v180 += 7;
          v12 = v181++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_472;
          }
        }

        v20 = (v182 != 0) & ~[a2 hasError];
LABEL_472:
        v269 = 42;
        goto LABEL_509;
      case 0x14u:
        v224 = 0;
        v225 = 0;
        v226 = 0;
        a1[45] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v227 = [a2 position] + 1;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
          {
            v229 = [a2 data];
            [v229 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v226 |= (v285 & 0x7F) << v224;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v224 += 7;
          v12 = v225++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_492;
          }
        }

        v20 = (v226 != 0) & ~[a2 hasError];
LABEL_492:
        v269 = 44;
        goto LABEL_509;
      case 0x15u:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        a1[46] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v285 & 0x7F) << v150;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_458;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v152;
        }

LABEL_458:
        v270 = 108;
        goto LABEL_514;
      case 0x16u:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        a1[47] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v164 |= (v285 & 0x7F) << v162;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v12 = v163++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_464;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v164;
        }

LABEL_464:
        v270 = 112;
        goto LABEL_514;
      case 0x17u:
        v212 = 0;
        v213 = 0;
        v214 = 0;
        a1[48] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v215 = [a2 position] + 1;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
          {
            v217 = [a2 data];
            [v217 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v214 |= (v285 & 0x7F) << v212;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v212 += 7;
          v12 = v213++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_488;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v214;
        }

LABEL_488:
        v270 = 116;
        goto LABEL_514;
      case 0x18u:
        v236 = 0;
        v237 = 0;
        v238 = 0;
        a1[49] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v239 = [a2 position] + 1;
          if (v239 >= [a2 position] && (v240 = objc_msgSend(a2, "position") + 1, v240 <= objc_msgSend(a2, "length")))
          {
            v241 = [a2 data];
            [v241 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v238 |= (v285 & 0x7F) << v236;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v236 += 7;
          v12 = v237++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_498;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v238;
        }

LABEL_498:
        v270 = 120;
        goto LABEL_514;
      case 0x19u:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        a1[50] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            v113 = [a2 data];
            [v113 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v110 |= (v285 & 0x7F) << v108;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v12 = v109++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_438;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v110;
        }

LABEL_438:
        v270 = 124;
        goto LABEL_514;
      case 0x1Au:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        a1[51] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v285 & 0x7F) << v102;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v12 = v103++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_434;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v104;
        }

LABEL_434:
        v270 = 128;
        goto LABEL_514;
      case 0x1Bu:
        v260 = 0;
        v261 = 0;
        v262 = 0;
        a1[52] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v263 = [a2 position] + 1;
          if (v263 >= [a2 position] && (v264 = objc_msgSend(a2, "position") + 1, v264 <= objc_msgSend(a2, "length")))
          {
            v265 = [a2 data];
            [v265 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v262 |= (v285 & 0x7F) << v260;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v260 += 7;
          v12 = v261++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_513;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v262;
        }

LABEL_513:
        v270 = 132;
        goto LABEL_514;
      case 0x1Cu:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        a1[53] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v285 & 0x7F) << v43;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_408;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v45;
        }

LABEL_408:
        v270 = 136;
        goto LABEL_514;
      case 0x1Du:
        v242 = 0;
        v243 = 0;
        v244 = 0;
        a1[54] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v245 = [a2 position] + 1;
          if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 1, v246 <= objc_msgSend(a2, "length")))
          {
            v247 = [a2 data];
            [v247 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v244 |= (v285 & 0x7F) << v242;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v242 += 7;
          v12 = v243++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_502;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v244;
        }

LABEL_502:
        v270 = 140;
        goto LABEL_514;
      case 0x1Eu:
        v248 = 0;
        v249 = 0;
        v250 = 0;
        a1[55] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v251 = [a2 position] + 1;
          if (v251 >= [a2 position] && (v252 = objc_msgSend(a2, "position") + 1, v252 <= objc_msgSend(a2, "length")))
          {
            v253 = [a2 data];
            [v253 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v250 |= (v285 & 0x7F) << v248;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v248 += 7;
          v12 = v249++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_506;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v250;
        }

LABEL_506:
        v270 = 144;
        goto LABEL_514;
      case 0x1Fu:
        v194 = 0;
        v195 = 0;
        v196 = 0;
        a1[56] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v197 = [a2 position] + 1;
          if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
          {
            v199 = [a2 data];
            [v199 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v196 |= (v285 & 0x7F) << v194;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v194 += 7;
          v12 = v195++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_478;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v196;
        }

LABEL_478:
        v270 = 148;
        goto LABEL_514;
      case 0x20u:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        a1[57] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            v137 = [a2 data];
            [v137 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v134 |= (v285 & 0x7F) << v132;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v12 = v133++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_450;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v134;
        }

LABEL_450:
        v270 = 152;
        goto LABEL_514;
      case 0x21u:
        v200 = 0;
        v201 = 0;
        v202 = 0;
        a1[58] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v203 = [a2 position] + 1;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
          {
            v205 = [a2 data];
            [v205 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v202 |= (v285 & 0x7F) << v200;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v200 += 7;
          v12 = v201++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_482;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v202;
        }

LABEL_482:
        v270 = 156;
        goto LABEL_514;
      case 0x22u:
        a1[59] = 1;
        v285 = 0;
        v70 = [a2 position] + 8;
        if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 8, v71 <= objc_msgSend(a2, "length")))
        {
          v276 = [a2 data];
          [v276 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 216;
        goto LABEL_539;
      case 0x23u:
        a1[60] = 1;
        v285 = 0;
        v50 = [a2 position] + 8;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
        {
          v275 = [a2 data];
          [v275 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 224;
        goto LABEL_539;
      case 0x24u:
        a1[61] = 1;
        v285 = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v274 = [a2 data];
          [v274 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 232;
        goto LABEL_539;
      case 0x25u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        a1[63] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v285 & 0x7F) << v37;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_404;
          }
        }

        v20 = (v39 != 0) & ~[a2 hasError];
LABEL_404:
        v269 = 62;
        goto LABEL_509;
      case 0x26u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        a1[65] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v285 & 0x7F) << v27;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v12 = v28++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_402;
          }
        }

        v20 = (v29 != 0) & ~[a2 hasError];
LABEL_402:
        v269 = 64;
        goto LABEL_509;
      case 0x27u:
        v254 = 0;
        v255 = 0;
        v256 = 0;
        a1[67] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v257 = [a2 position] + 1;
          if (v257 >= [a2 position] && (v258 = objc_msgSend(a2, "position") + 1, v258 <= objc_msgSend(a2, "length")))
          {
            v259 = [a2 data];
            [v259 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v256 |= (v285 & 0x7F) << v254;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v254 += 7;
          v12 = v255++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_508;
          }
        }

        v20 = (v256 != 0) & ~[a2 hasError];
LABEL_508:
        v269 = 66;
        goto LABEL_509;
      case 0x28u:
        v218 = 0;
        v219 = 0;
        v220 = 0;
        a1[69] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v221 = [a2 position] + 1;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
          {
            v223 = [a2 data];
            [v223 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v220 |= (v285 & 0x7F) << v218;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v12 = v219++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_490;
          }
        }

        v20 = (v220 != 0) & ~[a2 hasError];
LABEL_490:
        v269 = 68;
        goto LABEL_509;
      case 0x29u:
        a1[70] = 1;
        v285 = 0;
        v92 = [a2 position] + 8;
        if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 8, v93 <= objc_msgSend(a2, "length")))
        {
          v278 = [a2 data];
          [v278 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 240;
        goto LABEL_539;
      case 0x2Au:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        a1[72] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v147 = [a2 position] + 1;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
          {
            v149 = [a2 data];
            [v149 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v146 |= (v285 & 0x7F) << v144;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v12 = v145++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_454;
          }
        }

        v20 = (v146 != 0) & ~[a2 hasError];
LABEL_454:
        v269 = 71;
        goto LABEL_509;
      case 0x2Bu:
        v230 = 0;
        v231 = 0;
        v232 = 0;
        a1[74] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v233 = [a2 position] + 1;
          if (v233 >= [a2 position] && (v234 = objc_msgSend(a2, "position") + 1, v234 <= objc_msgSend(a2, "length")))
          {
            v235 = [a2 data];
            [v235 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v232 |= (v285 & 0x7F) << v230;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v230 += 7;
          v12 = v231++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_494;
          }
        }

        v20 = (v232 != 0) & ~[a2 hasError];
LABEL_494:
        v269 = 73;
        goto LABEL_509;
      case 0x2Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        a1[76] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v285 & 0x7F) << v21;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_400;
          }
        }

        v20 = (v23 != 0) & ~[a2 hasError];
LABEL_400:
        v269 = 75;
        goto LABEL_509;
      case 0x2Du:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        a1[78] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v285 & 0x7F) << v58;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_412;
          }
        }

        v20 = (v60 != 0) & ~[a2 hasError];
LABEL_412:
        v269 = 77;
        goto LABEL_509;
      case 0x2Eu:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        a1[80] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v209 = [a2 position] + 1;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
          {
            v211 = [a2 data];
            [v211 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v208 |= (v285 & 0x7F) << v206;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v12 = v207++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_484;
          }
        }

        v20 = (v208 != 0) & ~[a2 hasError];
LABEL_484:
        v269 = 79;
LABEL_509:
        a1[v269] = v20;
        continue;
      case 0x2Fu:
        a1[81] = 1;
        v285 = 0;
        v266 = [a2 position] + 8;
        if (v266 >= [a2 position] && (v267 = objc_msgSend(a2, "position") + 8, v267 <= objc_msgSend(a2, "length")))
        {
          v284 = [a2 data];
          [v284 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 248;
        goto LABEL_539;
      case 0x30u:
        a1[82] = 1;
        v285 = 0;
        v33 = [a2 position] + 8;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
        {
          v271 = [a2 data];
          [v271 getBytes:&v285 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v272 = v285;
        v273 = 256;
LABEL_539:
        *&a1[v273] = v272;
        continue;
      case 0x31u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        a1[83] = 1;
        while (1)
        {
          LOBYTE(v285) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v285 & 0x7F) << v72;
          if ((v285 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_418;
          }
        }

        if ([a2 hasError])
        {
          v49 = 0;
        }

        else
        {
          v49 = v74;
        }

LABEL_418:
        v270 = 160;
        goto LABEL_514;
      case 0x32u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        a1[84] = 1;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v285) = 0;
      v87 = [a2 position] + 1;
      if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
      {
        v89 = [a2 data];
        [v89 getBytes:&v285 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v86 |= (v285 & 0x7F) << v84;
      if ((v285 & 0x80) == 0)
      {
        break;
      }

      v84 += 7;
      v12 = v85++ >= 9;
      if (v12)
      {
        v49 = 0;
        goto LABEL_426;
      }
    }

    if ([a2 hasError])
    {
      v49 = 0;
    }

    else
    {
      v49 = v86;
    }

LABEL_426:
    v270 = 164;
LABEL_514:
    *&a1[v270] = v49;
  }

  return [a2 hasError] ^ 1;
}