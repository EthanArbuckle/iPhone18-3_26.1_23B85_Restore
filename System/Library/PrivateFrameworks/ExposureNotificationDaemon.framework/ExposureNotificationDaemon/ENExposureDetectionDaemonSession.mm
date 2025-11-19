@interface ENExposureDetectionDaemonSession
- (BOOL)_addMatchesFromFileSession:(id)a3 publicKey:(id)a4 endpoint:(id)a5 error:(id *)a6;
- (BOOL)_checkFinishedAndReturnError:(id *)a3;
- (BOOL)_checkPreparedAndReturnError:(id *)a3;
- (BOOL)_classifyExposureWithResult:(id)a3 error:(id *)a4;
- (BOOL)_prepareAndReturnError:(id *)a3;
- (BOOL)_shouldMatchPersistenKey:(id)a3;
- (BOOL)_verifySignatureForFileSession:(id)a3 publicKey:(id)a4 error:(id *)a5;
- (BOOL)addMatchesFromFileSession:(id)a3 publicKey:(id)a4 endpoint:(id)a5 error:(id *)a6;
- (BOOL)classifyExposureWithResult:(id)a3 error:(id *)a4;
- (BOOL)prepareAndReturnError:(id *)a3;
- (BOOL)prepareConfiguration:(id)a3 bundleIdentifier:(id)a4 nowDate:(id)a5 expiryInterval:(double)a6 error:(id *)a7;
- (ENExposureDetectionDaemonSession)initWithQueue:(id)a3;
- (id)_finishAndReturnError:(id *)a3;
- (id)_getAnalysisSessionAndReturnError:(id *)a3;
- (id)_getBeaconCountMetricsAndReturnError:(id *)a3;
- (id)_getSummaryAndReturnError:(id *)a3;
- (id)_prepareExposureCalculationSessionWithError:(id *)a3;
- (id)description;
- (id)finishAndReturnError:(id *)a3;
- (id)getAnalysisSessionAndReturnError:(id *)a3;
- (id)getBeaconCountMetricsAndReturnError:(id *)a3;
- (id)getSummaryAndReturnError:(id *)a3;
- (void)_addFileToHistoryWithHash:(id)a3 metadata:(id)a4 endpoint:(id)a5 keyCount:(unint64_t)a6 matchCount:(unint64_t)a7;
- (void)_invalidate;
- (void)_signpostBegin;
- (void)_signpostEnd;
- (void)_updateStatisticsWithHandler:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ENExposureDetectionDaemonSession

- (ENExposureDetectionDaemonSession)initWithQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ENExposureDetectionDaemonSession;
  v6 = [(ENExposureDetectionDaemonSession *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, a3);
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

- (BOOL)prepareAndReturnError:(id *)a3
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
  block[6] = a3;
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

- (BOOL)_prepareAndReturnError:(id *)a3
{
  if (!self->_prepared)
  {
    [(ENExposureDetectionDaemonSession *)self _signpostBegin];
    sessionDate = self->_sessionDate;
    if (sessionDate)
    {
      v7 = sessionDate;
    }

    else
    {
      v7 = [MEMORY[0x277CBEAA0] date];
    }

    v8 = v7;
    obj = v7;
    if (self->_advertisementDatabaseQuerySession)
    {
      exposureDatabase = self->_exposureDatabase;
      if (exposureDatabase)
      {
        if ([(ENExposureDatabase *)exposureDatabase openWithError:a3])
        {
          v10 = self->_client;
          v11 = [(ENRegionConfiguration *)self->_regionConfiguration region];
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

          v32 = v11;
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
                  v20 = [(ENXPCClient *)v10 signingIdentity];
                  goto LABEL_28;
                }

                if (a3)
                {
                  v31 = ENErrorF();
                  v20 = 0;
                  goto LABEL_51;
                }

                goto LABEL_56;
              }

              v18 = [(ENExposureConfiguration *)v17 infectiousnessForDaysSinceOnsetOfSymptoms];
              v19 = [v18 count];

              if (v19)
              {
                [(ENExposureConfiguration *)v17 setFlags:[(ENExposureConfiguration *)v17 flags]| 3];
                goto LABEL_17;
              }

              if (!a3)
              {
LABEL_56:
                v20 = 0;
                goto LABEL_57;
              }

              v21 = NSStringFromSelector(sel_infectiousnessForDaysSinceOnsetOfSymptoms);
              *a3 = ENErrorF();
LABEL_55:

              goto LABEL_56;
            }

            if (a3)
            {
              goto LABEL_50;
            }
          }

          else if (v11)
          {
            if (v13)
            {
              v21 = [(ENRegionServerExposureConfiguration *)v13 exposureConfigurationValues];
              v22 = [objc_alloc(MEMORY[0x277CC5C28]) initWithDictionary:v21 error:a3];
              v17 = v22;
              if (v22)
              {
                [(ENExposureConfiguration *)v22 setFlags:3];
                if ([(ENRegionServerExposureConfiguration *)v13 enableRecursiveReportType]&& gLogCategory__ENExposureDetectionDaemonSession <= 90 && (gLogCategory__ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
                {
                  [ENExposureDetectionDaemonSession _prepareAndReturnError:];
                }

                v23 = MEMORY[0x277CCACA0];
                v24 = [v11 regionCode];
                v20 = [v23 stringWithFormat:@"com.apple.ExposureNotification.%@", v24];

                v8 = obj;
LABEL_28:
                if ([(ENExposureDetectionDaemonSession *)self prepareConfiguration:v17 bundleIdentifier:v20 nowDate:v8 expiryInterval:a3 error:v15])
                {
                  v25 = objc_alloc_init(MEMORY[0x277CC5C48]);
                  [v25 setDate:v8];
                  v26 = MGCopyAnswer();
                  [v25 setSystemBuildVersion:v26];

                  if (v10)
                  {
                    v27 = [(ENXPCClient *)v10 signingIdentity];
                    [v25 setAppBundleIdentifier:v27];
                  }

                  else
                  {
                    v27 = [(ENRegionConfiguration *)self->_regionConfiguration region];
                    [v25 setRegion:v27];
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
                    [ENExposureDetectionDaemonSession _prepareAndReturnError:a3];
                  }

                  goto LABEL_35;
                }

                goto LABEL_57;
              }

              goto LABEL_55;
            }

            if (a3)
            {
LABEL_50:
              v31 = ENErrorF();
              v20 = 0;
              v17 = 0;
LABEL_51:
              v3 = 0;
              *a3 = v31;
LABEL_35:

LABEL_36:
              return v3;
            }
          }

          else if (a3)
          {
            goto LABEL_50;
          }

          v20 = 0;
          v17 = 0;
LABEL_57:
          v3 = 0;
          goto LABEL_35;
        }

LABEL_43:
        v3 = 0;
        goto LABEL_36;
      }

      if (!a3)
      {
        goto LABEL_43;
      }
    }

    else if (!a3)
    {
      goto LABEL_43;
    }

    ENErrorF();
    *a3 = v3 = 0;
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

- (BOOL)addMatchesFromFileSession:(id)a3 publicKey:(id)a4 endpoint:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = &v24;
  v23 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
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

- (BOOL)_addMatchesFromFileSession:(id)a3 publicKey:(id)a4 endpoint:(id)a5 error:(id *)a6
{
  v85 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v40 = a5;
  v38 = a6;
  v46 = v10;
  v37 = v11;
  if (![(ENExposureDetectionDaemonSession *)self _checkPreparedAndReturnError:a6])
  {
    v30 = 0;
    goto LABEL_43;
  }

  v83 = 0;
  v47 = self;
  v12 = [(ENExposureDetectionDaemonSession *)self _verifySignatureForFileSession:v10 publicKey:v11 error:&v83];
  v39 = v83;
  v13 = self;
  if (!v12)
  {
    if (gLogCategory__ENExposureDetectionDaemonSession <= 90)
    {
      if (gLogCategory__ENExposureDetectionDaemonSession != -1 || (v13 = self, _LogCategory_Initialize()))
      {
        [ENExposureDetectionDaemonSession _addMatchesFromFileSession:v13 publicKey:? endpoint:? error:?];
        v13 = self;
      }
    }

    [(ENExposureDetectionDaemonSession *)v13 _updateStatisticsWithHandler:&__block_literal_global_2];
    v13 = self;
    if (!self->_skipFileSigningVerification)
    {
      if (a6)
      {
        v34 = v39;
        v30 = 0;
        *a6 = v39;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_42;
    }
  }

  v44 = v13->_advertisementDatabaseQuerySession;
  if (v13->_useCache)
  {
    v45 = 0;
    goto LABEL_11;
  }

  v45 = [(ENExposureDetectionDaemonSession *)v13 _prepareExposureCalculationSessionWithError:a6];
  v13 = self;
  if (v45)
  {
LABEL_11:
    [(ENRegionServerConfiguration *)v13->_regionServerConfiguration rpiAdvertisementTolerance];
    if (v14 == 0.0)
    {
      v15 = 7200.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v40 region];
    v43 = [v16 countryCode];

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
        [(ENExposureDetectionDaemonSession *)v47 _updateStatisticsWithHandler:v49];
        v32 = [v31 sha256Data];
        v33 = [v31 metadata];
        [(ENExposureDetectionDaemonSession *)v47 _addFileToHistoryWithHash:v32 metadata:v33 endpoint:v40 keyCount:v42 matchCount:v41];

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
      v60[4] = v47;
      v60[5] = v43;
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
        [(ENExposureDetectionDaemonSession *)v47 _updateStatisticsWithHandler:v51];
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
    if (v38)
    {
      v29 = v17;
      v30 = 0;
      *v38 = v17;
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

- (void)_addFileToHistoryWithHash:(id)a3 metadata:(id)a4 endpoint:(id)a5 keyCount:(unint64_t)a6 matchCount:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v12;
  if (v15)
  {
    v16 = self->_historySession;
    if (v16)
    {
      v17 = objc_alloc_init(MEMORY[0x277CC5C40]);
      [v17 setFileHash:v15];
      v18 = [MEMORY[0x277CBEAA0] date];
      [v17 setProcessDate:v18];

      [v17 setMetadata:v13];
      v19 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:a6];
      [v17 setKeyCount:v19];

      if (self->_useCache)
      {
        [v17 setMatchCount:0];
      }

      else
      {
        v20 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:a7];
        [v17 setMatchCount:v20];
      }

      client = self->_client;
      if (client)
      {
        v22 = [(ENXPCClient *)client signingIdentity];
        [v17 setSourceAppBundleIdentifier:v22];
      }

      else
      {
        v22 = [v14 region];
        [v17 setSourceRegion:v22];
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

- (BOOL)_verifySignatureForFileSession:(id)a3 publicKey:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 keyRef];
  if (v8)
  {
    v13 = 0;
    v9 = [v7 verifySignatureWithPublicKey:v8 error:&v13];
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
      [ENExposureDetectionDaemonSession _verifySignatureForFileSession:a5 publicKey:v10 error:?];
    }
  }

  else if (a5)
  {
    __83__ENExposureDetectionDaemonSession__verifySignatureForFileSession_publicKey_error___block_invoke(0, 0, @"Nil public key");
    *a5 = v11 = 0;
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

- (BOOL)_checkPreparedAndReturnError:(id *)a3
{
  prepared = self->_prepared;
  if (!prepared)
  {
    [ENExposureDetectionDaemonSession _checkPreparedAndReturnError:a3];
  }

  return prepared;
}

- (BOOL)_checkFinishedAndReturnError:(id *)a3
{
  finished = self->_finished;
  if (!finished)
  {
    [ENExposureDetectionDaemonSession _checkFinishedAndReturnError:a3];
  }

  return finished;
}

- (id)finishAndReturnError:(id *)a3
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
  block[6] = a3;
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

- (id)_finishAndReturnError:(id *)a3
{
  if (![(ENExposureDetectionDaemonSession *)self _checkPreparedAndReturnError:?])
  {
LABEL_42:
    v26 = 0;
    goto LABEL_34;
  }

  if (self->_finished)
  {
    if (a3)
    {
      ENErrorF();
      *a3 = v26 = 0;
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  v5 = [(ENExposureDetectionDaemonSession *)self _prepareExposureCalculationSessionWithError:a3];
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
  v8 = [(ENExposureDatabase *)exposureDatabase enumerateMatchedAdvertisementsWithError:a3 handler:v33];
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
    v13 = [v12 isSensitiveLoggingAllowed];

    if (v13 && gLogCategory_ENExposureDetectionDaemonSession <= 30 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDetectionDaemonSession _finishAndReturnError:?];
    }

    v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v15 = [v14 isSensitiveLoggingAllowed];

    if (v15 && gLogCategory_ENExposureDetectionDaemonSession <= 30 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDetectionDaemonSession _finishAndReturnError:v5];
    }

    self->_finished = 1;
    v16 = [(ENExposureDetectionDaemonSession *)self _getSummaryAndReturnError:a3];
    if (v16)
    {
      v17 = [(ENExposureDetectionDaemonSession *)self _getBeaconCountMetricsAndReturnError:a3];
      v18 = [v17 differentialPrivacyRepresentationWithCountThresholds:&unk_285D6E120];
      if (v18)
      {
        v19 = objc_alloc_init(ENExposureDetectionDaemonSessionResult);
        [(ENExposureDetectionDaemonSessionResult *)v19 setStatistics:self->_statistics];
        [(ENExposureDetectionDaemonSessionResult *)v19 setSummary:v16];
        v20 = [(ENRegionConfiguration *)self->_regionConfiguration region];
        [(ENExposureDetectionDaemonSessionResult *)v19 setRegion:v20];

        v21 = [v5 cachedExposuresDifferentialPrivacyRiskParameters];
        [(ENExposureDetectionDaemonSessionResult *)v19 setDifferentialPrivacyRiskParameters:v21];

        [(ENExposureDetectionDaemonSessionResult *)v19 setDifferentialPrivacyBeaconCount:v18];
        if ([(ENExposureDetectionDaemonSession *)self _classifyExposureWithResult:v19 error:a3])
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

      else if (a3)
      {
        ENErrorF();
        *a3 = v26 = 0;
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

- (BOOL)_shouldMatchPersistenKey:(id)a3
{
  v4 = a3;
  v5 = [(ENRegionConfiguration *)self->_regionConfiguration region];
  if ([(ENRegionServerExposureConfiguration *)self->_serverExposureConfiguration matchingRestrictedToRegion])
  {
    v6 = v5 == 0;
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
    v7 = [v4 regionCountryCode];
    v8 = [v5 countryCode];
    v9 = [v7 isEqualToString:v8];
  }

  return v9;
}

- (BOOL)classifyExposureWithResult:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
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

- (id)getAnalysisSessionAndReturnError:(id *)a3
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
  block[6] = a3;
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

- (id)getBeaconCountMetricsAndReturnError:(id *)a3
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
  block[6] = a3;
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

- (id)getSummaryAndReturnError:(id *)a3
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
  block[6] = a3;
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

- (id)_getSummaryAndReturnError:(id *)a3
{
  v100[2] = *MEMORY[0x277D85DE8];
  v4 = [(ENExposureDetectionDaemonSession *)self _getAnalysisSessionAndReturnError:a3];
  v58 = v4;
  if (v4)
  {
    v59 = [v4 configuration];
    v100[0] = 0;
    v100[1] = 0;
    v98[0] = 0;
    v98[1] = v98;
    v98[2] = 0x2020000000;
    v98[3] = v100;
    v5 = [v59 daysSinceLastExposureThreshold];
    v94 = 0;
    v95 = &v94;
    v96 = 0x2020000000;
    v97 = 0;
    v57 = objc_alloc_init(MEMORY[0x277CBEB30]);
    v6 = [(ENExposureDetectionDaemonSessionStatistics *)self->_statistics matchedKeyCount];
    v90 = 0;
    v91 = &v90;
    v92 = 0x2020000000;
    v93 = 0;
    v7 = [v59 minimumRiskScore];
    [v59 minimumRiskScoreFullRange];
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
    v73 = v7;
    *&v72[14] = Current;
    v72[15] = v9;
    v72[8] = &v90;
    v72[9] = &v86;
    v72[10] = &v82;
    v72[11] = &v74;
    v72[12] = v98;
    v72[13] = v5;
    v72[4] = v58;
    v72[5] = v57;
    [(ENExposureCalculationSession *)exposureCalculationSession enumerateCachedExposureInfo:v72];
    v56 = objc_alloc_init(MEMORY[0x277CC5C58]);
    if (([v59 flags] & 2) != 0)
    {
      v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v15 = [v14 isSensitiveLoggingAllowed];

      if (v15 && gLogCategory_ENExposureDetectionDaemonSession <= 30 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
      {
        v43 = [v57 count];
        v47 = v59;
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
            v28 = [v26 daySummary];
            (v27)[2](v27, "Overall", v28);

            v29 = [v26 confirmedTestSummary];
            (v27)[2](v27, ", CTest", v29);

            v30 = [v26 confirmedClinicalDiagnosisSummary];
            (v27)[2](v27, ", CClin", v30);

            v31 = [v26 recursiveSummary];
            (v27)[2](v27, ", Recur", v31);

            v32 = [v26 selfReportedSummary];
            (v27)[2](v27, ", SelfR", v32);

            v33 = +[ENLoggingPrefs sharedENLoggingPrefs];
            LODWORD(v26) = [v33 isSensitiveLoggingAllowed];

            if (v26 && gLogCategory_ENExposureDetectionDaemonSession <= 30 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
            {
              v46 = v63[5];
              v50 = v59;
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
      v22 = [v21 isSensitiveLoggingAllowed];

      if (v22 && gLogCategory_ENExposureDetectionDaemonSession <= 30 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
      {
        v54 = v20;
        v55 = v59;
        v52 = v91[3];
        v53 = v95[3];
        v49 = v13;
        v51 = *(v87 + 24);
        v45 = v6;
        LogPrintF_safe();
      }

      v34 = [v59 attenuationDurationThresholds];
      if (([v34 count] + 1) > 3)
      {
        v37 = 4;
      }

      else
      {
        v35 = [v59 attenuationDurationThresholds];
        v36 = [v35 count];

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
      [v56 setMatchedKeyCount:v6];
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

- (void)_updateStatisticsWithHandler:(id)a3
{
  v9 = a3;
  v4 = self->_statistics;
  v5 = v4;
  if (self->_shouldCopyStatistics)
  {
    v6 = [(ENExposureDetectionDaemonSessionStatistics *)v4 copy];

    v5 = v6;
  }

  v9[2](v9, v5);
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

- (BOOL)prepareConfiguration:(id)a3 bundleIdentifier:(id)a4 nowDate:(id)a5 expiryInterval:(double)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [MEMORY[0x277CCACA0] stringWithFormat:@"ENExposureDetectionDaemonSessionState.%@", v13];
  exposureDatabase = self->_exposureDatabase;
  v46 = 0;
  v17 = [(ENExposureDatabase *)exposureDatabase getValue:&v46 forKey:v15 ofClass:objc_opt_class() error:a7];
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

  v20 = [v12 infectiousnessForDaysSinceOnsetOfSymptoms];
  v21 = [(ENExposureDetectionDaemonSessionState *)v19 infectiousnessForDaysSinceOnsetOfSymptoms];
  v22 = v20;
  v23 = v21;
  v24 = v23;
  if (v22 == v23)
  {

LABEL_31:
    [v12 setInfectiousnessForDaysSinceOnsetOfSymptoms:{v24, v39, v40, v41, v42}];
    goto LABEL_32;
  }

  v45 = a7;
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

  v26 = [(ENExposureDetectionDaemonSessionState *)v19 infectiousnessForDaysSinceOnsetOfSymptomsChangeDate];
  if (v26)
  {
    v27 = v26;
    [v14 timeIntervalSinceDate:v26];
    if (v28 < a6 && [v24 count])
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
      v40 = v13;
      LogPrintF_safe();
    }

    if (!v30)
    {
      goto LABEL_31;
    }
  }

  else if (gLogCategory_ENExposureDetectionDaemonSession <= 50 && (gLogCategory_ENExposureDetectionDaemonSession != -1 || _LogCategory_Initialize()))
  {
    v39 = v13;
    LogPrintF_safe();
  }

  [(ENExposureDetectionDaemonSessionState *)v19 setInfectiousnessForDaysSinceOnsetOfSymptoms:v22, v39, v40, v41, v42];
  [(ENExposureDetectionDaemonSessionState *)v19 setInfectiousnessForDaysSinceOnsetOfSymptomsChangeDate:v14];
  v33 = [(ENXPCClient *)self->_client signingIdentity];
  [(ENExposureDetectionDaemonSessionState *)v19 setClientSigningIdentity:v33];

  v34 = [(ENRegionConfiguration *)self->_regionConfiguration region];
  [(ENExposureDetectionDaemonSessionState *)v19 setRegion:v34];

  v35 = [v14 dateByAddingTimeInterval:-a6];
  v36 = [(ENExposureDatabase *)self->_exposureDatabase setValue:v19 forKey:v15 expiryDate:v35 error:v45];

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

- (BOOL)_classifyExposureWithResult:(id)a3 error:(id *)a4
{
  v141 = *MEMORY[0x277D85DE8];
  v129 = a3;
  if (!self->_client)
  {
    if (![(ENExposureDetectionDaemonSession *)self _checkFinishedAndReturnError:a4])
    {
      v6 = 0;
      goto LABEL_94;
    }

    v7 = self->_serverExposureConfiguration;
    v8 = v7;
    if (!v7)
    {
      if (a4)
      {
        ENErrorF();
        *a4 = v6 = 0;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_93;
    }

    v124 = [(ENRegionServerExposureConfiguration *)v7 classificationCriteria];
    if (![v124 count])
    {
      if (a4)
      {
        ENErrorF();
        *a4 = v6 = 0;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_92;
    }

    v127 = [(ENRegionConfiguration *)self->_regionConfiguration region];
    if (!v127)
    {
      if (a4)
      {
        ENErrorF();
        *a4 = v6 = 0;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_91;
    }

    v9 = [v129 summary];
    v6 = v9 != 0;
    if (!v9)
    {
LABEL_90:

LABEL_91:
LABEL_92:

LABEL_93:
      goto LABEL_94;
    }

    v120 = v8;
    v121 = self;
    v119 = v9 != 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v118 = v9;
    obj = [v9 daySummaries];
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
          v128 = v124;
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
                  v17 = [v10 index];
                  if (v17 < [v16 index])
                  {
                    continue;
                  }
                }

                v18 = objc_alloc_init(MEMORY[0x277CC5C20]);
                v19 = [v16 perDaySumERVThreshold];
                v20 = [v12 daySummary];
                [v20 scoreSum];
                v22 = v21;

                if (v19 && v22 >= v19)
                {
                  v23 = OUTLINED_FUNCTION_1_0();
                  v25 = [v24 numberWithDouble:v23];
                  [v18 setPerDaySumERVAboveThreshold:v25];
                }

                v26 = [v16 perDayMaxERVThreshold];
                v27 = [v12 daySummary];
                [v27 maximumScore];
                v29 = v28;

                if (v26 && v29 >= v26)
                {
                  v30 = OUTLINED_FUNCTION_1_0();
                  v32 = [v31 numberWithDouble:v30];
                  [v18 setPerDaySumERVAboveThreshold:v32];
                }

                v33 = [v16 perDaySumERVThresholdsByDiagnosisReportType];
                v34 = [v33 objectForKeyedSubscript:&unk_285D6E390];
                [v34 doubleValue];
                v36 = v35;

                v37 = [v12 confirmedTestSummary];
                [v37 scoreSum];
                v39 = v38;

                if (v36 > 0.0 && v39 >= v36)
                {
                  v41 = OUTLINED_FUNCTION_1_0();
                  [v42 numberWithDouble:v41];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_0_3() setConfirmedTestPerDaySumERVAboveThreshold:?];
                }

                v43 = [v33 objectForKeyedSubscript:&unk_285D6E3A8];
                [v43 doubleValue];
                v45 = v44;

                v46 = [v12 confirmedClinicalDiagnosisSummary];
                [v46 scoreSum];
                v48 = v47;

                if (v45 > 0.0 && v48 >= v45)
                {
                  v50 = OUTLINED_FUNCTION_1_0();
                  [v51 numberWithDouble:v50];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_0_3() setClinicalDiagnosisPerDaySumERVAboveThreshold:?];
                }

                v52 = [v33 objectForKeyedSubscript:&unk_285D6E3C0];
                [v52 doubleValue];
                v54 = v53;

                v55 = [v12 recursiveSummary];
                [v55 scoreSum];
                v57 = v56;

                if (v54 > 0.0 && v57 >= v54)
                {
                  v59 = OUTLINED_FUNCTION_1_0();
                  [v60 numberWithDouble:v59];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_0_3() setRecursivePerDaySumERVAboveThreshold:?];
                }

                v61 = [v33 objectForKeyedSubscript:&unk_285D6E3D8];
                [v61 doubleValue];
                v63 = v62;

                v64 = [v12 selfReportedSummary];
                [v64 scoreSum];
                v66 = v65;

                if (v63 > 0.0 && v66 >= v63)
                {
                  v68 = OUTLINED_FUNCTION_1_0();
                  [v69 numberWithDouble:v68];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_0_3() setSelfReportPerDaySumERVAboveThreshold:?];
                }

                v70 = [v16 weightedDurationAtAttenuationThreshold];
                v71 = [v12 daySummary];
                [v71 weightedDurationSum];
                v73 = v72;

                if (v70 && v73 >= v70)
                {
                  v74 = OUTLINED_FUNCTION_1_0();
                  [v75 numberWithDouble:v74];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3() setWeightedDurationAtAttenuationAboveThreshold:?];
                }

                if ([v18 anyThresholdsExceeded])
                {
                  v76 = [v129 exposureClassification];
                  v77 = [v76 date];

                  if (!v77 || ([v12 date], v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v76, "timeIntervalSinceReferenceDate"), v79 = v78, objc_msgSend(v77, "timeIntervalSinceReferenceDate"), v81 = v80, v76, v79 > v81))
                  {
                    [v12 date];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3() setDate:?];

                    [v18 setIndex:{objc_msgSend(v16, "index")}];
                    [v16 classificationName];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3() setName:?];

                    [v18 setRegion:v127];
                    v82 = v16;

                    [v129 setExposureClassification:v18];
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

    v83 = [v129 exposureClassification];
    v84 = v121;
    previousExposureClassification = v121->_previousExposureClassification;
    v86 = v83;
    v87 = previousExposureClassification;
    v88 = [v86 name];
    v89 = [(ENExposureClassification *)v87 name];
    v90 = v88;
    v91 = v89;
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
        v107 = [v129 statistics];
        v8 = v120;
        v6 = v119;
        if (![v107 revokedKeyCount] || (v108 = objc_msgSend(v107, "matchedKeyCount"), v86) || v108)
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

    v96 = [v86 region];
    v97 = [(ENExposureClassification *)v87 region];
    v94 = v96;
    v98 = v97;
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
        v84 = v121;
        goto LABEL_77;
      }

      v101 = [v94 isEqual:v98];

      if (!v101)
      {
        goto LABEL_76;
      }
    }

    v102 = [v86 date];
    v103 = [(ENExposureClassification *)v87 date];
    v100 = v102;
    v104 = v103;
    v99 = v104;
    if (v100 == v104)
    {

      v106 = 1;
      v107 = v86;
      v8 = v120;
      v84 = v121;
      v6 = v119;
LABEL_84:

LABEL_85:
      [v129 setExposureClassificationStatus:v106];
      v109 = [v86 name];
      [(ENExposureDetectionHistorySession *)v84->_historySession setExposureClassificationIdentifier:v109];

      v110 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v111 = [v110 isSensitiveLoggingAllowed];

      if (v111)
      {
        if (gLogCategory_ENExposureDetectionDaemonSession <= 30)
        {
          if (gLogCategory_ENExposureDetectionDaemonSession != -1 || (v112 = _LogCategory_Initialize(), v112))
          {
            v115 = __70__ENExposureDetectionDaemonSession__classifyExposureWithResult_error___block_invoke(v112, v84->_previousExposureClassification);
            v116 = [v129 exposureClassification];
            v117 = __70__ENExposureDetectionDaemonSession__classifyExposureWithResult_error___block_invoke(v116, v116);
            LogPrintF_safe();
          }
        }
      }

      v9 = v118;
      goto LABEL_90;
    }

    if ((v100 != 0) != (v104 == 0))
    {
      v105 = [v100 isEqual:v104];

      v84 = v121;
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

- (id)_getAnalysisSessionAndReturnError:(id *)a3
{
  if ([(ENExposureDetectionDaemonSession *)self _checkFinishedAndReturnError:a3])
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

- (id)_getBeaconCountMetricsAndReturnError:(id *)a3
{
  if ([(ENExposureDetectionDaemonSession *)self _checkFinishedAndReturnError:?])
  {
    v5 = [MEMORY[0x277CBEAA0] date];
    v6 = [v5 dateByAddingTimeInterval:-86400.0];
    v7 = [(ENAdvertisementDatabaseQuerySession *)self->_advertisementDatabaseQuerySession beaconCountMetricsWithStartDate:v6 endDate:v5 windowDuration:a3 error:900.0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_prepareExposureCalculationSessionWithError:(id *)a3
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
      if (a3)
      {
        ENErrorF();
        *a3 = v5 = 0;
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
      v21 = [(ENAdvertisementDatabaseQuerySession *)v9 storedAdvertisementCount];
      if (!self->_useCache || [(ENExposureDatabase *)self->_exposureDatabase getAdvertisementCount:&v21 error:a3])
      {
        v11 = [ENExposureCalculationSession alloc];
        v12 = [(ENAdvertisementDatabaseQuerySession *)v10 attenuationThreshold];
        v13 = [(ENExposureCalculationSession *)v11 initWithAttenuationThreshold:v12 capacity:v21];
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

          v16 = [(ENRegionServerConfiguration *)self->_regionServerConfiguration numberOfAdvSamplesForRPIThreshold];
          if (v16 <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16;
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

        else if (a3)
        {
          ENErrorF();
          *a3 = v5 = 0;
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_17;
      }
    }

    else if (a3)
    {
      ENErrorF();
      *a3 = v5 = 0;
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