@interface ASItemOperationsFetchAttachmentTask
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)handleStreamOperation:(int)operation forCodePage:(int)page tag:(int)tag withParentItem:(id)item withData:(char *)data dataLength:(int)length;
- (BOOL)processContext:(id)context;
- (id)initForMessageServerID:(id)d andAttachmentName:(id)name;
- (id)initForMessageUUID:(id)d;
- (id)requestBody;
- (void)finishWithError:(id)error;
- (void)requestBody;
@end

@implementation ASItemOperationsFetchAttachmentTask

- (void)finishWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [(ASTask *)self taskStatusForError:errorCopy];
  if (!errorCopy)
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

    errorCopy = [(ASItemOperationsFetchAttachmentTask *)self writeAttachmentError];
LABEL_14:
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__ASItemOperationsFetchAttachmentTask_finishWithError___block_invoke;
    v19[3] = &unk_278FC7B68;
    v19[4] = self;
    v21 = v5;
    errorCopy = errorCopy;
    v20 = errorCopy;
    [(ASTask *)self finishWithError:errorCopy afterDelegateCallout:v19];

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
    v25 = errorCopy;
    v9 = v23;
    v10 = "%@ failed: %@";
    v11 = v7;
    v12 = v8;
    v13 = 22;
  }

  _os_log_impl(&dword_24A0AC000, v11, v12, v10, buf, v13);

LABEL_12:
  if (![(ASTask *)self attemptRetryWithStatus:v5 error:errorCopy])
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
  taskManager = [(ASTask *)self taskManager];
  protocol = [taskManager protocol];

  if (([protocol supportsItemOperationsCommand] & 1) == 0)
  {
    [(ASItemOperationsFetchAttachmentTask *)a2 requestBody];
  }

  v6 = objc_opt_new();
  [v6 switchToCodePage:20];
  [v6 openTag:5];
  [v6 openTag:6];
  [v6 appendTag:7 withStringContent:@"Mailbox"];
  [v6 switchToCodePage:17];
  attachmentName = [(ASItemOperationsFetchAttachmentTask *)self attachmentName];
  [v6 appendTag:17 withStringContent:attachmentName];

  [v6 closeTag:6];
  [v6 closeTag:5];
  data = [v6 data];

  return data;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 20;
  *token = 5;
  *statusToken = 13;
  return 1;
}

- (BOOL)handleStreamOperation:(int)operation forCodePage:(int)page tag:(int)tag withParentItem:(id)item withData:(char *)data dataLength:(int)length
{
  v21 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (operation == 1)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:data length:length freeWhenDone:0];
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v15))
    {
      v20[0] = 67109120;
      v20[1] = length;
      _os_log_impl(&dword_24A0AC000, v14, v15, "Streamed data length %d", v20, 8u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      attachmentContentType = [itemCopy attachmentContentType];
    }

    else
    {
      attachmentContentType = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    [WeakRetained fetchAttachmentTask:self receivedData:v13 ofContentType:attachmentContentType];
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)processContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (!currentlyParsingItem)
  {
    if (self->super._haveSwitchedCodePage)
    {
LABEL_3:
      v6 = objc_opt_new();
      [(ASTask *)self setCurrentlyParsingItem:v6];

      goto LABEL_4;
    }

    if (![contextCopy hasNumberOfTokensRemaining:2])
    {
      goto LABEL_14;
    }

    if ([contextCopy currentByte])
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to item operations code page"];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASItemOperationsFetchAttachmentTask.m", 96, objc_msgSend(contextCopy, "curOffset")];
      v18 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 134217984;
        curOffset = [contextCopy curOffset];
        _os_log_impl(&dword_24A0AC000, v18, v19, "Failure at index %lld:", buf, 0xCu);
      }

      v20 = DALoggingwithCategory();
      if (!os_log_type_enabled(v20, v19))
      {
        goto LABEL_23;
      }

      *buf = 138412290;
      curOffset = v16;
    }

    else
    {
      [contextCopy advanceOffsetByAmount:1];
      if ([contextCopy currentByte] == 20)
      {
        [contextCopy advanceOffsetByAmount:1];
        [contextCopy setCodePage:20];
        self->super._haveSwitchedCodePage = 1;
        goto LABEL_3;
      }

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to item operations code page"];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASItemOperationsFetchAttachmentTask.m", 96, objc_msgSend(contextCopy, "curOffset")];
      v22 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v22, v19))
      {
        *buf = 134217984;
        curOffset = [contextCopy curOffset];
        _os_log_impl(&dword_24A0AC000, v22, v19, "Failure at index %lld:", buf, 0xCu);
      }

      v20 = DALoggingwithCategory();
      if (!os_log_type_enabled(v20, v19))
      {
LABEL_23:

        [contextCopy setParseErrorReason:v17];
        goto LABEL_24;
      }

      *buf = 138412290;
      curOffset = v16;
    }

    _os_log_impl(&dword_24A0AC000, v20, v19, "failure reason was %@", buf, 0xCu);
    goto LABEL_23;
  }

LABEL_4:
  currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];

  if (!currentlyParsingItem2)
  {
LABEL_24:
    parseErrorReason = [contextCopy parseErrorReason];
    v21 = parseErrorReason == 0;

    goto LABEL_25;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __54__ASItemOperationsFetchAttachmentTask_processContext___block_invoke;
  v26[3] = &unk_278FC7D98;
  v26[4] = self;
  v8 = MEMORY[0x24C2119B0](v26);
  5132 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASItemOperationsFetchAttachmentResponse.ASArray.ASItemOperationsFetchAttachmentFetchResult.ASItemOperationsFetchAttachmentProperties.%d", 5132];
  v27 = 5132;
  v10 = MEMORY[0x24C2119B0](v8);
  v28 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

  currentlyParsingItem3 = [(ASTask *)self currentlyParsingItem];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];
  [currentlyParsingItem3 parseASParseContext:contextCopy root:0 parent:0 callbackDict:0 streamCallbackDict:v11 account:account];

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

- (id)initForMessageServerID:(id)d andAttachmentName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = ASItemOperationsFetchAttachmentTask;
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
  v9.super_class = ASItemOperationsFetchAttachmentTask;
  v5 = [(ASTask *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    attachmentUUID = v5->_attachmentUUID;
    v5->_attachmentUUID = v6;
  }

  return v5;
}

- (void)requestBody
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ASItemOperationsFetchAttachmentTask.m" lineNumber:47 description:{@"We were asked to fetch an attachment with ItemOperations, but our protocol %@ doesn't support that", a3}];
}

@end