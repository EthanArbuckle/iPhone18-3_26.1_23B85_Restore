@interface MFRFC822AttachmentDataProvider
- (MFRFC822AttachmentDataProvider)initWithMessage:(id)message;
- (MFRFC822AttachmentDataProvider)initWithMessageData:(id)data parentPart:(id)part;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
@end

@implementation MFRFC822AttachmentDataProvider

- (MFRFC822AttachmentDataProvider)initWithMessageData:(id)data parentPart:(id)part
{
  dataCopy = data;
  partCopy = part;
  v9 = [(MFRFC822AttachmentDataProvider *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageData, data);
    v11 = [(MFMessage *)MFMailMessage messageWithRFC822Data:v10->_messageData withParentPart:partCopy generateMessageIDHash:1];
    message = v10->_message;
    v10->_message = v11;
  }

  return v10;
}

- (MFRFC822AttachmentDataProvider)initWithMessage:(id)message
{
  messageCopy = message;
  v6 = [(MFRFC822AttachmentDataProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  v39[1] = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  consumerCopy = consumer;
  progressCopy = progress;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__MFRFC822AttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  aBlock[3] = &unk_1E7AA4D60;
  v33 = progressCopy;
  v36 = v33;
  v34 = _Block_copy(aBlock);
  messageStore = [(MFMailMessage *)self->_message messageStore];
  part = [attachmentCopy part];
  mimeBody = [part mimeBody];
  v17 = mimeBody == 0;

  if (v17)
  {
    part2 = [attachmentCopy part];
    v19 = [messageStore bodyForMessage:self->_message fetchIfNotAvailable:0 updateFlags:0];
    [part2 setMimeBody:v19];
  }

  v20 = [attachmentCopy decodeFilterWithDataConsumer:consumerCopy];
  v21 = objc_alloc(MEMORY[0x1E69AD750]);
  v39[0] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v23 = [v21 initWithConsumers:v22 expectedSize:{objc_msgSend(attachmentCopy, "encodedFileSize")}];

  [v23 setProgressBlock:v34];
  part3 = [attachmentCopy part];
  part4 = [attachmentCopy part];
  [part4 range];
  v27 = [messageStore dataForMimePart:part3 inRange:0 withConsumer:v26 downloadIfNecessary:{v23, 1}];

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v29 = +[MFActivityMonitor currentMonitor];
    error = [v29 error];

    if (error)
    {
      v37 = *MEMORY[0x1E696AA08];
      v38 = error;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    }

    else
    {
      v31 = 0;
    }

    v28 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not retrieve RFC822 data for attachment." title:@"No Data Found" userInfo:v31];
  }

  [v23 done];
  [consumerCopy done];
  completionCopy[2](completionCopy, v27, v28, 0);

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __86__MFRFC822AttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

@end