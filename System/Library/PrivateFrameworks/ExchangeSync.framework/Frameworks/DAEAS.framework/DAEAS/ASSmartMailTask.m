@interface ASSmartMailTask
- (ASSmartMailTask)initWithMessage:(id)a3 messageID:(id)a4 messageType:(int)a5 originalMessageID:(id)a6 instanceId:(id)a7 originalFolderID:(id)a8 originalLongID:(id)a9 replaceMime:(BOOL)a10;
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)processContext:(id)a3;
- (id)command;
- (id)parameterData;
- (id)requestBodyStreamOutKnownSize:(int *)a3;
- (int)commandCode;
- (void)handleTopLevelErrorStatus:(id)a3;
@end

@implementation ASSmartMailTask

- (ASSmartMailTask)initWithMessage:(id)a3 messageID:(id)a4 messageType:(int)a5 originalMessageID:(id)a6 instanceId:(id)a7 originalFolderID:(id)a8 originalLongID:(id)a9 replaceMime:(BOOL)a10
{
  v23 = a6;
  v22 = a7;
  v17 = a8;
  v18 = a9;
  v24.receiver = self;
  v24.super_class = ASSmartMailTask;
  v19 = [(ASSendMailTask *)&v24 initWithMessage:a3 messageID:a4];
  v20 = v19;
  if (v19)
  {
    v19->_messageType = a5;
    objc_storeStrong(&v19->_originalMessageId, a6);
    objc_storeStrong(&v20->_instanceId, a7);
    objc_storeStrong(&v20->_originalFolderId, a8);
    objc_storeStrong(&v20->_originalLongId, a9);
    v20->_replaceMime = a10;
  }

  return v20;
}

- (id)requestBodyStreamOutKnownSize:(int *)a3
{
  if (self->_retryWithoutReferences)
  {
    v22.receiver = self;
    v22.super_class = ASSmartMailTask;
    v5 = [(ASSendMailTask *)&v22 requestBodyStreamOutKnownSize:a3];
  }

  else
  {
    v6 = [(ASTask *)self taskManager];
    v7 = [v6 protocol];

    if ([v7 sendEmailInWBXML])
    {
      v8 = objc_opt_new();
      [v8 switchToCodePage:21];
      if (self->_messageType == 1)
      {
        v9 = 7;
      }

      else
      {
        v9 = 6;
      }

      [v8 openTag:v9];
      [v8 appendTag:17 withStringContent:self->super._messageID];
      [v8 appendEmptyTag:8];
      if (self->_replaceMime)
      {
        [v8 appendEmptyTag:9];
      }

      [v8 openTag:11];
      originalLongId = self->_originalLongId;
      if (originalLongId)
      {
        v11 = v8;
        v12 = 14;
      }

      else
      {
        [v8 appendTag:12 withStringContent:self->_originalFolderId];
        [v8 appendTag:13 withStringContent:self->_originalMessageId];
        originalLongId = self->_instanceId;
        v11 = v8;
        v12 = 15;
      }

      [v11 appendTag:v12 withStringContent:originalLongId];
      [v8 closeTag:11];
      v13 = [v8 dataExpectCompleteData:0];
      v21 = 80;
      [v13 appendBytes:&v21 length:1];
      v21 = -61;
      [v13 appendBytes:&v21 length:1];
      v14 = strstrcnt([(NSData *)self->super._mimeMessage bytes], [(NSData *)self->super._mimeMessage length], "\n");
      v15 = strstrcnt([(NSData *)self->super._mimeMessage bytes], [(NSData *)self->super._mimeMessage length], "\r\n");
      v16 = v14 - v15 + [(NSData *)self->super._mimeMessage length];
      v17 = [objc_alloc(MEMORY[0x277CBEA90]) initForLengthTokenOfLength:v16];
      [v13 appendData:v17];
      v21 = 1;
      v18 = objc_opt_new();
      [v18 appendBytes:&v21 length:1];
      [v18 appendBytes:&v21 length:1];
      if (a3)
      {
        v19 = [v13 length];
        *a3 = v16 + [v18 length] + v19;
      }

      v5 = [[DAConvertCRtoCRLFStream alloc] initWithMIMEData:self->super._mimeMessage preflightData:v13 postflightData:v18 intendToStream:1];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (int)commandCode
{
  if (self->_retryWithoutReferences)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = ASSmartMailTask;
    return [(ASSendMailTask *)&v5 commandCode];
  }

  else if (self->_messageType == 1)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)parameterData
{
  if (self->_retryWithoutReferences)
  {
    v6.receiver = self;
    v6.super_class = ASSmartMailTask;
    v2 = [(ASSendMailTask *)&v6 parameterData];
  }

  else
  {
    v5 = 1;
    v4 = 263;
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:3];
  }

  return v2;
}

- (id)command
{
  if (self->_retryWithoutReferences)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = ASSmartMailTask;
    v4 = [(ASSendMailTask *)&v6 command];
  }

  else
  {
    if (self->_messageType == 1)
    {
      v4 = @"SmartReply";
    }

    else
    {
      v4 = @"SmartForward";
    }
  }

  return v4;
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  if (self->_retryWithoutReferences)
  {
    v10 = v5;
    v11 = v6;
    v9.receiver = self;
    v9.super_class = ASSmartMailTask;
    return [(ASSendMailTask *)&v9 getTopLevelToken:a3 outStatusCodePage:a4 outStatusToken:a5];
  }

  else
  {
    *a4 = 21;
    if (self->_messageType == 1)
    {
      v8 = 7;
    }

    else
    {
      v8 = 6;
    }

    *a3 = v8;
    *a5 = 18;
    return 1;
  }
}

- (void)handleTopLevelErrorStatus:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 intValue] == 150 && !-[ASSmartMailTask shouldNotRetry](self, "shouldNotRetry"))
  {
    if (self->_retryWithoutReferences)
    {
      [(ASSmartMailTask *)a2 handleTopLevelErrorStatus:?];
    }

    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 138412290;
      v12 = self;
      _os_log_impl(&dword_24A0AC000, v6, v7, "Our original email has disappeared, resending this email as though it was new. Self = %@", buf, 0xCu);
    }

    self->_retryWithoutReferences = 1;
    [(ASTask *)self tearDownResourcesButLeaveSessionAlone];
    v8 = runLoopModesToPerformDelayedSelectorsIn();
    [(ASSmartMailTask *)self performSelector:sel_performTask withObject:0 afterDelay:v8 inModes:0.0];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ASSmartMailTask;
    [(ASTask *)&v10 handleTopLevelErrorStatus:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)processContext:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_retryWithoutReferences)
  {
    v6 = [(ASTask *)self currentlyParsingItem];

    if (v6)
    {
LABEL_4:
      v7 = [(ASTask *)self currentlyParsingItem];
      v8 = [(ASTask *)self taskManager];
      v9 = [v8 account];
      [v7 parseASParseContext:v4 root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:v9];

      currentlyParsingItem = self->super.super._currentlyParsingItem;
      if (currentlyParsingItem && [(ASItem *)currentlyParsingItem parsingState]>= 2)
      {
        goto LABEL_38;
      }

LABEL_22:
      v5 = 0;
      goto LABEL_39;
    }

    if (!self->super.super._haveSwitchedCodePage)
    {
      if (![v4 hasNumberOfTokensRemaining:2])
      {
        goto LABEL_22;
      }

      if ([v4 currentByte])
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to compose mail code page"];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASSmartMailTask.m", 167, objc_msgSend(v4, "curOffset")];
        v15 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v15, v16))
        {
          *buf = 134217984;
          v26 = [v4 curOffset];
          _os_log_impl(&dword_24A0AC000, v15, v16, "Failure at index %lld:", buf, 0xCu);
        }

        v17 = DALoggingwithCategory();
        if (!os_log_type_enabled(v17, v16))
        {
          goto LABEL_37;
        }

        *buf = 138412290;
        v26 = v13;
        goto LABEL_36;
      }

      [v4 advanceOffsetByAmount:1];
      if ([v4 currentByte] != 21)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to compose mail code page"];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASSmartMailTask.m", 167, objc_msgSend(v4, "curOffset")];
        v20 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v20, v16))
        {
          *buf = 134217984;
          v26 = [v4 curOffset];
          _os_log_impl(&dword_24A0AC000, v20, v16, "Failure at index %lld:", buf, 0xCu);
        }

        v17 = DALoggingwithCategory();
        if (!os_log_type_enabled(v17, v16))
        {
          goto LABEL_37;
        }

        *buf = 138412290;
        v26 = v13;
        goto LABEL_36;
      }

      [v4 advanceOffsetByAmount:1];
      [v4 setCodePage:21];
      self->super.super._haveSwitchedCodePage = 1;
    }

    if (self->_messageType == 1)
    {
      v11 = 7;
    }

    else
    {
      v11 = 6;
    }

    if (self->super.super._haveParsedCommand)
    {
      goto LABEL_12;
    }

    if (![v4 hasNumberOfTokensRemaining:1])
    {
      goto LABEL_22;
    }

    if (v11 == ([v4 currentByte] & 0x3F))
    {
      self->super.super._haveParsedCommand = 1;
LABEL_12:
      v12 = objc_opt_new();
      [(ASTask *)self setCurrentlyParsingItem:v12];

      goto LABEL_4;
    }

    if (self->_messageType == 1)
    {
      v18 = @"smart reply";
    }

    else
    {
      v18 = @"smart forward";
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected %@ response", v18];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASSmartMailTask.m", 174, objc_msgSend(v4, "curOffset")];
    v19 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v16))
    {
      *buf = 134217984;
      v26 = [v4 curOffset];
      _os_log_impl(&dword_24A0AC000, v19, v16, "Failure at index %lld:", buf, 0xCu);
    }

    v17 = DALoggingwithCategory();
    if (!os_log_type_enabled(v17, v16))
    {
LABEL_37:

      [v4 setParseErrorReason:v14];
LABEL_38:
      v21 = [v4 parseErrorReason];
      v5 = v21 == 0;

      goto LABEL_39;
    }

    *buf = 138412290;
    v26 = v13;
LABEL_36:
    _os_log_impl(&dword_24A0AC000, v17, v16, "failure reason was %@", buf, 0xCu);
    goto LABEL_37;
  }

  v24.receiver = self;
  v24.super_class = ASSmartMailTask;
  v5 = [(ASSendMailTask *)&v24 processContext:v4];
LABEL_39:

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)handleTopLevelErrorStatus:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASSmartMailTask.m" lineNumber:153 description:{@"How did we get an item not found error if we replayed ourselves as a send mail task?.  Self = %@", a2}];
}

@end