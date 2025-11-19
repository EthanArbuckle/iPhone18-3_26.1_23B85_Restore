@interface ASItemOperationsTask
- (ASItemOperationsTask)init;
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)processContext:(id)a3;
- (id)replacementObjectForEmailItem:(id)a3;
- (id)requestBody;
- (int)_mimeSupportCode;
- (int)bodyType;
- (int64_t)taskStatusForExchangeStatus:(int)a3;
- (void)finishWithError:(id)a3;
- (void)requestBody;
- (void)setCommands:(id)a3;
- (void)setStreamingMailMessage:(id)a3;
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

- (void)setCommands:(id)a3
{
  v5 = a3;
  if (self->_commands != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_commands, a3);
    v5 = v6;
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
  v4 = [(ASTask *)self taskManager];
  v5 = [v4 protocol];

  if (([v5 supportsItemOperationsCommand] & 1) == 0)
  {
    [(ASItemOperationsTask *)a2 requestBody];
  }

  v23 = v5;
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
        v13 = [v12 collectionID];
        if (v13 && (v14 = v13, [v12 serverID], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
        {
          [v6 switchToCodePage:0];
          v16 = [v12 collectionID];
          [v6 appendTag:18 withStringContent:v16];

          v17 = [v12 serverID];
          v18 = v6;
          v19 = 13;
        }

        else
        {
          [v6 switchToCodePage:15];
          v17 = [v12 longID];
          v18 = v6;
          v19 = 24;
        }

        [v18 appendTag:v19 withStringContent:v17];

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
  v20 = [v6 data];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)replacementObjectForEmailItem:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [WeakRetained itemOperationsTask:self hasPartialResponses:v6];

  v8 = v4;
  if (v7)
  {

    v8 = 0;
    ++self->_numReplacedItems;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  *a4 = 20;
  *a3 = 5;
  *a5 = 13;
  return 1;
}

- (BOOL)processContext:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self currentlyParsingItem];

  if (v5)
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
    v7 = [(ASTask *)self currentlyParsingItem];

    if (!v7)
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
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASItemOperationsResponse.ASArray.ASItemOperationsFetchResult.ASDictionary.ASDictionary.%d", 69899];
    v33 = v13;
    v14 = MEMORY[0x24C2119B0](v12);
    v34 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v16 = [(ASTask *)self currentlyParsingItem];
    v17 = [(ASTask *)self taskManager];
    v18 = [v17 account];
    [v16 parseASParseContext:v4 root:0 parent:0 callbackDict:v11 streamCallbackDict:v15 account:v18];

    currentlyParsingItem = self->super._currentlyParsingItem;
    if (currentlyParsingItem)
    {
      v20 = [(ASItem *)currentlyParsingItem parsingState];
      if (v20 > 4)
      {
        v10 = 0;
      }

      else
      {
        v10 = dword_24A14DCA0[v20];
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

  if (![v4 hasNumberOfTokensRemaining:2])
  {
    goto LABEL_17;
  }

  if ([v4 currentByte])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to item operations code page"];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASItemOperationsTask.m", 190, objc_msgSend(v4, "curOffset")];
    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v23, v24))
    {
      *buf = 134217984;
      v38 = [v4 curOffset];
      _os_log_impl(&dword_24A0AC000, v23, v24, "Failure at index %lld:", buf, 0xCu);
    }

    v25 = DALoggingwithCategory();
    if (!os_log_type_enabled(v25, v24))
    {
      goto LABEL_26;
    }

    *buf = 138412290;
    v38 = v21;
    goto LABEL_25;
  }

  [v4 advanceOffsetByAmount:1];
  if ([v4 currentByte] == 20)
  {
    [v4 advanceOffsetByAmount:1];
    [v4 setCodePage:20];
    self->super._haveSwitchedCodePage = 1;
    goto LABEL_3;
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to item operations code page"];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASItemOperationsTask.m", 190, objc_msgSend(v4, "curOffset")];
  v30 = DALoggingwithCategory();
  v24 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v30, v24))
  {
    *buf = 134217984;
    v38 = [v4 curOffset];
    _os_log_impl(&dword_24A0AC000, v30, v24, "Failure at index %lld:", buf, 0xCu);
  }

  v25 = DALoggingwithCategory();
  if (os_log_type_enabled(v25, v24))
  {
    *buf = 138412290;
    v38 = v21;
LABEL_25:
    _os_log_impl(&dword_24A0AC000, v25, v24, "failure reason was %@", buf, 0xCu);
  }

LABEL_26:

  [v4 setParseErrorReason:v22];
LABEL_16:
  v26 = [v4 parseErrorReason];
  v27 = v26 == 0;

LABEL_18:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)finishWithError:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self taskStatusForError:v4];
  if (!v4)
  {
    v11 = [(ASTask *)self currentlyParsingItem];
    v8 = v11;
    if (v11 && [v11 parsingState]== 2)
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

      v17 = [v8 status];
      v6 = -[ASItemOperationsTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [v17 intValue]);

      if (v6 == 2)
      {
        v18 = [v8 fetchResponses];
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
      v35 = v4;
      v10 = v33;
      _os_log_impl(&dword_24A0AC000, v8, v9, "%@ failed: %@", buf, 0x16u);
    }

LABEL_15:
    v18 = 0;
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

  v18 = 0;
  v6 = -1;
LABEL_19:

  if (![(ASTask *)self attemptRetryWithStatus:v6 error:v4])
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __40__ASItemOperationsTask_finishWithError___block_invoke;
    v27 = &unk_278FC7D70;
    v28 = self;
    v31 = v6;
    v29 = v4;
    v30 = v18;
    [(ASTask *)self finishWithError:v29 afterDelegateCallout:&v24];
  }

  [(ASTask *)self setCurrentlyParsingItem:0, v24, v25, v26, v27, v28];

  v23 = *MEMORY[0x277D85DE8];
}

void __40__ASItemOperationsTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained itemOperationsTask:a1[4] completedWithStatus:a1[7] error:a1[5] responses:a1[6]];
}

- (int64_t)taskStatusForExchangeStatus:(int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 >= 0x12)
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

  else
  {
    result = qword_24A14DCB8[a3];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setStreamingMailMessage:(id)a3
{
  v5 = a3;
  if (self->_streamingMailMessage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_streamingMailMessage, a3);
    v5 = v6;
  }
}

- (void)requestBody
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ASItemOperationsTask.m" lineNumber:82 description:{@"We were asked to fetch an email with ItemOperations, but our protocol %@ doesn't support that", a3}];
}

@end