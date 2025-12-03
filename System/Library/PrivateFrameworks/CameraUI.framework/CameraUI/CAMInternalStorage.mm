@interface CAMInternalStorage
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)_queryQueue_queryAvailableSpaceAndUpdateCachedEstimatesForBytesPerMinute:(SEL)minute minimumDiskUsageThreshold:(int64_t)threshold;
- (BOOL)_hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration totalFreeBytes:(int64_t)bytes allowPurging:(BOOL)purging verbose:(BOOL)verbose;
- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging verbose:(BOOL)verbose;
- (BOOL)hasPurgeableResources;
- (BOOL)isCancelingPurge;
- (CAMInternalStorage)init;
- (CAMPurgeableStorageContainerDelegate)delegate;
- (double)_availableRecordingTimeInMinutesForFreeBytes:(int64_t)bytes minimumDiskUsageThreshold:(int64_t)threshold bytesPerMinute:(int64_t)minute;
- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)configuration;
- (id)_cacheDeleteVolume;
- (id)_stringFromAvailableSpace:(id *)space;
- (id)_stringFromByteCount:(int64_t)count;
- (int64_t)_absoluteMinimumBytesForMode:(int64_t)mode;
- (int64_t)_fastPurgeThresholdForRequestType:(int64_t)type;
- (int64_t)_preferredMinimumBytesForConfiguration:(id)configuration;
- (int64_t)_resourceValueForKey:(id)key;
- (int64_t)_totalBytes;
- (int64_t)minimumDiskUsageThresholdInBytesForGraphConfiguration:(id)configuration;
- (int64_t)totalFreeBytes;
- (void)_copyAndApplyByteStringFormattingFromDictionary:(id)dictionary toDictionary:(id)toDictionary keys:(id)keys;
- (void)_copyFromDictionary:(id)dictionary toDictionary:(id)toDictionary keys:(id)keys;
- (void)_loadFreeDiskThresholds;
- (void)_notifyDelegateOfPurgeCompletionAndUpdateContinuousPurgeWithForceStopWithReason:(id)reason analyticsEvent:(id)event;
- (void)_purgeFastPurgeableSpaceWithThreshold:(int64_t)threshold calledFromPurgeCompletion:(BOOL)completion forceStopReason:(id)reason analyticsEvent:(id)event;
- (void)_queryQueue_aggregateLowDiskEventWithIdentifier:(id)identifier;
- (void)_queryQueue_cancelCurrentPurge;
- (void)_queryQueue_purgeFastPurgeableResourcesWithThreshold:(int64_t)threshold analyticsEvent:(id)event;
- (void)_queryQueue_updatePurgeRequestStateForTotalFreeBytes:(int64_t)bytes preferredFreeBytes:(int64_t)freeBytes;
- (void)_setCachedEstimatedSpace:(id *)space;
- (void)_setFastPurgeThreshold:(int64_t)threshold;
- (void)_setPurging:(BOOL)purging;
- (void)_setShouldCancelNextPurge:(BOOL)purge;
- (void)_statMountPoint:(statfs *)point;
- (void)_updateAvailablePurgeableSpaceAsync;
- (void)_updatePurgeRequestStateForConfiguration:(id)configuration totalFreeBytes:(int64_t)bytes;
- (void)cancelPurge;
- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging completion:(id)completion;
- (void)purgeFastPurgeableSpaceWithRequestType:(int64_t)type;
- (void)reportLowDiskEventWithIdentifier:(id)identifier;
- (void)setGraphConfiguration:(id)configuration;
@end

@implementation CAMInternalStorage

- (CAMInternalStorage)init
{
  v18.receiver = self;
  v18.super_class = CAMInternalStorage;
  v2 = [(CAMInternalStorage *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.camera.cachedelete", v3);
    cacheDeleteQueryQueue = v2->__cacheDeleteQueryQueue;
    v2->__cacheDeleteQueryQueue = v4;

    v2->__cachedLowDiskThreshold = 0;
    v2->fastPurgeableBytes = 0;
    v2->slowPurgeableBytes = 0;
    v2->freeBytes = 0;
    v6 = objc_alloc_init(MEMORY[0x1E696AAF0]);
    byteFormatter = v2->__byteFormatter;
    v2->__byteFormatter = v6;

    [(NSByteCountFormatter *)v2->__byteFormatter setAllowedUnits:8];
    [(NSByteCountFormatter *)v2->__byteFormatter setCountStyle:3];
    [(NSByteCountFormatter *)v2->__byteFormatter setIncludesActualByteCount:0];
    v8 = MEMORY[0x1E695DFF8];
    v9 = NSHomeDirectory();
    v10 = [v8 URLWithString:v9];
    storageMountPoint = v2->__storageMountPoint;
    v2->__storageMountPoint = v10;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v2->__isLockScreenExtension = [bundleIdentifier isEqualToString:@"com.apple.camera.lockscreen"];
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create("com.camera.diskSpace", v14);
    diskSpaceQueue = v2->__diskSpaceQueue;
    v2->__diskSpaceQueue = v15;

    [(CAMInternalStorage *)v2 _loadFreeDiskThresholds];
  }

  return v2;
}

- (void)_setPurging:(BOOL)purging
{
  if (self->__purging != purging)
  {
    self->__purging = purging;
    delegate = [(CAMInternalStorage *)self delegate];
    [delegate storageControllerDidChangePurgingState:self];
  }
}

- (BOOL)isCancelingPurge
{
  isPurging = [(CAMInternalStorage *)self isPurging];
  if (isPurging)
  {

    LOBYTE(isPurging) = [(CAMInternalStorage *)self _shouldCancelNextPurge];
  }

  return isPurging;
}

- (void)_setShouldCancelNextPurge:(BOOL)purge
{
  if (self->__shouldCancelNextPurge != purge)
  {
    self->__shouldCancelNextPurge = purge;
    delegate = [(CAMInternalStorage *)self delegate];
    [delegate storageControllerDidChangePurgingState:self];
  }
}

- (void)_setCachedEstimatedSpace:(id *)space
{
  [(CAMInternalStorage *)self _cachedEstimatedSpace];
  v5 = v7[5] == space->var0 && v7[6] == space->var1;
  if (!v5 || v7[7] != space->var2)
  {
    v6 = *&space->var0;
    self->slowPurgeableBytes = space->var2;
    *&self->freeBytes = v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__CAMInternalStorage__setCachedEstimatedSpace___block_invoke;
    v7[3] = &unk_1E76F77B0;
    v7[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __47__CAMInternalStorage__setCachedEstimatedSpace___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 availableDiskSpaceChanged:*(a1 + 32)];
}

- (void)setGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  p_graphConfiguration = &self->_graphConfiguration;
  if (self->_graphConfiguration != configurationCopy)
  {
    v7 = configurationCopy;
    objc_storeStrong(p_graphConfiguration, configuration);
    p_graphConfiguration = [(CAMInternalStorage *)self _updateAvailablePurgeableSpaceAsync];
    configurationCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_graphConfiguration, configurationCopy);
}

- (void)_setFastPurgeThreshold:(int64_t)threshold
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->__fastPurgeThreshold != threshold)
  {
    self->__fastPurgeThreshold = threshold;
    v4 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (threshold > 2)
      {
        v5 = 0;
      }

      else
      {
        v5 = off_1E76FE918[threshold];
      }

      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "CAMStorageController: changed fast purge threshold to %{public}@", &v6, 0xCu);
    }
  }
}

- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  _diskSpaceQueue = [(CAMInternalStorage *)self _diskSpaceQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__CAMInternalStorage_hasDiskSpaceToAllowCaptureWithConfiguration_allowPurging_completion___block_invoke;
  v13[3] = &unk_1E76FE830;
  v13[4] = self;
  v14 = configurationCopy;
  purgingCopy = purging;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = configurationCopy;
  dispatch_async(_diskSpaceQueue, v13);
}

void __90__CAMInternalStorage_hasDiskSpaceToAllowCaptureWithConfiguration_allowPurging_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) totalFreeBytes];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__CAMInternalStorage_hasDiskSpaceToAllowCaptureWithConfiguration_allowPurging_completion___block_invoke_2;
  block[3] = &unk_1E76FE808;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v7 = v2;
  v8 = *(a1 + 56);
  v6 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __90__CAMInternalStorage_hasDiskSpaceToAllowCaptureWithConfiguration_allowPurging_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _hasDiskSpaceToAllowCaptureWithConfiguration:*(a1 + 40) totalFreeBytes:*(a1 + 56) allowPurging:*(a1 + 64) verbose:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration allowPurging:(BOOL)purging verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  purgingCopy = purging;
  configurationCopy = configuration;
  LOBYTE(verboseCopy) = [(CAMInternalStorage *)self _hasDiskSpaceToAllowCaptureWithConfiguration:configurationCopy totalFreeBytes:[(CAMInternalStorage *)self totalFreeBytes] allowPurging:purgingCopy verbose:verboseCopy];

  return verboseCopy;
}

- (BOOL)_hasDiskSpaceToAllowCaptureWithConfiguration:(id)configuration totalFreeBytes:(int64_t)bytes allowPurging:(BOOL)purging verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  purgingCopy = purging;
  v22 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v11 = -[CAMInternalStorage _absoluteMinimumBytesForMode:](self, "_absoluteMinimumBytesForMode:", [configurationCopy mode]);
  v12 = [(CAMInternalStorage *)self minimumDiskUsageThresholdInBytesForGraphConfiguration:configurationCopy];
  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (v11 >= bytes)
  {
    v13 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(CAMInternalStorage *)self _stringFromByteCount:bytes];
      v15 = [(CAMInternalStorage *)self _stringFromByteCount:v11];
      v18 = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v16 = "CAMStorageController: Total free disk %{public}@ lower than absolute minimum for this mode (%{public}@)";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (bytes < 2 * v11)
  {
    v13 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(CAMInternalStorage *)self _stringFromByteCount:bytes];
      v15 = [(CAMInternalStorage *)self _stringFromByteCount:v11];
      v18 = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v16 = "CAMStorageController: Total free disk (%{public}@) approaching absolute minimum for this mode (%{public}@)";
LABEL_9:
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, v16, &v18, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (verboseCopy)
  {
    v13 = os_log_create("com.apple.camera", "StorageController");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v14 = [(CAMInternalStorage *)self _stringFromByteCount:bytes];
    v15 = [(CAMInternalStorage *)self _stringFromByteCount:v11];
    v18 = 138543618;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    v16 = "CAMStorageController: Total free disk (%{public}@) exceeds absolute minimum for this mode (%{public}@)";
    goto LABEL_9;
  }

LABEL_11:
  if (purgingCopy)
  {
    [(CAMInternalStorage *)self _updatePurgeRequestStateForConfiguration:configurationCopy totalFreeBytes:bytes];
  }

  return v11 < bytes;
}

- (void)reportLowDiskEventWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[CAMCaptureCapabilities capabilities];
  hostProcess = [v5 hostProcess];
  if (hostProcess <= 4 && ((1 << hostProcess) & 0x15) != 0)
  {
    v8 = +[CAMUserPreferences preferences];
    preferredMinimumFreeBytes = [v8 preferredMinimumFreeBytes];
    if ([v5 isInternalInstall])
    {
      v10 = preferredMinimumFreeBytes <= 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      objc_initWeak(&location, self);
      _cacheDeleteQueryQueue = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__CAMInternalStorage_reportLowDiskEventWithIdentifier___block_invoke;
      block[3] = &unk_1E76F7DC0;
      objc_copyWeak(&v14, &location);
      v13 = identifierCopy;
      dispatch_async(_cacheDeleteQueryQueue, block);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __55__CAMInternalStorage_reportLowDiskEventWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queryQueue_aggregateLowDiskEventWithIdentifier:*(a1 + 32)];
}

- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  mode = [configurationCopy mode];
  if (mode > 8 || ((1 << mode) & 0x186) == 0)
  {
    v13 = 0.0;
  }

  else
  {
    v7 = +[CAMCaptureCapabilities capabilities];
    v8 = [v7 bytesPerMinuteForGraphConfiguration:configurationCopy outputToExternalStorage:0];
    if (v8)
    {
      v9 = v8;
      totalFreeBytes = [(CAMInternalStorage *)self totalFreeBytes];
      v11 = [(CAMInternalStorage *)self minimumDiskUsageThresholdInBytesForGraphConfiguration:configurationCopy];
      v12 = (totalFreeBytes - v11) * 60.0;
      if (totalFreeBytes <= v11)
      {
        v12 = 0.0;
      }

      v13 = v12 / v9;
    }

    else
    {
      v13 = 0.0;
    }
  }

  return v13;
}

- (double)_availableRecordingTimeInMinutesForFreeBytes:(int64_t)bytes minimumDiskUsageThreshold:(int64_t)threshold bytesPerMinute:(int64_t)minute
{
  if (minute < 1)
  {
    return 0.0;
  }

  else
  {
    return (bytes - threshold) / minute;
  }
}

- (int64_t)minimumDiskUsageThresholdInBytesForGraphConfiguration:(id)configuration
{
  v19 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = -[CAMInternalStorage _absoluteMinimumBytesForMode:](self, "_absoluteMinimumBytesForMode:", [configurationCopy mode]);
  videoEncodingBehavior = [configurationCopy videoEncodingBehavior];

  if (videoEncodingBehavior != 2)
  {
    return v5;
  }

  v7 = +[CAMCaptureCapabilities capabilities];
  if (![(CAMInternalStorage *)self _proResMinimumDiskUsageThreshold])
  {
    _totalBytes = [(CAMInternalStorage *)self _totalBytes];
    v9 = (_totalBytes * 0.1);
    if ([v7 proResMinimumDiskSpaceOverrideMegabytesRelativeToFreeSpace])
    {
      totalFreeBytes = [(CAMInternalStorage *)self totalFreeBytes];
      v11 = totalFreeBytes + ([v7 proResMinimumDiskSpaceOverrideMegabytesRelativeToFreeSpace] << 20);
      v12 = os_log_create("com.apple.camera", "StorageController");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 134218240;
        *&v18[4] = v11;
        *&v18[12] = 2048;
        *&v18[14] = (_totalBytes * 0.1);
        v13 = "CAMStorageController: overriding ProRes minimum disk usage threshold to be %lld (used relative override). Default is %lld";
LABEL_9:
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, v13, v18, 0x16u);
      }
    }

    else
    {
      [v7 proResMinimumDiskSpaceOverrideAsFractionOfSystemTotal];
      if (v14 == 0.0)
      {
LABEL_11:
        [(CAMInternalStorage *)self _setProResMinimumDiskUsageThreshold:v9, *v18, *&v18[16], v19];
        goto LABEL_12;
      }

      [v7 proResMinimumDiskSpaceOverrideAsFractionOfSystemTotal];
      v11 = (v15 * _totalBytes);
      v12 = os_log_create("com.apple.camera", "StorageController");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 134218240;
        *&v18[4] = v11;
        *&v18[12] = 2048;
        *&v18[14] = (_totalBytes * 0.1);
        v13 = "CAMStorageController: overriding ProRes minimum disk usage threshold to be %lld (used fraction override). Default is %lld";
        goto LABEL_9;
      }
    }

    v9 = v11;
    goto LABEL_11;
  }

LABEL_12:
  _proResMinimumDiskUsageThreshold = [(CAMInternalStorage *)self _proResMinimumDiskUsageThreshold];
  if (v5 <= _proResMinimumDiskUsageThreshold)
  {
    v5 = _proResMinimumDiskUsageThreshold;
  }

  return v5;
}

- (void)_updateAvailablePurgeableSpaceAsync
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isCacheDeleteSupported = [v3 isCacheDeleteSupported];

  if (isCacheDeleteSupported)
  {
    v5 = +[CAMCaptureCapabilities capabilities];
    graphConfiguration = [(CAMInternalStorage *)self graphConfiguration];
    v7 = [v5 bytesPerMinuteForGraphConfiguration:graphConfiguration outputToExternalStorage:0];

    graphConfiguration2 = [(CAMInternalStorage *)self graphConfiguration];
    v9 = [(CAMInternalStorage *)self minimumDiskUsageThresholdInBytesForGraphConfiguration:graphConfiguration2];

    objc_initWeak(&location, self);
    _cacheDeleteQueryQueue = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__CAMInternalStorage__updateAvailablePurgeableSpaceAsync__block_invoke;
    v11[3] = &unk_1E76F9AB0;
    objc_copyWeak(v12, &location);
    v12[1] = v7;
    v12[2] = v9;
    dispatch_async(_cacheDeleteQueryQueue, v11);

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __57__CAMInternalStorage__updateAvailablePurgeableSpaceAsync__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queryQueue_queryAvailableSpaceAndUpdateCachedEstimatesForBytesPerMinute:*(a1 + 40) minimumDiskUsageThreshold:*(a1 + 48)];
}

- (int64_t)_fastPurgeThresholdForRequestType:(int64_t)type
{
  if (type)
  {
    return 2 * (type == 1);
  }

  else
  {
    return 1;
  }
}

- (void)purgeFastPurgeableSpaceWithRequestType:(int64_t)type
{
  v4 = [(CAMInternalStorage *)self _fastPurgeThresholdForRequestType:type];

  [(CAMInternalStorage *)self _purgeFastPurgeableSpaceWithThreshold:v4 calledFromPurgeCompletion:0 forceStopReason:0 analyticsEvent:0];
}

- (void)_purgeFastPurgeableSpaceWithThreshold:(int64_t)threshold calledFromPurgeCompletion:(BOOL)completion forceStopReason:(id)reason analyticsEvent:(id)event
{
  completionCopy = completion;
  v42 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  eventCopy = event;
  v12 = +[CAMCaptureCapabilities capabilities];
  isCacheDeleteSupported = [v12 isCacheDeleteSupported];

  if (isCacheDeleteSupported)
  {
    if (threshold && !eventCopy)
    {
      v14 = [(CAMInternalStorage *)self _requestTypeFromNonZeroFastPurgeThreshold:threshold];
      v15 = [CAMAnalyticsProResPurgeEvent alloc];
      graphConfiguration = [(CAMInternalStorage *)self graphConfiguration];
      eventCopy = [(CAMAnalyticsProResPurgeEvent *)v15 initWithRequestType:v14 graphConfiguration:graphConfiguration totalBytesInSystem:[(CAMInternalStorage *)self _totalBytes]];
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __117__CAMInternalStorage__purgeFastPurgeableSpaceWithThreshold_calledFromPurgeCompletion_forceStopReason_analyticsEvent___block_invoke;
    aBlock[3] = &unk_1E76F7DC0;
    objc_copyWeak(&v38, &location);
    v17 = eventCopy;
    v37 = v17;
    v18 = _Block_copy(aBlock);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __117__CAMInternalStorage__purgeFastPurgeableSpaceWithThreshold_calledFromPurgeCompletion_forceStopReason_analyticsEvent___block_invoke_2;
    v34[3] = &unk_1E76F7960;
    v34[4] = self;
    eventCopy = v17;
    v35 = eventCopy;
    v19 = _Block_copy(v34);
    if (completionCopy && [(CAMInternalStorage *)self _shouldCancelNextPurge])
    {
      [(CAMAnalyticsProResPurgeEvent *)eventCopy updateForCancelRequest];
      v20 = @"honoring cancelation";
LABEL_29:
      v28 = os_log_create("com.apple.camera", "StorageController");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = v20;
        _os_log_impl(&dword_1A3640000, v28, OS_LOG_TYPE_DEFAULT, "CAMStorageController: stopping purge (%{public}@)", buf, 0xCu);
      }

      v18[2](v18);
LABEL_36:

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
      goto LABEL_37;
    }

    if (reasonCopy)
    {
      v20 = reasonCopy;
      if (completionCopy)
      {
        goto LABEL_29;
      }
    }

    else if ([(CAMInternalStorage *)self hasPurgeableResources])
    {
      if (threshold)
      {
        if (threshold != 1 || ([(CAMInternalStorage *)self graphConfiguration], v21 = objc_claimAutoreleasedReturnValue(), [(CAMInternalStorage *)self availableRecordingTimeInSecondsForGraphConfiguration:v21], v23 = v22, v21, v23 < 300.0))
        {
          v24 = os_log_create("com.apple.camera", "StorageController");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = @"ProResAutoPurgeRecordTime";
            if (threshold != 1)
            {
              v25 = 0;
            }

            if (threshold == 2)
            {
              v25 = @"Infinite";
            }

            v26 = v25;
            *buf = 138543362;
            v41 = v26;
            _os_log_impl(&dword_1A3640000, v24, OS_LOG_TYPE_DEFAULT, "CAMStorageController: Kicking off a fast purge (threshold: %{public}@)", buf, 0xCu);
          }

          [(CAMInternalStorage *)self _setPurging:1];
          [(CAMInternalStorage *)self _setFastPurgeThreshold:threshold];
          [(CAMInternalStorage *)self _setShouldCancelNextPurge:0];
          _cacheDeleteQueryQueue = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __117__CAMInternalStorage__purgeFastPurgeableSpaceWithThreshold_calledFromPurgeCompletion_forceStopReason_analyticsEvent___block_invoke_18;
          block[3] = &unk_1E76FE858;
          objc_copyWeak(v33, &location);
          v33[1] = threshold;
          v31 = eventCopy;
          v32 = v18;
          dispatch_async(_cacheDeleteQueryQueue, block);

          objc_destroyWeak(v33);
          v20 = 0;
          goto LABEL_36;
        }

        if (completionCopy)
        {
          v20 = @"above auto purge threshold";
          goto LABEL_29;
        }

        v19[2](v19);
        v20 = @"above auto purge threshold";
      }

      else
      {
        v20 = @"zero threshold";
        if (completionCopy)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (completionCopy)
      {
        v20 = @"no purgeable resources";
        goto LABEL_29;
      }

      v19[2](v19);
      v20 = @"no purgeable resources";
    }

    v29 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v20;
      _os_log_impl(&dword_1A3640000, v29, OS_LOG_TYPE_DEFAULT, "CAMStorageController: ignoring purge request (%{public}@)", buf, 0xCu);
    }

    goto LABEL_36;
  }

LABEL_37:
}

void __117__CAMInternalStorage__purgeFastPurgeableSpaceWithThreshold_calledFromPurgeCompletion_forceStopReason_analyticsEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setPurging:0];
  [WeakRetained _setShouldCancelNextPurge:0];
  [WeakRetained _setFastPurgeThreshold:0];
  [*(a1 + 32) publish];
}

uint64_t __117__CAMInternalStorage__purgeFastPurgeableSpaceWithThreshold_calledFromPurgeCompletion_forceStopReason_analyticsEvent___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 _cachedEstimatedSpace];
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 graphConfiguration];
  [v3 availableRecordingTimeInSecondsForGraphConfiguration:v4];
  v6 = v5;

  [*(a1 + 40) updateForSkippedPurgeOperationWithFreeBytes:objc_msgSend(*(a1 + 32) fastPurgeableBytes:"totalFreeBytes") slowPurgeableBytes:0 maxRecordingTimeSeconds:{0, v6}];
  return [*(a1 + 40) publish];
}

void __117__CAMInternalStorage__purgeFastPurgeableSpaceWithThreshold_calledFromPurgeCompletion_forceStopReason_analyticsEvent___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _queryQueue_purgeFastPurgeableResourcesWithThreshold:*(a1 + 56) analyticsEvent:*(a1 + 32)];
  if (![WeakRetained _queryQueue_currentToken])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __117__CAMInternalStorage__purgeFastPurgeableSpaceWithThreshold_calledFromPurgeCompletion_forceStopReason_analyticsEvent___block_invoke_2_19;
    block[3] = &unk_1E76FAB00;
    v4 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __117__CAMInternalStorage__purgeFastPurgeableSpaceWithThreshold_calledFromPurgeCompletion_forceStopReason_analyticsEvent___block_invoke_2_19(uint64_t a1)
{
  v2 = os_log_create("com.apple.camera", "StorageController");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "CAMStorageController: Did not successfully purge, resetting state", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (BOOL)hasPurgeableResources
{
  v3 = +[CAMCaptureCapabilities capabilities];
  graphConfiguration = [(CAMInternalStorage *)self graphConfiguration];
  v5 = [v3 bytesPerMinuteForGraphConfiguration:graphConfiguration outputToExternalStorage:0];

  [(CAMInternalStorage *)self _cachedEstimatedSpace];
  return 10 * (v5 / 60) < 0;
}

- (void)cancelPurge
{
  if ([(CAMInternalStorage *)self _purging])
  {
    v3 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "CAMStorageController: Requesting to cancel purge", buf, 2u);
    }

    [(CAMInternalStorage *)self _setShouldCancelNextPurge:1];
    objc_initWeak(buf, self);
    _cacheDeleteQueryQueue = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__CAMInternalStorage_cancelPurge__block_invoke;
    block[3] = &unk_1E76F8580;
    objc_copyWeak(&v6, buf);
    dispatch_async(_cacheDeleteQueryQueue, block);

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __33__CAMInternalStorage_cancelPurge__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queryQueue_cancelCurrentPurge];
}

- (void)_queryQueue_purgeFastPurgeableResourcesWithThreshold:(int64_t)threshold analyticsEvent:(id)event
{
  v45 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  _cacheDeleteQueryQueue = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
  dispatch_assert_queue_V2(_cacheDeleteQueryQueue);

  if ([(CAMInternalStorage *)self _queryQueue_currentToken])
  {
    _cacheDeleteVolume = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(_cacheDeleteVolume, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "CAMStorageController: Ignoring request to purge since we have an active token";
      v10 = _cacheDeleteVolume;
      v11 = 2;
LABEL_4:
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    if (!threshold)
    {
      _cacheDeleteVolume = os_log_create("com.apple.camera", "StorageController");
      if (!os_log_type_enabled(_cacheDeleteVolume, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 138543362;
      *&buf[4] = @"Zero";
      v9 = "CAMStorageController: Ignoring request to purge, threshold set to %{public}@";
      v10 = _cacheDeleteVolume;
      v11 = 12;
      goto LABEL_4;
    }

    _cacheDeleteVolume = [(CAMInternalStorage *)self _cacheDeleteVolume];
    if (_cacheDeleteVolume)
    {
      v12 = +[CAMCaptureCapabilities capabilities];
      graphConfiguration = [(CAMInternalStorage *)self graphConfiguration];
      v14 = [v12 bytesPerMinuteForGraphConfiguration:graphConfiguration outputToExternalStorage:0];

      graphConfiguration2 = [(CAMInternalStorage *)self graphConfiguration];
      v16 = [(CAMInternalStorage *)self minimumDiskUsageThresholdInBytesForGraphConfiguration:graphConfiguration2];

      memset(buf, 0, sizeof(buf));
      v44 = 0;
      [(CAMInternalStorage *)self _queryQueue_queryAvailableSpaceAndUpdateCachedEstimatesForBytesPerMinute:v14 minimumDiskUsageThreshold:v16];
      if (10 * (v14 / 60) >= 0)
      {
        v23 = os_log_create("com.apple.camera", "StorageController");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v41 = 134217984;
          v42 = *&buf[8];
          _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "CAMStorageController ignoring request to purge space since there is only %lld of fast purgeable space available", v41, 0xCu);
        }
      }

      else
      {
        v17 = *buf;
        if (v14 <= v16 + 10 * (v14 / 60) - *buf)
        {
          v18 = v16 + 10 * (v14 / 60) - *buf;
        }

        else
        {
          v18 = v14;
        }

        v40[0] = _cacheDeleteVolume;
        v39[0] = @"CACHE_DELETE_VOLUME";
        v39[1] = @"CACHE_DELETE_AMOUNT";
        v19 = [MEMORY[0x1E696AD98] numberWithLongLong:v18];
        v40[1] = v19;
        v39[2] = @"CACHE_DELETE_URGENCY_LIMIT";
        v20 = MEMORY[0x1E696AD98];
        v21 = +[CAMCaptureCapabilities capabilities];
        v22 = [v20 numberWithInt:{objc_msgSend(v21, "cacheDeleteUrgency")}];
        v39[3] = @"CACHE_DELETE_SERVICES";
        v40[2] = v22;
        v40[3] = &unk_1F16C9CE0;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];

        v24 = [v23 mutableCopy];
        [(CAMInternalStorage *)self _copyAndApplyByteStringFormattingFromDictionary:v23 toDictionary:v24 keys:&unk_1F16C9CF8];
        v25 = os_log_create("com.apple.camera", "StorageController");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v41 = 138543362;
          v42 = v24;
          _os_log_impl(&dword_1A3640000, v25, OS_LOG_TYPE_DEFAULT, "CAMStorageController fast purge request: %{public}@", v41, 0xCu);
        }

        [(CAMInternalStorage *)self _availableRecordingTimeInMinutesForFreeBytes:v17 minimumDiskUsageThreshold:v16 bytesPerMinute:v14];
        [eventCopy updateBeforePurgeOperationWithFreeBytes:v17 fastPurgeableBytes:*&buf[8] slowPurgeableBytes:v44 maxRecordingTimeSeconds:v26 * 60.0];
        Current = CFAbsoluteTimeGetCurrent();
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __90__CAMInternalStorage__queryQueue_purgeFastPurgeableResourcesWithThreshold_analyticsEvent___block_invoke;
        aBlock[3] = &unk_1E76FE8A8;
        v32 = Current;
        aBlock[4] = self;
        v33 = v14;
        v34 = v16;
        v35 = *buf;
        v36 = v44;
        v37 = v29;
        v38 = 10 * (v14 / 60);
        v31 = eventCopy;
        v28 = _Block_copy(aBlock);
        [(CAMInternalStorage *)self set_queryQueue_currentToken:CacheDeletePurgeSpaceWithInfo()];
      }
    }
  }

LABEL_19:
}

void __90__CAMInternalStorage__queryQueue_purgeFastPurgeableResourcesWithThreshold_analyticsEvent___block_invoke(uint64_t a1, void *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [*(a1 + 32) totalFreeBytes];
  objc_initWeak(&location, *(a1 + 32));
  v8 = [*(a1 + 32) _cacheDeleteQueryQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__CAMInternalStorage__queryQueue_purgeFastPurgeableResourcesWithThreshold_analyticsEvent___block_invoke_2;
  v11[3] = &unk_1E76FE880;
  objc_copyWeak(&v14, &location);
  v15 = *(a1 + 56);
  v16 = v7;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v6;
  v17 = Current - v5;
  v18 = *(a1 + 72);
  v19 = *(a1 + 88);
  v20 = *(a1 + 96);
  v13 = v9;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __90__CAMInternalStorage__queryQueue_purgeFastPurgeableResourcesWithThreshold_analyticsEvent___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v25 = 0uLL;
  v26 = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 _queryQueue_queryAvailableSpaceAndUpdateCachedEstimatesForBytesPerMinute:*(a1 + 64) minimumDiskUsageThreshold:*(a1 + 72)];
    v3 = *(a1 + 32);
  }

  [v3 _availableRecordingTimeInMinutesForFreeBytes:*(a1 + 80) minimumDiskUsageThreshold:*(a1 + 72) bytesPerMinute:*(a1 + 64)];
  v5 = v4;
  v6 = [*(a1 + 40) mutableCopy];
  [*(a1 + 32) _copyAndApplyByteStringFormattingFromDictionary:*(a1 + 40) toDictionary:v6 keys:&unk_1F16C9D10];
  v7 = os_log_create("com.apple.camera", "StorageController");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 88);
    v9 = *(a1 + 32);
    *buf = v25;
    *&buf[16] = v26;
    v10 = [v9 _stringFromAvailableSpace:buf];
    v11 = [*(a1 + 32) _stringFromByteCount:*(a1 + 80)];
    *buf = 134219010;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    v31 = 2048;
    v32 = v5;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "CAMStorageController: Purge completed (%.3f seconds) with results: %{public}@\n%{public}@\n%{public}@ free\nAvailable time: %.2f minutes", buf, 0x34u);
  }

  v12 = [*(a1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v13 = [v12 longLongValue];

  v14 = *(a1 + 104) - v13;
  v15 = v25;
  v16 = v26;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__CAMInternalStorage__queryQueue_purgeFastPurgeableResourcesWithThreshold_analyticsEvent___block_invoke_52;
  block[3] = &unk_1E76F9B50;
  block[4] = *(a1 + 32);
  block[5] = v25;
  block[6] = v14;
  block[7] = v26;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v17 = *(a1 + 120);
  v18 = *(a1 + 128);
  [*(a1 + 32) _availableRecordingTimeInMinutesForFreeBytes:v15 minimumDiskUsageThreshold:*(a1 + 72) bytesPerMinute:*(a1 + 64)];
  [*(a1 + 48) updateAfterPurgeOperationWithFreeBytes:v15 fastPurgeableBytes:v14 slowPurgeableBytes:v16 maxRecordingTimeSeconds:v13 bytesPurged:v19 * 60.0];
  v20 = [WeakRetained _queryQueue_currentToken];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = @"not enough purgeable space remaining";
  if (v14 >= v18)
  {
    v21 = 0;
  }

  if (v13 < v18 && v13 < v17)
  {
    v23 = @"did not make significant progress";
  }

  else
  {
    v23 = v21;
  }

  [WeakRetained set_queryQueue_currentToken:0];
  [WeakRetained _notifyDelegateOfPurgeCompletionAndUpdateContinuousPurgeWithForceStopWithReason:v23 analyticsEvent:*(a1 + 48)];
}

uint64_t __90__CAMInternalStorage__queryQueue_purgeFastPurgeableResourcesWithThreshold_analyticsEvent___block_invoke_52(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  return [*(a1 + 32) _setCachedEstimatedSpace:&v2];
}

- (void)_queryQueue_cancelCurrentPurge
{
  v9 = *MEMORY[0x1E69E9840];
  _cacheDeleteQueryQueue = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
  dispatch_assert_queue_V2(_cacheDeleteQueryQueue);

  _queryQueue_currentToken = [(CAMInternalStorage *)self _queryQueue_currentToken];
  v5 = os_log_create("com.apple.camera", "StorageController");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (_queryQueue_currentToken)
  {
    if (v6)
    {
      v7 = 138543362;
      _queryQueue_currentToken2 = [(CAMInternalStorage *)self _queryQueue_currentToken];
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "CAMStorageController canceling purge for token %{public}@", &v7, 0xCu);
    }

    [(CAMInternalStorage *)self _queryQueue_currentToken];
    CacheDeleteCancelPurge();
  }

  else
  {
    if (v6)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "CAMStorageController could not cancel purge (invalid token)", &v7, 2u);
    }
  }
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)_queryQueue_queryAvailableSpaceAndUpdateCachedEstimatesForBytesPerMinute:(SEL)minute minimumDiskUsageThreshold:(int64_t)threshold
{
  v32[1] = *MEMORY[0x1E69E9840];
  _cacheDeleteQueryQueue = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
  dispatch_assert_queue_V2(_cacheDeleteQueryQueue);

  _cacheDeleteVolume = [(CAMInternalStorage *)self _cacheDeleteVolume];
  if (_cacheDeleteVolume)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v31 = @"CACHE_DELETE_VOLUME";
    v32[0] = _cacheDeleteVolume;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v12 = CacheDeleteCopyItemizedPurgeableSpaceWithInfo();
    v13 = CFAbsoluteTimeGetCurrent();
    totalFreeBytes = [(CAMInternalStorage *)self totalFreeBytes];
    retstr->var0 = totalFreeBytes;
    v15 = [v12 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_FSPURGEABLE"];
    longLongValue = [v15 longLongValue];
    retstr->var1 = longLongValue;

    v17 = [v12 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
    retstr->var2 = [v17 longLongValue] - longLongValue;

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __121__CAMInternalStorage__queryQueue_queryAvailableSpaceAndUpdateCachedEstimatesForBytesPerMinute_minimumDiskUsageThreshold___block_invoke;
    v24[3] = &unk_1E76F9B50;
    v24[4] = self;
    v25 = *&retstr->var0;
    var2 = retstr->var2;
    dispatch_async(MEMORY[0x1E69E96A0], v24);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(CAMInternalStorage *)self _copyAndApplyByteStringFormattingFromDictionary:v12 toDictionary:dictionary keys:&unk_1F16C9D28];
    [(CAMInternalStorage *)self _copyFromDictionary:v12 toDictionary:dictionary keys:&unk_1F16C9D40];
    [(CAMInternalStorage *)self _availableRecordingTimeInMinutesForFreeBytes:totalFreeBytes minimumDiskUsageThreshold:a5 bytesPerMinute:threshold];
    v20 = v19;
    v21 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = *&retstr->var0;
      *&buf[16] = retstr->var2;
      v22 = [(CAMInternalStorage *)self _stringFromAvailableSpace:buf];
      *buf = 134218754;
      *&buf[4] = v13 - Current;
      *&buf[12] = 2114;
      *&buf[14] = dictionary;
      *&buf[22] = 2114;
      v28 = v22;
      v29 = 2048;
      v30 = v20;
      _os_log_impl(&dword_1A3640000, v21, OS_LOG_TYPE_DEFAULT, "CAMStorageController _queryAvailableSpace (%.3f seconds)\nCacheDeleteCopyItemizedPurgeableSpaceWithInfo: %{public}@ \n%{public}@\nAvailable time: %.2f minutes", buf, 0x2Au);
    }
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

uint64_t __121__CAMInternalStorage__queryQueue_queryAvailableSpaceAndUpdateCachedEstimatesForBytesPerMinute_minimumDiskUsageThreshold___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  return [*(a1 + 32) _setCachedEstimatedSpace:&v2];
}

- (id)_cacheDeleteVolume
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CAMInternalStorage__cacheDeleteVolume__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  if (_cacheDeleteVolume_onceToken[0] != -1)
  {
    dispatch_once(_cacheDeleteVolume_onceToken, block);
  }

  return _cacheDeleteVolume_volume;
}

void __40__CAMInternalStorage__cacheDeleteVolume__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v7.f_mntonname[392], 0, 32);
  v1 = [*(a1 + 32) _storageMountPoint];
  v2 = [v1 path];
  v3 = statfs([v2 fileSystemRepresentation], &v7);

  if (v3)
  {
    v4 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __40__CAMInternalStorage__cacheDeleteVolume__block_invoke_cold_1(v4);
    }
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7.f_mntonname encoding:4];
  v6 = _cacheDeleteVolume_volume;
  _cacheDeleteVolume_volume = v5;
}

- (void)_statMountPoint:(statfs *)point
{
  _storageMountPoint = [(CAMInternalStorage *)self _storageMountPoint];
  path = [_storageMountPoint path];
  v7 = statfs([path fileSystemRepresentation], point);

  if (v7)
  {
    v8 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CAMInternalStorage _statMountPoint:?];
    }

    bzero(point, 0x878uLL);
  }
}

- (int64_t)totalFreeBytes
{
  v37 = *MEMORY[0x1E69E9840];
  if ([(CAMInternalStorage *)self _isLockScreenExtension])
  {
    v3 = *MEMORY[0x1E695DD60];

    return [(CAMInternalStorage *)self _resourceValueForKey:v3];
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    [(CAMInternalStorage *)self _statMountPoint:&v5];
    return *(&v6 + 1) * v5;
  }
}

- (int64_t)_resourceValueForKey:(id)key
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/"];
  v22[0] = keyCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v15 = 0;
  v7 = [v5 resourceValuesForKeys:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:keyCopy];
    longValue = [v9 longValue];
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _storageMountPoint = [(CAMInternalStorage *)self _storageMountPoint];
      path = [_storageMountPoint path];
      localizedDescription = [v8 localizedDescription];
      *buf = 138543874;
      v17 = keyCopy;
      v18 = 2114;
      v19 = path;
      v20 = 2114;
      v21 = localizedDescription;
      _os_log_error_impl(&dword_1A3640000, v9, OS_LOG_TYPE_ERROR, "CAMStorageController: resourceValuesForKeys failed to get resource for key %{public}@ at storage mount point %{public}@ with error %{public}@", buf, 0x20u);
    }

    longValue = 0;
  }

  return longValue;
}

- (int64_t)_totalBytes
{
  v6 = *MEMORY[0x1E69E9840];
  if ([(CAMInternalStorage *)self _isLockScreenExtension])
  {
    v3 = *MEMORY[0x1E695DE98];

    return [(CAMInternalStorage *)self _resourceValueForKey:v3];
  }

  else
  {
    memset(v5, 0, 512);
    [(CAMInternalStorage *)self _statMountPoint:v5];
    return *(&v5[0] + 1) * LODWORD(v5[0]);
  }
}

- (int64_t)_absoluteMinimumBytesForMode:(int64_t)mode
{
  v3 = +[CAMCaptureCapabilities capabilities];
  minimumDiskSpaceReserved = [v3 minimumDiskSpaceReserved];

  return minimumDiskSpaceReserved;
}

- (void)_loadFreeDiskThresholds
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_notifyDelegateOfPurgeCompletionAndUpdateContinuousPurgeWithForceStopWithReason:(id)reason analyticsEvent:(id)event
{
  reasonCopy = reason;
  eventCopy = event;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__CAMInternalStorage__notifyDelegateOfPurgeCompletionAndUpdateContinuousPurgeWithForceStopWithReason_analyticsEvent___block_invoke;
  block[3] = &unk_1E76F7938;
  block[4] = self;
  v11 = reasonCopy;
  v12 = eventCopy;
  v8 = eventCopy;
  v9 = reasonCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __117__CAMInternalStorage__notifyDelegateOfPurgeCompletionAndUpdateContinuousPurgeWithForceStopWithReason_analyticsEvent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _purgeFastPurgeableSpaceWithThreshold:objc_msgSend(*(a1 + 32) calledFromPurgeCompletion:"_fastPurgeThreshold") forceStopReason:1 analyticsEvent:{*(a1 + 40), *(a1 + 48)}];
  v2 = [*(a1 + 32) delegate];
  [v2 availableDiskSpaceChanged:*(a1 + 32)];
}

- (int64_t)_preferredMinimumBytesForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _cachedLowDiskThreshold = [(CAMInternalStorage *)self _cachedLowDiskThreshold];
  mode = [configurationCopy mode];
  if (mode <= 9)
  {
    if (((1 << mode) & 0x259) != 0)
    {
      v7 = +[CAMCaptureCapabilities capabilities];
      maxLivePhotoDataSize = [MEMORY[0x1E69870F0] maxLivePhotoDataSize];
      if ([v7 isLivePhotoSupported])
      {
        v9 = 4 * maxLivePhotoDataSize;
      }

      else
      {
        v9 = maxLivePhotoDataSize;
      }

      goto LABEL_8;
    }

    if (((1 << mode) & 0x186) != 0)
    {
      v7 = +[CAMCaptureCapabilities capabilities];
      v9 = [v7 bytesPerMinuteForGraphConfiguration:configurationCopy outputToExternalStorage:0];
LABEL_8:
      _cachedLowDiskThreshold += v9;
    }
  }

  return _cachedLowDiskThreshold;
}

- (void)_updatePurgeRequestStateForConfiguration:(id)configuration totalFreeBytes:(int64_t)bytes
{
  v24 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v7 = +[CAMCaptureCapabilities capabilities];
  isCacheDeleteSupported = [v7 isCacheDeleteSupported];

  if (isCacheDeleteSupported)
  {
    date = [MEMORY[0x1E695DF00] date];
    _lastPurgeRequestUpdateTime = [(CAMInternalStorage *)self _lastPurgeRequestUpdateTime];
    if (!_lastPurgeRequestUpdateTime || ([date timeIntervalSinceDate:_lastPurgeRequestUpdateTime], v11 >= 60.0))
    {
      v12 = [(CAMInternalStorage *)self _preferredMinimumBytesForConfiguration:configurationCopy];
      _byteFormatter = [(CAMInternalStorage *)self _byteFormatter];
      if (v12 > bytes)
      {
        v14 = os_log_create("com.apple.camera", "StorageController");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [_byteFormatter stringFromByteCount:bytes];
          v16 = [_byteFormatter stringFromByteCount:v12];
          *buf = 138543618;
          v21 = v15;
          v22 = 2114;
          v23 = v16;
          _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "CAMStorageController: Total free disk (%{public}@) is less than PREFERRED minimum for this mode (%{public}@)", buf, 0x16u);
        }

        [(CAMInternalStorage *)self _setPurging:1];
        objc_initWeak(buf, self);
        _cacheDeleteQueryQueue = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __78__CAMInternalStorage__updatePurgeRequestStateForConfiguration_totalFreeBytes___block_invoke;
        block[3] = &unk_1E76F9AB0;
        objc_copyWeak(v19, buf);
        v19[1] = bytes;
        v19[2] = v12;
        dispatch_async(_cacheDeleteQueryQueue, block);

        [(CAMInternalStorage *)self set_lastPurgeRequestUpdateTime:date];
        objc_destroyWeak(v19);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __78__CAMInternalStorage__updatePurgeRequestStateForConfiguration_totalFreeBytes___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queryQueue_updatePurgeRequestStateForTotalFreeBytes:*(a1 + 40) preferredFreeBytes:*(a1 + 48)];
}

- (void)_queryQueue_aggregateLowDiskEventWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E695DFF8];
  identifierCopy = identifier;
  v5 = NSHomeDirectory();
  v6 = [v3 fileURLWithPath:v5];

  CacheDeleteRegisterLowDiskFailure();
}

- (void)_queryQueue_updatePurgeRequestStateForTotalFreeBytes:(int64_t)bytes preferredFreeBytes:(int64_t)freeBytes
{
  v32 = *MEMORY[0x1E69E9840];
  if ([(CAMInternalStorage *)self _queryQueue_currentToken])
  {
    _cacheDeleteVolume = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(_cacheDeleteVolume, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, _cacheDeleteVolume, OS_LOG_TYPE_DEFAULT, "CAMStorageController: Ignoring request to purge preferred free bytes since we have an active token", buf, 2u);
    }
  }

  else
  {
    _cacheDeleteVolume = [(CAMInternalStorage *)self _cacheDeleteVolume];
    if (_cacheDeleteVolume)
    {
      v23[5] = 0;
      v8 = CacheDeleteCopyAvailableSpaceForVolume();
      v9 = freeBytes - bytes;
      longLongValue = [v8 longLongValue];
      v11 = +[CAMCaptureCapabilities capabilities];
      cacheDeleteUrgency = [v11 cacheDeleteUrgency];

      _byteFormatter = [(CAMInternalStorage *)self _byteFormatter];
      v14 = os_log_create("com.apple.camera", "StorageController");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        bytes = [_byteFormatter stringFromByteCount:longLongValue - bytes];
        v16 = [_byteFormatter stringFromByteCount:v9];
        v17 = v16;
        if ((cacheDeleteUrgency + 1) > 5)
        {
          v18 = 0;
        }

        else
        {
          v18 = off_1E76FE930[(cacheDeleteUrgency + 1)];
        }

        *buf = 138543874;
        v27 = bytes;
        v28 = 2114;
        v29 = v16;
        v30 = 2114;
        v31 = v18;
        _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "CAMStorageController: CacheDelete indicates %{public}@ bytes purgeable; requesting purge of %{public}@ at %{public}@ urgency", buf, 0x20u);
      }

      v25[0] = _cacheDeleteVolume;
      v24[0] = @"CACHE_DELETE_VOLUME";
      v24[1] = @"CACHE_DELETE_URGENCY_LIMIT";
      v19 = [MEMORY[0x1E696AD98] numberWithInt:cacheDeleteUrgency];
      v25[1] = v19;
      v24[2] = @"CACHE_DELETE_AMOUNT";
      v20 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];
      v25[2] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __94__CAMInternalStorage__queryQueue_updatePurgeRequestStateForTotalFreeBytes_preferredFreeBytes___block_invoke;
      v23[3] = &unk_1E76FE8F8;
      v23[4] = self;
      v22 = _Block_copy(v23);
      [(CAMInternalStorage *)self set_queryQueue_currentToken:CacheDeletePurgeSpaceWithInfo()];
    }
  }
}

void __94__CAMInternalStorage__queryQueue_updatePurgeRequestStateForTotalFreeBytes_preferredFreeBytes___block_invoke(uint64_t a1, void *a2)
{
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) _cacheDeleteQueryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__CAMInternalStorage__queryQueue_updatePurgeRequestStateForTotalFreeBytes_preferredFreeBytes___block_invoke_2;
  block[3] = &unk_1E76FE8D0;
  objc_copyWeak(v6, &location);
  v6[1] = a2;
  dispatch_async(v4, block);

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __94__CAMInternalStorage__queryQueue_updatePurgeRequestStateForTotalFreeBytes_preferredFreeBytes___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = os_log_create("com.apple.camera", "StorageController");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "CAMStorageController: CacheDelete purge completed with result:%{public}@", &v6, 0xCu);
  }

  v5 = [WeakRetained _queryQueue_currentToken];
  if (v5)
  {
    CFRelease(v5);
  }

  [WeakRetained set_queryQueue_currentToken:0];
  [WeakRetained _notifyDelegateOfPurgeCompletionAndUpdateContinuousPurgeWithForceStopWithReason:0 analyticsEvent:0];
}

- (void)_copyFromDictionary:(id)dictionary toDictionary:(id)toDictionary keys:(id)keys
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  toDictionaryCopy = toDictionary;
  keysCopy = keys;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [keysCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(keysCopy);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        v15 = [dictionaryCopy objectForKeyedSubscript:v14];
        [toDictionaryCopy setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [keysCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)_copyAndApplyByteStringFormattingFromDictionary:(id)dictionary toDictionary:(id)toDictionary keys:(id)keys
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  toDictionaryCopy = toDictionary;
  keysCopy = keys;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [keysCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(keysCopy);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [dictionaryCopy objectForKeyedSubscript:v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = -[CAMInternalStorage _stringFromByteCount:](self, "_stringFromByteCount:", [v15 longLongValue]);

          v15 = v16;
        }

        [toDictionaryCopy setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [keysCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (id)_stringFromByteCount:(int64_t)count
{
  v4 = MEMORY[0x1E696AEC0];
  _byteFormatter = [(CAMInternalStorage *)self _byteFormatter];
  v6 = [_byteFormatter stringFromByteCount:count];
  v7 = [v4 stringWithFormat:@"%lld (%@)", count, v6];

  return v7;
}

- (id)_stringFromAvailableSpace:(id *)space
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(CAMInternalStorage *)self _stringFromByteCount:space->var0];
  v7 = [(CAMInternalStorage *)self _stringFromByteCount:space->var1];
  v8 = [(CAMInternalStorage *)self _stringFromByteCount:space->var2];
  v9 = [v5 stringWithFormat:@"Available space:\n\tFree=%@\n\tFast=%@\n\tSlow=%@", v6, v7, v8];

  return v9;
}

- (CAMPurgeableStorageContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_statMountPoint:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 _storageMountPoint];
  v2 = [v1 path];
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_queryQueue_updatePurgeRequestStateForTotalFreeBytes:(void *)a1 preferredFreeBytes:.cold.1(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end