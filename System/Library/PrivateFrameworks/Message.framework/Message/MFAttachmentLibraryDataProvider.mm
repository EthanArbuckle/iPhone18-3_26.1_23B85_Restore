@interface MFAttachmentLibraryDataProvider
- (EDAttachmentPersistenceManager)persistenceManager;
- (MFAttachmentLibraryDataProvider)initWithLibrary:(id)a3;
- (MFMailMessageLibrary)messageLibrary;
- (_MFAttachmentDataFetchResult)_fetchDataForAttachment:(SEL)a3 consumer:(id)a4 progress:(id)a5;
- (id)messageForAttachment:(id)a3;
- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4;
- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6;
@end

@implementation MFAttachmentLibraryDataProvider

- (MFAttachmentLibraryDataProvider)initWithLibrary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFAttachmentLibraryDataProvider;
  v5 = [(MFAttachmentLibraryDataProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MFAttachmentLibraryDataProvider *)v5 setMessageLibrary:v4];
  }

  return v6;
}

- (EDAttachmentPersistenceManager)persistenceManager
{
  persistenceManager = self->_persistenceManager;
  if (!persistenceManager)
  {
    v4 = [(MFAttachmentLibraryDataProvider *)self messageLibrary];
    v5 = [v4 persistence];
    v6 = [v5 attachmentPersistenceManager];
    v7 = self->_persistenceManager;
    self->_persistenceManager = v6;

    persistenceManager = self->_persistenceManager;
  }

  return persistenceManager;
}

- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  memset(v12, 170, sizeof(v12));
  [(MFAttachmentLibraryDataProvider *)self _fetchDataForAttachment:v10 consumer:a4 progress:a5];
  [v10 updatePathIfNeeded];
  (*(v11 + 2))(v11, LOBYTE(v12[0]), v12[1], LOBYTE(v12[2]));
}

- (_MFAttachmentDataFetchResult)_fetchDataForAttachment:(SEL)a3 consumer:(id)a4 progress:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v55 = a6;
  v12 = EDAttachmentsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 ef_publicDescription];
    *buf = 138543362;
    v63 = v13;
    _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "In _fetchDataForAttachment for attachment %{public}@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__MFAttachmentLibraryDataProvider__fetchDataForAttachment_consumer_progress___block_invoke;
  aBlock[3] = &unk_1E7AA4D60;
  v14 = v55;
  v58 = v14;
  v56 = _Block_copy(aBlock);
  v15 = [v10 url];
  v16 = [v15 mf_lastPartNumber];
  if (v16)
  {
    v17 = [v10 readFromDisk];
    if (v17)
    {
      [v11 appendData:v17];
      [v11 done];
      v18 = EDAttachmentsLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v17 length];
        v20 = [v10 ef_publicDescription];
        *buf = 134218242;
        v63 = v19;
        v64 = 2114;
        v65 = v20;
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "Got data (%{iec-bytes}llu) for attachment %{public}@.", buf, 0x16u);
      }

      *&retstr->var0 = 0;
      retstr->var1 = 0;
      *&retstr->var2 = 0;
      retstr->var0 = 1;
    }

    else
    {
      v53 = [(MFAttachmentLibraryDataProvider *)self messageForAttachment:v10];
      v54 = [v53 messageStore];
      [v54 downloadMimePartNumber:v16 message:v53 withProgressBlock:v56];
      [v10 updatePathIfNeeded];
      v17 = [v10 readFromDisk];
      if (v17)
      {
        v24 = EDAttachmentsLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v17 length];
          v26 = [v10 ef_publicDescription];
          *buf = 134218242;
          v63 = v25;
          v64 = 2114;
          v65 = v26;
          _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "Got data (%{iec-bytes}llu) for attachment %{public}@.", buf, 0x16u);
        }

        [v11 appendData:v17];
        [v11 done];
        if (objc_opt_respondsToSelector())
        {
          v27 = [v11 data];
          v28 = v27 == 0;

          if (v28)
          {
            v29 = EDAttachmentsLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = [v10 ef_publicDescription];
              [MFAttachmentLibraryDataProvider _fetchDataForAttachment:v30 consumer:buf progress:v29];
            }
          }
        }

        *&retstr->var0 = 0;
        retstr->var1 = 0;
        *&retstr->var2 = 0;
        retstr->var0 = 1;
      }

      else
      {
        v31 = EDAttachmentsLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = [v10 ef_publicDescription];
          [MFAttachmentLibraryDataProvider _fetchDataForAttachment:v32 consumer:buf progress:v31];
        }

        v33 = [v10 decodeFilterWithDataConsumer:v11];
        v34 = objc_alloc(MEMORY[0x1E69AD750]);
        v61 = v33;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
        v52 = [v34 initWithConsumers:v35 expectedSize:{objc_msgSend(v10, "encodedFileSize")}];

        [v52 setProgressBlock:v56];
        v36 = [v53 messageBody];
        v51 = [v36 partWithNumber:v16];

        v37 = [v51 range];
        v39 = [v54 dataForMimePart:v51 inRange:v37 withConsumer:v38 downloadIfNecessary:{v52, 1}];
        [v10 updatePathIfNeeded];
        if (v39)
        {
          v40 = EDAttachmentsLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v49 = v33;
            v41 = [v10 ef_publicDescription];
            *v59 = 138543362;
            v60 = v41;
            v42 = v41;
            _os_log_impl(&dword_1B0389000, v40, OS_LOG_TYPE_DEFAULT, "Got data for attachment %{public}@.", v59, 0xCu);

            v33 = v49;
          }

          v43 = 0;
        }

        else
        {
          v44 = EDAttachmentsLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v50 = v33;
            v45 = [v10 ef_publicDescription];
            *v59 = 138543362;
            v60 = v45;
            v46 = v45;
            _os_log_impl(&dword_1B0389000, v44, OS_LOG_TYPE_DEFAULT, "Failed to get data for attachment %{public}@.", v59, 0xCu);

            v33 = v50;
          }

          v43 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not retrieve library data for attachment." title:@"No Data Found" userInfo:0];
        }

        [v52 done];
        [v11 done];
        retstr->var0 = v39;
        retstr->var1 = v43;
        retstr->var2 = v39;
      }
    }
  }

  else
  {
    v21 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Invalid attachment URL." title:@"Invalid Attachment URL" userInfo:0];
    v22 = EDAttachmentsLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v10 ef_publicDescription];
      *buf = 138543362;
      v63 = v23;
      _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "No part number for attachment %{public}@", buf, 0xCu);
    }

    retstr->var0 = 0;
    retstr->var1 = v21;
    retstr->var2 = 0;
  }

  v48 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __77__MFAttachmentLibraryDataProvider__fetchDataForAttachment_consumer_progress___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

- (id)messageForAttachment:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 part];
  v6 = [v5 mimeBody];
  v7 = [v6 message];

  if (!v7)
  {
    v8 = [v4 url];
    v9 = [v8 mf_rowID];

    if (v9 == *MEMORY[0x1E699A728])
    {
      v10 = EDAttachmentsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v4 url];
        [(MFAttachmentLibraryDataProvider *)v11 messageForAttachment:v10];
      }

      v7 = 0;
    }

    else
    {
      v12 = [(MFAttachmentLibraryDataProvider *)self messageLibrary];
      v7 = [v12 messageWithLibraryID:v9 options:4227087 inMailbox:0];

      v10 = [v7 mailbox];
      v13 = [v10 account];
      v14 = [v13 storeForMailboxUid:v10];
      if (v14)
      {
        [v7 setMessageStore:v14];
      }

      else
      {
        v15 = MFLogGeneral();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v7 ef_publicDescription];
          v19 = 138543362;
          v20 = v16;
          _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_INFO, "#Attachments failed to find a store for message %{public}@, things may behave unexpectedly", &v19, 0xCu);
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4
{
  v4 = [a4 storageLocationForAttachment:a3];

  return v4;
}

- (MFMailMessageLibrary)messageLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_messageLibrary);

  return WeakRetained;
}

- (void)_fetchDataForAttachment:(void *)a1 consumer:(uint64_t)a2 progress:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_1(&dword_1B0389000, a2, a3, "Failed to find data for attachment %{public}@", a2);
}

- (void)_fetchDataForAttachment:(void *)a1 consumer:(uint64_t)a2 progress:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_1(&dword_1B0389000, a2, a3, "Failed to download attachment data for attachment %{public}@", a2);
}

- (void)messageForAttachment:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_1(&dword_1B0389000, a2, a3, "rowID is undefined for attachment url: %@.", a2);
}

@end