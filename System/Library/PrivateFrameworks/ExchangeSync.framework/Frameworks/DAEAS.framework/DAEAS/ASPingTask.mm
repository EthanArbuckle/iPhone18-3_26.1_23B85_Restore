@interface ASPingTask
- (ASPingTask)initWithHeartbeat:(int)heartbeat folders:(id)folders oldHeartbeat:(int)oldHeartbeat oldFolders:(id)oldFolders;
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)processContext:(id)context;
- (id)requestBody;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)finishWithError:(id)error;
- (void)loadRequest:(id)request;
- (void)requestCancelTaskWithReason:(int)reason;
@end

@implementation ASPingTask

- (ASPingTask)initWithHeartbeat:(int)heartbeat folders:(id)folders oldHeartbeat:(int)oldHeartbeat oldFolders:(id)oldFolders
{
  foldersCopy = folders;
  oldFoldersCopy = oldFolders;
  v19.receiver = self;
  v19.super_class = ASPingTask;
  v12 = [(ASTask *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_seconds = heartbeat;
    v14 = [foldersCopy copy];
    folders = v13->_folders;
    v13->_folders = v14;

    v13->_oldSeconds = oldHeartbeat;
    v16 = [oldFoldersCopy copy];
    oldFolders = v13->_oldFolders;
    v13->_oldFolders = v16;
  }

  return v13;
}

- (void)loadRequest:(id)request
{
  requestCopy = request;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D03F00], 0, 0, 1u);
  v6.receiver = self;
  v6.super_class = ASPingTask;
  [(ASTask *)&v6 loadRequest:requestCopy];
}

- (id)requestBody
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    seconds = self->_seconds;
    *buf = 134218240;
    selfCopy2 = self;
    v29 = 1024;
    v30 = seconds;
    _os_log_impl(&dword_24A0AC000, v3, v4, "Ping Task %p - hbi is %d", buf, 0x12u);
  }

  v6 = [(NSSet *)self->_oldFolders isEqualToSet:self->_folders];
  oldSeconds = self->_oldSeconds;
  v8 = self->_seconds;
  if (v6 && oldSeconds == v8)
  {
    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v4))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_24A0AC000, v10, v4, "Ping Task %p - same folders and same HBI. Sending empty Ping request.", buf, 0xCu);
    }

    data = 0;
  }

  else
  {
    v10 = objc_opt_new();
    [v10 switchToCodePage:13];
    [v10 openTag:5];
    if (oldSeconds != v8)
    {
      [v10 appendTag:8 withIntContent:self->_seconds];
    }

    [v10 openTag:9];
    allObjects = [(NSSet *)self->_folders allObjects];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(allObjects);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          [v10 openTag:10];
          serverID = [v16 serverID];
          [v10 appendTag:11 withStringContent:serverID];

          v18 = NSStringForDASingleDataclass([v16 dataclass]);
          [v10 appendTag:12 withStringContent:v18];

          [v10 closeTag:10];
        }

        v13 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    [v10 closeTag:9];

    [v10 closeTag:5];
    data = [v10 data];
  }

  v20 = *MEMORY[0x277D85DE8];

  return data;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 13;
  *token = 5;
  *statusToken = 7;
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
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to ping code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASPingTask.m", 116, objc_msgSend(contextCopy, "curOffset")];
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
      if ([contextCopy currentByte] != 13)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to ping code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASPingTask.m", 116, objc_msgSend(contextCopy, "curOffset")];
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
      [contextCopy setCodePage:13];
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

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected ping response"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASPingTask.m", 117, objc_msgSend(contextCopy, "curOffset")];
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

- (void)requestCancelTaskWithReason:(int)reason
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v10[0] = 67109120;
    v10[1] = reason;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Tearing down ping task because someone more important wants the task manager, reason is %d", v10, 8u);
  }

  if (reason == 1)
  {
    v7 = -2;
  }

  else
  {
    v7 = -1;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:v7 userInfo:0];
  [(ASPingTask *)self finishWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(id)error
{
  v38 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [(ASTask *)self taskStatusForError:errorCopy];
  if (v5 == -1)
  {
    if (errorCopy)
    {
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138412290;
        selfCopy2 = objc_opt_class();
        v14 = selfCopy2;
        _os_log_impl(&dword_24A0AC000, v12, v13, "%@ cancelled", buf, 0xCu);
      }

      taskManager = [(ASTask *)self taskManager];
      account = [taskManager account];
      statusReport = [account statusReport];
      [statusReport noteNewHBIDataPoint:{-[ASPingTask heartbeat](self, "heartbeat")}];

      v11 = 0;
      v6 = -1;
      goto LABEL_19;
    }
  }

  else
  {
    v6 = v5;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D03F10], 0, 0, 1u);
    if (errorCopy)
    {
      status2 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(status2, v9))
      {
        *buf = 138412546;
        selfCopy2 = objc_opt_class();
        v36 = 2112;
        v37 = errorCopy;
        v10 = selfCopy2;
        _os_log_impl(&dword_24A0AC000, status2, v9, "%@ failed: %@", buf, 0x16u);
      }

      v11 = 0;
      goto LABEL_15;
    }
  }

  taskManager2 = [(ASTask *)self taskManager];
  account2 = [taskManager2 account];
  statusReport2 = [account2 statusReport];
  [statusReport2 noteNewHBIDataPoint:{-[ASPingTask heartbeat](self, "heartbeat")}];

  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
  v11 = currentlyParsingItem;
  if (currentlyParsingItem && [currentlyParsingItem parsingState] == 2)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      status = [v11 status];
      *buf = 134218240;
      selfCopy2 = self;
      v36 = 1024;
      LODWORD(v37) = [status intValue];
      _os_log_impl(&dword_24A0AC000, v22, v23, "Ping task %p response has status of %d", buf, 0x12u);
    }

    status2 = [v11 status];
    v6 = [(ASPingTask *)self taskStatusForExchangeStatus:[status2 intValue]];
LABEL_15:

    if (v6 == 80)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v6 = 1;
  taskManager = DALoggingwithCategory();
  v25 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(taskManager, v25))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_24A0AC000, taskManager, v25, "%@ failed to parse server response.", buf, 0xCu);
    v6 = 1;
  }

LABEL_19:

LABEL_20:
  if ([(ASTask *)self attemptRetryWithStatus:v6 error:errorCopy])
  {
    [(ASTask *)self setCurrentlyParsingItem:0];
    goto LABEL_25;
  }

LABEL_22:
  folders = [v11 folders];
  v27 = [folders count];

  if (v27)
  {
    v28 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v28, *MEMORY[0x277D03F08], 0, 0, 1u);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __30__ASPingTask_finishWithError___block_invoke;
  v30[3] = &unk_278FC7D70;
  v30[4] = self;
  v33 = v6;
  v31 = errorCopy;
  v11 = v11;
  v32 = v11;
  [(ASTask *)self finishWithError:v31 afterDelegateCallout:v30];

LABEL_25:
  v29 = *MEMORY[0x277D85DE8];
}

void __30__ASPingTask_finishWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 48) folders];
  v6 = [*(a1 + 48) maxFolders];
  v7 = [v6 intValue];
  v8 = [*(a1 + 48) heartBeatInterval];
  [WeakRetained pingTask:v2 completedWithStatus:v4 error:v3 resultFolders:v5 resultMaxFolders:v7 resultHBInterval:{objc_msgSend(v8, "intValue")}];
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  if ((status - 1) > 7)
  {
    return 10;
  }

  else
  {
    return qword_24A14E048[status - 1];
  }
}

@end