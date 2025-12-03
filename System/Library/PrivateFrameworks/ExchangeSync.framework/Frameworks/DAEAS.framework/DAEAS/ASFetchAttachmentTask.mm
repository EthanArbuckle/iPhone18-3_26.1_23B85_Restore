@interface ASFetchAttachmentTask
- (BOOL)processContext:(id)context;
- (id)command;
- (id)initForMessageServerID:(id)d andAttachmentName:(id)name;
- (id)initForMessageUUID:(id)d;
- (id)parameterData;
- (void)finishWithError:(id)error;
@end

@implementation ASFetchAttachmentTask

- (void)finishWithError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [(ASTask *)self taskStatusForError:errorCopy];
  if (!errorCopy)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_11;
    }

    *buf = 138412546;
    v20 = objc_opt_class();
    v21 = 2048;
    v22 = v5;
    v9 = v20;
    v10 = "%@ Parsed response with statusCode %ld";
    goto LABEL_7;
  }

  v6 = DALoggingwithCategory();
  v7 = v6;
  if (v5 != -1)
  {
    v8 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v6, v8))
    {
      goto LABEL_11;
    }

    *buf = 138412546;
    v20 = objc_opt_class();
    v21 = 2112;
    v22 = errorCopy;
    v9 = v20;
    v10 = "%@ failed: %@";
LABEL_7:
    v11 = v7;
    v12 = v8;
    v13 = 22;
    goto LABEL_10;
  }

  v14 = *(MEMORY[0x277D03988] + 6);
  if (!os_log_type_enabled(v6, v14))
  {
    goto LABEL_11;
  }

  *buf = 138412290;
  v20 = objc_opt_class();
  v9 = v20;
  v10 = "%@ cancelled";
  v11 = v7;
  v12 = v14;
  v13 = 12;
LABEL_10:
  _os_log_impl(&dword_24A0AC000, v11, v12, v10, buf, v13);

LABEL_11:
  if ([(ASTask *)self attemptRetryWithStatus:v5 error:errorCopy])
  {
    [(ASTask *)self setCurrentlyParsingItem:0];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__ASFetchAttachmentTask_finishWithError___block_invoke;
    v16[3] = &unk_278FC7B68;
    v16[4] = self;
    v18 = v5;
    v17 = errorCopy;
    [(ASTask *)self finishWithError:v17 afterDelegateCallout:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __41__ASFetchAttachmentTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained fetchAttachmentTask:a1[4] completedWithStatus:a1[6] dataWasBase64:0 error:a1[5]];
}

- (id)parameterData
{
  attachmentName = [(ASFetchAttachmentTask *)self attachmentName];
  v3 = [attachmentName dataUsingEncoding:4];

  v4 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v3, "length") + 2}];
  v6 = 0;
  [v4 appendBytes:&v6 length:1];
  v6 = [v3 length];
  [v4 appendBytes:&v6 length:1];
  [v4 appendData:v3];

  return v4;
}

- (id)command
{
  v2 = MEMORY[0x277CCACA8];
  attachmentName = [(ASFetchAttachmentTask *)self attachmentName];
  v4 = [v2 stringWithFormat:@"GetAttachment&AttachmentName=%@", attachmentName];

  return v4;
}

- (BOOL)processContext:(id)context
{
  contextCopy = context;
  goodSizeForBuffer = [contextCopy goodSizeForBuffer];
  if (goodSizeForBuffer)
  {
    goodSizeForBuffer2 = goodSizeForBuffer;
    do
    {
      v13 = 0;
      v8 = [contextCopy bufferForLength:goodSizeForBuffer2 shouldFree:&v13];
      if (v13 == 1)
      {
        [(ASFetchAttachmentTask *)a2 processContext:&v13, &v14];
      }

      v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:goodSizeForBuffer2 freeWhenDone:?];
      delegate = [(ASTask *)self delegate];
      responseContentType = [(ASTask *)self responseContentType];
      [delegate fetchAttachmentTask:self receivedData:v9 ofContentType:responseContentType];

      if (([contextCopy advanceOffsetByAmount:goodSizeForBuffer2 retainLastToken:0] & 1) == 0)
      {
        [(ASFetchAttachmentTask *)a2 processContext:?];
      }

      goodSizeForBuffer2 = [contextCopy goodSizeForBuffer];
    }

    while (goodSizeForBuffer2);
  }

  return 1;
}

- (id)initForMessageServerID:(id)d andAttachmentName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = ASFetchAttachmentTask;
  v8 = [(ASTask *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    messageID = v8->_messageID;
    v8->_messageID = v9;

    v11 = [nameCopy copy];
    attachmentName = v8->_attachmentName;
    v8->_attachmentName = v11;
  }

  return v8;
}

- (id)initForMessageUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASFetchAttachmentTask;
  v5 = [(ASTask *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    attachmentUUID = v5->_attachmentUUID;
    v5->_attachmentUUID = v6;
  }

  return v5;
}

- (void)processContext:(_BYTE *)a3 .cold.1(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"ASFetchAttachmentTask.m" lineNumber:71 description:@"shouldn't ever have to copy a buffer when streaming."];

  *a4 = *a3 & 1;
}

- (void)processContext:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASFetchAttachmentTask.m" lineNumber:75 description:@"should always be able to advance the amount that we got from -goodSizeForBuffer"];
}

@end