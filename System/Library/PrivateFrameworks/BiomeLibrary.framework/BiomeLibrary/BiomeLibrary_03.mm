_BYTE *BMLighthouseLedgerDediscoPrivacyEventAggregateFunctionFromString(const void *a1)
{
  result = bsearch_b(a1, BMLighthouseLedgerDediscoPrivacyEventAggregateFunctionFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_30_60617);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMLighthouseLedgerDediscoPrivacyEventAggregateFunctionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLighthouseLedgerDediscoPrivacyEventAggregateFunctionAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98A68[a1];
  }

  return v2;
}

uint64_t BMLighthouseLedgerDediscoPrivacyEventEventPhaseDecode(uint64_t result)
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

uint64_t BMLighthouseLedgerDediscoPrivacyEventAggregateFunctionDecode(uint64_t result)
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

_BYTE *BMHomeKitAccessoryStateValueTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMHomeKitAccessoryStateValueTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_60934);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMHomeKitAccessoryStateValueTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMHomeKitAccessoryStateValueTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98AD0[a1];
  }

  return v2;
}

uint64_t BMHomeKitAccessoryStateValueTypeDecode(uint64_t result)
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

_BYTE *BMDiscoverabilityUsageContentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMDiscoverabilityUsageContentTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_45_61835);
  if (result)
  {
    return *(&BMDiscoverabilityUsageContentTypeFromString_sortedEnums + (((result - BMDiscoverabilityUsageContentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDiscoverabilityUsageIneligibleReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMDiscoverabilityUsageIneligibleReasonFromString_sortedStrings, 0x18uLL, 8uLL, &__block_literal_global_119);
  if (result)
  {
    return *(&BMDiscoverabilityUsageIneligibleReasonFromString_sortedEnums + (((result - BMDiscoverabilityUsageIneligibleReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDiscoverabilityUsageStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMDiscoverabilityUsageStateFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_61728);
  if (result)
  {
    return *(&BMDiscoverabilityUsageStateFromString_sortedEnums + (((result - BMDiscoverabilityUsageStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDiscoverabilityUsageContentTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98D60[a1];
  }

  return v2;
}

__CFString *BMDiscoverabilityUsageIneligibleReasonAsString(uint64_t a1)
{
  if (a1 >= 0x19)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98D88[a1];
  }

  return v2;
}

__CFString *BMDiscoverabilityUsageStateAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98D10[a1];
  }

  return v2;
}

uint64_t BMDiscoverabilityUsageStateDecode(uint64_t result)
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

uint64_t BMDiscoverabilityUsageContentTypeDecode(uint64_t result)
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

uint64_t BMDiscoverabilityUsageIneligibleReasonDecode(uint64_t result)
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

_BYTE *BMEnergyModeModeFromString(const void *a1)
{
  result = bsearch_b(a1, BMEnergyModeModeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_42_62744);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMEnergyModeModeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMEnergyModeReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMEnergyModeReasonFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_62713);
  if (result)
  {
    return *(&BMEnergyModeReasonFromString_sortedEnums + (((result - BMEnergyModeReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMEnergyModeModeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98FE0[a1];
  }

  return v2;
}

__CFString *BMEnergyModeReasonAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E98F90[a1];
  }

  return v2;
}

uint64_t BMEnergyModeReasonDecode(uint64_t result)
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

uint64_t BMEnergyModeModeDecode(uint64_t result)
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

_BYTE *BMDeviceNightShiftReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceNightShiftReasonFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_63816);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMDeviceNightShiftReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceNightShiftReasonAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99138[a1];
  }

  return v2;
}

uint64_t BMDeviceNightShiftReasonDecode(uint64_t result)
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

_BYTE *BMDeviceSilentModeClientTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceSilentModeClientTypeFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_65208);
  if (result)
  {
    return *(&BMDeviceSilentModeClientTypeFromString_sortedEnums + (((result - BMDeviceSilentModeClientTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceSilentModeClientTypeAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99370[a1];
  }

  return v2;
}

uint64_t BMDeviceSilentModeClientTypeDecode(uint64_t result)
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

_BYTE *BMPhotosAutonamingSuggestionsFeedbackFeedbackTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosAutonamingSuggestionsFeedbackFeedbackTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_65424);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMPhotosAutonamingSuggestionsFeedbackFeedbackTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMPhotosAutonamingSuggestionsFeedbackAssociationTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosAutonamingSuggestionsFeedbackAssociationTypeFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_39_65396);
  if (result)
  {
    return *(&BMPhotosAutonamingSuggestionsFeedbackAssociationTypeFromString_sortedEnums + (((result - BMPhotosAutonamingSuggestionsFeedbackAssociationTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosAutonamingSuggestionsFeedbackFeedbackTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99438[a1];
  }

  return v2;
}

__CFString *BMPhotosAutonamingSuggestionsFeedbackAssociationTypeAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99458[a1];
  }

  return v2;
}

uint64_t BMPhotosAutonamingSuggestionsFeedbackFeedbackTypeDecode(uint64_t result)
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

uint64_t BMPhotosAutonamingSuggestionsFeedbackAssociationTypeDecode(uint64_t result)
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

_BYTE *BMPlaceInferencePlaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPlaceInferencePlaceTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_66380);
  if (result)
  {
    return *(&BMWalletPaymentsCommercePaymentRingSuggestionsAccountStateFromString_sortedEnums + (((result - BMPlaceInferencePlaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMPlaceInferenceUserSpecificPlaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPlaceInferenceUserSpecificPlaceTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_30_66364);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMPlaceInferenceUserSpecificPlaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMPlaceInferenceUserSpecificPlaceTypeSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMPlaceInferenceUserSpecificPlaceTypeSourceFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_47_66347);
  if (result)
  {
    return *(&BMPlaceInferenceUserSpecificPlaceTypeSourceFromString_sortedEnums + (((result - BMPlaceInferenceUserSpecificPlaceTypeSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPlaceInferencePlaceTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99710[a1];
  }

  return v2;
}

__CFString *BMPlaceInferenceUserSpecificPlaceTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99738[a1];
  }

  return v2;
}

__CFString *BMPlaceInferenceUserSpecificPlaceTypeSourceAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99760[a1];
  }

  return v2;
}

_BYTE *BMLocationVisitLocationReferenceFrameFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocationVisitLocationReferenceFrameFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_55_66510);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMLocationVisitLocationReferenceFrameFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMLocationVisitLocationSourceAccuracyFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocationVisitLocationSourceAccuracyFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_63_66502);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMLocationVisitLocationSourceAccuracyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLocationVisitLocationReferenceFrameAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99790[a1];
  }

  return v2;
}

__CFString *BMLocationVisitLocationSourceAccuracyAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E997A8[a1];
  }

  return v2;
}

_BYTE *BMLocationVisitTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocationVisitTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_74_66608);
  if (result)
  {
    return *(&BMGeneratedImageFailureReasonFeatureFromString_sortedEnums + (((result - BMLocationVisitTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMLocationVisitSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocationVisitSourceFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_85);
  if (result)
  {
    return *(&BMGeneratedImageFailureReasonFeatureFromString_sortedEnums + (((result - BMLocationVisitSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLocationVisitTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E997C0[a1];
  }

  return v2;
}

__CFString *BMLocationVisitSourceAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E997E0[a1];
  }

  return v2;
}

uint64_t BMPlaceInferencePlaceTypeDecode(uint64_t result)
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

uint64_t BMPlaceInferenceUserSpecificPlaceTypeDecode(uint64_t result)
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

uint64_t BMPlaceInferenceUserSpecificPlaceTypeSourceDecode(uint64_t result)
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

uint64_t BMLocationVisitLocationReferenceFrameDecode(uint64_t result)
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

uint64_t BMLocationVisitLocationSourceAccuracyDecode(uint64_t result)
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

uint64_t BMLocationVisitTypeDecode(uint64_t result)
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

uint64_t BMLocationVisitSourceDecode(uint64_t result)
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

_BYTE *BMCameraCaptureAutoFocusROIFocusRegionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMCameraCaptureAutoFocusROIFocusRegionTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_67141);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMCameraCaptureAutoFocusROIFocusRegionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMCameraCaptureAutoFocusROIClientApplicationIDTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMCameraCaptureAutoFocusROIClientApplicationIDTypeFromString_sortedStrings, 0x2EuLL, 8uLL, &__block_literal_global_156_66997);
  if (result)
  {
    return *(&BMCameraCaptureAutoFocusROIClientApplicationIDTypeFromString_sortedEnums + (((result - BMCameraCaptureAutoFocusROIClientApplicationIDTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMCameraCaptureAutoFocusROIFocusRegionTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99A18[a1];
  }

  return v2;
}

__CFString *BMCameraCaptureAutoFocusROIClientApplicationIDTypeAsString(uint64_t a1)
{
  if (a1 >= 0x2F)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99A40[a1];
  }

  return v2;
}

uint64_t BMCameraCaptureAutoFocusROIFocusRegionTypeDecode(uint64_t result)
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

uint64_t BMCameraCaptureAutoFocusROIClientApplicationIDTypeDecode(uint64_t result)
{
  if (result >= 0x2F)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMPhotosLiveTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosLiveTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_67984);
  if (result)
  {
    return *(&BMPhotosLiveTypeFromString_sortedEnums + (((result - BMPhotosLiveTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosLiveTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99CC0[a1];
  }

  return v2;
}

uint64_t BMPhotosLiveTypeDecode(uint64_t result)
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

_BYTE *BMPhotosFavoriteTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosFavoriteTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_68830);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMPhotosFavoriteTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosFavoriteTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99DE0[a1];
  }

  return v2;
}

uint64_t BMPhotosFavoriteTypeDecode(uint64_t result)
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

_BYTE *BMKeyboardTokenFrequencyTokenTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMKeyboardTokenFrequencyTokenTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_69251);
  if (result)
  {
    return *(&BMInferenceOutputTypeFromString_sortedEnums + (((result - BMKeyboardTokenFrequencyTokenTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMKeyboardTokenFrequencyTokenTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E99E68[a1];
  }

  return v2;
}

uint64_t BMKeyboardTokenFrequencyTokenTypeDecode(uint64_t result)
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

_BYTE *BMSafariNavigationsPlatformFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariNavigationsPlatformFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_70185);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMSafariNavigationsPlatformFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariNavigationsDeviceClassFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariNavigationsDeviceClassFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_21_70175);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMSafariNavigationsDeviceClassFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariNavigationsErrorResponseFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariNavigationsErrorResponseFromString_sortedStrings, 0x25uLL, 8uLL, &__block_literal_global_134);
  if (result)
  {
    return *(&BMSafariNavigationsErrorResponseFromString_sortedEnums + (((result - BMSafariNavigationsErrorResponseFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariNavigationsPlatformAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A0D0[a1];
  }

  return v2;
}

__CFString *BMSafariNavigationsDeviceClassAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A0F0[a1];
  }

  return v2;
}

__CFString *BMSafariNavigationsErrorResponseAsString(uint64_t a1)
{
  if (a1 >= 0x26)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A108[a1];
  }

  return v2;
}

uint64_t BMSafariNavigationsPlatformDecode(uint64_t result)
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

uint64_t BMSafariNavigationsDeviceClassDecode(uint64_t result)
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

uint64_t BMSafariNavigationsErrorResponseDecode(uint64_t result)
{
  if (result >= 0x26)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMAirPlayPredictionFeedbackTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAirPlayPredictionFeedbackTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_70568);
  if (result)
  {
    return *(&BMSiriPostSiriEngagementFeaturesTaskSuccessFromString_sortedEnums + (((result - BMAirPlayPredictionFeedbackTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAirPlayPredictionFeedbackTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A298[a1];
  }

  return v2;
}

uint64_t BMAirPlayPredictionFeedbackTypeDecode(uint64_t result)
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

_BYTE *BMMotionActivityConfidenceFromString(const void *a1)
{
  result = bsearch_b(a1, BMMotionActivityConfidenceFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_71046);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMMotionActivityConfidenceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMotionActivityConfidenceAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A350[a1];
  }

  return v2;
}

uint64_t BMMotionActivityConfidenceDecode(uint64_t result)
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

_BYTE *BMLighthouseLedgerTrialdEventEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMLighthouseLedgerTrialdEventEventTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_71314);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMLighthouseLedgerTrialdEventEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLighthouseLedgerTrialdEventEventTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A3B8[a1];
  }

  return v2;
}

uint64_t BMLighthouseLedgerTrialdEventEventTypeDecode(uint64_t result)
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

_BYTE *BMSafariWebPagePerformancePlatformFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariWebPagePerformancePlatformFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_72252);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMSafariWebPagePerformancePlatformFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSafariWebPagePerformanceWebPerformanceEventFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariWebPagePerformanceWebPerformanceEventFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_24_72239);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMSafariWebPagePerformanceWebPerformanceEventFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariWebPagePerformancePlatformAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A508[a1];
  }

  return v2;
}

__CFString *BMSafariWebPagePerformanceWebPerformanceEventAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A528[a1];
  }

  return v2;
}

uint64_t BMSafariWebPagePerformancePlatformDecode(uint64_t result)
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

uint64_t BMSafariWebPagePerformanceWebPerformanceEventDecode(uint64_t result)
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

_BYTE *BMWalletPaymentsCommerceSearchTagSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceSearchTagSourceFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_63_72494);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMWalletPaymentsCommerceSearchTagSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommerceSearchTagTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceSearchTagTypeFromString_sortedStrings, 0x11uLL, 8uLL, &__block_literal_global_72439);
  if (result)
  {
    return *(&BMWalletPaymentsCommerceSearchTagTypeFromString_sortedEnums + (((result - BMWalletPaymentsCommerceSearchTagTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommerceSearchPassTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceSearchPassTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_71_72431);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMWalletPaymentsCommerceSearchPassTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWalletPaymentsCommerceSearchTagSourceAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A6A0[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommerceSearchTagTypeAsString(uint64_t a1)
{
  if (a1 >= 0x12)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A610[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommerceSearchPassTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A6B8[a1];
  }

  return v2;
}

uint64_t BMWalletPaymentsCommerceSearchTagTypeDecode(uint64_t result)
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

uint64_t BMWalletPaymentsCommerceSearchTagSourceDecode(uint64_t result)
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

uint64_t BMWalletPaymentsCommerceSearchPassTypeDecode(uint64_t result)
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

_BYTE *BMSiriPostSiriEngagementFeaturesTaskSuccessFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriPostSiriEngagementFeaturesTaskSuccessFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_73053);
  if (result)
  {
    return *(&BMSiriPostSiriEngagementFeaturesTaskSuccessFromString_sortedEnums + (((result - BMSiriPostSiriEngagementFeaturesTaskSuccessFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriPostSiriEngagementFeaturesTaskSuccessAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A840[a1];
  }

  return v2;
}

uint64_t BMSiriPostSiriEngagementFeaturesTaskSuccessDecode(uint64_t result)
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

_BYTE *BMDeviceCellularQualityStatusRATFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceCellularQualityStatusRATFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_36_73660);
  if (result)
  {
    return *(&BMDeviceCellularQualityStatusRATFromString_sortedEnums + (((result - BMDeviceCellularQualityStatusRATFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDeviceCellularQualityStatusStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceCellularQualityStatusStateFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_73644);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMDeviceCellularQualityStatusStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDeviceCellularQualityStatusRRCFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceCellularQualityStatusRRCFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_44_73636);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMDeviceCellularQualityStatusRRCFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceCellularQualityStatusRATAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A920[a1];
  }

  return v2;
}

__CFString *BMDeviceCellularQualityStatusStateAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A8F8[a1];
  }

  return v2;
}

__CFString *BMDeviceCellularQualityStatusRRCAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9A958[a1];
  }

  return v2;
}

uint64_t BMDeviceCellularQualityStatusStateDecode(uint64_t result)
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

uint64_t BMDeviceCellularQualityStatusRATDecode(uint64_t result)
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

uint64_t BMDeviceCellularQualityStatusRRCDecode(uint64_t result)
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

_BYTE *BMSiriTaskAggregationMetadataScheduleFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriTaskAggregationMetadataScheduleFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_73929);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMSiriTaskAggregationMetadataScheduleFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriTaskAggregationMetadataScheduleAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9AA40[a1];
  }

  return v2;
}

_BYTE *BMSiriTaskAggregationDimensionsSiriProductAreaFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriTaskAggregationDimensionsSiriProductAreaFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_24_74078);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMSiriTaskAggregationDimensionsSiriProductAreaFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriTaskAggregationDimensionsSiriProductAreaAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9AA60[a1];
  }

  return v2;
}

uint64_t BMSiriTaskAggregationMetadataScheduleDecode(uint64_t result)
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

uint64_t BMSiriTaskAggregationDimensionsSiriProductAreaDecode(uint64_t result)
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

_BYTE *BMLocationSignificantVisitTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocationSignificantVisitTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_75560);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMLocationSignificantVisitTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLocationSignificantVisitTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9ABE0[a1];
  }

  return v2;
}

uint64_t BMLocationSignificantVisitTypeDecode(uint64_t result)
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

_BYTE *BMScreenSharingTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMScreenSharingTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_75855);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMScreenSharingTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMScreenSharingTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9AC30[a1];
  }

  return v2;
}

uint64_t BMScreenSharingTypeDecode(uint64_t result)
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

_BYTE *BMTextInputSessionInputFromString(const void *a1)
{
  result = bsearch_b(a1, BMTextInputSessionInputFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_76394);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMTextInputSessionInputFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMTextInputSessionInputAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9AD20[a1];
  }

  return v2;
}

uint64_t BMTextInputSessionInputDecode(uint64_t result)
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

_BYTE *BMSiriFederatedActivationTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriFederatedActivationTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_77119);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMSiriFederatedActivationTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriFederatedActivationTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9AE78[a1];
  }

  return v2;
}

uint64_t BMSiriFederatedActivationTypeDecode(uint64_t result)
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

__CFString *BMMLSEShareSheetMetricsSystemResourceUsageUserTypeAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B070[a1];
  }

  return v2;
}

_BYTE *BMMLSEShareSheetMetricsSystemResourceUsageUserTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSEShareSheetMetricsSystemResourceUsageUserTypeFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_78199);
  if (result)
  {
    return *(&BMMLSEShareSheetMetricsSystemResourceUsageUserTypeFromString_sortedEnums + (((result - BMMLSEShareSheetMetricsSystemResourceUsageUserTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMMLSEShareSheetMetricsSystemResourceUsageUserTypeDecode(uint64_t result)
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

_BYTE *BMFamilyScreenTimeRequestKindFromString(const void *a1)
{
  result = bsearch_b(a1, BMFamilyScreenTimeRequestKindFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_78447);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMFamilyScreenTimeRequestKindFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMFamilyScreenTimeRequestStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMFamilyScreenTimeRequestStatusFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_21_78434);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMFamilyScreenTimeRequestStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMFamilyScreenTimeRequestApprovedTimeFromString(const void *a1)
{
  result = bsearch_b(a1, BMFamilyScreenTimeRequestApprovedTimeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_32);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMFamilyScreenTimeRequestApprovedTimeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMFamilyScreenTimeRequestKindAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B148[a1];
  }

  return v2;
}

__CFString *BMFamilyScreenTimeRequestStatusAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B160[a1];
  }

  return v2;
}

__CFString *BMFamilyScreenTimeRequestApprovedTimeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B180[a1];
  }

  return v2;
}

uint64_t BMFamilyScreenTimeRequestKindDecode(uint64_t result)
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

uint64_t BMFamilyScreenTimeRequestStatusDecode(uint64_t result)
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

uint64_t BMFamilyScreenTimeRequestApprovedTimeDecode(uint64_t result)
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

_BYTE *BMDeviceCellularAvailabilityStatusDeviceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceCellularAvailabilityStatusDeviceTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_24_78657);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMDeviceCellularAvailabilityStatusDeviceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDeviceCellularAvailabilityStatusStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceCellularAvailabilityStatusStateFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_78641);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMDeviceCellularAvailabilityStatusStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceCellularAvailabilityStatusDeviceTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B228[a1];
  }

  return v2;
}

__CFString *BMDeviceCellularAvailabilityStatusStateAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B200[a1];
  }

  return v2;
}

uint64_t BMDeviceCellularAvailabilityStatusStateDecode(uint64_t result)
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

uint64_t BMDeviceCellularAvailabilityStatusDeviceTypeDecode(uint64_t result)
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

_BYTE *BMSiriSelfTriggerSuppressionAudioSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriSelfTriggerSuppressionAudioSourceFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_78858);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMSiriSelfTriggerSuppressionAudioSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriSelfTriggerSuppressionAudioSourceAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B278[a1];
  }

  return v2;
}

uint64_t BMSiriSelfTriggerSuppressionAudioSourceDecode(uint64_t result)
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

_BYTE *BMMailCategorizationCategoryFromString(const void *a1)
{
  result = bsearch_b(a1, BMMailCategorizationCategoryFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_79270);
  if (result)
  {
    return *(&BMMailCategorizationCategoryFromString_sortedEnums + (((result - BMMailCategorizationCategoryFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMailCategorizationMailboxTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMailCategorizationMailboxTypeFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_39_79245);
  if (result)
  {
    return *(&BMMailCategorizationMailboxTypeFromString_sortedEnums + (((result - BMMailCategorizationMailboxTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMailCategorizationByTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMailCategorizationByTypeFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_59_79223);
  if (result)
  {
    return *(&BMMailCategorizationByTypeFromString_sortedEnums + (((result - BMMailCategorizationByTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMailCategorizationDomainFromString(const void *a1)
{
  result = bsearch_b(a1, BMMailCategorizationDomainFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_82);
  if (result)
  {
    return *(&BMMailCategorizationDomainFromString_sortedEnums + (((result - BMMailCategorizationDomainFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMailCategorizationCategoryAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B438[a1];
  }

  return v2;
}

__CFString *BMMailCategorizationMailboxTypeAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B470[a1];
  }

  return v2;
}

__CFString *BMMailCategorizationByTypeAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B4B0[a1];
  }

  return v2;
}

__CFString *BMMailCategorizationDomainAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B4E8[a1];
  }

  return v2;
}

uint64_t BMMailCategorizationCategoryDecode(uint64_t result)
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

uint64_t BMMailCategorizationMailboxTypeDecode(uint64_t result)
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

uint64_t BMMailCategorizationByTypeDecode(uint64_t result)
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

uint64_t BMMailCategorizationDomainDecode(uint64_t result)
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

__CFString *BMPhotosMapTypeAsString(uint64_t a1)
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

uint64_t BMPhotosMapTypeDecode(uint64_t result)
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

_BYTE *BMWalletPaymentsCommercePaymentRingSuggestionsAccountStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommercePaymentRingSuggestionsAccountStateFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_79934);
  if (result)
  {
    return *(&BMWalletPaymentsCommercePaymentRingSuggestionsAccountStateFromString_sortedEnums + (((result - BMWalletPaymentsCommercePaymentRingSuggestionsAccountStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommercePaymentRingSuggestionsPaidUsingRingFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommercePaymentRingSuggestionsPaidUsingRingFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_24_79924);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMWalletPaymentsCommercePaymentRingSuggestionsPaidUsingRingFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommercePaymentRingSuggestionsLastPaymentCategoryFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommercePaymentRingSuggestionsLastPaymentCategoryFromString_sortedStrings, 0xEuLL, 8uLL, &__block_literal_global_65);
  if (result)
  {
    return *(&BMWalletPaymentsCommercePaymentRingSuggestionsLastPaymentCategoryFromString_sortedEnums + (((result - BMWalletPaymentsCommercePaymentRingSuggestionsLastPaymentCategoryFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommercePaymentRingSuggestionsPaymentActionFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommercePaymentRingSuggestionsPaymentActionFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_76_79871);
  if (result)
  {
    return *(&BMWalletPaymentsCommercePaymentRingSuggestionsPaymentActionFromString_sortedEnums + (((result - BMWalletPaymentsCommercePaymentRingSuggestionsPaymentActionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWalletPaymentsCommercePaymentRingSuggestionsAccountStateAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B680[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommercePaymentRingSuggestionsPaidUsingRingAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B6A8[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommercePaymentRingSuggestionsLastPaymentCategoryAsString(uint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B6C0[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommercePaymentRingSuggestionsPaymentActionAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B738[a1];
  }

  return v2;
}

uint64_t BMWalletPaymentsCommercePaymentRingSuggestionsAccountStateDecode(uint64_t result)
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

uint64_t BMWalletPaymentsCommercePaymentRingSuggestionsPaidUsingRingDecode(uint64_t result)
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

uint64_t BMWalletPaymentsCommercePaymentRingSuggestionsLastPaymentCategoryDecode(uint64_t result)
{
  if (result >= 0xF)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMWalletPaymentsCommercePaymentRingSuggestionsPaymentActionDecode(uint64_t result)
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

_BYTE *BMDeviceInterfaceOrientationCategoryFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceInterfaceOrientationCategoryFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_80234);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMDeviceInterfaceOrientationCategoryFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceInterfaceOrientationCategoryAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B788[a1];
  }

  return v2;
}

uint64_t BMDeviceInterfaceOrientationCategoryDecode(uint64_t result)
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

_BYTE *BMHealthFocusedEvaluationModeStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMHealthFocusedEvaluationModeStateFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_80559);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMHealthFocusedEvaluationModeStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMHealthFocusedEvaluationModeStateAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9B7D8[a1];
  }

  return v2;
}

uint64_t BMHealthFocusedEvaluationModeStateDecode(uint64_t result)
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

_BYTE *BMAeroMLPhotosSearchLabeledDataUISurfaceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAeroMLPhotosSearchLabeledDataUISurfaceTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_81631);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMAeroMLPhotosSearchLabeledDataUISurfaceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMAeroMLPhotosSearchLabeledDataReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v201) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v201 & 0x7F) << v6;
      if ((v201 & 0x80) == 0)
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
        v15 = *(a1 + 96);
        *(a1 + 96) = v14;

        continue;
      case 2u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        while (1)
        {
          LOBYTE(v201) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v201 & 0x7F) << v90;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          if (v91++ > 8)
          {
            goto LABEL_237;
          }
        }

        if (([a2 hasError] & 1) != 0 || v92 > 3)
        {
LABEL_237:
          LODWORD(v92) = 0;
        }

        *(a1 + 76) = v92;
        continue;
      case 3u:
        *(a1 + 16) = 1;
        v201 = 0;
        v82 = [a2 position] + 8;
        if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 8, v83 <= objc_msgSend(a2, "length")))
        {
          v171 = [a2 data];
          [v171 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 104;
        goto LABEL_333;
      case 4u:
        *(a1 + 17) = 1;
        v201 = 0;
        v86 = [a2 position] + 8;
        if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 8, v87 <= objc_msgSend(a2, "length")))
        {
          v173 = [a2 data];
          [v173 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 112;
        goto LABEL_333;
      case 5u:
        *(a1 + 18) = 1;
        v201 = 0;
        v62 = [a2 position] + 8;
        if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 8, v63 <= objc_msgSend(a2, "length")))
        {
          v167 = [a2 data];
          [v167 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 120;
        goto LABEL_333;
      case 6u:
        *(a1 + 19) = 1;
        v201 = 0;
        v105 = [a2 position] + 8;
        if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 8, v106 <= objc_msgSend(a2, "length")))
        {
          v179 = [a2 data];
          [v179 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 128;
        goto LABEL_333;
      case 7u:
        *(a1 + 20) = 1;
        v201 = 0;
        v111 = [a2 position] + 8;
        if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 8, v112 <= objc_msgSend(a2, "length")))
        {
          v182 = [a2 data];
          [v182 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 136;
        goto LABEL_333;
      case 8u:
        *(a1 + 21) = 1;
        v201 = 0;
        v88 = [a2 position] + 8;
        if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 8, v89 <= objc_msgSend(a2, "length")))
        {
          v174 = [a2 data];
          [v174 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 144;
        goto LABEL_333;
      case 9u:
        *(a1 + 22) = 1;
        v201 = 0;
        v117 = [a2 position] + 8;
        if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 8, v118 <= objc_msgSend(a2, "length")))
        {
          v185 = [a2 data];
          [v185 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 152;
        goto LABEL_333;
      case 0xAu:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 23) = 1;
        while (1)
        {
          LOBYTE(v201) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v201 & 0x7F) << v72;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_233;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v74;
        }

LABEL_233:
        v150 = 80;
        goto LABEL_234;
      case 0xBu:
        *(a1 + 24) = 1;
        v201 = 0;
        v115 = [a2 position] + 8;
        if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 8, v116 <= objc_msgSend(a2, "length")))
        {
          v184 = [a2 data];
          [v184 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 160;
        goto LABEL_333;
      case 0xCu:
        *(a1 + 25) = 1;
        v201 = 0;
        v54 = [a2 position] + 8;
        if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 8, v55 <= objc_msgSend(a2, "length")))
        {
          v166 = [a2 data];
          [v166 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 168;
        goto LABEL_333;
      case 0xDu:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 27) = 1;
        while (1)
        {
          LOBYTE(v201) = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v201 & 0x7F) << v66;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            LOBYTE(v53) = 0;
            goto LABEL_228;
          }
        }

        v53 = (v68 != 0) & ~[a2 hasError];
LABEL_228:
        v151 = 26;
        goto LABEL_229;
      case 0xEu:
        *(a1 + 28) = 1;
        v201 = 0;
        v109 = [a2 position] + 8;
        if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 8, v110 <= objc_msgSend(a2, "length")))
        {
          v181 = [a2 data];
          [v181 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 176;
        goto LABEL_333;
      case 0xFu:
        *(a1 + 29) = 1;
        v201 = 0;
        v43 = [a2 position] + 8;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
        {
          v164 = [a2 data];
          [v164 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 184;
        goto LABEL_333;
      case 0x10u:
        *(a1 + 30) = 1;
        v201 = 0;
        v84 = [a2 position] + 8;
        if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 8, v85 <= objc_msgSend(a2, "length")))
        {
          v172 = [a2 data];
          [v172 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 192;
        goto LABEL_333;
      case 0x11u:
        *(a1 + 31) = 1;
        v201 = 0;
        v39 = [a2 position] + 8;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
        {
          v162 = [a2 data];
          [v162 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 200;
        goto LABEL_333;
      case 0x12u:
        *(a1 + 32) = 1;
        v201 = 0;
        v99 = [a2 position] + 8;
        if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 8, v100 <= objc_msgSend(a2, "length")))
        {
          v176 = [a2 data];
          [v176 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 208;
        goto LABEL_333;
      case 0x13u:
        *(a1 + 33) = 1;
        v201 = 0;
        v113 = [a2 position] + 8;
        if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 8, v114 <= objc_msgSend(a2, "length")))
        {
          v183 = [a2 data];
          [v183 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 216;
        goto LABEL_333;
      case 0x14u:
        *(a1 + 34) = 1;
        v201 = 0;
        v129 = [a2 position] + 8;
        if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 8, v130 <= objc_msgSend(a2, "length")))
        {
          v191 = [a2 data];
          [v191 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 224;
        goto LABEL_333;
      case 0x15u:
        *(a1 + 35) = 1;
        v201 = 0;
        v103 = [a2 position] + 8;
        if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 8, v104 <= objc_msgSend(a2, "length")))
        {
          v178 = [a2 data];
          [v178 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 232;
        goto LABEL_333;
      case 0x16u:
        *(a1 + 36) = 1;
        v201 = 0;
        v107 = [a2 position] + 8;
        if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 8, v108 <= objc_msgSend(a2, "length")))
        {
          v180 = [a2 data];
          [v180 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 240;
        goto LABEL_333;
      case 0x17u:
        *(a1 + 37) = 1;
        v201 = 0;
        v125 = [a2 position] + 8;
        if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 8, v126 <= objc_msgSend(a2, "length")))
        {
          v189 = [a2 data];
          [v189 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 248;
        goto LABEL_333;
      case 0x18u:
        *(a1 + 38) = 1;
        v201 = 0;
        v133 = [a2 position] + 8;
        if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 8, v134 <= objc_msgSend(a2, "length")))
        {
          v193 = [a2 data];
          [v193 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 256;
        goto LABEL_333;
      case 0x19u:
        *(a1 + 39) = 1;
        v201 = 0;
        v80 = [a2 position] + 8;
        if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 8, v81 <= objc_msgSend(a2, "length")))
        {
          v170 = [a2 data];
          [v170 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 264;
        goto LABEL_333;
      case 0x1Au:
        *(a1 + 40) = 1;
        v201 = 0;
        v78 = [a2 position] + 8;
        if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 8, v79 <= objc_msgSend(a2, "length")))
        {
          v169 = [a2 data];
          [v169 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 272;
        goto LABEL_333;
      case 0x1Bu:
        *(a1 + 41) = 1;
        v201 = 0;
        v141 = [a2 position] + 8;
        if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 8, v142 <= objc_msgSend(a2, "length")))
        {
          v197 = [a2 data];
          [v197 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 280;
        goto LABEL_333;
      case 0x1Cu:
        *(a1 + 42) = 1;
        v201 = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v160 = [a2 data];
          [v160 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 288;
        goto LABEL_333;
      case 0x1Du:
        *(a1 + 43) = 1;
        v201 = 0;
        v135 = [a2 position] + 8;
        if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 8, v136 <= objc_msgSend(a2, "length")))
        {
          v194 = [a2 data];
          [v194 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 296;
        goto LABEL_333;
      case 0x1Eu:
        *(a1 + 44) = 1;
        v201 = 0;
        v137 = [a2 position] + 8;
        if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 8, v138 <= objc_msgSend(a2, "length")))
        {
          v195 = [a2 data];
          [v195 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 304;
        goto LABEL_333;
      case 0x1Fu:
        *(a1 + 45) = 1;
        v201 = 0;
        v119 = [a2 position] + 8;
        if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 8, v120 <= objc_msgSend(a2, "length")))
        {
          v186 = [a2 data];
          [v186 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 312;
        goto LABEL_333;
      case 0x20u:
        *(a1 + 46) = 1;
        v201 = 0;
        v97 = [a2 position] + 8;
        if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 8, v98 <= objc_msgSend(a2, "length")))
        {
          v175 = [a2 data];
          [v175 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 320;
        goto LABEL_333;
      case 0x21u:
        *(a1 + 47) = 1;
        v201 = 0;
        v121 = [a2 position] + 8;
        if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 8, v122 <= objc_msgSend(a2, "length")))
        {
          v187 = [a2 data];
          [v187 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 328;
        goto LABEL_333;
      case 0x22u:
        *(a1 + 48) = 1;
        v201 = 0;
        v45 = [a2 position] + 8;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
        {
          v165 = [a2 data];
          [v165 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 336;
        goto LABEL_333;
      case 0x23u:
        *(a1 + 49) = 1;
        v201 = 0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v161 = [a2 data];
          [v161 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 344;
        goto LABEL_333;
      case 0x24u:
        *(a1 + 50) = 1;
        v201 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v158 = [a2 data];
          [v158 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 352;
        goto LABEL_333;
      case 0x25u:
        *(a1 + 51) = 1;
        v201 = 0;
        v33 = [a2 position] + 8;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
        {
          v159 = [a2 data];
          [v159 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 360;
        goto LABEL_333;
      case 0x26u:
        *(a1 + 52) = 1;
        v201 = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v155 = [a2 data];
          [v155 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 368;
        goto LABEL_333;
      case 0x27u:
        *(a1 + 53) = 1;
        v201 = 0;
        v139 = [a2 position] + 8;
        if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 8, v140 <= objc_msgSend(a2, "length")))
        {
          v196 = [a2 data];
          [v196 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 376;
        goto LABEL_333;
      case 0x28u:
        *(a1 + 54) = 1;
        v201 = 0;
        v127 = [a2 position] + 8;
        if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 8, v128 <= objc_msgSend(a2, "length")))
        {
          v190 = [a2 data];
          [v190 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 384;
        goto LABEL_333;
      case 0x29u:
        *(a1 + 55) = 1;
        v201 = 0;
        v64 = [a2 position] + 8;
        if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 8, v65 <= objc_msgSend(a2, "length")))
        {
          v168 = [a2 data];
          [v168 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 392;
        goto LABEL_333;
      case 0x2Au:
        *(a1 + 56) = 1;
        v201 = 0;
        v101 = [a2 position] + 8;
        if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 8, v102 <= objc_msgSend(a2, "length")))
        {
          v177 = [a2 data];
          [v177 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 400;
        goto LABEL_333;
      case 0x2Bu:
        *(a1 + 57) = 1;
        v201 = 0;
        v131 = [a2 position] + 8;
        if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 8, v132 <= objc_msgSend(a2, "length")))
        {
          v192 = [a2 data];
          [v192 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 408;
        goto LABEL_333;
      case 0x2Cu:
        *(a1 + 58) = 1;
        v201 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v152 = [a2 data];
          [v152 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 416;
        goto LABEL_333;
      case 0x2Du:
        *(a1 + 59) = 1;
        v201 = 0;
        v41 = [a2 position] + 8;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
        {
          v163 = [a2 data];
          [v163 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 424;
        goto LABEL_333;
      case 0x2Eu:
        *(a1 + 60) = 1;
        v201 = 0;
        v123 = [a2 position] + 8;
        if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 8, v124 <= objc_msgSend(a2, "length")))
        {
          v188 = [a2 data];
          [v188 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 432;
        goto LABEL_333;
      case 0x2Fu:
        *(a1 + 61) = 1;
        v201 = 0;
        v146 = [a2 position] + 8;
        if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 8, v147 <= objc_msgSend(a2, "length")))
        {
          v199 = [a2 data];
          [v199 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 440;
        goto LABEL_333;
      case 0x30u:
        *(a1 + 62) = 1;
        v201 = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v157 = [a2 data];
          [v157 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 448;
        goto LABEL_333;
      case 0x31u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 64) = 1;
        while (1)
        {
          LOBYTE(v201) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v201 & 0x7F) << v47;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            LOBYTE(v53) = 0;
            goto LABEL_222;
          }
        }

        v53 = (v49 != 0) & ~[a2 hasError];
LABEL_222:
        v151 = 63;
LABEL_229:
        *(a1 + v151) = v53;
        continue;
      case 0x32u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 65) = 1;
        while (1)
        {
          LOBYTE(v201) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v201 & 0x7F) << v56;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_226;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v58;
        }

LABEL_226:
        v150 = 84;
        goto LABEL_234;
      case 0x33u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 66) = 1;
        break;
      case 0x34u:
        *(a1 + 67) = 1;
        v201 = 0;
        v148 = [a2 position] + 8;
        if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 8, v149 <= objc_msgSend(a2, "length")))
        {
          v200 = [a2 data];
          [v200 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 456;
        goto LABEL_333;
      case 0x35u:
        *(a1 + 68) = 1;
        v201 = 0;
        v144 = [a2 position] + 8;
        if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 8, v145 <= objc_msgSend(a2, "length")))
        {
          v198 = [a2 data];
          [v198 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 464;
        goto LABEL_333;
      case 0x36u:
        *(a1 + 69) = 1;
        v201 = 0;
        v27 = [a2 position] + 8;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
        {
          v156 = [a2 data];
          [v156 getBytes:&v201 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v153 = v201;
        v154 = 472;
LABEL_333:
        *(a1 + v154) = v153;
        continue;
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
      LOBYTE(v201) = 0;
      v19 = [a2 position] + 1;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v201 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v18 |= (v201 & 0x7F) << v16;
      if ((v201 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v12 = v17++ >= 9;
      if (v12)
      {
        v22 = 0;
        goto LABEL_220;
      }
    }

    if ([a2 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v18;
    }

LABEL_220:
    v150 = 88;
LABEL_234:
    *(a1 + v150) = v22;
  }

  return [a2 hasError] ^ 1;
}

__CFString *BMAeroMLPhotosSearchLabeledDataUISurfaceTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9BA38[a1];
  }

  return v2;
}

uint64_t BMAeroMLPhotosSearchLabeledDataUISurfaceTypeDecode(uint64_t result)
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

_BYTE *BMDeviceBatteryGaugingGaugingUpdateTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceBatteryGaugingGaugingUpdateTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_81921);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMDeviceBatteryGaugingGaugingUpdateTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDeviceBatteryGaugingQMaxStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceBatteryGaugingQMaxStateFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_27_81905);
  if (result)
  {
    return *(&BMAppleIntelligenceAvailabilityUseCaseInfoWaitlistStatusFromString_sortedEnums + (((result - BMDeviceBatteryGaugingQMaxStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDeviceBatteryGaugingOCVStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceBatteryGaugingOCVStateFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_35_81895);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMDeviceBatteryGaugingOCVStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDeviceBatteryGaugingPeriodicFullChargeStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceBatteryGaugingPeriodicFullChargeStateFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_46_81884);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMDeviceBatteryGaugingPeriodicFullChargeStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceBatteryGaugingGaugingUpdateTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9BAF8[a1];
  }

  return v2;
}

__CFString *BMDeviceBatteryGaugingQMaxStateAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9BB18[a1];
  }

  return v2;
}

__CFString *BMDeviceBatteryGaugingOCVStateAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9BB40[a1];
  }

  return v2;
}

__CFString *BMDeviceBatteryGaugingPeriodicFullChargeStateAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9BB58[a1];
  }

  return v2;
}

uint64_t BMDeviceBatteryGaugingGaugingUpdateTypeDecode(uint64_t result)
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

uint64_t BMDeviceBatteryGaugingQMaxStateDecode(uint64_t result)
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

uint64_t BMDeviceBatteryGaugingOCVStateDecode(uint64_t result)
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

uint64_t BMDeviceBatteryGaugingPeriodicFullChargeStateDecode(uint64_t result)
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

_BYTE *BMMessagesSharedWithYouFeedbackRankableSocialHighlightTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSharedWithYouFeedbackRankableSocialHighlightTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_82899);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMessagesSharedWithYouFeedbackRankableSocialHighlightTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSharedWithYouFeedbackRankableSocialHighlightTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9BD90[a1];
  }

  return v2;
}

_BYTE *BMMessagesSharedWithYouFeedbackUnifiedFeedbackTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSharedWithYouFeedbackUnifiedFeedbackTypeFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_45_82953);
  if (result)
  {
    return *(&BMMessagesSharedWithYouFeedbackUnifiedFeedbackTypeFromString_sortedEnums + (((result - BMMessagesSharedWithYouFeedbackUnifiedFeedbackTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSharedWithYouFeedbackUnifiedFeedbackTypeAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9BDA8[a1];
  }

  return v2;
}

uint64_t BMMessagesSharedWithYouFeedbackRankableSocialHighlightTypeDecode(uint64_t result)
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

uint64_t BMMessagesSharedWithYouFeedbackUnifiedFeedbackTypeDecode(uint64_t result)
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

_BYTE *BMMindfulnessSessionModeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMindfulnessSessionModeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_83117);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMMindfulnessSessionModeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMindfulnessSessionStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMMindfulnessSessionStateFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_27_83101);
  if (result)
  {
    return *(&BMWalletPaymentsCommerceTrackedOrderOrderStatusFromString_sortedEnums + (((result - BMMindfulnessSessionStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMindfulnessSessionModeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9BE50[a1];
  }

  return v2;
}

__CFString *BMMindfulnessSessionStateAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9BE70[a1];
  }

  return v2;
}

uint64_t BMMindfulnessSessionModeDecode(uint64_t result)
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

uint64_t BMMindfulnessSessionStateDecode(uint64_t result)
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

_BYTE *BMMapsRecentConversationsIntentActionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMapsRecentConversationsIntentActionTypeFromString_sortedStrings, 0x12uLL, 8uLL, &__block_literal_global_83526);
  if (result)
  {
    return *(&BMMapsRecentConversationsIntentActionTypeFromString_sortedEnums + (((result - BMMapsRecentConversationsIntentActionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMapsRecentConversationsIntentActionTypeAsString(uint64_t a1)
{
  if (a1 >= 0x13)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9BF80[a1];
  }

  return v2;
}

uint64_t BMMapsRecentConversationsIntentActionTypeDecode(uint64_t result)
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

_BYTE *BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStatsTriggeredMechanismFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStatsTriggeredMechanismFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_83854);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStatsTriggeredMechanismFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStatsTriggeredMechanismAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9C0F0[a1];
  }

  return v2;
}

uint64_t BMSiriUserEngagementStatisticsAccumulatedAggregationStatsAggregatedStatsTriggeredMechanismDecode(uint64_t result)
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

_BYTE *BMSiriServiceDismissalReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriServiceDismissalReasonFromString_sortedStrings, 0x35uLL, 8uLL, &__block_literal_global_84284);
  if (result)
  {
    return *(&BMSiriServiceDismissalReasonFromString_sortedEnums + (((result - BMSiriServiceDismissalReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSiriServiceRequestSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriServiceRequestSourceFromString_sortedStrings, 0x2CuLL, 8uLL, &__block_literal_global_297_84146);
  if (result)
  {
    return *(&BMSiriServiceRequestSourceFromString_sortedEnums + (((result - BMSiriServiceRequestSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriServiceDismissalReasonAsString(uint64_t a1)
{
  if (a1 >= 0x36)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9C448[a1];
  }

  return v2;
}

__CFString *BMSiriServiceRequestSourceAsString(uint64_t a1)
{
  if (a1 >= 0x2D)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9C5F8[a1];
  }

  return v2;
}

uint64_t BMSiriServiceDismissalReasonDecode(uint64_t result)
{
  if (result >= 0x36)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMSiriServiceRequestSourceDecode(uint64_t result)
{
  if (result >= 0x2D)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifierModelTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifierModelTypeFromString_sortedStrings, 0x1DuLL, 8uLL, &__block_literal_global_174);
  if (result)
  {
    return *(&BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifierModelTypeFromString_sortedEnums + (((result - BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifierModelTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifierModelTypeAsString(uint64_t a1)
{
  if (a1 >= 0x1E)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9CE00[a1];
  }

  return v2;
}

_BYTE *BMMLSEShareSheetInferencePeopleSuggestionsResponseTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMLSEShareSheetInferencePeopleSuggestionsResponseTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_185_86871);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMMLSEShareSheetInferencePeopleSuggestionsResponseTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMadResponseStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMMadResponseStatusFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_30_86488);
  if (result)
  {
    return *(&BMOasisAnalyticsGazeSampleEyeSideFromString_sortedEnums + (((result - BMMadResponseStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMSharingAppFromString(const void *a1)
{
  result = bsearch_b(a1, BMSharingAppFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_44_86474);
  if (result)
  {
    return *(&BMSharingAppFromString_sortedEnums + (((result - BMSharingAppFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMContentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMContentTypeFromString_sortedStrings, 0xDuLL, 8uLL, &__block_literal_global_85_86403);
  if (result)
  {
    return *(&BMContentTypeFromString_sortedEnums + (((result - BMContentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMFeedbackTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMFeedbackTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_86455);
  if (result)
  {
    return *(&BMAppleIntelligenceAvailabilityUseCaseInfoWaitlistStatusFromString_sortedEnums + (((result - BMFeedbackTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMFeedbackTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9CD18[a1];
  }

  return v2;
}

__CFString *BMContentTypeAsString(uint64_t a1)
{
  if (a1 >= 0xE)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9CD90[a1];
  }

  return v2;
}

__CFString *BMMadResponseStatusAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9CD40[a1];
  }

  return v2;
}

__CFString *BMSharingAppAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9CD68[a1];
  }

  return v2;
}

__CFString *BMMLSEShareSheetInferencePeopleSuggestionsResponseTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9CEF0[a1];
  }

  return v2;
}

uint64_t BMFeedbackTypeDecode(uint64_t result)
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

uint64_t BMMadResponseStatusDecode(uint64_t result)
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

uint64_t BMSharingAppDecode(uint64_t result)
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

uint64_t BMContentTypeDecode(uint64_t result)
{
  if (result >= 0xE)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifierModelTypeDecode(uint64_t result)
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

uint64_t BMMLSEShareSheetInferencePeopleSuggestionsResponseTypeDecode(uint64_t result)
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

_BYTE *BMWalletSettledTransactionMerchantTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletSettledTransactionMerchantTypeFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_87026);
  if (result)
  {
    return *(&BMWalletSettledTransactionMerchantTypeFromString_sortedEnums + (((result - BMWalletSettledTransactionMerchantTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWalletSettledTransactionMerchantTypeAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9CF80[a1];
  }

  return v2;
}

uint64_t BMWalletSettledTransactionMerchantTypeDecode(uint64_t result)
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

_BYTE *BMPhotosEngagementTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosEngagementTypeFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_87203);
  if (result)
  {
    return *(&BMPhotosEngagementTypeFromString_sortedEnums + (((result - BMPhotosEngagementTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosEngagementTypeAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9D010[a1];
  }

  return v2;
}

uint64_t BMPhotosEngagementTypeDecode(uint64_t result)
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

_BYTE *BMPhotosMemoriesViewedDurationFromString(const void *a1)
{
  result = bsearch_b(a1, BMPhotosMemoriesViewedDurationFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_87972);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMPhotosMemoriesViewedDurationFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMPhotosMemoriesViewedDurationAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9D0D8[a1];
  }

  return v2;
}

uint64_t BMPhotosMemoriesViewedDurationDecode(uint64_t result)
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

uint64_t BMPECProcessedReadFrom(_BYTE *a1, void *a2)
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
      v269 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v269 & 0x7F) << v6;
      if ((v269 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
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
        a1[16] = 1;
        while (1)
        {
          v269 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v14;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v14 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__artAssetProcessedCount;
          v22 = v15++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__artAssetProcessedCount;
        goto LABEL_521;
      case 2u:
        v143 = 0;
        v144 = 0;
        v16 = 0;
        a1[17] = 1;
        while (1)
        {
          v269 = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v143;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v143 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__natureAssetProcessedCount;
          v22 = v144++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__natureAssetProcessedCount;
        goto LABEL_521;
      case 3u:
        v123 = 0;
        v124 = 0;
        v16 = 0;
        a1[18] = 1;
        while (1)
        {
          v269 = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v123;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v123 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__animalsAssetProcessedCount;
          v22 = v124++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__animalsAssetProcessedCount;
        goto LABEL_521;
      case 4u:
        v133 = 0;
        v134 = 0;
        v16 = 0;
        a1[19] = 1;
        while (1)
        {
          v269 = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            v137 = [a2 data];
            [v137 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v133;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v133 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__birdsAssetProcessedCount;
          v22 = v134++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__birdsAssetProcessedCount;
        goto LABEL_521;
      case 5u:
        v93 = 0;
        v94 = 0;
        v16 = 0;
        a1[20] = 1;
        while (1)
        {
          v269 = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v93;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v93 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__insectsAssetProcessedCount;
          v22 = v94++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__insectsAssetProcessedCount;
        goto LABEL_521;
      case 6u:
        v168 = 0;
        v169 = 0;
        v16 = 0;
        a1[21] = 1;
        while (1)
        {
          v269 = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            v172 = [a2 data];
            [v172 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v168;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v168 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__reptilesAssetProcessedCount;
          v22 = v169++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__reptilesAssetProcessedCount;
        goto LABEL_521;
      case 7u:
        v183 = 0;
        v184 = 0;
        v16 = 0;
        a1[22] = 1;
        while (1)
        {
          v269 = 0;
          v185 = [a2 position] + 1;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
          {
            v187 = [a2 data];
            [v187 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v183;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v183 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__mammalsAssetProcessedCount;
          v22 = v184++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__mammalsAssetProcessedCount;
        goto LABEL_521;
      case 8u:
        v138 = 0;
        v139 = 0;
        v16 = 0;
        a1[23] = 1;
        while (1)
        {
          v269 = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v138;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v138 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__landmarkAssetProcessedCount;
          v22 = v139++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__landmarkAssetProcessedCount;
        goto LABEL_521;
      case 9u:
        v198 = 0;
        v199 = 0;
        v16 = 0;
        a1[24] = 1;
        while (1)
        {
          v269 = 0;
          v200 = [a2 position] + 1;
          if (v200 >= [a2 position] && (v201 = objc_msgSend(a2, "position") + 1, v201 <= objc_msgSend(a2, "length")))
          {
            v202 = [a2 data];
            [v202 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v198;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v198 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__naturalLandmarkProcessedAssetCount;
          v22 = v199++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__naturalLandmarkProcessedAssetCount;
        goto LABEL_521;
      case 0xAu:
        v108 = 0;
        v109 = 0;
        v16 = 0;
        a1[25] = 1;
        while (1)
        {
          v269 = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v108;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v108 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__mediaAssetProcessedCount;
          v22 = v109++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__mediaAssetProcessedCount;
        goto LABEL_521;
      case 0xBu:
        v193 = 0;
        v194 = 0;
        v16 = 0;
        a1[26] = 1;
        while (1)
        {
          v269 = 0;
          v195 = [a2 position] + 1;
          if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 1, v196 <= objc_msgSend(a2, "length")))
          {
            v197 = [a2 data];
            [v197 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v193;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v193 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__bookAssetProcessedCount;
          v22 = v194++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__bookAssetProcessedCount;
        goto LABEL_521;
      case 0xCu:
        v83 = 0;
        v84 = 0;
        v16 = 0;
        a1[27] = 1;
        while (1)
        {
          v269 = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v83;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v83 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__albumAssetProcessedCount;
          v22 = v84++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__albumAssetProcessedCount;
        goto LABEL_521;
      case 0xDu:
        v103 = 0;
        v104 = 0;
        v16 = 0;
        a1[28] = 1;
        while (1)
        {
          v269 = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v103;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v103 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__catsAssetProcessedCount;
          v22 = v104++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__catsAssetProcessedCount;
        goto LABEL_521;
      case 0xEu:
        v178 = 0;
        v179 = 0;
        v16 = 0;
        a1[29] = 1;
        while (1)
        {
          v269 = 0;
          v180 = [a2 position] + 1;
          if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
          {
            v182 = [a2 data];
            [v182 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v178;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v178 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__dogsAssetProcessedCount;
          v22 = v179++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__dogsAssetProcessedCount;
        goto LABEL_521;
      case 0xFu:
        v68 = 0;
        v69 = 0;
        v16 = 0;
        a1[30] = 1;
        while (1)
        {
          v269 = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v68;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v68 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__apparelAssetProcessedCount;
          v22 = v69++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__apparelAssetProcessedCount;
        goto LABEL_521;
      case 0x10u:
        v128 = 0;
        v129 = 0;
        v16 = 0;
        a1[31] = 1;
        while (1)
        {
          v269 = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v128;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v128 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__foodAssetProcessedCount;
          v22 = v129++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__foodAssetProcessedCount;
        goto LABEL_521;
      case 0x11u:
        v58 = 0;
        v59 = 0;
        v16 = 0;
        a1[32] = 1;
        while (1)
        {
          v269 = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v58;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v58 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__storefrontAssetProcessedCount;
          v22 = v59++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__storefrontAssetProcessedCount;
        goto LABEL_521;
      case 0x12u:
        v153 = 0;
        v154 = 0;
        v16 = 0;
        a1[33] = 1;
        while (1)
        {
          v269 = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v153;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v153 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__signSymbolAssetProcessedCount;
          v22 = v154++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__signSymbolAssetProcessedCount;
        goto LABEL_521;
      case 0x13u:
        v188 = 0;
        v189 = 0;
        v16 = 0;
        a1[34] = 1;
        while (1)
        {
          v269 = 0;
          v190 = [a2 position] + 1;
          if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
          {
            v192 = [a2 data];
            [v192 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v188;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v188 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__laundryCareSymbolAssetProcessedCount;
          v22 = v189++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__laundryCareSymbolAssetProcessedCount;
        goto LABEL_521;
      case 0x14u:
        v228 = 0;
        v229 = 0;
        v16 = 0;
        a1[35] = 1;
        while (1)
        {
          v269 = 0;
          v230 = [a2 position] + 1;
          if (v230 >= [a2 position] && (v231 = objc_msgSend(a2, "position") + 1, v231 <= objc_msgSend(a2, "length")))
          {
            v232 = [a2 data];
            [v232 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v228;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v228 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__autoSymbolAssetProcessedCount;
          v22 = v229++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__autoSymbolAssetProcessedCount;
        goto LABEL_521;
      case 0x15u:
        v163 = 0;
        v164 = 0;
        v16 = 0;
        a1[36] = 1;
        while (1)
        {
          v269 = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v163;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v163 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__brandLogoSymbolAssetProcessedCount;
          v22 = v164++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__brandLogoSymbolAssetProcessedCount;
        goto LABEL_521;
      case 0x16u:
        v173 = 0;
        v174 = 0;
        v16 = 0;
        a1[37] = 1;
        while (1)
        {
          v269 = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            v177 = [a2 data];
            [v177 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v173;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v173 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__object2DAssetProcessedCount;
          v22 = v174++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__object2DAssetProcessedCount;
        goto LABEL_521;
      case 0x17u:
        v218 = 0;
        v219 = 0;
        v16 = 0;
        a1[38] = 1;
        while (1)
        {
          v269 = 0;
          v220 = [a2 position] + 1;
          if (v220 >= [a2 position] && (v221 = objc_msgSend(a2, "position") + 1, v221 <= objc_msgSend(a2, "length")))
          {
            v222 = [a2 data];
            [v222 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v218;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v218 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__barcodeDetectionAssetProcessedCount;
          v22 = v219++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__barcodeDetectionAssetProcessedCount;
        goto LABEL_521;
      case 0x18u:
        v238 = 0;
        v239 = 0;
        v16 = 0;
        a1[39] = 1;
        while (1)
        {
          v269 = 0;
          v240 = [a2 position] + 1;
          if (v240 >= [a2 position] && (v241 = objc_msgSend(a2, "position") + 1, v241 <= objc_msgSend(a2, "length")))
          {
            v242 = [a2 data];
            [v242 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v238;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v238 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__sculptureAssetProcessedCount;
          v22 = v239++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__sculptureAssetProcessedCount;
        goto LABEL_521;
      case 0x19u:
        v118 = 0;
        v119 = 0;
        v16 = 0;
        a1[40] = 1;
        while (1)
        {
          v269 = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            v122 = [a2 data];
            [v122 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v118;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v118 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__skylineAssetProcessedCount;
          v22 = v119++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__skylineAssetProcessedCount;
        goto LABEL_521;
      case 0x1Au:
        v113 = 0;
        v114 = 0;
        v16 = 0;
        a1[41] = 1;
        while (1)
        {
          v269 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v113;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v113 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__artAssetSuccessesCount;
          v22 = v114++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__artAssetSuccessesCount;
        goto LABEL_521;
      case 0x1Bu:
        v258 = 0;
        v259 = 0;
        v16 = 0;
        a1[42] = 1;
        while (1)
        {
          v269 = 0;
          v260 = [a2 position] + 1;
          if (v260 >= [a2 position] && (v261 = objc_msgSend(a2, "position") + 1, v261 <= objc_msgSend(a2, "length")))
          {
            v262 = [a2 data];
            [v262 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v258;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v258 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__natureAssetSuccessesCount;
          v22 = v259++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__natureAssetSuccessesCount;
        goto LABEL_521;
      case 0x1Cu:
        v48 = 0;
        v49 = 0;
        v16 = 0;
        a1[43] = 1;
        while (1)
        {
          v269 = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v48;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v48 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__animalsAssetSuccessesCount;
          v22 = v49++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__animalsAssetSuccessesCount;
        goto LABEL_521;
      case 0x1Du:
        v243 = 0;
        v244 = 0;
        v16 = 0;
        a1[44] = 1;
        while (1)
        {
          v269 = 0;
          v245 = [a2 position] + 1;
          if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 1, v246 <= objc_msgSend(a2, "length")))
          {
            v247 = [a2 data];
            [v247 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v243;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v243 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__birdsAssetSuccessesCount;
          v22 = v244++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__birdsAssetSuccessesCount;
        goto LABEL_521;
      case 0x1Eu:
        v248 = 0;
        v249 = 0;
        v16 = 0;
        a1[45] = 1;
        while (1)
        {
          v269 = 0;
          v250 = [a2 position] + 1;
          if (v250 >= [a2 position] && (v251 = objc_msgSend(a2, "position") + 1, v251 <= objc_msgSend(a2, "length")))
          {
            v252 = [a2 data];
            [v252 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v248;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v248 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__insectsAssetSuccessesCount;
          v22 = v249++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__insectsAssetSuccessesCount;
        goto LABEL_521;
      case 0x1Fu:
        v203 = 0;
        v204 = 0;
        v16 = 0;
        a1[46] = 1;
        while (1)
        {
          v269 = 0;
          v205 = [a2 position] + 1;
          if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
          {
            v207 = [a2 data];
            [v207 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v203;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v203 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__reptilesAssetSuccessesCount;
          v22 = v204++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__reptilesAssetSuccessesCount;
        goto LABEL_521;
      case 0x20u:
        v148 = 0;
        v149 = 0;
        v16 = 0;
        a1[47] = 1;
        while (1)
        {
          v269 = 0;
          v150 = [a2 position] + 1;
          if (v150 >= [a2 position] && (v151 = objc_msgSend(a2, "position") + 1, v151 <= objc_msgSend(a2, "length")))
          {
            v152 = [a2 data];
            [v152 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v148;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v148 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__mammalsAssetSuccessesCount;
          v22 = v149++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__mammalsAssetSuccessesCount;
        goto LABEL_521;
      case 0x21u:
        v208 = 0;
        v209 = 0;
        v16 = 0;
        a1[48] = 1;
        while (1)
        {
          v269 = 0;
          v210 = [a2 position] + 1;
          if (v210 >= [a2 position] && (v211 = objc_msgSend(a2, "position") + 1, v211 <= objc_msgSend(a2, "length")))
          {
            v212 = [a2 data];
            [v212 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v208;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v208 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__landmarkAssetSuccessesCount;
          v22 = v209++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__landmarkAssetSuccessesCount;
        goto LABEL_521;
      case 0x22u:
        v73 = 0;
        v74 = 0;
        v16 = 0;
        a1[49] = 1;
        while (1)
        {
          v269 = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v73;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v73 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__naturalLandmarkSuccessesAssetCount;
          v22 = v74++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__naturalLandmarkSuccessesAssetCount;
        goto LABEL_521;
      case 0x23u:
        v53 = 0;
        v54 = 0;
        v16 = 0;
        a1[50] = 1;
        while (1)
        {
          v269 = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v53;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v53 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__mediaAssetSuccessesCount;
          v22 = v54++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__mediaAssetSuccessesCount;
        goto LABEL_521;
      case 0x24u:
        v38 = 0;
        v39 = 0;
        v16 = 0;
        a1[51] = 1;
        while (1)
        {
          v269 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v38;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v38 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__bookAssetSuccessesCount;
          v22 = v39++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__bookAssetSuccessesCount;
        goto LABEL_521;
      case 0x25u:
        v43 = 0;
        v44 = 0;
        v16 = 0;
        a1[52] = 1;
        while (1)
        {
          v269 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v43;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v43 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__albumAssetSuccessesCount;
          v22 = v44++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__albumAssetSuccessesCount;
        goto LABEL_521;
      case 0x26u:
        v28 = 0;
        v29 = 0;
        v16 = 0;
        a1[53] = 1;
        while (1)
        {
          v269 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v28;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v28 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__catsAssetSuccessesCount;
          v22 = v29++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__catsAssetSuccessesCount;
        goto LABEL_521;
      case 0x27u:
        v253 = 0;
        v254 = 0;
        v16 = 0;
        a1[54] = 1;
        while (1)
        {
          v269 = 0;
          v255 = [a2 position] + 1;
          if (v255 >= [a2 position] && (v256 = objc_msgSend(a2, "position") + 1, v256 <= objc_msgSend(a2, "length")))
          {
            v257 = [a2 data];
            [v257 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v253;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v253 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__dogsAssetSuccessesCount;
          v22 = v254++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__dogsAssetSuccessesCount;
        goto LABEL_521;
      case 0x28u:
        v223 = 0;
        v224 = 0;
        v16 = 0;
        a1[55] = 1;
        while (1)
        {
          v269 = 0;
          v225 = [a2 position] + 1;
          if (v225 >= [a2 position] && (v226 = objc_msgSend(a2, "position") + 1, v226 <= objc_msgSend(a2, "length")))
          {
            v227 = [a2 data];
            [v227 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v223;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v223 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__apparelAssetSuccessesCount;
          v22 = v224++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__apparelAssetSuccessesCount;
        goto LABEL_521;
      case 0x29u:
        v98 = 0;
        v99 = 0;
        v16 = 0;
        a1[56] = 1;
        while (1)
        {
          v269 = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v98;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v98 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__foodAssetSuccessesCount;
          v22 = v99++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__foodAssetSuccessesCount;
        goto LABEL_521;
      case 0x2Au:
        v158 = 0;
        v159 = 0;
        v16 = 0;
        a1[57] = 1;
        while (1)
        {
          v269 = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v158;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v158 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__storefrontAssetSuccessesCount;
          v22 = v159++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__storefrontAssetSuccessesCount;
        goto LABEL_521;
      case 0x2Bu:
        v233 = 0;
        v234 = 0;
        v16 = 0;
        a1[58] = 1;
        while (1)
        {
          v269 = 0;
          v235 = [a2 position] + 1;
          if (v235 >= [a2 position] && (v236 = objc_msgSend(a2, "position") + 1, v236 <= objc_msgSend(a2, "length")))
          {
            v237 = [a2 data];
            [v237 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v233;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v233 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__signSymbolAssetSuccessesCount;
          v22 = v234++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__signSymbolAssetSuccessesCount;
        goto LABEL_521;
      case 0x2Cu:
        v23 = 0;
        v24 = 0;
        v16 = 0;
        a1[59] = 1;
        while (1)
        {
          v269 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v23;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v23 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__laundryCareSymbolAssetSuccessesCount;
          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__laundryCareSymbolAssetSuccessesCount;
        goto LABEL_521;
      case 0x2Du:
        v63 = 0;
        v64 = 0;
        v16 = 0;
        a1[60] = 1;
        while (1)
        {
          v269 = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v63;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v63 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__autoSymbolAssetSuccessesCount;
          v22 = v64++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__autoSymbolAssetSuccessesCount;
        goto LABEL_521;
      case 0x2Eu:
        v213 = 0;
        v214 = 0;
        v16 = 0;
        a1[61] = 1;
        while (1)
        {
          v269 = 0;
          v215 = [a2 position] + 1;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
          {
            v217 = [a2 data];
            [v217 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v213;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v213 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__brandLogoSymbolAssetSuccessesCount;
          v22 = v214++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__brandLogoSymbolAssetSuccessesCount;
        goto LABEL_521;
      case 0x2Fu:
        v263 = 0;
        v264 = 0;
        v16 = 0;
        a1[62] = 1;
        while (1)
        {
          v269 = 0;
          v265 = [a2 position] + 1;
          if (v265 >= [a2 position] && (v266 = objc_msgSend(a2, "position") + 1, v266 <= objc_msgSend(a2, "length")))
          {
            v267 = [a2 data];
            [v267 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v263;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v263 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__object2DAssetSuccessesCount;
          v22 = v264++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__object2DAssetSuccessesCount;
        goto LABEL_521;
      case 0x30u:
        v33 = 0;
        v34 = 0;
        v16 = 0;
        a1[63] = 1;
        while (1)
        {
          v269 = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v33;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v33 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__barcodeDetectionAssetSuccessesCount;
          v22 = v34++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__barcodeDetectionAssetSuccessesCount;
        goto LABEL_521;
      case 0x31u:
        v78 = 0;
        v79 = 0;
        v16 = 0;
        a1[64] = 1;
        while (1)
        {
          v269 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v269 & 0x7F) << v78;
          if ((v269 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v78 += 7;
          v21 = &OBJC_IVAR___BMPECProcessed__sculptureAssetSuccessesCount;
          v22 = v79++ > 8;
          if (v22)
          {
            goto LABEL_524;
          }
        }

        v21 = &OBJC_IVAR___BMPECProcessed__sculptureAssetSuccessesCount;
        goto LABEL_521;
      case 0x32u:
        v88 = 0;
        v89 = 0;
        v16 = 0;
        a1[65] = 1;
        break;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        return 0;
    }

    while (1)
    {
      v269 = 0;
      v90 = [a2 position] + 1;
      if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
      {
        v92 = [a2 data];
        [v92 getBytes:&v269 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v269 & 0x7F) << v88;
      if ((v269 & 0x80) == 0)
      {
        break;
      }

      v20 = 0;
      v88 += 7;
      v21 = &OBJC_IVAR___BMPECProcessed__skylineAssetSuccessesCount;
      v22 = v89++ > 8;
      if (v22)
      {
        goto LABEL_524;
      }
    }

    v21 = &OBJC_IVAR___BMPECProcessed__skylineAssetSuccessesCount;
LABEL_521:
    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v16;
    }

LABEL_524:
    *&a1[*v21] = v20;
  }

  return [a2 hasError] ^ 1;
}

_BYTE *BMNanoSettingsControlCenterUsageTransitionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMNanoSettingsControlCenterUsageTransitionTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_89712);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMNanoSettingsControlCenterUsageTransitionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMNanoSettingsControlCenterUsageStatusDetailTransitionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMNanoSettingsControlCenterUsageStatusDetailTransitionTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_15);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMNanoSettingsControlCenterUsageStatusDetailTransitionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMNanoSettingsControlCenterUsageButtonPressTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMNanoSettingsControlCenterUsageButtonPressTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_23_89693);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMNanoSettingsControlCenterUsageButtonPressTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMNanoSettingsControlCenterUsageTransitionTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9D478[a1];
  }

  return v2;
}

__CFString *BMNanoSettingsControlCenterUsageStatusDetailTransitionTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9D498[a1];
  }

  return v2;
}

__CFString *BMNanoSettingsControlCenterUsageButtonPressTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9D4B0[a1];
  }

  return v2;
}

uint64_t BMNanoSettingsControlCenterUsageTransitionTypeDecode(uint64_t result)
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

uint64_t BMNanoSettingsControlCenterUsageStatusDetailTransitionTypeDecode(uint64_t result)
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

uint64_t BMNanoSettingsControlCenterUsageButtonPressTypeDecode(uint64_t result)
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

_BYTE *BMTrialNamespaceUpdatesEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMTrialNamespaceUpdatesEventTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_90009);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMTrialNamespaceUpdatesEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMTrialNamespaceUpdatesEventTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9D518[a1];
  }

  return v2;
}

uint64_t BMTrialNamespaceUpdatesEventTypeDecode(uint64_t result)
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

_BYTE *BMAppInstallationTransitionFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppInstallationTransitionFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_90298);
  if (result)
  {
    return *(&BMOasisAnalyticsGazeSampleEyeSideFromString_sortedEnums + (((result - BMAppInstallationTransitionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppInstallationTransitionAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9D5B0[a1];
  }

  return v2;
}

uint64_t BMAppInstallationTransitionDecode(uint64_t result)
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

_BYTE *BMWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_92202);
  if (result)
  {
    return *(&BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString_sortedEnums + (((result - BMWalletPaymentsCommerceOrderEmailShippingInformationStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWalletPaymentsCommerceOrderEmailShippingInformationStatusAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9DB18[a1];
  }

  return v2;
}

_BYTE *BMWalletPaymentsCommerceOrderEmailEmailTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceOrderEmailEmailTypeFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_57_92593);
  if (result)
  {
    return *(&BMWalletPaymentsCommerceOrderEmailEmailTypeFromString_sortedEnums + (((result - BMWalletPaymentsCommerceOrderEmailEmailTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommerceOrderEmailOrderContentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceOrderEmailOrderContentTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_65_92585);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMWalletPaymentsCommerceOrderEmailOrderContentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWalletPaymentsCommerceOrderEmailEmailTypeAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9DB68[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommerceOrderEmailOrderContentTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9DBB0[a1];
  }

  return v2;
}

uint64_t BMWalletPaymentsCommerceOrderEmailShippingInformationStatusDecode(uint64_t result)
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

uint64_t BMWalletPaymentsCommerceOrderEmailEmailTypeDecode(uint64_t result)
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

uint64_t BMWalletPaymentsCommerceOrderEmailOrderContentTypeDecode(uint64_t result)
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

_BYTE *BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_93017);
  if (result)
  {
    return *(&BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString_sortedEnums + (((result - BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9DE30[a1];
  }

  return v2;
}

_BYTE *BMWalletPaymentsCommerceTrackedOrderOrderStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceTrackedOrderOrderStatusFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_36_93319);
  if (result)
  {
    return *(&BMWalletPaymentsCommerceTrackedOrderOrderStatusFromString_sortedEnums + (((result - BMWalletPaymentsCommerceTrackedOrderOrderStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWalletPaymentsCommerceTrackedOrderOrderStatusAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9DE80[a1];
  }

  return v2;
}

uint64_t BMWalletPaymentsCommerceTrackedOrderShippingFulfillmentStatusDecode(uint64_t result)
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

uint64_t BMWalletPaymentsCommerceTrackedOrderOrderStatusDecode(uint64_t result)
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

_BYTE *BMGazeEnrollmentSampleEnrollmentQualityFromString(const void *a1)
{
  result = bsearch_b(a1, BMGazeEnrollmentSampleEnrollmentQualityFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_94331);
  if (result)
  {
    return *(&BMGazeEnrollmentSampleEnrollmentQualityFromString_sortedEnums + (((result - BMGazeEnrollmentSampleEnrollmentQualityFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMGazeEnrollmentSampleEnrollmentFailureReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMGazeEnrollmentSampleEnrollmentFailureReasonFromString_sortedStrings, 9uLL, 8uLL, &__block_literal_global_78);
  if (result)
  {
    return *(&BMGazeEnrollmentSampleEnrollmentFailureReasonFromString_sortedEnums + (((result - BMGazeEnrollmentSampleEnrollmentFailureReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMGazeEnrollmentSampleAccessibilityModeFromString(const void *a1)
{
  result = bsearch_b(a1, BMGazeEnrollmentSampleAccessibilityModeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_30_94293);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMGazeEnrollmentSampleAccessibilityModeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMGazeEnrollmentSampleEyeboxStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMGazeEnrollmentSampleEyeboxStatusFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_38_94285);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMGazeEnrollmentSampleEyeboxStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMGazeEnrollmentSampleEnrollmentReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMGazeEnrollmentSampleEnrollmentReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_49_94274);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMGazeEnrollmentSampleEnrollmentReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMGazeEnrollmentSampleEnrollmentDeviceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMGazeEnrollmentSampleEnrollmentDeviceTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_86_94266);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMGazeEnrollmentSampleEnrollmentDeviceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMGazeEnrollmentSampleReadFrom(uint64_t a1, void *a2)
{
  v4 = objc_opt_new();
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v265) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v265 & 0x7F) << v6;
      if ((v265 & 0x80) == 0)
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
        v15 = 304;
        goto LABEL_78;
      case 2u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        while (1)
        {
          LOBYTE(v265) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v265 & 0x7F) << v116;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v76 = v117++ > 8;
          if (v76)
          {
            goto LABEL_345;
          }
        }

        if (([a2 hasError] & 1) != 0 || v118 > 4)
        {
LABEL_345:
          LODWORD(v118) = 0;
        }

        *(a1 + 72) = v118;
        continue;
      case 3u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 17) = 1;
        while (1)
        {
          LOBYTE(v265) = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v265 & 0x7F) << v94;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            LOBYTE(v100) = 0;
            goto LABEL_334;
          }
        }

        v100 = (v96 != 0) & ~[a2 hasError];
LABEL_334:
        *(a1 + 16) = v100;
        continue;
      case 4u:
        *(a1 + 18) = 1;
        v265 = 0;
        v108 = [a2 position] + 4;
        if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 4, v109 <= objc_msgSend(a2, "length")))
        {
          v238 = [a2 data];
          [v238 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 76) = v265;
        continue;
      case 5u:
        *(a1 + 19) = 1;
        v265 = 0;
        v66 = [a2 position] + 4;
        if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 4, v67 <= objc_msgSend(a2, "length")))
        {
          v234 = [a2 data];
          [v234 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 80) = v265;
        continue;
      case 6u:
        *(a1 + 20) = 1;
        v265 = 0;
        v135 = [a2 position] + 4;
        if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 4, v136 <= objc_msgSend(a2, "length")))
        {
          v242 = [a2 data];
          [v242 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 84) = v265;
        continue;
      case 7u:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        while (1)
        {
          LOBYTE(v265) = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v265 & 0x7F) << v146;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v76 = v147++ > 8;
          if (v76)
          {
            goto LABEL_357;
          }
        }

        if (([a2 hasError] & 1) != 0 || v148 > 4)
        {
LABEL_357:
          LODWORD(v148) = 0;
        }

        *(a1 + 88) = v148;
        continue;
      case 8u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        while (1)
        {
          LOBYTE(v265) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            v115 = [a2 data];
            [v115 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v265 & 0x7F) << v110;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v76 = v111++ > 8;
          if (v76)
          {
            goto LABEL_341;
          }
        }

        if (([a2 hasError] & 1) != 0 || v112 > 5)
        {
LABEL_341:
          LODWORD(v112) = 0;
        }

        *(a1 + 92) = v112;
        continue;
      case 9u:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        v168 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v265) = 0;
          v169 = [a2 position] + 1;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
          {
            v171 = [a2 data];
            [v171 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v167 |= (v265 & 0x7F) << v165;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v76 = v166++ > 8;
          if (v76)
          {
            goto LABEL_369;
          }
        }

        if (([a2 hasError] & 1) != 0 || v167 > 9)
        {
LABEL_369:
          v167 = 0;
        }

        v218 = [v168 numberWithUnsignedInt:v167];
        if (!v218)
        {
LABEL_464:
          v263 = 0;
          goto LABEL_463;
        }

        v219 = v218;
        [v4 addObject:v218];

        break;
      case 0xAu:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          LOBYTE(v265) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v265 & 0x7F) << v84;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v76 = v85++ > 8;
          if (v76)
          {
            goto LABEL_331;
          }
        }

        if (([a2 hasError] & 1) != 0 || v86 > 5)
        {
LABEL_331:
          LODWORD(v86) = 0;
        }

        *(a1 + 96) = v86;
        continue;
      case 0xBu:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 21) = 1;
        while (1)
        {
          LOBYTE(v265) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v265 & 0x7F) << v158;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v12 = v159++ >= 9;
          if (v12)
          {
            v164 = 0;
            goto LABEL_366;
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

LABEL_366:
        *(a1 + 100) = v164;
        continue;
      case 0xCu:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 22) = 1;
        while (1)
        {
          LOBYTE(v265) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v265 & 0x7F) << v57;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v12 = v58++ >= 9;
          if (v12)
          {
            v63 = 0;
            goto LABEL_320;
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

LABEL_320:
        *(a1 + 104) = v63;
        continue;
      case 0xDu:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 23) = 1;
        while (1)
        {
          LOBYTE(v265) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v265 & 0x7F) << v77;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_328;
          }
        }

        if ([a2 hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v79;
        }

LABEL_328:
        *(a1 + 108) = v83;
        continue;
      case 0xEu:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 24) = 1;
        while (1)
        {
          LOBYTE(v265) = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v265 & 0x7F) << v139;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v12 = v140++ >= 9;
          if (v12)
          {
            v145 = 0;
            goto LABEL_354;
          }
        }

        if ([a2 hasError])
        {
          v145 = 0;
        }

        else
        {
          v145 = v141;
        }

LABEL_354:
        *(a1 + 112) = v145;
        continue;
      case 0xFu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 25) = 1;
        while (1)
        {
          LOBYTE(v265) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v265 & 0x7F) << v45;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v12 = v46++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_316;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v47;
        }

LABEL_316:
        *(a1 + 116) = v51;
        continue;
      case 0x10u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 26) = 1;
        while (1)
        {
          LOBYTE(v265) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v265 & 0x7F) << v101;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            v107 = 0;
            goto LABEL_338;
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

LABEL_338:
        *(a1 + 120) = v107;
        continue;
      case 0x11u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 27) = 1;
        while (1)
        {
          LOBYTE(v265) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v265 & 0x7F) << v36;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_312;
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

LABEL_312:
        *(a1 + 124) = v42;
        continue;
      case 0x12u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 28) = 1;
        while (1)
        {
          LOBYTE(v265) = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            v129 = [a2 data];
            [v129 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v265 & 0x7F) << v124;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v12 = v125++ >= 9;
          if (v12)
          {
            v130 = 0;
            goto LABEL_350;
          }
        }

        if ([a2 hasError])
        {
          v130 = 0;
        }

        else
        {
          v130 = v126;
        }

LABEL_350:
        *(a1 + 128) = v130;
        continue;
      case 0x13u:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        while (1)
        {
          LOBYTE(v265) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v265 & 0x7F) << v152;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v76 = v153++ > 8;
          if (v76)
          {
            goto LABEL_361;
          }
        }

        if (([a2 hasError] & 1) != 0 || v154 > 3)
        {
LABEL_361:
          LODWORD(v154) = 0;
        }

        *(a1 + 132) = v154;
        continue;
      case 0x14u:
        v182 = 0;
        v183 = 0;
        v184 = 0;
        while (1)
        {
          LOBYTE(v265) = 0;
          v185 = [a2 position] + 1;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
          {
            v187 = [a2 data];
            [v187 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v184 |= (v265 & 0x7F) << v182;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v182 += 7;
          v76 = v183++ > 8;
          if (v76)
          {
            goto LABEL_374;
          }
        }

        if (([a2 hasError] & 1) != 0 || v184 > 2)
        {
LABEL_374:
          LODWORD(v184) = 0;
        }

        *(a1 + 136) = v184;
        continue;
      case 0x15u:
        *(a1 + 29) = 1;
        v265 = 0;
        v133 = [a2 position] + 4;
        if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 4, v134 <= objc_msgSend(a2, "length")))
        {
          v241 = [a2 data];
          [v241 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 140) = v265;
        continue;
      case 0x16u:
        *(a1 + 30) = 1;
        v265 = 0;
        v137 = [a2 position] + 4;
        if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 4, v138 <= objc_msgSend(a2, "length")))
        {
          v243 = [a2 data];
          [v243 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 144) = v265;
        continue;
      case 0x17u:
        *(a1 + 31) = 1;
        v265 = 0;
        v178 = [a2 position] + 4;
        if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 4, v179 <= objc_msgSend(a2, "length")))
        {
          v247 = [a2 data];
          [v247 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 148) = v265;
        continue;
      case 0x18u:
        *(a1 + 32) = 1;
        v265 = 0;
        v198 = [a2 position] + 4;
        if (v198 >= [a2 position] && (v199 = objc_msgSend(a2, "position") + 4, v199 <= objc_msgSend(a2, "length")))
        {
          v251 = [a2 data];
          [v251 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 152) = v265;
        continue;
      case 0x19u:
        *(a1 + 33) = 1;
        v265 = 0;
        v92 = [a2 position] + 4;
        if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 4, v93 <= objc_msgSend(a2, "length")))
        {
          v237 = [a2 data];
          [v237 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 156) = v265;
        continue;
      case 0x1Au:
        *(a1 + 34) = 1;
        v265 = 0;
        v90 = [a2 position] + 4;
        if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 4, v91 <= objc_msgSend(a2, "length")))
        {
          v236 = [a2 data];
          [v236 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 160) = v265;
        continue;
      case 0x1Bu:
        *(a1 + 35) = 1;
        v265 = 0;
        v206 = [a2 position] + 4;
        if (v206 >= [a2 position] && (v207 = objc_msgSend(a2, "position") + 4, v207 <= objc_msgSend(a2, "length")))
        {
          v255 = [a2 data];
          [v255 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 164) = v265;
        continue;
      case 0x1Cu:
        *(a1 + 36) = 1;
        v265 = 0;
        v32 = [a2 position] + 4;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 4, v33 <= objc_msgSend(a2, "length")))
        {
          v228 = [a2 data];
          [v228 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 168) = v265;
        continue;
      case 0x1Du:
        *(a1 + 37) = 1;
        v265 = 0;
        v200 = [a2 position] + 4;
        if (v200 >= [a2 position] && (v201 = objc_msgSend(a2, "position") + 4, v201 <= objc_msgSend(a2, "length")))
        {
          v252 = [a2 data];
          [v252 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 172) = v265;
        continue;
      case 0x1Eu:
        *(a1 + 38) = 1;
        v265 = 0;
        v202 = [a2 position] + 4;
        if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 4, v203 <= objc_msgSend(a2, "length")))
        {
          v253 = [a2 data];
          [v253 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 176) = v265;
        continue;
      case 0x1Fu:
        *(a1 + 39) = 1;
        v265 = 0;
        v172 = [a2 position] + 4;
        if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 4, v173 <= objc_msgSend(a2, "length")))
        {
          v244 = [a2 data];
          [v244 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 180) = v265;
        continue;
      case 0x20u:
        *(a1 + 40) = 1;
        v265 = 0;
        v122 = [a2 position] + 4;
        if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 4, v123 <= objc_msgSend(a2, "length")))
        {
          v239 = [a2 data];
          [v239 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 184) = v265;
        continue;
      case 0x21u:
        *(a1 + 41) = 1;
        v265 = 0;
        v174 = [a2 position] + 4;
        if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 4, v175 <= objc_msgSend(a2, "length")))
        {
          v245 = [a2 data];
          [v245 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 188) = v265;
        continue;
      case 0x22u:
        *(a1 + 42) = 1;
        v265 = 0;
        v52 = [a2 position] + 4;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 4, v53 <= objc_msgSend(a2, "length")))
        {
          v231 = [a2 data];
          [v231 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 192) = v265;
        continue;
      case 0x23u:
        *(a1 + 43) = 1;
        v265 = 0;
        v34 = [a2 position] + 4;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 4, v35 <= objc_msgSend(a2, "length")))
        {
          v229 = [a2 data];
          [v229 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 196) = v265;
        continue;
      case 0x24u:
        *(a1 + 44) = 1;
        v265 = 0;
        v28 = [a2 position] + 4;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 4, v29 <= objc_msgSend(a2, "length")))
        {
          v226 = [a2 data];
          [v226 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 200) = v265;
        continue;
      case 0x25u:
        *(a1 + 45) = 1;
        v265 = 0;
        v30 = [a2 position] + 4;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 4, v31 <= objc_msgSend(a2, "length")))
        {
          v227 = [a2 data];
          [v227 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 204) = v265;
        continue;
      case 0x26u:
        *(a1 + 46) = 1;
        v265 = 0;
        v20 = [a2 position] + 4;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
        {
          v222 = [a2 data];
          [v222 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 208) = v265;
        continue;
      case 0x27u:
        *(a1 + 47) = 1;
        v265 = 0;
        v204 = [a2 position] + 4;
        if (v204 >= [a2 position] && (v205 = objc_msgSend(a2, "position") + 4, v205 <= objc_msgSend(a2, "length")))
        {
          v254 = [a2 data];
          [v254 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 212) = v265;
        continue;
      case 0x28u:
        *(a1 + 48) = 1;
        v265 = 0;
        v180 = [a2 position] + 4;
        if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 4, v181 <= objc_msgSend(a2, "length")))
        {
          v248 = [a2 data];
          [v248 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 216) = v265;
        continue;
      case 0x29u:
        *(a1 + 49) = 1;
        v265 = 0;
        v68 = [a2 position] + 4;
        if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 4, v69 <= objc_msgSend(a2, "length")))
        {
          v235 = [a2 data];
          [v235 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 220) = v265;
        continue;
      case 0x2Au:
        *(a1 + 50) = 1;
        v265 = 0;
        v131 = [a2 position] + 4;
        if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 4, v132 <= objc_msgSend(a2, "length")))
        {
          v240 = [a2 data];
          [v240 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 224) = v265;
        continue;
      case 0x2Bu:
        *(a1 + 51) = 1;
        v265 = 0;
        v190 = [a2 position] + 4;
        if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 4, v191 <= objc_msgSend(a2, "length")))
        {
          v250 = [a2 data];
          [v250 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 228) = v265;
        continue;
      case 0x2Cu:
        *(a1 + 52) = 1;
        v265 = 0;
        v18 = [a2 position] + 4;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
        {
          v221 = [a2 data];
          [v221 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 232) = v265;
        continue;
      case 0x2Du:
        *(a1 + 53) = 1;
        v265 = 0;
        v43 = [a2 position] + 4;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 4, v44 <= objc_msgSend(a2, "length")))
        {
          v230 = [a2 data];
          [v230 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 236) = v265;
        continue;
      case 0x2Eu:
        *(a1 + 54) = 1;
        v265 = 0;
        v176 = [a2 position] + 4;
        if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 4, v177 <= objc_msgSend(a2, "length")))
        {
          v246 = [a2 data];
          [v246 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 240) = v265;
        continue;
      case 0x2Fu:
        *(a1 + 55) = 1;
        v265 = 0;
        v214 = [a2 position] + 4;
        if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 4, v215 <= objc_msgSend(a2, "length")))
        {
          v259 = [a2 data];
          [v259 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 244) = v265;
        continue;
      case 0x30u:
        *(a1 + 56) = 1;
        v265 = 0;
        v24 = [a2 position] + 4;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 4, v25 <= objc_msgSend(a2, "length")))
        {
          v224 = [a2 data];
          [v224 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 248) = v265;
        continue;
      case 0x31u:
        *(a1 + 57) = 1;
        v265 = 0;
        v54 = [a2 position] + 4;
        if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 4, v55 <= objc_msgSend(a2, "length")))
        {
          v232 = [a2 data];
          [v232 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 252) = v265;
        continue;
      case 0x32u:
        *(a1 + 58) = 1;
        v265 = 0;
        v64 = [a2 position] + 4;
        if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 4, v65 <= objc_msgSend(a2, "length")))
        {
          v233 = [a2 data];
          [v233 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 256) = v265;
        continue;
      case 0x33u:
        *(a1 + 59) = 1;
        v265 = 0;
        v16 = [a2 position] + 4;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
        {
          v220 = [a2 data];
          [v220 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 260) = v265;
        continue;
      case 0x34u:
        *(a1 + 60) = 1;
        v265 = 0;
        v216 = [a2 position] + 4;
        if (v216 >= [a2 position] && (v217 = objc_msgSend(a2, "position") + 4, v217 <= objc_msgSend(a2, "length")))
        {
          v260 = [a2 data];
          [v260 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 264) = v265;
        continue;
      case 0x35u:
        *(a1 + 61) = 1;
        v265 = 0;
        v212 = [a2 position] + 4;
        if (v212 >= [a2 position] && (v213 = objc_msgSend(a2, "position") + 4, v213 <= objc_msgSend(a2, "length")))
        {
          v258 = [a2 data];
          [v258 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 268) = v265;
        continue;
      case 0x36u:
        *(a1 + 62) = 1;
        v265 = 0;
        v22 = [a2 position] + 4;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
        {
          v223 = [a2 data];
          [v223 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 272) = v265;
        continue;
      case 0x37u:
        *(a1 + 63) = 1;
        v265 = 0;
        v208 = [a2 position] + 4;
        if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 4, v209 <= objc_msgSend(a2, "length")))
        {
          v256 = [a2 data];
          [v256 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 276) = v265;
        continue;
      case 0x38u:
        *(a1 + 64) = 1;
        v265 = 0;
        v210 = [a2 position] + 4;
        if (v210 >= [a2 position] && (v211 = objc_msgSend(a2, "position") + 4, v211 <= objc_msgSend(a2, "length")))
        {
          v257 = [a2 data];
          [v257 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 280) = v265;
        continue;
      case 0x39u:
        *(a1 + 65) = 1;
        v265 = 0;
        v26 = [a2 position] + 4;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 4, v27 <= objc_msgSend(a2, "length")))
        {
          v225 = [a2 data];
          [v225 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 284) = v265;
        continue;
      case 0x3Au:
        *(a1 + 66) = 1;
        v265 = 0;
        v188 = [a2 position] + 4;
        if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 4, v189 <= objc_msgSend(a2, "length")))
        {
          v249 = [a2 data];
          [v249 getBytes:&v265 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 288) = v265;
        continue;
      case 0x3Bu:
        v14 = PBReaderReadString();
        v15 = 320;
LABEL_78:
        v56 = *(a1 + v15);
        *(a1 + v15) = v14;

        continue;
      case 0x3Cu:
        v192 = 0;
        v193 = 0;
        v194 = 0;
        while (1)
        {
          LOBYTE(v265) = 0;
          v195 = [a2 position] + 1;
          if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 1, v196 <= objc_msgSend(a2, "length")))
          {
            v197 = [a2 data];
            [v197 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v194 |= (v265 & 0x7F) << v192;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v192 += 7;
          v76 = v193++ > 8;
          if (v76)
          {
            goto LABEL_378;
          }
        }

        if (([a2 hasError] & 1) != 0 || v194 > 3)
        {
LABEL_378:
          LODWORD(v194) = 0;
        }

        *(a1 + 292) = v194;
        continue;
      case 0x3Du:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          LOBYTE(v265) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v265 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v265 & 0x7F) << v70;
          if ((v265 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v76 = v71++ > 8;
          if (v76)
          {
            goto LABEL_323;
          }
        }

        if (([a2 hasError] & 1) != 0 || v72 > 2)
        {
LABEL_323:
          LODWORD(v72) = 0;
        }

        *(a1 + 296) = v72;
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_464;
    }
  }

  v261 = [v4 copy];
  v262 = *(a1 + 312);
  *(a1 + 312) = v261;

  v263 = [a2 hasError] ^ 1;
LABEL_463:

  return v263;
}

__CFString *BMGazeEnrollmentSampleEnrollmentFailureReasonAsString(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E228[a1];
  }

  return v2;
}

__CFString *BMGazeEnrollmentSampleEnrollmentQualityAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E1A0[a1];
  }

  return v2;
}

__CFString *BMGazeEnrollmentSampleAccessibilityModeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E1D0[a1];
  }

  return v2;
}

__CFString *BMGazeEnrollmentSampleEyeboxStatusAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E1F0[a1];
  }

  return v2;
}

__CFString *BMGazeEnrollmentSampleEnrollmentReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E208[a1];
  }

  return v2;
}

__CFString *BMGazeEnrollmentSampleEnrollmentDeviceTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E278[a1];
  }

  return v2;
}

uint64_t BMGazeEnrollmentSampleEnrollmentQualityDecode(uint64_t result)
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

uint64_t BMGazeEnrollmentSampleAccessibilityModeDecode(uint64_t result)
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

uint64_t BMGazeEnrollmentSampleEyeboxStatusDecode(uint64_t result)
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

uint64_t BMGazeEnrollmentSampleEnrollmentReasonDecode(uint64_t result)
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

uint64_t BMGazeEnrollmentSampleEnrollmentFailureReasonDecode(uint64_t result)
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

uint64_t BMGazeEnrollmentSampleEnrollmentDeviceTypeDecode(uint64_t result)
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

_BYTE *BMOasisAnalyticsGazeSampleEyeSideFromString(const void *a1)
{
  result = bsearch_b(a1, BMOasisAnalyticsGazeSampleEyeSideFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_94792);
  if (result)
  {
    return *(&BMOasisAnalyticsGazeSampleEyeSideFromString_sortedEnums + (((result - BMOasisAnalyticsGazeSampleEyeSideFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMOasisAnalyticsGazeSamplePupilSizeCategoryFromString(const void *a1)
{
  result = bsearch_b(a1, BMOasisAnalyticsGazeSamplePupilSizeCategoryFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_33_94770);
  if (result)
  {
    return *(&BMOasisAnalyticsGazeSamplePupilSizeCategoryFromString_sortedEnums + (((result - BMOasisAnalyticsGazeSamplePupilSizeCategoryFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMOasisAnalyticsGazeSampleEnrollmentDeviceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMOasisAnalyticsGazeSampleEnrollmentDeviceTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_41_94760);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMOasisAnalyticsGazeSampleEnrollmentDeviceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMOasisAnalyticsGazeSampleEyeSideAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E3A0[a1];
  }

  return v2;
}

__CFString *BMOasisAnalyticsGazeSamplePupilSizeCategoryAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E3C8[a1];
  }

  return v2;
}

__CFString *BMOasisAnalyticsGazeSampleEnrollmentDeviceTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E400[a1];
  }

  return v2;
}

uint64_t BMOasisAnalyticsGazeSampleEyeSideDecode(uint64_t result)
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

uint64_t BMOasisAnalyticsGazeSamplePupilSizeCategoryDecode(uint64_t result)
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

uint64_t BMOasisAnalyticsGazeSampleEnrollmentDeviceTypeDecode(uint64_t result)
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

__CFString *BMOasisAnalyticsProcessIdAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"ARKitD";
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

uint64_t BMOasisAnalyticsProcessIdDecode(uint64_t result)
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

_BYTE *BMWalletPaymentsCommerceTransactionTransactionSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceTransactionTransactionSourceFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_95465);
  if (result)
  {
    return *(&BMGeneratedImageFailureReasonFeatureFromString_sortedEnums + (((result - BMWalletPaymentsCommerceTransactionTransactionSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommerceTransactionAccountTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceTransactionAccountTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_21_95455);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMWalletPaymentsCommerceTransactionAccountTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommerceTransactionTransactionStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceTransactionTransactionStatusFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_29_95447);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMWalletPaymentsCommerceTransactionTransactionStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWalletPaymentsCommerceTransactionTransactionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMWalletPaymentsCommerceTransactionTransactionTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_37);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMWalletPaymentsCommerceTransactionTransactionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWalletPaymentsCommerceTransactionTransactionSourceAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E548[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommerceTransactionAccountTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E568[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommerceTransactionTransactionStatusAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E580[a1];
  }

  return v2;
}

__CFString *BMWalletPaymentsCommerceTransactionTransactionTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E598[a1];
  }

  return v2;
}

uint64_t BMWalletPaymentsCommerceTransactionTransactionSourceDecode(uint64_t result)
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

uint64_t BMWalletPaymentsCommerceTransactionAccountTypeDecode(uint64_t result)
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

uint64_t BMWalletPaymentsCommerceTransactionTransactionStatusDecode(uint64_t result)
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

uint64_t BMWalletPaymentsCommerceTransactionTransactionTypeDecode(uint64_t result)
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

_BYTE *BMOasisAnalyticsDeviceWornStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMOasisAnalyticsDeviceWornStatusFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_95664);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMOasisAnalyticsDeviceWornStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMOasisAnalyticsDeviceWornStatusAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E650[a1];
  }

  return v2;
}