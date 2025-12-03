@interface MFDecryptedAttachmentDataProvider
- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)message;
- (id)fetchLocalDataForAttachment:(id)attachment;
- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message;
- (void)dealloc;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
@end

@implementation MFDecryptedAttachmentDataProvider

- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)message
{
  v4 = [(MFDecryptedAttachmentDataProvider *)self init];
  if (v4)
  {
    v4->_message = message;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFDecryptedAttachmentDataProvider;
  [(MFDecryptedAttachmentDataProvider *)&v3 dealloc];
}

- (id)fetchLocalDataForAttachment:(id)attachment
{
  messageStore = [(MFMailMessage *)self->_message messageStore];
  [objc_msgSend(attachment "part")];
  result = [attachment readFromDisk];
  if (result)
  {
    part = [attachment part];
    [objc_msgSend(attachment "part")];

    return [messageStore dataForMimePart:part inRange:0 isComplete:v8 downloadIfNecessary:0 didDownload:{0, 0}];
  }

  return result;
}

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  v27[1] = *MEMORY[0x277D85DE8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  v24[3] = &unk_2798B7298;
  v24[4] = progress;
  messageStore = [(MFMailMessage *)self->_message messageStore];
  part = [attachment part];
  [part setMimeBody:{-[MFMailMessage messageBody](self->_message, "messageBody")}];
  readFromDisk = [attachment readFromDisk];
  if (readFromDisk)
  {
    v14 = readFromDisk;
    [consumer appendData:readFromDisk];
    v15 = [v14 length];
    [progress setCompletedUnitCount:v15];
    [progress setTotalUnitCount:v15];
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v20 = [attachment decodeFilterWithDataConsumer:consumer];
    v21 = objc_alloc(MEMORY[0x277D24F88]);
    v27[0] = v20;
    v19 = 1;
    v17 = [v21 initWithConsumers:objc_msgSend(MEMORY[0x277CBEA60] expectedSize:{"arrayWithObjects:count:", v27, 1), objc_msgSend(attachment, "encodedFileSize")}];
    [v17 setProgressBlock:v24];
    [part range];
    if ([messageStore dataForMimePart:part inRange:0 withConsumer:v22 downloadIfNecessary:{v17, 1}])
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
  [consumer done];
  (*(completion + 2))(completion, v19, v18, v16);
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message
{
  result = [message attachmentStorageLocation];
  if (result)
  {
    v6 = [result stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(attachment, "part"), "partNumber")}];
    fileName = [attachment fileName];

    return [v6 stringByAppendingPathComponent:fileName];
  }

  return result;
}

@end