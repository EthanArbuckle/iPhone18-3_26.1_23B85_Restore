@interface MFDecryptedAttachmentDataProvider
- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)a3;
- (id)fetchLocalDataForAttachment:(id)a3;
- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4;
- (void)dealloc;
- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6;
@end

@implementation MFDecryptedAttachmentDataProvider

- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)a3
{
  v4 = [(MFDecryptedAttachmentDataProvider *)self init];
  if (v4)
  {
    v4->_message = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFDecryptedAttachmentDataProvider;
  [(MFDecryptedAttachmentDataProvider *)&v3 dealloc];
}

- (id)fetchLocalDataForAttachment:(id)a3
{
  v5 = [(MFMailMessage *)self->_message messageStore];
  [objc_msgSend(a3 "part")];
  result = [a3 readFromDisk];
  if (result)
  {
    v7 = [a3 part];
    [objc_msgSend(a3 "part")];

    return [v5 dataForMimePart:v7 inRange:0 isComplete:v8 downloadIfNecessary:0 didDownload:{0, 0}];
  }

  return result;
}

- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6
{
  v27[1] = *MEMORY[0x277D85DE8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  v24[3] = &unk_2798B7298;
  v24[4] = a5;
  v11 = [(MFMailMessage *)self->_message messageStore];
  v12 = [a3 part];
  [v12 setMimeBody:{-[MFMailMessage messageBody](self->_message, "messageBody")}];
  v13 = [a3 readFromDisk];
  if (v13)
  {
    v14 = v13;
    [a4 appendData:v13];
    v15 = [v14 length];
    [a5 setCompletedUnitCount:v15];
    [a5 setTotalUnitCount:v15];
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v20 = [a3 decodeFilterWithDataConsumer:a4];
    v21 = objc_alloc(MEMORY[0x277D24F88]);
    v27[0] = v20;
    v19 = 1;
    v17 = [v21 initWithConsumers:objc_msgSend(MEMORY[0x277CBEA60] expectedSize:{"arrayWithObjects:count:", v27, 1), objc_msgSend(a3, "encodedFileSize")}];
    [v17 setProgressBlock:v24];
    [v12 range];
    if ([v11 dataForMimePart:v12 inRange:0 withConsumer:v22 downloadIfNecessary:{v17, 1}])
    {
      v18 = 0;
      v16 = 1;
    }

    else
    {
      v25 = *MEMORY[0x277CCA7E8];
      v26 = [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
      v18 = +[MFError errorWithDomain:code:localizedDescription:title:userInfo:](MFError, "errorWithDomain:code:localizedDescription:title:userInfo:", @"MFMessageErrorDomain", 1030, @"Could not retrieve decrypted data for attachment.", @"No Data Found", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1]);
      v19 = 0;
      v16 = 0;
    }
  }

  [v17 done];
  [a4 done];
  (*(a6 + 2))(a6, v19, v18, v16);
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4
{
  result = [a4 attachmentStorageLocation];
  if (result)
  {
    v6 = [result stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(a3, "part"), "partNumber")}];
    v7 = [a3 fileName];

    return [v6 stringByAppendingPathComponent:v7];
  }

  return result;
}

@end