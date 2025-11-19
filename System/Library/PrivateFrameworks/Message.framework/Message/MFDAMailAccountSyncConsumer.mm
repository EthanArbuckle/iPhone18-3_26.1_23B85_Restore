@interface MFDAMailAccountSyncConsumer
- (BOOL)refreshFolderHierarchyAndWait:(unint64_t)a3;
- (BOOL)shouldBeginStreamingForMailMessage:(id)a3 format:(int)a4;
- (MFDAMailAccountSyncConsumer)initWithCurrentTag:(id)a3 accountID:(id)a4 requests:(id)a5;
- (id)actionsConsumer;
- (void)accountHierarchyChanged:(id)a3;
- (void)didEndStreamingForMailMessage:(id)a3;
- (void)handleSyncResponses:(id)a3;
- (void)partialResultsForMailbox:(id)a3 actions:(id)a4 responses:(id)a5 percentComplete:(double)a6 moreAvailable:(BOOL)a7;
- (void)reset;
- (void)resultsForMailbox:(id)a3 newTag:(id)a4 actions:(id)a5 responses:(id)a6 percentComplete:(double)a7 moreAvailable:(BOOL)a8 sentBytesCount:(unint64_t)a9 receivedBytesCount:(unint64_t)a10;
- (void)taskFailed:(id)a3 statusCode:(int64_t)a4 error:(id)a5;
@end

@implementation MFDAMailAccountSyncConsumer

- (MFDAMailAccountSyncConsumer)initWithCurrentTag:(id)a3 accountID:(id)a4 requests:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  objc_storeStrong(&self->_requestPairs, a5);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __69__MFDAMailAccountSyncConsumer_initWithCurrentTag_accountID_requests___block_invoke;
  v22[3] = &unk_1E7AA5348;
  v22[4] = &v23;
  [v10 enumerateObjectsUsingBlock:v22];
  v11 = *(v24 + 24);
  v21.receiver = self;
  v21.super_class = MFDAMailAccountSyncConsumer;
  v12 = [(MFDAMailAccountConsumer *)&v21 initWithAlwaysReportFailures:v11];
  v13 = v12;
  if (v12)
  {
    [(MFDAMailAccountSyncConsumer *)v12 setTag:v8];
    v13->_firstSyncBatch = 1;
    objc_storeStrong(&v13->_accountID, a4);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__MFDAMailAccountSyncConsumer_initWithCurrentTag_accountID_requests___block_invoke_2;
    v18[3] = &unk_1E7AA5370;
    v14 = v13;
    v19 = v14;
    v20 = v10;
    [v20 enumerateObjectsUsingBlock:v18];
    v15 = +[MFActivityMonitor currentMonitor];
    monitor = v14->_monitor;
    v14->_monitor = v15;
  }

  _Block_object_dispose(&v23, 8);

  return v13;
}

void __69__MFDAMailAccountSyncConsumer_initWithCurrentTag_accountID_requests___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 first];
  if ([v3 mf_alwaysReportFailures])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __69__MFDAMailAccountSyncConsumer_initWithCurrentTag_accountID_requests___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 second];
  if ([v3 conformsToProtocol:&unk_1F2796E98])
  {
    v4 = [v10 first];
    v5 = [v4 messageID];
    if (v5)
    {
      v6 = *(*(a1 + 32) + 72);
      if (!v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
        v8 = *(a1 + 32);
        v9 = *(v8 + 72);
        *(v8 + 72) = v7;

        v6 = *(*(a1 + 32) + 72);
      }

      [v6 setObject:v3 forKeyedSubscript:v5];
    }
  }
}

- (void)reset
{
  self->_moreAvailable = 0;
  self->_firstSyncBatch = 0;
  v2.receiver = self;
  v2.super_class = MFDAMailAccountSyncConsumer;
  [(MFDAMailAccountConsumer *)&v2 setDone:0];
}

- (id)actionsConsumer
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_requestPairs;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v10 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = [*(*(&v9 + 1) + 8 * v5) second];
      if ([v6 conformsToProtocol:&unk_1F2796CD0])
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)handleSyncResponses:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v23 = [(MFDAMailAccountSyncConsumer *)self actionsConsumer];
  if (v23)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = v24;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          if ([v9 status] == 12)
          {
            v10 = [v9 message];
            v11 = objc_alloc(MEMORY[0x1E6999838]);
            v12 = [v10 remoteID];
            v13 = [v11 initWithItemChangeType:2 changedItem:v10 serverId:v12];

            [v4 addObject:v13];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v6);
    }

    if ([v4 count])
    {
      [v23 receiveSyncActions:v4];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v24;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = *v26;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v25 + 1) + 8 * j);
        v19 = [v18 serverId];
        if (!v19 || ([(NSMutableDictionary *)self->_syncResponseConsumersByMessageId objectForKeyedSubscript:v19], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          if ([(NSArray *)self->_requestPairs count]== 1)
          {
            v21 = [(NSArray *)self->_requestPairs objectAtIndexedSubscript:0];
            v20 = [v21 second];
          }

          else
          {
            v20 = 0;
          }
        }

        if ([v20 conformsToProtocol:&unk_1F2796E98])
        {
          [v20 handleResponse:v18 error:0];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)partialResultsForMailbox:(id)a3 actions:(id)a4 responses:(id)a5 percentComplete:(double)a6 moreAvailable:(BOOL)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  if (self->_firstSyncBatch && !a7)
  {
    v15 = [(MFDAMailAccountSyncConsumer *)self originalThreadMonitor];
    [v15 setPercentDone:a6];
  }

  if ([v13 count])
  {
    v16 = [(MFDAMailAccountSyncConsumer *)self actionsConsumer];
    if (!v16)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"MFDAMailAccountSyncConsumer.m" lineNumber:163 description:{@"we failed to find a sync actions consumer! requests: %@", self->_requestPairs}];
    }

    if (!self->_receivedFirstItem)
    {
      if (!self->_tag)
      {
        [v16 drainMailbox];
      }

      v17 = [(MFDAMailAccountSyncConsumer *)self originalThreadMonitor];
      v18 = MFLookupLocalizedString(@"DOWNLOADING_STATUS", @"Downloading", @"Delayed");
      [v17 setDisplayName:v18];

      self->_receivedFirstItem = 1;
    }

    [v16 receiveSyncActions:v13];
  }

  if ([v14 count])
  {
    [(MFDAMailAccountSyncConsumer *)self handleSyncResponses:v14];
  }
}

- (void)resultsForMailbox:(id)a3 newTag:(id)a4 actions:(id)a5 responses:(id)a6 percentComplete:(double)a7 moreAvailable:(BOOL)a8 sentBytesCount:(unint64_t)a9 receivedBytesCount:(unint64_t)a10
{
  v22 = a4;
  v16 = a5;
  v17 = a6;
  [(MFActivityMonitor *)self->_monitor recordBytesWritten:a9];
  [(MFActivityMonitor *)self->_monitor recordBytesRead:a10];
  v18 = [(MFDAMailAccountSyncConsumer *)self actionsConsumer];
  if ([v16 count])
  {
    if (!v18)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"MFDAMailAccountSyncConsumer.m" lineNumber:198 description:{@"we failed to find a sync actions consumer! requests: %@", self->_requestPairs}];
    }

    if (!self->_receivedFirstItem)
    {
      if (!self->_tag)
      {
        [v18 drainMailbox];
      }

      v19 = [(MFDAMailAccountSyncConsumer *)self originalThreadMonitor];
      v20 = MFLookupLocalizedString(@"DOWNLOADING_STATUS", @"Downloading", @"Delayed");
      [v19 setDisplayName:v20];

      self->_receivedFirstItem = 1;
    }

    [v18 receiveSyncActions:v16];
  }

  if ([v17 count])
  {
    [(MFDAMailAccountSyncConsumer *)self handleSyncResponses:v17];
  }

  [v18 commitSyncActions];
  self->_moreAvailable = a8;
  [(MFDAMailAccountSyncConsumer *)self setTag:v22];
  [(MFDAMailAccountConsumer *)self setDone:1];
}

- (BOOL)shouldBeginStreamingForMailMessage:(id)a3 format:(int)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  [(MFDAMailAccountSyncConsumer *)self setStreamConsumer:0];
  requestPairs = self->_requestPairs;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__MFDAMailAccountSyncConsumer_shouldBeginStreamingForMailMessage_format___block_invoke;
  v10[3] = &unk_1E7AA5398;
  v8 = v6;
  v11 = v8;
  v12 = self;
  v13 = &v15;
  v14 = a4;
  [(NSArray *)requestPairs enumerateObjectsUsingBlock:v10];
  LOBYTE(v6) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __73__MFDAMailAccountSyncConsumer_shouldBeginStreamingForMailMessage_format___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = [v13 first];
  if ([v6 requestType] == 3)
  {
    v7 = [v6 messageID];
    v8 = [*(a1 + 32) remoteID];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = [v13 second];
      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 streamingContentConsumer];
        [*(a1 + 40) setStreamConsumer:v11];

        v12 = [*(a1 + 40) streamConsumer];
        *(*(*(a1 + 48) + 8) + 24) = [v12 shouldBeginStreamingForMailMessage:*(a1 + 32) format:*(a1 + 56)];

        *a4 = 1;
      }
    }
  }
}

- (void)didEndStreamingForMailMessage:(id)a3
{
  v5 = a3;
  v4 = [(MFDAMailAccountSyncConsumer *)self streamConsumer];
  [v4 didEndStreamingForMailMessage:v5];
}

- (void)taskFailed:(id)a3 statusCode:(int64_t)a4 error:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a5 userInfo];
  v10 = [v9 objectForKey:*MEMORY[0x1E696AA08]];

  v11 = MFMessageErrorDomain;
  v12 = 1033;
  if (a4 <= 8)
  {
    if (a4 <= 4)
    {
      if (a4 == -1)
      {
        v12 = 1028;
        goto LABEL_36;
      }

      if (!a4)
      {
        v16 = [v10 domain];
        if ([v16 isEqualToString:*MEMORY[0x1E696A978]])
        {
          v17 = [v10 code];

          if (v17 == -1001)
          {
            v11 = MEMORY[0x1E696A798];
            v12 = 60;
            goto LABEL_36;
          }
        }

        else
        {
        }

        v11 = MFMessageErrorDomain;
      }
    }

    else
    {
      switch(a4)
      {
        case 5:
          serverErrors = self->_serverErrors;
          self->_serverErrors = serverErrors + 1;
          if (serverErrors <= 0)
          {
            self->_moreAvailable = 1;
          }

          else if (!self->_moreAvailable)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = self->_serverErrors;
              *buf = 67109378;
              *v31 = v21;
              *&v31[4] = 2112;
              *&v31[6] = v8;
              _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_DEFAULT, "encounter server error %d times for task %@, giving up.", buf, 0x12u);
            }

            v11 = MFMessageErrorDomain;
            v12 = 1040;
            goto LABEL_36;
          }

          v27 = DALoggingwithCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v31 = v8;
            _os_log_impl(&dword_1B0389000, v27, OS_LOG_TYPE_DEFAULT, "encounter server error for task %@.", buf, 0xCu);
          }

          goto LABEL_42;
        case 6:
          goto LABEL_36;
        case 8:
          [(MFDAMailAccountSyncConsumer *)self setTag:0, 1033];
          syncKeyResets = self->_syncKeyResets;
          self->_syncKeyResets = syncKeyResets + 1;
          self->_moreAvailable = syncKeyResets < 1;
          if (syncKeyResets > 0)
          {
            v14 = DALoggingwithCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = self->_syncKeyResets;
              *buf = 67109378;
              *v31 = v15;
              *&v31[4] = 2112;
              *&v31[6] = v8;
              _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "server has reset the sync state %d times for task %@ in the same sync attempt, giving up.", buf, 0x12u);
            }

            goto LABEL_32;
          }

          v27 = DALoggingwithCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v31 = v8;
            *&v31[8] = 2048;
            *&v31[10] = 8;
            _os_log_impl(&dword_1B0389000, v27, OS_LOG_TYPE_DEFAULT, "server indicated invalid sync state for task %@ (code %ld).  resetting mailbox sync key.", buf, 0x16u);
          }

LABEL_42:

          goto LABEL_38;
      }
    }

LABEL_35:
    v12 = 1045;
LABEL_36:
    v23 = [MFError errorWithDomain:*v11 code:v12 localizedDescription:0];
    if (v23)
    {
      self->_moreAvailable = 0;
      requestPairs = self->_requestPairs;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __59__MFDAMailAccountSyncConsumer_taskFailed_statusCode_error___block_invoke;
      v28[3] = &unk_1E7AA2638;
      v29 = v23;
      v25 = v23;
      [(NSArray *)requestPairs enumerateObjectsUsingBlock:v28];
    }

    goto LABEL_38;
  }

  if (a4 <= 62)
  {
    if (a4 == 9)
    {
      goto LABEL_36;
    }

    if (a4 != 12)
    {
      goto LABEL_35;
    }

    v18 = [MEMORY[0x1E69998A8] sharedConnection];
    [v18 updateFolderListForAccountID:self->_accountID andDataclasses:1 requireChangedFolders:1 isUserRequested:1];

    goto LABEL_32;
  }

  if (a4 == 63)
  {
    goto LABEL_14;
  }

  if (a4 != 67)
  {
    if (a4 != 79)
    {
      goto LABEL_35;
    }

LABEL_14:
    v12 = 1055;
    goto LABEL_36;
  }

  if (![(MFDAMailAccountSyncConsumer *)self refreshFolderHierarchyAndWait:5, 1033])
  {
LABEL_32:
    v11 = MFMessageErrorDomain;
    v12 = 1033;
    goto LABEL_36;
  }

  v22 = self->_serverErrors;
  self->_serverErrors = v22 + 1;
  if (v22 <= 0)
  {
    self->_moreAvailable = 1;
  }

LABEL_38:

  v26 = *MEMORY[0x1E69E9840];
}

void __59__MFDAMailAccountSyncConsumer_taskFailed_statusCode_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 second];
  [v3 handleResponse:0 error:*(a1 + 32)];
}

- (void)accountHierarchyChanged:(id)a3
{
  v6 = a3;
  v4 = [v6 object];
  v5 = [v4 isEqualToString:self->_accountID];

  if (v5)
  {
    [(NSConditionLock *)self->_accountHierarchyLock lock];
    [(NSConditionLock *)self->_accountHierarchyLock unlockWithCondition:1];
  }
}

- (BOOL)refreshFolderHierarchyAndWait:(unint64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
  accountHierarchyLock = self->_accountHierarchyLock;
  self->_accountHierarchyLock = v5;

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel_accountHierarchyChanged_ name:*MEMORY[0x1E6999818] object:0];

  v8 = [MEMORY[0x1E69998A8] sharedConnection];
  [v8 updateFolderListForAccountID:self->_accountID andDataclasses:1 requireChangedFolders:1 isUserRequested:1];

  if (a3)
  {
    v9 = 1;
    v10 = a3;
    v11 = 1;
    do
    {
      v12 = self->_accountHierarchyLock;
      v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.0];
      [(NSConditionLock *)v12 lockWhenCondition:1 beforeDate:v13];

      [(NSConditionLock *)self->_accountHierarchyLock unlock];
      if ([(NSConditionLock *)self->_accountHierarchyLock condition]== 1)
      {
        break;
      }

      v14 = [MEMORY[0x1E695DFD0] currentRunLoop];
      v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.01];
      [v14 runUntilDate:v15];

      v11 = v9++ < a3;
      --v10;
    }

    while (v10);
  }

  else
  {
    return 0;
  }

  return v11;
}

@end