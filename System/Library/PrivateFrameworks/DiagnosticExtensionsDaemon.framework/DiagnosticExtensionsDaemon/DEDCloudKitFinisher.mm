@interface DEDCloudKitFinisher
+ (id)archivedClasses;
- (DEDBugSession)session;
- (DEDCloudKitFinisher)initWithCoder:(id)coder;
- (DEDCloudKitFinisher)initWithConfiguration:(id)configuration session:(id)session;
- (id)additionalStateInfo;
- (id)createAttachmentGroupStatusWithAttachmentGroupModel:(id)model;
- (id)createAttachmentGroupWithData:(id)data;
- (id)createAttachmentModelWithURL:(id)l andQueueItem:(id)item attachmentGroupModel:(id)model;
- (id)encryptLogsForExtensionIdentifier:(id)identifier withAttachmentUrl:(id)url;
- (id)encryptLogsIfNecessary:(id)necessary;
- (id)extractExtensionIdentifierFromAttachmentUrl:(id)url;
- (id)getAttachmentURLsWithProgressHandler:(id)handler;
- (id)parsePayloadData:(id)data forIdentifier:(id)identifier;
- (void)createAttachmentGroupStatusForAttachmentGroup:(id)group completionHandler:(id)handler;
- (void)didCancelCollectionOnExtension:(id)extension;
- (void)didCollectAttachmentGroup:(id)group;
- (void)didStartCollectingDiagnosticExtensionWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)finishSession:(id)session withConfiguration:(id)configuration;
- (void)localCleanup;
- (void)processAttachmentsWithRecord:(id)record withProgress:(double)progress;
- (void)uploadAttachments:(id)attachments inAttachmentGroup:(id)group completionHandler:(id)handler;
- (void)writeData:(id)data filename:(id)filename;
@end

@implementation DEDCloudKitFinisher

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DEDCloudKitFinisher state](self forKey:{"state"), @"state"}];
  anonymousDeviceUUID = [(DEDCloudKitFinisher *)self anonymousDeviceUUID];
  [coderCopy encodeObject:anonymousDeviceUUID forKey:@"anonymousDeviceUUID"];
}

- (DEDCloudKitFinisher)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DEDCloudKitFinisher;
  v5 = [(DEDCloudKitFinisher *)&v11 init];
  if (v5)
  {
    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v6 = [coderCopy decodeObjectForKey:@"anonymousDeviceUUID"];
    anonymousDeviceUUID = v5->_anonymousDeviceUUID;
    v5->_anonymousDeviceUUID = v6;

    if (!v5->_anonymousDeviceUUID)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      v9 = v5->_anonymousDeviceUUID;
      v5->_anonymousDeviceUUID = uUID;
    }
  }

  return v5;
}

- (DEDCloudKitFinisher)initWithConfiguration:(id)configuration session:(id)session
{
  configurationCopy = configuration;
  sessionCopy = session;
  v20.receiver = self;
  v20.super_class = DEDCloudKitFinisher;
  v8 = [(DEDCloudKitFinisher *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    anonymousDeviceUUID = v9->_anonymousDeviceUUID;
    v9->_anonymousDeviceUUID = uUID;

    v12 = +[DEDConfiguration sharedInstance];
    v13 = os_log_create([v12 loggingSubsystem], "ded-cloudkit-finisher");
    log = v9->_log;
    v9->_log = v13;

    objc_storeWeak(&v9->_session, sessionCopy);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    attachments = v9->_attachments;
    v9->_attachments = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uploadedBytes = v9->_uploadedBytes;
    v9->_uploadedBytes = v17;

    v9->_sandboxEnvironment = [configurationCopy cloudkitUseDevelopmentEnvironment];
  }

  return v9;
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (void)finishSession:(id)session withConfiguration:(id)configuration
{
  v88 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  configurationCopy = configuration;
  v8 = [(DEDCloudKitFinisher *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    cloudkitContainer = [configurationCopy cloudkitContainer];
    *buf = 138543362;
    v81 = cloudkitContainer;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Starting CloudKit finishSession with container: %{public}@", buf, 0xCu);
  }

  v10 = [(DEDCloudKitFinisher *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    allowsCellularUpload = [configurationCopy allowsCellularUpload];
    *buf = 67240192;
    LODWORD(v81) = allowsCellularUpload;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "allowsCellularUpload: %{public}d", buf, 8u);
  }

  [(DEDCloudKitFinisher *)self setState:1];
  cloudkitContainer2 = [configurationCopy cloudkitContainer];

  if (cloudkitContainer2)
  {
    [(DEDCloudKitFinisher *)self setSession:sessionCopy];
    [(DEDCloudKitFinisher *)self setTotalUploadSize:0];
    v13 = [[DEDCloudKitClient alloc] initWithBugSession:sessionCopy configuration:configurationCopy];
    [(DEDCloudKitFinisher *)self setCloudKitClient:v13];

    cloudkitData = [configurationCopy cloudkitData];
    v15 = [cloudkitData objectForKeyedSubscript:@"payload"];

    v63 = v15;
    [v15 dataUsingEncoding:4];
    v61 = v79[5] = 0;
    v16 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
    v17 = 0;
    [(DEDCloudKitFinisher *)self setQueuePayload:v16];

    if (v17)
    {
      v18 = [(DEDCloudKitFinisher *)self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [DEDCloudKitFinisher finishSession:withConfiguration:];
      }
    }

    v62 = v17;
    v65 = sessionCopy;
    cloudkitData2 = [configurationCopy cloudkitData];
    v20 = [cloudkitData2 objectForKeyedSubscript:@"gigafilesToken"];
    [(DEDCloudKitFinisher *)self setTimberLorryUUID:v20];

    cloudkitData3 = [configurationCopy cloudkitData];
    v22 = [cloudkitData3 objectForKeyedSubscript:@"enrollmentTicketNumber"];

    if (v22)
    {
      cloudkitData4 = [configurationCopy cloudkitData];
      v24 = [cloudkitData4 objectForKeyedSubscript:@"enrollmentTicketNumber"];
      [(DEDCloudKitFinisher *)self setTimberLorryUUID:v24];
    }

    v64 = configurationCopy;
    cloudkitData5 = [configurationCopy cloudkitData];
    v26 = [(DEDCloudKitFinisher *)self createAttachmentGroupWithData:cloudkitData5];
    [(DEDCloudKitFinisher *)self setAttachmentGroupModel:v26];

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __55__DEDCloudKitFinisher_finishSession_withConfiguration___block_invoke;
    v79[3] = &unk_278F660D0;
    v79[4] = self;
    v60 = MEMORY[0x24C1E5320](v79);
    v59 = [[DEDCompressionDebouncer alloc] initWithTrigger:v60 interval:1.0];
    handler = [(DEDCompressionDebouncer *)v59 handler];
    v28 = [(DEDCloudKitFinisher *)self getAttachmentURLsWithProgressHandler:handler];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v28;
    v67 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (v67)
    {
      v66 = *v76;
      do
      {
        v29 = 0;
        do
        {
          if (*v76 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v69 = v29;
          v30 = *(*(&v75 + 1) + 8 * v29);
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v31 = [obj objectForKey:v30];
          v32 = [v31 countByEnumeratingWithState:&v71 objects:v86 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v72;
            do
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v72 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v71 + 1) + 8 * i);
                uploadedBytes = [(DEDCloudKitFinisher *)self uploadedBytes];
                allKeys = [uploadedBytes allKeys];
                v39 = [allKeys containsObject:v36];

                if ((v39 & 1) == 0)
                {
                  attachmentGroupModel = [(DEDCloudKitFinisher *)self attachmentGroupModel];
                  v41 = [(DEDCloudKitFinisher *)self createAttachmentModelWithURL:v36 andQueueItem:v30 attachmentGroupModel:attachmentGroupModel];

                  attachments = [(DEDCloudKitFinisher *)self attachments];
                  [attachments addObject:v41];

                  v43 = [(DEDCloudKitFinisher *)self log];
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
                    cloudKitModel = [v41 cloudKitModel];
                    *buf = 138412802;
                    v81 = cloudKitModel;
                    v82 = 2114;
                    v83 = v36;
                    v84 = 2114;
                    v85 = v30;
                    _os_log_impl(&dword_248AD7000, v43, OS_LOG_TYPE_DEFAULT, "Created record %@ for %{public}@ with queue destination %{public}@", buf, 0x20u);
                  }

                  fileSize = [v41 fileSize];
                  -[DEDCloudKitFinisher setTotalUploadSize:](self, "setTotalUploadSize:", -[DEDCloudKitFinisher totalUploadSize](self, "totalUploadSize") + [fileSize unsignedLongLongValue]);

                  v46 = [MEMORY[0x277CCABB0] numberWithInt:0];
                  uploadedBytes2 = [(DEDCloudKitFinisher *)self uploadedBytes];
                  v48 = [v41 url];
                  [uploadedBytes2 setObject:v46 forKeyedSubscript:v48];
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v71 objects:v86 count:16];
            }

            while (v33);
          }

          v29 = v69 + 1;
        }

        while (v69 + 1 != v67);
        v67 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
      }

      while (v67);
    }

    [(DEDCloudKitFinisher *)self setState:2];
    session = [(DEDCloudKitFinisher *)self session];
    [session uploadProgress:0 total:{-[DEDCloudKitFinisher totalUploadSize](self, "totalUploadSize")}];

    [MEMORY[0x277D07730] createLoggingEventWith:*MEMORY[0x277D07718]];
    attachments2 = [(DEDCloudKitFinisher *)self attachments];
    attachmentGroupModel2 = [(DEDCloudKitFinisher *)self attachmentGroupModel];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __55__DEDCloudKitFinisher_finishSession_withConfiguration___block_invoke_125;
    v70[3] = &unk_278F661A8;
    v70[4] = self;
    [(DEDCloudKitFinisher *)self uploadAttachments:attachments2 inAttachmentGroup:attachmentGroupModel2 completionHandler:v70];

    configurationCopy = v64;
    sessionCopy = v65;
    v53 = v62;
    v52 = v63;
    session2 = v61;
  }

  else
  {
    v55 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [DEDCloudKitFinisher finishSession:withConfiguration:];
    }

    v53 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.diagnosticextensionsd.DEDCloudKitFinisher" code:1 userInfo:0];
    v56 = MEMORY[0x277CCACA8];
    domain = [v53 domain];
    v52 = [v56 stringWithFormat:@"%@, %ld", domain, objc_msgSend(v53, "code")];

    [MEMORY[0x277D07730] createLoggingEventWith:*MEMORY[0x277D07708] postfix:v52];
    session2 = [(DEDCloudKitFinisher *)self session];
    [session2 didFinishUploadingWithError:v53];
  }

  v58 = *MEMORY[0x277D85DE8];
}

void __55__DEDCloudKitFinisher_finishSession_withConfiguration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) session];
  [v5 compressionProgress:a2 total:a3];
}

void __55__DEDCloudKitFinisher_finishSession_withConfiguration___block_invoke_125(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x277CCACA8];
    v6 = [v3 domain];
    v7 = [v5 stringWithFormat:@"%@, %ld", v6, objc_msgSend(v4, "code")];

    [MEMORY[0x277D07730] createLoggingEventWith:*MEMORY[0x277D07708] postfix:v7];
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Failed to upload logs with error %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = [v4 domain];
    v11 = [v9 errorWithDomain:v10 code:objc_msgSend(v4 userInfo:{"code"), 0}];
  }

  else
  {
    [MEMORY[0x277D07730] createLoggingEventWith:*MEMORY[0x277D07710]];
    v11 = 0;
  }

  v12 = [*(a1 + 32) session];
  [v12 didFinishUploadingWithError:v11];

  [*(a1 + 32) localCleanup];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)uploadAttachments:(id)attachments inAttachmentGroup:(id)group completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  groupCopy = group;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  cloudKitModel = [groupCopy cloudKitModel];
  [array addObject:cloudKitModel];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = attachmentsCopy;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v13);
        }

        cloudKitModel2 = [*(*(&v35 + 1) + 8 * v16) cloudKitModel];
        [array addObject:cloudKitModel2];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  objc_initWeak(&location, self);
  v18 = MEMORY[0x277CCACA8];
  session = [(DEDCloudKitFinisher *)self session];
  identifier = [session identifier];
  v21 = [v18 stringWithFormat:@"com.apple.diagnosticextensionsd.CloudKitUpload.%@", identifier];

  if ([v21 length] >= 0x80)
  {
    v22 = [v21 substringWithRange:{0, 127}];

    v21 = v22;
  }

  cloudKitClient = [(DEDCloudKitFinisher *)self cloudKitClient];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[DEDCloudKitFinisher totalUploadSize](self, "totalUploadSize")}];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __77__DEDCloudKitFinisher_uploadAttachments_inAttachmentGroup_completionHandler___block_invoke;
  v32[3] = &unk_278F661D0;
  objc_copyWeak(&v33, &location);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __77__DEDCloudKitFinisher_uploadAttachments_inAttachmentGroup_completionHandler___block_invoke_2;
  v28[3] = &unk_278F66220;
  v25 = handlerCopy;
  v30 = v25;
  v28[4] = self;
  v26 = groupCopy;
  v29 = v26;
  objc_copyWeak(&v31, &location);
  [cloudKitClient uploadRecords:array taskIdentifier:v21 totalUploadSize:v24 perRecordProgressBlock:v32 perRecordSaveBlock:0 completionBlock:v28];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);

  objc_destroyWeak(&location);
  v27 = *MEMORY[0x277D85DE8];
}

void __77__DEDCloudKitFinisher_uploadAttachments_inAttachmentGroup_completionHandler___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processAttachmentsWithRecord:v5 withProgress:a3];
}

void __77__DEDCloudKitFinisher_uploadAttachments_inAttachmentGroup_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __77__DEDCloudKitFinisher_uploadAttachments_inAttachmentGroup_completionHandler___block_invoke_3;
    v6[3] = &unk_278F661F8;
    objc_copyWeak(&v8, (a1 + 56));
    v7 = *(a1 + 48);
    [v4 createAttachmentGroupStatusForAttachmentGroup:v5 completionHandler:v6];

    objc_destroyWeak(&v8);
  }
}

void __77__DEDCloudKitFinisher_uploadAttachments_inAttachmentGroup_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setState:3];
  (*(*(a1 + 32) + 16))();
}

- (id)createAttachmentModelWithURL:(id)l andQueueItem:(id)item attachmentGroupModel:(id)model
{
  modelCopy = model;
  itemCopy = item;
  lCopy = l;
  v10 = [[DEDCloudKitAttachmentModel alloc] initWithURL:lCopy withQueueItem:itemCopy parameters:0];

  [(DEDCloudKitBaseModel *)v10 addReferenceForModel:modelCopy referenceKey:@"attachmentGroup"];

  return v10;
}

- (id)createAttachmentGroupStatusWithAttachmentGroupModel:(id)model
{
  modelCopy = model;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [v4 setObject:v5 forKeyedSubscript:@"processingState"];

  v6 = [(DEDCloudKitBaseModel *)[DEDCloudKitAttachmentGroupStatusModel alloc] initModelWithDictionary:v4];
  [v6 addReferenceForModel:modelCopy referenceKey:@"attachmentGroup"];

  return v6;
}

- (id)createAttachmentGroupWithData:(id)data
{
  dataCopy = data;
  v4 = [(DEDCloudKitBaseModel *)[DEDCloudKitAttachmentGroupModel alloc] initModelWithDictionary:dataCopy];

  return v4;
}

- (void)createAttachmentGroupStatusForAttachmentGroup:(id)group completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = [(DEDCloudKitFinisher *)self createAttachmentGroupStatusWithAttachmentGroupModel:group];
  v8 = MEMORY[0x277CCACA8];
  session = [(DEDCloudKitFinisher *)self session];
  identifier = [session identifier];
  v11 = [v8 stringWithFormat:@"com.apple.diagnosticextensionsd.CloudKitMarkUploadComplete.%@", identifier];

  if ([v11 length] >= 0x80)
  {
    v12 = [v11 substringWithRange:{0, 127}];

    v11 = v12;
  }

  cloudKitClient = [(DEDCloudKitFinisher *)self cloudKitClient];
  cloudKitModel = [v7 cloudKitModel];
  v17[0] = cloudKitModel;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [cloudKitClient uploadRecords:v15 taskIdentifier:v11 totalUploadSize:0 perRecordProgressBlock:0 perRecordSaveBlock:0 completionBlock:handlerCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)processAttachmentsWithRecord:(id)record withProgress:(double)progress
{
  v46 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v7 = [recordCopy objectForKeyedSubscript:@"asset"];

  if (v7)
  {
    v8 = [recordCopy objectForKeyedSubscript:@"asset"];
    v9 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(DEDCloudKitFinisher *)v8 processAttachmentsWithRecord:v9 withProgress:progress];
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    fileURL = [v8 fileURL];
    path = [fileURL path];
    v13 = [defaultManager attributesOfItemAtPath:path error:0];
    fileSize = [v13 fileSize];

    progress = [MEMORY[0x277CCABB0] numberWithDouble:fileSize * progress];
    uploadedBytes = [(DEDCloudKitFinisher *)self uploadedBytes];
    fileURL2 = [v8 fileURL];
    [uploadedBytes setObject:progress forKeyedSubscript:fileURL2];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    attachments = [(DEDCloudKitFinisher *)self attachments];
    v19 = [attachments countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      v22 = 0.0;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(attachments);
          }

          v24 = *(*(&v35 + 1) + 8 * i);
          uploadedBytes2 = [(DEDCloudKitFinisher *)self uploadedBytes];
          v26 = [v24 url];
          v27 = [uploadedBytes2 objectForKeyedSubscript:v26];
          [v27 doubleValue];
          v22 = v22 + v28;
        }

        v20 = [attachments countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v20);
    }

    else
    {
      v22 = 0.0;
    }

    v29 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v33 = (v22 / [(DEDCloudKitFinisher *)self totalUploadSize]* 100.0);
      v30 = v22;
      totalUploadSize = [(DEDCloudKitFinisher *)self totalUploadSize];
      *buf = 67240704;
      v40 = v33;
      v41 = 2050;
      v42 = v22;
      v43 = 2050;
      v44 = totalUploadSize;
      _os_log_debug_impl(&dword_248AD7000, v29, OS_LOG_TYPE_DEBUG, "CloudKit upload progress: %{public}d%% (%{public}llu / %{public}llu)", buf, 0x1Cu);
    }

    else
    {
      v30 = v22;
    }

    session = [(DEDCloudKitFinisher *)self session];
    [session uploadProgress:v30 total:{-[DEDCloudKitFinisher totalUploadSize](self, "totalUploadSize")}];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)getAttachmentURLsWithProgressHandler:(id)handler
{
  v66 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  session = [(DEDCloudKitFinisher *)self session];
  allExtensionIdentifiers = [session allExtensionIdentifiers];
  v6 = [DEDCloudKitExtensionsUtil getCompletedExtensionFromAllExtensions:allExtensionIdentifiers];

  v7 = [(DEDCloudKitFinisher *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    session2 = [(DEDCloudKitFinisher *)self session];
    identifier = [session2 identifier];
    *buf = 138412546;
    v63 = identifier;
    v64 = 2112;
    v65 = v6;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Getting DED session attachments on %@ for [%@]", buf, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  session3 = [(DEDCloudKitFinisher *)self session];
  identifier2 = [session3 identifier];
  v13 = [DEDCloudKitExtensionsUtil getAllFilesInSessionDirectoryForSessionID:identifier2];

  if (v13 && [v13 count])
  {
    v14 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Adding ELS category files (files are uncompressed)...", buf, 2u);
    }

    v15 = objc_opt_new();
    session4 = [(DEDCloudKitFinisher *)self session];
    identifier3 = [session4 identifier];
    v18 = [v15 directoryForBugSessionIdentifier:identifier3];

    v19 = [v18 URLByAppendingPathComponent:@"els"];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v59 = 0;
    [defaultManager createDirectoryAtURL:v19 withIntermediateDirectories:0 attributes:0 error:&v59];
    v21 = v59;

    if (v21)
    {
      v22 = [(DEDCloudKitFinisher *)self log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [DEDCloudKitFinisher getAttachmentURLsWithProgressHandler:];
      }
    }

    v23 = [DEDCloudKitExtensionsUtil copyFiles:v13 toDirectory:v19];
    if (v23)
    {
      v24 = [MEMORY[0x277D051A8] archiveDirectoryAt:v19 deleteOriginal:1 progressHandler:0];
      v25 = v24;
      if (v24)
      {
        v61 = v24;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
        [dictionary setValue:v26 forKey:@"els"];
      }
    }
  }

  v27 = [(DEDCloudKitFinisher *)self session:v13];
  v51 = v6;
  v28 = [DEDCloudKitExtensionsUtil getVerifiedExtensionDirectoriesFromCompletedExtensions:v6 forSession:v27];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v28;
  v29 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v56;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v56 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v55 + 1) + 8 * i);
        queuePayload = [(DEDCloudKitFinisher *)self queuePayload];
        v35 = [(DEDCloudKitFinisher *)self parsePayloadData:queuePayload forIdentifier:v33];
        v36 = [v35 mutableCopy];

        v37 = [v36 objectForKey:@"packaging"];
        v38 = [v36 objectForKey:@"encryptor"];
        if (!v37)
        {
          v37 = @"flat-directories";
        }

        [MEMORY[0x277CBEB38] dictionary];
        v40 = v39 = self;
        [v40 setObject:v37 forKey:@"package"];
        v41 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v38, "isEqualToString:", @"AppleEncryptedArchive"}];
        [v40 setObject:v41 forKey:@"compression"];

        [dictionary2 setValue:v40 forKey:v33];
        self = v39;
      }

      v30 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v30);
  }

  v42 = [(DEDCloudKitFinisher *)self log];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v42, OS_LOG_TYPE_DEFAULT, "Getting Attachment URLs", buf, 2u);
  }

  v43 = [DEDCloudKitExtensionsUtil getOutputDirectories:obj withProcessingMap:dictionary2 progressHandler:handlerCopy];
  v44 = [(DEDCloudKitFinisher *)self log];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v44, OS_LOG_TYPE_DEFAULT, "Adding the DED file URLs", buf, 2u);
  }

  [v50 addEntriesFromDictionary:v43];
  v45 = [(DEDCloudKitFinisher *)self log];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v63 = v50;
    _os_log_impl(&dword_248AD7000, v45, OS_LOG_TYPE_DEFAULT, "attachments = %{public}@", buf, 0xCu);
  }

  v46 = [(DEDCloudKitFinisher *)self encryptLogsIfNecessary:v50];

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (void)localCleanup
{
  v3 = [(DEDCloudKitFinisher *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "All uploads are complete, cleaning up...", v6, 2u);
  }

  attachments = [(DEDCloudKitFinisher *)self attachments];
  [attachments removeAllObjects];

  uploadedBytes = [(DEDCloudKitFinisher *)self uploadedBytes];
  [uploadedBytes removeAllObjects];
}

- (void)didStartCollectingDiagnosticExtensionWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [MEMORY[0x277D07740] findEntryForDEDIdentifier:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277D07730];
    v8 = *MEMORY[0x277D076E0];
    parameterName = [v5 parameterName];
    [v7 createLoggingEventWith:v8 postfix:parameterName];
  }

  else
  {
    v10 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = identifierCopy;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Failed to find whitelist entry for: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didCancelCollectionOnExtension:(id)extension
{
  v14 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  v5 = [MEMORY[0x277D07740] findEntryForDEDIdentifier:extensionCopy];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277D07730];
    v8 = *MEMORY[0x277D076C8];
    parameterName = [v5 parameterName];
    [v7 createLoggingEventWith:v8 postfix:parameterName];
  }

  else
  {
    v10 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = extensionCopy;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Failed to find whitelist entry for: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didCollectAttachmentGroup:(id)group
{
  v22 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = MEMORY[0x277D07740];
  extensionID = [groupCopy extensionID];
  v7 = [v5 findEntryForDEDIdentifier:extensionID];

  if (v7)
  {
    attachmentItems = [groupCopy attachmentItems];
    v9 = [attachmentItems count];

    if (v9)
    {
      v10 = MEMORY[0x277D07730];
      v11 = MEMORY[0x277D076D0];
LABEL_4:
      v12 = *v11;
      parameterName = [v7 parameterName];
      [v10 createLoggingEventWith:v12 postfix:parameterName];

      goto LABEL_9;
    }

    attachmentItems2 = [groupCopy attachmentItems];
    v15 = [attachmentItems2 count];

    if (!v15)
    {
      v10 = MEMORY[0x277D07730];
      v11 = MEMORY[0x277D076D8];
      goto LABEL_4;
    }
  }

  v16 = [(DEDCloudKitFinisher *)self log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    dedExtensionIdentifier = [groupCopy dedExtensionIdentifier];
    stringValue = [dedExtensionIdentifier stringValue];
    v20 = 138412290;
    v21 = stringValue;
    _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Failed to find whitelist entry for: %@", &v20, 0xCu);
  }

LABEL_9:
  v19 = *MEMORY[0x277D85DE8];
}

- (id)encryptLogsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__DEDCloudKitFinisher_encryptLogsIfNecessary___block_invoke;
  v7[3] = &unk_278F66248;
  v7[4] = self;
  v7[5] = &v8;
  [necessaryCopy enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __46__DEDCloudKitFinisher_encryptLogsIfNecessary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(a1 + 32) encryptLogsForExtensionIdentifier:v5 withAttachmentUrl:{*(*(&v22 + 1) + 8 * i), v22}];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  if ([v5 isEqualToString:@"els"])
  {
    [*(*(*(a1 + 40) + 8) + 40) setValue:v7 forKey:@"els"];
  }

  else
  {
    v14 = [[DEDExtensionIdentifier alloc] initWithString:v5];
    v15 = v14;
    if (v14)
    {
      v16 = MEMORY[0x277D07740];
      v17 = [(DEDExtensionIdentifier *)v14 extensionIdentifier];
      v18 = [v16 findEntryForBundleIdentifier:v17];

      if (v18)
      {
        v19 = *(*(*(a1 + 40) + 8) + 40);
        v20 = [v18 parameterName];
        [v19 setValue:v7 forKey:v20];
      }

      else
      {
        v20 = [*(a1 + 32) log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          __46__DEDCloudKitFinisher_encryptLogsIfNecessary___block_invoke_cold_1();
        }
      }
    }

    else
    {
      v18 = [*(a1 + 32) log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        __46__DEDCloudKitFinisher_encryptLogsIfNecessary___block_invoke_cold_2();
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)extractExtensionIdentifierFromAttachmentUrl:(id)url
{
  pathComponents = [url pathComponents];
  v4 = [pathComponents mutableCopy];

  [v4 removeLastObject];
  lastObject = [v4 lastObject];
  v6 = [[DEDExtensionIdentifier alloc] initWithString:lastObject];
  extensionIdentifier = [(DEDExtensionIdentifier *)v6 extensionIdentifier];

  return extensionIdentifier;
}

- (id)encryptLogsForExtensionIdentifier:(id)identifier withAttachmentUrl:(id)url
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  urlCopy = url;
  queuePayload = [(DEDCloudKitFinisher *)self queuePayload];
  v9 = [(DEDCloudKitFinisher *)self parsePayloadData:queuePayload forIdentifier:identifierCopy];
  v10 = [v9 mutableCopy];

  v11 = [v10 objectForKey:@"encryption"];
  v12 = [v10 objectForKey:@"encryptor"];
  v13 = [DEDEncryptorFactory getEncryptorForExtensionIdentifier:v12];
  if (v13)
  {
    timberLorryUUID = [(DEDCloudKitFinisher *)self timberLorryUUID];

    if (timberLorryUUID)
    {
      timberLorryUUID2 = [(DEDCloudKitFinisher *)self timberLorryUUID];
      [v10 setObject:timberLorryUUID2 forKey:@"timberLorryUUID"];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[DEDCloudKitFinisher sandboxEnvironment](self, "sandboxEnvironment")}];
    [v10 setObject:v16 forKey:@"cloudKitEnv"];

    uRLByDeletingLastPathComponent = [urlCopy URLByDeletingLastPathComponent];
    anonymousDeviceUUID = [(DEDCloudKitFinisher *)self anonymousDeviceUUID];
    v19 = [v13 encryptLogsAtPath:urlCopy toDirectory:uRLByDeletingLastPathComponent withMetadata:v10 anonymousDeviceUUID:anonymousDeviceUUID];
  }

  else if (v11)
  {
    v20 = [(DEDCloudKitFinisher *)self log];
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);
    if (v12)
    {
      if (v21)
      {
        [DEDCloudKitFinisher encryptLogsForExtensionIdentifier:withAttachmentUrl:];
      }
    }

    else if (v21)
    {
      [DEDCloudKitFinisher encryptLogsForExtensionIdentifier:withAttachmentUrl:];
    }

    v19 = 0;
  }

  else
  {
    v22 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = identifierCopy;
      _os_log_impl(&dword_248AD7000, v22, OS_LOG_TYPE_DEFAULT, "No encryption required on %@", &v25, 0xCu);
    }

    v19 = urlCopy;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)parsePayloadData:(id)data forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [data objectForKey:*MEMORY[0x277D07720]];
  if ([identifierCopy isEqualToString:@"els"])
  {
    v8 = [v7 objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v9 = [[DEDExtensionIdentifier alloc] initWithString:identifierCopy];
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277D07740];
      extensionIdentifier = [(DEDExtensionIdentifier *)v9 extensionIdentifier];
      v13 = [v11 findEntryForBundleIdentifier:extensionIdentifier];

      parameterName = [v13 parameterName];
      v8 = [v7 objectForKeyedSubscript:parameterName];
    }

    else
    {
      v15 = [(DEDCloudKitFinisher *)self log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [DEDCloudKitFinisher parsePayloadData:forIdentifier:];
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)writeData:(id)data filename:(id)filename
{
  filenameCopy = filename;
  dataCopy = data;
  v8 = objc_opt_new();
  session = [(DEDCloudKitFinisher *)self session];
  identifier = [session identifier];
  v11 = [v8 directoryForBugSessionIdentifier:identifier createIfNeeded:1];
  v12 = [v11 URLByAppendingPathComponent:filenameCopy];

  mEMORY[0x277D07728] = [MEMORY[0x277D07728] sharedHelper];
  v14 = [mEMORY[0x277D07728] saveData:dataCopy toFilePath:v12];

  if (v14)
  {
    v15 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [DEDCloudKitFinisher writeData:filename:];
    }
  }
}

- (id)additionalStateInfo
{
  v40 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = 0x278F64000uLL;
  v4 = +[DEDDeferredExtensionInfo allInfo];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  session = [(DEDCloudKitFinisher *)self session];
  allExtensionIdentifiers = [session allExtensionIdentifiers];

  obj = allExtensionIdentifiers;
  v7 = [allExtensionIdentifiers countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    selfCopy = self;
    do
    {
      v10 = 0;
      v31 = v8;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v12 = *(v3 + 2992);
        session2 = [(DEDCloudKitFinisher *)self session];
        identifier = [session2 identifier];
        v15 = [v12 activityStringForBugSessionIdentifier:identifier dedIdentifier:v11];

        v16 = [v4 objectForKeyedSubscript:v15];
        v17 = v16;
        if (v16 && ([v16 isOverdue] & 1) == 0)
        {
          parameters = [v17 parameters];
          v38[0] = parameters;
          v18 = MEMORY[0x277CCABB0];
          triggerDate = [v17 triggerDate];
          [triggerDate timeIntervalSinceNow];
          v20 = [v18 numberWithDouble:?];
          v38[1] = v20;
          [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
          v21 = v9;
          v22 = v3;
          v24 = v23 = v4;
          stringValue = [v11 stringValue];
          [dictionary setObject:v24 forKey:stringValue];

          v4 = v23;
          v3 = v22;
          v9 = v21;

          v8 = v31;
          self = selfCopy;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObject:dictionary forKey:@"queued-extensions"];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (DEDBugSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)finishSession:withConfiguration:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processAttachmentsWithRecord:(double)a3 withProgress:.cold.1(void *a1, NSObject *a2, double a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 fileURL];
  v6 = [v5 lastPathComponent];
  v8 = 134218242;
  v9 = a3;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_248AD7000, a2, OS_LOG_TYPE_DEBUG, "Upload progress is %f for asset: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getAttachmentURLsWithProgressHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__DEDCloudKitFinisher_encryptLogsIfNecessary___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_4(&dword_248AD7000, v0, v1, "Could not find correlated queue item name for %@. Skipping the following files: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __46__DEDCloudKitFinisher_encryptLogsIfNecessary___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_4(&dword_248AD7000, v0, v1, "Could not identify diagnostic extension with id %@. Skipping the following files: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)encryptLogsForExtensionIdentifier:withAttachmentUrl:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_4(&dword_248AD7000, v0, v1, "Could not locate an encryptor for: %@ for the DE: %@. Dropping attachment");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)encryptLogsForExtensionIdentifier:withAttachmentUrl:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(&dword_248AD7000, v0, OS_LOG_TYPE_FAULT, "No encryptor specified for DE: %@ which requires encryption. Dropping file attachment", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)parsePayloadData:forIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(&dword_248AD7000, v0, OS_LOG_TYPE_FAULT, "Could not identify diagnostic extension with id %@. No paylaod returned", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end