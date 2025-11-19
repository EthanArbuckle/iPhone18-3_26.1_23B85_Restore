@interface MFRFC822AttachmentDataProvider
- (MFRFC822AttachmentDataProvider)initWithMessageData:(id)a3 parentPart:(id)a4;
- (id)fetchLocalDataForAttachment:(id)a3;
- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4;
- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6;
@end

@implementation MFRFC822AttachmentDataProvider

- (MFRFC822AttachmentDataProvider)initWithMessageData:(id)a3 parentPart:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MFRFC822AttachmentDataProvider *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageData, a3);
    objc_storeStrong(&v10->_parentPart, a4);
    v11 = [(MFMessage *)MFMailMessage messageWithRFC822Data:v10->_messageData withParentPart:v10->_parentPart generateMessageIDHash:1];
    message = v10->_message;
    v10->_message = v11;
  }

  return v10;
}

- (id)fetchLocalDataForAttachment:(id)a3
{
  v4 = a3;
  v5 = [(MFMailMessage *)self->_message messageStore];
  v6 = [v4 part];
  v7 = [v6 mimeBody];

  if (!v7)
  {
    v8 = [v4 part];
    v9 = [v5 bodyForMessage:self->_message fetchIfNotAvailable:0 updateFlags:0];
    [v8 setMimeBody:v9];
  }

  v10 = [v4 readFromDisk];
  if (!v10)
  {
    v11 = [v4 part];
    v12 = [v4 part];
    [v12 range];
    v10 = [v5 dataForMimePart:v11 inRange:0 isComplete:v13 downloadIfNecessary:0 didDownload:{0, 0}];
  }

  return v10;
}

- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6
{
  v44[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__MFRFC822AttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  aBlock[3] = &unk_2798B6FF0;
  v13 = v12;
  v40 = v13;
  v14 = a6;
  v15 = _Block_copy(aBlock);
  v38 = [(MFMailMessage *)self->_message messageStore];
  v16 = [v10 part];
  v17 = [v16 mimeBody];

  if (!v17)
  {
    v18 = [v10 part];
    v19 = [v38 bodyForMessage:self->_message fetchIfNotAvailable:0 updateFlags:0];
    [v18 setMimeBody:v19];
  }

  v20 = [v10 readFromDisk];
  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D24F88]);
    v44[0] = v11;
    v22 = 1;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    v24 = [v21 initWithConsumers:v23 expectedSize:{objc_msgSend(v10, "encodedFileSize")}];

    [v24 setProgressBlock:v15];
    [v24 appendData:v20];
    v25 = 0;
  }

  else
  {
    v37 = v13;
    v26 = [v10 decodeFilterWithDataConsumer:v11];
    v27 = objc_alloc(MEMORY[0x277D24F88]);
    v43 = v26;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v24 = [v27 initWithConsumers:v28 expectedSize:{objc_msgSend(v10, "encodedFileSize")}];

    [v24 setProgressBlock:v15];
    v29 = [v10 part];
    v30 = [v10 part];
    [v30 range];
    v32 = [v38 dataForMimePart:v29 inRange:0 withConsumer:v31 downloadIfNecessary:{v24, 1}];

    if (v32)
    {
      v25 = 0;
      v22 = 1;
      v13 = v37;
    }

    else
    {
      v33 = +[MFActivityMonitor currentMonitor];
      v34 = [v33 error];

      if (v34)
      {
        v41 = *MEMORY[0x277CCA7E8];
        v42 = v34;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      }

      else
      {
        v35 = 0;
      }

      v13 = v37;
      v25 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not retrieve RFC822 data for attachment." title:@"No Data Found" userInfo:v35];

      v22 = 0;
    }
  }

  [v24 done];
  [v11 done];
  v14[2](v14, v22, v25, 0);

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __86__MFRFC822AttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4
{
  v5 = a3;
  v6 = [a4 attachmentStorageLocation];
  if (v6)
  {
    v7 = [v5 part];
    v8 = [v7 partNumber];
    v9 = [v6 stringByAppendingPathComponent:v8];

    v10 = [v5 fileName];
    v6 = [v9 stringByAppendingPathComponent:v10];
  }

  return v6;
}

@end