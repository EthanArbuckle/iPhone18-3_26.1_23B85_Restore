@interface ENExposureDetectionDaemonSession
- (BOOL)_addMatchesFromFileSession:(id)session publicKey:(id)key endpoint:(id)endpoint error:(id *)error;
- (BOOL)_checkFinishedAndReturnError:(id *)error;
- (BOOL)_checkPreparedAndReturnError:(id *)error;
- (BOOL)_classifyExposureWithResult:(id)result error:(id *)error;
- (BOOL)_prepareAndReturnError:(id *)error;
- (BOOL)_shouldMatchPersistenKey:(id)key;
- (BOOL)_verifySignatureForFileSession:(id)session publicKey:(id)key error:(id *)error;
- (BOOL)addMatchesFromFileSession:(id)session publicKey:(id)key endpoint:(id)endpoint error:(id *)error;
- (BOOL)classifyExposureWithResult:(id)result error:(id *)error;
- (BOOL)prepareAndReturnError:(id *)error;
- (BOOL)prepareConfiguration:(id)configuration bundleIdentifier:(id)identifier nowDate:(id)date expiryInterval:(double)interval error:(id *)error;
- (ENExposureDetectionDaemonSession)initWithQueue:(id)queue;
- (id)_finishAndReturnError:(id *)error;
- (id)_getAnalysisSessionAndReturnError:(id *)error;
- (id)_getBeaconCountMetricsAndReturnError:(id *)error;
- (id)_getSummaryAndReturnError:(id *)error;
- (id)_prepareExposureCalculationSessionWithError:(id *)error;
- (id)description;
- (id)finishAndReturnError:(id *)error;
- (id)getAnalysisSessionAndReturnError:(id *)error;
- (id)getBeaconCountMetricsAndReturnError:(id *)error;
- (id)getSummaryAndReturnError:(id *)error;
- (void)_addFileToHistoryWithHash:(id)hash metadata:(id)metadata endpoint:(id)endpoint keyCount:(unint64_t)count matchCount:(unint64_t)matchCount;
- (void)_invalidate;
- (void)_signpostBegin;
- (void)_signpostEnd;
- (void)_updateStatisticsWithHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ENExposureDetectionDaemonSession

- (ENExposureDetectionDaemonSession)initWithQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = ENExposureDetectionDaemonSession;
  v6 = [(ENExposureDetectionDaemonSession *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
    v7->_signpostID = 0;
    v8 = objc_alloc_init(ENExposureDetectionDaemonSessionStatistics);
    statistics = v7->_statistics;
    v7->_statistics = v8;

    v7->_tekMatchBatchSize = 256;
    v10 = v7;
  }

  return v7;
}

- (void)dealloc
{
  [(ENExposureDetectionDaemonSession *)self _signpostEnd];
  v3.receiver = self;
  v3.super_class = ENExposureDetectionDaemonSession;
  [(ENExposureDetectionDaemonSession *)&v3 dealloc];
}

- (BOOL)prepareAndReturnError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ENExposureDetectionDaemonSession_prepareAndReturnError___block_invoke;
  block[3] = &unk_278FD1290;
  block[4] = self;
  block[5] = &v7;
  block[6] = error;
  dispatch_sync(dispatchQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __58__ENExposureDetectionDaemonSession_prepareAndReturnError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _prepareAndReturnError:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_prepareAndReturnError:(id *)error
{
  if (!self->_prepared)
  {
    [(ENExposureDetectionDaemonSession *)self _signpostBegin];
    sessionDate = self->_sessionDate;
    if (sessionDate)
    {
      date = sessionDate;
    }

    else
    {
      date = [MEMORY[0x277CBEAA0] date];
    }

    v8 = date;
    obj = date;
    if (self->_advertisementDatabaseQuerySession)
    {
      exposureDatabase = self->_exposureDatabase;
      if (exposureDatabase)
      {
        if ([(ENExposureDatabase *)exposureDatabase openWithError:error])
        {
          v10 = self->_client;
          region = [(ENRegionConfiguration *)self->_regionConfiguration region];
          v12 = self->_serverExposureConfiguration;
          v13 = v12;
          if (v12)
          {
            [(ENRegionServerExposureConfiguration *)v12 privacyParameterInputCandenceInterval];
            v15 = v14;
          }

          else
          {
            v15 = 604800.0;
          }

          v32 = region;
          if (v10)
          {
            v16 = self->_clientExposureConfiguration;
            if (v16)
            {
              v17 = v16;
              if ([(ENXPCClient *)v10 appAPIVersion]< 2)
              {
LABEL_17:
                if (([(ENExposureConfiguration *)v17 flags]& 4) == 0 || [(ENXPCClient *)v10 accessLevel]> 3)
                {
                  signingIdentity = [(ENXPCClient *)v10 signingIdentity];
                  goto LABEL_28;
                }

                if (error)
                {
                  v31 = ENErrorF();
                  signingIdentity = 0;
                  goto LABEL_51;
                }

                goto LABEL_56;
              }

              infectiousnessForDaysSinceOnsetOfSymptoms = [(ENExposureConfiguration *)v17 infectiousnessForDaysSinceOnsetOfSymptoms];
              v19 = [infectiousnessForDaysSinceOnsetOfSymptoms count];

              if (v19)
              {
                [(ENExposureConfiguration *)v17 setFlags:[(ENExposureConfiguration *)v17 flags]| 3];
                goto LABEL_17;
              }

              if (!error)
              {
LABEL_56:
                signingIdentity = 0;
                goto LABEL_57;
              }

              exposureConfigurationValues = NSStringFromSelector(sel_infectiousnessForDaysSinceOnsetOfSymptoms);
              *error = ENErrorF();
LABEL_55:

              goto LABEL_56;
            }

            if (error)
            {
              goto LABEL_50;
            }
          }

          else if (region)
          {
            if (v13)
            {
              exposureConfigurationValues = [(ENRegionServerExposureConfiguration *)v13 exposureConfigurationValues];
              v22 = [objc_alloc(MEMORY[0x277CC5C28]) initWithDictionary:exposureConfigurationValues error:error];
              v17 = v22;
              if (v22)
              {
                [(ENExposureConfiguration *)v22 setFlags:3];
                if ([(ENRegionServerExposureConfiguration *)v13 enableRecursiveReportType]&& gLogCategory__ENExposureDetectionDaemonSession <= 90 && (gLogCategory__ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
                {
                  [ENExposureDetectionDaemonSession _prepareAndReturnError:];
                }

                v23 = MEMORY[0x277CCACA0];
                regionCode = [region regionCode];
                signingIdentity = [v23 stringWithFormat:@"com.apple.ExposureNotification.%@", regionCode];

                v8 = obj;
LABEL_28:
                if ([(ENExposureDetectionDaemonSession *)self prepareConfiguration:v17 bundleIdentifier:signingIdentity nowDate:v8 expiryInterval:error error:v15])
                {
                  v25 = objc_alloc_init(MEMORY[0x277CC5C48]);
                  [v25 setDate:v8];
                  v26 = MGCopyAnswer();
                  [v25 setSystemBuildVersion:v26];

                  if (v10)
                  {
                    signingIdentity2 = [(ENXPCClient *)v10 signingIdentity];
                    [v25 setAppBundleIdentifier:signingIdentity2];
                  }

                  else
                  {
                    signingIdentity2 = [(ENRegionConfiguration *)self->_regionConfiguration region];
                    [v25 setRegion:signingIdentity2];
                  }

                  v28 = self->_exposureDatabase;
                  v34 = 0;
                  v3 = [(ENExposureDatabase *)v28 upsertExposureDetectionHistorySession:v25 error:&v34];
                  v29 = v34;
                  if (v3)
                  {
                    objc_storeStrong(&self->_historySession, v25);
                    objc_storeStrong(&self->_sessionDate, obj);
                    objc_storeStrong(&self->_sessionExposureConfiguration, v17);
                    self->_useCache = [(ENExposureConfiguration *)self->_sessionExposureConfiguration flags]& 1;
                    self->_prepared = 1;
                  }

                  else
                  {
                    [ENExposureDetectionDaemonSession _prepareAndReturnError:error];
                  }

                  goto LABEL_35;
                }

                goto LABEL_57;
              }

              goto LABEL_55;
            }

            if (error)
            {
LABEL_50:
              v31 = ENErrorF();
              signingIdentity = 0;
              v17 = 0;
LABEL_51:
              v3 = 0;
              *error = v31;
LABEL_35:

LABEL_36:
              return v3;
            }
          }

          else if (error)
          {
            goto LABEL_50;
          }

          signingIdentity = 0;
          v17 = 0;
LABEL_57:
          v3 = 0;
          goto LABEL_35;
        }

LABEL_43:
        v3 = 0;
        goto LABEL_36;
      }

      if (!error)
      {
        goto LABEL_43;
      }
    }

    else if (!error)
    {
      goto LABEL_43;
    }

    ENErrorF();
    *error = v3 = 0;
    goto LABEL_36;
  }

  return 1;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ENExposureDetectionDaemonSession_invalidate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)_invalidate
{
  [(ENExposureDetectionDaemonSession *)self _signpostEnd];
  [(ENAdvertisementDatabaseQuerySession *)self->_advertisementDatabaseQuerySession invalidate];
  clientExposureConfiguration = self->_clientExposureConfiguration;
  self->_clientExposureConfiguration = 0;

  historySession = self->_historySession;
  self->_historySession = 0;

  exposureCalculationSession = self->_exposureCalculationSession;
  self->_exposureCalculationSession = 0;

  serverExposureConfiguration = self->_serverExposureConfiguration;
  self->_serverExposureConfiguration = 0;

  sessionExposureConfiguration = self->_sessionExposureConfiguration;
  self->_sessionExposureConfiguration = 0;

  *&self->_finished = 0;
}

- (BOOL)addMatchesFromFileSession:(id)session publicKey:(id)key endpoint:(id)endpoint error:(id *)error
{
  sessionCopy = session;
  keyCopy = key;
  endpointCopy = endpoint;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  dispatchQueue = self->_dispatchQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__ENExposureDetectionDaemonSession_addMatchesFromFileSession_publicKey_endpoint_error___block_invoke;
  v18[3] = &unk_278FD12B8;
  v18[4] = self;
  v19 = sessionCopy;
  v20 = keyCopy;
  v21 = endpointCopy;
  v22 = &v24;
  errorCopy = error;
  v14 = endpointCopy;
  v15 = keyCopy;
  v16 = sessionCopy;
  dispatch_sync(dispatchQueue, v18);
  LOBYTE(dispatchQueue) = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return dispatchQueue;
}

uint64_t __87__ENExposureDetectionDaemonSession_addMatchesFromFileSession_publicKey_endpoint_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _addMatchesFromFileSession:*(a1 + 40) publicKey:*(a1 + 48) endpoint:*(a1 + 56) error:*(a1 + 72)];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

- (BOOL)_addMatchesFromFileSession:(id)session publicKey:(id)key endpoint:(id)endpoint error:(id *)error
{
  v85 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  keyCopy = key;
  endpointCopy = endpoint;
  errorCopy = error;
  v46 = sessionCopy;
  v37 = keyCopy;
  if (![(ENExposureDetectionDaemonSession *)self _checkPreparedAndReturnError:error])
  {
    v30 = 0;
    goto LABEL_43;
  }

  v83 = 0;
  selfCopy = self;
  v12 = [(ENExposureDetectionDaemonSession *)self _verifySignatureForFileSession:sessionCopy publicKey:keyCopy error:&v83];
  v39 = v83;
  selfCopy5 = self;
  if (!v12)
  {
    if (gLogCategory__ENExposureDetectionDaemonSession <= 90)
    {
      if (gLogCategory__ENExposureDetectionDaemonSession != -1 || (selfCopy5 = self, _LogCategory_Initialize()))
      {
        [ENExposureDetectionDaemonSession _addMatchesFromFileSession:selfCopy5 publicKey:? endpoint:? error:?];
        selfCopy5 = self;
      }
    }

    [(ENExposureDetectionDaemonSession *)selfCopy5 _updateStatisticsWithHandler:&__block_literal_global_2];
    selfCopy5 = self;
    if (!self->_skipFileSigningVerification)
    {
      if (error)
      {
        v34 = v39;
        v30 = 0;
        *error = v39;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_42;
    }
  }

  v44 = selfCopy5->_advertisementDatabaseQuerySession;
  if (selfCopy5->_useCache)
  {
    v45 = 0;
    goto LABEL_11;
  }

  v45 = [(ENExposureDetectionDaemonSession *)selfCopy5 _prepareExposureCalculationSessionWithError:error];
  selfCopy5 = self;
  if (v45)
  {
LABEL_11:
    [(ENRegionServerConfiguration *)selfCopy5->_regionServerConfiguration rpiAdvertisementTolerance];
    if (v14 == 0.0)
    {
      v15 = 7200.0;
    }

    else
    {
      v15 = v14;
    }

    region = [endpointCopy region];
    countryCode = [region countryCode];

    v17 = 0;
    v41 = 0;
    v42 = 0;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v82 = v17;
      v18 = [v46 readTEKBatchAndReturnError:&v82];
      v19 = v82;

      if (!v18)
      {
        break;
      }

      if (![v18 count])
      {

        objc_autoreleasePoolPop(context);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __88__ENExposureDetectionDaemonSession__addMatchesFromFileSession_publicKey_endpoint_error___block_invoke_4;
        v49[3] = &unk_278FD1350;
        v31 = v46;
        v50 = v31;
        [(ENExposureDetectionDaemonSession *)selfCopy _updateStatisticsWithHandler:v49];
        sha256Data = [v31 sha256Data];
        metadata = [v31 metadata];
        [(ENExposureDetectionDaemonSession *)selfCopy _addFileToHistoryWithHash:sha256Data metadata:metadata endpoint:endpointCopy keyCount:v42 matchCount:v41];

        v30 = 1;
        goto LABEL_40;
      }

      if (CFPrefs_GetInt64())
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v20 = v18;
        v21 = [v20 countByEnumeratingWithState:&v78 objects:v84 count:16];
        if (v21)
        {
          v22 = *v79;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v79 != v22)
              {
                objc_enumerationMutation(v20);
              }

              if (gLogCategory_ENExposureDetectionDaemonSession <= 40)
              {
                v24 = *(*(&v78 + 1) + 8 * i);
                if (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize())
                {
                  [ENExposureDetectionDaemonSession _addMatchesFromFileSession:publicKey:endpoint:error:];
                }
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v78 objects:v84 count:16];
          }

          while (v21);
        }
      }

      v77[0] = 0;
      v77[1] = v77;
      v77[2] = 0x2020000000;
      v77[3] = 0;
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v76 = 0;
      v72[0] = 0;
      v72[1] = v72;
      v72[2] = 0x2020000000;
      v72[3] = 0;
      v71[0] = 0;
      v71[1] = v71;
      v71[2] = 0x2020000000;
      v71[3] = 0;
      v70[0] = 0;
      v70[1] = v70;
      v70[2] = 0x2020000000;
      v70[3] = 0;
      v69[0] = 0;
      v69[1] = v69;
      v69[2] = 0x2020000000;
      v69[3] = 0;
      v68 = v19;
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __88__ENExposureDetectionDaemonSession__addMatchesFromFileSession_publicKey_endpoint_error___block_invoke_2;
      v60[3] = &unk_278FD1300;
      v60[4] = selfCopy;
      v60[5] = countryCode;
      v62 = v72;
      v63 = v69;
      v64 = v77;
      v25 = v45;
      v61 = v25;
      v65 = v70;
      v66 = &v73;
      v67 = v71;
      v26 = [(ENAdvertisementDatabaseQuerySession *)v44 enumerateAdvertisementsMatchingKeys:v18 attenuationThreshold:255 timestampTolerance:&v68 error:v60 handler:v15];
      v17 = v68;

      if (v26)
      {
        v27 = [v18 count];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __88__ENExposureDetectionDaemonSession__addMatchesFromFileSession_publicKey_endpoint_error___block_invoke_3;
        v51[3] = &unk_278FD1328;
        v53 = v77;
        v52 = v25;
        v54 = v70;
        v55 = &v73;
        v56 = v71;
        v57 = v72;
        v58 = v69;
        v59 = v27;
        [(ENExposureDetectionDaemonSession *)selfCopy _updateStatisticsWithHandler:v51];
        v28 = v74[3];

        v42 += v27;
        v41 += v28;
      }

      _Block_object_dispose(v69, 8);
      _Block_object_dispose(v70, 8);
      _Block_object_dispose(v71, 8);
      _Block_object_dispose(v72, 8);
      _Block_object_dispose(&v73, 8);
      _Block_object_dispose(v77, 8);

      objc_autoreleasePoolPop(context);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

    objc_autoreleasePoolPop(context);
    v17 = v19;
LABEL_33:
    if (errorCopy)
    {
      v29 = v17;
      v30 = 0;
      *errorCopy = v17;
    }

    else
    {
      v30 = 0;
    }

    v19 = v17;
LABEL_40:

    goto LABEL_41;
  }

  [ENExposureDetectionDaemonSession _addMatchesFromFileSession:v77 publicKey:? endpoint:? error:?];
  v30 = v77[0];
LABEL_41:

LABEL_42:
LABEL_43:

  v35 = *MEMORY[0x277D85DE8];
  return v30;
}

void __88__ENExposureDetectionDaemonSession__addMatchesFromFileSession_publicKey_endpoint_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setInvalidFileSignatureCount:{objc_msgSend(v2, "invalidFileSignatureCount") + 1}];
}

void __88__ENExposureDetectionDaemonSession__addMatchesFromFileSession_publicKey_endpoint_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [ENPersistentTemporaryExposureKey alloc];
  v8 = [*(*(a1 + 32) + 56) signingIdentity];
  v9 = [(ENPersistentTemporaryExposureKey *)v7 initWithTemporaryExposureKey:v5 appBundleIdentifier:v8 regionCountryCode:*(a1 + 40)];

  v10 = *(*(a1 + 32) + 72);
  v15 = 0;
  v11 = [v10 insertMatchedAdvertisements:v6 forKey:v9 error:&v15];
  v12 = v15;
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v13 = *(a1 + 64);
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_14;
      }

      v13 = *(a1 + 72);
    }

    goto LABEL_13;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_14;
    }

    v13 = *(a1 + 56);
LABEL_13:
    ++*(*(v13 + 8) + 24);
    goto LABEL_14;
  }

  if (gLogCategory__ENExposureDetectionDaemonSession <= 90 && (gLogCategory__ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
  {
    __88__ENExposureDetectionDaemonSession__addMatchesFromFileSession_publicKey_endpoint_error___block_invoke_2_cold_1();
  }

LABEL_14:
  if (*(a1 + 48))
  {
    ++*(*(*(a1 + 80) + 8) + 24);
    v14 = [*(a1 + 48) exposureInfoForMatchedAdvertisements:v6 key:v5];
    if (v14)
    {
      ++*(*(*(a1 + 88) + 8) + 24);
    }

    if ([v5 diagnosisReportType] == 5)
    {
      ++*(*(*(a1 + 96) + 8) + 24);
    }
  }
}

void __88__ENExposureDetectionDaemonSession__addMatchesFromFileSession_publicKey_endpoint_error___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  [v3 setDroppedCachedKeyUpdatesCount:{*(*(a1[5] + 8) + 24) + objc_msgSend(v3, "droppedCachedKeyUpdatesCount")}];
  if (a1[4])
  {
    [v3 setDroppedKeyCount:{*(*(a1[6] + 8) + 24) - (*(*(a1[7] + 8) + 24) + *(*(a1[8] + 8) + 24)) + objc_msgSend(v3, "droppedKeyCount")}];
  }

  [v3 setFileKeyCount:{a1[11] + objc_msgSend(v3, "fileKeyCount")}];
  [v3 setMatchedKeyCount:{*(*(a1[7] + 8) + 24) + objc_msgSend(v3, "matchedKeyCount")}];
  [v3 setNewCachedKeyCount:{*(*(a1[9] + 8) + 24) + objc_msgSend(v3, "newCachedKeyCount")}];
  [v3 setRevokedKeyCount:{*(*(a1[8] + 8) + 24) + objc_msgSend(v3, "revokedKeyCount")}];
  [v3 setUpdatedCachedKeyCount:{*(*(a1[10] + 8) + 24) + objc_msgSend(v3, "updatedCachedKeyCount")}];
}

void __88__ENExposureDetectionDaemonSession__addMatchesFromFileSession_publicKey_endpoint_error___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setFileInvalidKeyCount:{objc_msgSend(v3, "fileInvalidKeyCount") + objc_msgSend(v2, "invalidKeyCount")}];
  [v3 setProcessedFileCount:{objc_msgSend(v3, "processedFileCount") + 1}];
}

- (void)_addFileToHistoryWithHash:(id)hash metadata:(id)metadata endpoint:(id)endpoint keyCount:(unint64_t)count matchCount:(unint64_t)matchCount
{
  hashCopy = hash;
  metadataCopy = metadata;
  endpointCopy = endpoint;
  v15 = hashCopy;
  if (v15)
  {
    v16 = self->_historySession;
    if (v16)
    {
      v17 = objc_alloc_init(MEMORY[0x277CC5C40]);
      [v17 setFileHash:v15];
      date = [MEMORY[0x277CBEAA0] date];
      [v17 setProcessDate:date];

      [v17 setMetadata:metadataCopy];
      v19 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:count];
      [v17 setKeyCount:v19];

      if (self->_useCache)
      {
        [v17 setMatchCount:0];
      }

      else
      {
        v20 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:matchCount];
        [v17 setMatchCount:v20];
      }

      client = self->_client;
      if (client)
      {
        signingIdentity = [(ENXPCClient *)client signingIdentity];
        [v17 setSourceAppBundleIdentifier:signingIdentity];
      }

      else
      {
        signingIdentity = [endpointCopy region];
        [v17 setSourceRegion:signingIdentity];
      }

      exposureDatabase = self->_exposureDatabase;
      v26 = 0;
      v24 = [(ENExposureDatabase *)exposureDatabase insertExposureDetectionFile:v17 session:v16 error:&v26];
      v25 = v26;
      if (!v24 && gLogCategory__ENExposureDetectionDaemonSession <= 90 && (gLogCategory__ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
      {
        [ENExposureDetectionDaemonSession _addFileToHistoryWithHash:metadata:endpoint:keyCount:matchCount:];
      }
    }

    else
    {
      [ENExposureDetectionDaemonSession _addFileToHistoryWithHash:metadata:endpoint:keyCount:matchCount:];
    }
  }

  else
  {
    [ENExposureDetectionDaemonSession _addFileToHistoryWithHash:metadata:endpoint:keyCount:matchCount:];
  }
}

- (BOOL)_verifySignatureForFileSession:(id)session publicKey:(id)key error:(id *)error
{
  sessionCopy = session;
  keyRef = [key keyRef];
  if (keyRef)
  {
    v13 = 0;
    v9 = [sessionCopy verifySignatureWithPublicKey:keyRef error:&v13];
    v10 = v13;
    v11 = v9 != 0;
    if (v9)
    {
      if (gLogCategory_ENExposureDetectionDaemonSession <= 10 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
      {
        [ENExposureDetectionDaemonSession _verifySignatureForFileSession:publicKey:error:];
      }
    }

    else
    {
      [ENExposureDetectionDaemonSession _verifySignatureForFileSession:error publicKey:v10 error:?];
    }
  }

  else if (error)
  {
    __83__ENExposureDetectionDaemonSession__verifySignatureForFileSession_publicKey_error___block_invoke(0, 0, @"Nil public key");
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __83__ENExposureDetectionDaemonSession__verifySignatureForFileSession_publicKey_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEB30];
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(v4);
  [v7 setObject:@"Invalid signature" forKeyedSubscript:*MEMORY[0x277CCA458]];
  [v7 setObject:@"Invalid signature" forKeyedSubscript:@"cuErrorDesc"];
  [v7 setObject:v5 forKeyedSubscript:@"cuErrorMsg"];

  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA7E0]];
  v8 = [objc_alloc(MEMORY[0x277CCA9B0]) initWithDomain:@"ENExposureDetectionDaemonSessionErrorDomain" code:2 userInfo:v7];

  return v8;
}

- (BOOL)_checkPreparedAndReturnError:(id *)error
{
  prepared = self->_prepared;
  if (!prepared)
  {
    [ENExposureDetectionDaemonSession _checkPreparedAndReturnError:error];
  }

  return prepared;
}

- (BOOL)_checkFinishedAndReturnError:(id *)error
{
  finished = self->_finished;
  if (!finished)
  {
    [ENExposureDetectionDaemonSession _checkFinishedAndReturnError:error];
  }

  return finished;
}

- (id)finishAndReturnError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ENExposureDetectionDaemonSession_finishAndReturnError___block_invoke;
  block[3] = &unk_278FD1290;
  block[4] = self;
  block[5] = &v7;
  block[6] = error;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __57__ENExposureDetectionDaemonSession_finishAndReturnError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _finishAndReturnError:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_finishAndReturnError:(id *)error
{
  if (![(ENExposureDetectionDaemonSession *)self _checkPreparedAndReturnError:?])
  {
LABEL_42:
    v26 = 0;
    goto LABEL_34;
  }

  if (self->_finished)
  {
    if (error)
    {
      ENErrorF();
      *error = v26 = 0;
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  v5 = [(ENExposureDetectionDaemonSession *)self _prepareExposureCalculationSessionWithError:error];
  if (!v5)
  {
    goto LABEL_32;
  }

  if (!self->_useCache)
  {
    goto LABEL_11;
  }

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  exposureDatabase = self->_exposureDatabase;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __58__ENExposureDetectionDaemonSession__finishAndReturnError___block_invoke;
  v33[3] = &unk_278FD1378;
  v33[6] = &v34;
  v33[7] = &v39;
  v33[4] = self;
  v33[5] = v5;
  v33[8] = v43;
  v33[9] = v38;
  v8 = [(ENExposureDatabase *)exposureDatabase enumerateMatchedAdvertisementsWithError:error handler:v33];
  v9 = v8;
  if (v8 && gLogCategory_ENExposureDetectionDaemonSession <= 30 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
  {
    v10 = v35[3];
    v11 = v40[3];
    v30 = CFAbsoluteTimeGetCurrent() - Current;
    v28 = v10;
    v29 = v10 - v11;
    LogPrintF_safe();
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __58__ENExposureDetectionDaemonSession__finishAndReturnError___block_invoke_2;
  v32[3] = &unk_278FD13A0;
  v32[4] = &v39;
  v32[5] = v43;
  v32[6] = v38;
  [(ENExposureDetectionDaemonSession *)self _updateStatisticsWithHandler:v32, v28, v29, *&v30];
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(v43, 8);
  if (v9)
  {
LABEL_11:
    v12 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v12 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && gLogCategory_ENExposureDetectionDaemonSession <= 30 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDetectionDaemonSession _finishAndReturnError:?];
    }

    v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed2 = [v14 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed2 && gLogCategory_ENExposureDetectionDaemonSession <= 30 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDetectionDaemonSession _finishAndReturnError:v5];
    }

    self->_finished = 1;
    v16 = [(ENExposureDetectionDaemonSession *)self _getSummaryAndReturnError:error];
    if (v16)
    {
      v17 = [(ENExposureDetectionDaemonSession *)self _getBeaconCountMetricsAndReturnError:error];
      v18 = [v17 differentialPrivacyRepresentationWithCountThresholds:&unk_285D6E120];
      if (v18)
      {
        v19 = objc_alloc_init(ENExposureDetectionDaemonSessionResult);
        [(ENExposureDetectionDaemonSessionResult *)v19 setStatistics:self->_statistics];
        [(ENExposureDetectionDaemonSessionResult *)v19 setSummary:v16];
        region = [(ENRegionConfiguration *)self->_regionConfiguration region];
        [(ENExposureDetectionDaemonSessionResult *)v19 setRegion:region];

        cachedExposuresDifferentialPrivacyRiskParameters = [v5 cachedExposuresDifferentialPrivacyRiskParameters];
        [(ENExposureDetectionDaemonSessionResult *)v19 setDifferentialPrivacyRiskParameters:cachedExposuresDifferentialPrivacyRiskParameters];

        [(ENExposureDetectionDaemonSessionResult *)v19 setDifferentialPrivacyBeaconCount:v18];
        if ([(ENExposureDetectionDaemonSession *)self _classifyExposureWithResult:v19 error:error])
        {
          v22 = self->_historySession;
          if (v22)
          {
            v23 = self->_exposureDatabase;
            v31 = 0;
            v24 = [(ENExposureDatabase *)v23 upsertExposureDetectionHistorySession:v22 error:&v31];
            v25 = v31;
            if (!v24 && gLogCategory__ENExposureDetectionDaemonSession <= 90 && (gLogCategory__ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
            {
              [ENExposureDetectionDaemonSession _finishAndReturnError:];
            }
          }

          [(ENExposureDetectionDaemonSession *)self _signpostEnd];
          v26 = v19;
        }

        else
        {
          v26 = 0;
        }
      }

      else if (error)
      {
        ENErrorF();
        *error = v26 = 0;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
LABEL_32:
    v26 = 0;
  }

LABEL_34:

  return v26;
}

void __58__ENExposureDetectionDaemonSession__finishAndReturnError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  ++*(*(*(a1 + 48) + 8) + 24);
  if ([*(a1 + 32) _shouldMatchPersistenKey:v8])
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    v6 = [v8 key];
    v7 = [*(a1 + 40) exposureInfoForMatchedAdvertisements:v5 key:v6];
    if (v7)
    {
      ++*(*(*(a1 + 64) + 8) + 24);
    }

    if ([v6 diagnosisReportType] == 5)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
    }
  }
}

void __58__ENExposureDetectionDaemonSession__finishAndReturnError___block_invoke_2(void *a1, void *a2)
{
  v3 = *(*(a1[4] + 8) + 24);
  v4 = *(*(a1[5] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24);
  v6 = a2;
  [v6 setDroppedKeyCount:{v3 - (v4 + v5) + objc_msgSend(v6, "droppedKeyCount")}];
  [v6 setMatchedKeyCount:{*(*(a1[5] + 8) + 24) + objc_msgSend(v6, "matchedKeyCount")}];
  [v6 setRevokedKeyCount:{*(*(a1[6] + 8) + 24) + objc_msgSend(v6, "revokedKeyCount")}];
}

- (BOOL)_shouldMatchPersistenKey:(id)key
{
  keyCopy = key;
  region = [(ENRegionConfiguration *)self->_regionConfiguration region];
  if ([(ENRegionServerExposureConfiguration *)self->_serverExposureConfiguration matchingRestrictedToRegion])
  {
    v6 = region == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    regionCountryCode = [keyCopy regionCountryCode];
    countryCode = [region countryCode];
    v9 = [regionCountryCode isEqualToString:countryCode];
  }

  return v9;
}

- (BOOL)classifyExposureWithResult:(id)result error:(id *)error
{
  resultCopy = result;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ENExposureDetectionDaemonSession_classifyExposureWithResult_error___block_invoke;
  v10[3] = &unk_278FD13C8;
  v10[4] = self;
  v11 = resultCopy;
  v12 = &v14;
  errorCopy = error;
  v8 = resultCopy;
  dispatch_sync(dispatchQueue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

uint64_t __69__ENExposureDetectionDaemonSession_classifyExposureWithResult_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _classifyExposureWithResult:*(a1 + 40) error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)getAnalysisSessionAndReturnError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ENExposureDetectionDaemonSession_getAnalysisSessionAndReturnError___block_invoke;
  block[3] = &unk_278FD1290;
  block[4] = self;
  block[5] = &v7;
  block[6] = error;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __69__ENExposureDetectionDaemonSession_getAnalysisSessionAndReturnError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getAnalysisSessionAndReturnError:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)getBeaconCountMetricsAndReturnError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ENExposureDetectionDaemonSession_getBeaconCountMetricsAndReturnError___block_invoke;
  block[3] = &unk_278FD1290;
  block[4] = self;
  block[5] = &v7;
  block[6] = error;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __72__ENExposureDetectionDaemonSession_getBeaconCountMetricsAndReturnError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getBeaconCountMetricsAndReturnError:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)getSummaryAndReturnError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ENExposureDetectionDaemonSession_getSummaryAndReturnError___block_invoke;
  block[3] = &unk_278FD1290;
  block[4] = self;
  block[5] = &v7;
  block[6] = error;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __61__ENExposureDetectionDaemonSession_getSummaryAndReturnError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getSummaryAndReturnError:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_getSummaryAndReturnError:(id *)error
{
  v100[2] = *MEMORY[0x277D85DE8];
  v4 = [(ENExposureDetectionDaemonSession *)self _getAnalysisSessionAndReturnError:error];
  v58 = v4;
  if (v4)
  {
    configuration = [v4 configuration];
    v100[0] = 0;
    v100[1] = 0;
    v98[0] = 0;
    v98[1] = v98;
    v98[2] = 0x2020000000;
    v98[3] = v100;
    daysSinceLastExposureThreshold = [configuration daysSinceLastExposureThreshold];
    v94 = 0;
    v95 = &v94;
    v96 = 0x2020000000;
    v97 = 0;
    v57 = objc_alloc_init(MEMORY[0x277CBEB30]);
    matchedKeyCount = [(ENExposureDetectionDaemonSessionStatistics *)self->_statistics matchedKeyCount];
    v90 = 0;
    v91 = &v90;
    v92 = 0x2020000000;
    v93 = 0;
    minimumRiskScore = [configuration minimumRiskScore];
    [configuration minimumRiskScoreFullRange];
    v9 = v8;
    v85 = 0;
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0;
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    exposureCalculationSession = self->_exposureCalculationSession;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __62__ENExposureDetectionDaemonSession__getSummaryAndReturnError___block_invoke;
    v72[3] = &unk_278FD13F0;
    v72[6] = &v78;
    v72[7] = &v94;
    v73 = minimumRiskScore;
    *&v72[14] = Current;
    v72[15] = v9;
    v72[8] = &v90;
    v72[9] = &v86;
    v72[10] = &v82;
    v72[11] = &v74;
    v72[12] = v98;
    v72[13] = daysSinceLastExposureThreshold;
    v72[4] = v58;
    v72[5] = v57;
    [(ENExposureCalculationSession *)exposureCalculationSession enumerateCachedExposureInfo:v72];
    v56 = objc_alloc_init(MEMORY[0x277CC5C58]);
    if (([configuration flags] & 2) != 0)
    {
      v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v14 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && gLogCategory_ENExposureDetectionDaemonSession <= 30 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
      {
        v43 = [v57 count];
        v47 = configuration;
        LogPrintF_safe();
      }

      [v57 allValues];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      obj = v69 = 0u;
      v23 = [obj countByEnumeratingWithState:&v68 objects:v99 count:16];
      if (v23)
      {
        v24 = *v69;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v69 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v68 + 1) + 8 * i);
            [v26 roundDurations];
            v62 = 0;
            v63 = &v62;
            v64 = 0x3032000000;
            v65 = __Block_byref_object_copy__2;
            v66 = __Block_byref_object_dispose__2;
            v67 = 0;
            v61[0] = MEMORY[0x277D85DD0];
            v61[1] = 3221225472;
            v61[2] = __62__ENExposureDetectionDaemonSession__getSummaryAndReturnError___block_invoke_2;
            v61[3] = &unk_278FD1418;
            v61[4] = &v62;
            v27 = MEMORY[0x24C214430](v61);
            daySummary = [v26 daySummary];
            (v27)[2](v27, "Overall", daySummary);

            confirmedTestSummary = [v26 confirmedTestSummary];
            (v27)[2](v27, ", CTest", confirmedTestSummary);

            confirmedClinicalDiagnosisSummary = [v26 confirmedClinicalDiagnosisSummary];
            (v27)[2](v27, ", CClin", confirmedClinicalDiagnosisSummary);

            recursiveSummary = [v26 recursiveSummary];
            (v27)[2](v27, ", Recur", recursiveSummary);

            selfReportedSummary = [v26 selfReportedSummary];
            (v27)[2](v27, ", SelfR", selfReportedSummary);

            v33 = +[ENLoggingPrefs sharedENLoggingPrefs];
            LODWORD(v26) = [v33 isSensitiveLoggingAllowed];

            if (v26 && gLogCategory_ENExposureDetectionDaemonSession <= 30 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
            {
              v46 = v63[5];
              v50 = configuration;
              LogPrintF_safe();
            }

            _Block_object_dispose(&v62, 8);
          }

          v23 = [obj countByEnumeratingWithState:&v68 objects:v99 count:16];
        }

        while (v23);
      }

      v20 = obj;
      [v56 setDaySummaries:obj];
    }

    else
    {
      v12 = v79[3];
      if (v12 <= 0.0)
      {
        v13 = 0;
      }

      else
      {
        v13 = ((Current - v12) / 86400.0);
      }

      NSAppendPrintF_safe();
      v16 = 0;
      for (j = 0; j != 16; j += 4)
      {
        if (j)
        {
          v18 = ", ";
        }

        else
        {
          v18 = "";
        }

        v44 = v18;
        v48 = *(v100 + j);
        NSAppendPrintF_safe();
        v19 = v16;

        v16 = v19;
      }

      NSAppendPrintF_safe();
      v20 = v19;

      v21 = [ENLoggingPrefs sharedENLoggingPrefs:v44];
      isSensitiveLoggingAllowed2 = [v21 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed2 && gLogCategory_ENExposureDetectionDaemonSession <= 30 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
      {
        v54 = v20;
        v55 = configuration;
        v52 = v91[3];
        v53 = v95[3];
        v49 = v13;
        v51 = *(v87 + 24);
        v45 = matchedKeyCount;
        LogPrintF_safe();
      }

      attenuationDurationThresholds = [configuration attenuationDurationThresholds];
      if (([attenuationDurationThresholds count] + 1) > 3)
      {
        v37 = 4;
      }

      else
      {
        attenuationDurationThresholds2 = [configuration attenuationDurationThresholds];
        v36 = [attenuationDurationThresholds2 count];

        v37 = v36 + 1;
      }

      v38 = [objc_alloc(MEMORY[0x277CBEB10]) initWithCapacity:v37];
      if (v37)
      {
        for (k = 0; k != v37; ++k)
        {
          v40 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:60 * ((*(v100 + k) + 59) / 0x3Cu)];
          [v38 setObject:v40 atIndexedSubscript:k];
        }
      }

      [v56 setAttenuationDurations:v38];
      [v56 setDaysSinceLastExposure:v13];
      [v56 setMatchedKeyCount:matchedKeyCount];
      [v56 setMaximumRiskScore:*(v87 + 24)];
      [v56 setMaximumRiskScoreFullRange:v83[3]];
      [v56 setRiskScoreSumFullRange:v75[3]];
    }

    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v86, 8);
    _Block_object_dispose(&v90, 8);

    _Block_object_dispose(&v94, 8);
    _Block_object_dispose(v98, 8);
  }

  else
  {
    v56 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v56;
}

void __62__ENExposureDetectionDaemonSession__getSummaryAndReturnError___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    v37 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        v9 = [v8 date];
        [v9 timeIntervalSinceReferenceDate];
        v11 = v10;
        v12 = *(*(a1 + 48) + 8);
        if (v10 > *(v12 + 24))
        {
          *(v12 + 24) = v10;
        }

        if (*(a1 + 104) >= 1)
        {
          v13 = [v8 date];
          v14 = v13;
          if (v13)
          {
            v15 = *(a1 + 112);
            [v13 timeIntervalSinceReferenceDate];
            v17 = v15 - v16;
            if (v17 > 9.22337204e18)
            {
              v17 = 9.22337204e18;
            }

            if (v17 < 0.0)
            {
              v17 = 0.0;
            }

            if (*(a1 + 104) < (v17 / 86400.0))
            {
              ++*(*(*(a1 + 56) + 8) + 24);

              goto LABEL_46;
            }
          }
        }

        v38 = 0;
        [*(a1 + 32) estimateRiskWithExposureInfo:v8 referenceTime:0 transmissionRiskLevel:&v38 skip:*(a1 + 112)];
        if ((v38 & 1) == 0)
        {
          v19 = v18;
          v20 = +[ENLoggingPrefs sharedENLoggingPrefs];
          v21 = [v20 isSensitiveLoggingAllowed];

          if (v21 && gLogCategory_ENExposureDetectionDaemonSession <= 10 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
          {
            v36 = v19;
            v35 = v8;
            LogPrintF_safe();
          }

          if (v19 <= 255.0)
          {
            v22 = v19;
          }

          else
          {
            v22 = 255.0;
          }

          if (v22 < 0.0)
          {
            v22 = 0.0;
          }

          v23 = v22;
          if (*(a1 + 128) <= v22 && v19 >= *(a1 + 120))
          {
            v24 = *(*(a1 + 72) + 8);
            if (*(v24 + 24) < v23)
            {
              *(v24 + 24) = v23;
            }

            v25 = *(*(a1 + 80) + 8);
            if (v19 > *(v25 + 24))
            {
              *(v25 + 24) = v19;
            }

            *(*(*(a1 + 88) + 8) + 24) = v19 + *(*(*(a1 + 88) + 8) + 24);
            v26 = [v8 attenuationDurations];
            if ([v26 count] >= 4)
            {
              for (j = 0; j != 4; ++j)
              {
                v28 = *(*(*(*(a1 + 96) + 8) + 24) + 4 * j);
                if (v28 <= 0x707)
                {
                  v29 = [v26 objectAtIndexedSubscript:j];
                  v30 = [v29 unsignedIntValue] + v28;

                  if (v30 >= 0x708)
                  {
                    v31 = 1800;
                  }

                  else
                  {
                    v31 = v30;
                  }

                  *(*(*(*(a1 + 96) + 8) + 24) + 4 * j) = v31;
                }
              }
            }

            v32 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(v11 / 86400.0)];
            v33 = [*(a1 + 40) objectForKeyedSubscript:v32];
            if (!v33)
            {
              v33 = objc_alloc_init(MEMORY[0x277CC5C30]);
              [v33 setDate:v9];
              [*(a1 + 40) setObject:v33 forKeyedSubscript:v32];
            }

            [*(a1 + 32) updateDaySummary:v33 exposureInfo:v8 score:v19];

            v3 = v37;
          }

          else
          {
            ++*(*(*(a1 + 64) + 8) + 24);
          }
        }

LABEL_46:
      }

      v5 = [v3 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v5);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __62__ENExposureDetectionDaemonSession__getSummaryAndReturnError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = *(*(a1 + 32) + 8);
    obj = *(v3 + 40);
    v4 = a3;
    [v4 scoreSum];
    [v4 maximumScore];
    [v4 weightedDurationSum];

    NSAppendPrintF_safe();
    objc_storeStrong((v3 + 40), obj);
  }
}

- (void)_updateStatisticsWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = self->_statistics;
  v5 = v4;
  if (self->_shouldCopyStatistics)
  {
    v6 = [(ENExposureDetectionDaemonSessionStatistics *)v4 copy];

    v5 = v6;
  }

  handlerCopy[2](handlerCopy, v5);
  statistics = self->_statistics;
  self->_statistics = v5;
  v8 = v5;

  self->_shouldCopyStatistics = 0;
  [(ENExposureDetectionHistorySession *)self->_historySession setMatchCount:[(ENExposureDetectionDaemonSessionStatistics *)v8 matchedKeyCount]];
  [(ENExposureDetectionHistorySession *)self->_historySession setFileCount:[(ENExposureDetectionDaemonSessionStatistics *)v8 processedFileCount]];
}

- (id)description
{
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  NSAppendPrintF_safe();
  v3 = 0;

  return 0;
}

- (BOOL)prepareConfiguration:(id)configuration bundleIdentifier:(id)identifier nowDate:(id)date expiryInterval:(double)interval error:(id *)error
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  dateCopy = date;
  identifierCopy = [MEMORY[0x277CCACA0] stringWithFormat:@"ENExposureDetectionDaemonSessionState.%@", identifierCopy];
  exposureDatabase = self->_exposureDatabase;
  v46 = 0;
  v17 = [(ENExposureDatabase *)exposureDatabase getValue:&v46 forKey:identifierCopy ofClass:objc_opt_class() error:error];
  v18 = v46;
  v19 = v18;
  if (!v17)
  {
    v37 = 0;
    goto LABEL_34;
  }

  if (!v18)
  {
    v19 = objc_alloc_init(ENExposureDetectionDaemonSessionState);
  }

  infectiousnessForDaysSinceOnsetOfSymptoms = [configurationCopy infectiousnessForDaysSinceOnsetOfSymptoms];
  infectiousnessForDaysSinceOnsetOfSymptoms2 = [(ENExposureDetectionDaemonSessionState *)v19 infectiousnessForDaysSinceOnsetOfSymptoms];
  v22 = infectiousnessForDaysSinceOnsetOfSymptoms;
  v23 = infectiousnessForDaysSinceOnsetOfSymptoms2;
  v24 = v23;
  if (v22 == v23)
  {

LABEL_31:
    [configurationCopy setInfectiousnessForDaysSinceOnsetOfSymptoms:{v24, v39, v40, v41, v42}];
    goto LABEL_32;
  }

  errorCopy = error;
  if ((v22 != 0) != (v23 == 0))
  {
    v25 = [v22 isEqual:v23];

    if (v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  infectiousnessForDaysSinceOnsetOfSymptomsChangeDate = [(ENExposureDetectionDaemonSessionState *)v19 infectiousnessForDaysSinceOnsetOfSymptomsChangeDate];
  if (infectiousnessForDaysSinceOnsetOfSymptomsChangeDate)
  {
    v27 = infectiousnessForDaysSinceOnsetOfSymptomsChangeDate;
    [dateCopy timeIntervalSinceDate:infectiousnessForDaysSinceOnsetOfSymptomsChangeDate];
    if (v28 < interval && [v24 count])
    {
      client = self->_client;
      if (client)
      {
        v30 = [(ENXPCClient *)client accessLevel]> 2;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 1;
    }

    if (gLogCategory_ENExposureDetectionDaemonSession <= 50 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
    {
      if (v30)
      {
        v31 = "Using";
      }

      else
      {
        v31 = "Ignoring";
      }

      v32 = "using";
      if (v30)
      {
        v32 = "overriding";
      }

      v43 = v32;
      v44 = v31;
      CUPrintDurationDouble();
      v42 = v41 = v43;
      v39 = v44;
      v40 = identifierCopy;
      LogPrintF_safe();
    }

    if (!v30)
    {
      goto LABEL_31;
    }
  }

  else if (gLogCategory_ENExposureDetectionDaemonSession <= 50 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
  {
    v39 = identifierCopy;
    LogPrintF_safe();
  }

  [(ENExposureDetectionDaemonSessionState *)v19 setInfectiousnessForDaysSinceOnsetOfSymptoms:v22, v39, v40, v41, v42];
  [(ENExposureDetectionDaemonSessionState *)v19 setInfectiousnessForDaysSinceOnsetOfSymptomsChangeDate:dateCopy];
  signingIdentity = [(ENXPCClient *)self->_client signingIdentity];
  [(ENExposureDetectionDaemonSessionState *)v19 setClientSigningIdentity:signingIdentity];

  region = [(ENRegionConfiguration *)self->_regionConfiguration region];
  [(ENExposureDetectionDaemonSessionState *)v19 setRegion:region];

  v35 = [dateCopy dateByAddingTimeInterval:-interval];
  v36 = [(ENExposureDatabase *)self->_exposureDatabase setValue:v19 forKey:identifierCopy expiryDate:v35 error:errorCopy];

  if (v36)
  {
LABEL_32:
    v37 = 1;
    goto LABEL_33;
  }

  v37 = 0;
LABEL_33:

LABEL_34:
  return v37;
}

- (BOOL)_classifyExposureWithResult:(id)result error:(id *)error
{
  v141 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  if (!self->_client)
  {
    if (![(ENExposureDetectionDaemonSession *)self _checkFinishedAndReturnError:error])
    {
      v6 = 0;
      goto LABEL_94;
    }

    v7 = self->_serverExposureConfiguration;
    v8 = v7;
    if (!v7)
    {
      if (error)
      {
        ENErrorF();
        *error = v6 = 0;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_93;
    }

    classificationCriteria = [(ENRegionServerExposureConfiguration *)v7 classificationCriteria];
    if (![classificationCriteria count])
    {
      if (error)
      {
        ENErrorF();
        *error = v6 = 0;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_92;
    }

    region = [(ENRegionConfiguration *)self->_regionConfiguration region];
    if (!region)
    {
      if (error)
      {
        ENErrorF();
        *error = v6 = 0;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_91;
    }

    summary = [resultCopy summary];
    v6 = summary != 0;
    if (!summary)
    {
LABEL_90:

LABEL_91:
LABEL_92:

LABEL_93:
      goto LABEL_94;
    }

    v120 = v8;
    selfCopy = self;
    v119 = summary != 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v118 = summary;
    obj = [summary daySummaries];
    v125 = [obj countByEnumeratingWithState:&v135 objects:v140 count:16];
    v10 = 0;
    if (v125)
    {
      v123 = *v136;
      do
      {
        v11 = 0;
        do
        {
          if (*v136 != v123)
          {
            objc_enumerationMutation(obj);
          }

          v126 = v11;
          v12 = *(*(&v135 + 1) + 8 * v11);
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v128 = classificationCriteria;
          v13 = [v128 countByEnumeratingWithState:&v131 objects:v139 count:16];
          if (v13)
          {
            v14 = v13;
            v130 = *v132;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v132 != v130)
                {
                  objc_enumerationMutation(v128);
                }

                v16 = *(*(&v131 + 1) + 8 * i);
                if (v10)
                {
                  index = [v10 index];
                  if (index < [v16 index])
                  {
                    continue;
                  }
                }

                v18 = objc_alloc_init(MEMORY[0x277CC5C20]);
                perDaySumERVThreshold = [v16 perDaySumERVThreshold];
                daySummary = [v12 daySummary];
                [daySummary scoreSum];
                v22 = v21;

                if (perDaySumERVThreshold && v22 >= perDaySumERVThreshold)
                {
                  v23 = OUTLINED_FUNCTION_1_0();
                  v25 = [v24 numberWithDouble:v23];
                  [v18 setPerDaySumERVAboveThreshold:v25];
                }

                perDayMaxERVThreshold = [v16 perDayMaxERVThreshold];
                daySummary2 = [v12 daySummary];
                [daySummary2 maximumScore];
                v29 = v28;

                if (perDayMaxERVThreshold && v29 >= perDayMaxERVThreshold)
                {
                  v30 = OUTLINED_FUNCTION_1_0();
                  v32 = [v31 numberWithDouble:v30];
                  [v18 setPerDaySumERVAboveThreshold:v32];
                }

                perDaySumERVThresholdsByDiagnosisReportType = [v16 perDaySumERVThresholdsByDiagnosisReportType];
                v34 = [perDaySumERVThresholdsByDiagnosisReportType objectForKeyedSubscript:&unk_285D6E390];
                [v34 doubleValue];
                v36 = v35;

                confirmedTestSummary = [v12 confirmedTestSummary];
                [confirmedTestSummary scoreSum];
                v39 = v38;

                if (v36 > 0.0 && v39 >= v36)
                {
                  v41 = OUTLINED_FUNCTION_1_0();
                  [v42 numberWithDouble:v41];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_0_3() setConfirmedTestPerDaySumERVAboveThreshold:?];
                }

                v43 = [perDaySumERVThresholdsByDiagnosisReportType objectForKeyedSubscript:&unk_285D6E3A8];
                [v43 doubleValue];
                v45 = v44;

                confirmedClinicalDiagnosisSummary = [v12 confirmedClinicalDiagnosisSummary];
                [confirmedClinicalDiagnosisSummary scoreSum];
                v48 = v47;

                if (v45 > 0.0 && v48 >= v45)
                {
                  v50 = OUTLINED_FUNCTION_1_0();
                  [v51 numberWithDouble:v50];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_0_3() setClinicalDiagnosisPerDaySumERVAboveThreshold:?];
                }

                v52 = [perDaySumERVThresholdsByDiagnosisReportType objectForKeyedSubscript:&unk_285D6E3C0];
                [v52 doubleValue];
                v54 = v53;

                recursiveSummary = [v12 recursiveSummary];
                [recursiveSummary scoreSum];
                v57 = v56;

                if (v54 > 0.0 && v57 >= v54)
                {
                  v59 = OUTLINED_FUNCTION_1_0();
                  [v60 numberWithDouble:v59];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_0_3() setRecursivePerDaySumERVAboveThreshold:?];
                }

                v61 = [perDaySumERVThresholdsByDiagnosisReportType objectForKeyedSubscript:&unk_285D6E3D8];
                [v61 doubleValue];
                v63 = v62;

                selfReportedSummary = [v12 selfReportedSummary];
                [selfReportedSummary scoreSum];
                v66 = v65;

                if (v63 > 0.0 && v66 >= v63)
                {
                  v68 = OUTLINED_FUNCTION_1_0();
                  [v69 numberWithDouble:v68];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_0_3() setSelfReportPerDaySumERVAboveThreshold:?];
                }

                weightedDurationAtAttenuationThreshold = [v16 weightedDurationAtAttenuationThreshold];
                daySummary3 = [v12 daySummary];
                [daySummary3 weightedDurationSum];
                v73 = v72;

                if (weightedDurationAtAttenuationThreshold && v73 >= weightedDurationAtAttenuationThreshold)
                {
                  v74 = OUTLINED_FUNCTION_1_0();
                  [v75 numberWithDouble:v74];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3() setWeightedDurationAtAttenuationAboveThreshold:?];
                }

                if ([v18 anyThresholdsExceeded])
                {
                  exposureClassification = [resultCopy exposureClassification];
                  date = [exposureClassification date];

                  if (!date || ([v12 date], exposureClassification = objc_claimAutoreleasedReturnValue(), objc_msgSend(exposureClassification, "timeIntervalSinceReferenceDate"), v79 = v78, objc_msgSend(date, "timeIntervalSinceReferenceDate"), v81 = v80, exposureClassification, v79 > v81))
                  {
                    [v12 date];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3() setDate:?];

                    [v18 setIndex:{objc_msgSend(v16, "index")}];
                    [v16 classificationName];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3() setName:?];

                    [v18 setRegion:region];
                    v82 = v16;

                    [resultCopy setExposureClassification:v18];
                    v10 = v82;
                  }
                }
              }

              v14 = [v128 countByEnumeratingWithState:&v131 objects:v139 count:16];
            }

            while (v14);
          }

          v11 = v126 + 1;
        }

        while (v126 + 1 != v125);
        v125 = [obj countByEnumeratingWithState:&v135 objects:v140 count:16];
      }

      while (v125);
    }

    exposureClassification2 = [resultCopy exposureClassification];
    v84 = selfCopy;
    previousExposureClassification = selfCopy->_previousExposureClassification;
    v86 = exposureClassification2;
    v87 = previousExposureClassification;
    name = [v86 name];
    name2 = [(ENExposureClassification *)v87 name];
    v90 = name;
    v91 = name2;
    v92 = v91;
    if (v90 == v91)
    {
    }

    else
    {
      v93 = v91;
      v94 = v90;
      if ((v90 != 0) == (v91 == 0))
      {
LABEL_77:

LABEL_78:
LABEL_79:
        statistics = [resultCopy statistics];
        v8 = v120;
        v6 = v119;
        if (![statistics revokedKeyCount] || (v108 = objc_msgSend(statistics, "matchedKeyCount"), v86) || v108)
        {
          v106 = 2;
        }

        else
        {
          v106 = 3;
        }

        goto LABEL_84;
      }

      v95 = [v90 isEqual:v91];

      if (!v95)
      {
        goto LABEL_78;
      }
    }

    region2 = [v86 region];
    region3 = [(ENExposureClassification *)v87 region];
    v94 = region2;
    v98 = region3;
    v93 = v98;
    if (v94 == v98)
    {
    }

    else
    {
      v99 = v98;
      v100 = v94;
      if ((v94 != 0) == (v98 == 0))
      {
LABEL_75:

LABEL_76:
        v84 = selfCopy;
        goto LABEL_77;
      }

      v101 = [v94 isEqual:v98];

      if (!v101)
      {
        goto LABEL_76;
      }
    }

    date2 = [v86 date];
    date3 = [(ENExposureClassification *)v87 date];
    v100 = date2;
    v104 = date3;
    v99 = v104;
    if (v100 == v104)
    {

      v106 = 1;
      statistics = v86;
      v8 = v120;
      v84 = selfCopy;
      v6 = v119;
LABEL_84:

LABEL_85:
      [resultCopy setExposureClassificationStatus:v106];
      name3 = [v86 name];
      [(ENExposureDetectionHistorySession *)v84->_historySession setExposureClassificationIdentifier:name3];

      v110 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v110 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed)
      {
        if (gLogCategory_ENExposureDetectionDaemonSession <= 30)
        {
          if (gLogCategory_ENExposureDetectionDaemonSession != -1 || (v112 = _LogCategory_Initialize(), v112))
          {
            v115 = __70__ENExposureDetectionDaemonSession__classifyExposureWithResult_error___block_invoke(v112, v84->_previousExposureClassification);
            exposureClassification3 = [resultCopy exposureClassification];
            v117 = __70__ENExposureDetectionDaemonSession__classifyExposureWithResult_error___block_invoke(exposureClassification3, exposureClassification3);
            LogPrintF_safe();
          }
        }
      }

      summary = v118;
      goto LABEL_90;
    }

    if ((v100 != 0) != (v104 == 0))
    {
      v105 = [v100 isEqual:v104];

      v84 = selfCopy;
      if (v105)
      {
        v106 = 1;
        v8 = v120;
        v6 = v119;
        goto LABEL_85;
      }

      goto LABEL_79;
    }

    goto LABEL_75;
  }

  v6 = 1;
LABEL_94:

  v113 = *MEMORY[0x277D85DE8];
  return v6;
}

__CFString *__70__ENExposureDetectionDaemonSession__classifyExposureWithResult_error___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = MEMORY[0x277CCACA0];
    v3 = a2;
    v4 = [v3 region];
    v5 = [v3 name];
    v6 = [v3 date];

    v7 = [v2 stringWithFormat:@"%@ (%@) %@", v4, v5, v6];
  }

  else
  {
    v7 = @"<none>";
  }

  return v7;
}

- (id)_getAnalysisSessionAndReturnError:(id *)error
{
  if ([(ENExposureDetectionDaemonSession *)self _checkFinishedAndReturnError:error])
  {
    v4 = objc_alloc_init(MEMORY[0x277CC5C50]);
    [v4 setConfiguration:self->_sessionExposureConfiguration];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_getBeaconCountMetricsAndReturnError:(id *)error
{
  if ([(ENExposureDetectionDaemonSession *)self _checkFinishedAndReturnError:?])
  {
    date = [MEMORY[0x277CBEAA0] date];
    v6 = [date dateByAddingTimeInterval:-86400.0];
    v7 = [(ENAdvertisementDatabaseQuerySession *)self->_advertisementDatabaseQuerySession beaconCountMetricsWithStartDate:v6 endDate:date windowDuration:error error:900.0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_prepareExposureCalculationSessionWithError:(id *)error
{
  p_exposureCalculationSession = &self->_exposureCalculationSession;
  exposureCalculationSession = self->_exposureCalculationSession;
  if (exposureCalculationSession)
  {
    v5 = exposureCalculationSession;
    goto LABEL_19;
  }

  if ([(ENExposureDetectionDaemonSession *)self _checkPreparedAndReturnError:?])
  {
    v8 = self->_sessionExposureConfiguration;
    if (!v8)
    {
      if (error)
      {
        ENErrorF();
        *error = v5 = 0;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_18;
    }

    v9 = self->_advertisementDatabaseQuerySession;
    v10 = v9;
    if (v9)
    {
      storedAdvertisementCount = [(ENAdvertisementDatabaseQuerySession *)v9 storedAdvertisementCount];
      if (!self->_useCache || [(ENExposureDatabase *)self->_exposureDatabase getAdvertisementCount:&storedAdvertisementCount error:error])
      {
        v11 = [ENExposureCalculationSession alloc];
        attenuationThreshold = [(ENAdvertisementDatabaseQuerySession *)v10 attenuationThreshold];
        v13 = [(ENExposureCalculationSession *)v11 initWithAttenuationThreshold:attenuationThreshold capacity:storedAdvertisementCount];
        if (v13)
        {
          [(ENRegionServerConfiguration *)self->_regionServerConfiguration rpiDuplicateAdvertisementTolerance];
          if (v14 == 0.0)
          {
            v15 = 1200.0;
          }

          else
          {
            v15 = v14;
          }

          numberOfAdvSamplesForRPIThreshold = [(ENRegionServerConfiguration *)self->_regionServerConfiguration numberOfAdvSamplesForRPIThreshold];
          if (numberOfAdvSamplesForRPIThreshold <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = numberOfAdvSamplesForRPIThreshold;
          }

          [(ENExposureCalculationSession *)v13 setAllowRecursiveReportType:([(ENExposureConfiguration *)v8 flags]>> 2) & 1];
          [(ENExposureCalculationSession *)v13 setExposureConfiguration:v8];
          v18 = [MEMORY[0x277CCABA8] numberWithDouble:v15];
          [(ENExposureCalculationSession *)v13 setAllowedRPIBroadcastDuration:v18];

          v19 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v17];
          [(ENExposureCalculationSession *)v13 setAdvertisementSampleCountThreshold:v19];

          [(ENExposureCalculationSession *)v13 setCacheExposureInfo:1];
          [(ENExposureCalculationSession *)v13 setCacheExposureWindows:1];
          objc_storeStrong(p_exposureCalculationSession, v13);
          v5 = self->_exposureCalculationSession;
        }

        else if (error)
        {
          ENErrorF();
          *error = v5 = 0;
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_17;
      }
    }

    else if (error)
    {
      ENErrorF();
      *error = v5 = 0;
LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

    v5 = 0;
    goto LABEL_17;
  }

  v5 = 0;
LABEL_19:

  return v5;
}

- (void)_signpostBegin
{
  if (!self->_signpostID)
  {
    v3 = LogCategoryCopyOSLogHandle();
    self->_signpostID = os_signpost_id_generate(v3);
    v4 = v3;
    v5 = v4;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_24A1F2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "ExposureDetectionSession", "", v7, 2u);
    }
  }
}

- (void)_signpostEnd
{
  if (self->_signpostID)
  {
    v3 = LogCategoryCopyOSLogHandle();
    v4 = v3;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_24A1F2000, v4, OS_SIGNPOST_INTERVAL_END, signpostID, "ExposureDetectionSession", "", v6, 2u);
    }

    self->_signpostID = 0;
  }
}

- (void)_prepareAndReturnError:(void *)result .cold.2(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENNestedErrorF();
    *v1 = result;
  }

  return result;
}

- (void)_addMatchesFromFileSession:(uint64_t)a1 publicKey:endpoint:error:.cold.1(uint64_t a1)
{
  *(a1 + 36);
  v1 = CUPrintNSError();
  LogPrintF_safe();
}

- (uint64_t)_addMatchesFromFileSession:(uint64_t)result publicKey:endpoint:error:.cold.2(uint64_t result)
{
  v1 = result;
  if (gLogCategory__ENExposureDetectionDaemonSession <= 90)
  {
    if (gLogCategory__ENExposureDetectionDaemonSession != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

void __88__ENExposureDetectionDaemonSession__addMatchesFromFileSession_publicKey_endpoint_error___block_invoke_2_cold_1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)_addFileToHistoryWithHash:metadata:endpoint:keyCount:matchCount:.cold.2()
{
  if (gLogCategory__ENExposureDetectionDaemonSession <= 90 && (gLogCategory__ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)_addFileToHistoryWithHash:metadata:endpoint:keyCount:matchCount:.cold.3()
{
  if (gLogCategory__ENExposureDetectionDaemonSession <= 90 && (gLogCategory__ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_0_2();
  }
}

- (void)_verifySignatureForFileSession:(void *)result publicKey:(void *)a2 error:.cold.1(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    result = __83__ENExposureDetectionDaemonSession__verifySignatureForFileSession_publicKey_error___block_invoke(result, a2, @"Signature verification failed");
    *v2 = result;
  }

  return result;
}

- (void)_checkPreparedAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF();
    *v1 = result;
  }

  return result;
}

- (void)_checkFinishedAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF();
    *v1 = result;
  }

  return result;
}

- (uint64_t)_finishAndReturnError:(void *)a1 .cold.2(void *a1)
{
  objc_opt_class();
  [a1 cachedExposureInfoCount];
  [a1 cachedExposureWindowCount];
  return LogPrintF_safe();
}

@end