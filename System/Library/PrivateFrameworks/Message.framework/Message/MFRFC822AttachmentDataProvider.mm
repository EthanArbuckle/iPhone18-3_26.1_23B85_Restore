@interface MFRFC822AttachmentDataProvider
- (MFRFC822AttachmentDataProvider)initWithMessage:(id)a3;
- (MFRFC822AttachmentDataProvider)initWithMessageData:(id)a3 parentPart:(id)a4;
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
    v11 = [(MFMessage *)MFMailMessage messageWithRFC822Data:v10->_messageData withParentPart:v8 generateMessageIDHash:1];
    message = v10->_message;
    v10->_message = v11;
  }

  return v10;
}

- (MFRFC822AttachmentDataProvider)initWithMessage:(id)a3
{
  v5 = a3;
  v6 = [(MFRFC822AttachmentDataProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
  }

  return v7;
}

- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6
{
  v39[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__MFRFC822AttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  aBlock[3] = &unk_1E7AA4D60;
  v33 = v12;
  v36 = v33;
  v34 = _Block_copy(aBlock);
  v14 = [(MFMailMessage *)self->_message messageStore];
  v15 = [v10 part];
  v16 = [v15 mimeBody];
  v17 = v16 == 0;

  if (v17)
  {
    v18 = [v10 part];
    v19 = [v14 bodyForMessage:self->_message fetchIfNotAvailable:0 updateFlags:0];
    [v18 setMimeBody:v19];
  }

  v20 = [v10 decodeFilterWithDataConsumer:v11];
  v21 = objc_alloc(MEMORY[0x1E69AD750]);
  v39[0] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v23 = [v21 initWithConsumers:v22 expectedSize:{objc_msgSend(v10, "encodedFileSize")}];

  [v23 setProgressBlock:v34];
  v24 = [v10 part];
  v25 = [v10 part];
  [v25 range];
  v27 = [v14 dataForMimePart:v24 inRange:0 withConsumer:v26 downloadIfNecessary:{v23, 1}];

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v29 = +[MFActivityMonitor currentMonitor];
    v30 = [v29 error];

    if (v30)
    {
      v37 = *MEMORY[0x1E696AA08];
      v38 = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    }

    else
    {
      v31 = 0;
    }

    v28 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not retrieve RFC822 data for attachment." title:@"No Data Found" userInfo:v31];
  }

  [v23 done];
  [v11 done];
  v13[2](v13, v27, v28, 0);

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __86__MFRFC822AttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

@end