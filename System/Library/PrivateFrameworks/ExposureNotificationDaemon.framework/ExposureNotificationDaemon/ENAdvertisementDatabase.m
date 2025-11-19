@interface ENAdvertisementDatabase
+ (BOOL)purgeAllStoresInPath:(id)a3;
- (BOOL)cloneDatabaseTo:(id)a3;
- (BOOL)flushCache;
- (BOOL)mergeStores:(id)a3;
- (BOOL)mergeStoresFromFolderPath:(id)a3;
- (BOOL)mergeTemporaryStores;
- (BOOL)openCentralStoreAndReturnError:(id *)a3;
- (BOOL)openStoreAndReturnError:(id *)a3;
- (BOOL)openTemporaryStore;
- (BOOL)purgeAdvertismentsOlderThan:(double)a3;
- (BOOL)purgeAdvertismentsSeenBeforeDate:(id)a3;
- (BOOL)purgeAllStoresInActiveDatabasePath;
- (BOOL)saveContactTracingAdvertisement:(id)a3;
- (BOOL)switchToCentralStore;
- (ENAdvertisementDatabase)initWithDatabaseFolderPath:(id)a3 cacheCount:(unint64_t)a4 errorMetricReporter:(id)a5;
- (NSNumber)storedAdvertisementCount;
- (id)advertisementsBufferMatchingDailyKeys:(id)a3 attenuationThreshold:(unsigned __int8)a4 timestampTolerance:(double)a5;
- (id)beaconCountMetricsWithStartDate:(id)a3 endDate:(id)a4 windowDuration:(double)a5;
- (id)currentStore;
- (id)matchingAdvertisementBufferForRPIBuffer:(id)a3 exposureKeys:(id)a4;
- (uint64_t)displayStorageFullAlert;
- (uint64_t)flushCache;
- (unsigned)cacheRecordCount;
- (void)closeAllStores;
- (void)dealloc;
- (void)displayStorageFullAlert;
- (void)reportStoreError:(id)a3;
@end

@implementation ENAdvertisementDatabase

- (ENAdvertisementDatabase)initWithDatabaseFolderPath:(id)a3 cacheCount:(unint64_t)a4 errorMetricReporter:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase initWithDatabaseFolderPath:? cacheCount:? errorMetricReporter:?];
  }

  v17.receiver = self;
  v17.super_class = ENAdvertisementDatabase;
  v11 = [(ENAdvertisementDatabase *)&v17 init];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = MEMORY[0x24C214430](v10);
  errorMetricReporter = v11->_errorMetricReporter;
  v11->_errorMetricReporter = v12;

  objc_storeStrong(&v11->_databaseFolderPath, a3);
  v11->_advertisementInsertionCacheCount = v6;
  v11->_advertisementInsertionIndex = 0;
  v11->_storageFullAlertInterval = 60.0;
  v11->_previousStoreFullAlertTimestamp = 0;
  v11->_currentStoreType = 2;
  v14 = malloc_type_malloc(40 * v6, 0x10000400A747E1EuLL);
  v11->_advertisementInsertionCache = v14;
  if (v14)
  {
    [(ENAdvertisementDatabase *)v11 openStoreAndReturnError:0];
LABEL_7:
    v15 = v11;
    goto LABEL_12;
  }

  if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase initWithDatabaseFolderPath:cacheCount:errorMetricReporter:];
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (void)dealloc
{
  free(self->_advertisementInsertionCache);
  v3.receiver = self;
  v3.super_class = ENAdvertisementDatabase;
  [(ENAdvertisementDatabase *)&v3 dealloc];
}

- (void)reportStoreError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:@"ENAdvertisementStoreErrorDomain"];

    v4 = v8;
    if (v6)
    {
      v7 = [v8 code] - 1;
      v4 = v8;
      if (v7 <= 6 && ((0x47u >> v7) & 1) != 0)
      {
        [(ENAdvertisementDatabase *)self reportErrorMetric:dword_24A28C0A8[v7]];
        v4 = v8;
      }
    }
  }
}

- (BOOL)openStoreAndReturnError:(id *)a3
{
  if ([(ENAdvertisementDatabase *)self openCentralStoreAndReturnError:a3])
  {
    [(ENAdvertisementDatabase *)self mergeTemporaryStores];
    return 1;
  }

  if ([(ENAdvertisementDatabase *)self openTemporaryStore])
  {
    return 1;
  }

  if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase openStoreAndReturnError:?];
  }

  self->_currentStoreType = 2;
  [(ENAdvertisementDatabase *)self reportErrorMetric:1003];
  return 0;
}

- (BOOL)openCentralStoreAndReturnError:(id *)a3
{
  if (self->_centralStore)
  {
    return 1;
  }

  v5 = [ENAdvertisementSQLiteStore centralStoreInFolderPath:self->_databaseFolderPath error:a3];
  centralStore = self->_centralStore;
  self->_centralStore = v5;

  if (!self->_centralStore)
  {
    return 0;
  }

  temporaryStore = self->_temporaryStore;
  self->_temporaryStore = 0;

  result = 1;
  self->_currentStoreType = 1;
  return result;
}

- (BOOL)openTemporaryStore
{
  if (self->_centralStore || self->_temporaryStore)
  {
    return 0;
  }

  databaseFolderPath = self->_databaseFolderPath;
  v10 = 0;
  v6 = [ENAdvertisementSQLiteStore temporaryStoreInFolderPath:databaseFolderPath error:&v10];
  v7 = v10;
  temporaryStore = self->_temporaryStore;
  self->_temporaryStore = v6;

  v9 = self->_temporaryStore;
  v3 = v9 != 0;
  if (v9)
  {
    self->_currentStoreType = 0;
  }

  else
  {
    [(ENAdvertisementDatabase *)self reportStoreError:v7];
  }

  return v3;
}

- (BOOL)switchToCentralStore
{
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [(ENAdvertisementDatabase *)self switchToCentralStore];
  }

  if (self->_centralStore)
  {
    return 0;
  }

  return [(ENAdvertisementDatabase *)self openCentralStoreAndReturnError:0];
}

- (BOOL)mergeStores:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    v9 = 1;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        v11 = v7;
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        centralStore = self->_centralStore;
        v17 = v7;
        v14 = [(ENAdvertisementSQLiteStore *)centralStore importContentsOfStore:v12 error:&v17];
        v7 = v17;

        if (v14)
        {
          v9 &= [v12 purgeAndRemoveFromDisk:1];
        }

        else
        {
          [(ENAdvertisementDatabase *)self reportStoreError:v7];
          if ([v7 code] == 4)
          {
            [(ENAdvertisementDatabase *)self closeAllStores];
          }

          else if ([v7 code] == 3)
          {
            [(ENAdvertisementSQLiteStore *)self->_centralStore purgeAndRemoveFromDisk:0];
            [(ENAdvertisementDatabase *)self closeAllStores];
            LOBYTE(v9) = 0;
            goto LABEL_16;
          }

          v9 = 0;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)mergeTemporaryStores
{
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [(ENAdvertisementDatabase *)self mergeTemporaryStores];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  databaseFolderPath = self->_databaseFolderPath;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__ENAdvertisementDatabase_mergeTemporaryStores__block_invoke;
  v6[3] = &unk_278FD31B8;
  v6[4] = self;
  v6[5] = &v7;
  [ENAdvertisementSQLiteStore enumerateTemporaryStoresInFolderPath:databaseFolderPath handler:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __47__ENAdvertisementDatabase_mergeTemporaryStores__block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = v3;
  v5 = [MEMORY[0x277CBEA68] arrayWithObjects:v7 count:1];
  LOBYTE(v4) = [v4 mergeStores:v5];

  if ((v4 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)mergeStoresFromFolderPath:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([ENAdvertisementSQLiteStore storesPresentInFolderPath:v4])
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [(ENAdvertisementDatabase *)v4 mergeStoresFromFolderPath:?];
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v6 = [ENAdvertisementSQLiteStore centralStoreInFolderPath:v4 error:0];
    v7 = v6;
    if (v6)
    {
      v20[0] = v6;
      v8 = [MEMORY[0x277CBEA68] arrayWithObjects:v20 count:1];
      v9 = [(ENAdvertisementDatabase *)self mergeStores:v8];

      if (!v9)
      {
        if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
        {
          v10 = v4;
          [v4 UTF8String];
          LogPrintF_safe();
        }

        *(v17 + 24) = 0;
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__ENAdvertisementDatabase_mergeStoresFromFolderPath___block_invoke;
    v13[3] = &unk_278FD31E0;
    v13[4] = self;
    v14 = v4;
    v15 = &v16;
    [ENAdvertisementSQLiteStore enumerateTemporaryStoresInFolderPath:v14 handler:v13];
    v5 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v5 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

void __53__ENAdvertisementDatabase_mergeStoresFromFolderPath___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = v3;
  v5 = [MEMORY[0x277CBEA68] arrayWithObjects:v7 count:1];
  LOBYTE(v4) = [v4 mergeStores:v5];

  if ((v4 & 1) == 0)
  {
    if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      __53__ENAdvertisementDatabase_mergeStoresFromFolderPath___block_invoke_cold_1(a1);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)closeAllStores
{
  centralStore = self->_centralStore;
  self->_centralStore = 0;

  temporaryStore = self->_temporaryStore;
  self->_temporaryStore = 0;

  self->_currentStoreType = 2;
}

- (id)currentStore
{
  currentStoreType = self->_currentStoreType;
  if (!currentStoreType)
  {
    v4 = 56;
LABEL_5:
    v5 = *(&self->super.isa + v4);

    return v5;
  }

  if (currentStoreType == 1)
  {
    v4 = 48;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)displayStorageFullAlert
{
  v23[5] = *MEMORY[0x277D85DE8];
  if (alertActive == 1)
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [(ENAdvertisementDatabase *)self displayStorageFullAlert];
    }

    goto LABEL_24;
  }

  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v4 = v3;
  previousStoreFullAlertTimestamp = self->_previousStoreFullAlertTimestamp;
  if (previousStoreFullAlertTimestamp && v3 <= (previousStoreFullAlertTimestamp + self->_storageFullAlertInterval * 1000000000.0))
  {
    goto LABEL_24;
  }

  if (gLogCategory_ENAdvertisementDatabase <= 50)
  {
    if (gLogCategory_ENAdvertisementDatabase == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v20 = self->_previousStoreFullAlertTimestamp;
    }

    storageFullAlertInterval = self->_storageFullAlertInterval;
    LogPrintF_safe();
  }

LABEL_12:
  v6 = ENLocalizedString();
  v7 = ENLocalizedString();
  v8 = ENLocalizedString();
  v9 = ENLocalizedString();
  v10 = *MEMORY[0x277CBF1A0];
  v22[0] = *MEMORY[0x277CBF190];
  v22[1] = v10;
  v23[0] = v6;
  v23[1] = v7;
  v11 = *MEMORY[0x277CBF1C8];
  v22[2] = *MEMORY[0x277CBF1E0];
  v22[3] = v11;
  v23[2] = v8;
  v23[3] = v9;
  v22[4] = *MEMORY[0x277D672A0];
  v23[4] = MEMORY[0x277CBEC30];
  v12 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v23 forKeys:v22 count:5];
  v13 = *MEMORY[0x277CBECE0];
  v14 = CFUserNotificationCreate(*MEMORY[0x277CBECE0], 0.0, 0, 0, v12);
  if (v14)
  {
    v15 = v14;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(v13, v14, _ENAdvertisementDatabaseStorageFullResponseHandler, 0);
    if (RunLoopSource)
    {
      v17 = RunLoopSource;
      alertActive = 1;
      self->_previousStoreFullAlertTimestamp = v4;
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v17, *MEMORY[0x277CBF050]);
      v15 = v17;
    }

    else if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase displayStorageFullAlert];
    }

    CFRelease(v15);
  }

  else if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase displayStorageFullAlert];
  }

LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveContactTracingAdvertisement:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  advertisementInsertionCache = self->_advertisementInsertionCache;
  advertisementInsertionIndex = self->_advertisementInsertionIndex;
  self->_advertisementInsertionIndex = advertisementInsertionIndex + 1;
  v8 = advertisementInsertionCache + 40 * advertisementInsertionIndex;
  if (v4)
  {
    [v4 structRepresentation];
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  *(v8 + 4) = v14;
  *v8 = v12;
  *(v8 + 1) = v13;
  v9 = self->_advertisementInsertionIndex != self->_advertisementInsertionCacheCount || [(ENAdvertisementDatabase *)self flushCache];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unsigned)cacheRecordCount
{
  v2 = 20;
  if (self->_advertisementInsertionCacheOverflowed)
  {
    v2 = 16;
  }

  return *(&self->super.isa + v2);
}

- (BOOL)flushCache
{
  v3 = [(ENAdvertisementDatabase *)self currentStore];

  if (!v3)
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase flushCache];
    }

    [(ENAdvertisementDatabase *)self openStoreAndReturnError:0];
  }

  v4 = [(ENAdvertisementDatabase *)self cacheRecordCount];
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    currentStoreType = self->_currentStoreType;
    v14 = v4;
    LogPrintF_safe();
  }

  v5 = [(ENAdvertisementDatabase *)self currentStore:currentStoreType];
  advertisementInsertionCache = self->_advertisementInsertionCache;
  v15 = 0;
  v7 = [v5 saveContactTracingAdvertisementBuffer:advertisementInsertionCache count:v4 error:&v15];
  v8 = v15;

  if (v7)
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase flushCache];
    }

    self->_advertisementInsertionCacheOverflowed = 0;
    p_advertisementInsertionIndex = &self->_advertisementInsertionIndex;
LABEL_30:
    *p_advertisementInsertionIndex = 0;
    goto LABEL_31;
  }

  if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [(ENAdvertisementDatabase *)self flushCache];
  }

  [(ENAdvertisementDatabase *)self reportStoreError:v8];
  if ([v8 code] != 4)
  {
    if ([v8 code] != 3)
    {
      goto LABEL_22;
    }

    [(ENAdvertisementSQLiteStore *)self->_centralStore purgeAndRemoveFromDisk:0];
  }

  [(ENAdvertisementDatabase *)self closeAllStores];
LABEL_22:
  p_advertisementInsertionIndex = &self->_advertisementInsertionIndex;
  if (self->_advertisementInsertionIndex == self->_advertisementInsertionCacheCount)
  {
    if ([v8 code] == 2 || (+[ENLoggingPrefs sharedENLoggingPrefs](ENLoggingPrefs, "sharedENLoggingPrefs"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isSensitiveLoggingAllowed"), v10, v11))
    {
      [(ENAdvertisementDatabase *)self displayStorageFullAlert];
    }

    if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase flushCache];
    }

    self->_advertisementInsertionCacheOverflowed = 1;
    goto LABEL_30;
  }

LABEL_31:

  return v7;
}

- (NSNumber)storedAdvertisementCount
{
  centralStore = self->_centralStore;
  if (centralStore)
  {
LABEL_4:
    v5 = [(ENAdvertisementSQLiteStore *)centralStore storedAdvertisementCount];
    v6 = v5;
    if (v5)
    {
      v4 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[ENAdvertisementDatabase cacheRecordCount](self, "cacheRecordCount") + objc_msgSend(v5, "unsignedIntValue")}];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_8;
  }

  v4 = 0;
  if ([(ENAdvertisementDatabase *)self openCentralStoreAndReturnError:0])
  {
    centralStore = self->_centralStore;
    goto LABEL_4;
  }

LABEL_8:

  return v4;
}

- (id)beaconCountMetricsWithStartDate:(id)a3 endDate:(id)a4 windowDuration:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v11 = [v10 isSensitiveLoggingAllowed];

  if (v11 && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    v16 = a5;
    v14 = v8;
    v15 = v9;
    LogPrintF_safe();
  }

  if (self->_currentStoreType == 1)
  {
    if (![(ENAdvertisementDatabase *)self cacheRecordCount]|| [(ENAdvertisementDatabase *)self flushCache])
    {
      v12 = [(ENAdvertisementSQLiteStore *)self->_centralStore beaconCountMetricsWithStartDate:v8 endDate:v9 windowDuration:a5, v14, v15, *&v16];
      goto LABEL_14;
    }

    if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase beaconCountMetricsWithStartDate:endDate:windowDuration:];
    }
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)matchingAdvertisementBufferForRPIBuffer:(id)a3 exposureKeys:(id)a4
{
  v6 = a3;
  v30 = a4;
  if (self->_currentStoreType != 1)
  {
    if (![(ENAdvertisementDatabase *)self switchToCentralStore])
    {
LABEL_25:
      v17 = 0;
      goto LABEL_48;
    }

    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase matchingAdvertisementBufferForRPIBuffer:exposureKeys:];
    }
  }

  if ([(ENAdvertisementDatabase *)self cacheRecordCount]&& ![(ENAdvertisementDatabase *)self flushCache])
  {
    if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase matchingAdvertisementBufferForRPIBuffer:exposureKeys:];
    }

    goto LABEL_25;
  }

  v7 = [v6 length] >> 4;
  v8 = malloc_type_calloc(v7, 1uLL, 0x100004077774924uLL);
  if (!v8)
  {
    if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase matchingAdvertisementBufferForRPIBuffer:exposureKeys:];
    }

    goto LABEL_25;
  }

  v9 = v8;
  v28 = v7;
  v29 = v6;
  v10 = [v6 bytes];
  if ([v30 count])
  {
    v11 = 0;
    v12 = 0;
    LODWORD(v13) = 0;
    v14 = 0;
    do
    {
      v15 = 144;
      v31 = v11;
      v16 = v12;
      do
      {
        if (![(ENQueryFilter *)self->_inlineQueryFilter shouldIgnoreRPI:v10 + v16])
        {
          v9[v11] = 1;
          ++v14;
        }

        v16 += 16;
        ++v11;
        --v15;
      }

      while (v15);
      v13 = (v13 + 1);
      v12 += 2304;
      v11 = v31 + 144;
    }

    while ([v30 count] > v13);
  }

  else
  {
    v14 = 0;
  }

  v18 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v19 = [v18 isSensitiveLoggingAllowed];

  if ((v19 & 1) != 0 && gLogCategory_ENAdvertisementDatabase <= 40 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    v26 = v14;
    v27 = v28 - v14;
    LogPrintF_safe();
  }

  v32 = 0;
  v33 = 0;
  v20 = [(ENAdvertisementSQLiteStore *)self->_centralStore getAdvertisementsMatchingRPIBuffer:v10 count:v28 validityBuffer:v9 validRPICount:v14 matchingAdvertisementBuffer:&v33 error:&v32, v26, v27];
  v21 = v32;
  free(v9);
  v22 = v33;
  v23 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v24 = [v23 isSensitiveLoggingAllowed];

  if (v22)
  {
    if (v24 && gLogCategory_ENAdvertisementDatabase <= 40 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase matchingAdvertisementBufferForRPIBuffer:exposureKeys:];
    }

    v17 = [MEMORY[0x277CBEA98] dataWithBytesNoCopy:v33 length:40 * v20];
    v6 = v29;
    goto LABEL_47;
  }

  if (v24 && gLogCategory_ENAdvertisementDatabase <= 90 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase matchingAdvertisementBufferForRPIBuffer:exposureKeys:];
  }

  [(ENAdvertisementDatabase *)self reportStoreError:v21];
  v6 = v29;
  if ([v21 code] == 4)
  {
    goto LABEL_45;
  }

  if ([v21 code] == 3)
  {
    [(ENAdvertisementSQLiteStore *)self->_centralStore purgeAndRemoveFromDisk:0];
LABEL_45:
    [(ENAdvertisementDatabase *)self closeAllStores];
  }

  v17 = 0;
LABEL_47:

LABEL_48:

  return v17;
}

- (id)advertisementsBufferMatchingDailyKeys:(id)a3 attenuationThreshold:(unsigned __int8)a4 timestampTolerance:(double)a5
{
  v59 = a4;
  v7 = a3;
  v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v9 = [v8 isSensitiveLoggingAllowed];

  if (v9 && gLogCategory_ENAdvertisementDatabase <= 40 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase advertisementsBufferMatchingDailyKeys:v7 attenuationThreshold:? timestampTolerance:?];
  }

  v10 = 2304 * [v7 count];
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = malloc_type_malloc(v10, 0x1000040451B5BE8uLL);
  if (v62[3])
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __105__ENAdvertisementDatabase_advertisementsBufferMatchingDailyKeys_attenuationThreshold_timestampTolerance___block_invoke;
    v60[3] = &unk_278FD3208;
    v60[4] = &v61;
    [v7 enumerateObjectsUsingBlock:v60];
    v11 = objc_alloc(MEMORY[0x277CBEA98]);
    v12 = [v11 initWithBytesNoCopy:v62[3] length:v10];
    v13 = [(ENAdvertisementDatabase *)self matchingAdvertisementBufferForRPIBuffer:v12 exposureKeys:v7];
    if (!v13 && gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v15 = [v13 length];
    v58 = v12;
    v16 = [v13 bytes];
    v57 = v13;
    if (v13 && v15 >= 0x28)
    {
      v17 = v16;
      Current = CFAbsoluteTimeGetCurrent();
      v19 = v15 / 0x28;
      v20 = *MEMORY[0x277CBECD8];
      v21 = Current + *MEMORY[0x277CBECD8] + -1209600.0;
      v22 = -*MEMORY[0x277CBECD8];
      do
      {
        v23 = objc_autoreleasePoolPush();
        v24 = [v7 objectAtIndex:*(v17 + 28)];
        v25 = v24;
        if (*(v17 + 20) >= v21)
        {
          v28 = [v24 rollingStartNumber] + *(v17 + 32);
          v29 = *(v17 + 20);
          if (v20 + v22 + v28 * 600.0 - a5 <= v29 && v29 <= v20 + v22 + (v28 + 1) * 600.0 + a5)
          {
            v32 = [ENAdvertisement decryptedMetadataForTemporaryExposureKey:v25 encryptedAEM:v17 + 16 RPI:v17];
            v33 = v32;
            if (v32)
            {
              v34 = [v32 attenuationForRSSI:*(v17 + 36) saturated:*(v17 + 38)];
              v35 = +[ENLoggingPrefs sharedENLoggingPrefs];
              v36 = [v35 isRPILoggingAllowed];

              if (v36 && gLogCategory_ENAdvertisementDatabase <= 10 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
              {
                v56 = CUPrintHex();
                v37 = [v33 txPower];
                v38 = *(v17 + 36);
                v39 = [v33 calibrationConfidence];
                v40 = "?";
                if (v39 <= 3)
                {
                  v40 = off_278FD3228[v39];
                }

                v54 = v40;
                v55 = *(v17 + 38);
                v52 = v37;
                v53 = v38;
                v50 = *&v56;
                v51 = v34;
                LogPrintF_safe();
              }

              if (v34 >= v59)
              {
                v47 = +[ENLoggingPrefs sharedENLoggingPrefs];
                v48 = [v47 isSensitiveLoggingAllowed];

                if (v48 && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe();
                }

                goto LABEL_65;
              }
            }

            else
            {
              if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe();
              }

              [(ENAdvertisementDatabase *)self reportErrorMetric:1006, *&v50];
LABEL_65:
              *(v17 + 28) = -1;
              ++self->_droppedAdvertisementCount;
            }

            goto LABEL_54;
          }

          v30 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v31 = [v30 isSensitiveLoggingAllowed];

          if (v31 && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          v43 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v44 = [v43 isRPILoggingAllowed];

          if (v44 && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
          {
            v45 = [v7 objectAtIndex:*(v17 + 28)];
            v46 = [v45 keyData];
            v52 = v28;
            v51 = *(v17 + 20);
            v50 = *&v46;
            LogPrintF_safe();
          }
        }

        else
        {
          v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v27 = [v26 isSensitiveLoggingAllowed];

          if (v27 && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
          {
            v50 = v21;
            LogPrintF_safe();
          }

          v41 = [ENLoggingPrefs sharedENLoggingPrefs:*&v50];
          v42 = [v41 isRPILoggingAllowed];

          if (v42 && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
          {
            v51 = *(v17 + 20);
            v50 = *&v25;
            LogPrintF_safe();
          }
        }

        *(v17 + 28) = -1;
        ++self->_droppedAdvertisementCount;
LABEL_54:

        objc_autoreleasePoolPop(v23);
        v17 += 40;
        --v19;
      }

      while (v19);
    }

    v14 = v57;
  }

  else
  {
    if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v14 = 0;
  }

  _Block_object_dispose(&v61, 8);

  return v14;
}

- (BOOL)purgeAdvertismentsOlderThan:(double)a3
{
  v4 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSinceNow:-a3];
  LOBYTE(self) = [(ENAdvertisementDatabase *)self purgeAdvertismentsSeenBeforeDate:v4];

  return self;
}

- (BOOL)purgeAdvertismentsSeenBeforeDate:(id)a3
{
  v4 = a3;
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase purgeAdvertismentsSeenBeforeDate:];
  }

  centralStore = self->_centralStore;
  if (centralStore)
  {
    v10 = 0;
    v6 = [(ENAdvertisementSQLiteStore *)centralStore purgeAdvertismentsRecordedPriorToDate:v4 error:&v10];
    v7 = v10;
    if (!v6)
    {
      if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
      {
        [ENAdvertisementDatabase purgeAdvertismentsSeenBeforeDate:?];
      }

      [(ENAdvertisementDatabase *)self reportStoreError:v7];
      if ([v7 code] != 4)
      {
        if ([v7 code] != 3)
        {
LABEL_13:
          v8 = 0;
          goto LABEL_16;
        }

        [(ENAdvertisementSQLiteStore *)self->_centralStore purgeAndRemoveFromDisk:0];
      }

      [(ENAdvertisementDatabase *)self closeAllStores];
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
LABEL_16:
  if (self->_temporaryStore)
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase purgeAdvertismentsSeenBeforeDate:];
    }

    [(ENAdvertisementDatabase *)self closeAllStores];
  }

  if (![ENAdvertisementSQLiteStore removeAllTemporaryStoresFromDiskWithFolderPath:self->_databaseFolderPath lastModifiedBeforeDate:v4])
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase purgeAdvertismentsSeenBeforeDate:?];
    }

    v8 = 0;
  }

  [(ENAdvertisementDatabase *)self openStoreAndReturnError:0];

  return v8;
}

- (BOOL)purgeAllStoresInActiveDatabasePath
{
  self->_advertisementInsertionIndex = 0;
  bzero(self->_advertisementInsertionCache, 40 * self->_advertisementInsertionCacheCount);
  self->_advertisementInsertionCacheOverflowed = 0;
  [(ENAdvertisementDatabase *)self closeAllStores];
  databaseFolderPath = self->_databaseFolderPath;

  return [ENAdvertisementDatabase purgeAllStoresInPath:databaseFolderPath];
}

+ (BOOL)purgeAllStoresInPath:(id)a3
{
  v3 = a3;
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    +[ENAdvertisementDatabase purgeAllStoresInPath:];
  }

  v4 = [ENAdvertisementSQLiteStore removeAllStoresFromDiskWithFolderPath:v3];
  if (!v4 && gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    +[ENAdvertisementDatabase purgeAllStoresInPath:];
  }

  return v4;
}

- (BOOL)cloneDatabaseTo:(id)a3
{
  v4 = a3;
  if (self->_centralStore)
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase cloneDatabaseTo:];
    }

    [(ENAdvertisementDatabase *)self flushCache];
    v5 = [(ENAdvertisementSQLiteStore *)self->_centralStore cloneStoreTo:v4];
  }

  else
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase cloneDatabaseTo:];
    }

    v5 = 0;
  }

  return v5;
}

- (uint64_t)mergeStoresFromFolderPath:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  [a1 UTF8String];
  [*(a2 + 40) UTF8String];
  return LogPrintF_safe();
}

- (uint64_t)displayStorageFullAlert
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 96);
  return LogPrintF_safe();
}

- (uint64_t)flushCache
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 20);
  return LogPrintF_safe();
}

@end