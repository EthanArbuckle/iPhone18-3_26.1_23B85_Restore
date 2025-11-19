@interface ASItemOperationsFetchAttachmentTask
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)handleStreamOperation:(int)a3 forCodePage:(int)a4 tag:(int)a5 withParentItem:(id)a6 withData:(char *)a7 dataLength:(int)a8;
- (BOOL)processContext:(id)a3;
- (id)initForMessageServerID:(id)a3 andAttachmentName:(id)a4;
- (id)initForMessageUUID:(id)a3;
- (id)requestBody;
- (void)finishWithError:(id)a3;
- (void)requestBody;
@end

@implementation ASItemOperationsFetchAttachmentTask

- (void)finishWithError:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self taskStatusForError:v4];
  if (!v4)
  {
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v15))
    {
      *buf = 138412546;
      v23 = objc_opt_class();
      v24 = 2048;
      v25 = v5;
      v16 = v23;
      _os_log_impl(&dword_24A0AC000, v14, v15, "%@ Parsed response with statusCode %ld", buf, 0x16u);
    }

    if ([(ASTask *)self attemptRetryWithStatus:v5 error:0])
    {
      goto LABEL_13;
    }

    v4 = [(ASItemOperationsFetchAttachmentTask *)self writeAttachmentError];
LABEL_14:
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__ASItemOperationsFetchAttachmentTask_finishWithError___block_invoke;
    v19[3] = &unk_278FC7B68;
    v19[4] = self;
    v21 = v5;
    v4 = v4;
    v20 = v4;
    [(ASTask *)self finishWithError:v4 afterDelegateCallout:v19];

    goto LABEL_15;
  }

  v6 = DALoggingwithCategory();
  v7 = v6;
  if (v5 == -1)
  {
    v17 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v6, v17))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v23 = objc_opt_class();
    v9 = v23;
    v10 = "%@ cancelled";
    v11 = v7;
    v12 = v17;
    v13 = 12;
  }

  else
  {
    v8 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v6, v8))
    {
      goto LABEL_12;
    }

    *buf = 138412546;
    v23 = objc_opt_class();
    v24 = 2112;
    v25 = v4;
    v9 = v23;
    v10 = "%@ failed: %@";
    v11 = v7;
    v12 = v8;
    v13 = 22;
  }

  _os_log_impl(&dword_24A0AC000, v11, v12, v10, buf, v13);

LABEL_12:
  if (![(ASTask *)self attemptRetryWithStatus:v5 error:v4])
  {
    goto LABEL_14;
  }

LABEL_13:
  [(ASTask *)self setCurrentlyParsingItem:0];
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

void __55__ASItemOperationsFetchAttachmentTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained fetchAttachmentTask:a1[4] completedWithStatus:a1[6] dataWasBase64:1 error:a1[5]];
}

- (id)requestBody
{
  v4 = [(ASTask *)self taskManager];
  v5 = [v4 protocol];

  if (([v5 supportsItemOperationsCommand] & 1) == 0)
  {
    [(ASItemOperationsFetchAttachmentTask *)a2 requestBody];
  }

  v6 = objc_opt_new();
  [v6 switchToCodePage:20];
  [v6 openTag:5];
  [v6 openTag:6];
  [v6 appendTag:7 withStringContent:@"Mailbox"];
  [v6 switchToCodePage:17];
  v7 = [(ASItemOperationsFetchAttachmentTask *)self attachmentName];
  [v6 appendTag:17 withStringContent:v7];

  [v6 closeTag:6];
  [v6 closeTag:5];
  v8 = [v6 data];

  return v8;
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  *a4 = 20;
  *a3 = 5;
  *a5 = 13;
  return 1;
}

- (BOOL)handleStreamOperation:(int)a3 forCodePage:(int)a4 tag:(int)a5 withParentItem:(id)a6 withData:(char *)a7 dataLength:(int)a8
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = a6;
  if (a3 == 1)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a7 length:a8 freeWhenDone:0];
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v15))
    {
      v20[0] = 67109120;
      v20[1] = a8;
      _os_log_impl(&dword_24A0AC000, v14, v15, "Streamed data length %d", v20, 8u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v12 attachmentContentType];
    }

    else
    {
      v16 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained fetchAttachmentTask:self receivedData:v13 ofContentType:v16];
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)processContext:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self currentlyParsingItem];

  if (!v5)
  {
    if (self->super._haveSwitchedCodePage)
    {
LABEL_3:
      v6 = objc_opt_new();
      [(ASTask *)self setCurrentlyParsingItem:v6];

      goto LABEL_4;
    }

    if (![v4 hasNumberOfTokensRemaining:2])
    {
      goto LABEL_14;
    }

    if ([v4 currentByte])
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to item operations code page"];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASItemOperationsFetchAttachmentTask.m", 96, objc_msgSend(v4, "curOffset")];
      v18 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 134217984;
        v30 = [v4 curOffset];
        _os_log_impl(&dword_24A0AC000, v18, v19, "Failure at index %lld:", buf, 0xCu);
      }

      v20 = DALoggingwithCategory();
      if (!os_log_type_enabled(v20, v19))
      {
        goto LABEL_23;
      }

      *buf = 138412290;
      v30 = v16;
    }

    else
    {
      [v4 advanceOffsetByAmount:1];
      if ([v4 currentByte] == 20)
      {
        [v4 advanceOffsetByAmount:1];
        [v4 setCodePage:20];
        self->super._haveSwitchedCodePage = 1;
        goto LABEL_3;
      }

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to item operations code page"];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASItemOperationsFetchAttachmentTask.m", 96, objc_msgSend(v4, "curOffset")];
      v22 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v22, v19))
      {
        *buf = 134217984;
        v30 = [v4 curOffset];
        _os_log_impl(&dword_24A0AC000, v22, v19, "Failure at index %lld:", buf, 0xCu);
      }

      v20 = DALoggingwithCategory();
      if (!os_log_type_enabled(v20, v19))
      {
LABEL_23:

        [v4 setParseErrorReason:v17];
        goto LABEL_24;
      }

      *buf = 138412290;
      v30 = v16;
    }

    _os_log_impl(&dword_24A0AC000, v20, v19, "failure reason was %@", buf, 0xCu);
    goto LABEL_23;
  }

LABEL_4:
  v7 = [(ASTask *)self currentlyParsingItem];

  if (!v7)
  {
LABEL_24:
    v23 = [v4 parseErrorReason];
    v21 = v23 == 0;

    goto LABEL_25;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __54__ASItemOperationsFetchAttachmentTask_processContext___block_invoke;
  v26[3] = &unk_278FC7D98;
  v26[4] = self;
  v8 = MEMORY[0x24C2119B0](v26);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASItemOperationsFetchAttachmentResponse.ASArray.ASItemOperationsFetchAttachmentFetchResult.ASItemOperationsFetchAttachmentProperties.%d", 5132];
  v27 = v9;
  v10 = MEMORY[0x24C2119B0](v8);
  v28 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

  v12 = [(ASTask *)self currentlyParsingItem];
  v13 = [(ASTask *)self taskManager];
  v14 = [v13 account];
  [v12 parseASParseContext:v4 root:0 parent:0 callbackDict:0 streamCallbackDict:v11 account:v14];

  currentlyParsingItem = self->super._currentlyParsingItem;
  if (currentlyParsingItem && [(ASItem *)currentlyParsingItem parsingState]> 1)
  {

    goto LABEL_24;
  }

LABEL_14:
  v21 = 0;
LABEL_25:

  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)initForMessageServerID:(id)a3 andAttachmentName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASItemOperationsFetchAttachmentTask;
  v8 = [(ASTask *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    messageID = v8->_messageID;
    v8->_messageID = v9;

    v11 = [v7 copy];
    attachmentName = v8->_attachmentName;
    v8->_attachmentName = v11;
  }

  return v8;
}

- (id)initForMessageUUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASItemOperationsFetchAttachmentTask;
  v5 = [(ASTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    attachmentUUID = v5->_attachmentUUID;
    v5->_attachmentUUID = v6;
  }

  return v5;
}

- (void)requestBody
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ASItemOperationsFetchAttachmentTask.m" lineNumber:47 description:{@"We were asked to fetch an attachment with ItemOperations, but our protocol %@ doesn't support that", a3}];
}

@end