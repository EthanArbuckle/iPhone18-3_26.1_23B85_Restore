@interface ASFolderSyncTask
- (ASFolderSyncTask)initWithPreviousSyncKey:(id)key;
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)processContext:(id)context;
- (id)requestBody;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)_setSpinning:(BOOL)spinning;
- (void)dealloc;
- (void)finishWithError:(id)error;
@end

@implementation ASFolderSyncTask

- (ASFolderSyncTask)initWithPreviousSyncKey:(id)key
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = ASFolderSyncTask;
  v5 = [(ASTask *)&v12 init];
  if (v5)
  {
    v6 = [keyCopy copy];
    previousSyncKey = v5->_previousSyncKey;
    v5->_previousSyncKey = v6;

    if (!keyCopy || [keyCopy isEqualToString:@"0"])
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138412290;
        v14 = keyCopy;
        _os_log_impl(&dword_24A0AC000, v8, v9, "Folder hierarchy sync task created with sync key %@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_setSpinning:(BOOL)spinning
{
  spinningCopy = spinning;
  v28 = *MEMORY[0x277D85DE8];
  if (!spinning || !self->_isSpinning)
  {
    dataclasses = self->_dataclasses;
    v6 = appBundleIDsForDADataclasses();
    self->_isSpinning = spinningCopy;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v6;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      v10 = *(MEMORY[0x277D03988] + 6);
      if (spinningCopy)
      {
        v11 = @"ON";
      }

      else
      {
        v11 = @"OFF";
      }

      v12 = *(MEMORY[0x277D03988] + 7);
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = DALoggingwithCategory();
          if (os_log_type_enabled(v15, v10))
          {
            *buf = 138412546;
            v24 = v11;
            v25 = 2112;
            v26 = v14;
            _os_log_impl(&dword_24A0AC000, v15, v10, "Telling springboard to set the spinner to %@ for identifier %@", buf, 0x16u);
          }

          SBSSetStatusBarShowsActivityForApplication();
          v16 = DALoggingwithCategory();
          if (os_log_type_enabled(v16, v12))
          {
            *buf = 138412546;
            v24 = v11;
            v25 = 2112;
            v26 = v14;
            _os_log_impl(&dword_24A0AC000, v16, v12, "Finished telling springboard to set the spinner to %@ for identifier %@", buf, 0x16u);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v8);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)requestBody
{
  v16 = *MEMORY[0x277D85DE8];
  [(ASFolderSyncTask *)self _setSpinning:1];
  v3 = objc_opt_new();
  v4 = self->_previousSyncKey;
  v5 = v4;
  if (!v4 || [(NSString *)v4 isEqualToString:@"0"])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      v12 = 134218242;
      selfCopy = self;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_24A0AC000, v6, v7, "Folder hierarchy sync task %p using sync key %{public}@", &v12, 0x16u);
    }
  }

  [v3 switchToCodePage:7];
  [v3 openTag:22];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = @"0";
  }

  [v3 appendTag:18 withStringContent:v8];
  [v3 closeTag:22];
  data = [v3 data];

  v10 = *MEMORY[0x277D85DE8];

  return data;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 7;
  *token = 22;
  *statusToken = 12;
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
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to folder hierarchy code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderSyncTask.m", 89, objc_msgSend(contextCopy, "curOffset")];
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
      if ([contextCopy currentByte] != 7)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to folder hierarchy code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderSyncTask.m", 89, objc_msgSend(contextCopy, "curOffset")];
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
      [contextCopy setCodePage:7];
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

    if (([contextCopy currentByte] & 0x3F) == 0x16)
    {
      self->super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected folder sync response"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASFolderSyncTask.m", 90, objc_msgSend(contextCopy, "curOffset")];
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

- (void)finishWithError:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (self->_isSpinning)
  {
    [(ASFolderSyncTask *)self _setSpinning:0];
  }

  v5 = [(ASTask *)self taskStatusForError:errorCopy];
  if (errorCopy)
  {
    v6 = v5;
    v7 = DALoggingwithCategory();
    v8 = v7;
    if (v6 == -1)
    {
      v20 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v20))
      {
        *buf = 138412290;
        selfCopy = objc_opt_class();
        v21 = selfCopy;
        _os_log_impl(&dword_24A0AC000, v8, v20, "%@ cancelled", buf, 0xCu);
      }

      syncKey = 0;
      updatedFolders = 0;
      v6 = -1;
    }

    else
    {
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v9))
      {
        *buf = 138412546;
        selfCopy = objc_opt_class();
        v33 = 2112;
        v34 = errorCopy;
        v10 = selfCopy;
        _os_log_impl(&dword_24A0AC000, v8, v9, "%@ failed: %@", buf, 0x16u);
      }

      syncKey = 0;
      updatedFolders = 0;
    }
  }

  else
  {
    currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
    v8 = currentlyParsingItem;
    if (currentlyParsingItem && [currentlyParsingItem parsingState]== 2)
    {
      v14 = DALoggingwithCategory();
      v15 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v14, v15))
      {
        *buf = 138412546;
        selfCopy = objc_opt_class();
        v33 = 2112;
        v34 = v8;
        v16 = selfCopy;
        _os_log_impl(&dword_24A0AC000, v14, v15, "%@ Parsed response of %@", buf, 0x16u);
      }

      status = [v8 status];
      v6 = -[ASFolderSyncTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [status intValue]);

      updatedFolders = [v8 updatedFolders];
      syncKey = [v8 syncKey];
    }

    else
    {
      v18 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_24A0AC000, v18, v19, "%@ Parse error: no changed store!", buf, 0xCu);
      }

      syncKey = 0;
      updatedFolders = 0;
      v6 = 1;
    }
  }

  if (![(ASTask *)self attemptRetryWithStatus:v6 error:errorCopy])
  {
    v22 = [updatedFolders count];
    self->_numDownloadedElements = v22;
    if (v6 == 2 && self->_requireChangedFolders)
    {
      if (v22)
      {
        v6 = 2;
      }

      else
      {
        v23 = DALoggingwithCategory();
        v24 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v23, v24))
        {
          *buf = 0;
          _os_log_impl(&dword_24A0AC000, v23, v24, "We required a changed folder, but received none.  Calling this an invalid sync key", buf, 2u);
        }

        v6 = 8;
      }
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __36__ASFolderSyncTask_finishWithError___block_invoke;
    v26[3] = &unk_278FC8028;
    v26[4] = self;
    v30 = v6;
    v27 = errorCopy;
    v28 = updatedFolders;
    v29 = syncKey;
    [(ASTask *)self finishWithError:v27 afterDelegateCallout:v26];
  }

  [(ASTask *)self setCurrentlyParsingItem:0];

  v25 = *MEMORY[0x277D85DE8];
}

void __36__ASFolderSyncTask_finishWithError___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained folderSyncTask:a1[4] completedWithStatus:a1[8] error:a1[5] foldersChanged:a1[6] newSyncKey:a1[7]];
}

- (void)dealloc
{
  if (self->_isSpinning)
  {
    [(ASFolderSyncTask *)self _setSpinning:0];
  }

  v3.receiver = self;
  v3.super_class = ASFolderSyncTask;
  [(ASTask *)&v3 dealloc];
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  v14 = *MEMORY[0x277D85DE8];
  if (status < 0xD && ((0x1FC3u >> status) & 1) != 0)
  {
    result = qword_24A14DF88[status];
  }

  else
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

@end