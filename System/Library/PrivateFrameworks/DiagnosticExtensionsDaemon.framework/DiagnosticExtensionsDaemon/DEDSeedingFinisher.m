@interface DEDSeedingFinisher
+ (id)archivedClasses;
- (BOOL)isSecurityResearchDeviceERM;
- (BOOL)isUploading;
- (BOOL)shouldReportProgress;
- (BOOL)uploadFinished;
- (BOOL)uploadsAreComplete;
- (DEDBugSession)session;
- (DEDSeedingFinisher)initWithCoder:(id)a3;
- (DEDSeedingFinisher)initWithConfiguration:(id)a3 session:(id)a4;
- (id)additionalStateInfo;
- (id)archiveAndEncryptItemsInDirectory:(id)a3;
- (id)archiveItemsInDirectory:(id)a3;
- (id)attachmentHandler;
- (id)prepareSessionDirectoryForSubmission:(id)a3;
- (id)prepareUpload:(id)a3 forSubmissionWithSession:(id)a4 metadata:(id)a5;
- (id)uploadItemForTask:(id)a3;
- (void)cleanup;
- (void)didAdoptAttachmentGroup:(id)a3;
- (void)didCancelCollectionOnExtension:(id)a3;
- (void)didCollectAttachmentGroup:(id)a3;
- (void)didStartCollectingDiagnosticExtensionWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)finishSession:(id)a3 withConfiguration:(id)a4;
- (void)save;
- (void)updateUploadProgressOnSessionIfNeeded;
- (void)uploadTask:(id)a3 didCompleteWithError:(id)a4;
- (void)uploadTask:(id)a3 didSendBytes:(int64_t)a4 totalBytesExpectedToSend:(int64_t)a5;
@end

@implementation DEDSeedingFinisher

- (id)additionalStateInfo
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  [v3 setObject:&unk_285B89A60 forKeyedSubscript:@"version"];
  v17[0] = @"total_bytes_to_upload";
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[DEDSeedingFinisher totalUploadSize](self, "totalUploadSize")}];
  v17[1] = @"bytes_uploaded";
  v18[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[DEDSeedingFinisher bytesUploadedFromAllFiles](self, "bytesUploadedFromAllFiles")}];
  v18[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v3 setObject:v6 forKeyedSubscript:@"finisher"];

  v7 = [(DEDSeedingFinisher *)self config];

  if (v7)
  {
    v15 = @"allows_cellular_upload";
    v8 = MEMORY[0x277CCABB0];
    v9 = [(DEDSeedingFinisher *)self config];
    v10 = [v8 numberWithBool:{objc_msgSend(v9, "allowsCellularUpload")}];
    v16 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v3 setObject:v11 forKeyedSubscript:@"config"];
  }

  else
  {
    [v3 setObject:&stru_285B72378 forKeyedSubscript:@"config"];
  }

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isUploading
{
  v3 = [(DEDSeedingFinisher *)self client];
  v4 = [v3 ongoingUploads];

  v5 = [(DEDSeedingFinisher *)self promises];
  v6 = [v5 count];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __33__DEDSeedingFinisher_isUploading__block_invoke;
  v12[3] = &unk_278F655F8;
  v12[4] = self;
  v7 = [v4 ded_selectItemsPassingTest:v12];
  v8 = [v7 count];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;

  return v10;
}

uint64_t __33__DEDSeedingFinisher_isUploading__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __33__DEDSeedingFinisher_isUploading__block_invoke_cold_1(v4, v3, v6);
  }

  v7 = [v3 progress];
  v8 = [v7 isFinished];

  return v8 ^ 1u;
}

- (BOOL)uploadFinished
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(DEDSeedingFinisher *)self client];
  v4 = [v3 ongoingUploads];

  v5 = [(DEDSeedingFinisher *)self promises];
  v6 = [v5 count];

  v7 = [v4 count];
  v8 = [v4 ded_selectItemsPassingTest:&__block_literal_global_4];
  v9 = [v8 count];

  v10 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v16 = 134218496;
    v17 = v6;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v9;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_INFO, "[%lu] file promises. [%lu] uploads. [%lu] uploads completed.", &v16, 0x20u);
  }

  if (v6)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v13 = !v11 && v9 == v6;

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __36__DEDSeedingFinisher_uploadFinished__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 progress];
  v3 = [v2 isFinished];

  return v3;
}

- (void)finishSession:(id)a3 withConfiguration:(id)a4
{
  v96 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(DEDSeedingFinisher *)self setConfig:a4];
  [(DEDSeedingFinisher *)self setSession:v6];
  v7 = MEMORY[0x277CCACA8];
  v8 = [(DEDSeedingFinisher *)self config];
  v9 = [v8 seedingSubmissionType];
  v10 = "Unknown";
  if (v9 == 2)
  {
    v10 = "FFU";
  }

  if (v9 == 1)
  {
    v11 = "FR";
  }

  else
  {
    v11 = v10;
  }

  v12 = [(DEDSeedingFinisher *)self config];
  v13 = [v7 stringWithFormat:@"com.apple.diagnosticextensionsd-finishing-%s-%ld", v11, objc_msgSend(v12, "seedingSubmissionID")];

  v74 = v13;
  [v13 UTF8String];
  v14 = os_transaction_create();
  [(DEDSeedingFinisher *)self setTransaction:v14];

  v15 = [(DEDSeedingFinisher *)self client];

  if (!v15)
  {
    v16 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Initializing networking client for resuming finisher", buf, 2u);
    }

    v17 = [DEDSeedingClient alloc];
    v18 = [(DEDSeedingFinisher *)self config];
    v19 = [v6 identifier];
    v20 = [(DEDSeedingClient *)v17 initWithConfiguration:v18 sessionID:v19 delegate:self];
    [(DEDSeedingFinisher *)self setClient:v20];
  }

  v21 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(DEDSeedingFinisher *)self session];
    v23 = [v22 identifier];
    *buf = 138543362;
    v90 = v23;
    _os_log_impl(&dword_248AD7000, v21, OS_LOG_TYPE_DEFAULT, "Will prepare submission directory for bug session [%{public}@]", buf, 0xCu);
  }

  v24 = [(DEDSeedingFinisher *)self prepareSessionDirectoryForSubmission:v6];
  v25 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [(DEDSeedingFinisher *)self session];
    v27 = [v26 identifier];
    *buf = 138543362;
    v90 = v27;
    _os_log_impl(&dword_248AD7000, v25, OS_LOG_TYPE_DEFAULT, "Did prepare submission directory for bug session [%{public}@]", buf, 0xCu);
  }

  v75 = v6;
  v73 = v24;
  if ([v24 count])
  {
    v28 = [(DEDSeedingFinisher *)self uploads];
    [v28 addObjectsFromArray:v24];
  }

  else
  {
    v29 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v6 identifier];
      *buf = 138543362;
      v90 = v30;
      _os_log_impl(&dword_248AD7000, v29, OS_LOG_TYPE_DEFAULT, "Prepared session directory but got zero upload items on [%{public}@]. Will not start any new uploads", buf, 0xCu);
    }

    v31 = [(DEDSeedingFinisher *)self client];
    v32 = [v31 ongoingUploads];

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v28 = v32;
    v33 = [v28 countByEnumeratingWithState:&v84 objects:v95 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v85;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v85 != v35)
          {
            objc_enumerationMutation(v28);
          }

          v37 = *(*(&v84 + 1) + 8 * i);
          v38 = [(DEDSeedingFinisher *)self log];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [(DEDSeedingFinisher *)self session];
            v40 = [v39 identifier];
            v41 = [v37 taskIdentifier];
            v42 = [v37 progress];
            [v42 fractionCompleted];
            *buf = 138543874;
            v90 = v40;
            v91 = 2048;
            v92 = v41;
            v93 = 2048;
            v94 = v43 * 100.0;
            _os_log_impl(&dword_248AD7000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@] found upload task [%lu] completion [%.2f%%]", buf, 0x20u);
          }
        }

        v34 = [v28 countByEnumeratingWithState:&v84 objects:v95 count:16];
      }

      while (v34);
    }

    v6 = v75;
  }

  v44 = dispatch_group_create();
  [(DEDSeedingFinisher *)self setTotalUploadSize:0];
  v45 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [v6 identifier];
    v47 = [(DEDSeedingFinisher *)self uploads];
    v48 = [v47 count];
    *buf = 138543618;
    v90 = v46;
    v91 = 1024;
    LODWORD(v92) = v48;
    _os_log_impl(&dword_248AD7000, v45, OS_LOG_TYPE_DEFAULT, "will dispatch uploads for [%{public}@] with [%d] uploads", buf, 0x12u);
  }

  v49 = objc_alloc(MEMORY[0x277CBEB98]);
  v50 = [(DEDSeedingFinisher *)self uploads];
  v51 = [v49 initWithSet:v50];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v51;
  v52 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v81;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v81 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v56 = *(*(&v80 + 1) + 8 * j);
        dispatch_group_enter(v44);
        v57 = [(DEDSeedingFinisher *)self promises];
        v58 = [v56 extensionID];
        v59 = [v57 objectForKey:v58];

        v60 = [(DEDSeedingFinisher *)self log];
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = [v56 publicDescription];
          [v59 UUIDString];
          v62 = v54;
          v64 = v63 = v44;
          *buf = 138543618;
          v90 = v61;
          v91 = 2114;
          v92 = v64;
          _os_log_impl(&dword_248AD7000, v60, OS_LOG_TYPE_DEFAULT, "will send file %{public}@ promise: [%{public}@]", buf, 0x16u);

          v44 = v63;
          v54 = v62;
        }

        v65 = [(DEDSeedingFinisher *)self client];
        v66 = [v56 attachedPath];
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __54__DEDSeedingFinisher_finishSession_withConfiguration___block_invoke;
        v77[3] = &unk_278F65640;
        v77[4] = v56;
        v77[5] = self;
        v78 = v59;
        v79 = v44;
        v67 = v59;
        [v65 sendFile:v66 promise:v67 withCompletion:v77];
      }

      v53 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
    }

    while (v53);
  }

  dispatch_group_wait(v44, 0xFFFFFFFFFFFFFFFFLL);
  v68 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = [v75 identifier];
    *buf = 138543362;
    v90 = v69;
    _os_log_impl(&dword_248AD7000, v68, OS_LOG_TYPE_DEFAULT, "did dispatch all uploads for [%{public}@]", buf, 0xCu);
  }

  [v75 uploadProgress:0 total:{-[DEDSeedingFinisher totalUploadSize](self, "totalUploadSize")}];
  v70 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    v71 = [v75 identifier];
    *buf = 138543362;
    v90 = v71;
    _os_log_impl(&dword_248AD7000, v70, OS_LOG_TYPE_INFO, "finishSession completed (uploads are dispatched) for session [%{public}@]", buf, 0xCu);
  }

  v72 = *MEMORY[0x277D85DE8];
}

void __54__DEDSeedingFinisher_finishSession_withConfiguration___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 40) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      v22 = v5;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Error sending file %{public}@", &v21, 0xCu);
    }

    v7 = [*(a1 + 40) client];
    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) promiseFilename];
    v10 = [*(a1 + 32) fileSize];
    v11 = [v10 longLongValue];
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = 99;
  }

  else
  {
    [*(a1 + 32) setUploadTask:a2];
    v17 = [*(a1 + 32) fileSize];
    [*(a1 + 32) setTotalBytesExpectedToSend:{objc_msgSend(v17, "longLongValue")}];

    [*(a1 + 40) setTotalUploadSize:{objc_msgSend(*(a1 + 40), "totalUploadSize") + objc_msgSend(*(a1 + 32), "totalBytesExpectedToSend")}];
    v18 = [*(a1 + 32) extensionID];

    if (!v18)
    {
      goto LABEL_7;
    }

    v19 = *(a1 + 40);
    if (!*(a1 + 48))
    {
      v7 = [v19 log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __54__DEDSeedingFinisher_finishSession_withConfiguration___block_invoke_cold_1();
      }

      goto LABEL_6;
    }

    v7 = [v19 client];
    v20 = *(a1 + 48);
    v9 = [*(a1 + 32) promiseFilename];
    v10 = [*(a1 + 32) fileSize];
    v11 = [v10 longLongValue];
    v12 = v7;
    v13 = v20;
    v14 = v9;
    v15 = 3;
  }

  [v12 updatePromise:v13 withFilename:v14 size:v11 status:v15 success:0 error:0];

LABEL_6:
LABEL_7:
  dispatch_group_leave(*(a1 + 56));

  v16 = *MEMORY[0x277D85DE8];
}

- (DEDSeedingFinisher)initWithConfiguration:(id)a3 session:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = DEDSeedingFinisher;
  v9 = [(DEDSeedingFinisher *)&v22 init];
  if (v9)
  {
    v10 = [DEDSeedingClient alloc];
    v11 = [v8 identifier];
    v12 = [(DEDSeedingClient *)v10 initWithConfiguration:v7 sessionID:v11 delegate:v9];
    client = v9->_client;
    v9->_client = v12;

    objc_storeStrong(&v9->_config, a3);
    objc_storeWeak(&v9->_session, v8);
    v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    promises = v9->_promises;
    v9->_promises = v14;

    v16 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    uploads = v9->_uploads;
    v9->_uploads = v16;

    v18 = +[DEDConfiguration sharedInstance];
    v19 = os_log_create([v18 loggingSubsystem], "seed-finish");
    log = v9->_log;
    v9->_log = v19;

    v9->_isPreparing = 0;
    +[DEDFBKFeedbackUpload cleanUpIfNeeded];
  }

  return v9;
}

- (DEDSeedingFinisher)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = DEDSeedingFinisher;
  v5 = [(DEDSeedingFinisher *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB58];
    v7 = +[DEDSeedingFinisher archivedClasses];
    v8 = [v6 setWithSet:v7];

    v9 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [v8 minusSet:v9];

    v10 = [v4 decodeObjectOfClasses:v8 forKey:@"promises"];
    promises = v5->_promises;
    v5->_promises = v10;

    v5->_totalUploadSize = [v4 decodeInt64ForKey:@"totalUploadSize"];
    v5->_bytesUploadedFromAllFiles = [v4 decodeInt64ForKey:@"bytesUploaded"];
    v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    uploads = v5->_uploads;
    v5->_uploads = v12;

    v14 = +[DEDConfiguration sharedInstance];
    v15 = os_log_create([v14 loggingSubsystem], "seed-finish");
    log = v5->_log;
    v5->_log = v15;

    v17 = v5->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v5->_promises;
      *buf = 138412290;
      v23 = v18;
      _os_log_impl(&dword_248AD7000, v17, OS_LOG_TYPE_INFO, "Restoring Seeding Finisher with promises %@", buf, 0xCu);
    }

    v5->_isPreparing = 0;
    +[DEDFBKFeedbackUpload cleanUpIfNeeded];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)didStartCollectingDiagnosticExtensionWithIdentifier:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v8 = [v4 UUID];
  v6 = [(DEDSeedingFinisher *)self promises];
  [v6 setObject:v8 forKeyedSubscript:v5];

  [(DEDSeedingFinisher *)self save];
  v7 = [(DEDSeedingFinisher *)self client];
  [v7 makePromiseWithUUID:v8 extensionID:v5 success:0 error:0];
}

- (void)didCollectAttachmentGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionID];

  if (v5)
  {
    v6 = [(DEDSeedingFinisher *)self promises];
    v7 = [v4 extensionID];
    v8 = [v6 objectForKey:v7];

    v9 = [(DEDSeedingFinisher *)self client];
    [v9 updatePromise:v8 withAttachmentGroup:v4 status:2 success:0 error:0];
  }

  else
  {
    v10 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingFinisher didCollectAttachmentGroup:];
    }
  }
}

- (void)didCancelCollectionOnExtension:(id)a3
{
  v4 = a3;
  v5 = [(DEDSeedingFinisher *)self promises];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(DEDSeedingFinisher *)self client];
    [v7 cancelPromise:v6 withSuccess:0 error:0];

    v8 = [(DEDSeedingFinisher *)self promises];
    [v8 removeObjectForKey:v4];
  }

  else
  {
    v8 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingFinisher didCancelCollectionOnExtension:];
    }
  }
}

- (void)didAdoptAttachmentGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionID];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [(DEDSeedingFinisher *)self promises];
    v8 = [v4 extensionID];
    [v7 setObject:v6 forKeyedSubscript:v8];

    [(DEDSeedingFinisher *)self save];
    v9 = [(DEDSeedingFinisher *)self client];
    v10 = [v4 extensionID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__DEDSeedingFinisher_didAdoptAttachmentGroup___block_invoke;
    v12[3] = &unk_278F65668;
    v12[4] = self;
    v13 = v6;
    v14 = v4;
    v11 = v6;
    [v9 makePromiseWithUUID:v11 extensionID:v10 success:v12 error:0];
  }
}

void __46__DEDSeedingFinisher_didAdoptAttachmentGroup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  [v2 updatePromise:*(a1 + 40) withAttachmentGroup:*(a1 + 48) status:2 success:0 error:0];
}

- (void)cleanup
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(DEDSeedingFinisher *)self promises];
  v4 = [v3 allValues];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(DEDSeedingFinisher *)self promises];
      v8 = [v7 allValues];
      v9 = [v8 valueForKeyPath:@"UUIDString"];
      *buf = 138543362;
      v40 = v9;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Found promises on cleanup, will cancel [%{public}@]", buf, 0xCu);
    }

    v10 = dispatch_group_create();
    v11 = [(DEDSeedingFinisher *)self promises];
    v12 = [v11 copy];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = v12;
    obj = [v12 allKeys];
    v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = [v27 objectForKeyedSubscript:v17];
          v19 = [(DEDSeedingFinisher *)self promises];
          [v19 removeObjectForKey:v17];

          dispatch_group_enter(v10);
          v20 = [(DEDSeedingFinisher *)self client];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __29__DEDSeedingFinisher_cleanup__block_invoke;
          v31[3] = &unk_278F65668;
          v31[4] = self;
          v21 = v18;
          v32 = v21;
          v33 = v10;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __29__DEDSeedingFinisher_cleanup__block_invoke_64;
          v28[3] = &unk_278F65690;
          v28[4] = self;
          v29 = v21;
          v30 = v33;
          v22 = v21;
          [v20 cancelPromise:v22 withSuccess:v31 error:v28];
        }

        v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v23 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v23, OS_LOG_TYPE_DEFAULT, "did finish cleanup cancel file promises", buf, 2u);
    }
  }

  v24 = [(DEDSeedingFinisher *)self client];
  [v24 cleanup];

  v25 = *MEMORY[0x277D85DE8];
}

void __29__DEDSeedingFinisher_cleanup__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) UUIDString];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "did cleanup cancel promise [%{public}@]", &v5, 0xCu);
  }

  dispatch_group_leave(*(a1 + 48));
  v4 = *MEMORY[0x277D85DE8];
}

void __29__DEDSeedingFinisher_cleanup__block_invoke_64(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) UUIDString];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "did failed to cleanup cancel promise [%{public}@]", &v5, 0xCu);
  }

  dispatch_group_leave(*(a1 + 48));
  v4 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(DEDSeedingFinisher *)self promises];
  [v5 encodeObject:v4 forKey:@"promises"];

  [v5 encodeInt64:-[DEDSeedingFinisher totalUploadSize](self forKey:{"totalUploadSize"), @"totalUploadSize"}];
  [v5 encodeInt64:-[DEDSeedingFinisher bytesUploadedFromAllFiles](self forKey:{"bytesUploadedFromAllFiles"), @"bytesUploaded"}];
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
}

- (void)uploadTask:(id)a3 didCompleteWithError:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 134218240;
    v33 = [v6 taskIdentifier];
    v34 = 1024;
    v35 = v7 != 0;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Upload Task: [%lu] did complete. Error? [%i]", &v32, 0x12u);
  }

  v9 = [(DEDSeedingFinisher *)self uploadItemForTask:v6];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 fileSize];
    [v10 setBytesUploaded:{objc_msgSend(v11, "longLongValue")}];

    [v10 setCompleted:1];
    [(DEDSeedingFinisher *)self updateUploadProgressOnSessionIfNeeded];
    v12 = [(DEDSeedingFinisher *)self promises];
    v13 = [v10 extensionID];
    v14 = [v12 objectForKey:v13];

    if (v14)
    {
      if (v7)
      {
        v15 = [(DEDSeedingFinisher *)self log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [DEDSeedingFinisher uploadTask:v6 didCompleteWithError:?];
        }

        v16 = [(DEDSeedingFinisher *)self client];
        v17 = [v10 promiseFilename];
        v18 = [v10 fileSize];
        v19 = [v18 longLongValue];
        v20 = v16;
        v21 = v14;
        v22 = v17;
        v23 = 99;
      }

      else
      {
        v16 = [(DEDSeedingFinisher *)self client];
        v17 = [v10 promiseFilename];
        v18 = [v10 fileSize];
        v19 = [v18 longLongValue];
        v20 = v16;
        v21 = v14;
        v22 = v17;
        v23 = 4;
      }

      [v20 updatePromise:v21 withFilename:v22 size:v19 status:v23 success:0 error:0];
    }

    else
    {
      v16 = [(DEDSeedingFinisher *)self log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DEDSeedingFinisher uploadTask:didCompleteWithError:];
      }
    }

    v24 = [v10 attachedPath];

    if (v24)
    {
      v25 = MEMORY[0x277D051E0];
      v26 = [v10 attachedPath];
      [v25 removeFile:v26];
    }
  }

  if ([(DEDSeedingFinisher *)self uploadsAreComplete])
  {
    [(DEDSeedingFinisher *)self setTransaction:0];
    v27 = objc_opt_new();
    [(DEDSeedingFinisher *)self setPromises:v27];

    v28 = [(DEDSeedingFinisher *)self session];
    v29 = [v28 identifier];
    [DEDFBKFeedbackUpload didFinishUploadOnBugSessionIdentifier:v29];

    v30 = [(DEDSeedingFinisher *)self session];
    [v30 didFinishUploadingWithError:v7];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)uploadTask:(id)a3 didSendBytes:(int64_t)a4 totalBytesExpectedToSend:(int64_t)a5
{
  v8 = a3;
  v9 = [(DEDSeedingFinisher *)self uploadItemForTask:v8];
  v10 = v9;
  if (v9)
  {
    [v9 setBytesUploaded:a4];
  }

  else
  {
    v11 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingFinisher uploadTask:v8 didSendBytes:? totalBytesExpectedToSend:?];
    }

    v12 = objc_alloc_init(DEDSeedingUploadItem);
    [(DEDSeedingUploadItem *)v12 setUploadTask:v8];
    [(DEDSeedingUploadItem *)v12 setBytesUploaded:a4];
    [(DEDSeedingUploadItem *)v12 setTotalBytesExpectedToSend:a5];
    v13 = [(DEDSeedingFinisher *)self uploads];
    [v13 addObject:v12];
  }

  [(DEDSeedingFinisher *)self updateUploadProgressOnSessionIfNeeded];
}

- (void)updateUploadProgressOnSessionIfNeeded
{
  v33 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(DEDSeedingFinisher *)self uploads];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v18 + 1) + 8 * i) bytesUploaded];
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v32 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(DEDSeedingFinisher *)self setBytesUploadedFromAllFiles:v6];
  if ([(DEDSeedingFinisher *)self shouldReportProgress])
  {
    [(DEDSeedingFinisher *)self setUploadProgressCounter:[(DEDSeedingFinisher *)self uploadProgressCounter]+ 1];
    v9 = [(DEDSeedingFinisher *)self session];
    [v9 uploadProgress:-[DEDSeedingFinisher bytesUploadedFromAllFiles](self total:{"bytesUploadedFromAllFiles"), -[DEDSeedingFinisher totalUploadSize](self, "totalUploadSize")}];

    v10 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(DEDSeedingFinisher *)self session];
      v12 = [v11 identifier];
      v13 = [(DEDSeedingFinisher *)self lastUploadPercentageReported];
      v14 = [(DEDSeedingFinisher *)self bytesUploadedFromAllFiles];
      v15 = [(DEDSeedingFinisher *)self totalUploadSize];
      v16 = [(DEDSeedingFinisher *)self uploadProgressCounter];
      *buf = 138544386;
      v23 = v12;
      v24 = 2048;
      v25 = v13;
      v26 = 2048;
      v27 = v14;
      v28 = 2048;
      v29 = v15;
      v30 = 1024;
      v31 = v16;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_INFO, "[%{public}@] upload progress: %lu%% (sent: %lu total: %lu) updateCount: %i", buf, 0x30u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldReportProgress
{
  if ([(DEDSeedingFinisher *)self totalUploadSize])
  {
    v3 = [(DEDSeedingFinisher *)self bytesUploadedFromAllFiles];
    v4 = 5 * (((v3 / [(DEDSeedingFinisher *)self totalUploadSize]) * 100.0) / 5);
    v5 = v4 != [(DEDSeedingFinisher *)self lastUploadPercentageReported]&& [(DEDSeedingFinisher *)self uploadProgressCounter]< 100;
    [(DEDSeedingFinisher *)self setLastUploadPercentageReported:v4];
  }

  else
  {
    v6 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [DEDSeedingFinisher shouldReportProgress];
    }

    return 0;
  }

  return v5;
}

- (BOOL)uploadsAreComplete
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(DEDSeedingFinisher *)self uploads];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v6 &= [*(*(&v10 + 1) + 8 * i) completed];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isSecurityResearchDeviceERM
{
  if (isSecurityResearchDeviceERM_onceToken != -1)
  {
    [DEDSeedingFinisher isSecurityResearchDeviceERM];
  }

  return isSecurityResearchDeviceERM_ermEnabled;
}

- (id)prepareSessionDirectoryForSubmission:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(DEDSeedingFinisher *)self setIsPreparing:1];
  v48 = self;
  v5 = [(DEDSeedingFinisher *)self attachmentHandler];
  v43 = v4;
  v6 = [v4 identifier];
  v39 = v5;
  v7 = [v5 directoryForBugSessionIdentifier:v6];

  v38 = v7;
  v8 = [MEMORY[0x277D051E0] lsDir:v7];
  v40 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    v12 = *MEMORY[0x277CBE868];
    v41 = *MEMORY[0x277CBE868];
    v42 = *v52;
    do
    {
      v13 = 0;
      v44 = v10;
      do
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v51 + 1) + 8 * v13);
        v49 = 0;
        v50 = 0;
        [v14 getResourceValue:&v50 forKey:v12 error:&v49];
        v15 = v50;
        v16 = v49;
        if ([v15 BOOLValue])
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v18 = MEMORY[0x277CCACA8];
          v19 = [(DEDSeedingFinisher *)v48 config];
          v20 = [v19 seedingSubmissionType];
          v21 = "Unknown";
          if (v20 == 2)
          {
            v21 = "feedback_followup_id";
          }

          if (v20 == 1)
          {
            v22 = "feedback_id";
          }

          else
          {
            v22 = v21;
          }

          v23 = [v18 stringWithUTF8String:v22];

          v24 = [v14 lastPathComponent];
          v25 = [(DEDSeedingFinisher *)v48 promises];
          v47 = v24;
          v26 = [v25 objectForKey:v24];

          if (v26)
          {
            v27 = [v26 UUIDString];
            v46 = v23;
            v57[0] = v23;
            v28 = MEMORY[0x277CCABB0];
            v29 = [(DEDSeedingFinisher *)v48 config];
            v30 = [v28 numberWithInteger:{objc_msgSend(v29, "seedingSubmissionID")}];
            v57[1] = @"promise_uuid";
            v58[0] = v30;
            v58[1] = v27;
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

            v32 = [(DEDSeedingFinisher *)v48 prepareUpload:v14 forSubmissionWithSession:v43 metadata:v31];
            [v32 setFilePromiseUUID:v27];
            if (v32)
            {
              [v40 addObject:v32];
            }

            v12 = v41;
            v11 = v42;
            v10 = v44;
            v23 = v46;
            v33 = v47;
          }

          else
          {
            v27 = [(DEDSeedingFinisher *)v48 log];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v33 = v47;
              v56 = v47;
              _os_log_error_impl(&dword_248AD7000, v27, OS_LOG_TYPE_ERROR, "found no promise for extension ID [%{public}@]", buf, 0xCu);
              v10 = v44;
            }

            else
            {
              v10 = v44;
              v33 = v47;
            }
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v34 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
      v10 = v34;
    }

    while (v34);
  }

  [(DEDSeedingFinisher *)v48 setIsPreparing:0];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v40];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)prepareUpload:(id)a3 forSubmissionWithSession:(id)a4 metadata:(id)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DEDSeedingFinisher prepareUpload:forSubmissionWithSession:metadata:];
  }

  v12 = [(DEDSeedingFinisher *)self attachmentHandler];
  v67 = [v8 lastPathComponent];
  v13 = [v9 objectForKeyedSubscript:@"promise_uuid"];
  if (v13)
  {
    v14 = [v9 objectForKeyedSubscript:@"promise_uuid"];
  }

  else
  {
    v15 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v15 UUIDString];
  }

  v16 = MEMORY[0x277CCACA8];
  v17 = [(DEDSeedingFinisher *)self config];
  v18 = [v17 seedingSubmissionType];
  v19 = "Unknown";
  if (v18 == 2)
  {
    v19 = "FFU";
  }

  if (v18 == 1)
  {
    v20 = "FR";
  }

  else
  {
    v20 = v19;
  }

  v21 = [(DEDSeedingFinisher *)self config];
  v22 = [v16 stringWithFormat:@"%s-%ld-%@", v20, objc_msgSend(v21, "seedingSubmissionID"), v14];

  v23 = [v10 identifier];

  v24 = [v12 directoryForBugSessionIdentifier:v23];
  v25 = [v24 URLByAppendingPathComponent:v22];

  v26 = [MEMORY[0x277D051E0] createDirectoryWithClassCDataProtection:v25];
  if (!v26)
  {
    v28 = [MEMORY[0x277D051E0] lsDir:v8];
    if (![v28 count])
    {
      v34 = [v8 lastPathComponent];
      v35 = [v25 URLByAppendingPathComponent:v34];

      v32 = v35;
      v36 = [MEMORY[0x277D051E0] createDirectoryWithClassCDataProtection:v35];
      if (v36)
      {
        v27 = v36;
        v66 = [(DEDSeedingFinisher *)self log];
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [DEDSeedingFinisher prepareUpload:v27 forSubmissionWithSession:? metadata:?];
        }

        goto LABEL_66;
      }

      v43 = [MEMORY[0x277D051A8] archiveDirectoryAt:v35];
      if (!v43)
      {
        v66 = [(DEDSeedingFinisher *)self log];
        if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
LABEL_65:
          v27 = 0;
LABEL_66:
          v29 = 0;
          goto LABEL_67;
        }

LABEL_64:
        [DEDSeedingFinisher prepareUpload:forSubmissionWithSession:metadata:];
        goto LABEL_65;
      }
    }

    if ([v28 count]>= 2)
    {
      v30 = [v8 lastPathComponent];
      v31 = [v25 URLByAppendingPathComponent:v30];

      v32 = v31;
      v33 = [MEMORY[0x277D051E0] createDirectoryWithClassCDataProtection:v31];
      if (v33)
      {
        v27 = v33;
        v66 = [(DEDSeedingFinisher *)self log];
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [DEDSeedingFinisher prepareUpload:v27 forSubmissionWithSession:? metadata:?];
        }

        v29 = 0;
        goto LABEL_67;
      }

      if (([MEMORY[0x277D051E0] copyAllFilesFromDir:v8 toDir:v31] & 1) == 0)
      {
        v44 = [(DEDSeedingFinisher *)self log];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [DEDSeedingFinisher prepareUpload:forSubmissionWithSession:metadata:];
        }

        v32 = v31;
      }

      v45 = [MEMORY[0x277D051A8] archiveDirectoryAt:v32];
      if (v45)
      {
        v38 = v45;
        v65 = v32;
        v46 = [v45 lastPathComponent];
LABEL_41:

        v65 = v46;
        goto LABEL_42;
      }

      v66 = [(DEDSeedingFinisher *)self log];
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if ([v28 count]!= 1)
    {
      v65 = 0;
LABEL_42:
      v66 = [v25 URLByAppendingPathComponent:@"__fileclerk.json"];
      v68 = 0;
      v64 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v9 options:0 error:&v68];
      v27 = v68;
      if (v27)
      {
        v48 = [(DEDSeedingFinisher *)self log];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [DEDSeedingFinisher prepareUpload:v27 forSubmissionWithSession:? metadata:?];
        }
      }

      [v64 writeToURL:v66 atomically:1];
      if ([(DEDSeedingFinisher *)self isSecurityResearchDeviceERM])
      {
        [(DEDSeedingFinisher *)self archiveAndEncryptItemsInDirectory:v25];
      }

      else
      {
        [(DEDSeedingFinisher *)self archiveItemsInDirectory:v25];
      }
      v49 = ;
      v50 = [(DEDSeedingFinisher *)self log];
      v51 = v50;
      if (v49)
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v60 = [v49 lastPathComponent];
          v62 = v22;
          v52 = [v8 lastPathComponent];
          *buf = 138543618;
          v71 = v60;
          v72 = 2114;
          v73 = v52;
          v53 = v52;
          _os_log_impl(&dword_248AD7000, v51, OS_LOG_TYPE_INFO, "created upload file name [%{public}@] from directory [%{public}@]", buf, 0x16u);

          v22 = v62;
        }

        [MEMORY[0x277D051E0] removeFile:v8];
        if (v65)
        {
          v54 = v65;
        }

        else
        {
          v54 = &stru_285B72378;
        }

        v29 = [DEDSeedingUploadItem itemAtPath:v49 enclosedFilename:v54 extensionID:v67];
      }

      else
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [DEDSeedingFinisher prepareUpload:forSubmissionWithSession:metadata:];
        }

        v29 = 0;
      }

      goto LABEL_60;
    }

    v37 = [v28 objectAtIndexedSubscript:0];
    v69 = 0;
    [(__CFString *)v37 getResourceValue:&v69 forKey:*MEMORY[0x277CBE868] error:0];
    v38 = v69;
    v65 = v37;
    if ([v38 BOOLValue])
    {
      v66 = v38;
      v39 = [(__CFString *)v37 lastPathComponent];
      v40 = [v25 URLByAppendingPathComponent:v39];

      v41 = v40;
      v27 = [MEMORY[0x277D051E0] createDirectoryWithClassCDataProtection:v40];
      v61 = v41;
      if (v27)
      {
        v42 = [(DEDSeedingFinisher *)self log];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [DEDSeedingFinisher prepareUpload:v27 forSubmissionWithSession:? metadata:?];
        }

LABEL_29:

        v29 = 0;
LABEL_60:
        v32 = v65;
LABEL_67:

        goto LABEL_68;
      }

      if (([MEMORY[0x277D051E0] copyAllFilesFromDir:v65 toDir:v41] & 1) == 0)
      {
        v57 = [(DEDSeedingFinisher *)self log];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [DEDSeedingFinisher prepareUpload:forSubmissionWithSession:metadata:];
        }

        v41 = v61;
      }

      v58 = [MEMORY[0x277D051A8] archiveDirectoryAt:v41];
      if (!v58)
      {
        v42 = [(DEDSeedingFinisher *)self log];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [DEDSeedingFinisher prepareUpload:forSubmissionWithSession:metadata:];
        }

        goto LABEL_29;
      }

      v59 = v58;
      v63 = [v58 lastPathComponent];

      v38 = v66;
      v47 = v61;
    }

    else
    {
      v47 = [MEMORY[0x277D051E0] copyAndReturn:v37 toDir:v25];
      v63 = [v47 lastPathComponent];
    }

    v46 = v63;
    goto LABEL_41;
  }

  v27 = v26;
  v28 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [DEDSeedingFinisher prepareUpload:v27 forSubmissionWithSession:? metadata:?];
  }

  v29 = 0;
LABEL_68:

  v55 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)archiveAndEncryptItemsInDirectory:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDSeedingFinisher archiveAndEncryptItemsInDirectory:v4];
  }

  v6 = [objc_alloc(MEMORY[0x277D051A0]) initWithURL:v4];
  if (v6)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = v4;
    obj = [MEMORY[0x277D051E0] lsDir:v4];
    v7 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 URLByAppendingPathExtension:@"aea"];
          v13 = [v12 lastPathComponent];
          if (![_TtC26DiagnosticExtensionsDaemon10AEAHandler encryptWithSourceURL:v11 destinationURL:v12])
          {
            v14 = [(DEDSeedingFinisher *)self log];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v29 = v11;
              v30 = 2114;
              v31 = v13;
              v32 = 2114;
              v33 = v12;
              _os_log_error_impl(&dword_248AD7000, v14, OS_LOG_TYPE_ERROR, "failed to aea encrypt [%{public}@] with path name [%{public}@] to [%{public}@]", buf, 0x20u);
            }
          }

          if (([v6 addFile:v12 withPathName:v13] & 1) == 0)
          {
            v15 = [(DEDSeedingFinisher *)self log];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = [v6 tarGzUrl];
              *buf = 138543874;
              v29 = v11;
              v30 = 2114;
              v31 = v13;
              v32 = 2114;
              v33 = v16;
              v17 = v16;
              _os_log_error_impl(&dword_248AD7000, v15, OS_LOG_TYPE_ERROR, "failed to add [%{public}@] with path name [%{public}@] to [%{public}@]", buf, 0x20u);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v8);
    }

    [v6 closeArchive];
    v4 = v22;
    [MEMORY[0x277D051E0] removeFile:v22];
    v18 = [v6 tarGzUrl];
  }

  else
  {
    v19 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingFinisher archiveAndEncryptItemsInDirectory:];
    }

    v18 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)archiveItemsInDirectory:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDSeedingFinisher archiveItemsInDirectory:v4];
  }

  v6 = [objc_alloc(MEMORY[0x277D051A0]) initWithURL:v4];
  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = v4;
    v7 = [MEMORY[0x277D051E0] lsDir:v4];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 lastPathComponent];
          if (([v6 addFile:v12 withPathName:v13] & 1) == 0)
          {
            v14 = [(DEDSeedingFinisher *)self log];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = [v6 tarGzUrl];
              *buf = 138543874;
              v26 = v12;
              v27 = 2114;
              v28 = v13;
              v29 = 2114;
              v30 = v15;
              _os_log_error_impl(&dword_248AD7000, v14, OS_LOG_TYPE_ERROR, "failed to add [%{public}@] with path name [%{public}@] to [%{public}@]", buf, 0x20u);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v9);
    }

    [v6 closeArchive];
    v4 = v20;
    [MEMORY[0x277D051E0] removeFile:v20];
    v16 = [v6 tarGzUrl];
  }

  else
  {
    v17 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingFinisher archiveAndEncryptItemsInDirectory:];
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)save
{
  v2 = [(DEDSeedingFinisher *)self session];
  [v2 save];
}

- (id)attachmentHandler
{
  v2 = objc_alloc_init(DEDAttachmentHandler);

  return v2;
}

- (id)uploadItemForTask:(id)a3
{
  v4 = a3;
  v5 = [(DEDSeedingFinisher *)self uploads];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__DEDSeedingFinisher_uploadItemForTask___block_invoke;
  v9[3] = &unk_278F656B8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 ded_findWithBlock:v9];

  return v7;
}

uint64_t __40__DEDSeedingFinisher_uploadItemForTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uploadTask];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (DEDBugSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

void __33__DEDSeedingFinisher_isUploading__block_invoke_cold_1(id *a1, void *a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [*a1 session];
  v6 = [v5 identifier];
  v7 = [a2 taskIdentifier];
  v8 = [a2 progress];
  [v8 fractionCompleted];
  v11 = 138543874;
  v12 = v6;
  v13 = 2048;
  v14 = v7;
  v15 = 2048;
  v16 = v9 * 100.0;
  _os_log_debug_impl(&dword_248AD7000, a3, OS_LOG_TYPE_DEBUG, "isUploading? | [%{public}@] found upload task [%lu] completion [%.2f%%]", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)uploadTask:(void *)a1 didCompleteWithError:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 taskIdentifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)uploadTask:didCompleteWithError:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "finished upload but found no promise for  [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)uploadTask:(void *)a1 didSendBytes:(void *)a2 totalBytesExpectedToSend:.cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 session];
  v10 = [v3 identifier];
  [a2 taskIdentifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)prepareUpload:forSubmissionWithSession:metadata:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_248AD7000, v0, OS_LOG_TYPE_DEBUG, "_preparing upload for %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)prepareUpload:(void *)a1 forSubmissionWithSession:metadata:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prepareUpload:(void *)a1 forSubmissionWithSession:metadata:.cold.9(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)archiveAndEncryptItemsInDirectory:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5(&dword_248AD7000, v2, v3, "archiveAndEncryptItemsInDirectory [%{public}@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)archiveAndEncryptItemsInDirectory:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Failed to initialize archive at [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)archiveItemsInDirectory:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5(&dword_248AD7000, v2, v3, "archiveItemsInDirectory [%{public}@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end