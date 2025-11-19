@interface CRXFCorePrescriptionServiceClient
- (CRXFCorePrescriptionServiceClient)initWithServer:(unint64_t)a3 serverVersion:(id)a4 timeout:(double)a5;
- (id)crxfAppClipCodeForAppClipCodePayload:(id)a3;
- (id)crxfCalibrationDataForFactoryCalibrationData:(id)a3;
- (id)eyePrescriptionForCRXFEyePrescription:(id)a3;
- (int64_t)lensTypeForCRXFLensType:(unint64_t)a3;
- (unint64_t)addDownloadWithCompletionQueue:(id)a3 completion:(id)a4;
- (unint64_t)crxfClampingStatusForClampingStatus:(int64_t)a3;
- (unint64_t)crxfLensTypeForLensType:(int64_t)a3;
- (void)dealloc;
- (void)downloadCalibrationDataForACCPayload:(id)a3 orASAKey:(id)a4 completionQueue:(id)a5 completion:(id)a6;
- (void)dumpDataStoreToFileHandle:(id)a3 table:(id)a4 options:(unint64_t)a5 withCompletionQueue:(id)a6 completion:(id)a7;
- (void)fetchPrescriptionRecordsWithTimeout:(double)a3 completionQueue:(id)a4 completion:(id)a5;
- (void)fetchSystemStatusWithCompletionQueue:(id)a3 completion:(id)a4;
- (void)fetchUserInfoWithCompletionQueue:(id)a3 completion:(id)a4;
- (void)finishDownloadWithID:(unint64_t)a3 data:(id)a4 error:(id)a5;
- (void)generateAppClipCodeWithVersion:(unint64_t)a3 lensType:(unint64_t)a4 leftRX:(id)a5 rightRX:(id)a6 colorCode:(unint64_t)a7 secret:(id)a8 completionQueue:(id)a9 completion:(id)a10;
- (void)purgeDataWithOptions:(unint64_t)a3 completionQueue:(id)a4 completion:(id)a5;
- (void)validateAndApplySharedLensEnrollmentAssetsWithCompletionQueue:(id)a3 completion:(id)a4;
@end

@implementation CRXFCorePrescriptionServiceClient

- (CRXFCorePrescriptionServiceClient)initWithServer:(unint64_t)a3 serverVersion:(id)a4 timeout:(double)a5
{
  v8 = a4;
  v27.receiver = self;
  v27.super_class = CRXFCorePrescriptionServiceClient;
  v9 = [(CRXFAbstractServiceClient *)&v27 initWithProtocol:&unk_28593B6C8];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = os_log_create(CRXFLoggingSubsystem, CRXFLoggingCategory[0]);
  log = v9->_log;
  v9->_log = v10;

  v9->_timeout = a5;
  v12 = [MEMORY[0x277CBEB38] dictionary];
  downloads = v9->_downloads;
  v9->_downloads = v12;

  v14 = [CRXFServiceConnection alloc];
  v15 = [(CRXFAbstractServiceClient *)v9 xpcInterface];
  v16 = [(CRXFServiceConnection *)v14 initWithServiceName:@"com.apple.CorePrescription.CalibrationDataFetcher" xpcInterface:v15];
  connection = v9->_connection;
  v9->_connection = v16;

  v9->_nextDownloadID = 0;
  v18 = [MEMORY[0x277CBEB38] dictionary];
  v19 = v18;
  if (a3 == 1)
  {
    v20 = &unk_285933B78;
    goto LABEL_6;
  }

  if (a3 == 2)
  {
    v20 = &unk_285933B90;
LABEL_6:
    [v18 setObject:v20 forKeyedSubscript:@"environment"];
  }

  if (v8)
  {
    v21 = [v8 copy];
    [v19 setObject:v21 forKeyedSubscript:@"version"];
  }

  v22 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v19];
  fetchOptions = v9->_fetchOptions;
  v9->_fetchOptions = v22;

  v24 = +[CRXUNetworkReachability sharedInstance];
  networkReachability = v9->_networkReachability;
  v9->_networkReachability = v24;

  [(CRXFAbstractServiceClient *)v9 registerReturnType:objc_opt_class() forSelector:sel_listEnrollmentsInGroup_completionHandler_];
  [(CRXFAbstractServiceClient *)v9 registerReturnType:objc_opt_class() forSelector:sel_listBriefEnrollmentsWithCompletionHandler_];
  [(CRXFAbstractServiceClient *)v9 registerReturnType:objc_opt_class() forSelector:sel_addEnrollment_inGroup_fromSource_assigningUUID_options_completionHandler_];
  [(CRXFAbstractServiceClient *)v9 registerArgumentType:objc_opt_class() atIndex:0 forSelector:sel_addEnrollments_inGroup_fromSource_options_completionHandler_];
  [(CRXFAbstractServiceClient *)v9 registerReturnType:objc_opt_class() forSelector:sel_addEnrollments_inGroup_fromSource_options_completionHandler_];
  [(CRXFAbstractServiceClient *)v9 registerReturnType:objc_opt_class() forSelector:sel_fetchPrescriptionRecordsWithTimeout_completionHandler_];
  [(CRXFAbstractServiceClient *)v9 registerReturnType:objc_opt_class() forSelector:sel_validateAndApplySharedLensEnrollmentAssetsWithCompletionHandler_];

LABEL_10:
  return v9;
}

- (void)dealloc
{
  [(CRXFServiceConnection *)self->_connection forceInvalidate];
  v3.receiver = self;
  v3.super_class = CRXFCorePrescriptionServiceClient;
  [(CRXFCorePrescriptionServiceClient *)&v3 dealloc];
}

- (void)downloadCalibrationDataForACCPayload:(id)a3 orASAKey:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v12 = +[CRXUDispatchQueue main];
  }

  if ([(CRXUNetworkReachability *)self->_networkReachability isConnected])
  {
    v14 = +[CRXFAppClipCodeTranscoder sharedInstance];
    v15 = v10;
    if (v15)
    {
      v16 = [v14 deriveCanonicalPayloadFromPayload:v15];

      if (!v16)
      {
        v29 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:32 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ServiceClient/CRXFCorePrescriptionServiceClient.m" line:351 userInfo:MEMORY[0x277CBEC10]];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke_2;
        v42[3] = &unk_278E9FCB8;
        v43 = v29;
        v44 = v13;
        v18 = v29;
        [v12 dispatchAsync:v42];

        v20 = v44;
LABEL_17:

        goto LABEL_18;
      }

      v32 = v11;
    }

    else
    {
      v32 = v11;
      v16 = 0;
    }

    v31 = v13;
    v19 = [(CRXFCorePrescriptionServiceClient *)self addDownloadWithCompletionQueue:v12 completion:v13];
    kdebug_trace();
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [CRXFCorePrescriptionServiceClient downloadCalibrationDataForACCPayload:orASAKey:completionQueue:completion:];
    }

    v33 = v10;
    v20 = [(CRXFServiceConnection *)self->_connection activate];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke_179;
    v41[3] = &unk_278E9FCE0;
    v41[4] = self;
    v41[5] = v19;
    v21 = [v20 remoteObjectProxyWithErrorHandler:v41];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v23 = MEMORY[0x277CCABB0];
      v24 = log;
      v25 = [v23 numberWithUnsignedInteger:v19];
      *buf = 136315650;
      v49 = "[CRXFCorePrescriptionServiceClient downloadCalibrationDataForACCPayload:orASAKey:completionQueue:completion:]";
      v50 = 1024;
      v51 = 379;
      v52 = 2114;
      v53 = v25;
      _os_log_impl(&dword_24732C000, v24, OS_LOG_TYPE_INFO, "%s @%d: Starting XPC call for downloadID %{public}@", buf, 0x1Cu);
    }

    v26 = self->_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [CRXFCorePrescriptionServiceClient downloadCalibrationDataForACCPayload:v16 orASAKey:self completionQueue:v26 completion:?];
    }

    fetchOptions = self->_fetchOptions;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke_182;
    v34[3] = &unk_278E9FD30;
    v35 = v16;
    v36 = self;
    v40 = v19;
    v37 = v14;
    v38 = v21;
    v11 = v32;
    v39 = v32;
    v28 = v21;
    v18 = v16;
    [v28 fetchCalibrationDataForACC:v18 orASAKey:v39 options:fetchOptions completionHandler:v34];

    v10 = v33;
    v13 = v31;
    goto LABEL_17;
  }

  v17 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:23 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ServiceClient/CRXFCorePrescriptionServiceClient.m" line:337 userInfo:MEMORY[0x277CBEC10]];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke;
  v45[3] = &unk_278E9FCB8;
  v46 = v17;
  v47 = v13;
  v14 = v17;
  [v12 dispatchAsync:v45];

  v18 = v47;
LABEL_18:

  v30 = *MEMORY[0x277D85DE8];
}

void __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke_179(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 16), OS_LOG_TYPE_ERROR))
  {
    __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke_179_cold_1();
  }

  [*(*(a1 + 32) + 40) invalidate];
  [*(a1 + 32) finishDownloadWithID:*(a1 + 40) data:0 error:v3];
}

void __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke_182(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(a1 + 32);
  kdebug_trace();
  v7 = *(*(a1 + 40) + 16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = *(a1 + 72);
    v10 = v7;
    v11 = [v8 numberWithUnsignedInteger:v9];
    *buf = 136315906;
    v24 = "[CRXFCorePrescriptionServiceClient downloadCalibrationDataForACCPayload:orASAKey:completionQueue:completion:]_block_invoke";
    v25 = 1024;
    v26 = 395;
    v27 = 2114;
    v28 = v11;
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&dword_24732C000, v10, OS_LOG_TYPE_INFO, "%s @%d: XPC call completed for downloadID %{public}@ with error %{public}@", buf, 0x26u);
  }

  if (!v6)
  {
    [*(*(a1 + 40) + 40) invalidate];
    v14 = [*(a1 + 40) crxfCalibrationDataForFactoryCalibrationData:v5];
    [*(a1 + 40) finishDownloadWithID:*(a1 + 72) data:v14 error:0];
LABEL_11:

    goto LABEL_12;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = [*(a1 + 48) derivePayloadWithLensTypeZeroed:v12 ifLensTypeIs:2];
    if (v13)
    {
      v14 = v13;
      v15 = *(*(a1 + 40) + 16);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v24 = "[CRXFCorePrescriptionServiceClient downloadCalibrationDataForACCPayload:orASAKey:completionQueue:completion:]_block_invoke";
        v25 = 1024;
        v26 = 412;
        _os_log_impl(&dword_24732C000, v15, OS_LOG_TYPE_INFO, "%s @%d: Download failed with lens type Developer; retrying with lens type Demo", buf, 0x12u);
      }

      v16 = *(a1 + 40);
      v17 = *(v16 + 56);
      v18 = *(a1 + 56);
      v19 = *(a1 + 64);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke_183;
      v22[3] = &unk_278E9FD08;
      v20 = *(a1 + 72);
      v22[4] = v16;
      v22[5] = v20;
      [v18 fetchCalibrationDataForACC:v14 orASAKey:v19 options:v17 completionHandler:v22];
      goto LABEL_11;
    }
  }

  [*(*(a1 + 40) + 40) invalidate];
  [*(a1 + 40) finishDownloadWithID:*(a1 + 72) data:0 error:v6];
LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
}

void __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke_183(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(*(a1 + 32) + 40) invalidate];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) crxfCalibrationDataForFactoryCalibrationData:v7];
  }

  [*(a1 + 32) finishDownloadWithID:*(a1 + 40) data:v6 error:v5];
}

- (void)fetchUserInfoWithCompletionQueue:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__CRXFCorePrescriptionServiceClient_fetchUserInfoWithCompletionQueue_completion___block_invoke;
  v16[3] = &unk_278E9FD58;
  v17 = v6;
  v10 = v6;
  v11 = [(CRXFServiceRequest *)v8 initWithTimeout:v7 completionQueue:v16 completion:timeout];

  v12 = [(CRXFServiceRequest *)v11 createProxyOnConnection:self->_connection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__CRXFCorePrescriptionServiceClient_fetchUserInfoWithCompletionQueue_completion___block_invoke_2;
  v14[3] = &unk_278E9FD80;
  v15 = v11;
  v13 = v11;
  [v12 fetchUserInfoWithCompletionHandler:v14];
}

void __81__CRXFCorePrescriptionServiceClient_fetchUserInfoWithCompletionQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v12 = v7;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = a3;
    v11 = a2;
    v9 = [[CRXFUserInfo alloc] initWithUserID:v11 firstName:v10];

    v8 = 0;
  }

  [*(a1 + 32) finishWithResult:v9 error:v8];
}

- (void)fetchPrescriptionRecordsWithTimeout:(double)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __100__CRXFCorePrescriptionServiceClient_fetchPrescriptionRecordsWithTimeout_completionQueue_completion___block_invoke;
  v18[3] = &unk_278E9FDA8;
  v19 = v8;
  v12 = v8;
  v13 = [(CRXFServiceRequest *)v10 initWithTimeout:v9 completionQueue:v18 completion:timeout];

  v14 = [(CRXFServiceRequest *)v13 createProxyOnConnection:self->_connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __100__CRXFCorePrescriptionServiceClient_fetchPrescriptionRecordsWithTimeout_completionQueue_completion___block_invoke_2;
  v16[3] = &unk_278E9FDD0;
  v17 = v13;
  v15 = v13;
  [v14 fetchPrescriptionRecordsWithTimeout:v16 completionHandler:a3];
}

void __100__CRXFCorePrescriptionServiceClient_fetchPrescriptionRecordsWithTimeout_completionQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v41 = a3;
  v43 = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    do
    {
      v8 = 0;
      do
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        v10 = [CRXFRXValues alloc];
        v11 = [v9 leftEye];
        [v11 sphere];
        v13 = v12;
        v14 = [v9 leftEye];
        [v14 cylinder];
        v16 = v15;
        v17 = [v9 leftEye];
        v18 = [v17 axis];
        LODWORD(v19) = v13;
        LODWORD(v20) = v16;
        v21 = [(CRXFRXValues *)v10 initWithSphere:v18 cylinder:v19 axis:v20];

        v22 = [CRXFRXValues alloc];
        v23 = [v9 rightEye];
        [v23 sphere];
        v25 = v24;
        v26 = [v9 rightEye];
        [v26 cylinder];
        v28 = v27;
        v29 = [v9 rightEye];
        v30 = [v29 axis];
        LODWORD(v31) = v25;
        LODWORD(v32) = v28;
        v33 = [(CRXFRXValues *)v22 initWithSphere:v30 cylinder:v31 axis:v32];

        v34 = [CRXFPrescriptionRecord alloc];
        v35 = [v9 accPayload];
        v36 = [v9 description];
        v37 = [v9 enrollmentDate];
        v38 = [(CRXFPrescriptionRecord *)v34 initWithACCPayload:v35 enrollmentName:v36 enrollmentDate:v37 leftEyeRX:v21 rightEyeRX:v33];

        [v43 addObject:v38];
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) finishWithResult:v43 error:v41];
  v39 = *MEMORY[0x277D85DE8];
}

- (void)purgeDataWithOptions:(unint64_t)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__CRXFCorePrescriptionServiceClient_purgeDataWithOptions_completionQueue_completion___block_invoke;
  v18[3] = &unk_278E9FDF8;
  v19 = v8;
  v12 = v8;
  v13 = [(CRXFServiceRequest *)v10 initWithTimeout:v9 completionQueue:v18 completion:timeout];

  v14 = [(CRXFServiceRequest *)v13 createProxyOnConnection:self->_connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__CRXFCorePrescriptionServiceClient_purgeDataWithOptions_completionQueue_completion___block_invoke_2;
  v16[3] = &unk_278E9FE20;
  v17 = v13;
  v15 = v13;
  [v14 purgeDataWithOptions:a3 completionHandler:v16];
}

- (void)validateAndApplySharedLensEnrollmentAssetsWithCompletionQueue:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__CRXFCorePrescriptionServiceClient_validateAndApplySharedLensEnrollmentAssetsWithCompletionQueue_completion___block_invoke;
  v16[3] = &unk_278E9FDA8;
  v17 = v6;
  v10 = v6;
  v11 = [(CRXFServiceRequest *)v8 initWithTimeout:v7 completionQueue:v16 completion:timeout];

  v12 = [(CRXFServiceRequest *)v11 createProxyOnConnection:self->_connection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __110__CRXFCorePrescriptionServiceClient_validateAndApplySharedLensEnrollmentAssetsWithCompletionQueue_completion___block_invoke_2;
  v14[3] = &unk_278E9FDD0;
  v15 = v11;
  v13 = v11;
  [v12 validateAndApplySharedLensEnrollmentAssetsWithCompletionHandler:v14];
}

void __110__CRXFCorePrescriptionServiceClient_validateAndApplySharedLensEnrollmentAssetsWithCompletionQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v21 = v6;
    v8 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 lensCalibrationStatus];
          if (v15 == 2)
          {
            v16 = 2;
          }

          else
          {
            v16 = v15 == 1;
          }

          v17 = [CRXFNewEnrollmentInfo alloc];
          v18 = [v14 uuid];
          v19 = [(CRXFNewEnrollmentInfo *)v17 initWithUUID:v18 calibrationStatus:v16];

          [v8 addObject:v19];
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v7 = v21;
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 32) finishWithResult:v8 error:v7];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)dumpDataStoreToFileHandle:(id)a3 table:(id)a4 options:(unint64_t)a5 withCompletionQueue:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __108__CRXFCorePrescriptionServiceClient_dumpDataStoreToFileHandle_table_options_withCompletionQueue_completion___block_invoke;
  v24[3] = &unk_278E9FDF8;
  v25 = v12;
  v18 = v12;
  v19 = [(CRXFServiceRequest *)v16 initWithTimeout:v13 completionQueue:v24 completion:timeout];

  v20 = [(CRXFServiceRequest *)v19 createProxyOnConnection:self->_connection];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __108__CRXFCorePrescriptionServiceClient_dumpDataStoreToFileHandle_table_options_withCompletionQueue_completion___block_invoke_2;
  v22[3] = &unk_278E9FE20;
  v23 = v19;
  v21 = v19;
  [v20 dumpDataStoreToFileHandle:v15 table:v14 options:a5 completionHandler:v22];
}

void __112__CRXFCorePrescriptionServiceClient_decodeAppClipCodePayload_allowUnsupportedRX_withCompletionQueue_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 crxfAppClipCodeForAppClipCodePayload:a2];
  [*(a1 + 40) finishWithResult:v7 error:v6];
}

- (void)generateAppClipCodeWithVersion:(unint64_t)a3 lensType:(unint64_t)a4 leftRX:(id)a5 rightRX:(id)a6 colorCode:(unint64_t)a7 secret:(id)a8 completionQueue:(id)a9 completion:(id)a10
{
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = a10;
  v18 = a9;
  v19 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __136__CRXFCorePrescriptionServiceClient_generateAppClipCodeWithVersion_lensType_leftRX_rightRX_colorCode_secret_completionQueue_completion___block_invoke;
  v32[3] = &unk_278E9FE98;
  v21 = v17;
  v33 = v21;
  v22 = [(CRXFServiceRequest *)v19 initWithTimeout:v18 completionQueue:v32 completion:timeout];

  v23 = [(CRXFServiceRequest *)v22 createProxyOnConnection:self->_connection];
  v24 = [(CRXFCorePrescriptionServiceClient *)self lensTypeForCRXFLensType:a4];
  if (!v15)
  {
    v25 = 0;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v26 = 0;
    goto LABEL_6;
  }

  v25 = [(CRXFCorePrescriptionServiceClient *)self eyePrescriptionForCRXFEyePrescription:v15];
  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  v26 = [(CRXFCorePrescriptionServiceClient *)self eyePrescriptionForCRXFEyePrescription:v14];
LABEL_6:
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __136__CRXFCorePrescriptionServiceClient_generateAppClipCodeWithVersion_lensType_leftRX_rightRX_colorCode_secret_completionQueue_completion___block_invoke_2;
  v30[3] = &unk_278E9FEC0;
  v31 = v22;
  v27 = v22;
  [v23 generateAppClipCodePayloadWithVersion:a3 lensType:v24 odRX:v25 osRX:v26 colorCode:a7 secret:v16 completionHandler:v30];
}

- (void)fetchSystemStatusWithCompletionQueue:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__CRXFCorePrescriptionServiceClient_fetchSystemStatusWithCompletionQueue_completion___block_invoke;
  v16[3] = &unk_278E9FEE8;
  v17 = v6;
  v10 = v6;
  v11 = [(CRXFServiceRequest *)v8 initWithTimeout:v7 completionQueue:v16 completion:timeout];

  v12 = [(CRXFServiceRequest *)v11 createProxyOnConnection:self->_connection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__CRXFCorePrescriptionServiceClient_fetchSystemStatusWithCompletionQueue_completion___block_invoke_2;
  v14[3] = &unk_278E9FF10;
  v15 = v11;
  v13 = v11;
  [v12 fetchSystemStatusWithCompletionHandler:v14];
}

void __85__CRXFCorePrescriptionServiceClient_fetchSystemStatusWithCompletionQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  if (v23)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = MEMORY[0x277CCABB0];
    [v23 healthLastPullTime];
    v8 = [v7 numberWithDouble:?];
    [v6 setObject:v8 forKeyedSubscript:@"healthLastPullTime.timestamp"];

    v9 = MEMORY[0x277CCABB0];
    [v23 healthLastPushTime];
    v10 = [v9 numberWithDouble:?];
    [v6 setObject:v10 forKeyedSubscript:@"healthLastPushTime.timestamp"];

    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v23, "healthSyncEnabled")}];
    [v6 setObject:v11 forKeyedSubscript:@"healthSyncEnabled.BOOL"];

    v12 = [v23 hardwareModel];
    [v6 setObject:v12 forKeyedSubscript:@"hardwareModel.string"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v23, "guestMode")}];
    [v6 setObject:v13 forKeyedSubscript:@"guestMode.BOOL"];

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "dataStoreSchemaVersion")}];
    [v6 setObject:v14 forKeyedSubscript:@"dataStoreSchemaVersion.int"];

    v15 = MEMORY[0x277CCABB0];
    [v23 lastSharingDataValidationTime];
    v16 = [v15 numberWithDouble:?];
    [v6 setObject:v16 forKeyedSubscript:@"lastSharingDataValidationTime.timestamp"];

    v17 = [v23 currentLocation];

    if (v17)
    {
      v18 = [v23 currentLocation];
      [v6 setObject:v18 forKeyedSubscript:@"currentLocation.string"];
    }

    v19 = [v23 selectedEnrollmentUUID];

    if (v19)
    {
      v20 = [v23 selectedEnrollmentUUID];
      [v6 setObject:v20 forKeyedSubscript:@"selectedEnrollmentUUID.string"];
    }

    v21 = [v23 prismActivationLocation];

    if (v21)
    {
      v22 = [v23 prismActivationLocation];
      [v6 setObject:v22 forKeyedSubscript:@"prismActivationLocation.string"];
    }
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (unint64_t)addDownloadWithCompletionQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__CRXFCorePrescriptionServiceClient_addDownloadWithCompletionQueue_completion___block_invoke;
  v17[3] = &unk_278E9FF38;
  v10 = v7;
  v18 = v10;
  v11 = [(CRXFServiceRequest *)v8 initWithTimeout:v6 completionQueue:v17 completion:timeout];
  v12 = self->_downloads;
  objc_sync_enter(v12);
  v13 = self->_nextDownloadID + 1;
  self->_nextDownloadID = v13;
  downloads = self->_downloads;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  [(NSMutableDictionary *)downloads setObject:v11 forKeyedSubscript:v15];

  objc_sync_exit(v12);
  return v13;
}

- (void)finishDownloadWithID:(unint64_t)a3 data:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [CRXFCorePrescriptionServiceClient finishDownloadWithID:data:error:];
  }

  v10 = [v9 domain];
  v11 = [v10 isEqualToString:@"CorePrescription.CorePrescriptionServiceError"];

  if (v11)
  {
    if ([v9 code] == 3)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = MEMORY[0x277CBEC10];
      v14 = 19;
      v15 = 1417;
    }

    else if ([v9 code] == 1)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = MEMORY[0x277CBEC10];
      v14 = 18;
      v15 = 1419;
    }

    else
    {
      v16 = [v9 code];
      v12 = MEMORY[0x277CCA9B8];
      v13 = MEMORY[0x277CBEC10];
      if (v16 == 4)
      {
        v14 = 21;
        v15 = 1421;
      }

      else
      {
        v14 = 17;
        v15 = 1423;
      }
    }

    v17 = [v12 crxf_errorWithCode:v14 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ServiceClient/CRXFCorePrescriptionServiceClient.m" line:v15 userInfo:v13];

    v9 = v17;
  }

  v18 = self->_downloads;
  objc_sync_enter(v18);
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v20 = [(NSMutableDictionary *)self->_downloads objectForKeyedSubscript:v19];
  [(NSMutableDictionary *)self->_downloads removeObjectForKey:v19];

  objc_sync_exit(v18);
  if (v20)
  {
    [v20 finishWithResult:v8 error:v9];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [CRXFCorePrescriptionServiceClient finishDownloadWithID:v20 data:? error:?];
    }
  }
}

- (id)crxfAppClipCodeForAppClipCodePayload:(id)a3
{
  v4 = a3;
  v84 = -[CRXFCorePrescriptionServiceClient crxfLensTypeForLensType:](self, "crxfLensTypeForLensType:", [v4 lensType]);
  v5 = [v4 left];
  v81 = -[CRXFCorePrescriptionServiceClient crxfClampingStatusForClampingStatus:](self, "crxfClampingStatusForClampingStatus:", [v5 clampingStatus]);

  v6 = [v4 right];
  v70 = -[CRXFCorePrescriptionServiceClient crxfClampingStatusForClampingStatus:](self, "crxfClampingStatusForClampingStatus:", [v6 clampingStatus]);

  v77 = [CRXFAppClipCode alloc];
  v76 = [v4 version];
  v92 = [v4 left];
  v75 = [v92 cylinderSignFlipped];
  v91 = [v4 right];
  v73 = [v91 cylinderSignFlipped];
  v90 = [v4 left];
  v71 = [v90 rxID];
  v89 = [v4 left];
  v69 = [v89 calibratedRXID];
  v88 = [v4 left];
  v87 = [v88 displayValues];
  [v87 sphere];
  v66 = v7;
  v86 = [v4 left];
  v85 = [v86 displayValues];
  [v85 cylinder];
  v63 = v8;
  v83 = [v4 left];
  v82 = [v83 calibrationValues];
  [v82 sphere];
  v10 = v9;
  v80 = [v4 left];
  v79 = [v80 calibrationValues];
  [v79 cylinder];
  v12 = v11;
  v78 = [v4 left];
  v74 = [v78 displayValues];
  [v74 vrAdd];
  v14 = v13;
  v72 = [v4 left];
  v58 = [v72 axisID];
  v68 = [v4 left];
  v67 = [v68 displayValues];
  v55 = [v67 axis];
  v65 = [v4 left];
  v64 = [v65 calibrationValues];
  v53 = [v64 axis];
  v62 = [v4 right];
  v51 = [v62 rxID];
  v61 = [v4 right];
  v48 = [v61 calibratedRXID];
  v60 = [v4 right];
  v59 = [v60 displayValues];
  [v59 sphere];
  v16 = v15;
  v57 = [v4 right];
  v56 = [v57 displayValues];
  [v56 cylinder];
  v18 = v17;
  v54 = [v4 right];
  v52 = [v54 calibrationValues];
  [v52 sphere];
  v20 = v19;
  v50 = [v4 right];
  v49 = [v50 calibrationValues];
  [v49 cylinder];
  v22 = v21;
  v47 = [v4 right];
  v46 = [v47 displayValues];
  [v46 vrAdd];
  v24 = v23;
  v45 = [v4 right];
  v25 = [v45 axisID];
  v44 = [v4 right];
  v26 = [v44 displayValues];
  v27 = [v26 axis];
  v28 = [v4 right];
  v29 = [v28 calibrationValues];
  v30 = [v29 axis];
  v31 = [v4 lensColorCode];
  v32 = [v4 secret];
  v33 = [v4 randomBits];

  LODWORD(v43) = 0;
  LODWORD(v42) = 0;
  LODWORD(v34) = v66;
  LODWORD(v35) = v63;
  LODWORD(v36) = v10;
  LODWORD(v37) = v12;
  LODWORD(v38) = v14;
  LODWORD(v39) = v16;
  v40 = [(CRXFAppClipCode *)v77 initWithVersion:v76 lensType:v84 cylLeftSignFlipped:v75 cylRightSignFlipped:v73 leftRXID:v71 leftCalibrationRXID:v69 leftDisplaySphere:v34 leftDisplayCylinder:v35 leftCalibrationSphere:v36 leftCalibrationCylinder:v37 leftAddVR:v38 leftAxisID:0.0 leftDisplayAxis:0.0 leftCalibrationAxis:v39 leftClamping:v58 leftHorizPrismBaseDirection:v55 leftHorizPrism:v53 leftVertPrismBaseDirection:v81 leftVertPrism:2 rightRXID:2 rightCalibrationRXID:v51 rightDisplaySphere:v48 rightDisplayCylinder:__PAIR64__(v20 rightCalibrationSphere:v18) rightCalibrationCylinder:__PAIR64__(v24 rightAddVR:v22) rightAxisID:v25 rightDisplayAxis:v27 rightCalibrationAxis:v30 rightClamping:v70 rightHorizPrismBaseDirection:2 rightHorizPrism:v42 rightVertPrismBaseDirection:2 rightVertPrism:v43 identifyingColor:v31 secret:v32 randomBits:v33];

  return v40;
}

- (unint64_t)crxfLensTypeForLensType:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int64_t)lensTypeForCRXFLensType:(unint64_t)a3
{
  if (a3 - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (unint64_t)crxfClampingStatusForClampingStatus:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (id)crxfCalibrationDataForFactoryCalibrationData:(id)a3
{
  v3 = a3;
  v4 = [v3 left];
  v5 = [v4 length];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [v3 left];
    v8 = [v6 initWithData:v7 encoding:4];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 right];
  v10 = [v9 length];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = [v3 right];
    v13 = [v11 initWithData:v12 encoding:4];
  }

  else
  {
    v13 = 0;
  }

  v14 = [CRXFCalibrationData alloc];
  v15 = [v3 acc];
  v16 = [(CRXFCalibrationData *)v14 initWithACCPayload:v15 leftCalibrationData:v8 rightCalibrationData:v13];

  return v16;
}

- (id)eyePrescriptionForCRXFEyePrescription:(id)a3
{
  v3 = a3;
  v4 = [CRXCEyePrescription alloc];
  [v3 sphere];
  v6 = v5;
  [v3 cylinder];
  v8 = v7;
  v9 = [v3 axis];
  [v3 add];
  v11 = v10;

  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  LODWORD(v14) = v11;
  v15 = [(CRXCEyePrescription *)v4 initWithSphere:v9 cylinder:v12 axis:v13 vrAdd:v14];

  return v15;
}

- (void)downloadCalibrationDataForACCPayload:orASAKey:completionQueue:completion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  *v3 = 136315907;
  OUTLINED_FUNCTION_0_0();
  *&v3[7] = 368;
  v3[9] = 2113;
  v4 = @"com.apple.CorePrescription.CalibrationDataFetcher";
  v5 = 2113;
  v6 = v0;
  _os_log_debug_impl(&dword_24732C000, v1, OS_LOG_TYPE_DEBUG, "%s @%d: Downloading calibration for service: %{private}@, ACC: %{private}@", v3, 0x26u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)downloadCalibrationDataForACCPayload:(os_log_t)log orASAKey:completionQueue:completion:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 56);
  v5 = 136315906;
  v6 = "[CRXFCorePrescriptionServiceClient downloadCalibrationDataForACCPayload:orASAKey:completionQueue:completion:]";
  v7 = 1024;
  v8 = 381;
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = v3;
  _os_log_debug_impl(&dword_24732C000, log, OS_LOG_TYPE_DEBUG, "%s @%d: fetchAccessoryDataByACC with acc: %@, options: %@", &v5, 0x26u);
  v4 = *MEMORY[0x277D85DE8];
}

void __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke_179_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_24732C000, v0, OS_LOG_TYPE_ERROR, "%s @%d: remote proxy error: %{public}@", v2, 0x1Cu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)finishDownloadWithID:data:error:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  *v3 = 136315650;
  OUTLINED_FUNCTION_0_0();
  *&v3[7] = 1413;
  v3[9] = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_24732C000, v1, OS_LOG_TYPE_DEBUG, "%s @%d: Finishing download with error: %@", v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)finishDownloadWithID:(void *)a1 data:(void *)a2 error:.cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 roundTripTime];
  v4 = [CRXUFormatters timeIntervalAsString:?];
  v6[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_24732C000, v3, OS_LOG_TYPE_DEBUG, "%s @%d: XPC call roundtrip time: %{public}@", v6, 0x1Cu);

  v5 = *MEMORY[0x277D85DE8];
}

@end