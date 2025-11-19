@interface IMCoreSpotlightUtilities
+ (BOOL)allowCriticalThrottleBypass;
+ (BOOL)alwaysLogAllTimingResults;
+ (BOOL)alwaysUseCriticalIndex;
+ (BOOL)exitOnIndexingTimeout;
+ (BOOL)forceSpotlightIndexingErrors;
+ (BOOL)ignorePreviewGenerationNotifications;
+ (BOOL)ignoreThrottling;
+ (BOOL)needsDeferredIndexing;
+ (BOOL)needsIndexing;
+ (BOOL)notifyForSpotlightEvents;
+ (BOOL)notifyForVerboseSpotlightEvents;
+ (BOOL)reindexSchedulingInProgress;
+ (BOOL)reindexingSuspended;
+ (BOOL)spotlightEventsAreTimeSensitive;
+ (BOOL)verboseLoggingEnabled;
+ (BOOL)withdrawDonationsForFailedPreviewGenerations;
+ (NSData)reindexSchedulingContext;
+ (NSData)reindexSchedulingUserInfoData;
+ (NSDate)reindexingSuspendedUntilDate;
+ (NSString)reindexingSuspensionReason;
+ (double)reindexSchedulingBatchDelay;
+ (id)allReasons;
+ (id)chatAutoDonatingCutomKey;
+ (id)chatAutoDonatingServerDateCustomKey;
+ (id)chatStyleCustomKey;
+ (id)checkPriorityCustomKey;
+ (id)descriptionForReindexReason:(unint64_t)a3;
+ (id)partCountKey;
+ (id)partIndexKey;
+ (id)threadIdentifierCustomKey;
+ (int64_t)chatBatchSize;
+ (int64_t)extendedSpotlightTimeoutSeconds;
+ (int64_t)messageRecordBatchSize;
+ (int64_t)messageSubBatchSize;
+ (int64_t)reindexFirstBatchSize;
+ (int64_t)reindexSchedulingBatchSize;
+ (int64_t)reindexSchedulingLastRowID;
+ (int64_t)reindexSupplementalBatchSize;
+ (int64_t)spotlightTimeoutSeconds;
+ (unint64_t)reindexReason;
+ (void)setAllowCriticalThrottleBypass:(BOOL)a3;
+ (void)setAlwaysLogAllTimingResults:(BOOL)a3;
+ (void)setAlwaysUseCriticalIndex:(BOOL)a3;
+ (void)setChatBatchSize:(int64_t)a3;
+ (void)setExitOnIndexingTimeout:(BOOL)a3;
+ (void)setExtendedSpotlightTimeoutSeconds:(int64_t)a3;
+ (void)setForceSpotlightIndexingErrors:(BOOL)a3;
+ (void)setIgnorePreviewGenerationNotifications:(BOOL)a3;
+ (void)setIgnoreThrottling:(BOOL)a3;
+ (void)setMessageRecordBatchSize:(int64_t)a3;
+ (void)setMessageSubBatchSize:(int64_t)a3;
+ (void)setNeedsDeferredIndexing:(BOOL)a3;
+ (void)setNeedsIndexing:(BOOL)a3;
+ (void)setNotifyForSpotlightEvents:(BOOL)a3;
+ (void)setNotifyForVerboseSpotlightEvents:(BOOL)a3;
+ (void)setReindexFirstBatchSize:(int64_t)a3;
+ (void)setReindexSchedulingBatchDelay:(double)a3;
+ (void)setReindexSchedulingBatchSize:(int64_t)a3;
+ (void)setReindexSchedulingContext:(id)a3;
+ (void)setReindexSchedulingInProgress:(BOOL)a3;
+ (void)setReindexSchedulingLastRowID:(int64_t)a3;
+ (void)setReindexSchedulingUserInfoData:(id)a3;
+ (void)setReindexSupplementalBatchSize:(int64_t)a3;
+ (void)setReindexingSuspendedUntilDate:(id)a3;
+ (void)setReindexingSuspensionReason:(id)a3;
+ (void)setSpotlightEventsAreTimeSensitive:(BOOL)a3;
+ (void)setSpotlightTimeoutSeconds:(int64_t)a3;
+ (void)setWithdrawDonationsForFailedPreviewGenerations:(BOOL)a3;
@end

@implementation IMCoreSpotlightUtilities

+ (BOOL)alwaysUseCriticalIndex
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 _alwaysUseCriticalIndexKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (BOOL)forceSpotlightIndexingErrors
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 _forceSpotlightIndexingErrorsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (BOOL)needsIndexing
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  v3 = [v2 isSpotlightReindexRefactorEnabled];

  if (v3)
  {
    return 0;
  }

  return IMGetCachedDomainBoolForKeyWithDefaultValue();
}

+ (void)setNeedsIndexing:(BOOL)a3
{
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  v5 = [v4 isSpotlightReindexRefactorEnabled];

  if ((v5 & 1) == 0)
  {
    IMSetDomainBoolForKey();
    if (!a3)
    {
      v6 = [MEMORY[0x1E695DF00] date];
      IMSetDomainValueForKey();
    }
  }
}

+ (BOOL)needsDeferredIndexing
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  v3 = [v2 isSpotlightReindexRefactorEnabled];

  if (v3)
  {
    return 0;
  }

  return IMGetCachedDomainBoolForKeyWithDefaultValue();
}

+ (void)setNeedsDeferredIndexing:(BOOL)a3
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 isSpotlightReindexRefactorEnabled];

  if ((v4 & 1) == 0)
  {

    IMSetDomainBoolForKey();
  }
}

+ (id)descriptionForReindexReason:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"No Recorded Reason";
  }

  else
  {
    return off_1E782B2E0[a3 - 1];
  }
}

+ (BOOL)verboseLoggingEnabled
{
  if (qword_1EB3092E8 != -1)
  {
    sub_1A88C6288();
  }

  return byte_1EB3092E0;
}

+ (unint64_t)reindexReason
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  v3 = [v2 isSpotlightReindexRefactorEnabled];

  if (v3)
  {
    return 0;
  }

  return IMGetCachedDomainIntForKeyWithDefaultValue();
}

+ (NSDate)reindexingSuspendedUntilDate
{
  v2 = [a1 _reindexSuspendedUntilKey];
  v3 = IMGetCachedDomainValueForKey();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setReindexingSuspendedUntilDate:(id)a3
{
  v4 = a3;
  v5 = [a1 _reindexSuspendedUntilKey];
  IMSetDomainValueForKey();
}

+ (NSString)reindexingSuspensionReason
{
  v2 = [a1 _reindexSuspensionReasonKey];
  v3 = IMGetCachedDomainValueForKey();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setReindexingSuspensionReason:(id)a3
{
  v4 = a3;
  v5 = [a1 _reindexSuspensionReasonKey];
  IMSetDomainValueForKey();
}

+ (BOOL)reindexingSuspended
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [a1 reindexingSuspendedUntilDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5 < 0.0;

  return v6;
}

+ (BOOL)notifyForSpotlightEvents
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 _notifyForSpotlightEventsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setNotifyForSpotlightEvents:(BOOL)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _notifyForSpotlightEventsKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)notifyForVerboseSpotlightEvents
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 _notifyForVerboseSpotlightEventsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setNotifyForVerboseSpotlightEvents:(BOOL)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _notifyForVerboseSpotlightEventsKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)spotlightEventsAreTimeSensitive
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 _spotlightEventsAreTimeSensitiveKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setSpotlightEventsAreTimeSensitive:(BOOL)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _spotlightEventsAreTimeSensitiveKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)exitOnIndexingTimeout
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 1;
  }

  v5 = [a1 _exitOnIndexingTimeoutKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setExitOnIndexingTimeout:(BOOL)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _exitOnIndexingTimeoutKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)alwaysLogAllTimingResults
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 _alwaysLogAllTimingResultsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setAlwaysLogAllTimingResults:(BOOL)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _alwaysLogAllTimingResultsKey];
    IMSetDomainBoolForKey();
  }
}

+ (void)setForceSpotlightIndexingErrors:(BOOL)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _forceSpotlightIndexingErrorsKey];
    IMSetDomainBoolForKey();
  }
}

+ (void)setAlwaysUseCriticalIndex:(BOOL)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _alwaysUseCriticalIndexKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)ignoreThrottling
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 _ignoreThrottlingKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setIgnoreThrottling:(BOOL)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _ignoreThrottlingKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)allowCriticalThrottleBypass
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 1;
  }

  v5 = [a1 _allowCriticalThrottleBypassKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setAllowCriticalThrottleBypass:(BOOL)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _allowCriticalThrottleBypassKey];
    IMSetDomainBoolForKey();
  }
}

+ (int64_t)spotlightTimeoutSeconds
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 30;
  }

  v5 = [a1 _spotlightTimeoutSecondsKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setSpotlightTimeoutSeconds:(int64_t)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _spotlightTimeoutSecondsKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)extendedSpotlightTimeoutSeconds
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 60;
  }

  v5 = [a1 _extendedSpotlightTimeoutSecondsKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setExtendedSpotlightTimeoutSeconds:(int64_t)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _extendedSpotlightTimeoutSecondsKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)chatBatchSize
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 100;
  }

  v5 = [a1 _chatBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setChatBatchSize:(int64_t)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _chatBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)messageSubBatchSize
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 100;
  }

  v5 = [a1 _messageSubBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setMessageSubBatchSize:(int64_t)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _messageSubBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)messageRecordBatchSize
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 16;
  }

  v5 = [a1 _messageRecordBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setMessageRecordBatchSize:(int64_t)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _messageRecordBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)reindexFirstBatchSize
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 3000;
  }

  v5 = [a1 _reindexFirstBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setReindexFirstBatchSize:(int64_t)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _reindexFirstBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)reindexSupplementalBatchSize
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 500;
  }

  v5 = [a1 _reindexSupplementalBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setReindexSupplementalBatchSize:(int64_t)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _reindexSupplementalBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)reindexSchedulingBatchSize
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 500;
  }

  v5 = [a1 _reindexSchedulingBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setReindexSchedulingBatchSize:(int64_t)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _reindexSchedulingBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (double)reindexSchedulingBatchDelay
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    v5 = [a1 _reindexSchedulingBatchDelayKey];
    v6 = IMGetCachedDomainValueForKey();

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0.1;
      goto LABEL_7;
    }

    if (v6)
    {
      [v6 doubleValue];
      v8 = v7;
LABEL_7:

      return v8;
    }
  }

  return 0.1;
}

+ (void)setReindexSchedulingBatchDelay:(double)a3
{
  v5 = [MEMORY[0x1E69A60F0] sharedInstance];
  v6 = [v5 isInternalInstall];

  if (v6)
  {
    v8 = [a1 _reindexSchedulingBatchDelayKey];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    IMSetDomainValueForKey();
  }
}

+ (BOOL)reindexSchedulingInProgress
{
  v2 = [a1 _reindexSchedulingInProgressKey];
  v3 = IMGetDomainBoolForKeyWithDefaultValue();

  return v3;
}

+ (void)setReindexSchedulingInProgress:(BOOL)a3
{
  v3 = [a1 _reindexSchedulingInProgressKey];
  IMSetDomainBoolForKey();
}

+ (NSData)reindexSchedulingContext
{
  v2 = [a1 _reindexSchedulingContextKey];
  v3 = IMGetCachedDomainValueForKey();

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

+ (void)setReindexSchedulingContext:(id)a3
{
  v4 = a3;
  v5 = [a1 _reindexSchedulingContextKey];
  IMSetDomainValueForKey();
}

+ (NSData)reindexSchedulingUserInfoData
{
  v2 = [a1 _reindexSchedulingUserInfoDataKey];
  v3 = IMGetCachedDomainValueForKey();

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

+ (void)setReindexSchedulingUserInfoData:(id)a3
{
  v4 = a3;
  v5 = [a1 _reindexSchedulingUserInfoDataKey];
  IMSetDomainValueForKey();
}

+ (int64_t)reindexSchedulingLastRowID
{
  v2 = [a1 _reindexSchedulingLastRowIDKey];
  v3 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v3;
}

+ (void)setReindexSchedulingLastRowID:(int64_t)a3
{
  v3 = [a1 _reindexSchedulingLastRowIDKey];
  IMSetDomainIntForKey();
}

+ (BOOL)withdrawDonationsForFailedPreviewGenerations
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 1;
  }

  v5 = [a1 _withdrawDonationsForFailedPreviewGenerationsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setWithdrawDonationsForFailedPreviewGenerations:(BOOL)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _withdrawDonationsForFailedPreviewGenerationsKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)ignorePreviewGenerationNotifications
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 _ignorePreviewGenerationNotificationsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setIgnorePreviewGenerationNotifications:(BOOL)a3
{
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [a1 _ignorePreviewGenerationNotificationsKey];
    IMSetDomainBoolForKey();
  }
}

+ (id)threadIdentifierCustomKey
{
  if (qword_1EB3092F8 != -1)
  {
    sub_1A88C629C();
  }

  v3 = qword_1EB309300;

  return v3;
}

+ (id)partCountKey
{
  if (qword_1EB309318 != -1)
  {
    sub_1A88C62B0();
  }

  v3 = qword_1EB309320;

  return v3;
}

+ (id)partIndexKey
{
  if (qword_1EB30A438 != -1)
  {
    sub_1A88C62C4();
  }

  v3 = qword_1EB30A440;

  return v3;
}

+ (id)checkPriorityCustomKey
{
  if (qword_1EB309550 != -1)
  {
    sub_1A88C62D8();
  }

  v3 = qword_1EB309558;

  return v3;
}

+ (id)chatStyleCustomKey
{
  if (qword_1EB309560 != -1)
  {
    sub_1A88C62EC();
  }

  v3 = qword_1EB309568;

  return v3;
}

+ (id)chatAutoDonatingCutomKey
{
  if (qword_1EB309580 != -1)
  {
    sub_1A88C6300();
  }

  v3 = qword_1EB309588;

  return v3;
}

+ (id)chatAutoDonatingServerDateCustomKey
{
  if (qword_1EB309570 != -1)
  {
    sub_1A88C6314();
  }

  v3 = qword_1EB309578;

  return v3;
}

+ (id)allReasons
{
  if (qword_1EB300710 != -1)
  {
    swift_once();
  }

  type metadata accessor for IMCoreSpotlightIndexReason(0);
  sub_1A8799138(&qword_1EB3053B0, type metadata accessor for IMCoreSpotlightIndexReason);
  sub_1A88C88C8();
  sub_1A85FC408();
  sub_1A8799138(&qword_1EB300270, sub_1A85FC408);
  result = sub_1A88C88D8();
  __break(1u);
  return result;
}

@end