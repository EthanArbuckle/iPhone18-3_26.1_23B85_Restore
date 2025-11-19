@interface DEDCloudKitFinisher
+ (id)archivedClasses;
- (DEDBugSession)session;
- (DEDCloudKitFinisher)initWithCoder:(id)a3;
- (DEDCloudKitFinisher)initWithConfiguration:(id)a3 session:(id)a4;
- (id)additionalStateInfo;
- (id)createAttachmentGroupStatusWithAttachmentGroupModel:(id)a3;
- (id)createAttachmentGroupWithData:(id)a3;
- (id)createAttachmentModelWithURL:(id)a3 andQueueItem:(id)a4 attachmentGroupModel:(id)a5;
- (id)encryptLogsForExtensionIdentifier:(id)a3 withAttachmentUrl:(id)a4;
- (id)encryptLogsIfNecessary:(id)a3;
- (id)extractExtensionIdentifierFromAttachmentUrl:(id)a3;
- (id)getAttachmentURLsWithProgressHandler:(id)a3;
- (id)parsePayloadData:(id)a3 forIdentifier:(id)a4;
- (void)createAttachmentGroupStatusForAttachmentGroup:(id)a3 completionHandler:(id)a4;
- (void)didCancelCollectionOnExtension:(id)a3;
- (void)didCollectAttachmentGroup:(id)a3;
- (void)didStartCollectingDiagnosticExtensionWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)finishSession:(id)a3 withConfiguration:(id)a4;
- (void)localCleanup;
- (void)processAttachmentsWithRecord:(id)a3 withProgress:(double)a4;
- (void)uploadAttachments:(id)a3 inAttachmentGroup:(id)a4 completionHandler:(id)a5;
- (void)writeData:(id)a3 filename:(id)a4;
@end

@implementation DEDCloudKitFinisher

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DEDCloudKitFinisher state](self forKey:{"state"), @"state"}];
  v5 = [(DEDCloudKitFinisher *)self anonymousDeviceUUID];
  [v4 encodeObject:v5 forKey:@"anonymousDeviceUUID"];
}

- (DEDCloudKitFinisher)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DEDCloudKitFinisher;
  v5 = [(DEDCloudKitFinisher *)&v11 init];
  if (v5)
  {
    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v6 = [v4 decodeObjectForKey:@"anonymousDeviceUUID"];
    anonymousDeviceUUID = v5->_anonymousDeviceUUID;
    v5->_anonymousDeviceUUID = v6;

    if (!v5->_anonymousDeviceUUID)
    {
      v8 = [MEMORY[0x277CCAD78] UUID];
      v9 = v5->_anonymousDeviceUUID;
      v5->_anonymousDeviceUUID = v8;
    }
  }

  return v5;
}

- (DEDCloudKitFinisher)initWithConfiguration:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = DEDCloudKitFinisher;
  v8 = [(DEDCloudKitFinisher *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = 0;
    v10 = [MEMORY[0x277CCAD78] UUID];
    anonymousDeviceUUID = v9->_anonymousDeviceUUID;
    v9->_anonymousDeviceUUID = v10;

    v12 = +[DEDConfiguration sharedInstance];
    v13 = os_log_create([v12 loggingSubsystem], "ded-cloudkit-finisher");
    log = v9->_log;
    v9->_log = v13;

    objc_storeWeak(&v9->_session, v7);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    attachments = v9->_attachments;
    v9->_attachments = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uploadedBytes = v9->_uploadedBytes;
    v9->_uploadedBytes = v17;

    v9->_sandboxEnvironment = [v6 cloudkitUseDevelopmentEnvironment];
  }

  return v9;
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (void)finishSession:(id)a3 withConfiguration:(id)a4
{
  v88 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DEDCloudKitFinisher *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 cloudkitContainer];
    *buf = 138543362;
    v81 = v9;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Starting CloudKit finishSession with container: %{public}@", buf, 0xCu);
  }

  v10 = [(DEDCloudKitFinisher *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 allowsCellularUpload];
    *buf = 67240192;
    LODWORD(v81) = v11;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "allowsCellularUpload: %{public}d", buf, 8u);
  }

  [(DEDCloudKitFinisher *)self setState:1];
  v12 = [v7 cloudkitContainer];

  if (v12)
  {
    [(DEDCloudKitFinisher *)self setSession:v6];
    [(DEDCloudKitFinisher *)self setTotalUploadSize:0];
    v13 = [[DEDCloudKitClient alloc] initWithBugSession:v6 configuration:v7];
    [(DEDCloudKitFinisher *)self setCloudKitClient:v13];

    v14 = [v7 cloudkitData];
    v15 = [v14 objectForKeyedSubscript:@"payload"];

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
    v65 = v6;
    v19 = [v7 cloudkitData];
    v20 = [v19 objectForKeyedSubscript:@"gigafilesToken"];
    [(DEDCloudKitFinisher *)self setTimberLorryUUID:v20];

    v21 = [v7 cloudkitData];
    v22 = [v21 objectForKeyedSubscript:@"enrollmentTicketNumber"];

    if (v22)
    {
      v23 = [v7 cloudkitData];
      v24 = [v23 objectForKeyedSubscript:@"enrollmentTicketNumber"];
      [(DEDCloudKitFinisher *)self setTimberLorryUUID:v24];
    }

    v64 = v7;
    v25 = [v7 cloudkitData];
    v26 = [(DEDCloudKitFinisher *)self createAttachmentGroupWithData:v25];
    [(DEDCloudKitFinisher *)self setAttachmentGroupModel:v26];

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __55__DEDCloudKitFinisher_finishSession_withConfiguration___block_invoke;
    v79[3] = &unk_278F660D0;
    v79[4] = self;
    v60 = MEMORY[0x24C1E5320](v79);
    v59 = [[DEDCompressionDebouncer alloc] initWithTrigger:v60 interval:1.0];
    v27 = [(DEDCompressionDebouncer *)v59 handler];
    v28 = [(DEDCloudKitFinisher *)self getAttachmentURLsWithProgressHandler:v27];

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
                v37 = [(DEDCloudKitFinisher *)self uploadedBytes];
                v38 = [v37 allKeys];
                v39 = [v38 containsObject:v36];

                if ((v39 & 1) == 0)
                {
                  v40 = [(DEDCloudKitFinisher *)self attachmentGroupModel];
                  v41 = [(DEDCloudKitFinisher *)self createAttachmentModelWithURL:v36 andQueueItem:v30 attachmentGroupModel:v40];

                  v42 = [(DEDCloudKitFinisher *)self attachments];
                  [v42 addObject:v41];

                  v43 = [(DEDCloudKitFinisher *)self log];
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
                    v44 = [v41 cloudKitModel];
                    *buf = 138412802;
                    v81 = v44;
                    v82 = 2114;
                    v83 = v36;
                    v84 = 2114;
                    v85 = v30;
                    _os_log_impl(&dword_248AD7000, v43, OS_LOG_TYPE_DEFAULT, "Created record %@ for %{public}@ with queue destination %{public}@", buf, 0x20u);
                  }

                  v45 = [v41 fileSize];
                  -[DEDCloudKitFinisher setTotalUploadSize:](self, "setTotalUploadSize:", -[DEDCloudKitFinisher totalUploadSize](self, "totalUploadSize") + [v45 unsignedLongLongValue]);

                  v46 = [MEMORY[0x277CCABB0] numberWithInt:0];
                  v47 = [(DEDCloudKitFinisher *)self uploadedBytes];
                  v48 = [v41 url];
                  [v47 setObject:v46 forKeyedSubscript:v48];
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
    v49 = [(DEDCloudKitFinisher *)self session];
    [v49 uploadProgress:0 total:{-[DEDCloudKitFinisher totalUploadSize](self, "totalUploadSize")}];

    [MEMORY[0x277D07730] createLoggingEventWith:*MEMORY[0x277D07718]];
    v50 = [(DEDCloudKitFinisher *)self attachments];
    v51 = [(DEDCloudKitFinisher *)self attachmentGroupModel];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __55__DEDCloudKitFinisher_finishSession_withConfiguration___block_invoke_125;
    v70[3] = &unk_278F661A8;
    v70[4] = self;
    [(DEDCloudKitFinisher *)self uploadAttachments:v50 inAttachmentGroup:v51 completionHandler:v70];

    v7 = v64;
    v6 = v65;
    v53 = v62;
    v52 = v63;
    v54 = v61;
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
    v57 = [v53 domain];
    v52 = [v56 stringWithFormat:@"%@, %ld", v57, objc_msgSend(v53, "code")];

    [MEMORY[0x277D07730] createLoggingEventWith:*MEMORY[0x277D07708] postfix:v52];
    v54 = [(DEDCloudKitFinisher *)self session];
    [v54 didFinishUploadingWithError:v53];
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

- (void)uploadAttachments:(id)a3 inAttachmentGroup:(id)a4 completionHandler:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [v9 cloudKitModel];
  [v11 addObject:v12];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v8;
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

        v17 = [*(*(&v35 + 1) + 8 * v16) cloudKitModel];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  objc_initWeak(&location, self);
  v18 = MEMORY[0x277CCACA8];
  v19 = [(DEDCloudKitFinisher *)self session];
  v20 = [v19 identifier];
  v21 = [v18 stringWithFormat:@"com.apple.diagnosticextensionsd.CloudKitUpload.%@", v20];

  if ([v21 length] >= 0x80)
  {
    v22 = [v21 substringWithRange:{0, 127}];

    v21 = v22;
  }

  v23 = [(DEDCloudKitFinisher *)self cloudKitClient];
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
  v25 = v10;
  v30 = v25;
  v28[4] = self;
  v26 = v9;
  v29 = v26;
  objc_copyWeak(&v31, &location);
  [v23 uploadRecords:v11 taskIdentifier:v21 totalUploadSize:v24 perRecordProgressBlock:v32 perRecordSaveBlock:0 completionBlock:v28];

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

- (id)createAttachmentModelWithURL:(id)a3 andQueueItem:(id)a4 attachmentGroupModel:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[DEDCloudKitAttachmentModel alloc] initWithURL:v9 withQueueItem:v8 parameters:0];

  [(DEDCloudKitBaseModel *)v10 addReferenceForModel:v7 referenceKey:@"attachmentGroup"];

  return v10;
}

- (id)createAttachmentGroupStatusWithAttachmentGroupModel:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [v4 setObject:v5 forKeyedSubscript:@"processingState"];

  v6 = [(DEDCloudKitBaseModel *)[DEDCloudKitAttachmentGroupStatusModel alloc] initModelWithDictionary:v4];
  [v6 addReferenceForModel:v3 referenceKey:@"attachmentGroup"];

  return v6;
}

- (id)createAttachmentGroupWithData:(id)a3
{
  v3 = a3;
  v4 = [(DEDCloudKitBaseModel *)[DEDCloudKitAttachmentGroupModel alloc] initModelWithDictionary:v3];

  return v4;
}

- (void)createAttachmentGroupStatusForAttachmentGroup:(id)a3 completionHandler:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(DEDCloudKitFinisher *)self createAttachmentGroupStatusWithAttachmentGroupModel:a3];
  v8 = MEMORY[0x277CCACA8];
  v9 = [(DEDCloudKitFinisher *)self session];
  v10 = [v9 identifier];
  v11 = [v8 stringWithFormat:@"com.apple.diagnosticextensionsd.CloudKitMarkUploadComplete.%@", v10];

  if ([v11 length] >= 0x80)
  {
    v12 = [v11 substringWithRange:{0, 127}];

    v11 = v12;
  }

  v13 = [(DEDCloudKitFinisher *)self cloudKitClient];
  v14 = [v7 cloudKitModel];
  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v13 uploadRecords:v15 taskIdentifier:v11 totalUploadSize:0 perRecordProgressBlock:0 perRecordSaveBlock:0 completionBlock:v6];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)processAttachmentsWithRecord:(id)a3 withProgress:(double)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"asset"];

  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"asset"];
    v9 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(DEDCloudKitFinisher *)v8 processAttachmentsWithRecord:v9 withProgress:a4];
    }

    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v8 fileURL];
    v12 = [v11 path];
    v13 = [v10 attributesOfItemAtPath:v12 error:0];
    v14 = [v13 fileSize];

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v14 * a4];
    v16 = [(DEDCloudKitFinisher *)self uploadedBytes];
    v17 = [v8 fileURL];
    [v16 setObject:v15 forKeyedSubscript:v17];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = [(DEDCloudKitFinisher *)self attachments];
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v45 count:16];
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
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v35 + 1) + 8 * i);
          v25 = [(DEDCloudKitFinisher *)self uploadedBytes];
          v26 = [v24 url];
          v27 = [v25 objectForKeyedSubscript:v26];
          [v27 doubleValue];
          v22 = v22 + v28;
        }

        v20 = [v18 countByEnumeratingWithState:&v35 objects:v45 count:16];
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
      v34 = [(DEDCloudKitFinisher *)self totalUploadSize];
      *buf = 67240704;
      v40 = v33;
      v41 = 2050;
      v42 = v22;
      v43 = 2050;
      v44 = v34;
      _os_log_debug_impl(&dword_248AD7000, v29, OS_LOG_TYPE_DEBUG, "CloudKit upload progress: %{public}d%% (%{public}llu / %{public}llu)", buf, 0x1Cu);
    }

    else
    {
      v30 = v22;
    }

    v31 = [(DEDCloudKitFinisher *)self session];
    [v31 uploadProgress:v30 total:{-[DEDCloudKitFinisher totalUploadSize](self, "totalUploadSize")}];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)getAttachmentURLsWithProgressHandler:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v4 = [(DEDCloudKitFinisher *)self session];
  v5 = [v4 allExtensionIdentifiers];
  v6 = [DEDCloudKitExtensionsUtil getCompletedExtensionFromAllExtensions:v5];

  v7 = [(DEDCloudKitFinisher *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(DEDCloudKitFinisher *)self session];
    v9 = [v8 identifier];
    *buf = 138412546;
    v63 = v9;
    v64 = 2112;
    v65 = v6;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Getting DED session attachments on %@ for [%@]", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [(DEDCloudKitFinisher *)self session];
  v12 = [v11 identifier];
  v13 = [DEDCloudKitExtensionsUtil getAllFilesInSessionDirectoryForSessionID:v12];

  if (v13 && [v13 count])
  {
    v14 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Adding ELS category files (files are uncompressed)...", buf, 2u);
    }

    v15 = objc_opt_new();
    v16 = [(DEDCloudKitFinisher *)self session];
    v17 = [v16 identifier];
    v18 = [v15 directoryForBugSessionIdentifier:v17];

    v19 = [v18 URLByAppendingPathComponent:@"els"];
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v59 = 0;
    [v20 createDirectoryAtURL:v19 withIntermediateDirectories:0 attributes:0 error:&v59];
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
        [v10 setValue:v26 forKey:@"els"];
      }
    }
  }

  v27 = [(DEDCloudKitFinisher *)self session:v13];
  v51 = v6;
  v28 = [DEDCloudKitExtensionsUtil getVerifiedExtensionDirectoriesFromCompletedExtensions:v6 forSession:v27];

  v54 = [MEMORY[0x277CBEB38] dictionary];
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
        v34 = [(DEDCloudKitFinisher *)self queuePayload];
        v35 = [(DEDCloudKitFinisher *)self parsePayloadData:v34 forIdentifier:v33];
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

        [v54 setValue:v40 forKey:v33];
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

  v43 = [DEDCloudKitExtensionsUtil getOutputDirectories:obj withProcessingMap:v54 progressHandler:v52];
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

  v4 = [(DEDCloudKitFinisher *)self attachments];
  [v4 removeAllObjects];

  v5 = [(DEDCloudKitFinisher *)self uploadedBytes];
  [v5 removeAllObjects];
}

- (void)didStartCollectingDiagnosticExtensionWithIdentifier:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D07740] findEntryForDEDIdentifier:v4];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277D07730];
    v8 = *MEMORY[0x277D076E0];
    v9 = [v5 parameterName];
    [v7 createLoggingEventWith:v8 postfix:v9];
  }

  else
  {
    v10 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Failed to find whitelist entry for: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didCancelCollectionOnExtension:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D07740] findEntryForDEDIdentifier:v4];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277D07730];
    v8 = *MEMORY[0x277D076C8];
    v9 = [v5 parameterName];
    [v7 createLoggingEventWith:v8 postfix:v9];
  }

  else
  {
    v10 = [(DEDCloudKitFinisher *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Failed to find whitelist entry for: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didCollectAttachmentGroup:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D07740];
  v6 = [v4 extensionID];
  v7 = [v5 findEntryForDEDIdentifier:v6];

  if (v7)
  {
    v8 = [v4 attachmentItems];
    v9 = [v8 count];

    if (v9)
    {
      v10 = MEMORY[0x277D07730];
      v11 = MEMORY[0x277D076D0];
LABEL_4:
      v12 = *v11;
      v13 = [v7 parameterName];
      [v10 createLoggingEventWith:v12 postfix:v13];

      goto LABEL_9;
    }

    v14 = [v4 attachmentItems];
    v15 = [v14 count];

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
    v17 = [v4 dedExtensionIdentifier];
    v18 = [v17 stringValue];
    v20 = 138412290;
    v21 = v18;
    _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Failed to find whitelist entry for: %@", &v20, 0xCu);
  }

LABEL_9:
  v19 = *MEMORY[0x277D85DE8];
}

- (id)encryptLogsIfNecessary:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__DEDCloudKitFinisher_encryptLogsIfNecessary___block_invoke;
  v7[3] = &unk_278F66248;
  v7[4] = self;
  v7[5] = &v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
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

- (id)extractExtensionIdentifierFromAttachmentUrl:(id)a3
{
  v3 = [a3 pathComponents];
  v4 = [v3 mutableCopy];

  [v4 removeLastObject];
  v5 = [v4 lastObject];
  v6 = [[DEDExtensionIdentifier alloc] initWithString:v5];
  v7 = [(DEDExtensionIdentifier *)v6 extensionIdentifier];

  return v7;
}

- (id)encryptLogsForExtensionIdentifier:(id)a3 withAttachmentUrl:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DEDCloudKitFinisher *)self queuePayload];
  v9 = [(DEDCloudKitFinisher *)self parsePayloadData:v8 forIdentifier:v6];
  v10 = [v9 mutableCopy];

  v11 = [v10 objectForKey:@"encryption"];
  v12 = [v10 objectForKey:@"encryptor"];
  v13 = [DEDEncryptorFactory getEncryptorForExtensionIdentifier:v12];
  if (v13)
  {
    v14 = [(DEDCloudKitFinisher *)self timberLorryUUID];

    if (v14)
    {
      v15 = [(DEDCloudKitFinisher *)self timberLorryUUID];
      [v10 setObject:v15 forKey:@"timberLorryUUID"];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[DEDCloudKitFinisher sandboxEnvironment](self, "sandboxEnvironment")}];
    [v10 setObject:v16 forKey:@"cloudKitEnv"];

    v17 = [v7 URLByDeletingLastPathComponent];
    v18 = [(DEDCloudKitFinisher *)self anonymousDeviceUUID];
    v19 = [v13 encryptLogsAtPath:v7 toDirectory:v17 withMetadata:v10 anonymousDeviceUUID:v18];
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
      v26 = v6;
      _os_log_impl(&dword_248AD7000, v22, OS_LOG_TYPE_DEFAULT, "No encryption required on %@", &v25, 0xCu);
    }

    v19 = v7;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)parsePayloadData:(id)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKey:*MEMORY[0x277D07720]];
  if ([v6 isEqualToString:@"els"])
  {
    v8 = [v7 objectForKeyedSubscript:v6];
  }

  else
  {
    v9 = [[DEDExtensionIdentifier alloc] initWithString:v6];
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277D07740];
      v12 = [(DEDExtensionIdentifier *)v9 extensionIdentifier];
      v13 = [v11 findEntryForBundleIdentifier:v12];

      v14 = [v13 parameterName];
      v8 = [v7 objectForKeyedSubscript:v14];
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

- (void)writeData:(id)a3 filename:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(DEDCloudKitFinisher *)self session];
  v10 = [v9 identifier];
  v11 = [v8 directoryForBugSessionIdentifier:v10 createIfNeeded:1];
  v12 = [v11 URLByAppendingPathComponent:v6];

  v13 = [MEMORY[0x277D07728] sharedHelper];
  v14 = [v13 saveData:v7 toFilePath:v12];

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
  v30 = [MEMORY[0x277CBEB38] dictionary];
  v3 = 0x278F64000uLL;
  v4 = +[DEDDeferredExtensionInfo allInfo];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [(DEDCloudKitFinisher *)self session];
  v6 = [v5 allExtensionIdentifiers];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    v29 = self;
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
        v13 = [(DEDCloudKitFinisher *)self session];
        v14 = [v13 identifier];
        v15 = [v12 activityStringForBugSessionIdentifier:v14 dedIdentifier:v11];

        v16 = [v4 objectForKeyedSubscript:v15];
        v17 = v16;
        if (v16 && ([v16 isOverdue] & 1) == 0)
        {
          v33 = [v17 parameters];
          v38[0] = v33;
          v18 = MEMORY[0x277CCABB0];
          v19 = [v17 triggerDate];
          [v19 timeIntervalSinceNow];
          v20 = [v18 numberWithDouble:?];
          v38[1] = v20;
          [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
          v21 = v9;
          v22 = v3;
          v24 = v23 = v4;
          v25 = [v11 stringValue];
          [v30 setObject:v24 forKey:v25];

          v4 = v23;
          v3 = v22;
          v9 = v21;

          v8 = v31;
          self = v29;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v30 forKey:@"queued-extensions"];

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