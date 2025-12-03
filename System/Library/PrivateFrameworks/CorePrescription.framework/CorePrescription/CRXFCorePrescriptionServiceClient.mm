@interface CRXFCorePrescriptionServiceClient
- (CRXFCorePrescriptionServiceClient)initWithServer:(unint64_t)server serverVersion:(id)version timeout:(double)timeout;
- (id)crxfAppClipCodeForAppClipCodePayload:(id)payload;
- (id)crxfCalibrationDataForFactoryCalibrationData:(id)data;
- (id)eyePrescriptionForCRXFEyePrescription:(id)prescription;
- (int64_t)lensTypeForCRXFLensType:(unint64_t)type;
- (unint64_t)addDownloadWithCompletionQueue:(id)queue completion:(id)completion;
- (unint64_t)crxfClampingStatusForClampingStatus:(int64_t)status;
- (unint64_t)crxfLensTypeForLensType:(int64_t)type;
- (void)dealloc;
- (void)downloadCalibrationDataForACCPayload:(id)payload orASAKey:(id)key completionQueue:(id)queue completion:(id)completion;
- (void)dumpDataStoreToFileHandle:(id)handle table:(id)table options:(unint64_t)options withCompletionQueue:(id)queue completion:(id)completion;
- (void)fetchPrescriptionRecordsWithTimeout:(double)timeout completionQueue:(id)queue completion:(id)completion;
- (void)fetchSystemStatusWithCompletionQueue:(id)queue completion:(id)completion;
- (void)fetchUserInfoWithCompletionQueue:(id)queue completion:(id)completion;
- (void)finishDownloadWithID:(unint64_t)d data:(id)data error:(id)error;
- (void)generateAppClipCodeWithVersion:(unint64_t)version lensType:(unint64_t)type leftRX:(id)x rightRX:(id)rX colorCode:(unint64_t)code secret:(id)secret completionQueue:(id)queue completion:(id)self0;
- (void)purgeDataWithOptions:(unint64_t)options completionQueue:(id)queue completion:(id)completion;
- (void)validateAndApplySharedLensEnrollmentAssetsWithCompletionQueue:(id)queue completion:(id)completion;
@end

@implementation CRXFCorePrescriptionServiceClient

- (CRXFCorePrescriptionServiceClient)initWithServer:(unint64_t)server serverVersion:(id)version timeout:(double)timeout
{
  versionCopy = version;
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

  v9->_timeout = timeout;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  downloads = v9->_downloads;
  v9->_downloads = dictionary;

  v14 = [CRXFServiceConnection alloc];
  xpcInterface = [(CRXFAbstractServiceClient *)v9 xpcInterface];
  v16 = [(CRXFServiceConnection *)v14 initWithServiceName:@"com.apple.CorePrescription.CalibrationDataFetcher" xpcInterface:xpcInterface];
  connection = v9->_connection;
  v9->_connection = v16;

  v9->_nextDownloadID = 0;
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v19 = dictionary2;
  if (server == 1)
  {
    v20 = &unk_285933B78;
    goto LABEL_6;
  }

  if (server == 2)
  {
    v20 = &unk_285933B90;
LABEL_6:
    [dictionary2 setObject:v20 forKeyedSubscript:@"environment"];
  }

  if (versionCopy)
  {
    v21 = [versionCopy copy];
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

- (void)downloadCalibrationDataForACCPayload:(id)payload orASAKey:(id)key completionQueue:(id)queue completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  keyCopy = key;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[CRXUDispatchQueue main];
  }

  if ([(CRXUNetworkReachability *)self->_networkReachability isConnected])
  {
    v14 = +[CRXFAppClipCodeTranscoder sharedInstance];
    v15 = payloadCopy;
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
        v44 = completionCopy;
        v18 = v29;
        [queueCopy dispatchAsync:v42];

        activate = v44;
LABEL_17:

        goto LABEL_18;
      }

      v32 = keyCopy;
    }

    else
    {
      v32 = keyCopy;
      v16 = 0;
    }

    v31 = completionCopy;
    v19 = [(CRXFCorePrescriptionServiceClient *)self addDownloadWithCompletionQueue:queueCopy completion:completionCopy];
    kdebug_trace();
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [CRXFCorePrescriptionServiceClient downloadCalibrationDataForACCPayload:orASAKey:completionQueue:completion:];
    }

    v33 = payloadCopy;
    activate = [(CRXFServiceConnection *)self->_connection activate];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke_179;
    v41[3] = &unk_278E9FCE0;
    v41[4] = self;
    v41[5] = v19;
    v21 = [activate remoteObjectProxyWithErrorHandler:v41];
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
    selfCopy = self;
    v40 = v19;
    v37 = v14;
    v38 = v21;
    keyCopy = v32;
    v39 = v32;
    v28 = v21;
    v18 = v16;
    [v28 fetchCalibrationDataForACC:v18 orASAKey:v39 options:fetchOptions completionHandler:v34];

    payloadCopy = v33;
    completionCopy = v31;
    goto LABEL_17;
  }

  v17 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:23 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ServiceClient/CRXFCorePrescriptionServiceClient.m" line:337 userInfo:MEMORY[0x277CBEC10]];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __110__CRXFCorePrescriptionServiceClient_downloadCalibrationDataForACCPayload_orASAKey_completionQueue_completion___block_invoke;
  v45[3] = &unk_278E9FCB8;
  v46 = v17;
  v47 = completionCopy;
  v14 = v17;
  [queueCopy dispatchAsync:v45];

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

- (void)fetchUserInfoWithCompletionQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v8 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__CRXFCorePrescriptionServiceClient_fetchUserInfoWithCompletionQueue_completion___block_invoke;
  v16[3] = &unk_278E9FD58;
  v17 = completionCopy;
  v10 = completionCopy;
  v11 = [(CRXFServiceRequest *)v8 initWithTimeout:queueCopy completionQueue:v16 completion:timeout];

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

- (void)fetchPrescriptionRecordsWithTimeout:(double)timeout completionQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v10 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __100__CRXFCorePrescriptionServiceClient_fetchPrescriptionRecordsWithTimeout_completionQueue_completion___block_invoke;
  v18[3] = &unk_278E9FDA8;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = [(CRXFServiceRequest *)v10 initWithTimeout:queueCopy completionQueue:v18 completion:timeout];

  v14 = [(CRXFServiceRequest *)v13 createProxyOnConnection:self->_connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __100__CRXFCorePrescriptionServiceClient_fetchPrescriptionRecordsWithTimeout_completionQueue_completion___block_invoke_2;
  v16[3] = &unk_278E9FDD0;
  v17 = v13;
  v15 = v13;
  [v14 fetchPrescriptionRecordsWithTimeout:v16 completionHandler:timeout];
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

- (void)purgeDataWithOptions:(unint64_t)options completionQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v10 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__CRXFCorePrescriptionServiceClient_purgeDataWithOptions_completionQueue_completion___block_invoke;
  v18[3] = &unk_278E9FDF8;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = [(CRXFServiceRequest *)v10 initWithTimeout:queueCopy completionQueue:v18 completion:timeout];

  v14 = [(CRXFServiceRequest *)v13 createProxyOnConnection:self->_connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__CRXFCorePrescriptionServiceClient_purgeDataWithOptions_completionQueue_completion___block_invoke_2;
  v16[3] = &unk_278E9FE20;
  v17 = v13;
  v15 = v13;
  [v14 purgeDataWithOptions:options completionHandler:v16];
}

- (void)validateAndApplySharedLensEnrollmentAssetsWithCompletionQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v8 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__CRXFCorePrescriptionServiceClient_validateAndApplySharedLensEnrollmentAssetsWithCompletionQueue_completion___block_invoke;
  v16[3] = &unk_278E9FDA8;
  v17 = completionCopy;
  v10 = completionCopy;
  v11 = [(CRXFServiceRequest *)v8 initWithTimeout:queueCopy completionQueue:v16 completion:timeout];

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

- (void)dumpDataStoreToFileHandle:(id)handle table:(id)table options:(unint64_t)options withCompletionQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  tableCopy = table;
  handleCopy = handle;
  v16 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __108__CRXFCorePrescriptionServiceClient_dumpDataStoreToFileHandle_table_options_withCompletionQueue_completion___block_invoke;
  v24[3] = &unk_278E9FDF8;
  v25 = completionCopy;
  v18 = completionCopy;
  v19 = [(CRXFServiceRequest *)v16 initWithTimeout:queueCopy completionQueue:v24 completion:timeout];

  v20 = [(CRXFServiceRequest *)v19 createProxyOnConnection:self->_connection];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __108__CRXFCorePrescriptionServiceClient_dumpDataStoreToFileHandle_table_options_withCompletionQueue_completion___block_invoke_2;
  v22[3] = &unk_278E9FE20;
  v23 = v19;
  v21 = v19;
  [v20 dumpDataStoreToFileHandle:handleCopy table:tableCopy options:options completionHandler:v22];
}

void __112__CRXFCorePrescriptionServiceClient_decodeAppClipCodePayload_allowUnsupportedRX_withCompletionQueue_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 crxfAppClipCodeForAppClipCodePayload:a2];
  [*(a1 + 40) finishWithResult:v7 error:v6];
}

- (void)generateAppClipCodeWithVersion:(unint64_t)version lensType:(unint64_t)type leftRX:(id)x rightRX:(id)rX colorCode:(unint64_t)code secret:(id)secret completionQueue:(id)queue completion:(id)self0
{
  xCopy = x;
  rXCopy = rX;
  secretCopy = secret;
  completionCopy = completion;
  queueCopy = queue;
  v19 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __136__CRXFCorePrescriptionServiceClient_generateAppClipCodeWithVersion_lensType_leftRX_rightRX_colorCode_secret_completionQueue_completion___block_invoke;
  v32[3] = &unk_278E9FE98;
  v21 = completionCopy;
  v33 = v21;
  v22 = [(CRXFServiceRequest *)v19 initWithTimeout:queueCopy completionQueue:v32 completion:timeout];

  v23 = [(CRXFServiceRequest *)v22 createProxyOnConnection:self->_connection];
  v24 = [(CRXFCorePrescriptionServiceClient *)self lensTypeForCRXFLensType:type];
  if (!rXCopy)
  {
    v25 = 0;
    if (xCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v26 = 0;
    goto LABEL_6;
  }

  v25 = [(CRXFCorePrescriptionServiceClient *)self eyePrescriptionForCRXFEyePrescription:rXCopy];
  if (!xCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v26 = [(CRXFCorePrescriptionServiceClient *)self eyePrescriptionForCRXFEyePrescription:xCopy];
LABEL_6:
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __136__CRXFCorePrescriptionServiceClient_generateAppClipCodeWithVersion_lensType_leftRX_rightRX_colorCode_secret_completionQueue_completion___block_invoke_2;
  v30[3] = &unk_278E9FEC0;
  v31 = v22;
  v27 = v22;
  [v23 generateAppClipCodePayloadWithVersion:version lensType:v24 odRX:v25 osRX:v26 colorCode:code secret:secretCopy completionHandler:v30];
}

- (void)fetchSystemStatusWithCompletionQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v8 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__CRXFCorePrescriptionServiceClient_fetchSystemStatusWithCompletionQueue_completion___block_invoke;
  v16[3] = &unk_278E9FEE8;
  v17 = completionCopy;
  v10 = completionCopy;
  v11 = [(CRXFServiceRequest *)v8 initWithTimeout:queueCopy completionQueue:v16 completion:timeout];

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

- (unint64_t)addDownloadWithCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = [CRXFServiceRequest alloc];
  timeout = self->_timeout;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__CRXFCorePrescriptionServiceClient_addDownloadWithCompletionQueue_completion___block_invoke;
  v17[3] = &unk_278E9FF38;
  v10 = completionCopy;
  v18 = v10;
  v11 = [(CRXFServiceRequest *)v8 initWithTimeout:queueCopy completionQueue:v17 completion:timeout];
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

- (void)finishDownloadWithID:(unint64_t)d data:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [CRXFCorePrescriptionServiceClient finishDownloadWithID:data:error:];
  }

  domain = [errorCopy domain];
  v11 = [domain isEqualToString:@"CorePrescription.CorePrescriptionServiceError"];

  if (v11)
  {
    if ([errorCopy code] == 3)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = MEMORY[0x277CBEC10];
      v14 = 19;
      v15 = 1417;
    }

    else if ([errorCopy code] == 1)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = MEMORY[0x277CBEC10];
      v14 = 18;
      v15 = 1419;
    }

    else
    {
      code = [errorCopy code];
      v12 = MEMORY[0x277CCA9B8];
      v13 = MEMORY[0x277CBEC10];
      if (code == 4)
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

    errorCopy = v17;
  }

  v18 = self->_downloads;
  objc_sync_enter(v18);
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:d];
  v20 = [(NSMutableDictionary *)self->_downloads objectForKeyedSubscript:v19];
  [(NSMutableDictionary *)self->_downloads removeObjectForKey:v19];

  objc_sync_exit(v18);
  if (v20)
  {
    [v20 finishWithResult:dataCopy error:errorCopy];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [CRXFCorePrescriptionServiceClient finishDownloadWithID:v20 data:? error:?];
    }
  }
}

- (id)crxfAppClipCodeForAppClipCodePayload:(id)payload
{
  payloadCopy = payload;
  v84 = -[CRXFCorePrescriptionServiceClient crxfLensTypeForLensType:](self, "crxfLensTypeForLensType:", [payloadCopy lensType]);
  left = [payloadCopy left];
  v81 = -[CRXFCorePrescriptionServiceClient crxfClampingStatusForClampingStatus:](self, "crxfClampingStatusForClampingStatus:", [left clampingStatus]);

  right = [payloadCopy right];
  v70 = -[CRXFCorePrescriptionServiceClient crxfClampingStatusForClampingStatus:](self, "crxfClampingStatusForClampingStatus:", [right clampingStatus]);

  v77 = [CRXFAppClipCode alloc];
  version = [payloadCopy version];
  left2 = [payloadCopy left];
  cylinderSignFlipped = [left2 cylinderSignFlipped];
  right2 = [payloadCopy right];
  cylinderSignFlipped2 = [right2 cylinderSignFlipped];
  left3 = [payloadCopy left];
  rxID = [left3 rxID];
  left4 = [payloadCopy left];
  calibratedRXID = [left4 calibratedRXID];
  left5 = [payloadCopy left];
  displayValues = [left5 displayValues];
  [displayValues sphere];
  v66 = v7;
  left6 = [payloadCopy left];
  displayValues2 = [left6 displayValues];
  [displayValues2 cylinder];
  v63 = v8;
  left7 = [payloadCopy left];
  calibrationValues = [left7 calibrationValues];
  [calibrationValues sphere];
  v10 = v9;
  left8 = [payloadCopy left];
  calibrationValues2 = [left8 calibrationValues];
  [calibrationValues2 cylinder];
  v12 = v11;
  left9 = [payloadCopy left];
  displayValues3 = [left9 displayValues];
  [displayValues3 vrAdd];
  v14 = v13;
  left10 = [payloadCopy left];
  axisID = [left10 axisID];
  left11 = [payloadCopy left];
  displayValues4 = [left11 displayValues];
  axis = [displayValues4 axis];
  left12 = [payloadCopy left];
  calibrationValues3 = [left12 calibrationValues];
  axis2 = [calibrationValues3 axis];
  right3 = [payloadCopy right];
  rxID2 = [right3 rxID];
  right4 = [payloadCopy right];
  calibratedRXID2 = [right4 calibratedRXID];
  right5 = [payloadCopy right];
  displayValues5 = [right5 displayValues];
  [displayValues5 sphere];
  v16 = v15;
  right6 = [payloadCopy right];
  displayValues6 = [right6 displayValues];
  [displayValues6 cylinder];
  v18 = v17;
  right7 = [payloadCopy right];
  calibrationValues4 = [right7 calibrationValues];
  [calibrationValues4 sphere];
  v20 = v19;
  right8 = [payloadCopy right];
  calibrationValues5 = [right8 calibrationValues];
  [calibrationValues5 cylinder];
  v22 = v21;
  right9 = [payloadCopy right];
  displayValues7 = [right9 displayValues];
  [displayValues7 vrAdd];
  v24 = v23;
  right10 = [payloadCopy right];
  axisID2 = [right10 axisID];
  right11 = [payloadCopy right];
  displayValues8 = [right11 displayValues];
  axis3 = [displayValues8 axis];
  right12 = [payloadCopy right];
  calibrationValues6 = [right12 calibrationValues];
  axis4 = [calibrationValues6 axis];
  lensColorCode = [payloadCopy lensColorCode];
  secret = [payloadCopy secret];
  randomBits = [payloadCopy randomBits];

  LODWORD(v43) = 0;
  LODWORD(v42) = 0;
  LODWORD(v34) = v66;
  LODWORD(v35) = v63;
  LODWORD(v36) = v10;
  LODWORD(v37) = v12;
  LODWORD(v38) = v14;
  LODWORD(v39) = v16;
  v40 = [(CRXFAppClipCode *)v77 initWithVersion:version lensType:v84 cylLeftSignFlipped:cylinderSignFlipped cylRightSignFlipped:cylinderSignFlipped2 leftRXID:rxID leftCalibrationRXID:calibratedRXID leftDisplaySphere:v34 leftDisplayCylinder:v35 leftCalibrationSphere:v36 leftCalibrationCylinder:v37 leftAddVR:v38 leftAxisID:0.0 leftDisplayAxis:0.0 leftCalibrationAxis:v39 leftClamping:axisID leftHorizPrismBaseDirection:axis leftHorizPrism:axis2 leftVertPrismBaseDirection:v81 leftVertPrism:2 rightRXID:2 rightCalibrationRXID:rxID2 rightDisplaySphere:calibratedRXID2 rightDisplayCylinder:__PAIR64__(v20 rightCalibrationSphere:v18) rightCalibrationCylinder:__PAIR64__(v24 rightAddVR:v22) rightAxisID:axisID2 rightDisplayAxis:axis3 rightCalibrationAxis:axis4 rightClamping:v70 rightHorizPrismBaseDirection:2 rightHorizPrism:v42 rightVertPrismBaseDirection:2 rightVertPrism:v43 identifyingColor:lensColorCode secret:secret randomBits:randomBits];

  return v40;
}

- (unint64_t)crxfLensTypeForLensType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (int64_t)lensTypeForCRXFLensType:(unint64_t)type
{
  if (type - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (unint64_t)crxfClampingStatusForClampingStatus:(int64_t)status
{
  if ((status - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

- (id)crxfCalibrationDataForFactoryCalibrationData:(id)data
{
  dataCopy = data;
  left = [dataCopy left];
  v5 = [left length];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    left2 = [dataCopy left];
    v8 = [v6 initWithData:left2 encoding:4];
  }

  else
  {
    v8 = 0;
  }

  right = [dataCopy right];
  v10 = [right length];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    right2 = [dataCopy right];
    v13 = [v11 initWithData:right2 encoding:4];
  }

  else
  {
    v13 = 0;
  }

  v14 = [CRXFCalibrationData alloc];
  v15 = [dataCopy acc];
  v16 = [(CRXFCalibrationData *)v14 initWithACCPayload:v15 leftCalibrationData:v8 rightCalibrationData:v13];

  return v16;
}

- (id)eyePrescriptionForCRXFEyePrescription:(id)prescription
{
  prescriptionCopy = prescription;
  v4 = [CRXCEyePrescription alloc];
  [prescriptionCopy sphere];
  v6 = v5;
  [prescriptionCopy cylinder];
  v8 = v7;
  axis = [prescriptionCopy axis];
  [prescriptionCopy add];
  v11 = v10;

  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  LODWORD(v14) = v11;
  v15 = [(CRXCEyePrescription *)v4 initWithSphere:axis cylinder:v12 axis:v13 vrAdd:v14];

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