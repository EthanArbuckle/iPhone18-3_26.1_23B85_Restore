@interface ASItemOperationsTask
- (ASItemOperationsTask)init;
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)processContext:(id)context;
- (id)replacementObjectForEmailItem:(id)item;
- (id)requestBody;
- (int)_mimeSupportCode;
- (int)bodyType;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)finishWithError:(id)error;
- (void)requestBody;
- (void)setCommands:(id)commands;
- (void)setStreamingMailMessage:(id)message;
@end

@implementation ASItemOperationsTask

- (ASItemOperationsTask)init
{
  v3.receiver = self;
  v3.super_class = ASItemOperationsTask;
  result = [(ASTask *)&v3 init];
  if (result)
  {
    result->_bodyTruncationBytes = -1;
    result->_mimeSupport = -1;
  }

  return result;
}

- (int)bodyType
{
  if (self->_mimeSupport)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (void)setCommands:(id)commands
{
  commandsCopy = commands;
  if (self->_commands != commandsCopy)
  {
    v6 = commandsCopy;
    objc_storeStrong(&self->_commands, commands);
    commandsCopy = v6;
  }
}

- (int)_mimeSupportCode
{
  mimeSupport = self->_mimeSupport;
  if ((mimeSupport + 1) < 4)
  {
    return dword_24A14DC90[(mimeSupport + 1)];
  }

  NSLog(&cfstr_UnexpectedMime.isa, a2, mimeSupport);
  return 2;
}

- (id)requestBody
{
  v29 = *MEMORY[0x277D85DE8];
  taskManager = [(ASTask *)self taskManager];
  protocol = [taskManager protocol];

  if (([protocol supportsItemOperationsCommand] & 1) == 0)
  {
    [(ASItemOperationsTask *)a2 requestBody];
  }

  v23 = protocol;
  v6 = objc_opt_new();
  [v6 switchToCodePage:20];
  [v6 openTag:5];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_commands;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        [v6 switchToCodePage:20];
        [v6 openTag:6];
        [v6 appendTag:7 withStringContent:@"Mailbox"];
        collectionID = [v12 collectionID];
        if (collectionID && (v14 = collectionID, [v12 serverID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
        {
          [v6 switchToCodePage:0];
          collectionID2 = [v12 collectionID];
          [v6 appendTag:18 withStringContent:collectionID2];

          serverID = [v12 serverID];
          v18 = v6;
          v19 = 13;
        }

        else
        {
          [v6 switchToCodePage:15];
          serverID = [v12 longID];
          v18 = v6;
          v19 = 24;
        }

        [v18 appendTag:v19 withStringContent:serverID];

        [v6 switchToCodePage:20];
        [v6 openProspectiveTag:8];
        [v6 switchToCodePage:0];
        if ([(ASItemOperationsTask *)self mimeSupport]!= -1)
        {
          [v6 appendTag:34 withIntContent:{-[ASItemOperationsTask _mimeSupportCode](self, "_mimeSupportCode")}];
        }

        [v6 switchToCodePage:17];
        [v6 openTag:5];
        [v6 appendTag:6 withIntContent:{-[ASItemOperationsTask bodyType](self, "bodyType")}];
        if (self->_bodyTruncationBytes != -1)
        {
          [v6 appendTag:7 withIntContent:?];
        }

        [v6 closeTag:5];
        [v6 closeProspectiveTag:8];
        [v6 closeTag:6];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  [v6 closeTag:5];
  data = [v6 data];

  v21 = *MEMORY[0x277D85DE8];

  return data;
}

- (id)replacementObjectForEmailItem:(id)item
{
  v11[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v11[0] = itemCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [WeakRetained itemOperationsTask:self hasPartialResponses:v6];

  v8 = itemCopy;
  if (v7)
  {

    v8 = 0;
    ++self->_numReplacedItems;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 20;
  *token = 5;
  *statusToken = 13;
  return 1;
}

- (BOOL)processContext:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (currentlyParsingItem)
  {
    goto LABEL_4;
  }

  if (self->super._haveSwitchedCodePage)
  {
LABEL_3:
    v6 = objc_opt_new();
    [(ASTask *)self setCurrentlyParsingItem:v6];
    self->_numReplacedItems = 0;

LABEL_4:
    currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];

    if (!currentlyParsingItem2)
    {
      goto LABEL_16;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __39__ASItemOperationsTask_processContext___block_invoke;
    v32[3] = &unk_278FC7D20;
    v32[4] = self;
    v8 = MEMORY[0x24C2119B0](v32);
    v35 = @"ASItemOperationsResponse.ASArray.ASItemOperationsFetchResult";
    v9 = MEMORY[0x24C2119B0]();
    v36 = v9;
    v10 = 1;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __39__ASItemOperationsTask_processContext___block_invoke_2;
    v31[3] = &unk_278FC7D98;
    v31[4] = self;
    v12 = MEMORY[0x24C2119B0](v31);
    69899 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASItemOperationsResponse.ASArray.ASItemOperationsFetchResult.ASDictionary.ASDictionary.%d", 69899];
    v33 = 69899;
    v14 = MEMORY[0x24C2119B0](v12);
    v34 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    currentlyParsingItem3 = [(ASTask *)self currentlyParsingItem];
    taskManager = [(ASTask *)self taskManager];
    account = [taskManager account];
    [currentlyParsingItem3 parseASParseContext:contextCopy root:0 parent:0 callbackDict:v11 streamCallbackDict:v15 account:account];

    currentlyParsingItem = self->super._currentlyParsingItem;
    if (currentlyParsingItem)
    {
      parsingState = [(ASItem *)currentlyParsingItem parsingState];
      if (parsingState > 4)
      {
        v10 = 0;
      }

      else
      {
        v10 = dword_24A14DCA0[parsingState];
      }
    }

    if ((v10 | 2) == 2)
    {
      goto LABEL_16;
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  if (![contextCopy hasNumberOfTokensRemaining:2])
  {
    goto LABEL_17;
  }

  if ([contextCopy currentByte])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to item operations code page"];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASItemOperationsTask.m", 190, objc_msgSend(contextCopy, "curOffset")];
    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v23, v24))
    {
      *buf = 134217984;
      curOffset = [contextCopy curOffset];
      _os_log_impl(&dword_24A0AC000, v23, v24, "Failure at index %lld:", buf, 0xCu);
    }

    v25 = DALoggingwithCategory();
    if (!os_log_type_enabled(v25, v24))
    {
      goto LABEL_26;
    }

    *buf = 138412290;
    curOffset = v21;
    goto LABEL_25;
  }

  [contextCopy advanceOffsetByAmount:1];
  if ([contextCopy currentByte] == 20)
  {
    [contextCopy advanceOffsetByAmount:1];
    [contextCopy setCodePage:20];
    self->super._haveSwitchedCodePage = 1;
    goto LABEL_3;
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to item operations code page"];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASItemOperationsTask.m", 190, objc_msgSend(contextCopy, "curOffset")];
  v30 = DALoggingwithCategory();
  v24 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v30, v24))
  {
    *buf = 134217984;
    curOffset = [contextCopy curOffset];
    _os_log_impl(&dword_24A0AC000, v30, v24, "Failure at index %lld:", buf, 0xCu);
  }

  v25 = DALoggingwithCategory();
  if (os_log_type_enabled(v25, v24))
  {
    *buf = 138412290;
    curOffset = v21;
LABEL_25:
    _os_log_impl(&dword_24A0AC000, v25, v24, "failure reason was %@", buf, 0xCu);
  }

LABEL_26:

  [contextCopy setParseErrorReason:v22];
LABEL_16:
  parseErrorReason = [contextCopy parseErrorReason];
  v27 = parseErrorReason == 0;

LABEL_18:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)finishWithError:(id)error
{
  v38 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [(ASTask *)self taskStatusForError:errorCopy];
  if (!errorCopy)
  {
    currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
    v8 = currentlyParsingItem;
    if (currentlyParsingItem && [currentlyParsingItem parsingState]== 2)
    {
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = objc_opt_class();
        numReplacedItems = self->_numReplacedItems;
        *buf = 138412802;
        v33 = v14;
        v34 = 2112;
        v35 = v8;
        v36 = 1024;
        v37 = numReplacedItems;
        v16 = v14;
        _os_log_impl(&dword_24A0AC000, v12, v13, "%@ Parsed response of %@ (%d items downloaded and replaced while parsing)", buf, 0x1Cu);
      }

      status = [v8 status];
      v6 = -[ASItemOperationsTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [status intValue]);

      if (v6 == 2)
      {
        fetchResponses = [v8 fetchResponses];
        goto LABEL_19;
      }
    }

    else
    {
      v6 = 1;
    }

    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 134217984;
      v33 = v6;
      _os_log_impl(&dword_24A0AC000, v19, v20, "ASItemOperationsTask failed with status: %ld", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v6 = v5;
  v7 = DALoggingwithCategory();
  v8 = v7;
  if (v6 != -1)
  {
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v9))
    {
      *buf = 138412546;
      v33 = objc_opt_class();
      v34 = 2112;
      v35 = errorCopy;
      v10 = v33;
      _os_log_impl(&dword_24A0AC000, v8, v9, "%@ failed: %@", buf, 0x16u);
    }

LABEL_15:
    fetchResponses = 0;
    goto LABEL_19;
  }

  v21 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v21))
  {
    *buf = 138412290;
    v33 = objc_opt_class();
    v22 = v33;
    _os_log_impl(&dword_24A0AC000, v8, v21, "%@ cancelled", buf, 0xCu);
  }

  fetchResponses = 0;
  v6 = -1;
LABEL_19:

  if (![(ASTask *)self attemptRetryWithStatus:v6 error:errorCopy])
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __40__ASItemOperationsTask_finishWithError___block_invoke;
    v27 = &unk_278FC7D70;
    selfCopy = self;
    v31 = v6;
    v29 = errorCopy;
    v30 = fetchResponses;
    [(ASTask *)self finishWithError:v29 afterDelegateCallout:&v24];
  }

  [(ASTask *)self setCurrentlyParsingItem:0, v24, v25, v26, v27, selfCopy];

  v23 = *MEMORY[0x277D85DE8];
}

void __40__ASItemOperationsTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained itemOperationsTask:a1[4] completedWithStatus:a1[7] error:a1[5] responses:a1[6]];
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  v14 = *MEMORY[0x277D85DE8];
  if (status >= 0x12)
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

  else
  {
    result = qword_24A14DCB8[status];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setStreamingMailMessage:(id)message
{
  messageCopy = message;
  if (self->_streamingMailMessage != messageCopy)
  {
    v6 = messageCopy;
    objc_storeStrong(&self->_streamingMailMessage, message);
    messageCopy = v6;
  }
}

- (void)requestBody
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ASItemOperationsTask.m" lineNumber:82 description:{@"We were asked to fetch an email with ItemOperations, but our protocol %@ doesn't support that", a3}];
}

@end