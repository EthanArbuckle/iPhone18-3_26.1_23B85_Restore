@interface DEDSeedingFinisher
+ (id)archivedClasses;
- (BOOL)isSecurityResearchDeviceERM;
- (BOOL)isUploading;
- (BOOL)shouldReportProgress;
- (BOOL)uploadFinished;
- (BOOL)uploadsAreComplete;
- (DEDBugSession)session;
- (DEDSeedingFinisher)initWithCoder:(id)coder;
- (DEDSeedingFinisher)initWithConfiguration:(id)configuration session:(id)session;
- (id)additionalStateInfo;
- (id)archiveAndEncryptItemsInDirectory:(id)directory;
- (id)archiveItemsInDirectory:(id)directory;
- (id)attachmentHandler;
- (id)prepareSessionDirectoryForSubmission:(id)submission;
- (id)prepareUpload:(id)upload forSubmissionWithSession:(id)session metadata:(id)metadata;
- (id)uploadItemForTask:(id)task;
- (void)cleanup;
- (void)didAdoptAttachmentGroup:(id)group;
- (void)didCancelCollectionOnExtension:(id)extension;
- (void)didCollectAttachmentGroup:(id)group;
- (void)didStartCollectingDiagnosticExtensionWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)finishSession:(id)session withConfiguration:(id)configuration;
- (void)save;
- (void)updateUploadProgressOnSessionIfNeeded;
- (void)uploadTask:(id)task didCompleteWithError:(id)error;
- (void)uploadTask:(id)task didSendBytes:(int64_t)bytes totalBytesExpectedToSend:(int64_t)send;
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

  config = [(DEDSeedingFinisher *)self config];

  if (config)
  {
    v15 = @"allows_cellular_upload";
    v8 = MEMORY[0x277CCABB0];
    config2 = [(DEDSeedingFinisher *)self config];
    v10 = [v8 numberWithBool:{objc_msgSend(config2, "allowsCellularUpload")}];
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
  client = [(DEDSeedingFinisher *)self client];
  ongoingUploads = [client ongoingUploads];

  promises = [(DEDSeedingFinisher *)self promises];
  v6 = [promises count];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __33__DEDSeedingFinisher_isUploading__block_invoke;
  v12[3] = &unk_278F655F8;
  v12[4] = self;
  v7 = [ongoingUploads ded_selectItemsPassingTest:v12];
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
  client = [(DEDSeedingFinisher *)self client];
  ongoingUploads = [client ongoingUploads];

  promises = [(DEDSeedingFinisher *)self promises];
  v6 = [promises count];

  v7 = [ongoingUploads count];
  v8 = [ongoingUploads ded_selectItemsPassingTest:&__block_literal_global_4];
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

- (void)finishSession:(id)session withConfiguration:(id)configuration
{
  v96 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  [(DEDSeedingFinisher *)self setConfig:configuration];
  [(DEDSeedingFinisher *)self setSession:sessionCopy];
  v7 = MEMORY[0x277CCACA8];
  config = [(DEDSeedingFinisher *)self config];
  seedingSubmissionType = [config seedingSubmissionType];
  v10 = "Unknown";
  if (seedingSubmissionType == 2)
  {
    v10 = "FFU";
  }

  if (seedingSubmissionType == 1)
  {
    v11 = "FR";
  }

  else
  {
    v11 = v10;
  }

  config2 = [(DEDSeedingFinisher *)self config];
  v13 = [v7 stringWithFormat:@"com.apple.diagnosticextensionsd-finishing-%s-%ld", v11, objc_msgSend(config2, "seedingSubmissionID")];

  v74 = v13;
  [v13 UTF8String];
  v14 = os_transaction_create();
  [(DEDSeedingFinisher *)self setTransaction:v14];

  client = [(DEDSeedingFinisher *)self client];

  if (!client)
  {
    v16 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Initializing networking client for resuming finisher", buf, 2u);
    }

    v17 = [DEDSeedingClient alloc];
    config3 = [(DEDSeedingFinisher *)self config];
    identifier = [sessionCopy identifier];
    v20 = [(DEDSeedingClient *)v17 initWithConfiguration:config3 sessionID:identifier delegate:self];
    [(DEDSeedingFinisher *)self setClient:v20];
  }

  v21 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    session = [(DEDSeedingFinisher *)self session];
    identifier2 = [session identifier];
    *buf = 138543362;
    v90 = identifier2;
    _os_log_impl(&dword_248AD7000, v21, OS_LOG_TYPE_DEFAULT, "Will prepare submission directory for bug session [%{public}@]", buf, 0xCu);
  }

  v24 = [(DEDSeedingFinisher *)self prepareSessionDirectoryForSubmission:sessionCopy];
  v25 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    session2 = [(DEDSeedingFinisher *)self session];
    identifier3 = [session2 identifier];
    *buf = 138543362;
    v90 = identifier3;
    _os_log_impl(&dword_248AD7000, v25, OS_LOG_TYPE_DEFAULT, "Did prepare submission directory for bug session [%{public}@]", buf, 0xCu);
  }

  v75 = sessionCopy;
  v73 = v24;
  if ([v24 count])
  {
    uploads = [(DEDSeedingFinisher *)self uploads];
    [uploads addObjectsFromArray:v24];
  }

  else
  {
    v29 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      identifier4 = [sessionCopy identifier];
      *buf = 138543362;
      v90 = identifier4;
      _os_log_impl(&dword_248AD7000, v29, OS_LOG_TYPE_DEFAULT, "Prepared session directory but got zero upload items on [%{public}@]. Will not start any new uploads", buf, 0xCu);
    }

    client2 = [(DEDSeedingFinisher *)self client];
    ongoingUploads = [client2 ongoingUploads];

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    uploads = ongoingUploads;
    v33 = [uploads countByEnumeratingWithState:&v84 objects:v95 count:16];
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
            objc_enumerationMutation(uploads);
          }

          v37 = *(*(&v84 + 1) + 8 * i);
          v38 = [(DEDSeedingFinisher *)self log];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            session3 = [(DEDSeedingFinisher *)self session];
            identifier5 = [session3 identifier];
            taskIdentifier = [v37 taskIdentifier];
            progress = [v37 progress];
            [progress fractionCompleted];
            *buf = 138543874;
            v90 = identifier5;
            v91 = 2048;
            v92 = taskIdentifier;
            v93 = 2048;
            v94 = v43 * 100.0;
            _os_log_impl(&dword_248AD7000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@] found upload task [%lu] completion [%.2f%%]", buf, 0x20u);
          }
        }

        v34 = [uploads countByEnumeratingWithState:&v84 objects:v95 count:16];
      }

      while (v34);
    }

    sessionCopy = v75;
  }

  v44 = dispatch_group_create();
  [(DEDSeedingFinisher *)self setTotalUploadSize:0];
  v45 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    identifier6 = [sessionCopy identifier];
    uploads2 = [(DEDSeedingFinisher *)self uploads];
    v48 = [uploads2 count];
    *buf = 138543618;
    v90 = identifier6;
    v91 = 1024;
    LODWORD(v92) = v48;
    _os_log_impl(&dword_248AD7000, v45, OS_LOG_TYPE_DEFAULT, "will dispatch uploads for [%{public}@] with [%d] uploads", buf, 0x12u);
  }

  v49 = objc_alloc(MEMORY[0x277CBEB98]);
  uploads3 = [(DEDSeedingFinisher *)self uploads];
  v51 = [v49 initWithSet:uploads3];

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
        promises = [(DEDSeedingFinisher *)self promises];
        extensionID = [v56 extensionID];
        v59 = [promises objectForKey:extensionID];

        v60 = [(DEDSeedingFinisher *)self log];
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          publicDescription = [v56 publicDescription];
          [v59 UUIDString];
          v62 = v54;
          v64 = v63 = v44;
          *buf = 138543618;
          v90 = publicDescription;
          v91 = 2114;
          v92 = v64;
          _os_log_impl(&dword_248AD7000, v60, OS_LOG_TYPE_DEFAULT, "will send file %{public}@ promise: [%{public}@]", buf, 0x16u);

          v44 = v63;
          v54 = v62;
        }

        client3 = [(DEDSeedingFinisher *)self client];
        attachedPath = [v56 attachedPath];
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __54__DEDSeedingFinisher_finishSession_withConfiguration___block_invoke;
        v77[3] = &unk_278F65640;
        v77[4] = v56;
        v77[5] = self;
        v78 = v59;
        v79 = v44;
        v67 = v59;
        [client3 sendFile:attachedPath promise:v67 withCompletion:v77];
      }

      v53 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
    }

    while (v53);
  }

  dispatch_group_wait(v44, 0xFFFFFFFFFFFFFFFFLL);
  v68 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    identifier7 = [v75 identifier];
    *buf = 138543362;
    v90 = identifier7;
    _os_log_impl(&dword_248AD7000, v68, OS_LOG_TYPE_DEFAULT, "did dispatch all uploads for [%{public}@]", buf, 0xCu);
  }

  [v75 uploadProgress:0 total:{-[DEDSeedingFinisher totalUploadSize](self, "totalUploadSize")}];
  v70 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    identifier8 = [v75 identifier];
    *buf = 138543362;
    v90 = identifier8;
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

- (DEDSeedingFinisher)initWithConfiguration:(id)configuration session:(id)session
{
  configurationCopy = configuration;
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = DEDSeedingFinisher;
  v9 = [(DEDSeedingFinisher *)&v22 init];
  if (v9)
  {
    v10 = [DEDSeedingClient alloc];
    identifier = [sessionCopy identifier];
    v12 = [(DEDSeedingClient *)v10 initWithConfiguration:configurationCopy sessionID:identifier delegate:v9];
    client = v9->_client;
    v9->_client = v12;

    objc_storeStrong(&v9->_config, configuration);
    objc_storeWeak(&v9->_session, sessionCopy);
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

- (DEDSeedingFinisher)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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

    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"promises"];
    promises = v5->_promises;
    v5->_promises = v10;

    v5->_totalUploadSize = [coderCopy decodeInt64ForKey:@"totalUploadSize"];
    v5->_bytesUploadedFromAllFiles = [coderCopy decodeInt64ForKey:@"bytesUploaded"];
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

- (void)didStartCollectingDiagnosticExtensionWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  uUID = [v4 UUID];
  promises = [(DEDSeedingFinisher *)self promises];
  [promises setObject:uUID forKeyedSubscript:identifierCopy];

  [(DEDSeedingFinisher *)self save];
  client = [(DEDSeedingFinisher *)self client];
  [client makePromiseWithUUID:uUID extensionID:identifierCopy success:0 error:0];
}

- (void)didCollectAttachmentGroup:(id)group
{
  groupCopy = group;
  extensionID = [groupCopy extensionID];

  if (extensionID)
  {
    promises = [(DEDSeedingFinisher *)self promises];
    extensionID2 = [groupCopy extensionID];
    v8 = [promises objectForKey:extensionID2];

    client = [(DEDSeedingFinisher *)self client];
    [client updatePromise:v8 withAttachmentGroup:groupCopy status:2 success:0 error:0];
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

- (void)didCancelCollectionOnExtension:(id)extension
{
  extensionCopy = extension;
  promises = [(DEDSeedingFinisher *)self promises];
  v6 = [promises objectForKey:extensionCopy];

  if (v6)
  {
    client = [(DEDSeedingFinisher *)self client];
    [client cancelPromise:v6 withSuccess:0 error:0];

    promises2 = [(DEDSeedingFinisher *)self promises];
    [promises2 removeObjectForKey:extensionCopy];
  }

  else
  {
    promises2 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(promises2, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingFinisher didCancelCollectionOnExtension:];
    }
  }
}

- (void)didAdoptAttachmentGroup:(id)group
{
  groupCopy = group;
  extensionID = [groupCopy extensionID];

  if (extensionID)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    promises = [(DEDSeedingFinisher *)self promises];
    extensionID2 = [groupCopy extensionID];
    [promises setObject:uUID forKeyedSubscript:extensionID2];

    [(DEDSeedingFinisher *)self save];
    client = [(DEDSeedingFinisher *)self client];
    extensionID3 = [groupCopy extensionID];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__DEDSeedingFinisher_didAdoptAttachmentGroup___block_invoke;
    v12[3] = &unk_278F65668;
    v12[4] = self;
    v13 = uUID;
    v14 = groupCopy;
    v11 = uUID;
    [client makePromiseWithUUID:v11 extensionID:extensionID3 success:v12 error:0];
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
  promises = [(DEDSeedingFinisher *)self promises];
  allValues = [promises allValues];
  v5 = [allValues count];

  if (v5)
  {
    v6 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      promises2 = [(DEDSeedingFinisher *)self promises];
      allValues2 = [promises2 allValues];
      v9 = [allValues2 valueForKeyPath:@"UUIDString"];
      *buf = 138543362;
      v40 = v9;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Found promises on cleanup, will cancel [%{public}@]", buf, 0xCu);
    }

    v10 = dispatch_group_create();
    promises3 = [(DEDSeedingFinisher *)self promises];
    v12 = [promises3 copy];

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
          promises4 = [(DEDSeedingFinisher *)self promises];
          [promises4 removeObjectForKey:v17];

          dispatch_group_enter(v10);
          client = [(DEDSeedingFinisher *)self client];
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
          [client cancelPromise:v22 withSuccess:v31 error:v28];
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

  client2 = [(DEDSeedingFinisher *)self client];
  [client2 cleanup];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  promises = [(DEDSeedingFinisher *)self promises];
  [coderCopy encodeObject:promises forKey:@"promises"];

  [coderCopy encodeInt64:-[DEDSeedingFinisher totalUploadSize](self forKey:{"totalUploadSize"), @"totalUploadSize"}];
  [coderCopy encodeInt64:-[DEDSeedingFinisher bytesUploadedFromAllFiles](self forKey:{"bytesUploadedFromAllFiles"), @"bytesUploaded"}];
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

- (void)uploadTask:(id)task didCompleteWithError:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  v8 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 134218240;
    taskIdentifier = [taskCopy taskIdentifier];
    v34 = 1024;
    v35 = errorCopy != 0;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Upload Task: [%lu] did complete. Error? [%i]", &v32, 0x12u);
  }

  v9 = [(DEDSeedingFinisher *)self uploadItemForTask:taskCopy];
  v10 = v9;
  if (v9)
  {
    fileSize = [v9 fileSize];
    [v10 setBytesUploaded:{objc_msgSend(fileSize, "longLongValue")}];

    [v10 setCompleted:1];
    [(DEDSeedingFinisher *)self updateUploadProgressOnSessionIfNeeded];
    promises = [(DEDSeedingFinisher *)self promises];
    extensionID = [v10 extensionID];
    v14 = [promises objectForKey:extensionID];

    if (v14)
    {
      if (errorCopy)
      {
        v15 = [(DEDSeedingFinisher *)self log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [DEDSeedingFinisher uploadTask:taskCopy didCompleteWithError:?];
        }

        client = [(DEDSeedingFinisher *)self client];
        promiseFilename = [v10 promiseFilename];
        fileSize2 = [v10 fileSize];
        longLongValue = [fileSize2 longLongValue];
        v20 = client;
        v21 = v14;
        v22 = promiseFilename;
        v23 = 99;
      }

      else
      {
        client = [(DEDSeedingFinisher *)self client];
        promiseFilename = [v10 promiseFilename];
        fileSize2 = [v10 fileSize];
        longLongValue = [fileSize2 longLongValue];
        v20 = client;
        v21 = v14;
        v22 = promiseFilename;
        v23 = 4;
      }

      [v20 updatePromise:v21 withFilename:v22 size:longLongValue status:v23 success:0 error:0];
    }

    else
    {
      client = [(DEDSeedingFinisher *)self log];
      if (os_log_type_enabled(client, OS_LOG_TYPE_ERROR))
      {
        [DEDSeedingFinisher uploadTask:didCompleteWithError:];
      }
    }

    attachedPath = [v10 attachedPath];

    if (attachedPath)
    {
      v25 = MEMORY[0x277D051E0];
      attachedPath2 = [v10 attachedPath];
      [v25 removeFile:attachedPath2];
    }
  }

  if ([(DEDSeedingFinisher *)self uploadsAreComplete])
  {
    [(DEDSeedingFinisher *)self setTransaction:0];
    v27 = objc_opt_new();
    [(DEDSeedingFinisher *)self setPromises:v27];

    session = [(DEDSeedingFinisher *)self session];
    identifier = [session identifier];
    [DEDFBKFeedbackUpload didFinishUploadOnBugSessionIdentifier:identifier];

    session2 = [(DEDSeedingFinisher *)self session];
    [session2 didFinishUploadingWithError:errorCopy];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)uploadTask:(id)task didSendBytes:(int64_t)bytes totalBytesExpectedToSend:(int64_t)send
{
  taskCopy = task;
  v9 = [(DEDSeedingFinisher *)self uploadItemForTask:taskCopy];
  v10 = v9;
  if (v9)
  {
    [v9 setBytesUploaded:bytes];
  }

  else
  {
    v11 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingFinisher uploadTask:taskCopy didSendBytes:? totalBytesExpectedToSend:?];
    }

    v12 = objc_alloc_init(DEDSeedingUploadItem);
    [(DEDSeedingUploadItem *)v12 setUploadTask:taskCopy];
    [(DEDSeedingUploadItem *)v12 setBytesUploaded:bytes];
    [(DEDSeedingUploadItem *)v12 setTotalBytesExpectedToSend:send];
    uploads = [(DEDSeedingFinisher *)self uploads];
    [uploads addObject:v12];
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
  uploads = [(DEDSeedingFinisher *)self uploads];
  v4 = [uploads countByEnumeratingWithState:&v18 objects:v32 count:16];
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
          objc_enumerationMutation(uploads);
        }

        v6 += [*(*(&v18 + 1) + 8 * i) bytesUploaded];
      }

      v5 = [uploads countByEnumeratingWithState:&v18 objects:v32 count:16];
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
    session = [(DEDSeedingFinisher *)self session];
    [session uploadProgress:-[DEDSeedingFinisher bytesUploadedFromAllFiles](self total:{"bytesUploadedFromAllFiles"), -[DEDSeedingFinisher totalUploadSize](self, "totalUploadSize")}];

    v10 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      session2 = [(DEDSeedingFinisher *)self session];
      identifier = [session2 identifier];
      lastUploadPercentageReported = [(DEDSeedingFinisher *)self lastUploadPercentageReported];
      bytesUploadedFromAllFiles = [(DEDSeedingFinisher *)self bytesUploadedFromAllFiles];
      totalUploadSize = [(DEDSeedingFinisher *)self totalUploadSize];
      uploadProgressCounter = [(DEDSeedingFinisher *)self uploadProgressCounter];
      *buf = 138544386;
      v23 = identifier;
      v24 = 2048;
      v25 = lastUploadPercentageReported;
      v26 = 2048;
      v27 = bytesUploadedFromAllFiles;
      v28 = 2048;
      v29 = totalUploadSize;
      v30 = 1024;
      v31 = uploadProgressCounter;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_INFO, "[%{public}@] upload progress: %lu%% (sent: %lu total: %lu) updateCount: %i", buf, 0x30u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldReportProgress
{
  if ([(DEDSeedingFinisher *)self totalUploadSize])
  {
    bytesUploadedFromAllFiles = [(DEDSeedingFinisher *)self bytesUploadedFromAllFiles];
    v4 = 5 * (((bytesUploadedFromAllFiles / [(DEDSeedingFinisher *)self totalUploadSize]) * 100.0) / 5);
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
  uploads = [(DEDSeedingFinisher *)self uploads];
  v3 = [uploads countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(uploads);
        }

        v6 &= [*(*(&v10 + 1) + 8 * i) completed];
      }

      v4 = [uploads countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)prepareSessionDirectoryForSubmission:(id)submission
{
  v60 = *MEMORY[0x277D85DE8];
  submissionCopy = submission;
  [(DEDSeedingFinisher *)self setIsPreparing:1];
  selfCopy = self;
  attachmentHandler = [(DEDSeedingFinisher *)self attachmentHandler];
  v43 = submissionCopy;
  identifier = [submissionCopy identifier];
  v39 = attachmentHandler;
  v7 = [attachmentHandler directoryForBugSessionIdentifier:identifier];

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
          config = [(DEDSeedingFinisher *)selfCopy config];
          seedingSubmissionType = [config seedingSubmissionType];
          v21 = "Unknown";
          if (seedingSubmissionType == 2)
          {
            v21 = "feedback_followup_id";
          }

          if (seedingSubmissionType == 1)
          {
            v22 = "feedback_id";
          }

          else
          {
            v22 = v21;
          }

          v23 = [v18 stringWithUTF8String:v22];

          lastPathComponent = [v14 lastPathComponent];
          promises = [(DEDSeedingFinisher *)selfCopy promises];
          v47 = lastPathComponent;
          v26 = [promises objectForKey:lastPathComponent];

          if (v26)
          {
            uUIDString = [v26 UUIDString];
            v46 = v23;
            v57[0] = v23;
            v28 = MEMORY[0x277CCABB0];
            config2 = [(DEDSeedingFinisher *)selfCopy config];
            v30 = [v28 numberWithInteger:{objc_msgSend(config2, "seedingSubmissionID")}];
            v57[1] = @"promise_uuid";
            v58[0] = v30;
            v58[1] = uUIDString;
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

            v32 = [(DEDSeedingFinisher *)selfCopy prepareUpload:v14 forSubmissionWithSession:v43 metadata:v31];
            [v32 setFilePromiseUUID:uUIDString];
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
            uUIDString = [(DEDSeedingFinisher *)selfCopy log];
            if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v33 = v47;
              v56 = v47;
              _os_log_error_impl(&dword_248AD7000, uUIDString, OS_LOG_TYPE_ERROR, "found no promise for extension ID [%{public}@]", buf, 0xCu);
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

  [(DEDSeedingFinisher *)selfCopy setIsPreparing:0];
  v35 = [MEMORY[0x277CBEA60] arrayWithArray:v40];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)prepareUpload:(id)upload forSubmissionWithSession:(id)session metadata:(id)metadata
{
  v74 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  metadataCopy = metadata;
  sessionCopy = session;
  v11 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DEDSeedingFinisher prepareUpload:forSubmissionWithSession:metadata:];
  }

  attachmentHandler = [(DEDSeedingFinisher *)self attachmentHandler];
  lastPathComponent = [uploadCopy lastPathComponent];
  v13 = [metadataCopy objectForKeyedSubscript:@"promise_uuid"];
  if (v13)
  {
    uUIDString = [metadataCopy objectForKeyedSubscript:@"promise_uuid"];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
  }

  v16 = MEMORY[0x277CCACA8];
  config = [(DEDSeedingFinisher *)self config];
  seedingSubmissionType = [config seedingSubmissionType];
  v19 = "Unknown";
  if (seedingSubmissionType == 2)
  {
    v19 = "FFU";
  }

  if (seedingSubmissionType == 1)
  {
    v20 = "FR";
  }

  else
  {
    v20 = v19;
  }

  config2 = [(DEDSeedingFinisher *)self config];
  v22 = [v16 stringWithFormat:@"%s-%ld-%@", v20, objc_msgSend(config2, "seedingSubmissionID"), uUIDString];

  identifier = [sessionCopy identifier];

  v24 = [attachmentHandler directoryForBugSessionIdentifier:identifier];
  v25 = [v24 URLByAppendingPathComponent:v22];

  v26 = [MEMORY[0x277D051E0] createDirectoryWithClassCDataProtection:v25];
  if (!v26)
  {
    v28 = [MEMORY[0x277D051E0] lsDir:uploadCopy];
    if (![v28 count])
    {
      lastPathComponent2 = [uploadCopy lastPathComponent];
      v35 = [v25 URLByAppendingPathComponent:lastPathComponent2];

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
      lastPathComponent3 = [uploadCopy lastPathComponent];
      v31 = [v25 URLByAppendingPathComponent:lastPathComponent3];

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

      if (([MEMORY[0x277D051E0] copyAllFilesFromDir:uploadCopy toDir:v31] & 1) == 0)
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
        lastPathComponent4 = [v45 lastPathComponent];
LABEL_41:

        v65 = lastPathComponent4;
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
      v64 = [MEMORY[0x277CCAAA0] dataWithJSONObject:metadataCopy options:0 error:&v68];
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
          lastPathComponent5 = [v49 lastPathComponent];
          v62 = v22;
          lastPathComponent6 = [uploadCopy lastPathComponent];
          *buf = 138543618;
          v71 = lastPathComponent5;
          v72 = 2114;
          v73 = lastPathComponent6;
          v53 = lastPathComponent6;
          _os_log_impl(&dword_248AD7000, v51, OS_LOG_TYPE_INFO, "created upload file name [%{public}@] from directory [%{public}@]", buf, 0x16u);

          v22 = v62;
        }

        [MEMORY[0x277D051E0] removeFile:uploadCopy];
        if (v65)
        {
          v54 = v65;
        }

        else
        {
          v54 = &stru_285B72378;
        }

        v29 = [DEDSeedingUploadItem itemAtPath:v49 enclosedFilename:v54 extensionID:lastPathComponent];
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
      lastPathComponent7 = [(__CFString *)v37 lastPathComponent];
      v40 = [v25 URLByAppendingPathComponent:lastPathComponent7];

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
      lastPathComponent8 = [v58 lastPathComponent];

      v38 = v66;
      v47 = v61;
    }

    else
    {
      v47 = [MEMORY[0x277D051E0] copyAndReturn:v37 toDir:v25];
      lastPathComponent8 = [v47 lastPathComponent];
    }

    lastPathComponent4 = lastPathComponent8;
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

- (id)archiveAndEncryptItemsInDirectory:(id)directory
{
  v35 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v5 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDSeedingFinisher archiveAndEncryptItemsInDirectory:directoryCopy];
  }

  v6 = [objc_alloc(MEMORY[0x277D051A0]) initWithURL:directoryCopy];
  if (v6)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = directoryCopy;
    obj = [MEMORY[0x277D051E0] lsDir:directoryCopy];
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
          lastPathComponent = [v12 lastPathComponent];
          if (![_TtC26DiagnosticExtensionsDaemon10AEAHandler encryptWithSourceURL:v11 destinationURL:v12])
          {
            v14 = [(DEDSeedingFinisher *)self log];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v29 = v11;
              v30 = 2114;
              v31 = lastPathComponent;
              v32 = 2114;
              v33 = v12;
              _os_log_error_impl(&dword_248AD7000, v14, OS_LOG_TYPE_ERROR, "failed to aea encrypt [%{public}@] with path name [%{public}@] to [%{public}@]", buf, 0x20u);
            }
          }

          if (([v6 addFile:v12 withPathName:lastPathComponent] & 1) == 0)
          {
            v15 = [(DEDSeedingFinisher *)self log];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              tarGzUrl = [v6 tarGzUrl];
              *buf = 138543874;
              v29 = v11;
              v30 = 2114;
              v31 = lastPathComponent;
              v32 = 2114;
              v33 = tarGzUrl;
              v17 = tarGzUrl;
              _os_log_error_impl(&dword_248AD7000, v15, OS_LOG_TYPE_ERROR, "failed to add [%{public}@] with path name [%{public}@] to [%{public}@]", buf, 0x20u);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v8);
    }

    [v6 closeArchive];
    directoryCopy = v22;
    [MEMORY[0x277D051E0] removeFile:v22];
    tarGzUrl2 = [v6 tarGzUrl];
  }

  else
  {
    v19 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingFinisher archiveAndEncryptItemsInDirectory:];
    }

    tarGzUrl2 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return tarGzUrl2;
}

- (id)archiveItemsInDirectory:(id)directory
{
  v32 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v5 = [(DEDSeedingFinisher *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDSeedingFinisher archiveItemsInDirectory:directoryCopy];
  }

  v6 = [objc_alloc(MEMORY[0x277D051A0]) initWithURL:directoryCopy];
  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = directoryCopy;
    v7 = [MEMORY[0x277D051E0] lsDir:directoryCopy];
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
          lastPathComponent = [v12 lastPathComponent];
          if (([v6 addFile:v12 withPathName:lastPathComponent] & 1) == 0)
          {
            v14 = [(DEDSeedingFinisher *)self log];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              tarGzUrl = [v6 tarGzUrl];
              *buf = 138543874;
              v26 = v12;
              v27 = 2114;
              v28 = lastPathComponent;
              v29 = 2114;
              v30 = tarGzUrl;
              _os_log_error_impl(&dword_248AD7000, v14, OS_LOG_TYPE_ERROR, "failed to add [%{public}@] with path name [%{public}@] to [%{public}@]", buf, 0x20u);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v9);
    }

    [v6 closeArchive];
    directoryCopy = v20;
    [MEMORY[0x277D051E0] removeFile:v20];
    tarGzUrl2 = [v6 tarGzUrl];
  }

  else
  {
    v17 = [(DEDSeedingFinisher *)self log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingFinisher archiveAndEncryptItemsInDirectory:];
    }

    tarGzUrl2 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return tarGzUrl2;
}

- (void)save
{
  session = [(DEDSeedingFinisher *)self session];
  [session save];
}

- (id)attachmentHandler
{
  v2 = objc_alloc_init(DEDAttachmentHandler);

  return v2;
}

- (id)uploadItemForTask:(id)task
{
  taskCopy = task;
  uploads = [(DEDSeedingFinisher *)self uploads];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__DEDSeedingFinisher_uploadItemForTask___block_invoke;
  v9[3] = &unk_278F656B8;
  v10 = taskCopy;
  v6 = taskCopy;
  v7 = [uploads ded_findWithBlock:v9];

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