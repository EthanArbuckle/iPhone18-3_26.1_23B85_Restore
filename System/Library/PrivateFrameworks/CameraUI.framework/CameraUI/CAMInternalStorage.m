@interface CAMInternalStorage
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)_queryQueue_queryAvailableSpaceAndUpdateCachedEstimatesForBytesPerMinute:(SEL)a3 minimumDiskUsageThreshold:(int64_t)a4;
- (BOOL)_hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 totalFreeBytes:(int64_t)a4 allowPurging:(BOOL)a5 verbose:(BOOL)a6;
- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 verbose:(BOOL)a5;
- (BOOL)hasPurgeableResources;
- (BOOL)isCancelingPurge;
- (CAMInternalStorage)init;
- (CAMPurgeableStorageContainerDelegate)delegate;
- (double)_availableRecordingTimeInMinutesForFreeBytes:(int64_t)a3 minimumDiskUsageThreshold:(int64_t)a4 bytesPerMinute:(int64_t)a5;
- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)a3;
- (id)_cacheDeleteVolume;
- (id)_stringFromAvailableSpace:(id *)a3;
- (id)_stringFromByteCount:(int64_t)a3;
- (int64_t)_absoluteMinimumBytesForMode:(int64_t)a3;
- (int64_t)_fastPurgeThresholdForRequestType:(int64_t)a3;
- (int64_t)_preferredMinimumBytesForConfiguration:(id)a3;
- (int64_t)_resourceValueForKey:(id)a3;
- (int64_t)_totalBytes;
- (int64_t)minimumDiskUsageThresholdInBytesForGraphConfiguration:(id)a3;
- (int64_t)totalFreeBytes;
- (void)_copyAndApplyByteStringFormattingFromDictionary:(id)a3 toDictionary:(id)a4 keys:(id)a5;
- (void)_copyFromDictionary:(id)a3 toDictionary:(id)a4 keys:(id)a5;
- (void)_loadFreeDiskThresholds;
- (void)_notifyDelegateOfPurgeCompletionAndUpdateContinuousPurgeWithForceStopWithReason:(id)a3 analyticsEvent:(id)a4;
- (void)_purgeFastPurgeableSpaceWithThreshold:(int64_t)a3 calledFromPurgeCompletion:(BOOL)a4 forceStopReason:(id)a5 analyticsEvent:(id)a6;
- (void)_queryQueue_aggregateLowDiskEventWithIdentifier:(id)a3;
- (void)_queryQueue_cancelCurrentPurge;
- (void)_queryQueue_purgeFastPurgeableResourcesWithThreshold:(int64_t)a3 analyticsEvent:(id)a4;
- (void)_queryQueue_updatePurgeRequestStateForTotalFreeBytes:(int64_t)a3 preferredFreeBytes:(int64_t)a4;
- (void)_setCachedEstimatedSpace:(id *)a3;
- (void)_setFastPurgeThreshold:(int64_t)a3;
- (void)_setPurging:(BOOL)a3;
- (void)_setShouldCancelNextPurge:(BOOL)a3;
- (void)_statMountPoint:(statfs *)a3;
- (void)_updateAvailablePurgeableSpaceAsync;
- (void)_updatePurgeRequestStateForConfiguration:(id)a3 totalFreeBytes:(int64_t)a4;
- (void)cancelPurge;
- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 completion:(id)a5;
- (void)purgeFastPurgeableSpaceWithRequestType:(int64_t)a3;
- (void)reportLowDiskEventWithIdentifier:(id)a3;
- (void)setGraphConfiguration:(id)a3;
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

    v12 = [MEMORY[0x1E696AAE8] mainBundle];
    v13 = [v12 bundleIdentifier];

    v2->__isLockScreenExtension = [v13 isEqualToString:@"com.apple.camera.lockscreen"];
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create("com.camera.diskSpace", v14);
    diskSpaceQueue = v2->__diskSpaceQueue;
    v2->__diskSpaceQueue = v15;

    [(CAMInternalStorage *)v2 _loadFreeDiskThresholds];
  }

  return v2;
}

- (void)_setPurging:(BOOL)a3
{
  if (self->__purging != a3)
  {
    self->__purging = a3;
    v5 = [(CAMInternalStorage *)self delegate];
    [v5 storageControllerDidChangePurgingState:self];
  }
}

- (BOOL)isCancelingPurge
{
  v3 = [(CAMInternalStorage *)self isPurging];
  if (v3)
  {

    LOBYTE(v3) = [(CAMInternalStorage *)self _shouldCancelNextPurge];
  }

  return v3;
}

- (void)_setShouldCancelNextPurge:(BOOL)a3
{
  if (self->__shouldCancelNextPurge != a3)
  {
    self->__shouldCancelNextPurge = a3;
    v5 = [(CAMInternalStorage *)self delegate];
    [v5 storageControllerDidChangePurgingState:self];
  }
}

- (void)_setCachedEstimatedSpace:(id *)a3
{
  [(CAMInternalStorage *)self _cachedEstimatedSpace];
  v5 = v7[5] == a3->var0 && v7[6] == a3->var1;
  if (!v5 || v7[7] != a3->var2)
  {
    v6 = *&a3->var0;
    self->slowPurgeableBytes = a3->var2;
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

- (void)setGraphConfiguration:(id)a3
{
  v5 = a3;
  p_graphConfiguration = &self->_graphConfiguration;
  if (self->_graphConfiguration != v5)
  {
    v7 = v5;
    objc_storeStrong(p_graphConfiguration, a3);
    p_graphConfiguration = [(CAMInternalStorage *)self _updateAvailablePurgeableSpaceAsync];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_graphConfiguration, v5);
}

- (void)_setFastPurgeThreshold:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->__fastPurgeThreshold != a3)
  {
    self->__fastPurgeThreshold = a3;
    v4 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a3 > 2)
      {
        v5 = 0;
      }

      else
      {
        v5 = off_1E76FE918[a3];
      }

      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "CAMStorageController: changed fast purge threshold to %{public}@", &v6, 0xCu);
    }
  }
}

- (void)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CAMInternalStorage *)self _diskSpaceQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__CAMInternalStorage_hasDiskSpaceToAllowCaptureWithConfiguration_allowPurging_completion___block_invoke;
  v13[3] = &unk_1E76FE830;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
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

- (BOOL)hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 allowPurging:(BOOL)a4 verbose:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  LOBYTE(v5) = [(CAMInternalStorage *)self _hasDiskSpaceToAllowCaptureWithConfiguration:v8 totalFreeBytes:[(CAMInternalStorage *)self totalFreeBytes] allowPurging:v6 verbose:v5];

  return v5;
}

- (BOOL)_hasDiskSpaceToAllowCaptureWithConfiguration:(id)a3 totalFreeBytes:(int64_t)a4 allowPurging:(BOOL)a5 verbose:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = -[CAMInternalStorage _absoluteMinimumBytesForMode:](self, "_absoluteMinimumBytesForMode:", [v10 mode]);
  v12 = [(CAMInternalStorage *)self minimumDiskUsageThresholdInBytesForGraphConfiguration:v10];
  if (v11 <= v12)
  {
    v11 = v12;
  }

  if (v11 >= a4)
  {
    v13 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(CAMInternalStorage *)self _stringFromByteCount:a4];
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

  if (a4 < 2 * v11)
  {
    v13 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(CAMInternalStorage *)self _stringFromByteCount:a4];
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

  if (v6)
  {
    v13 = os_log_create("com.apple.camera", "StorageController");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v14 = [(CAMInternalStorage *)self _stringFromByteCount:a4];
    v15 = [(CAMInternalStorage *)self _stringFromByteCount:v11];
    v18 = 138543618;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    v16 = "CAMStorageController: Total free disk (%{public}@) exceeds absolute minimum for this mode (%{public}@)";
    goto LABEL_9;
  }

LABEL_11:
  if (v7)
  {
    [(CAMInternalStorage *)self _updatePurgeRequestStateForConfiguration:v10 totalFreeBytes:a4];
  }

  return v11 < a4;
}

- (void)reportLowDiskEventWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 hostProcess];
  if (v6 <= 4 && ((1 << v6) & 0x15) != 0)
  {
    v8 = +[CAMUserPreferences preferences];
    v9 = [v8 preferredMinimumFreeBytes];
    if ([v5 isInternalInstall])
    {
      v10 = v9 <= 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      objc_initWeak(&location, self);
      v11 = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__CAMInternalStorage_reportLowDiskEventWithIdentifier___block_invoke;
      block[3] = &unk_1E76F7DC0;
      objc_copyWeak(&v14, &location);
      v13 = v4;
      dispatch_async(v11, block);

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

- (double)availableRecordingTimeInSecondsForGraphConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 mode];
  if (v5 > 8 || ((1 << v5) & 0x186) == 0)
  {
    v13 = 0.0;
  }

  else
  {
    v7 = +[CAMCaptureCapabilities capabilities];
    v8 = [v7 bytesPerMinuteForGraphConfiguration:v4 outputToExternalStorage:0];
    if (v8)
    {
      v9 = v8;
      v10 = [(CAMInternalStorage *)self totalFreeBytes];
      v11 = [(CAMInternalStorage *)self minimumDiskUsageThresholdInBytesForGraphConfiguration:v4];
      v12 = (v10 - v11) * 60.0;
      if (v10 <= v11)
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

- (double)_availableRecordingTimeInMinutesForFreeBytes:(int64_t)a3 minimumDiskUsageThreshold:(int64_t)a4 bytesPerMinute:(int64_t)a5
{
  if (a5 < 1)
  {
    return 0.0;
  }

  else
  {
    return (a3 - a4) / a5;
  }
}

- (int64_t)minimumDiskUsageThresholdInBytesForGraphConfiguration:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = -[CAMInternalStorage _absoluteMinimumBytesForMode:](self, "_absoluteMinimumBytesForMode:", [v4 mode]);
  v6 = [v4 videoEncodingBehavior];

  if (v6 != 2)
  {
    return v5;
  }

  v7 = +[CAMCaptureCapabilities capabilities];
  if (![(CAMInternalStorage *)self _proResMinimumDiskUsageThreshold])
  {
    v8 = [(CAMInternalStorage *)self _totalBytes];
    v9 = (v8 * 0.1);
    if ([v7 proResMinimumDiskSpaceOverrideMegabytesRelativeToFreeSpace])
    {
      v10 = [(CAMInternalStorage *)self totalFreeBytes];
      v11 = v10 + ([v7 proResMinimumDiskSpaceOverrideMegabytesRelativeToFreeSpace] << 20);
      v12 = os_log_create("com.apple.camera", "StorageController");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 134218240;
        *&v18[4] = v11;
        *&v18[12] = 2048;
        *&v18[14] = (v8 * 0.1);
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
      v11 = (v15 * v8);
      v12 = os_log_create("com.apple.camera", "StorageController");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 134218240;
        *&v18[4] = v11;
        *&v18[12] = 2048;
        *&v18[14] = (v8 * 0.1);
        v13 = "CAMStorageController: overriding ProRes minimum disk usage threshold to be %lld (used fraction override). Default is %lld";
        goto LABEL_9;
      }
    }

    v9 = v11;
    goto LABEL_11;
  }

LABEL_12:
  v16 = [(CAMInternalStorage *)self _proResMinimumDiskUsageThreshold];
  if (v5 <= v16)
  {
    v5 = v16;
  }

  return v5;
}

- (void)_updateAvailablePurgeableSpaceAsync
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 isCacheDeleteSupported];

  if (v4)
  {
    v5 = +[CAMCaptureCapabilities capabilities];
    v6 = [(CAMInternalStorage *)self graphConfiguration];
    v7 = [v5 bytesPerMinuteForGraphConfiguration:v6 outputToExternalStorage:0];

    v8 = [(CAMInternalStorage *)self graphConfiguration];
    v9 = [(CAMInternalStorage *)self minimumDiskUsageThresholdInBytesForGraphConfiguration:v8];

    objc_initWeak(&location, self);
    v10 = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__CAMInternalStorage__updateAvailablePurgeableSpaceAsync__block_invoke;
    v11[3] = &unk_1E76F9AB0;
    objc_copyWeak(v12, &location);
    v12[1] = v7;
    v12[2] = v9;
    dispatch_async(v10, v11);

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __57__CAMInternalStorage__updateAvailablePurgeableSpaceAsync__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queryQueue_queryAvailableSpaceAndUpdateCachedEstimatesForBytesPerMinute:*(a1 + 40) minimumDiskUsageThreshold:*(a1 + 48)];
}

- (int64_t)_fastPurgeThresholdForRequestType:(int64_t)a3
{
  if (a3)
  {
    return 2 * (a3 == 1);
  }

  else
  {
    return 1;
  }
}

- (void)purgeFastPurgeableSpaceWithRequestType:(int64_t)a3
{
  v4 = [(CAMInternalStorage *)self _fastPurgeThresholdForRequestType:a3];

  [(CAMInternalStorage *)self _purgeFastPurgeableSpaceWithThreshold:v4 calledFromPurgeCompletion:0 forceStopReason:0 analyticsEvent:0];
}

- (void)_purgeFastPurgeableSpaceWithThreshold:(int64_t)a3 calledFromPurgeCompletion:(BOOL)a4 forceStopReason:(id)a5 analyticsEvent:(id)a6
{
  v7 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = +[CAMCaptureCapabilities capabilities];
  v13 = [v12 isCacheDeleteSupported];

  if (v13)
  {
    if (a3 && !v11)
    {
      v14 = [(CAMInternalStorage *)self _requestTypeFromNonZeroFastPurgeThreshold:a3];
      v15 = [CAMAnalyticsProResPurgeEvent alloc];
      v16 = [(CAMInternalStorage *)self graphConfiguration];
      v11 = [(CAMAnalyticsProResPurgeEvent *)v15 initWithRequestType:v14 graphConfiguration:v16 totalBytesInSystem:[(CAMInternalStorage *)self _totalBytes]];
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __117__CAMInternalStorage__purgeFastPurgeableSpaceWithThreshold_calledFromPurgeCompletion_forceStopReason_analyticsEvent___block_invoke;
    aBlock[3] = &unk_1E76F7DC0;
    objc_copyWeak(&v38, &location);
    v17 = v11;
    v37 = v17;
    v18 = _Block_copy(aBlock);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __117__CAMInternalStorage__purgeFastPurgeableSpaceWithThreshold_calledFromPurgeCompletion_forceStopReason_analyticsEvent___block_invoke_2;
    v34[3] = &unk_1E76F7960;
    v34[4] = self;
    v11 = v17;
    v35 = v11;
    v19 = _Block_copy(v34);
    if (v7 && [(CAMInternalStorage *)self _shouldCancelNextPurge])
    {
      [(CAMAnalyticsProResPurgeEvent *)v11 updateForCancelRequest];
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

    if (v10)
    {
      v20 = v10;
      if (v7)
      {
        goto LABEL_29;
      }
    }

    else if ([(CAMInternalStorage *)self hasPurgeableResources])
    {
      if (a3)
      {
        if (a3 != 1 || ([(CAMInternalStorage *)self graphConfiguration], v21 = objc_claimAutoreleasedReturnValue(), [(CAMInternalStorage *)self availableRecordingTimeInSecondsForGraphConfiguration:v21], v23 = v22, v21, v23 < 300.0))
        {
          v24 = os_log_create("com.apple.camera", "StorageController");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = @"ProResAutoPurgeRecordTime";
            if (a3 != 1)
            {
              v25 = 0;
            }

            if (a3 == 2)
            {
              v25 = @"Infinite";
            }

            v26 = v25;
            *buf = 138543362;
            v41 = v26;
            _os_log_impl(&dword_1A3640000, v24, OS_LOG_TYPE_DEFAULT, "CAMStorageController: Kicking off a fast purge (threshold: %{public}@)", buf, 0xCu);
          }

          [(CAMInternalStorage *)self _setPurging:1];
          [(CAMInternalStorage *)self _setFastPurgeThreshold:a3];
          [(CAMInternalStorage *)self _setShouldCancelNextPurge:0];
          v27 = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __117__CAMInternalStorage__purgeFastPurgeableSpaceWithThreshold_calledFromPurgeCompletion_forceStopReason_analyticsEvent___block_invoke_18;
          block[3] = &unk_1E76FE858;
          objc_copyWeak(v33, &location);
          v33[1] = a3;
          v31 = v11;
          v32 = v18;
          dispatch_async(v27, block);

          objc_destroyWeak(v33);
          v20 = 0;
          goto LABEL_36;
        }

        if (v7)
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
        if (v7)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (v7)
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
  v4 = [(CAMInternalStorage *)self graphConfiguration];
  v5 = [v3 bytesPerMinuteForGraphConfiguration:v4 outputToExternalStorage:0];

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
    v4 = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__CAMInternalStorage_cancelPurge__block_invoke;
    block[3] = &unk_1E76F8580;
    objc_copyWeak(&v6, buf);
    dispatch_async(v4, block);

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __33__CAMInternalStorage_cancelPurge__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queryQueue_cancelCurrentPurge];
}

- (void)_queryQueue_purgeFastPurgeableResourcesWithThreshold:(int64_t)a3 analyticsEvent:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
  dispatch_assert_queue_V2(v7);

  if ([(CAMInternalStorage *)self _queryQueue_currentToken])
  {
    v8 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "CAMStorageController: Ignoring request to purge since we have an active token";
      v10 = v8;
      v11 = 2;
LABEL_4:
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    if (!a3)
    {
      v8 = os_log_create("com.apple.camera", "StorageController");
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 138543362;
      *&buf[4] = @"Zero";
      v9 = "CAMStorageController: Ignoring request to purge, threshold set to %{public}@";
      v10 = v8;
      v11 = 12;
      goto LABEL_4;
    }

    v8 = [(CAMInternalStorage *)self _cacheDeleteVolume];
    if (v8)
    {
      v12 = +[CAMCaptureCapabilities capabilities];
      v13 = [(CAMInternalStorage *)self graphConfiguration];
      v14 = [v12 bytesPerMinuteForGraphConfiguration:v13 outputToExternalStorage:0];

      v15 = [(CAMInternalStorage *)self graphConfiguration];
      v16 = [(CAMInternalStorage *)self minimumDiskUsageThresholdInBytesForGraphConfiguration:v15];

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

        v40[0] = v8;
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
        [v6 updateBeforePurgeOperationWithFreeBytes:v17 fastPurgeableBytes:*&buf[8] slowPurgeableBytes:v44 maxRecordingTimeSeconds:v26 * 60.0];
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
        v31 = v6;
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
  v3 = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CAMInternalStorage *)self _queryQueue_currentToken];
  v5 = os_log_create("com.apple.camera", "StorageController");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 138543362;
      v8 = [(CAMInternalStorage *)self _queryQueue_currentToken];
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

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)_queryQueue_queryAvailableSpaceAndUpdateCachedEstimatesForBytesPerMinute:(SEL)a3 minimumDiskUsageThreshold:(int64_t)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v9 = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CAMInternalStorage *)self _cacheDeleteVolume];
  if (v10)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v31 = @"CACHE_DELETE_VOLUME";
    v32[0] = v10;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v12 = CacheDeleteCopyItemizedPurgeableSpaceWithInfo();
    v13 = CFAbsoluteTimeGetCurrent();
    v14 = [(CAMInternalStorage *)self totalFreeBytes];
    retstr->var0 = v14;
    v15 = [v12 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_FSPURGEABLE"];
    v16 = [v15 longLongValue];
    retstr->var1 = v16;

    v17 = [v12 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
    retstr->var2 = [v17 longLongValue] - v16;

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __121__CAMInternalStorage__queryQueue_queryAvailableSpaceAndUpdateCachedEstimatesForBytesPerMinute_minimumDiskUsageThreshold___block_invoke;
    v24[3] = &unk_1E76F9B50;
    v24[4] = self;
    v25 = *&retstr->var0;
    var2 = retstr->var2;
    dispatch_async(MEMORY[0x1E69E96A0], v24);
    v18 = [MEMORY[0x1E695DF90] dictionary];
    [(CAMInternalStorage *)self _copyAndApplyByteStringFormattingFromDictionary:v12 toDictionary:v18 keys:&unk_1F16C9D28];
    [(CAMInternalStorage *)self _copyFromDictionary:v12 toDictionary:v18 keys:&unk_1F16C9D40];
    [(CAMInternalStorage *)self _availableRecordingTimeInMinutesForFreeBytes:v14 minimumDiskUsageThreshold:a5 bytesPerMinute:a4];
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
      *&buf[14] = v18;
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

- (void)_statMountPoint:(statfs *)a3
{
  v5 = [(CAMInternalStorage *)self _storageMountPoint];
  v6 = [v5 path];
  v7 = statfs([v6 fileSystemRepresentation], a3);

  if (v7)
  {
    v8 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CAMInternalStorage _statMountPoint:?];
    }

    bzero(a3, 0x878uLL);
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

- (int64_t)_resourceValueForKey:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/"];
  v22[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v15 = 0;
  v7 = [v5 resourceValuesForKeys:v6 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:v4];
    v10 = [v9 longValue];
  }

  else
  {
    v9 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [(CAMInternalStorage *)self _storageMountPoint];
      v13 = [v12 path];
      v14 = [v8 localizedDescription];
      *buf = 138543874;
      v17 = v4;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_error_impl(&dword_1A3640000, v9, OS_LOG_TYPE_ERROR, "CAMStorageController: resourceValuesForKeys failed to get resource for key %{public}@ at storage mount point %{public}@ with error %{public}@", buf, 0x20u);
    }

    v10 = 0;
  }

  return v10;
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

- (int64_t)_absoluteMinimumBytesForMode:(int64_t)a3
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 minimumDiskSpaceReserved];

  return v4;
}

- (void)_loadFreeDiskThresholds
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_notifyDelegateOfPurgeCompletionAndUpdateContinuousPurgeWithForceStopWithReason:(id)a3 analyticsEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__CAMInternalStorage__notifyDelegateOfPurgeCompletionAndUpdateContinuousPurgeWithForceStopWithReason_analyticsEvent___block_invoke;
  block[3] = &unk_1E76F7938;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __117__CAMInternalStorage__notifyDelegateOfPurgeCompletionAndUpdateContinuousPurgeWithForceStopWithReason_analyticsEvent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _purgeFastPurgeableSpaceWithThreshold:objc_msgSend(*(a1 + 32) calledFromPurgeCompletion:"_fastPurgeThreshold") forceStopReason:1 analyticsEvent:{*(a1 + 40), *(a1 + 48)}];
  v2 = [*(a1 + 32) delegate];
  [v2 availableDiskSpaceChanged:*(a1 + 32)];
}

- (int64_t)_preferredMinimumBytesForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CAMInternalStorage *)self _cachedLowDiskThreshold];
  v6 = [v4 mode];
  if (v6 <= 9)
  {
    if (((1 << v6) & 0x259) != 0)
    {
      v7 = +[CAMCaptureCapabilities capabilities];
      v8 = [MEMORY[0x1E69870F0] maxLivePhotoDataSize];
      if ([v7 isLivePhotoSupported])
      {
        v9 = 4 * v8;
      }

      else
      {
        v9 = v8;
      }

      goto LABEL_8;
    }

    if (((1 << v6) & 0x186) != 0)
    {
      v7 = +[CAMCaptureCapabilities capabilities];
      v9 = [v7 bytesPerMinuteForGraphConfiguration:v4 outputToExternalStorage:0];
LABEL_8:
      v5 += v9;
    }
  }

  return v5;
}

- (void)_updatePurgeRequestStateForConfiguration:(id)a3 totalFreeBytes:(int64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[CAMCaptureCapabilities capabilities];
  v8 = [v7 isCacheDeleteSupported];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DF00] date];
    v10 = [(CAMInternalStorage *)self _lastPurgeRequestUpdateTime];
    if (!v10 || ([v9 timeIntervalSinceDate:v10], v11 >= 60.0))
    {
      v12 = [(CAMInternalStorage *)self _preferredMinimumBytesForConfiguration:v6];
      v13 = [(CAMInternalStorage *)self _byteFormatter];
      if (v12 > a4)
      {
        v14 = os_log_create("com.apple.camera", "StorageController");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 stringFromByteCount:a4];
          v16 = [v13 stringFromByteCount:v12];
          *buf = 138543618;
          v21 = v15;
          v22 = 2114;
          v23 = v16;
          _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "CAMStorageController: Total free disk (%{public}@) is less than PREFERRED minimum for this mode (%{public}@)", buf, 0x16u);
        }

        [(CAMInternalStorage *)self _setPurging:1];
        objc_initWeak(buf, self);
        v17 = [(CAMInternalStorage *)self _cacheDeleteQueryQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __78__CAMInternalStorage__updatePurgeRequestStateForConfiguration_totalFreeBytes___block_invoke;
        block[3] = &unk_1E76F9AB0;
        objc_copyWeak(v19, buf);
        v19[1] = a4;
        v19[2] = v12;
        dispatch_async(v17, block);

        [(CAMInternalStorage *)self set_lastPurgeRequestUpdateTime:v9];
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

- (void)_queryQueue_aggregateLowDiskEventWithIdentifier:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = a3;
  v5 = NSHomeDirectory();
  v6 = [v3 fileURLWithPath:v5];

  CacheDeleteRegisterLowDiskFailure();
}

- (void)_queryQueue_updatePurgeRequestStateForTotalFreeBytes:(int64_t)a3 preferredFreeBytes:(int64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  if ([(CAMInternalStorage *)self _queryQueue_currentToken])
  {
    v7 = os_log_create("com.apple.camera", "StorageController");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "CAMStorageController: Ignoring request to purge preferred free bytes since we have an active token", buf, 2u);
    }
  }

  else
  {
    v7 = [(CAMInternalStorage *)self _cacheDeleteVolume];
    if (v7)
    {
      v23[5] = 0;
      v8 = CacheDeleteCopyAvailableSpaceForVolume();
      v9 = a4 - a3;
      v10 = [v8 longLongValue];
      v11 = +[CAMCaptureCapabilities capabilities];
      v12 = [v11 cacheDeleteUrgency];

      v13 = [(CAMInternalStorage *)self _byteFormatter];
      v14 = os_log_create("com.apple.camera", "StorageController");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v13 stringFromByteCount:v10 - a3];
        v16 = [v13 stringFromByteCount:v9];
        v17 = v16;
        if ((v12 + 1) > 5)
        {
          v18 = 0;
        }

        else
        {
          v18 = off_1E76FE930[(v12 + 1)];
        }

        *buf = 138543874;
        v27 = v15;
        v28 = 2114;
        v29 = v16;
        v30 = 2114;
        v31 = v18;
        _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "CAMStorageController: CacheDelete indicates %{public}@ bytes purgeable; requesting purge of %{public}@ at %{public}@ urgency", buf, 0x20u);
      }

      v25[0] = v7;
      v24[0] = @"CACHE_DELETE_VOLUME";
      v24[1] = @"CACHE_DELETE_URGENCY_LIMIT";
      v19 = [MEMORY[0x1E696AD98] numberWithInt:v12];
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

- (void)_copyFromDictionary:(id)a3 toDictionary:(id)a4 keys:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        v15 = [v7 objectForKeyedSubscript:v14];
        [v8 setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)_copyAndApplyByteStringFormattingFromDictionary:(id)a3 toDictionary:(id)a4 keys:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v7 objectForKeyedSubscript:v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = -[CAMInternalStorage _stringFromByteCount:](self, "_stringFromByteCount:", [v15 longLongValue]);

          v15 = v16;
        }

        [v8 setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (id)_stringFromByteCount:(int64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(CAMInternalStorage *)self _byteFormatter];
  v6 = [v5 stringFromByteCount:a3];
  v7 = [v4 stringWithFormat:@"%lld (%@)", a3, v6];

  return v7;
}

- (id)_stringFromAvailableSpace:(id *)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(CAMInternalStorage *)self _stringFromByteCount:a3->var0];
  v7 = [(CAMInternalStorage *)self _stringFromByteCount:a3->var1];
  v8 = [(CAMInternalStorage *)self _stringFromByteCount:a3->var2];
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