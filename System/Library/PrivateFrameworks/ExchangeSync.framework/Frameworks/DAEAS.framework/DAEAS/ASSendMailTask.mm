@interface ASSendMailTask
- (ASSendMailTask)initWithMessage:(id)a3 messageID:(id)a4;
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)processContext:(id)a3;
- (id)command;
- (id)contentType;
- (id)parameterData;
- (id)requestBody;
- (id)requestBodyStreamOutKnownSize:(int *)a3;
- (int64_t)taskStatusForExchangeStatus:(int)a3;
- (void)finishWithError:(id)a3;
- (void)requestBody;
@end

@implementation ASSendMailTask

- (ASSendMailTask)initWithMessage:(id)a3 messageID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASSendMailTask;
  v8 = [(ASTask *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    mimeMessage = v8->_mimeMessage;
    v8->_mimeMessage = v9;

    if (v7)
    {
      v11 = [v7 copy];
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] da_newGUID];
    }

    messageID = v8->_messageID;
    v8->_messageID = v11;
  }

  return v8;
}

- (int64_t)taskStatusForExchangeStatus:(int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  result = 2;
  if (a3 >= 2 && a3 != 118)
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
      v13 = a3;
      _os_log_impl(&dword_24A0AC000, v5, v6, "%@: Unknown status code (%d)", &v10, 0x12u);
    }

    result = 10;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)finishWithError:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self taskStatusForError:v4];
  if (v4)
  {
    v6 = v5;
    v7 = DALoggingwithCategory();
    v8 = v7;
    if (v6 == -1)
    {
      v18 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v18))
      {
        *buf = 138412290;
        v29 = objc_opt_class();
        v19 = v29;
        _os_log_impl(&dword_24A0AC000, v8, v18, "%@ cancelled", buf, 0xCu);
      }

      v6 = -1;
    }

    else
    {
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v9))
      {
        *buf = 138412546;
        v29 = objc_opt_class();
        v30 = 2112;
        v31 = v4;
        v10 = v29;
        _os_log_impl(&dword_24A0AC000, v8, v9, "%@ failed: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = [(ASTask *)self currentlyParsingItem];
    v11 = [(ASTask *)self taskManager];
    v12 = [v11 protocol];
    v13 = [v12 sendEmailInWBXML];

    if (v13)
    {
      if (v8 && [v8 parsingState]!= 2)
      {
        v6 = 1;
        v17 = DALoggingwithCategory();
        v24 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v17, v24))
        {
          *buf = 138412546;
          v29 = self;
          v30 = 2112;
          v31 = v8;
          _os_log_impl(&dword_24A0AC000, v17, v24, "%@ failed to parse server response %@.", buf, 0x16u);
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
          v29 = objc_opt_class();
          v30 = 2112;
          v31 = v8;
          v16 = v29;
          _os_log_impl(&dword_24A0AC000, v14, v15, "%@ Parsed response of %@", buf, 0x16u);
        }

        v17 = [v8 status];
        v6 = [(ASSendMailTask *)self taskStatusForExchangeStatus:[v17 intValue]];
      }
    }

    else
    {
      v17 = DALoggingwithCategory();
      v20 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v17, v20))
      {
        *buf = 138412546;
        v29 = objc_opt_class();
        v30 = 2112;
        v31 = v8;
        v21 = v29;
        _os_log_impl(&dword_24A0AC000, v17, v20, "%@ Parsed response of %@", buf, 0x16u);
      }

      v6 = 2;
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __34__ASSendMailTask_finishWithError___block_invoke;
  v25[3] = &unk_278FC7B68;
  v26 = v4;
  v27 = v6;
  v25[4] = self;
  v22 = v4;
  [(ASTask *)self finishWithError:v22 afterDelegateCallout:v25];

  v23 = *MEMORY[0x277D85DE8];
}

void __34__ASSendMailTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained sendMailTask:a1[4] completedWithStatus:a1[6] error:a1[5]];
}

- (id)requestBodyStreamOutKnownSize:(int *)a3
{
  v5 = [(ASTask *)self taskManager];
  v6 = [v5 protocol];

  if ([v6 sendEmailInWBXML])
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
    if (a3)
    {
      v14 = [v8 length];
      *a3 = v11 + [v13 length] + v14;
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
  v4 = [(ASTask *)self taskManager];
  v5 = [v4 protocol];

  if ([v5 sendEmailInWBXML])
  {
    [(ASSendMailTask *)a2 requestBody];
  }

  v6 = [DAConvertCRtoCRLFStream inputStreamWithData:self->_mimeMessage];
  v7 = [MEMORY[0x277CBEB28] data];
  v8 = malloc_good_size(0x1000uLL);
  v9 = malloc_type_malloc(v8, 0x403C4279uLL);
  do
  {
    if (![v6 hasBytesAvailable])
    {
      break;
    }

    v10 = [v6 read:v9 maxLength:v8];
    [v7 appendBytes:v9 length:v10];
  }

  while (v10);
  free(v9);

  return v7;
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
  v2 = [(ASTask *)self taskManager];
  v3 = [v2 protocol];

  v4 = @"SendMail";
  if (([v3 sendEmailInWBXML] & 1) == 0 && objc_msgSend(v3, "commandStringNeedsSaveInSent"))
  {
    v4 = @"SendMail&SaveInSent=T";
  }

  return v4;
}

- (id)contentType
{
  v2 = [(ASTask *)self taskManager];
  v3 = [v2 protocol];

  if ([v3 sendEmailInWBXML])
  {
    v4 = @"application/vnd.ms-sync.wbxml";
  }

  else
  {
    v4 = @"message/rfc822";
  }

  return v4;
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  *a4 = 21;
  *a3 = 5;
  *a5 = 18;
  return 1;
}

- (BOOL)processContext:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self currentlyParsingItem];

  if (!v5)
  {
    if (!self->super._haveSwitchedCodePage)
    {
      if (![v4 hasNumberOfTokensRemaining:2])
      {
        goto LABEL_17;
      }

      if ([v4 currentByte])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to compose mail code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASSendMailTask.m", 178, objc_msgSend(v4, "curOffset")];
        v13 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 134217984;
          v23 = [v4 curOffset];
          _os_log_impl(&dword_24A0AC000, v13, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        v23 = v11;
        goto LABEL_28;
      }

      [v4 advanceOffsetByAmount:1];
      if ([v4 currentByte] != 21)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to compose mail code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASSendMailTask.m", 178, objc_msgSend(v4, "curOffset")];
        v18 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v14))
        {
          *buf = 134217984;
          v23 = [v4 curOffset];
          _os_log_impl(&dword_24A0AC000, v18, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        v23 = v11;
        goto LABEL_28;
      }

      [v4 advanceOffsetByAmount:1];
      [v4 setCodePage:21];
      self->super._haveSwitchedCodePage = 1;
    }

    if (self->super._haveParsedCommand)
    {
LABEL_7:
      v10 = objc_opt_new();
      [(ASTask *)self setCurrentlyParsingItem:v10];

      goto LABEL_2;
    }

    if (![v4 hasNumberOfTokensRemaining:1])
    {
      goto LABEL_17;
    }

    if (([v4 currentByte] & 0x3F) == 5)
    {
      self->super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected send mail response"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASSendMailTask.m", 179, objc_msgSend(v4, "curOffset")];
    v17 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, v14))
    {
      *buf = 134217984;
      v23 = [v4 curOffset];
      _os_log_impl(&dword_24A0AC000, v17, v14, "Failure at index %lld:", buf, 0xCu);
    }

    v15 = DALoggingwithCategory();
    if (!os_log_type_enabled(v15, v14))
    {
LABEL_29:

      [v4 setParseErrorReason:v12];
LABEL_30:
      v19 = [v4 parseErrorReason];
      v16 = v19 == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    v23 = v11;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v15, v14, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  v6 = [(ASTask *)self currentlyParsingItem];
  v7 = [(ASTask *)self taskManager];
  v8 = [v7 account];
  [v6 parseASParseContext:v4 root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:v8];

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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASSendMailTask.m" lineNumber:131 description:{@"We should never be asked for a request body for a wbxml email task (we should be streaming). self is %@", a2}];
}

@end