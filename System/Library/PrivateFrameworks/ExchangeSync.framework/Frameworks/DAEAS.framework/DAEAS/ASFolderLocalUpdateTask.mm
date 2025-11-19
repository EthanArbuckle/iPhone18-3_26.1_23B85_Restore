@interface ASFolderLocalUpdateTask
+ (id)taskWithFolder:(id)a3 previousSyncKey:(id)a4 completionBlock:(id)a5;
- (ASFolderLocalUpdateTask)initWithFolder:(id)a3 previousSyncKey:(id)a4 completionBlock:(id)a5;
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)processContext:(id)a3;
- (id)requestBody;
- (void)_appendRequestBodyFolderDataToWBXMLData:(id)a3;
- (void)finishWithError:(id)a3;
@end

@implementation ASFolderLocalUpdateTask

- (ASFolderLocalUpdateTask)initWithFolder:(id)a3 previousSyncKey:(id)a4 completionBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ASFolderLocalUpdateTask;
  v12 = [(ASTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_folder, a3);
    objc_storeStrong(&v13->_previousSyncKey, a4);
    v14 = MEMORY[0x24C2119B0](v11);
    completionBlock = v13->_completionBlock;
    v13->_completionBlock = v14;
  }

  return v13;
}

+ (id)taskWithFolder:(id)a3 previousSyncKey:(id)a4 completionBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 changeType];
  switch(v12)
  {
    case 2:
      v13 = ASFolderDeleteTask;
      goto LABEL_7;
    case 1:
      v13 = ASFolderModifyTask;
      goto LABEL_7;
    case 0:
      v13 = ASFolderCreateTask;
LABEL_7:
      v14 = [[v13 alloc] initWithFolder:v9 previousSyncKey:v10 completionBlock:v11];
      goto LABEL_9;
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"ASFolderLocalUpdateTask.m" lineNumber:64 description:{@"We were asked to send a local folder change for folder %@, which has a nonsensical changeType %ld", v9, objc_msgSend(v9, "changeType")}];

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)_appendRequestBodyFolderDataToWBXMLData:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASFolderLocalUpdateTask.m" lineNumber:75 description:{@"Must be called on subclass: %s", sel_getName(a2)}];
}

- (id)requestBody
{
  v3 = objc_opt_new();
  v4 = self->_previousSyncKey;
  [v3 switchToCodePage:7];
  [v3 openTag:LOBYTE(self->_requestType)];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"0";
  }

  [v3 appendTag:18 withStringContent:v5];

  [(ASFolderLocalUpdateTask *)self _appendRequestBodyFolderDataToWBXMLData:v3];
  [v3 closeTag:LOBYTE(self->_requestType)];
  v6 = [v3 data];

  return v6;
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  *a4 = 7;
  *a3 = self->_requestType;
  *a5 = 12;
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
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to folder hierarchy code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderLocalUpdateTask.m", 102, objc_msgSend(v4, "curOffset")];
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
      if ([v4 currentByte] != 7)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to folder hierarchy code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderLocalUpdateTask.m", 102, objc_msgSend(v4, "curOffset")];
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
      [v4 setCodePage:7];
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

    if (self->_requestType == ([v4 currentByte] & 0x3F))
    {
      self->super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected folder response to request type %d", self->_requestType];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderLocalUpdateTask.m", 103, objc_msgSend(v4, "curOffset")];
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

- (void)finishWithError:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self taskStatusForError:v4];
  if (v4)
  {
    v6 = v5;
    v7 = DALoggingwithCategory();
    v8 = v7;
    if (v6 == -1)
    {
      v21 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v21))
      {
        *buf = 138412290;
        v33 = objc_opt_class();
        v22 = v33;
        _os_log_impl(&dword_24A0AC000, v8, v21, "%@ cancelled", buf, 0xCu);
      }

      v11 = 0;
      v6 = -1;
    }

    else
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

      v11 = 0;
    }
  }

  else
  {
    v12 = [(ASTask *)self currentlyParsingItem];
    v8 = v12;
    if (v12 && [v12 parsingState]== 2)
    {
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 138412546;
        v33 = objc_opt_class();
        v34 = 2112;
        v35 = v8;
        v15 = v33;
        _os_log_impl(&dword_24A0AC000, v13, v14, "%@ Parsed response of %@", buf, 0x16u);
      }

      v16 = [v8 serverId];

      if (v16)
      {
        v17 = [v8 serverId];
        [(ASFolder *)self->_folder setServerID:v17];
      }

      v18 = [v8 status];
      v6 = -[ASTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [v18 intValue]);

      v11 = [v8 syncKey];
    }

    else
    {
      v19 = DALoggingwithCategory();
      v20 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v19, v20))
      {
        *buf = 138412290;
        v33 = self;
        _os_log_impl(&dword_24A0AC000, v19, v20, "%@ Parse error: no changed store", buf, 0xCu);
      }

      v11 = 0;
      v6 = 1;
    }
  }

  if (![(ASTask *)self attemptRetryWithStatus:v6 error:v4])
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __43__ASFolderLocalUpdateTask_finishWithError___block_invoke;
    v27 = &unk_278FC7D70;
    v28 = self;
    v31 = v6;
    v29 = v4;
    v30 = v11;
    [(ASTask *)self finishWithError:v29 afterDelegateCallout:&v24];
  }

  [(ASTask *)self setCurrentlyParsingItem:0, v24, v25, v26, v27, v28];

  v23 = *MEMORY[0x277D85DE8];
}

void __43__ASFolderLocalUpdateTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained folderLocalUpdateTask:a1[4] completedWithStatus:a1[7] error:a1[5] updatedFolder:*(a1[4] + 232) newSyncKey:a1[6] completionBlock:*(a1[4] + 248)];
}

@end