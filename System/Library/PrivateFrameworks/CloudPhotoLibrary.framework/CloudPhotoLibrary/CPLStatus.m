@interface CPLStatus
+ (id)descriptionForAccountEPPCapability:(int64_t)a3;
- (BOOL)_deleteInitialSyncMarkerWithError:(id *)a3;
- (BOOL)_writeInitialSyncMarkerForDate:(id)a3 error:(id *)a4;
- (BOOL)containerHasBeenWiped;
- (BOOL)hasBatteryBudget;
- (BOOL)hasCellularBudget;
- (BOOL)hasChangesToProcess;
- (BOOL)hasFinishedInitialDownload;
- (BOOL)hasHeavyResourceUsage;
- (BOOL)hasLowBatteryLevel;
- (BOOL)hasModerateThermalPressure;
- (BOOL)hasPoorNetworkQuality;
- (BOOL)hasPoorSystemConditions;
- (BOOL)hasThermalPressure;
- (BOOL)hasValidSystemBudget;
- (BOOL)iCloudLibraryClientIsNotAuthenticated;
- (BOOL)iCloudLibraryClientVersionTooOld;
- (BOOL)iCloudLibraryExists;
- (BOOL)iCloudLibraryHasBeenWiped;
- (BOOL)isBlockedByLowPowerMode;
- (BOOL)isCellularRestricted;
- (BOOL)isConnectedToNetwork;
- (BOOL)isConstrainedNetwork;
- (BOOL)isExceedingQuota;
- (BOOL)isExceedingSharedLibraryQuota;
- (BOOL)isInAirplaneMode;
- (BOOL)isKeychainCDPEnabled;
- (BOOL)isStuckInExitForSharedLibrary;
- (BOOL)isUpgradeSuggestedToAccessAllPhotos;
- (BOOL)isWalrusEnabled;
- (BOOL)lowDiskSpace;
- (BOOL)veryLowDiskSpace;
- (BOOL)writeInitialSyncMarker:(id *)a3;
- (CPLAccountFlags)accountFlags;
- (CPLStatus)initWithClientLibraryBaseURL:(id)a3;
- (CPLStatus)initWithClientLibraryBaseURLForCPLEngine:(id)a3;
- (CPLStatusDelegate)delegate;
- (NSArray)disabledFeatures;
- (NSData)accountFlagsData;
- (NSDate)cloudAssetCountPerTypeLastCheckDate;
- (NSDate)exitDeleteTime;
- (NSDate)initialDownloadDate;
- (NSDate)initialSyncDate;
- (NSDate)lastCompletePrefetchDate;
- (NSDate)lastPruneDate;
- (NSDate)lastSuccessfulSyncDate;
- (NSDictionary)cloudAssetCountPerType;
- (OS_dispatch_queue)delegateQueue;
- (id)_statusClient;
- (id)statusDescription;
- (int64_t)accountEPPCapability;
- (int64_t)blockedReason;
- (int64_t)busyState;
- (int64_t)maximumAccountEPPCapability;
- (int64_t)serverFeatureCompatibleVersion;
- (int64_t)unBlockedReason;
- (unint64_t)estimatedCountOfRemainingRecordsDuringSharedLibraryExit;
- (void)_loadIfNecessary;
- (void)_save;
- (void)_setObjectInStatus:(id)a3 forKey:(id)a4;
- (void)_statusDidChange;
- (void)checkInitialSyncMarker;
- (void)preventDelegateWithDelegationClass:(id)a3 selector:(SEL)a4;
- (void)refetchFromDisk;
- (void)setAccountEPPCapability:(int64_t)a3;
- (void)setAccountFlagsData:(id)a3;
- (void)setBusyState:(int64_t)a3;
- (void)setCloudAssetCountPerType:(id)a3 updateCheckDate:(BOOL)a4;
- (void)setConnectedToNetwork:(BOOL)a3 cellularIsRestricted:(BOOL)a4 inAirplaneMode:(BOOL)a5;
- (void)setContainerHasBeenWiped:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setDisabledFeatures:(id)a3;
- (void)setEstimatedCountOfRemainingRecordsDuringSharedLibraryExit:(unint64_t)a3;
- (void)setExitDeleteTime:(id)a3;
- (void)setHasCellularBudget:(BOOL)a3 hasBatteryBudget:(BOOL)a4 hasLowBatteryLevel:(BOOL)a5 isConstrainedNetwork:(BOOL)a6 isBlockedByLowPowerMode:(BOOL)a7 hasHeavyResourceUsage:(BOOL)a8 hasPoorNetworkQuality:(BOOL)a9 hasModerateThermalPressure:(BOOL)a10 hasThermalPressure:(BOOL)a11 hasPoorSystemConditions:(BOOL)a12 isBudgetValid:(BOOL)a13 blockedReason:(int64_t)a14 unBlockedReason:(int64_t)a15;
- (void)setHasChangesToProcess:(BOOL)a3;
- (void)setICloudLibraryClientIsNotAuthenticated:(BOOL)a3;
- (void)setICloudLibraryClientVersionTooOld:(BOOL)a3;
- (void)setICloudLibraryExists:(BOOL)a3;
- (void)setICloudLibraryHasBeenWiped:(BOOL)a3;
- (void)setInitialDownloadDate:(id)a3;
- (void)setInitialSyncDate:(id)a3;
- (void)setIsExceedingQuota:(BOOL)a3;
- (void)setIsExceedingSharedLibraryQuota:(BOOL)a3;
- (void)setIsStuckInExitForSharedLibrary:(BOOL)a3;
- (void)setKeychainCDPEnabled:(BOOL)a3;
- (void)setLastCompletePrefetchDate:(id)a3;
- (void)setLastPruneDate:(id)a3;
- (void)setLastSuccessfulSyncDate:(id)a3;
- (void)setLowDiskSpace:(BOOL)a3 veryLowDiskSpace:(BOOL)a4;
- (void)setServerFeatureCompatibleVersion:(int64_t)a3;
- (void)setUpgradeSuggestedToAccessAllPhotos:(BOOL)a3;
- (void)setWalrusEnabled:(BOOL)a3;
@end

@implementation CPLStatus

- (void)_loadIfNecessary
{
  v38 = *MEMORY[0x1E69E9840];
  p_status = &self->_status;
  if (!self->_status)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF90]);
    statusFileURL = self->_statusFileURL;
    v29 = 0;
    v6 = [v4 initWithContentsOfURL:statusFileURL error:&v29];
    v7 = v29;
    if (v6)
    {
      objc_storeStrong(p_status, v6);
      v8 = [(NSMutableDictionary *)*p_status objectForKeyedSubscript:@"syncSessionMetrics"];

      if (v8)
      {
        if (self->_forCPL)
        {
          [(CPLStatus *)self _setObjectInStatus:0 forKey:@"syncSessionMetrics"];
          [(CPLStatus *)self _save];
        }

        else
        {
          [(NSMutableDictionary *)*p_status removeObjectForKey:@"syncSessionMetrics"];
        }
      }

      v14 = [(NSMutableDictionary *)*p_status objectForKeyedSubscript:@"initialSyncDate"];

      if (!v14)
      {
        v15 = [(NSURL *)self->_statusFileURL URLByDeletingLastPathComponent];
        v16 = [v15 URLByAppendingPathComponent:@"initialsync_marker"];

        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfURL:v16 encoding:4 error:0];
        if (v17)
        {
          v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
          [v18 setDateFormat:@"yyyy-MM-dd HH.mm.ss.SSS"];
          v19 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
          [v18 setLocale:v19];

          v20 = [v18 dateFromString:v17];
          if (v20)
          {
            if (self->_forCPL)
            {
              [(CPLStatus *)self _setObjectInStatus:v20 forKey:@"initialSyncDate"];
              [(CPLStatus *)self _save];
            }

            else
            {
              [(NSMutableDictionary *)*p_status setObject:v20 forKeyedSubscript:@"initialSyncDate"];
            }
          }
        }
      }

      if (self->_forCPL || (_CPLSilentLogging & 1) != 0)
      {
        goto LABEL_29;
      }

      v24 = __CPLStatusOSLogDomain();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(CPLStatus *)self _statusClient];
        v26 = [(NSURL *)self->_statusFileURL path];
        status = self->_status;
        *buf = 138413058;
        v31 = v25;
        v32 = 2048;
        v33 = self;
        v34 = 2112;
        v35 = v26;
        v36 = 2112;
        v37 = status;
        _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEFAULT, "%@ read CPLStatus %p at %@: %@", buf, 0x2Au);
      }

LABEL_28:

LABEL_29:
      goto LABEL_30;
    }

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 cplIsFileDoesNotExistError:v7];

    if (v10)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLStatusOSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [(NSURL *)self->_statusFileURL path];
          v13 = [(CPLStatus *)self _statusClient];
          *buf = 134218498;
          v31 = self;
          v32 = 2112;
          v33 = v12;
          v34 = 2112;
          v35 = v13;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "CPLStatus %p at %@ for %@ does not exist - starting empty", buf, 0x20u);
        }

LABEL_19:
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLStatusOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v21 = [(CPLStatus *)self _statusClient];
        v22 = [(NSURL *)self->_statusFileURL path];
        *buf = 138413058;
        v31 = v21;
        v32 = 2048;
        v33 = self;
        v34 = 2112;
        v35 = v22;
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@ failed to read CPLStatus %p at %@: %@", buf, 0x2Au);
      }

      goto LABEL_19;
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v24 = *p_status;
    *p_status = v23;
    goto LABEL_28;
  }

LABEL_30:
  v28 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasChangesToProcess
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__CPLStatus_hasChangesToProcess__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __32__CPLStatus_hasChangesToProcess__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"hasChangesToProcess"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (OS_dispatch_queue)delegateQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateQueue);

  return WeakRetained;
}

- (CPLStatusDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)preventDelegateWithDelegationClass:(id)a3 selector:(SEL)a4
{
  objc_storeStrong(&self->_delegationProtocol, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_delegationSelector = v6;
}

- (int64_t)maximumAccountEPPCapability
{
  if (!+[CPLFingerprintScheme supportsEPP])
  {
    return 2;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CPLStatus_maximumAccountEPPCapability__block_invoke;
  v6[3] = &unk_1E861F818;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(lock, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __40__CPLStatus_maximumAccountEPPCapability__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"accountEPPCapabilityMaximum"];
  v3 = [v2 integerValue];

  v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"accountEPPCapability"];
  v5 = [v4 integerValue];

  if (v3 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
}

- (void)setAccountEPPCapability:(int64_t)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__CPLStatus_setAccountEPPCapability___block_invoke;
  v4[3] = &unk_1E861B100;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(lock, v4);
}

void __37__CPLStatus_setAccountEPPCapability___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"accountEPPCapability"];
  v3 = [v2 integerValue];

  v4 = *(a1 + 40);
  if (v3 == v4)
  {
    return;
  }

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v5 _setObjectInStatus:v6 forKey:@"accountEPPCapability"];
  }

  else
  {
    [*(a1 + 32) _setObjectInStatus:0 forKey:@"accountEPPCapability"];
  }

  v7 = +[CPLFingerprintScheme supportsEPPAutoEnable];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8[4] objectForKeyedSubscript:@"accountEPPCapabilityMaximum"];
    v10 = [v9 integerValue];

    v11 = *(a1 + 40);
    if (v10 <= v11)
    {
      v12 = *(a1 + 40);
    }

    else
    {
      v12 = v10;
    }

    if (v3 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v3;
    }

    if (v13 != v11 || v10 == 0)
    {
      if (v13 != v10 && v13 != v11)
      {
        v16 = *(a1 + 32);
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [v16 _setObjectInStatus:v17 forKey:@"accountEPPCapabilityMaximum"];
      }

      goto LABEL_23;
    }

    v8 = *(a1 + 32);
  }

  [v8 _setObjectInStatus:0 forKey:@"accountEPPCapabilityMaximum"];
LABEL_23:
  v18 = *(a1 + 32);

  [v18 _save];
}

- (int64_t)accountEPPCapability
{
  if (!+[CPLFingerprintScheme supportsEPP])
  {
    return 2;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__CPLStatus_accountEPPCapability__block_invoke;
  v6[3] = &unk_1E861F818;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(lock, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __33__CPLStatus_accountEPPCapability__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"accountEPPCapability"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue];
}

- (void)setDisabledFeatures:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {

    v4 = 0;
  }

  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__CPLStatus_setDisabledFeatures___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

void __33__CPLStatus_setDisabledFeatures___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"disabledFeatures"];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v2;
  if (v4)
  {
    if (v3 | v2)
    {
LABEL_10:
      [*(a1 + 32) _setObjectInStatus:v3 forKey:@"disabledFeatures"];
      [*(a1 + 32) _save];
    }
  }

  else
  {
    v5 = [v3 isEqual:v2];
    if ((v5 & 1) == 0)
    {
      v3 = *(a1 + 40);
      goto LABEL_10;
    }
  }
}

- (NSArray)disabledFeatures
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6659;
  v10 = __Block_byref_object_dispose__6660;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__CPLStatus_disabledFeatures__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__CPLStatus_disabledFeatures__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"disabledFeatures"];
  v4 = v2;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

- (void)setAccountFlagsData:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__CPLStatus_setAccountFlagsData___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

void __33__CPLStatus_setAccountFlagsData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"accountFlags"];
  v3 = *(a1 + 40);
  v5 = v2;
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    v4 = *(a1 + 32);
    goto LABEL_7;
  }

  if (v3)
  {
    if ([v2 isEqual:?])
    {
      goto LABEL_9;
    }

    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
LABEL_7:
    [v4 _setObjectInStatus:v3 forKey:@"accountFlags"];
    [*(a1 + 32) _save];
    goto LABEL_9;
  }

  [*(a1 + 32) _setObjectInStatus:0 forKey:@"accountFlags"];
LABEL_9:
}

- (NSData)accountFlagsData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6659;
  v10 = __Block_byref_object_dispose__6660;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__CPLStatus_accountFlagsData__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __29__CPLStatus_accountFlagsData__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"accountFlags"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (CPLAccountFlags)accountFlags
{
  v2 = [(CPLStatus *)self accountFlagsData];
  if (v2)
  {
    v3 = [[CPLAccountFlags alloc] initWithData:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLowDiskSpace:(BOOL)a3 veryLowDiskSpace:(BOOL)a4
{
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__CPLStatus_setLowDiskSpace_veryLowDiskSpace___block_invoke;
  v5[3] = &unk_1E861C358;
  v5[4] = self;
  v6 = a3;
  v7 = a4;
  dispatch_sync(lock, v5);
}

void __46__CPLStatus_setLowDiskSpace_veryLowDiskSpace___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"lowDiskSpace"];
  v3 = [v2 BOOLValue];

  v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"veryLowDiskSpace"];
  LODWORD(v2) = [v4 BOOLValue];

  if (__PAIR64__(*(a1 + 41), *(a1 + 40)) != __PAIR64__(v2, v3))
  {
    v5 = MEMORY[0x1E695E118];
    if (*(a1 + 40))
    {
      v6 = MEMORY[0x1E695E118];
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 32) _setObjectInStatus:v6 forKey:@"lowDiskSpace"];
    if (*(a1 + 41))
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    [*(a1 + 32) _setObjectInStatus:v7 forKey:@"veryLowDiskSpace"];
    v8 = *(a1 + 32);

    [v8 _save];
  }
}

- (BOOL)veryLowDiskSpace
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__CPLStatus_veryLowDiskSpace__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __29__CPLStatus_veryLowDiskSpace__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"veryLowDiskSpace"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)lowDiskSpace
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__CPLStatus_lowDiskSpace__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __25__CPLStatus_lowDiskSpace__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"lowDiskSpace"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setConnectedToNetwork:(BOOL)a3 cellularIsRestricted:(BOOL)a4 inAirplaneMode:(BOOL)a5
{
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__CPLStatus_setConnectedToNetwork_cellularIsRestricted_inAirplaneMode___block_invoke;
  v6[3] = &unk_1E861C330;
  v6[4] = self;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_sync(lock, v6);
}

void __71__CPLStatus_setConnectedToNetwork_cellularIsRestricted_inAirplaneMode___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"connectedToNetwork"];
  v14 = v2;
  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"cellularIsRestricted"];
  v5 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"inAirplaneMode"];
  v6 = v5;
  if (!v4)
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v7 = [v4 BOOLValue];
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = [v6 BOOLValue];
LABEL_9:
  if (v3 != *(a1 + 40) || v7 != *(a1 + 41) || v8 != *(a1 + 42))
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [v9 _setObjectInStatus:v10 forKey:@"connectedToNetwork"];

    if (*(a1 + 41) == 1)
    {
      v11 = MEMORY[0x1E695E118];
    }

    else
    {
      v11 = 0;
    }

    [*(a1 + 32) _setObjectInStatus:v11 forKey:@"cellularIsRestricted"];
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 42)];
    [v12 _setObjectInStatus:v13 forKey:@"inAirplaneMode"];

    [*(a1 + 32) _save];
  }
}

- (int64_t)unBlockedReason
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__CPLStatus_unBlockedReason__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __28__CPLStatus_unBlockedReason__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"unBlockedReason"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue];
}

- (int64_t)blockedReason
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__CPLStatus_blockedReason__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __26__CPLStatus_blockedReason__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"blockedReason"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue];
}

- (BOOL)hasPoorSystemConditions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__CPLStatus_hasPoorSystemConditions__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __36__CPLStatus_hasPoorSystemConditions__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"poorSystemConditions"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)hasThermalPressure
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__CPLStatus_hasThermalPressure__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __31__CPLStatus_hasThermalPressure__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"thermalPressure"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)hasModerateThermalPressure
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__CPLStatus_hasModerateThermalPressure__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__CPLStatus_hasModerateThermalPressure__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"moderateThermalPressure"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)hasPoorNetworkQuality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__CPLStatus_hasPoorNetworkQuality__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __34__CPLStatus_hasPoorNetworkQuality__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"poorNetworkQuality"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)hasHeavyResourceUsage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__CPLStatus_hasHeavyResourceUsage__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __34__CPLStatus_hasHeavyResourceUsage__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"heavyResourceUsage"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)isBlockedByLowPowerMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__CPLStatus_isBlockedByLowPowerMode__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __36__CPLStatus_isBlockedByLowPowerMode__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"isBlockedByLowPowerModeKey"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)isConstrainedNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CPLStatus_isConstrainedNetwork__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __33__CPLStatus_isConstrainedNetwork__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"constrainedNetwork"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)hasLowBatteryLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__CPLStatus_hasLowBatteryLevel__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __31__CPLStatus_hasLowBatteryLevel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"lowBatteryLevel"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"lowBatteryLevel"];
    *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
  }
}

- (BOOL)isInAirplaneMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__CPLStatus_isInAirplaneMode__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __29__CPLStatus_isInAirplaneMode__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"inAirplaneMode"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)isCellularRestricted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CPLStatus_isCellularRestricted__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __33__CPLStatus_isCellularRestricted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"cellularIsRestricted"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)isConnectedToNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CPLStatus_isConnectedToNetwork__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __33__CPLStatus_isConnectedToNetwork__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKey:@"connectedToNetwork"];
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
    v2 = v3;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)hasBatteryBudget
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__CPLStatus_hasBatteryBudget__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __29__CPLStatus_hasBatteryBudget__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"hasValidSystemBudgetKey"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"hasBatteryBudgetKey"];
    *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
  }
}

- (BOOL)hasCellularBudget
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CPLStatus_hasCellularBudget__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __30__CPLStatus_hasCellularBudget__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"hasValidSystemBudgetKey"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"hasCellularBudgetKey"];
    *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
  }
}

- (BOOL)hasValidSystemBudget
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CPLStatus_hasValidSystemBudget__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __33__CPLStatus_hasValidSystemBudget__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"hasValidSystemBudgetKey"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setHasCellularBudget:(BOOL)a3 hasBatteryBudget:(BOOL)a4 hasLowBatteryLevel:(BOOL)a5 isConstrainedNetwork:(BOOL)a6 isBlockedByLowPowerMode:(BOOL)a7 hasHeavyResourceUsage:(BOOL)a8 hasPoorNetworkQuality:(BOOL)a9 hasModerateThermalPressure:(BOOL)a10 hasThermalPressure:(BOOL)a11 hasPoorSystemConditions:(BOOL)a12 isBudgetValid:(BOOL)a13 blockedReason:(int64_t)a14 unBlockedReason:(int64_t)a15
{
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __273__CPLStatus_setHasCellularBudget_hasBatteryBudget_hasLowBatteryLevel_isConstrainedNetwork_isBlockedByLowPowerMode_hasHeavyResourceUsage_hasPoorNetworkQuality_hasModerateThermalPressure_hasThermalPressure_hasPoorSystemConditions_isBudgetValid_blockedReason_unBlockedReason___block_invoke;
  block[3] = &unk_1E861C308;
  v17 = a13;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  block[4] = self;
  block[5] = a14;
  block[6] = a15;
  dispatch_sync(lock, block);
}

uint64_t __273__CPLStatus_setHasCellularBudget_hasBatteryBudget_hasLowBatteryLevel_isConstrainedNetwork_isBlockedByLowPowerMode_hasHeavyResourceUsage_hasPoorNetworkQuality_hasModerateThermalPressure_hasThermalPressure_hasPoorSystemConditions_isBudgetValid_blockedReason_unBlockedReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  [v2 _setObjectInStatus:v3 forKey:@"hasValidSystemBudgetKey"];

  if (*(a1 + 57) == 1)
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) _setObjectInStatus:v4 forKey:@"hasCellularBudgetKey"];
  if (*(a1 + 58) == 1)
  {
    v5 = MEMORY[0x1E695E118];
  }

  else
  {
    v5 = 0;
  }

  [*(a1 + 32) _setObjectInStatus:v5 forKey:@"hasBatteryBudgetKey"];
  if (*(a1 + 59) == 1)
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) _setObjectInStatus:v6 forKey:@"lowBatteryLevel"];
  if (*(a1 + 60) == 1)
  {
    v7 = MEMORY[0x1E695E118];
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 32) _setObjectInStatus:v7 forKey:@"constrainedNetwork"];
  if (*(a1 + 61) == 1)
  {
    v8 = MEMORY[0x1E695E118];
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 32) _setObjectInStatus:v8 forKey:@"isBlockedByLowPowerModeKey"];
  if (*(a1 + 62) == 1)
  {
    v9 = MEMORY[0x1E695E118];
  }

  else
  {
    v9 = 0;
  }

  [*(a1 + 32) _setObjectInStatus:v9 forKey:@"heavyResourceUsage"];
  if (*(a1 + 63) == 1)
  {
    v10 = MEMORY[0x1E695E118];
  }

  else
  {
    v10 = 0;
  }

  [*(a1 + 32) _setObjectInStatus:v10 forKey:@"poorNetworkQuality"];
  if (*(a1 + 64) == 1)
  {
    v11 = MEMORY[0x1E695E118];
  }

  else
  {
    v11 = 0;
  }

  [*(a1 + 32) _setObjectInStatus:v11 forKey:@"moderateThermalPressure"];
  if (*(a1 + 65) == 1)
  {
    v12 = MEMORY[0x1E695E118];
  }

  else
  {
    v12 = 0;
  }

  [*(a1 + 32) _setObjectInStatus:v12 forKey:@"thermalPressure"];
  if (*(a1 + 66) == 1)
  {
    v13 = MEMORY[0x1E695E118];
  }

  else
  {
    v13 = 0;
  }

  [*(a1 + 32) _setObjectInStatus:v13 forKey:@"poorSystemConditions"];
  v14 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v14 _setObjectInStatus:v15 forKey:@"blockedReason"];
  }

  else
  {
    [*(a1 + 32) _setObjectInStatus:0 forKey:@"blockedReason"];
  }

  v16 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v16 _setObjectInStatus:v17 forKey:@"unBlockedReason"];
  }

  else
  {
    [*(a1 + 32) _setObjectInStatus:0 forKey:@"unBlockedReason"];
  }

  v18 = *(a1 + 32);

  return [v18 _save];
}

- (id)statusDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6659;
  v10 = __Block_byref_object_dispose__6660;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CPLStatus_statusDescription__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __30__CPLStatus_statusDescription__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _loadIfNecessary];
  if ([*(*(a1 + 32) + 32) count])
  {
    v24 = [MEMORY[0x1E695DF00] date];
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = [*(*(a1 + 32) + 32) allKeys];
    v4 = [v3 sortedArrayUsingSelector:sel_compare_];

    obj = v4;
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (!v5)
    {
      goto LABEL_27;
    }

    v6 = v5;
    v7 = *v27;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v10 = [*(*(a1 + 32) + 32) objectForKey:v9];
        if ([v9 isEqualToString:@"accountFlags"])
        {
          v10 = v10;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [[CPLAccountFlags alloc] initWithData:v10];
            if (v11)
            {
              v12 = v11;
              v13 = [(CPLAccountFlags *)v11 dictionaryRepresentation];

              goto LABEL_15;
            }
          }

LABEL_14:
          v13 = v10;
          goto LABEL_15;
        }

        if ([v9 isEqualToString:@"cloudAssetCountPerType"])
        {
          v10 = v10;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_14;
          }

          v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v10, "count")}];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __valueForDictionaryOfCounts_block_invoke;
          v30[3] = &unk_1E861FF60;
          v13 = v14;
          v31 = v13;
          [v10 enumerateKeysAndObjectsUsingBlock:v30];

LABEL_15:
LABEL_16:

          v10 = v13;
          goto LABEL_17;
        }

        if (([v9 isEqualToString:@"accountEPPCapability"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"accountEPPCapabilityMaximum"))
        {
          v13 = +[CPLStatus descriptionForAccountEPPCapability:](CPLStatus, "descriptionForAccountEPPCapability:", [v10 integerValue]);
          goto LABEL_16;
        }

        if ([v9 isEqualToString:@"serverFeatureCompatibleVersion"])
        {
          v13 = +[CPLRecordChange descriptionForSupportedFeatureCompatibleVersion:](CPLRecordChange, "descriptionForSupportedFeatureCompatibleVersion:", [v10 integerValue]);

          v17 = MEMORY[0x1E696AEC0];
          v10 = +[CPLRecordChange descriptionForSupportedFeatureCompatibleVersion:](CPLRecordChange, "descriptionForSupportedFeatureCompatibleVersion:", [*(a1 + 32) clientFeatureCompatibleVersion]);
          v18 = [v17 stringWithFormat:@"clientFeatureCompatibleVersion = %@", v10];
          [v2 addObject:v18];

          goto LABEL_16;
        }

LABEL_17:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [CPLDateFormatter stringFromDateAgo:v10 now:v24];

          v10 = v15;
        }

        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %@", v9, v10];
        [v2 addObject:v16];

        ++v8;
      }

      while (v6 != v8);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      v6 = v19;
      if (!v19)
      {
LABEL_27:

        v20 = [v2 componentsJoinedByString:@"\n"];
        v21 = *(*(a1 + 40) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        break;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CPLStatus_setDelegate___block_invoke;
  block[3] = &unk_1E861B128;
  block[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_sync(lock, block);
}

void __25__CPLStatus_setDelegate___block_invoke(uint64_t *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (*(v2 + 48))
  {
    v3 = a1[5];
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((v2 + 64));

      if (v3 != WeakRetained)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v12 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = a1[4];
            v14 = a1[5];
            v15 = NSStringFromProtocol(*(v13 + 48));
            if (*(a1[4] + 56))
            {
              v16 = *(a1[4] + 56);
            }

            else
            {
              v16 = 0;
            }

            v17 = NSStringFromSelector(v16);
            *buf = 138413058;
            v28 = v14;
            v29 = 2112;
            v30 = v13;
            v31 = 2112;
            v32 = v15;
            v33 = 2112;
            v34 = v17;
            _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Tried to set delegate %@ on protected %@ - status changes should be observed through [%@ %@]", buf, 0x2Au);
          }
        }

        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = a1[6];
        v20 = a1[4];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLStatus.m"];
        v23 = a1[4];
        v22 = a1[5];
        v24 = NSStringFromProtocol(*(v23 + 48));
        if (*(a1[4] + 56))
        {
          v25 = *(a1[4] + 56);
        }

        else
        {
          v25 = 0;
        }

        v26 = NSStringFromSelector(v25);
        [v18 handleFailureInMethod:v19 object:v20 file:v21 lineNumber:847 description:{@"Tried to set delegate %@ on protected %@ - status changes should be observed through -[%@ %@]", v22, v23, v24, v26}];

        abort();
      }
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1[4], _CPLStatusDidChangeNotification, 0);
  objc_storeWeak((a1[4] + 64), a1[5]);
  v6 = objc_loadWeakRetained((a1[4] + 64));

  if (v6)
  {
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, a1[4], _statusDidChange, _CPLStatusDidChangeNotification, 0, 1026);
    v8 = a1[4];
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;
    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];
  }
}

- (void)_statusDidChange
{
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__CPLStatus__statusDidChange__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_6711;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = lock;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __29__CPLStatus__statusDidChange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  if (!WeakRetained)
  {
    WeakRetained = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__CPLStatus__statusDidChange__block_invoke_2;
  v9[3] = &unk_1E861A940;
  v9[4] = *(a1 + 32);
  v6 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_6711;
  block[3] = &unk_1E861B4E0;
  v11 = v6;
  v7 = WeakRetained;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v8);
}

void __29__CPLStatus__statusDidChange__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained statusDidChange:*(a1 + 32)];
}

- (NSDate)cloudAssetCountPerTypeLastCheckDate
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6659;
  v13 = __Block_byref_object_dispose__6660;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__CPLStatus_cloudAssetCountPerTypeLastCheckDate__block_invoke;
  v8[3] = &unk_1E861F818;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(lock, v8);
  v3 = v10[5];
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF00] distantPast];
    v5 = v10[5];
    v10[5] = v4;

    v3 = v10[5];
  }

  v6 = v3;
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __48__CPLStatus_cloudAssetCountPerTypeLastCheckDate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"cloudAssetCountPerTypeLastCheckDate"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setCloudAssetCountPerType:(id)a3 updateCheckDate:(BOOL)a4
{
  v6 = [a3 copy];
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CPLStatus_setCloudAssetCountPerType_updateCheckDate___block_invoke;
  block[3] = &unk_1E861F360;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(lock, block);
}

void __55__CPLStatus_setCloudAssetCountPerType_updateCheckDate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"cloudAssetCountPerType"];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v8 = v2;
  if (v4)
  {
    if (v2 | v3)
    {
LABEL_10:
      [*(a1 + 32) _setObjectInStatus:v3 forKey:@"cloudAssetCountPerType"];
      [*(a1 + 32) _save];
    }
  }

  else
  {
    v5 = [v2 isEqual:?];
    if ((v5 & 1) == 0)
    {
      v3 = *(a1 + 40);
      goto LABEL_10;
    }
  }

  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E695DF00] date];
    [v6 _setObjectInStatus:v7 forKey:@"cloudAssetCountPerTypeLastCheckDate"];
  }
}

- (NSDictionary)cloudAssetCountPerType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6659;
  v10 = __Block_byref_object_dispose__6660;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CPLStatus_cloudAssetCountPerType__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __35__CPLStatus_cloudAssetCountPerType__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"cloudAssetCountPerType"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setServerFeatureCompatibleVersion:(int64_t)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__CPLStatus_setServerFeatureCompatibleVersion___block_invoke;
  v4[3] = &unk_1E861B100;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(lock, v4);
}

void __47__CPLStatus_setServerFeatureCompatibleVersion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"serverFeatureCompatibleVersion"];
  v3 = [v2 integerValue];

  v4 = *(a1 + 40);
  if (v3 != v4)
  {
    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [v5 _setObjectInStatus:v6 forKey:@"serverFeatureCompatibleVersion"];
    }

    else
    {
      [*(a1 + 32) _setObjectInStatus:0 forKey:@"serverFeatureCompatibleVersion"];
    }

    v7 = *(a1 + 32);

    [v7 _save];
  }
}

- (int64_t)serverFeatureCompatibleVersion
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 integerForKey:@"CPLSimulatedServerFeatureCompatibleVersion"];

  v12 = v4;
  v5 = v10[3];
  if (v5 <= 0)
  {
    lock = self->_lock;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__CPLStatus_serverFeatureCompatibleVersion__block_invoke;
    v8[3] = &unk_1E861F818;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(lock, v8);
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

void __43__CPLStatus_serverFeatureCompatibleVersion__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"serverFeatureCompatibleVersion"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue];
}

- (void)setUpgradeSuggestedToAccessAllPhotos:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__CPLStatus_setUpgradeSuggestedToAccessAllPhotos___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

uint64_t __50__CPLStatus_setUpgradeSuggestedToAccessAllPhotos___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"upgradeSuggestedToAccessAllPhotos"];
  v3 = v2;
  if ((*(a1 + 40) & 1) == 0 && v2)
  {
    v7 = v2;
    v4 = *(a1 + 32);
    v5 = 0;
LABEL_4:
    [v4 _setObjectInStatus:v5 forKey:@"upgradeSuggestedToAccessAllPhotos"];
    v2 = [*(a1 + 32) _save];
    v3 = v7;
    goto LABEL_7;
  }

  if (*(a1 + 40))
  {
    v7 = v2;
    v2 = [v2 BOOLValue];
    v3 = v7;
    if ((v2 & 1) == 0)
    {
      v4 = *(a1 + 32);
      v5 = MEMORY[0x1E695E118];
      goto LABEL_4;
    }
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (BOOL)isUpgradeSuggestedToAccessAllPhotos
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CPLStatus_isUpgradeSuggestedToAccessAllPhotos__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __48__CPLStatus_isUpgradeSuggestedToAccessAllPhotos__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"upgradeSuggestedToAccessAllPhotos"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setKeychainCDPEnabled:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__CPLStatus_setKeychainCDPEnabled___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

void __35__CPLStatus_setKeychainCDPEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"keychainCDPEnabled"];
  v7 = v2;
  if (!v2)
  {
    LOBYTE(v4) = *(a1 + 40);
    goto LABEL_5;
  }

  v3 = [v2 BOOLValue];
  v4 = *(a1 + 40);
  if (v4 != v3)
  {
LABEL_5:
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v4 & 1];
    [v5 _setObjectInStatus:v6 forKey:@"keychainCDPEnabled"];

    [*(a1 + 32) _save];
  }
}

- (BOOL)isKeychainCDPEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CPLStatus_isKeychainCDPEnabled__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __33__CPLStatus_isKeychainCDPEnabled__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"keychainCDPEnabled"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setWalrusEnabled:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__CPLStatus_setWalrusEnabled___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

void __30__CPLStatus_setWalrusEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"walrusEnabled"];
  v3 = [v2 BOOLValue];

  if (*(a1 + 40) != v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [v4 _setObjectInStatus:v5 forKey:@"walrusEnabled"];

    v6 = *(a1 + 32);

    [v6 _save];
  }
}

- (BOOL)isWalrusEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__CPLStatus_isWalrusEnabled__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __28__CPLStatus_isWalrusEnabled__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"walrusEnabled"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setIsStuckInExitForSharedLibrary:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CPLStatus_setIsStuckInExitForSharedLibrary___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

void __46__CPLStatus_setIsStuckInExitForSharedLibrary___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"isStuckInExitForSharedLibrary"];
  v3 = [v2 BOOLValue];

  if (*(a1 + 40) != v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [v4 _setObjectInStatus:v5 forKey:@"isStuckInExitForSharedLibrary"];

    v6 = *(a1 + 32);

    [v6 _save];
  }
}

- (BOOL)isStuckInExitForSharedLibrary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CPLStatus_isStuckInExitForSharedLibrary__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __42__CPLStatus_isStuckInExitForSharedLibrary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"isStuckInExitForSharedLibrary"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setICloudLibraryClientIsNotAuthenticated:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__CPLStatus_setICloudLibraryClientIsNotAuthenticated___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

void __54__CPLStatus_setICloudLibraryClientIsNotAuthenticated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"iCloudLibraryClientIsNotAuthenticated"];
  v3 = [v2 BOOLValue];

  if (*(a1 + 40) != v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [v4 _setObjectInStatus:v5 forKey:@"iCloudLibraryClientIsNotAuthenticated"];

    v6 = *(a1 + 32);

    [v6 _save];
  }
}

- (BOOL)iCloudLibraryClientIsNotAuthenticated
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__CPLStatus_iCloudLibraryClientIsNotAuthenticated__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __50__CPLStatus_iCloudLibraryClientIsNotAuthenticated__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"iCloudLibraryClientIsNotAuthenticated"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setICloudLibraryClientVersionTooOld:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__CPLStatus_setICloudLibraryClientVersionTooOld___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

void __49__CPLStatus_setICloudLibraryClientVersionTooOld___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"iCloudLibraryClientVersionTooOld"];
  v3 = [v2 BOOLValue];

  if (*(a1 + 40) != v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [v4 _setObjectInStatus:v5 forKey:@"iCloudLibraryClientVersionTooOld"];

    v6 = *(a1 + 32);

    [v6 _save];
  }
}

- (BOOL)iCloudLibraryClientVersionTooOld
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__CPLStatus_iCloudLibraryClientVersionTooOld__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __45__CPLStatus_iCloudLibraryClientVersionTooOld__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"iCloudLibraryClientVersionTooOld"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setContainerHasBeenWiped:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__CPLStatus_setContainerHasBeenWiped___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

void __38__CPLStatus_setContainerHasBeenWiped___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"containerHasBeenWiped"];
  v3 = [v2 BOOLValue];

  if (*(a1 + 40) != v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [v4 _setObjectInStatus:v5 forKey:@"containerHasBeenWiped"];

    v6 = *(a1 + 32);

    [v6 _save];
  }
}

- (BOOL)containerHasBeenWiped
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__CPLStatus_containerHasBeenWiped__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __34__CPLStatus_containerHasBeenWiped__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"containerHasBeenWiped"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setICloudLibraryExists:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__CPLStatus_setICloudLibraryExists___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

void __36__CPLStatus_setICloudLibraryExists___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"iCloudLibraryExists"];
  v3 = [v2 BOOLValue];

  if (*(a1 + 40) != v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [v4 _setObjectInStatus:v5 forKey:@"iCloudLibraryExists"];

    v6 = *(a1 + 32);

    [v6 _save];
  }
}

- (BOOL)iCloudLibraryExists
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__CPLStatus_iCloudLibraryExists__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __32__CPLStatus_iCloudLibraryExists__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"iCloudLibraryExists"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setICloudLibraryHasBeenWiped:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__CPLStatus_setICloudLibraryHasBeenWiped___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

void __42__CPLStatus_setICloudLibraryHasBeenWiped___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"iCloudLibraryHasBeenWiped"];
  v3 = [v2 BOOLValue];

  if (*(a1 + 40) != v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [v4 _setObjectInStatus:v5 forKey:@"iCloudLibraryHasBeenWiped"];

    v6 = *(a1 + 32);

    [v6 _save];
  }
}

- (BOOL)iCloudLibraryHasBeenWiped
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__CPLStatus_iCloudLibraryHasBeenWiped__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __38__CPLStatus_iCloudLibraryHasBeenWiped__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"iCloudLibraryHasBeenWiped"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setExitDeleteTime:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__CPLStatus_setExitDeleteTime___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

void __31__CPLStatus_setExitDeleteTime___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"exitDeleteTime"];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v2;
  if (v4)
  {
    if (v2 | v3)
    {
LABEL_10:
      [*(a1 + 32) _setObjectInStatus:v3 forKey:@"exitDeleteTime"];
      [*(a1 + 32) _save];
    }
  }

  else
  {
    v5 = [v2 isEqual:?];
    if ((v5 & 1) == 0)
    {
      v3 = *(a1 + 40);
      goto LABEL_10;
    }
  }
}

- (NSDate)exitDeleteTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6659;
  v10 = __Block_byref_object_dispose__6660;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__CPLStatus_exitDeleteTime__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __27__CPLStatus_exitDeleteTime__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"exitDeleteTime"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setBusyState:(int64_t)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__CPLStatus_setBusyState___block_invoke;
  v4[3] = &unk_1E861B100;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(lock, v4);
}

void __26__CPLStatus_setBusyState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"busyState"];
  v7 = v2;
  if (*(a1 + 40))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v4 = v7 != 0;
    v5 = v3 != 0;
    if (v7)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      if ([v7 isEqual:v3])
      {
        goto LABEL_12;
      }

LABEL_11:
      [*(a1 + 32) _setObjectInStatus:v3 forKey:@"busyState"];
      [*(a1 + 32) _save];
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v4 = v2 != 0;
  }

  if (v4 || v5)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (int64_t)busyState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__CPLStatus_busyState__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __22__CPLStatus_busyState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"busyState"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue];
}

- (void)setEstimatedCountOfRemainingRecordsDuringSharedLibraryExit:(unint64_t)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__CPLStatus_setEstimatedCountOfRemainingRecordsDuringSharedLibraryExit___block_invoke;
  v4[3] = &unk_1E861B100;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(lock, v4);
}

void __72__CPLStatus_setEstimatedCountOfRemainingRecordsDuringSharedLibraryExit___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"remainingCountInSharedLibraryExit"];
  v7 = v2;
  if (*(a1 + 40))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v4 = v7 != 0;
    v5 = v3 != 0;
    if (v7)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      if ([v7 isEqual:v3])
      {
        goto LABEL_12;
      }

LABEL_11:
      [*(a1 + 32) _setObjectInStatus:v3 forKey:@"remainingCountInSharedLibraryExit"];
      [*(a1 + 32) _save];
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v4 = v2 != 0;
  }

  if (v4 || v5)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (unint64_t)estimatedCountOfRemainingRecordsDuringSharedLibraryExit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__CPLStatus_estimatedCountOfRemainingRecordsDuringSharedLibraryExit__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __68__CPLStatus_estimatedCountOfRemainingRecordsDuringSharedLibraryExit__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"remainingCountInSharedLibraryExit"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 unsignedIntegerValue];
}

- (void)setIsExceedingSharedLibraryQuota:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CPLStatus_setIsExceedingSharedLibraryQuota___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

void __46__CPLStatus_setIsExceedingSharedLibraryQuota___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"isExceedingSharedLibraryQuota"];
  v3 = [v2 BOOLValue];

  if (*(a1 + 40) != v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [v4 _setObjectInStatus:v5 forKey:@"isExceedingSharedLibraryQuota"];

    v6 = *(a1 + 32);

    [v6 _save];
  }
}

- (BOOL)isExceedingSharedLibraryQuota
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CPLStatus_isExceedingSharedLibraryQuota__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __42__CPLStatus_isExceedingSharedLibraryQuota__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"isExceedingSharedLibraryQuota"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setIsExceedingQuota:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__CPLStatus_setIsExceedingQuota___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

void __33__CPLStatus_setIsExceedingQuota___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"isExceedingQuota"];
  v3 = [v2 BOOLValue];

  if (*(a1 + 40) != v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [v4 _setObjectInStatus:v5 forKey:@"isExceedingQuota"];

    v6 = *(a1 + 32);

    [v6 _save];
  }
}

- (BOOL)isExceedingQuota
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__CPLStatus_isExceedingQuota__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __29__CPLStatus_isExceedingQuota__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"isExceedingQuota"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

- (void)setHasChangesToProcess:(BOOL)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__CPLStatus_setHasChangesToProcess___block_invoke;
  v4[3] = &unk_1E861F7F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(lock, v4);
}

void __36__CPLStatus_setHasChangesToProcess___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"hasChangesToProcess"];
  v3 = [v2 BOOLValue];

  if (*(a1 + 40) != v3)
  {
    v4 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v4 _setObjectInStatus:v5 forKey:@"hasChangesToProcess"];
    }

    else
    {
      [*(a1 + 32) _setObjectInStatus:0 forKey:@"hasChangesToProcess"];
    }

    v6 = *(a1 + 32);

    [v6 _save];
  }
}

- (void)setInitialDownloadDate:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CPLStatus_setInitialDownloadDate___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

uint64_t __36__CPLStatus_setInitialDownloadDate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  [*(a1 + 32) _setObjectInStatus:*(a1 + 40) forKey:@"initialDownloadDate"];
  v2 = *(a1 + 32);

  return [v2 _save];
}

- (NSDate)initialDownloadDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6659;
  v10 = __Block_byref_object_dispose__6660;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__CPLStatus_initialDownloadDate__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__CPLStatus_initialDownloadDate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"initialDownloadDate"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"initialSyncDate"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    MEMORY[0x1EEE66BB8](v5, v7);
  }
}

- (void)setInitialSyncDate:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CPLStatus_setInitialSyncDate___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

uint64_t __32__CPLStatus_setInitialSyncDate___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _loadIfNecessary];
  v2 = *(a1 + 40);
  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLStatusOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [CPLDateFormatter stringFromDate:*(a1 + 40)];
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Storing initial sync date %@ in status", &v8, 0xCu);
      }

      v2 = *(a1 + 40);
    }

    [*(a1 + 32) _setObjectInStatus:v2 forKey:@"initialSyncDate"];
    [*(a1 + 32) _writeInitialSyncMarkerForDate:*(a1 + 40) error:0];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLStatusOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Dropping initial sync date in status", &v8, 2u);
      }
    }

    [*(a1 + 32) _setObjectInStatus:0 forKey:@"initialSyncDate"];
    [*(a1 + 32) _deleteInitialSyncMarkerWithError:0];
  }

  result = [*(a1 + 32) _save];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSDate)initialSyncDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6659;
  v10 = __Block_byref_object_dispose__6660;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__CPLStatus_initialSyncDate__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __28__CPLStatus_initialSyncDate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"initialSyncDate"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (BOOL)hasFinishedInitialDownload
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__CPLStatus_hasFinishedInitialDownload__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__CPLStatus_hasFinishedInitialDownload__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"initialDownloadDate"];
  if (!v2)
  {
    v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"initialSyncDate"];
  }

  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (void)setLastPruneDate:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__CPLStatus_setLastPruneDate___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

uint64_t __30__CPLStatus_setLastPruneDate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  [*(a1 + 32) _setObjectInStatus:*(a1 + 40) forKey:@"lastPruneDate"];
  v2 = *(a1 + 32);

  return [v2 _save];
}

- (NSDate)lastPruneDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6659;
  v10 = __Block_byref_object_dispose__6660;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__CPLStatus_lastPruneDate__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __26__CPLStatus_lastPruneDate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"lastPruneDate"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setLastCompletePrefetchDate:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CPLStatus_setLastCompletePrefetchDate___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

uint64_t __41__CPLStatus_setLastCompletePrefetchDate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  [*(a1 + 32) _setObjectInStatus:*(a1 + 40) forKey:@"lastCompletePrefetchDate"];
  v2 = *(a1 + 32);

  return [v2 _save];
}

- (NSDate)lastCompletePrefetchDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6659;
  v10 = __Block_byref_object_dispose__6660;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CPLStatus_lastCompletePrefetchDate__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __37__CPLStatus_lastCompletePrefetchDate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"lastCompletePrefetchDate"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setLastSuccessfulSyncDate:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CPLStatus_setLastSuccessfulSyncDate___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(lock, v7);
}

uint64_t __39__CPLStatus_setLastSuccessfulSyncDate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  [*(a1 + 32) _setObjectInStatus:*(a1 + 40) forKey:@"lastSyncDate"];
  v2 = *(a1 + 32);

  return [v2 _save];
}

- (NSDate)lastSuccessfulSyncDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6659;
  v10 = __Block_byref_object_dispose__6660;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CPLStatus_lastSuccessfulSyncDate__block_invoke;
  v5[3] = &unk_1E861F818;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __35__CPLStatus_lastSuccessfulSyncDate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"lastSyncDate"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)refetchFromDisk
{
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__CPLStatus_refetchFromDisk__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_6711;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = lock;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __28__CPLStatus_refetchFromDisk__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (void)checkInitialSyncMarker
{
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CPLStatus_checkInitialSyncMarker__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_sync(lock, block);
}

void __35__CPLStatus_checkInitialSyncMarker__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"initialSyncDate"];
  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"exitDeleteTime"];
  v4 = [*(*(a1 + 32) + 24) URLByDeletingLastPathComponent];
  v5 = [v4 URLByAppendingPathComponent:@"initialsync_marker"];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 cplFileExistsAtURL:v5];

  if (v2)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if ((v7 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLStatusOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [v5 path];
          *buf = 138412290;
          v27 = v13;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Writing initial sync marker at %@ because initial sync date is set", buf, 0xCu);
        }
      }

      v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v14 setDateFormat:@"yyyy-MM-dd HH.mm.ss.SSS"];
      v15 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
      [v14 setLocale:v15];

      v16 = [v14 stringFromDate:v2];
      v24 = 0;
      v17 = [v16 writeToURL:v5 atomically:1 encoding:4 error:&v24];
      v18 = v24;

      if (v17 & 1) != 0 || (_CPLSilentLogging)
      {
        goto LABEL_29;
      }

      v19 = __CPLStatusOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v5 path];
        *buf = 138412546;
        v27 = v20;
        v28 = 2112;
        v29 = v18;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "Failed to write initial sync marker at %@: %@", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else if (v7)
  {
    if (v2)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_24;
      }

      v9 = __CPLStatusOSLogDomain();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v10 = [v5 path];
      *buf = 138412290;
      v27 = v10;
      v11 = "Removing initial sync marker at %@ because we are in exit mode";
    }

    else
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_24;
      }

      v9 = __CPLStatusOSLogDomain();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

LABEL_24:
        v21 = [MEMORY[0x1E696AC08] defaultManager];
        v25 = 0;
        v22 = [v21 removeItemAtURL:v5 error:&v25];
        v14 = v25;

        if (v22 & 1) != 0 || (_CPLSilentLogging)
        {
          goto LABEL_30;
        }

        v18 = __CPLStatusOSLogDomain();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
LABEL_29:

LABEL_30:
          goto LABEL_31;
        }

        v19 = [v5 path];
        *buf = 138412546;
        v27 = v19;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Failed to delete initial sync marker at %@: %@", buf, 0x16u);
LABEL_28:

        goto LABEL_29;
      }

      v10 = [v5 path];
      *buf = 138412290;
      v27 = v10;
      v11 = "Removing initial sync marker at %@ because initial sync date is not set";
    }

    _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);

    goto LABEL_23;
  }

LABEL_31:

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)_deleteInitialSyncMarkerWithError:(id *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(NSURL *)self->_statusFileURL URLByDeletingLastPathComponent];
  v5 = [v4 URLByAppendingPathComponent:@"initialsync_marker"];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 cplFileExistsAtURL:v5];

  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLStatusOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 path];
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Removing initial sync marker at %@", &v14, 0xCu);
      }
    }

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v10 removeItemAtURL:v5 error:a3];
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)writeInitialSyncMarker:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6659;
  v12 = __Block_byref_object_dispose__6660;
  v13 = 0;
  lock = self->_lock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CPLStatus_writeInitialSyncMarker___block_invoke;
  block[3] = &unk_1E8620288;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(lock, block);
  v5 = *(v15 + 24);
  if (a3 && (v15[3] & 1) == 0)
  {
    *a3 = v9[5];
    v5 = *(v15 + 24);
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5 & 1;
}

void __36__CPLStatus_writeInitialSyncMarker___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadIfNecessary];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:@"initialSyncDate"];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 48) + 8);
    obj = *(v4 + 40);
    v5 = [v3 _writeInitialSyncMarkerForDate:v2 error:&obj];
    objc_storeStrong((v4 + 40), obj);
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }
}

- (BOOL)_writeInitialSyncMarkerForDate:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_status objectForKeyedSubscript:@"exitDeleteTime"];
  if (v7)
  {
    if (_CPLSilentLogging)
    {
      v12 = 1;
      goto LABEL_8;
    }

    v8 = __CPLStatusOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Not writing initial sync marker because the engine is in exit mode", buf, 2u);
    }
  }

  else
  {
    v9 = [(NSURL *)self->_statusFileURL URLByDeletingLastPathComponent];
    v8 = [v9 URLByAppendingPathComponent:@"initialsync_marker"];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v10 cplFileExistsAtURL:v8];

    if ((v11 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLStatusOSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v8 path];
          *buf = 138412290;
          v26 = v16;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_DEFAULT, "Writing initial sync marker at %@", buf, 0xCu);
        }
      }

      v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v17 setDateFormat:@"yyyy-MM-dd HH.mm.ss.SSS"];
      v18 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
      [v17 setLocale:v18];

      v19 = [v17 stringFromDate:v6];
      v24 = 0;
      v12 = [v19 writeToURL:v8 atomically:1 encoding:4 error:&v24];
      v20 = v24;

      if ((v12 & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v21 = __CPLStatusOSLogDomain();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [v8 path];
            *buf = 138412546;
            v26 = v22;
            v27 = 2112;
            v28 = v20;
            _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_ERROR, "Failed to write initial sync marker at %@: %@", buf, 0x16u);
          }
        }

        if (a4)
        {
          v23 = v20;
          *a4 = v20;
        }
      }

      goto LABEL_7;
    }
  }

  v12 = 1;
LABEL_7:

LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)_save
{
  v29 = *MEMORY[0x1E69E9840];
  changedKeys = self->_changedKeys;
  if (changedKeys)
  {
    status = self->_status;
    if (status)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLStatusOSLogDomain();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [(CPLStatus *)self _statusClient];
          v7 = [(NSMutableSet *)self->_changedKeys allObjects];
          v8 = [v7 componentsJoinedByString:{@", "}];
          v9 = [(NSURL *)self->_statusFileURL path];
          v10 = self->_status;
          *buf = 138413314;
          v20 = v6;
          v21 = 2048;
          v22 = self;
          v23 = 2114;
          v24 = v8;
          v25 = 2112;
          v26 = v9;
          v27 = 2112;
          v28 = v10;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "%@ saving CPLStatus %p (changed keys: %{public}@) to %@: %@", buf, 0x34u);
        }

        status = self->_status;
      }

      statusFileURL = self->_statusFileURL;
      v18 = 0;
      v12 = [(NSMutableDictionary *)status writeToURL:statusFileURL error:&v18];
      v13 = v18;
      if ((v12 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLStatusOSLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = self->_statusFileURL;
          *buf = 134218498;
          v20 = v15;
          v21 = 2112;
          v22 = self;
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Failed to save CPLStatus %p to %@: %@", buf, 0x20u);
        }
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, _CPLStatusDidChangeNotification, 0, 0, 0);

      changedKeys = self->_changedKeys;
    }

    self->_changedKeys = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_statusClient
{
  if (self->_forCPL)
  {
    v2 = @"Engine";
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_class();
      NSStringFromClass(v6);
    }

    else
    {
      v5 = [MEMORY[0x1E696AE30] processInfo];
      [v5 processName];
    }
    v2 = ;
  }

  return v2;
}

- (void)_setObjectInStatus:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_status objectForKeyedSubscript:v6];
  v8 = v7;
  if (v13 && v7)
  {
    if ([v7 isEqual:v13])
    {
      goto LABEL_11;
    }
  }

  else if (!(v13 | v7))
  {
    goto LABEL_11;
  }

  changedKeys = self->_changedKeys;
  if (!changedKeys)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = self->_changedKeys;
    self->_changedKeys = v10;

    changedKeys = self->_changedKeys;
  }

  [(NSMutableSet *)changedKeys addObject:v6];
  status = self->_status;
  if (v13)
  {
    [(NSMutableDictionary *)status setObject:v13 forKeyedSubscript:v6];
  }

  else
  {
    [(NSMutableDictionary *)status removeObjectForKey:v6];
  }

LABEL_11:
}

- (CPLStatus)initWithClientLibraryBaseURLForCPLEngine:(id)a3
{
  result = [(CPLStatus *)self initWithClientLibraryBaseURL:a3];
  if (result)
  {
    result->_forCPL = 1;
  }

  return result;
}

- (CPLStatus)initWithClientLibraryBaseURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLStatus;
  v5 = [(CPLStatus *)&v11 init];
  if (v5)
  {
    v6 = [v4 URLByAppendingPathComponent:@"syncstatus.plist"];
    statusFileURL = v5->_statusFileURL;
    v5->_statusFileURL = v6;

    v8 = dispatch_queue_create("com.apple.cpl.status", 0);
    lock = v5->_lock;
    v5->_lock = v8;
  }

  return v5;
}

+ (id)descriptionForAccountEPPCapability:(int64_t)a3
{
  if (a3 >= 4)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", a3];
  }

  else
  {
    v3 = off_1E861C378[a3];
  }

  return v3;
}

@end