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
+ (id)descriptionForReindexReason:(unint64_t)reason;
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
+ (void)setAllowCriticalThrottleBypass:(BOOL)bypass;
+ (void)setAlwaysLogAllTimingResults:(BOOL)results;
+ (void)setAlwaysUseCriticalIndex:(BOOL)index;
+ (void)setChatBatchSize:(int64_t)size;
+ (void)setExitOnIndexingTimeout:(BOOL)timeout;
+ (void)setExtendedSpotlightTimeoutSeconds:(int64_t)seconds;
+ (void)setForceSpotlightIndexingErrors:(BOOL)errors;
+ (void)setIgnorePreviewGenerationNotifications:(BOOL)notifications;
+ (void)setIgnoreThrottling:(BOOL)throttling;
+ (void)setMessageRecordBatchSize:(int64_t)size;
+ (void)setMessageSubBatchSize:(int64_t)size;
+ (void)setNeedsDeferredIndexing:(BOOL)indexing;
+ (void)setNeedsIndexing:(BOOL)indexing;
+ (void)setNotifyForSpotlightEvents:(BOOL)events;
+ (void)setNotifyForVerboseSpotlightEvents:(BOOL)events;
+ (void)setReindexFirstBatchSize:(int64_t)size;
+ (void)setReindexSchedulingBatchDelay:(double)delay;
+ (void)setReindexSchedulingBatchSize:(int64_t)size;
+ (void)setReindexSchedulingContext:(id)context;
+ (void)setReindexSchedulingInProgress:(BOOL)progress;
+ (void)setReindexSchedulingLastRowID:(int64_t)d;
+ (void)setReindexSchedulingUserInfoData:(id)data;
+ (void)setReindexSupplementalBatchSize:(int64_t)size;
+ (void)setReindexingSuspendedUntilDate:(id)date;
+ (void)setReindexingSuspensionReason:(id)reason;
+ (void)setSpotlightEventsAreTimeSensitive:(BOOL)sensitive;
+ (void)setSpotlightTimeoutSeconds:(int64_t)seconds;
+ (void)setWithdrawDonationsForFailedPreviewGenerations:(BOOL)generations;
@end

@implementation IMCoreSpotlightUtilities

+ (BOOL)alwaysUseCriticalIndex
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 0;
  }

  _alwaysUseCriticalIndexKey = [self _alwaysUseCriticalIndexKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (BOOL)forceSpotlightIndexingErrors
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 0;
  }

  _forceSpotlightIndexingErrorsKey = [self _forceSpotlightIndexingErrorsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (BOOL)needsIndexing
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  isSpotlightReindexRefactorEnabled = [v2 isSpotlightReindexRefactorEnabled];

  if (isSpotlightReindexRefactorEnabled)
  {
    return 0;
  }

  return IMGetCachedDomainBoolForKeyWithDefaultValue();
}

+ (void)setNeedsIndexing:(BOOL)indexing
{
  v4 = +[IMFeatureFlags sharedFeatureFlags];
  isSpotlightReindexRefactorEnabled = [v4 isSpotlightReindexRefactorEnabled];

  if ((isSpotlightReindexRefactorEnabled & 1) == 0)
  {
    IMSetDomainBoolForKey();
    if (!indexing)
    {
      date = [MEMORY[0x1E695DF00] date];
      IMSetDomainValueForKey();
    }
  }
}

+ (BOOL)needsDeferredIndexing
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  isSpotlightReindexRefactorEnabled = [v2 isSpotlightReindexRefactorEnabled];

  if (isSpotlightReindexRefactorEnabled)
  {
    return 0;
  }

  return IMGetCachedDomainBoolForKeyWithDefaultValue();
}

+ (void)setNeedsDeferredIndexing:(BOOL)indexing
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  isSpotlightReindexRefactorEnabled = [v3 isSpotlightReindexRefactorEnabled];

  if ((isSpotlightReindexRefactorEnabled & 1) == 0)
  {

    IMSetDomainBoolForKey();
  }
}

+ (id)descriptionForReindexReason:(unint64_t)reason
{
  if (reason - 1 > 5)
  {
    return @"No Recorded Reason";
  }

  else
  {
    return off_1E782B2E0[reason - 1];
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
  isSpotlightReindexRefactorEnabled = [v2 isSpotlightReindexRefactorEnabled];

  if (isSpotlightReindexRefactorEnabled)
  {
    return 0;
  }

  return IMGetCachedDomainIntForKeyWithDefaultValue();
}

+ (NSDate)reindexingSuspendedUntilDate
{
  _reindexSuspendedUntilKey = [self _reindexSuspendedUntilKey];
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

+ (void)setReindexingSuspendedUntilDate:(id)date
{
  dateCopy = date;
  _reindexSuspendedUntilKey = [self _reindexSuspendedUntilKey];
  IMSetDomainValueForKey();
}

+ (NSString)reindexingSuspensionReason
{
  _reindexSuspensionReasonKey = [self _reindexSuspensionReasonKey];
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

+ (void)setReindexingSuspensionReason:(id)reason
{
  reasonCopy = reason;
  _reindexSuspensionReasonKey = [self _reindexSuspensionReasonKey];
  IMSetDomainValueForKey();
}

+ (BOOL)reindexingSuspended
{
  date = [MEMORY[0x1E695DF00] date];
  reindexingSuspendedUntilDate = [self reindexingSuspendedUntilDate];
  [date timeIntervalSinceDate:reindexingSuspendedUntilDate];
  v6 = v5 < 0.0;

  return v6;
}

+ (BOOL)notifyForSpotlightEvents
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 0;
  }

  _notifyForSpotlightEventsKey = [self _notifyForSpotlightEventsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setNotifyForSpotlightEvents:(BOOL)events
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _notifyForSpotlightEventsKey = [self _notifyForSpotlightEventsKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)notifyForVerboseSpotlightEvents
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 0;
  }

  _notifyForVerboseSpotlightEventsKey = [self _notifyForVerboseSpotlightEventsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setNotifyForVerboseSpotlightEvents:(BOOL)events
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _notifyForVerboseSpotlightEventsKey = [self _notifyForVerboseSpotlightEventsKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)spotlightEventsAreTimeSensitive
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 0;
  }

  _spotlightEventsAreTimeSensitiveKey = [self _spotlightEventsAreTimeSensitiveKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setSpotlightEventsAreTimeSensitive:(BOOL)sensitive
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _spotlightEventsAreTimeSensitiveKey = [self _spotlightEventsAreTimeSensitiveKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)exitOnIndexingTimeout
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 1;
  }

  _exitOnIndexingTimeoutKey = [self _exitOnIndexingTimeoutKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setExitOnIndexingTimeout:(BOOL)timeout
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _exitOnIndexingTimeoutKey = [self _exitOnIndexingTimeoutKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)alwaysLogAllTimingResults
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 0;
  }

  _alwaysLogAllTimingResultsKey = [self _alwaysLogAllTimingResultsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setAlwaysLogAllTimingResults:(BOOL)results
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _alwaysLogAllTimingResultsKey = [self _alwaysLogAllTimingResultsKey];
    IMSetDomainBoolForKey();
  }
}

+ (void)setForceSpotlightIndexingErrors:(BOOL)errors
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _forceSpotlightIndexingErrorsKey = [self _forceSpotlightIndexingErrorsKey];
    IMSetDomainBoolForKey();
  }
}

+ (void)setAlwaysUseCriticalIndex:(BOOL)index
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _alwaysUseCriticalIndexKey = [self _alwaysUseCriticalIndexKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)ignoreThrottling
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 0;
  }

  _ignoreThrottlingKey = [self _ignoreThrottlingKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setIgnoreThrottling:(BOOL)throttling
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _ignoreThrottlingKey = [self _ignoreThrottlingKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)allowCriticalThrottleBypass
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 1;
  }

  _allowCriticalThrottleBypassKey = [self _allowCriticalThrottleBypassKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setAllowCriticalThrottleBypass:(BOOL)bypass
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _allowCriticalThrottleBypassKey = [self _allowCriticalThrottleBypassKey];
    IMSetDomainBoolForKey();
  }
}

+ (int64_t)spotlightTimeoutSeconds
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 30;
  }

  _spotlightTimeoutSecondsKey = [self _spotlightTimeoutSecondsKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setSpotlightTimeoutSeconds:(int64_t)seconds
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _spotlightTimeoutSecondsKey = [self _spotlightTimeoutSecondsKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)extendedSpotlightTimeoutSeconds
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 60;
  }

  _extendedSpotlightTimeoutSecondsKey = [self _extendedSpotlightTimeoutSecondsKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setExtendedSpotlightTimeoutSeconds:(int64_t)seconds
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _extendedSpotlightTimeoutSecondsKey = [self _extendedSpotlightTimeoutSecondsKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)chatBatchSize
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 100;
  }

  _chatBatchSizeKey = [self _chatBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setChatBatchSize:(int64_t)size
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _chatBatchSizeKey = [self _chatBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)messageSubBatchSize
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 100;
  }

  _messageSubBatchSizeKey = [self _messageSubBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setMessageSubBatchSize:(int64_t)size
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _messageSubBatchSizeKey = [self _messageSubBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)messageRecordBatchSize
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 16;
  }

  _messageRecordBatchSizeKey = [self _messageRecordBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setMessageRecordBatchSize:(int64_t)size
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _messageRecordBatchSizeKey = [self _messageRecordBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)reindexFirstBatchSize
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 3000;
  }

  _reindexFirstBatchSizeKey = [self _reindexFirstBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setReindexFirstBatchSize:(int64_t)size
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _reindexFirstBatchSizeKey = [self _reindexFirstBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)reindexSupplementalBatchSize
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 500;
  }

  _reindexSupplementalBatchSizeKey = [self _reindexSupplementalBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setReindexSupplementalBatchSize:(int64_t)size
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _reindexSupplementalBatchSizeKey = [self _reindexSupplementalBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (int64_t)reindexSchedulingBatchSize
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 500;
  }

  _reindexSchedulingBatchSizeKey = [self _reindexSchedulingBatchSizeKey];
  v6 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v6;
}

+ (void)setReindexSchedulingBatchSize:(int64_t)size
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _reindexSchedulingBatchSizeKey = [self _reindexSchedulingBatchSizeKey];
    IMSetDomainIntForKey();
  }
}

+ (double)reindexSchedulingBatchDelay
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _reindexSchedulingBatchDelayKey = [self _reindexSchedulingBatchDelayKey];
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

+ (void)setReindexSchedulingBatchDelay:(double)delay
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _reindexSchedulingBatchDelayKey = [self _reindexSchedulingBatchDelayKey];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
    IMSetDomainValueForKey();
  }
}

+ (BOOL)reindexSchedulingInProgress
{
  _reindexSchedulingInProgressKey = [self _reindexSchedulingInProgressKey];
  v3 = IMGetDomainBoolForKeyWithDefaultValue();

  return v3;
}

+ (void)setReindexSchedulingInProgress:(BOOL)progress
{
  _reindexSchedulingInProgressKey = [self _reindexSchedulingInProgressKey];
  IMSetDomainBoolForKey();
}

+ (NSData)reindexSchedulingContext
{
  _reindexSchedulingContextKey = [self _reindexSchedulingContextKey];
  v3 = IMGetCachedDomainValueForKey();

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

+ (void)setReindexSchedulingContext:(id)context
{
  contextCopy = context;
  _reindexSchedulingContextKey = [self _reindexSchedulingContextKey];
  IMSetDomainValueForKey();
}

+ (NSData)reindexSchedulingUserInfoData
{
  _reindexSchedulingUserInfoDataKey = [self _reindexSchedulingUserInfoDataKey];
  v3 = IMGetCachedDomainValueForKey();

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

+ (void)setReindexSchedulingUserInfoData:(id)data
{
  dataCopy = data;
  _reindexSchedulingUserInfoDataKey = [self _reindexSchedulingUserInfoDataKey];
  IMSetDomainValueForKey();
}

+ (int64_t)reindexSchedulingLastRowID
{
  _reindexSchedulingLastRowIDKey = [self _reindexSchedulingLastRowIDKey];
  v3 = IMGetCachedDomainIntForKeyWithDefaultValue();

  return v3;
}

+ (void)setReindexSchedulingLastRowID:(int64_t)d
{
  _reindexSchedulingLastRowIDKey = [self _reindexSchedulingLastRowIDKey];
  IMSetDomainIntForKey();
}

+ (BOOL)withdrawDonationsForFailedPreviewGenerations
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 1;
  }

  _withdrawDonationsForFailedPreviewGenerationsKey = [self _withdrawDonationsForFailedPreviewGenerationsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setWithdrawDonationsForFailedPreviewGenerations:(BOOL)generations
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _withdrawDonationsForFailedPreviewGenerationsKey = [self _withdrawDonationsForFailedPreviewGenerationsKey];
    IMSetDomainBoolForKey();
  }
}

+ (BOOL)ignorePreviewGenerationNotifications
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 0;
  }

  _ignorePreviewGenerationNotificationsKey = [self _ignorePreviewGenerationNotificationsKey];
  v6 = IMGetDomainBoolForKeyWithDefaultValue();

  return v6;
}

+ (void)setIgnorePreviewGenerationNotifications:(BOOL)notifications
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    _ignorePreviewGenerationNotificationsKey = [self _ignorePreviewGenerationNotificationsKey];
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