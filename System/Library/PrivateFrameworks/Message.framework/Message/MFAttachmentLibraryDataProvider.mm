@interface MFAttachmentLibraryDataProvider
- (EDAttachmentPersistenceManager)persistenceManager;
- (MFAttachmentLibraryDataProvider)initWithLibrary:(id)library;
- (MFMailMessageLibrary)messageLibrary;
- (_MFAttachmentDataFetchResult)_fetchDataForAttachment:(SEL)attachment consumer:(id)consumer progress:(id)progress;
- (id)messageForAttachment:(id)attachment;
- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
@end

@implementation MFAttachmentLibraryDataProvider

- (MFAttachmentLibraryDataProvider)initWithLibrary:(id)library
{
  libraryCopy = library;
  v8.receiver = self;
  v8.super_class = MFAttachmentLibraryDataProvider;
  v5 = [(MFAttachmentLibraryDataProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MFAttachmentLibraryDataProvider *)v5 setMessageLibrary:libraryCopy];
  }

  return v6;
}

- (EDAttachmentPersistenceManager)persistenceManager
{
  persistenceManager = self->_persistenceManager;
  if (!persistenceManager)
  {
    messageLibrary = [(MFAttachmentLibraryDataProvider *)self messageLibrary];
    persistence = [messageLibrary persistence];
    attachmentPersistenceManager = [persistence attachmentPersistenceManager];
    v7 = self->_persistenceManager;
    self->_persistenceManager = attachmentPersistenceManager;

    persistenceManager = self->_persistenceManager;
  }

  return persistenceManager;
}

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  attachmentCopy = attachment;
  completionCopy = completion;
  memset(v12, 170, sizeof(v12));
  [(MFAttachmentLibraryDataProvider *)self _fetchDataForAttachment:attachmentCopy consumer:consumer progress:progress];
  [attachmentCopy updatePathIfNeeded];
  (*(completionCopy + 2))(completionCopy, LOBYTE(v12[0]), v12[1], LOBYTE(v12[2]));
}

- (_MFAttachmentDataFetchResult)_fetchDataForAttachment:(SEL)attachment consumer:(id)consumer progress:(id)progress
{
  v66 = *MEMORY[0x1E69E9840];
  consumerCopy = consumer;
  progressCopy = progress;
  v55 = a6;
  v12 = EDAttachmentsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [consumerCopy ef_publicDescription];
    *buf = 138543362;
    v63 = ef_publicDescription;
    _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "In _fetchDataForAttachment for attachment %{public}@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__MFAttachmentLibraryDataProvider__fetchDataForAttachment_consumer_progress___block_invoke;
  aBlock[3] = &unk_1E7AA4D60;
  v14 = v55;
  v58 = v14;
  v56 = _Block_copy(aBlock);
  v15 = [consumerCopy url];
  mf_lastPartNumber = [v15 mf_lastPartNumber];
  if (mf_lastPartNumber)
  {
    readFromDisk = [consumerCopy readFromDisk];
    if (readFromDisk)
    {
      [progressCopy appendData:readFromDisk];
      [progressCopy done];
      v18 = EDAttachmentsLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [readFromDisk length];
        ef_publicDescription2 = [consumerCopy ef_publicDescription];
        *buf = 134218242;
        v63 = v19;
        v64 = 2114;
        v65 = ef_publicDescription2;
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "Got data (%{iec-bytes}llu) for attachment %{public}@.", buf, 0x16u);
      }

      *&retstr->var0 = 0;
      retstr->var1 = 0;
      *&retstr->var2 = 0;
      retstr->var0 = 1;
    }

    else
    {
      v53 = [(MFAttachmentLibraryDataProvider *)self messageForAttachment:consumerCopy];
      messageStore = [v53 messageStore];
      [messageStore downloadMimePartNumber:mf_lastPartNumber message:v53 withProgressBlock:v56];
      [consumerCopy updatePathIfNeeded];
      readFromDisk = [consumerCopy readFromDisk];
      if (readFromDisk)
      {
        v24 = EDAttachmentsLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [readFromDisk length];
          ef_publicDescription3 = [consumerCopy ef_publicDescription];
          *buf = 134218242;
          v63 = v25;
          v64 = 2114;
          v65 = ef_publicDescription3;
          _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "Got data (%{iec-bytes}llu) for attachment %{public}@.", buf, 0x16u);
        }

        [progressCopy appendData:readFromDisk];
        [progressCopy done];
        if (objc_opt_respondsToSelector())
        {
          data = [progressCopy data];
          v28 = data == 0;

          if (v28)
          {
            v29 = EDAttachmentsLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              ef_publicDescription4 = [consumerCopy ef_publicDescription];
              [MFAttachmentLibraryDataProvider _fetchDataForAttachment:ef_publicDescription4 consumer:buf progress:v29];
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
          ef_publicDescription5 = [consumerCopy ef_publicDescription];
          [MFAttachmentLibraryDataProvider _fetchDataForAttachment:ef_publicDescription5 consumer:buf progress:v31];
        }

        v33 = [consumerCopy decodeFilterWithDataConsumer:progressCopy];
        v34 = objc_alloc(MEMORY[0x1E69AD750]);
        v61 = v33;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
        v52 = [v34 initWithConsumers:v35 expectedSize:{objc_msgSend(consumerCopy, "encodedFileSize")}];

        [v52 setProgressBlock:v56];
        messageBody = [v53 messageBody];
        v51 = [messageBody partWithNumber:mf_lastPartNumber];

        range = [v51 range];
        v39 = [messageStore dataForMimePart:v51 inRange:range withConsumer:v38 downloadIfNecessary:{v52, 1}];
        [consumerCopy updatePathIfNeeded];
        if (v39)
        {
          v40 = EDAttachmentsLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v49 = v33;
            ef_publicDescription6 = [consumerCopy ef_publicDescription];
            *v59 = 138543362;
            v60 = ef_publicDescription6;
            v42 = ef_publicDescription6;
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
            ef_publicDescription7 = [consumerCopy ef_publicDescription];
            *v59 = 138543362;
            v60 = ef_publicDescription7;
            v46 = ef_publicDescription7;
            _os_log_impl(&dword_1B0389000, v44, OS_LOG_TYPE_DEFAULT, "Failed to get data for attachment %{public}@.", v59, 0xCu);

            v33 = v50;
          }

          v43 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not retrieve library data for attachment." title:@"No Data Found" userInfo:0];
        }

        [v52 done];
        [progressCopy done];
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
      ef_publicDescription8 = [consumerCopy ef_publicDescription];
      *buf = 138543362;
      v63 = ef_publicDescription8;
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

- (id)messageForAttachment:(id)attachment
{
  v21 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  part = [attachmentCopy part];
  mimeBody = [part mimeBody];
  message = [mimeBody message];

  if (!message)
  {
    v8 = [attachmentCopy url];
    mf_rowID = [v8 mf_rowID];

    if (mf_rowID == *MEMORY[0x1E699A728])
    {
      mailbox = EDAttachmentsLog();
      if (os_log_type_enabled(mailbox, OS_LOG_TYPE_ERROR))
      {
        v11 = [attachmentCopy url];
        [(MFAttachmentLibraryDataProvider *)v11 messageForAttachment:mailbox];
      }

      message = 0;
    }

    else
    {
      messageLibrary = [(MFAttachmentLibraryDataProvider *)self messageLibrary];
      message = [messageLibrary messageWithLibraryID:mf_rowID options:4227087 inMailbox:0];

      mailbox = [message mailbox];
      account = [mailbox account];
      v14 = [account storeForMailboxUid:mailbox];
      if (v14)
      {
        [message setMessageStore:v14];
      }

      else
      {
        v15 = MFLogGeneral();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          ef_publicDescription = [message ef_publicDescription];
          v19 = 138543362;
          v20 = ef_publicDescription;
          _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_INFO, "#Attachments failed to find a store for message %{public}@, things may behave unexpectedly", &v19, 0xCu);
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return message;
}

- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message
{
  v4 = [message storageLocationForAttachment:attachment];

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