uint64_t BMOasisAnalyticsDeviceWornStatusDecode(uint64_t result)
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

_BYTE *BMOasisAnalyticsContextSnapshotEnvironmentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMOasisAnalyticsContextSnapshotEnvironmentTypeFromString_sortedStrings, 0x1FuLL, 8uLL, &__block_literal_global_95983);
  if (result)
  {
    return *(&BMOasisAnalyticsContextSnapshotEnvironmentTypeFromString_sortedEnums + (((result - BMOasisAnalyticsContextSnapshotEnvironmentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMOasisAnalyticsContextSnapshotEnvironmentTypeAsString(uint64_t a1)
{
  if (a1 >= 0x20)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9E950[a1];
  }

  return v2;
}

_BYTE *BMOasisAnalyticsTrackingStateTrackingModeFromString(const void *a1)
{
  result = bsearch_b(a1, BMOasisAnalyticsTrackingStateTrackingModeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_108_96207);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMOasisAnalyticsTrackingStateTrackingModeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMOasisAnalyticsTrackingStateTrackingModeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9EA50[a1];
  }

  return v2;
}

_BYTE *BMOasisAnalyticsRelocalizationSucceededDescriptorTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMOasisAnalyticsRelocalizationSucceededDescriptorTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_119_96406);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMOasisAnalyticsRelocalizationSucceededDescriptorTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMOasisAnalyticsRelocalizationSucceededDescriptorTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9EA70[a1];
  }

  return v2;
}

uint64_t BMOasisAnalyticsContextSnapshotEnvironmentTypeDecode(uint64_t result)
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

uint64_t BMOasisAnalyticsTrackingStateTrackingModeDecode(uint64_t result)
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

uint64_t BMOasisAnalyticsRelocalizationSucceededDescriptorTypeDecode(uint64_t result)
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

_BYTE *BMOasisAnalyticsDeviceInfoOasisAnalyticsTeamFromString(const void *a1)
{
  result = bsearch_b(a1, BMOasisAnalyticsDeviceInfoOasisAnalyticsTeamFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_96610);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMOasisAnalyticsDeviceInfoOasisAnalyticsTeamFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMOasisAnalyticsDeviceInfoOasisAnalyticsTeamAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9F2E8[a1];
  }

  return v2;
}

_BYTE *BMOasisAnalyticsRegionInfoCountryCodeFromString(const void *a1)
{
  result = bsearch_b(a1, BMOasisAnalyticsRegionInfoCountryCodeFromString_sortedStrings, 0xFAuLL, 8uLL, &__block_literal_global_762_96661);
  if (result)
  {
    return *(&BMOasisAnalyticsRegionInfoCountryCodeFromString_sortedEnums + (((result - BMOasisAnalyticsRegionInfoCountryCodeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMOasisAnalyticsRegionInfoCountryCodeAsString(uint64_t a1)
{
  if (a1 >= 0xFB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9F300[a1];
  }

  return v2;
}

uint64_t BMOasisAnalyticsDeviceInfoOasisAnalyticsTeamDecode(uint64_t result)
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

uint64_t BMOasisAnalyticsRegionInfoCountryCodeDecode(uint64_t result)
{
  if (result >= 0xFB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

_BYTE *BMASRRequestMetricsRecordCompletionStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMASRRequestMetricsRecordCompletionStateFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_97918);
  if (result)
  {
    return *(&BMDeviceActivityPredictionOutputReasonFromString_sortedEnums + (((result - BMASRRequestMetricsRecordCompletionStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMASRRequestMetricsRecordCompletionStateAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9FBF0[a1];
  }

  return v2;
}

uint64_t BMASRRequestMetricsRecordCompletionStateDecode(uint64_t result)
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

_BYTE *BMGeneratedImageUserInteractionPersonalizationFromString(const void *a1)
{
  result = bsearch_b(a1, BMGeneratedImageUserInteractionPersonalizationFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_98759);
  if (result)
  {
    return *(&BMMessagesSearchEventBuildTypeFromString_sortedEnums + (((result - BMGeneratedImageUserInteractionPersonalizationFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMGeneratedImageUserInteractionResultFromString(const void *a1)
{
  result = bsearch_b(a1, BMGeneratedImageUserInteractionResultFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_48_98725);
  if (result)
  {
    return *(&BMGeneratedImageUserInteractionResultFromString_sortedEnums + (((result - BMGeneratedImageUserInteractionResultFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMGeneratedImageUserInteractionFeatureFromString(const void *a1)
{
  result = bsearch_b(a1, BMGeneratedImageUserInteractionFeatureFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_65_98708);
  if (result)
  {
    return *(&BMGeneratedImageUserInteractionFeatureFromString_sortedEnums + (((result - BMGeneratedImageUserInteractionFeatureFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMGeneratedImageUserInteractionPersonalizationAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9FE50[a1];
  }

  return v2;
}

__CFString *BMGeneratedImageUserInteractionResultAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9FE78[a1];
  }

  return v2;
}

__CFString *BMGeneratedImageUserInteractionFeatureAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9FED0[a1];
  }

  return v2;
}

uint64_t BMGeneratedImageUserInteractionPersonalizationDecode(uint64_t result)
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

uint64_t BMGeneratedImageUserInteractionResultDecode(uint64_t result)
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

uint64_t BMGeneratedImageUserInteractionFeatureDecode(uint64_t result)
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

__CFString *BMSleepSessionStartReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9FF98[a1];
  }

  return v2;
}

_BYTE *BMSleepSessionStartReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMSleepSessionStartReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_99174);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMSleepSessionStartReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMSleepSessionStartReasonDecode(uint64_t result)
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

__CFString *BMSleepSessionEndReasonAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6E9FFB8[a1];
  }

  return v2;
}

_BYTE *BMSleepSessionEndReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMSleepSessionEndReasonFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_39_99200);
  if (result)
  {
    return *(&BMSleepSessionEndReasonFromString_sortedEnums + (((result - BMSleepSessionEndReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMSleepSessionEndReasonDecode(uint64_t result)
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

_BYTE *BMLocalAuthenticationEvaluationsRatchetStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocalAuthenticationEvaluationsRatchetStateFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_99644);
  if (result)
  {
    return *(&BMLocalAuthenticationEvaluationsRatchetStateFromString_sortedEnums + (((result - BMLocalAuthenticationEvaluationsRatchetStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMLocalAuthenticationEvaluationsRatchetArmingStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocalAuthenticationEvaluationsRatchetArmingStateFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_45_99625);
  if (result)
  {
    return *(&BMLocalAuthenticationEvaluationsRatchetArmingStateFromString_sortedEnums + (((result - BMLocalAuthenticationEvaluationsRatchetArmingStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLocalAuthenticationEvaluationsRatchetStateAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA00F8[a1];
  }

  return v2;
}

__CFString *BMLocalAuthenticationEvaluationsRatchetArmingStateAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA0140[a1];
  }

  return v2;
}

uint64_t BMLocalAuthenticationEvaluationsRatchetStateDecode(uint64_t result)
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

uint64_t BMLocalAuthenticationEvaluationsRatchetArmingStateDecode(uint64_t result)
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

_BYTE *BMInferenceOutputTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMInferenceOutputTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_99851);
  if (result)
  {
    return *(&BMInferenceOutputTypeFromString_sortedEnums + (((result - BMInferenceOutputTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMInferenceAccuracyFromString(const void *a1)
{
  result = bsearch_b(a1, BMInferenceAccuracyFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_24_99841);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMInferenceAccuracyFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMInferenceOutputTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA01D0[a1];
  }

  return v2;
}

__CFString *BMInferenceAccuracyAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA01F8[a1];
  }

  return v2;
}

uint64_t BMInferenceOutputTypeDecode(uint64_t result)
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

uint64_t BMInferenceAccuracyDecode(uint64_t result)
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

_BYTE *BMAppleIntelligenceAvailabilityUseCaseInfoWaitlistStatusFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppleIntelligenceAvailabilityUseCaseInfoWaitlistStatusFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_100516);
  if (result)
  {
    return *(&BMAppleIntelligenceAvailabilityUseCaseInfoWaitlistStatusFromString_sortedEnums + (((result - BMAppleIntelligenceAvailabilityUseCaseInfoWaitlistStatusFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppleIntelligenceAvailabilityUseCaseInfoWaitlistStatusAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA02E0[a1];
  }

  return v2;
}

__CFString *BMAppleIntelligenceAvailabilityRegionAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

uint64_t BMAppleIntelligenceAvailabilityUseCaseInfoWaitlistStatusDecode(uint64_t result)
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

_BYTE *BMAppDocumentInteractionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppDocumentInteractionTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_100992);
  if (result)
  {
    return *(&BMAppDocumentInteractionTypeFromString_sortedEnums + (((result - BMAppDocumentInteractionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppDocumentInteractionTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA03B0[a1];
  }

  return v2;
}

uint64_t BMAppDocumentInteractionTypeDecode(uint64_t result)
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

_BYTE *BMSafariWebsitesBlockingQuitBlockingReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMSafariWebsitesBlockingQuitBlockingReasonFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_101134);
  if (result)
  {
    return *(&BMSafariWebsitesBlockingQuitBlockingReasonFromString_sortedEnums + (((result - BMSafariWebsitesBlockingQuitBlockingReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSafariWebsitesBlockingQuitBlockingReasonAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA0448[a1];
  }

  return v2;
}

uint64_t BMSafariWebsitesBlockingQuitBlockingReasonDecode(uint64_t result)
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

_BYTE *BMLocalAuthenticationDialogsMechanismFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocalAuthenticationDialogsMechanismFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_101972);
  if (result)
  {
    return *(&BMLocalAuthenticationDialogsMechanismFromString_sortedEnums + (((result - BMLocalAuthenticationDialogsMechanismFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMLocalAuthenticationDialogsActionFromString(const void *a1)
{
  result = bsearch_b(a1, BMLocalAuthenticationDialogsActionFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_42_101947);
  if (result)
  {
    return *(&BMLocalAuthenticationDialogsActionFromString_sortedEnums + (((result - BMLocalAuthenticationDialogsActionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMLocalAuthenticationDialogsMechanismAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA05B8[a1];
  }

  return v2;
}

__CFString *BMLocalAuthenticationDialogsActionAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA05E8[a1];
  }

  return v2;
}

uint64_t BMLocalAuthenticationDialogsMechanismDecode(uint64_t result)
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

uint64_t BMLocalAuthenticationDialogsActionDecode(uint64_t result)
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

_BYTE *BMAvailableAssetStatusReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMAvailableAssetStatusReasonFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_102863);
  if (result)
  {
    return *(&BMAvailableAssetStatusReasonFromString_sortedEnums + (((result - BMAvailableAssetStatusReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMUAFAssetUAFAssetSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMUAFAssetUAFAssetSourceFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_39_103254);
  if (result)
  {
    return *(&BMUAFAssetUAFAssetSourceFromString_sortedEnums + (((result - BMUAFAssetUAFAssetSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMUAFAssetUAFAssetSourceAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA08A0[a1];
  }

  return v2;
}

__CFString *BMAvailableAssetStatusReasonAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA0860[a1];
  }

  return v2;
}

uint64_t BMAvailableAssetStatusReasonDecode(uint64_t result)
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

uint64_t BMUAFAssetUAFAssetSourceDecode(uint64_t result)
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

_BYTE *BMMediaSuggesterSuggestionFeedbackMediaSubTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMediaSuggesterSuggestionFeedbackMediaSubTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_24_103650);
  if (result)
  {
    return *(&BMMediaSuggesterSuggestionFeedbackMediaSubTypeFromString_sortedEnums + (((result - BMMediaSuggesterSuggestionFeedbackMediaSubTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMediaSuggesterSuggestionFeedbackEngagementTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMediaSuggesterSuggestionFeedbackEngagementTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_103637);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMMediaSuggesterSuggestionFeedbackEngagementTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMediaSuggesterSuggestionFeedbackMediaSubTypeAsString(uint64_t a1)
{
  if (a1 < 6 && ((0x33u >> a1) & 1) != 0)
  {
    v2 = off_1E6EA09A0[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  return v2;
}

__CFString *BMMediaSuggesterSuggestionFeedbackEngagementTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA0980[a1];
  }

  return v2;
}

uint64_t BMMediaSuggesterSuggestionFeedbackEngagementTypeDecode(uint64_t result)
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

uint64_t BMMediaSuggesterSuggestionFeedbackMediaSubTypeDecode(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_1855469D4[a1];
  }
}

_BYTE *BMMessagesSearchEventBuildTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventBuildTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_104522);
  if (result)
  {
    return *(&BMMessagesSearchEventBuildTypeFromString_sortedEnums + (((result - BMMessagesSearchEventBuildTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSearchEventBuildTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA0EF8[a1];
  }

  return v2;
}

_BYTE *BMMessagesSearchEventTokenTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventTokenTypeFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_51);
  if (result)
  {
    return *(&BMMessagesSearchEventTokenTypeFromString_sortedEnums + (((result - BMMessagesSearchEventTokenTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSearchEventTokenTypeAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA0F20[a1];
  }

  return v2;
}

_BYTE *BMMessagesSearchEventInteractionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventInteractionTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_62_104728);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMMessagesSearchEventInteractionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMessagesSearchEventVisualComponentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventVisualComponentTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_92_104866);
  if (result)
  {
    return *(&BMMessagesSearchEventVisualComponentTypeFromString_sortedEnums + (((result - BMMessagesSearchEventVisualComponentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMessagesSearchEventPageTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventPageTypeFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_159_104772);
  if (result)
  {
    return *(&BMMessagesSearchEventPageTypeFromString_sortedEnums + (((result - BMMessagesSearchEventPageTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSearchEventPageTypeAsString(uint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1048[a1];
  }

  return v2;
}

_BYTE *BMMessagesSearchEventSectionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventSectionTypeFromString_sortedStrings, 0xAuLL, 8uLL, &__block_literal_global_124_104818);
  if (result)
  {
    return *(&BMMessagesSearchEventSectionTypeFromString_sortedEnums + (((result - BMMessagesSearchEventSectionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSearchEventSectionTypeAsString(uint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA0FF0[a1];
  }

  return v2;
}

__CFString *BMMessagesSearchEventVisualComponentTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA0FC0[a1];
  }

  return v2;
}

__CFString *BMMessagesSearchEventInteractionTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA0F80[a1];
  }

  return v2;
}

_BYTE *BMMessagesSearchEventDisplayEndedReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventDisplayEndedReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_75_104934);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMMessagesSearchEventDisplayEndedReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSearchEventDisplayEndedReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA0FA0[a1];
  }

  return v2;
}

_BYTE *BMMessagesSearchEventDisplayStartedReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventDisplayStartedReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_73);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMMessagesSearchEventDisplayStartedReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSearchEventDisplayStartedReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA0FA0[a1];
  }

  return v2;
}

_BYTE *BMMessagesSearchEventSearchViewDisappearedReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventSearchViewDisappearedReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_181_104985);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMMessagesSearchEventSearchViewDisappearedReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSearchEventSearchViewDisappearedReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA10C8[a1];
  }

  return v2;
}

_BYTE *BMMessagesSearchEventSearchViewAppearedReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventSearchViewAppearedReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_170_105008);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMMessagesSearchEventSearchViewAppearedReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSearchEventSearchViewAppearedReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA10A8[a1];
  }

  return v2;
}

_BYTE *BMMessagesSearchEventMessagesAppViewDisappearedReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventMessagesAppViewDisappearedReasonFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_188);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMessagesSearchEventMessagesAppViewDisappearedReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSearchEventMessagesAppViewDisappearedReasonAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1108[a1];
  }

  return v2;
}

_BYTE *BMMessagesSearchEventMessagesAppViewAppearedReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMMessagesSearchEventMessagesAppViewAppearedReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_186);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMMessagesSearchEventMessagesAppViewAppearedReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMessagesSearchEventMessagesAppViewAppearedReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA10E8[a1];
  }

  return v2;
}

uint64_t BMMessagesSearchEventBuildTypeDecode(uint64_t result)
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

uint64_t BMMessagesSearchEventTokenTypeDecode(uint64_t result)
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

uint64_t BMMessagesSearchEventInteractionTypeDecode(uint64_t result)
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

uint64_t BMMessagesSearchEventDisplayStartedReasonDecode(uint64_t result)
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

uint64_t BMMessagesSearchEventDisplayEndedReasonDecode(uint64_t result)
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

uint64_t BMMessagesSearchEventVisualComponentTypeDecode(uint64_t result)
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

uint64_t BMMessagesSearchEventSectionTypeDecode(uint64_t result)
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

uint64_t BMMessagesSearchEventPageTypeDecode(uint64_t result)
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

uint64_t BMMessagesSearchEventSearchViewAppearedReasonDecode(uint64_t result)
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

uint64_t BMMessagesSearchEventSearchViewDisappearedReasonDecode(uint64_t result)
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

uint64_t BMMessagesSearchEventMessagesAppViewAppearedReasonDecode(uint64_t result)
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

uint64_t BMMessagesSearchEventMessagesAppViewDisappearedReasonDecode(uint64_t result)
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

_BYTE *BMAppLanguageConsumptionDataSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMAppLanguageConsumptionDataSourceFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_105417);
  if (result)
  {
    return *(&BMAppLanguageConsumptionDataSourceFromString_sortedEnums + (((result - BMAppLanguageConsumptionDataSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAppLanguageConsumptionDataSourceAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1180[a1];
  }

  return v2;
}

uint64_t BMAppLanguageConsumptionDataSourceDecode(uint64_t result)
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

_BYTE *BMVisualIntelligenceCameraDetectedLabelsTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMVisualIntelligenceCameraDetectedLabelsTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_105645);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMVisualIntelligenceCameraDetectedLabelsTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMVisualIntelligenceCameraDetectedLabelsTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA11F0[a1];
  }

  return v2;
}

uint64_t BMVisualIntelligenceCameraDetectedLabelsTypeDecode(uint64_t result)
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

_BYTE *BMTranslationLanguageCodeSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMTranslationLanguageCodeSourceFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_106799);
  if (result)
  {
    return *(&BMTranslationLanguageCodeSourceFromString_sortedEnums + (((result - BMTranslationLanguageCodeSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMTranslationLanguageCodeSourceAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA13F8[a1];
  }

  return v2;
}

uint64_t BMTranslationLanguageCodeSourceDecode(uint64_t result)
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

_BYTE *BMMomentsEngagementLightSuggestionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEngagementLightSuggestionTypeFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_107138);
  if (result)
  {
    return *(&BMMomentsEngagementLightSuggestionTypeFromString_sortedEnums + (((result - BMMomentsEngagementLightSuggestionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsEngagementLightDeviceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEngagementLightDeviceTypeFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_39_107113);
  if (result)
  {
    return *(&BMMomentsEngagementLightDeviceTypeFromString_sortedEnums + (((result - BMMomentsEngagementLightDeviceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEngagementLightSuggestionTypeAsString(uint64_t a1)
{
  if (a1 <= 8)
  {
    switch(a1)
    {
      case 0:
        v2 = @"Unknown";

        return v2;
      case 1:
        v2 = @"Selected";

        return v2;
      case 6:
        v2 = @"Deleted";

        return v2;
    }

LABEL_22:
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];

    return v2;
  }

  if (a1 > 28)
  {
    if (a1 == 29)
    {
      v2 = @"NotificationDismissed";

      return v2;
    }

    if (a1 == 30)
    {
      v2 = @"NotificationPosted";

      return v2;
    }

    goto LABEL_22;
  }

  if (a1 != 9)
  {
    if (a1 == 28)
    {
      v2 = @"NotificationTapped";

      return v2;
    }

    goto LABEL_22;
  }

  v2 = @"Viewed";

  return v2;
}

__CFString *BMMomentsEngagementLightDeviceTypeAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1538[a1];
  }

  return v2;
}

_BYTE *BMMomentsEngagementLightAppEntryEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsEngagementLightAppEntryEventTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_53);
  if (result)
  {
    return *(&BMMomentsEngagementLightAppEntryEventTypeFromString_sortedEnums + (((result - BMMomentsEngagementLightAppEntryEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsEngagementLightAppEntryEventTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1568[a1];
  }

  return v2;
}

uint64_t BMMomentsEngagementLightSuggestionTypeDecode(uint64_t result)
{
  if (result > 0x1E || ((1 << result) & 0x70000243) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t BMMomentsEngagementLightDeviceTypeDecode(uint64_t result)
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

uint64_t BMMomentsEngagementLightAppEntryEventTypeDecode(uint64_t result)
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

_BYTE *BMConversationUserInteractionEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMConversationUserInteractionEventTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_107507);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMConversationUserInteractionEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMConversationUserInteractionEventTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA15C8[a1];
  }

  return v2;
}

uint64_t BMConversationUserInteractionEventTypeDecode(uint64_t result)
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

_BYTE *BMDeviceExpertTroubleshootingActionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceExpertTroubleshootingActionTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_107888);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMDeviceExpertTroubleshootingActionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceExpertTroubleshootingActionTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA16A8[a1];
  }

  return v2;
}

uint64_t BMDeviceExpertTroubleshootingActionTypeDecode(uint64_t result)
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

_BYTE *BMGenerativeExperiencesGuardrailResultInstanceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMGenerativeExperiencesGuardrailResultInstanceTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_108851);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMGenerativeExperiencesGuardrailResultInstanceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMGenerativeExperiencesGuardrailResultInstanceTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1888[a1];
  }

  return v2;
}

uint64_t BMGenerativeExperiencesGuardrailResultInstanceTypeDecode(uint64_t result)
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

_BYTE *BMWritingToolsComposeAndAdjustResultFromString(const void *a1)
{
  result = bsearch_b(a1, BMWritingToolsComposeAndAdjustResultFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_109128);
  if (result)
  {
    return *(&BMWritingToolsComposeAndAdjustResultFromString_sortedEnums + (((result - BMWritingToolsComposeAndAdjustResultFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMWritingToolsComposeAndAdjustFeatureFromString(const void *a1)
{
  result = bsearch_b(a1, BMWritingToolsComposeAndAdjustFeatureFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_21_109118);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMWritingToolsComposeAndAdjustFeatureFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMWritingToolsComposeAndAdjustResultAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1910[a1];
  }

  return v2;
}

__CFString *BMWritingToolsComposeAndAdjustFeatureAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1930[a1];
  }

  return v2;
}

uint64_t BMWritingToolsComposeAndAdjustResultDecode(uint64_t result)
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

uint64_t BMWritingToolsComposeAndAdjustFeatureDecode(uint64_t result)
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

_BYTE *BMGeneratedImageFailureReasonReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMGeneratedImageFailureReasonReasonFromString_sortedStrings, 0xEuLL, 8uLL, &__block_literal_global_109340);
  if (result)
  {
    return *(&BMGeneratedImageFailureReasonReasonFromString_sortedEnums + (((result - BMGeneratedImageFailureReasonReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMGeneratedImageFailureReasonFeatureFromString(const void *a1)
{
  result = bsearch_b(a1, BMGeneratedImageFailureReasonFeatureFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_57_109327);
  if (result)
  {
    return *(&BMGeneratedImageFailureReasonFeatureFromString_sortedEnums + (((result - BMGeneratedImageFailureReasonFeatureFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMGeneratedImageFailureReasonReasonAsString(uint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1A00[a1];
  }

  return v2;
}

__CFString *BMGeneratedImageFailureReasonFeatureAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1A78[a1];
  }

  return v2;
}

uint64_t BMGeneratedImageFailureReasonReasonDecode(uint64_t result)
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

uint64_t BMGeneratedImageFailureReasonFeatureDecode(uint64_t result)
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

_BYTE *BMDeviceActivityPredictionPredictionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceActivityPredictionPredictionTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_109656);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMDeviceActivityPredictionPredictionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDeviceActivityPredictionConfidenceLevelFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceActivityPredictionConfidenceLevelFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_21_109643);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMDeviceActivityPredictionConfidenceLevelFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMDeviceActivityPredictionOutputReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMDeviceActivityPredictionOutputReasonFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_38_109626);
  if (result)
  {
    return *(&BMDeviceActivityPredictionOutputReasonFromString_sortedEnums + (((result - BMDeviceActivityPredictionOutputReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMDeviceActivityPredictionPredictionTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1B20[a1];
  }

  return v2;
}

__CFString *BMDeviceActivityPredictionConfidenceLevelAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1B38[a1];
  }

  return v2;
}

__CFString *BMDeviceActivityPredictionOutputReasonAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1B58[a1];
  }

  return v2;
}

uint64_t BMDeviceActivityPredictionPredictionTypeDecode(uint64_t result)
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

uint64_t BMDeviceActivityPredictionConfidenceLevelDecode(uint64_t result)
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

uint64_t BMDeviceActivityPredictionOutputReasonDecode(uint64_t result)
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

_BYTE *BMVisualIntelligenceCameraLookupEventTamaleViewAppearedReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMVisualIntelligenceCameraLookupEventTamaleViewAppearedReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_109943);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMVisualIntelligenceCameraLookupEventTamaleViewAppearedReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMVisualIntelligenceCameraLookupEventTamaleViewDisappearedReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMVisualIntelligenceCameraLookupEventTamaleViewDisappearedReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_24_109930);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMVisualIntelligenceCameraLookupEventTamaleViewDisappearedReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMVisualIntelligenceCameraLookupEventTamaleViewAppearedReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1DF0[a1];
  }

  return v2;
}

__CFString *BMVisualIntelligenceCameraLookupEventTamaleViewDisappearedReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1E10[a1];
  }

  return v2;
}

__CFString *BMVisualIntelligenceCameraLookupEventFailureReasonAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"NoResults";
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

_BYTE *BMVisualIntelligenceCameraLookupEventRequestEndReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMVisualIntelligenceCameraLookupEventRequestEndReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_63_110083);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMVisualIntelligenceCameraLookupEventRequestEndReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMVisualIntelligenceCameraLookupEventRequestEndReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1E70[a1];
  }

  return v2;
}

_BYTE *BMVisualIntelligenceCameraLookupEventRequestDomainFromString(const void *a1)
{
  result = bsearch_b(a1, BMVisualIntelligenceCameraLookupEventRequestDomainFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_52_110117);
  if (result)
  {
    return *(&BMBlinkDurationEntryBlinkDurationCategoryFromString_sortedEnums + (((result - BMVisualIntelligenceCameraLookupEventRequestDomainFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMVisualIntelligenceCameraLookupEventRequestDomainAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1E30[a1];
  }

  return v2;
}

__CFString *BMVisualIntelligenceCameraLookupEventRequestTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"VisualLookup";
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

_BYTE *BMVisualIntelligenceCameraLookupEventDisplayStartedReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMVisualIntelligenceCameraLookupEventDisplayStartedReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_79_110220);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMVisualIntelligenceCameraLookupEventDisplayStartedReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMVisualIntelligenceCameraLookupEventDisplayEndedReasonFromString(const void *a1)
{
  result = bsearch_b(a1, BMVisualIntelligenceCameraLookupEventDisplayEndedReasonFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_90_110209);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMVisualIntelligenceCameraLookupEventDisplayEndedReasonFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMVisualIntelligenceCameraLookupEventComponentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMVisualIntelligenceCameraLookupEventComponentTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_109_110290);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMVisualIntelligenceCameraLookupEventComponentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMVisualIntelligenceCameraLookupEventPillTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_101_110271);
  if (result)
  {
    return *(&BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedEnums + (((result - BMVisualIntelligenceCameraLookupEventPillTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMVisualIntelligenceCameraLookupEventPillTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1ED0[a1];
  }

  return v2;
}

__CFString *BMVisualIntelligenceCameraLookupEventComponentTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1EF0[a1];
  }

  return v2;
}

__CFString *BMVisualIntelligenceCameraLookupEventDisplayStartedReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1E90[a1];
  }

  return v2;
}

__CFString *BMVisualIntelligenceCameraLookupEventDisplayEndedReasonAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1EB0[a1];
  }

  return v2;
}

_BYTE *BMVisualIntelligenceCameraLookupEventInteractionTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMVisualIntelligenceCameraLookupEventInteractionTypeFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_120_110332);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMVisualIntelligenceCameraLookupEventInteractionTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMVisualIntelligenceCameraLookupEventInteractionTypeAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA1F08[a1];
  }

  return v2;
}

uint64_t BMVisualIntelligenceCameraLookupEventTamaleViewAppearedReasonDecode(uint64_t result)
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

uint64_t BMVisualIntelligenceCameraLookupEventTamaleViewDisappearedReasonDecode(uint64_t result)
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

uint64_t BMVisualIntelligenceCameraLookupEventRequestTypeDecode(uint64_t result)
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

uint64_t BMVisualIntelligenceCameraLookupEventRequestDomainDecode(uint64_t result)
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

uint64_t BMVisualIntelligenceCameraLookupEventRequestEndReasonDecode(uint64_t result)
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

uint64_t BMVisualIntelligenceCameraLookupEventFailureReasonDecode(uint64_t result)
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

uint64_t BMVisualIntelligenceCameraLookupEventDisplayStartedReasonDecode(uint64_t result)
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

uint64_t BMVisualIntelligenceCameraLookupEventDisplayEndedReasonDecode(uint64_t result)
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

uint64_t BMVisualIntelligenceCameraLookupEventPillTypeDecode(uint64_t result)
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

uint64_t BMVisualIntelligenceCameraLookupEventComponentTypeDecode(uint64_t result)
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

uint64_t BMVisualIntelligenceCameraLookupEventInteractionTypeDecode(uint64_t result)
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

_BYTE *BMMAEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMAEventTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_110953);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMAEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMASecureOperationTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMASecureOperationTypeFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_33_110747);
  if (result)
  {
    return *(&BMMASecureOperationTypeFromString_sortedEnums + (((result - BMMASecureOperationTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMASecureOperationTypeAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA20C8[a1];
  }

  return v2;
}

__CFString *BMMAEventTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA20B0[a1];
  }

  return v2;
}

uint64_t BMMAEventTypeDecode(uint64_t result)
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

uint64_t BMMASecureOperationTypeDecode(uint64_t result)
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

_BYTE *BMMomentsNotificationsFireDateSourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsNotificationsFireDateSourceFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_77_111610);
  if (result)
  {
    return *(&BMMomentsNotificationsFireDateSourceFromString_sortedEnums + (((result - BMMomentsNotificationsFireDateSourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsNotificationsEventTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsNotificationsEventTypeFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_47_111585);
  if (result)
  {
    return *(&BMMomentsNotificationsEventTypeFromString_sortedEnums + (((result - BMMomentsNotificationsEventTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsNotificationsContentTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsNotificationsContentTypeFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_69_111577);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMMomentsNotificationsContentTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsNotificationsDeviceTypeFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsNotificationsDeviceTypeFromString_sortedStrings, 4uLL, 8uLL, &__block_literal_global_61_111563);
  if (result)
  {
    return *(&BMMomentsNotificationsDeviceTypeFromString_sortedEnums + (((result - BMMomentsNotificationsDeviceTypeFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsNotificationsSchedulingStateFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsNotificationsSchedulingStateFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_111552);
  if (result)
  {
    return *(&BMMomentsNotificationsSchedulingStateFromString_sortedEnums + (((result - BMMomentsNotificationsSchedulingStateFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMMomentsNotificationsScheduledDeliverySettingFromString(const void *a1)
{
  result = bsearch_b(a1, BMMomentsNotificationsScheduledDeliverySettingFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_24_111541);
  if (result)
  {
    return *(&BMMomentsNotificationsScheduledDeliverySettingFromString_sortedEnums + (((result - BMMomentsNotificationsScheduledDeliverySettingFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMMomentsNotificationsFireDateSourceAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA23F0[a1];
  }

  return v2;
}

__CFString *BMMomentsNotificationsEventTypeAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA2370[a1];
  }

  return v2;
}

__CFString *BMMomentsNotificationsContentTypeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA23D8[a1];
  }

  return v2;
}

__CFString *BMMomentsNotificationsDeviceTypeAsString(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA23B0[a1];
  }

  return v2;
}

__CFString *BMMomentsNotificationsSchedulingStateAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA2330[a1];
  }

  return v2;
}

__CFString *BMMomentsNotificationsScheduledDeliverySettingAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA2350[a1];
  }

  return v2;
}

uint64_t BMMomentsNotificationsSchedulingStateDecode(uint64_t result)
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

uint64_t BMMomentsNotificationsScheduledDeliverySettingDecode(uint64_t result)
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

uint64_t BMMomentsNotificationsEventTypeDecode(uint64_t result)
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

uint64_t BMMomentsNotificationsDeviceTypeDecode(uint64_t result)
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

uint64_t BMMomentsNotificationsContentTypeDecode(uint64_t result)
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

uint64_t BMMomentsNotificationsFireDateSourceDecode(uint64_t result)
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

_BYTE *BMBlinkIntervalEntryBlinkIntervalCategoryFromString(const void *a1)
{
  result = bsearch_b(a1, BMBlinkIntervalEntryBlinkIntervalCategoryFromString_sortedStrings, 8uLL, 8uLL, &__block_literal_global_30_112575);
  if (result)
  {
    return *(&BMBlinkIntervalEntryBlinkIntervalCategoryFromString_sortedEnums + (((result - BMBlinkIntervalEntryBlinkIntervalCategoryFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMBlinkIntervalEntryBlinkIntervalCategoryAsString(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA2630[a1];
  }

  return v2;
}

_BYTE *BMBlinkDurationEntryBlinkDurationCategoryFromString(const void *a1)
{
  result = bsearch_b(a1, BMBlinkDurationEntryBlinkDurationCategoryFromString_sortedStrings, 7uLL, 8uLL, &__block_literal_global_112634);
  if (result)
  {
    return *(&BMBlinkDurationEntryBlinkDurationCategoryFromString_sortedEnums + (((result - BMBlinkDurationEntryBlinkDurationCategoryFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMBlinkDurationEntryBlinkDurationCategoryAsString(uint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA25F0[a1];
  }

  return v2;
}

uint64_t BMBlinkDurationEntryBlinkDurationCategoryDecode(uint64_t result)
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

uint64_t BMBlinkIntervalEntryBlinkIntervalCategoryDecode(uint64_t result)
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

_BYTE *BMAdPlatformsOpportunityPlacementFromString(const void *a1)
{
  result = bsearch_b(a1, BMAdPlatformsOpportunityPlacementFromString_sortedStrings, 0xBuLL, 8uLL, &__block_literal_global_113327);
  if (result)
  {
    return *(&BMAdPlatformsOpportunityPlacementFromString_sortedEnums + (((result - BMAdPlatformsOpportunityPlacementFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

uint64_t BMAdPlatformsOpportunityPlacementDecode(uint64_t result)
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

__CFString *BMAdPlatformsOpportunityPlacementAsString(uint64_t a1)
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

_BYTE *BMAdPlatformsCandidateFilterFromString(const void *a1)
{
  result = bsearch_b(a1, BMAdPlatformsCandidateFilterFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_113589);
  if (result)
  {
    return *(&BMAdPlatformsCandidateFilterFromString_sortedEnums + (((result - BMAdPlatformsCandidateFilterFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMAdPlatformsCandidateImpressionFromString(const void *a1)
{
  result = bsearch_b(a1, BMAdPlatformsCandidateImpressionFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_36_113570);
  if (result)
  {
    return *(&BMAdPlatformsCandidateImpressionFromString_sortedEnums + (((result - BMAdPlatformsCandidateImpressionFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMAdPlatformsCandidateFilterAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA2838[a1];
  }

  return v2;
}

__CFString *BMAdPlatformsCandidateImpressionAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA2868[a1];
  }

  return v2;
}

uint64_t BMAdPlatformsCandidateFilterDecode(uint64_t result)
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

uint64_t BMAdPlatformsCandidateImpressionDecode(uint64_t result)
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

_BYTE *BMCommAppsHoldAssistFedStatsMLClassificationFromString(const void *a1)
{
  result = bsearch_b(a1, BMCommAppsHoldAssistFedStatsMLClassificationFromString_sortedStrings, 5uLL, 8uLL, &__block_literal_global_113897);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsMLClassificationFromString_sortedEnums + (((result - BMCommAppsHoldAssistFedStatsMLClassificationFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMCommAppsHoldAssistFedStatsRecommendationFromString(const void *a1)
{
  result = bsearch_b(a1, BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedStrings, 3uLL, 8uLL, &__block_literal_global_30_113884);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedEnums + (((result - BMCommAppsHoldAssistFedStatsRecommendationFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

_BYTE *BMCommAppsHoldAssistFedStatsObservationFromString(const void *a1)
{
  result = bsearch_b(a1, BMCommAppsHoldAssistFedStatsObservationFromString_sortedStrings, 6uLL, 8uLL, &__block_literal_global_50_113864);
  if (result)
  {
    return *(&BMCommAppsHoldAssistFedStatsObservationFromString_sortedEnums + (((result - BMCommAppsHoldAssistFedStatsObservationFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMCommAppsHoldAssistFedStatsMLClassificationAsString(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA2948[a1];
  }

  return v2;
}

__CFString *BMCommAppsHoldAssistFedStatsRecommendationAsString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA2978[a1];
  }

  return v2;
}

__CFString *BMCommAppsHoldAssistFedStatsObservationAsString(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA2998[a1];
  }

  return v2;
}

uint64_t BMCommAppsHoldAssistFedStatsMLClassificationDecode(uint64_t result)
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

uint64_t BMCommAppsHoldAssistFedStatsRecommendationDecode(uint64_t result)
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

uint64_t BMCommAppsHoldAssistFedStatsObservationDecode(uint64_t result)
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

_BYTE *BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString(const void *a1)
{
  result = bsearch_b(a1, BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedStrings, 2uLL, 8uLL, &__block_literal_global_114083);
  if (result)
  {
    return *(&BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedEnums + (((result - BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceFromString_sortedStrings) >> 1) & 0x7FFFFFFFFFFFFFFCLL));
  }

  return result;
}

__CFString *BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E6EA2A58[a1];
  }

  return v2;
}

uint64_t BMSiriEntityInfoSiriEntityHashInfoSiriPersonEntitySourceDecode(uint64_t result)
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