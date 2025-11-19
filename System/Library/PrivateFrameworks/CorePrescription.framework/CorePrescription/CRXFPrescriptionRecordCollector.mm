@interface CRXFPrescriptionRecordCollector
- (CRXFPrescriptionRecordCollector)initWithDeviceModel:(id)a3 timeout:(double)a4;
- (id)prescriptionRecordWithEnrollmentName:(id)a3 enrollmentDate:(id)a4 accPayload:(id)a5;
- (void)addRecordFetchAnalyticsEventWithFetchSummary:(id)a3;
- (void)fetchPrescriptionRecordsWithCompletion:(id)a3;
@end

@implementation CRXFPrescriptionRecordCollector

- (CRXFPrescriptionRecordCollector)initWithDeviceModel:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v22.receiver = self;
  v22.super_class = CRXFPrescriptionRecordCollector;
  v7 = [(CRXFPrescriptionRecordCollector *)&v22 init];
  if (v7)
  {
    v8 = os_log_create(CRXFLoggingSubsystem, CRXFLoggingCategory[0]);
    log = v7->_log;
    v7->_log = v8;

    v10 = [[CRXFHealthDataProvider alloc] initWithDeviceModel:v6];
    healthDataProvider = v7->_healthDataProvider;
    v7->_healthDataProvider = v10;

    v12 = 2.0;
    if (a4 >= 2.0)
    {
      v12 = a4;
    }

    v13 = [[CRXFCorePrescriptionServiceClient alloc] initWithServer:0 serverVersion:0 timeout:v12 + -1.0];
    serviceClient = v7->_serviceClient;
    v7->_serviceClient = v13;

    v15 = [[CRXFKeychainAccess alloc] initWithDeviceModel:v6];
    keychainAccess = v7->_keychainAccess;
    v7->_keychainAccess = v15;

    v17 = [CRXUDispatchQueue concurrentQueueWithName:@"PrescriptionRecordCollector.SerialQueue"];
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v17;

    v19 = +[CRXFAppClipCodeTranscoder sharedInstance];
    accTranscoder = v7->_accTranscoder;
    v7->_accTranscoder = v19;
  }

  return v7;
}

- (void)fetchPrescriptionRecordsWithCompletion:(id)a3
{
  v118 = *MEMORY[0x277D85DE8];
  v50 = a3;
  v4 = [[CRXUDispatchGroup alloc] initWithName:@"PrescriptionRecordCollectorGroup"];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v106[0] = 0;
  v106[1] = v106;
  v106[2] = 0x3032000000;
  v106[3] = __Block_byref_object_copy__0;
  v106[4] = __Block_byref_object_dispose__0;
  v107 = 0;
  v104[0] = 0;
  v104[1] = v104;
  v104[2] = 0x3032000000;
  v104[3] = __Block_byref_object_copy__0;
  v104[4] = __Block_byref_object_dispose__0;
  v105 = 0;
  v103[0] = 0;
  v103[1] = v103;
  v103[2] = 0x2020000000;
  v103[3] = 0;
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v102[3] = 0;
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x2020000000;
  v101[3] = 0;
  v8 = [MEMORY[0x277CBEAA8] date];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  serialQueue = self->_serialQueue;
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke;
  v100[3] = &unk_278EA0680;
  v100[4] = self;
  [(CRXUDispatchQueue *)serialQueue dispatchSync:v100];
  [(CRXUDispatchGroup *)v4 enter];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:];
  }

  healthDataProvider = self->_healthDataProvider;
  v13 = self->_serialQueue;
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348;
  v96[3] = &unk_278EA06D0;
  v96[4] = self;
  v14 = v6;
  v97 = v14;
  v99 = v106;
  v15 = v4;
  v98 = v15;
  [(CRXFHealthDataProvider *)healthDataProvider listPrescriptionsWithCompletionQueue:v13 completion:v96];
  [(CRXUDispatchGroup *)v15 enter];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:];
  }

  keychainAccess = self->_keychainAccess;
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355;
  v92[3] = &unk_278EA06D0;
  v92[4] = self;
  v17 = v7;
  v93 = v17;
  v95 = v104;
  v18 = v15;
  v94 = v18;
  [(CRXFKeychainAccess *)keychainAccess fetchASAKeysWithCompletion:v92];
  [(CRXUDispatchGroup *)v18 waitFor:1.0];
  v55 = v18;
  v51 = [MEMORY[0x277CBEB18] array];
  v52 = [MEMORY[0x277CBEB18] array];
  v19 = v5;
  objc_sync_enter(v19);
  [v51 addObjectsFromArray:v19];
  objc_sync_exit(v19);
  v49 = v19;

  v20 = v17;
  objc_sync_enter(v20);
  [v52 addObjectsFromArray:v20];
  objc_sync_exit(v20);
  v48 = v20;

  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v14;
  v21 = [obj countByEnumeratingWithState:&v84 objects:v117 count:16];
  v22 = 0;
  if (v21)
  {
    v23 = *v85;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v85 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v84 + 1) + 8 * i);
        [(CRXUDispatchGroup *)v55 enter];
        v26 = self->_log;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
          v28 = MEMORY[0x277CCABB0];
          [(CRXFCorePrescriptionServiceClient *)self->_serviceClient timeout];
          v29 = [v28 numberWithDouble:?];
          *buf = 136315906;
          v110 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]";
          v111 = 1024;
          v112 = 258;
          v113 = 2114;
          v114 = v27;
          v115 = 2114;
          v116 = v29;
          _os_log_impl(&dword_24732C000, v26, OS_LOG_TYPE_INFO, "%s @%d: Downloading calibration for health record #%{public}@ with timeout %{public}@", buf, 0x26u);
        }

        serviceClient = self->_serviceClient;
        v31 = [v25 accPayload];
        v32 = self->_serialQueue;
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_356;
        v78[3] = &unk_278EA06F8;
        v80 = v101;
        v81 = v102;
        v82 = v103;
        v83 = v22;
        v78[4] = self;
        v78[5] = v25;
        v79 = v55;
        [(CRXFCorePrescriptionServiceClient *)serviceClient downloadCalibrationDataForACCPayload:v31 completionQueue:v32 completion:v78];

        ++v22;
      }

      v21 = [obj countByEnumeratingWithState:&v84 objects:v117 count:16];
    }

    while (v21);
  }

  v89[3] = v22;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:];
  }

  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v77[3] = 0;
  if (v52)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v33 = v52;
    v34 = [v33 countByEnumeratingWithState:&v73 objects:v108 count:16];
    if (v34)
    {
      v35 = 0;
      v54 = *v74;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v74 != v54)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v73 + 1) + 8 * j);
          [(CRXUDispatchGroup *)v55 enter];
          v38 = self->_log;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
            v40 = MEMORY[0x277CCABB0];
            [(CRXFCorePrescriptionServiceClient *)self->_serviceClient timeout];
            v41 = [v40 numberWithDouble:?];
            *buf = 136315906;
            v110 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]";
            v111 = 1024;
            v112 = 299;
            v113 = 2114;
            v114 = v39;
            v115 = 2114;
            v116 = v41;
            _os_log_impl(&dword_24732C000, v38, OS_LOG_TYPE_INFO, "%s @%d: Downloading calibration for ASA key #%{public}@ with timeout %{public}@", buf, 0x26u);
          }

          v42 = self->_serviceClient;
          v43 = [v37 privateKey];
          v44 = self->_serialQueue;
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_358;
          v66[3] = &unk_278EA0720;
          v68 = v101;
          v69 = v102;
          v66[4] = self;
          v66[5] = v37;
          v70 = v77;
          v71 = v103;
          v72 = v35;
          v67 = v55;
          [(CRXFCorePrescriptionServiceClient *)v42 downloadCalibrationDataForASAKey:v43 completionQueue:v44 completion:v66];

          ++v35;
        }

        v34 = [v33 countByEnumeratingWithState:&v73 objects:v108 count:16];
      }

      while (v34);
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:];
    }
  }

  v45 = self->_serialQueue;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_359;
  v56[3] = &unk_278EA0748;
  v65 = v10;
  v56[4] = self;
  v58 = v102;
  v59 = v101;
  v60 = v106;
  v61 = v104;
  v62 = &v88;
  v63 = v77;
  v64 = v103;
  v46 = v50;
  v57 = v46;
  [(CRXUDispatchGroup *)v55 notifyOnQueue:v45 withBlock:v56];

  _Block_object_dispose(v77, 8);
  _Block_object_dispose(&v88, 8);

  _Block_object_dispose(v101, 8);
  _Block_object_dispose(v102, 8);
  _Block_object_dispose(v103, 8);
  _Block_object_dispose(v104, 8);

  _Block_object_dispose(v106, 8);
  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  return MEMORY[0x2821F96F8]();
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v35 = v6;
    v38 = a1;
    v8 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348_cold_1(v8, v5);
    }

    v9 = [MEMORY[0x277CBEB38] dictionary];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v5;
    v10 = v5;
    v11 = v9;
    obj = v10;
    v12 = [v10 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      v15 = *MEMORY[0x277CCE120];
      v16 = *MEMORY[0x277CCC4A8];
      v39 = v9;
      do
      {
        v17 = 0;
        v40 = v13;
        do
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v44 + 1) + 8 * v17);
          v19 = [v18 metadata];
          v20 = [v19 crxu_dataForKey:v15];

          if (v20)
          {
            v21 = [v18 metadata];
            v22 = [v21 crxu_containsKey:v16];

            if (v22)
            {
              v23 = v16;
              v24 = v14;
              v25 = [v11 objectForKey:v20];
              v26 = v25;
              if (!v25)
              {
                goto LABEL_15;
              }

              v27 = [v25 _creationDate];
              v28 = [v18 _creationDate];
              v29 = [v27 crxu_isBefore:v28];

              v11 = v39;
              if (v29)
              {
                v30 = *(*(v38 + 32) + 8);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  v31 = v30;
                  v32 = [v20 crxu_asHexString];
                  *buf = 136315650;
                  v49 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]_block_invoke";
                  v50 = 1024;
                  v51 = 180;
                  v52 = 2112;
                  v53 = v32;
                  _os_log_debug_impl(&dword_24732C000, v31, OS_LOG_TYPE_DEBUG, "%s @%d: Discarding health record with duplicate ACC %@", buf, 0x1Cu);

                  v11 = v39;
                }

LABEL_15:
                [v11 setObject:v18 forKey:v20];
              }

              v14 = v24;
              v16 = v23;
              v13 = v40;
            }
          }

          ++v17;
        }

        while (v13 != v17);
        v13 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v13);
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_351;
    v42[3] = &unk_278EA06A8;
    a1 = v38;
    v33 = *(v38 + 40);
    v42[4] = *(v38 + 32);
    v43 = v33;
    [v11 enumerateKeysAndObjectsUsingBlock:v42];

    v7 = v36;
    v5 = v37;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_DEBUG))
    {
      __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348_cold_2(a1 + 56);
    }
  }

  [*(a1 + 48) leave];

  v34 = *MEMORY[0x277D85DE8];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_351(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 metadata];
  v11 = [v7 crxu_stringForKey:*MEMORY[0x277CCC4A8]];

  v8 = *(a1 + 32);
  v9 = [v5 dateIssued];

  v10 = [v8 prescriptionRecordWithEnrollmentName:v11 enrollmentDate:v9 accPayload:v6];

  if (v10)
  {
    [*(*(a1 + 32) + 56) addObject:v10];
    [*(a1 + 40) addObject:v10];
  }
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355_cold_1(v7, v5);
    }

    v8 = *(a1 + 40);
    objc_sync_enter(v8);
    [*(a1 + 40) addObjectsFromArray:v5];
    objc_sync_exit(v8);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
    {
      __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355_cold_2(a1 + 56);
    }
  }

  [*(a1 + 48) leave];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_356(uint64_t a1, void *a2, void *a3, double a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (*(v9 + 56))
  {
    v10 = *(v9 + 8);
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = MEMORY[0x277CCABB0];
        v12 = *(a1 + 80);
        v13 = v10;
        v14 = [v11 numberWithUnsignedInteger:v12];
        v19 = 136315650;
        v20 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]_block_invoke";
        v21 = 1024;
        v22 = 268;
        v23 = 2114;
        v24 = v14;
        _os_log_impl(&dword_24732C000, v13, OS_LOG_TYPE_INFO, "%s @%d: Calibration download for health record #%{public}@ completed", &v19, 0x1Cu);
      }

      ++*(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) + a4;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_356_cold_1(a1, v10);
      }

      ++*(*(*(a1 + 72) + 8) + 24);
    }

    v15 = *(a1 + 40);
    v16 = [v7 leftCalibrationData];
    v17 = [v7 rightCalibrationData];
    [v15 addLeftCalibrationData:v16 rightCalibrationData:v17];
  }

  [*(a1 + 48) leave];

  v18 = *MEMORY[0x277D85DE8];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_358(uint64_t a1, void *a2, void *a3, double a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (*(v9 + 56))
  {
    v10 = *(v9 + 8);
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = MEMORY[0x277CCABB0];
        v12 = *(a1 + 88);
        v13 = v10;
        v14 = [v11 numberWithUnsignedInteger:v12];
        v23 = 136315650;
        v24 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]_block_invoke";
        v25 = 1024;
        v26 = 309;
        v27 = 2114;
        v28 = v14;
        _os_log_impl(&dword_24732C000, v13, OS_LOG_TYPE_INFO, "%s @%d: Calibration download for ASA key #%{public}@ completed", &v23, 0x1Cu);
      }

      ++*(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) + a4;
      ++*(*(*(a1 + 72) + 8) + 24);
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) name];
      v17 = [*(a1 + 40) creationDate];
      v18 = [v7 accPayload];
      v19 = [v15 prescriptionRecordWithEnrollmentName:v16 enrollmentDate:v17 accPayload:v18];

      if (v19)
      {
        v20 = [v7 leftCalibrationData];
        v21 = [v7 rightCalibrationData];
        [v19 addLeftCalibrationData:v20 rightCalibrationData:v21];

        [*(*(a1 + 32) + 56) addObject:v19];
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_358_cold_1(a1, v10);
      }

      ++*(*(*(a1 + 80) + 8) + 24);
    }
  }

  [*(a1 + 48) leave];

  v22 = *MEMORY[0x277D85DE8];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_359(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = 0;

  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6 - *(a1 + 104);

  v8 = [[CRXFPrescriptionRecordFetchSummary alloc] initWithHealthKitError:*(*(*(a1 + 64) + 8) + 40) keychainError:*(*(*(a1 + 72) + 8) + 40) healthRecordCount:*(*(*(a1 + 80) + 8) + 24) asaKeyCount:*(*(*(a1 + 88) + 8) + 24) calibrationDataDownloadFailureCount:*(*(*(a1 + 96) + 8) + 24) meanCalibrationDataDownloadTime:*(*(*(a1 + 48) + 8) + 24) / *(*(*(a1 + 56) + 8) + 24) totalFetchTime:v7];
  [*(a1 + 32) addRecordFetchAnalyticsEventWithFetchSummary:v8];
  v9 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_359_cold_1(v9, v2);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)prescriptionRecordWithEnrollmentName:(id)a3 enrollmentDate:(id)a4 accPayload:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accTranscoder = self->_accTranscoder;
  v34 = 0;
  v12 = [(CRXFAppClipCodeTranscoder *)accTranscoder decodeAppClipCodeFromData:v10 allowUnsupportedRX:0 error:&v34];
  v13 = v34;
  if (v12)
  {
    v14 = [CRXFRXValues alloc];
    [v12 leftDisplaySphere];
    v16 = v15;
    [v12 leftDisplayCylinder];
    v18 = v17;
    v19 = [v12 leftDisplayAxis];
    LODWORD(v20) = v16;
    LODWORD(v21) = v18;
    v22 = [(CRXFRXValues *)v14 initWithSphere:v19 cylinder:v20 axis:v21];
    v23 = [CRXFRXValues alloc];
    [v12 rightDisplaySphere];
    v25 = v24;
    [v12 rightDisplayCylinder];
    v27 = v26;
    v28 = [v12 rightDisplayAxis];
    LODWORD(v29) = v25;
    LODWORD(v30) = v27;
    v31 = [(CRXFRXValues *)v23 initWithSphere:v28 cylinder:v29 axis:v30];
    v32 = [[CRXFPrescriptionRecord alloc] initWithACCPayload:v10 enrollmentName:v8 enrollmentDate:v9 leftEyeRX:v22 rightEyeRX:v31];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [CRXFPrescriptionRecordCollector prescriptionRecordWithEnrollmentName:enrollmentDate:accPayload:];
    }

    v32 = 0;
  }

  return v32;
}

- (void)addRecordFetchAnalyticsEventWithFetchSummary:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

id __80__CRXFPrescriptionRecordCollector_addRecordFetchAnalyticsEventWithFetchSummary___block_invoke(uint64_t a1)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v12[0] = @"totalFetchTime";
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) totalFetchTime];
  v3 = [v2 numberWithDouble:?];
  v13[0] = v3;
  v12[1] = @"meanDownloadTime";
  v4 = MEMORY[0x277CCABB0];
  [*(a1 + 32) meanCalibrationDataDownloadTime];
  v5 = [v4 numberWithDouble:?];
  v13[1] = v5;
  v12[2] = @"healthRecordCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "healthRecordCount")}];
  v13[2] = v6;
  v12[3] = @"asaKeyCount";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "asaKeyCount")}];
  v13[3] = v7;
  v12[4] = @"downloadFailureCount";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "calibrationDataDownloadFailureCount")}];
  v13[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)fetchPrescriptionRecordsWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_24732C000, v0, v1, "%s @%d: Fetching health records", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchPrescriptionRecordsWithCompletion:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_24732C000, v0, v1, "%s @%d: Fetching ASA keys", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchPrescriptionRecordsWithCompletion:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_24732C000, v0, v1, "%s @%d: Done processing health records", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchPrescriptionRecordsWithCompletion:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_24732C000, v0, v1, "%s @%d: Done processing ASA keys", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_0(&dword_24732C000, v6, v7, "%s @%d: Fetched %{public}@ health records", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_348_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  v3 = 136315650;
  v4 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]_block_invoke_2";
  v5 = 1024;
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_24732C000, v1, OS_LOG_TYPE_DEBUG, "%s @%d: Failed to fetch health records: %{public}@", &v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  v7[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_24732C000, v4, OS_LOG_TYPE_DEBUG, "%s @%d: Fetched %{public}@ ASA keys", v7, 0x1Cu);

  v6 = *MEMORY[0x277D85DE8];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_355_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  v3 = 136315650;
  v4 = "[CRXFPrescriptionRecordCollector fetchPrescriptionRecordsWithCompletion:]_block_invoke";
  v5 = 1024;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_24732C000, v1, OS_LOG_TYPE_ERROR, "%s @%d: Failed to fetch ASA keys: %{public}@", &v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_356_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 80);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_24732C000, v6, v7, "%s @%d: Calibration download for health record #%{public}@ failed: %{public}@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_358_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 88);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_24732C000, v6, v7, "%s @%d: Calibration download for ASA key #%{public}@ failed: %{public}@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

void __74__CRXFPrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke_359_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_0(&dword_24732C000, v6, v7, "%s @%d: %{public}@ enrollment records collected", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)prescriptionRecordWithEnrollmentName:enrollmentDate:accPayload:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_24732C000, v0, OS_LOG_TYPE_ERROR, "%s @%d: Failed to decode ACC: %{public}@", v2, 0x1Cu);
  v1 = *MEMORY[0x277D85DE8];
}

@end