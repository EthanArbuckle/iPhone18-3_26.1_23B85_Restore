@interface ASPingTask
- (ASPingTask)initWithHeartbeat:(int)a3 folders:(id)a4 oldHeartbeat:(int)a5 oldFolders:(id)a6;
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)processContext:(id)a3;
- (id)requestBody;
- (int64_t)taskStatusForExchangeStatus:(int)a3;
- (void)finishWithError:(id)a3;
- (void)loadRequest:(id)a3;
- (void)requestCancelTaskWithReason:(int)a3;
@end

@implementation ASPingTask

- (ASPingTask)initWithHeartbeat:(int)a3 folders:(id)a4 oldHeartbeat:(int)a5 oldFolders:(id)a6
{
  v10 = a4;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = ASPingTask;
  v12 = [(ASTask *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_seconds = a3;
    v14 = [v10 copy];
    folders = v13->_folders;
    v13->_folders = v14;

    v13->_oldSeconds = a5;
    v16 = [v11 copy];
    oldFolders = v13->_oldFolders;
    v13->_oldFolders = v16;
  }

  return v13;
}

- (void)loadRequest:(id)a3
{
  v4 = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D03F00], 0, 0, 1u);
  v6.receiver = self;
  v6.super_class = ASPingTask;
  [(ASTask *)&v6 loadRequest:v4];
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
    v28 = self;
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
      v28 = self;
      _os_log_impl(&dword_24A0AC000, v10, v4, "Ping Task %p - same folders and same HBI. Sending empty Ping request.", buf, 0xCu);
    }

    v19 = 0;
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
    v11 = [(NSSet *)self->_folders allObjects];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          [v10 openTag:10];
          v17 = [v16 serverID];
          [v10 appendTag:11 withStringContent:v17];

          v18 = NSStringForDASingleDataclass([v16 dataclass]);
          [v10 appendTag:12 withStringContent:v18];

          [v10 closeTag:10];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    [v10 closeTag:9];

    [v10 closeTag:5];
    v19 = [v10 data];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  *a4 = 13;
  *a3 = 5;
  *a5 = 7;
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
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to ping code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASPingTask.m", 116, objc_msgSend(v4, "curOffset")];
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
      if ([v4 currentByte] != 13)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to ping code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASPingTask.m", 116, objc_msgSend(v4, "curOffset")];
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
      [v4 setCodePage:13];
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

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected ping response"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASPingTask.m", 117, objc_msgSend(v4, "curOffset")];
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

- (void)requestCancelTaskWithReason:(int)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v10[0] = 67109120;
    v10[1] = a3;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Tearing down ping task because someone more important wants the task manager, reason is %d", v10, 8u);
  }

  if (a3 == 1)
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

- (void)finishWithError:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self taskStatusForError:v4];
  if (v5 == -1)
  {
    if (v4)
    {
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138412290;
        v35 = objc_opt_class();
        v14 = v35;
        _os_log_impl(&dword_24A0AC000, v12, v13, "%@ cancelled", buf, 0xCu);
      }

      v15 = [(ASTask *)self taskManager];
      v16 = [v15 account];
      v17 = [v16 statusReport];
      [v17 noteNewHBIDataPoint:{-[ASPingTask heartbeat](self, "heartbeat")}];

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
    if (v4)
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138412546;
        v35 = objc_opt_class();
        v36 = 2112;
        v37 = v4;
        v10 = v35;
        _os_log_impl(&dword_24A0AC000, v8, v9, "%@ failed: %@", buf, 0x16u);
      }

      v11 = 0;
      goto LABEL_15;
    }
  }

  v18 = [(ASTask *)self taskManager];
  v19 = [v18 account];
  v20 = [v19 statusReport];
  [v20 noteNewHBIDataPoint:{-[ASPingTask heartbeat](self, "heartbeat")}];

  v21 = [(ASTask *)self currentlyParsingItem];
  v11 = v21;
  if (v21 && [v21 parsingState] == 2)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = [v11 status];
      *buf = 134218240;
      v35 = self;
      v36 = 1024;
      LODWORD(v37) = [v24 intValue];
      _os_log_impl(&dword_24A0AC000, v22, v23, "Ping task %p response has status of %d", buf, 0x12u);
    }

    v8 = [v11 status];
    v6 = [(ASPingTask *)self taskStatusForExchangeStatus:[v8 intValue]];
LABEL_15:

    if (v6 == 80)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v6 = 1;
  v15 = DALoggingwithCategory();
  v25 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v15, v25))
  {
    *buf = 138412290;
    v35 = self;
    _os_log_impl(&dword_24A0AC000, v15, v25, "%@ failed to parse server response.", buf, 0xCu);
    v6 = 1;
  }

LABEL_19:

LABEL_20:
  if ([(ASTask *)self attemptRetryWithStatus:v6 error:v4])
  {
    [(ASTask *)self setCurrentlyParsingItem:0];
    goto LABEL_25;
  }

LABEL_22:
  v26 = [v11 folders];
  v27 = [v26 count];

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
  v31 = v4;
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

- (int64_t)taskStatusForExchangeStatus:(int)a3
{
  if ((a3 - 1) > 7)
  {
    return 10;
  }

  else
  {
    return qword_24A14E048[a3 - 1];
  }
}

@end