@interface MFDecryptedAttachmentDataProvider
- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)message;
- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
@end

@implementation MFDecryptedAttachmentDataProvider

- (MFDecryptedAttachmentDataProvider)initWithDecryptedMessage:(id)message
{
  messageCopy = message;
  v6 = [(MFDecryptedAttachmentDataProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  v37[1] = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  consumerCopy = consumer;
  progressCopy = progress;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  aBlock[3] = &unk_1E7AA4D60;
  v14 = progressCopy;
  v34 = v14;
  v32 = _Block_copy(aBlock);
  messageStore = [(MFMailMessage *)self->_message messageStore];
  part = [attachmentCopy part];
  messageBody = [(MFMailMessage *)self->_message messageBody];
  [part setMimeBody:messageBody];

  readFromDisk = [attachmentCopy readFromDisk];
  if (readFromDisk)
  {
    [consumerCopy appendData:readFromDisk];
    v18 = [readFromDisk length];
    [v14 setCompletedUnitCount:v18];
    v19 = 0;
    [v14 setTotalUnitCount:v18];
    v20 = 0;
    v21 = 1;
    v22 = 0;
  }

  else
  {
    v23 = [attachmentCopy decodeFilterWithDataConsumer:consumerCopy];
    v24 = objc_alloc(MEMORY[0x1E69AD750]);
    v37[0] = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v19 = [v24 initWithConsumers:v25 expectedSize:{objc_msgSend(attachmentCopy, "encodedFileSize")}];

    [v19 setProgressBlock:v32];
    [part range];
    LOBYTE(v25) = [messageStore dataForMimePart:part inRange:0 withConsumer:v26 downloadIfNecessary:{v19, 1}];

    if (v25)
    {
      v22 = 0;
      v21 = 1;
      v20 = 1;
    }

    else
    {
      v27 = +[MFActivityMonitor currentMonitor];
      error = [v27 error];

      if (error)
      {
        v35 = *MEMORY[0x1E696AA08];
        v36 = error;
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
  [consumerCopy done];
  completionCopy[2](completionCopy, v21, v22, v20);

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __89__MFDecryptedAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message
{
  v4 = [message storageLocationForAttachment:attachment];

  return v4;
}

@end