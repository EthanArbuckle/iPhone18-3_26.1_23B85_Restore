@interface ASSendMailTask
- (ASSendMailTask)initWithMessage:(id)message messageID:(id)d;
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)processContext:(id)context;
- (id)command;
- (id)contentType;
- (id)parameterData;
- (id)requestBody;
- (id)requestBodyStreamOutKnownSize:(int *)size;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)finishWithError:(id)error;
- (void)requestBody;
@end

@implementation ASSendMailTask

- (ASSendMailTask)initWithMessage:(id)message messageID:(id)d
{
  messageCopy = message;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = ASSendMailTask;
  v8 = [(ASTask *)&v14 init];
  if (v8)
  {
    v9 = [messageCopy copy];
    mimeMessage = v8->_mimeMessage;
    v8->_mimeMessage = v9;

    if (dCopy)
    {
      da_newGUID = [dCopy copy];
    }

    else
    {
      da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    }

    messageID = v8->_messageID;
    v8->_messageID = da_newGUID;
  }

  return v8;
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  v14 = *MEMORY[0x277D85DE8];
  result = 2;
  if (status >= 2 && status != 118)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138412546;
      v11 = v8;
      v12 = 1024;
      statusCopy = status;
      _os_log_impl(&dword_24A0AC000, v5, v6, "%@: Unknown status code (%d)", &v10, 0x12u);
    }

    result = 10;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)finishWithError:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [(ASTask *)self taskStatusForError:errorCopy];
  if (errorCopy)
  {
    v6 = v5;
    v7 = DALoggingwithCategory();
    currentlyParsingItem = v7;
    if (v6 == -1)
    {
      v18 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v18))
      {
        *buf = 138412290;
        selfCopy = objc_opt_class();
        v19 = selfCopy;
        _os_log_impl(&dword_24A0AC000, currentlyParsingItem, v18, "%@ cancelled", buf, 0xCu);
      }

      v6 = -1;
    }

    else
    {
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v9))
      {
        *buf = 138412546;
        selfCopy = objc_opt_class();
        v30 = 2112;
        v31 = errorCopy;
        v10 = selfCopy;
        _os_log_impl(&dword_24A0AC000, currentlyParsingItem, v9, "%@ failed: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
    taskManager = [(ASTask *)self taskManager];
    protocol = [taskManager protocol];
    sendEmailInWBXML = [protocol sendEmailInWBXML];

    if (sendEmailInWBXML)
    {
      if (currentlyParsingItem && [currentlyParsingItem parsingState]!= 2)
      {
        v6 = 1;
        status = DALoggingwithCategory();
        v24 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(status, v24))
        {
          *buf = 138412546;
          selfCopy = self;
          v30 = 2112;
          v31 = currentlyParsingItem;
          _os_log_impl(&dword_24A0AC000, status, v24, "%@ failed to parse server response %@.", buf, 0x16u);
          v6 = 1;
        }
      }

      else
      {
        v14 = DALoggingwithCategory();
        v15 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v14, v15))
        {
          *buf = 138412546;
          selfCopy = objc_opt_class();
          v30 = 2112;
          v31 = currentlyParsingItem;
          v16 = selfCopy;
          _os_log_impl(&dword_24A0AC000, v14, v15, "%@ Parsed response of %@", buf, 0x16u);
        }

        status = [currentlyParsingItem status];
        v6 = [(ASSendMailTask *)self taskStatusForExchangeStatus:[status intValue]];
      }
    }

    else
    {
      status = DALoggingwithCategory();
      v20 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(status, v20))
      {
        *buf = 138412546;
        selfCopy = objc_opt_class();
        v30 = 2112;
        v31 = currentlyParsingItem;
        v21 = selfCopy;
        _os_log_impl(&dword_24A0AC000, status, v20, "%@ Parsed response of %@", buf, 0x16u);
      }

      v6 = 2;
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __34__ASSendMailTask_finishWithError___block_invoke;
  v25[3] = &unk_278FC7B68;
  v26 = errorCopy;
  v27 = v6;
  v25[4] = self;
  v22 = errorCopy;
  [(ASTask *)self finishWithError:v22 afterDelegateCallout:v25];

  v23 = *MEMORY[0x277D85DE8];
}

void __34__ASSendMailTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained sendMailTask:a1[4] completedWithStatus:a1[6] error:a1[5]];
}

- (id)requestBodyStreamOutKnownSize:(int *)size
{
  taskManager = [(ASTask *)self taskManager];
  protocol = [taskManager protocol];

  if ([protocol sendEmailInWBXML])
  {
    v7 = objc_opt_new();
    [v7 switchToCodePage:21];
    [v7 openTag:5];
    [v7 appendTag:17 withStringContent:self->_messageID];
    [v7 appendEmptyTag:8];
    v8 = [v7 dataExpectCompleteData:0];
    v17 = 80;
    [v8 appendBytes:&v17 length:1];
    v17 = -61;
    [v8 appendBytes:&v17 length:1];
    v9 = strstrcnt([(NSData *)self->_mimeMessage bytes], [(NSData *)self->_mimeMessage length], "\n");
    v10 = strstrcnt([(NSData *)self->_mimeMessage bytes], [(NSData *)self->_mimeMessage length], "\r\n");
    v11 = v9 - v10 + [(NSData *)self->_mimeMessage length];
    v12 = [objc_alloc(MEMORY[0x277CBEA90]) initForLengthTokenOfLength:v11];
    [v8 appendData:v12];
    v17 = 1;
    v13 = objc_opt_new();
    [v13 appendBytes:&v17 length:1];
    [v13 appendBytes:&v17 length:1];
    if (size)
    {
      v14 = [v8 length];
      *size = v11 + [v13 length] + v14;
    }

    v15 = [[DAConvertCRtoCRLFStream alloc] initWithMIMEData:self->_mimeMessage preflightData:v8 postflightData:v13 intendToStream:1];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)requestBody
{
  taskManager = [(ASTask *)self taskManager];
  protocol = [taskManager protocol];

  if ([protocol sendEmailInWBXML])
  {
    [(ASSendMailTask *)a2 requestBody];
  }

  v6 = [DAConvertCRtoCRLFStream inputStreamWithData:self->_mimeMessage];
  data = [MEMORY[0x277CBEB28] data];
  v8 = malloc_good_size(0x1000uLL);
  v9 = malloc_type_malloc(v8, 0x403C4279uLL);
  do
  {
    if (![v6 hasBytesAvailable])
    {
      break;
    }

    v10 = [v6 read:v9 maxLength:v8];
    [data appendBytes:v9 length:v10];
  }

  while (v10);
  free(v9);

  return data;
}

- (id)parameterData
{
  v5 = 1;
  v4 = 263;
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:3];

  return v2;
}

- (id)command
{
  taskManager = [(ASTask *)self taskManager];
  protocol = [taskManager protocol];

  v4 = @"SendMail";
  if (([protocol sendEmailInWBXML] & 1) == 0 && objc_msgSend(protocol, "commandStringNeedsSaveInSent"))
  {
    v4 = @"SendMail&SaveInSent=T";
  }

  return v4;
}

- (id)contentType
{
  taskManager = [(ASTask *)self taskManager];
  protocol = [taskManager protocol];

  if ([protocol sendEmailInWBXML])
  {
    v4 = @"application/vnd.ms-sync.wbxml";
  }

  else
  {
    v4 = @"message/rfc822";
  }

  return v4;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 21;
  *token = 5;
  *statusToken = 18;
  return 1;
}

- (BOOL)processContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (!currentlyParsingItem)
  {
    if (!self->super._haveSwitchedCodePage)
    {
      if (![contextCopy hasNumberOfTokensRemaining:2])
      {
        goto LABEL_17;
      }

      if ([contextCopy currentByte])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to compose mail code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASSendMailTask.m", 178, objc_msgSend(contextCopy, "curOffset")];
        v13 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v13, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v11;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      if ([contextCopy currentByte] != 21)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to compose mail code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASSendMailTask.m", 178, objc_msgSend(contextCopy, "curOffset")];
        v18 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v14))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v18, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v11;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      [contextCopy setCodePage:21];
      self->super._haveSwitchedCodePage = 1;
    }

    if (self->super._haveParsedCommand)
    {
LABEL_7:
      v10 = objc_opt_new();
      [(ASTask *)self setCurrentlyParsingItem:v10];

      goto LABEL_2;
    }

    if (![contextCopy hasNumberOfTokensRemaining:1])
    {
      goto LABEL_17;
    }

    if (([contextCopy currentByte] & 0x3F) == 5)
    {
      self->super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected send mail response"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASSendMailTask.m", 179, objc_msgSend(contextCopy, "curOffset")];
    v17 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, v14))
    {
      *buf = 134217984;
      curOffset = [contextCopy curOffset];
      _os_log_impl(&dword_24A0AC000, v17, v14, "Failure at index %lld:", buf, 0xCu);
    }

    v15 = DALoggingwithCategory();
    if (!os_log_type_enabled(v15, v14))
    {
LABEL_29:

      [contextCopy setParseErrorReason:v12];
LABEL_30:
      parseErrorReason = [contextCopy parseErrorReason];
      v16 = parseErrorReason == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    curOffset = v11;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v15, v14, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];
  [currentlyParsingItem2 parseASParseContext:contextCopy root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:account];

  currentlyParsingItem = self->super._currentlyParsingItem;
  if (currentlyParsingItem && [(ASItem *)currentlyParsingItem parsingState]>= 2)
  {
    goto LABEL_30;
  }

LABEL_17:
  v16 = 0;
LABEL_31:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)requestBody
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ASSendMailTask.m" lineNumber:131 description:{@"We should never be asked for a request body for a wbxml email task (we should be streaming). self is %@", a2}];
}

@end