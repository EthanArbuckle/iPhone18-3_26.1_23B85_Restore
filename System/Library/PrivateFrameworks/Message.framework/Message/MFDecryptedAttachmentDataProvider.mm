@interface MFDecryptedAttachmentDataProvider
- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)a3;
- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4;
- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6;
@end

@implementation MFDecryptedAttachmentDataProvider

- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)a3
{
  v5 = a3;
  v6 = [(MFDecryptedAttachmentDataProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
  }

  return v7;
}

- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6
{
  v37[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  aBlock[3] = &unk_1E7AA4D60;
  v14 = v12;
  v34 = v14;
  v32 = _Block_copy(aBlock);
  v31 = [(MFMailMessage *)self->_message messageStore];
  v15 = [v10 part];
  v16 = [(MFMailMessage *)self->_message messageBody];
  [v15 setMimeBody:v16];

  v17 = [v10 readFromDisk];
  if (v17)
  {
    [v11 appendData:v17];
    v18 = [v17 length];
    [v14 setCompletedUnitCount:v18];
    v19 = 0;
    [v14 setTotalUnitCount:v18];
    v20 = 0;
    v21 = 1;
    v22 = 0;
  }

  else
  {
    v23 = [v10 decodeFilterWithDataConsumer:v11];
    v24 = objc_alloc(MEMORY[0x1E69AD750]);
    v37[0] = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v19 = [v24 initWithConsumers:v25 expectedSize:{objc_msgSend(v10, "encodedFileSize")}];

    [v19 setProgressBlock:v32];
    [v15 range];
    LOBYTE(v25) = [v31 dataForMimePart:v15 inRange:0 withConsumer:v26 downloadIfNecessary:{v19, 1}];

    if (v25)
    {
      v22 = 0;
      v21 = 1;
      v20 = 1;
    }

    else
    {
      v27 = +[MFActivityMonitor currentMonitor];
      v28 = [v27 error];

      if (v28)
      {
        v35 = *MEMORY[0x1E696AA08];
        v36 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      }

      else
      {
        v29 = 0;
      }

      v22 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not retrieve decrypted data for attachment." title:@"No Data Found" userInfo:v29];

      v21 = 0;
      v20 = 0;
    }
  }

  [v19 done];
  [v11 done];
  v13[2](v13, v21, v22, v20);

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4
{
  v4 = [a4 storageLocationForAttachment:a3];

  return v4;
}

@end