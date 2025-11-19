@interface _MFDAMSSearchResponseConsumer
- (BOOL)handleItems:(id)a3;
- (BOOL)waitUntilDoneBeforeDate:(id)a3;
- (void)resetDoneCondition;
- (void)searchQuery:(id)a3 finishedWithError:(id)a4;
- (void)searchQuery:(id)a3 returnedResults:(id)a4;
- (void)waitUntilDone;
@end

@implementation _MFDAMSSearchResponseConsumer

- (BOOL)waitUntilDoneBeforeDate:(id)a3
{
  v4 = a3;
  v5 = [(MFConditionLock *)self->doneCondition lockWhenCondition:1 beforeDate:v4];
  if (v5)
  {
    [(MFConditionLock *)self->doneCondition unlock];
  }

  return v5;
}

- (void)waitUntilDone
{
  [(MFConditionLock *)self->doneCondition lockWhenCondition:1];
  doneCondition = self->doneCondition;

  [(MFConditionLock *)doneCondition unlock];
}

- (void)resetDoneCondition
{
  [(MFConditionLock *)self->doneCondition lock];
  doneCondition = self->doneCondition;

  [(MFConditionLock *)doneCondition unlockWithCondition:0];
}

- (BOOL)handleItems:(id)a3
{
  v4 = a3;
  v5 = [(_MFDAMSBasicConsumer *)self error];
  v6 = v5;
  if (!v5 || (([v5 domain], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6999880]), v7, objc_msgSend(v6, "code") == 78) ? (v9 = v8) : (v9 = 0), (v9 & 1) != 0))
  {
    if (![(MFActivityMonitor *)self->super.monitor shouldCancel])
    {
      if ([(MFDAMessageStore *)self->super.store backedByVirtualAllSearchMailbox])
      {
        v10 = [v4 ef_groupBy:&__block_literal_global_28];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __45___MFDAMSSearchResponseConsumer_handleItems___block_invoke_2;
        v13[3] = &unk_1E7AA5440;
        v13[4] = self;
        [v10 enumerateKeysAndObjectsUsingBlock:v13];
      }

      else
      {
        library = self->super.library;
        v10 = [(MFLibraryStore *)self->super.store account];
        self->super.numNewMessages += insertDAMessages(v4, library, v10, self->super.mailbox, 1, 0);
      }
    }
  }

  return 1;
}

- (void)searchQuery:(id)a3 returnedResults:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v34 = a4;
  self->timeReceivedLastResponse = CFAbsoluteTimeGetCurrent();
  if (![(MFActivityMonitor *)self->super.monitor shouldCancel])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v34;
    v5 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    v38 = self;
    if (v5)
    {
      v36 = *v40;
      *&v6 = 138412290;
      v33 = v6;
      do
      {
        v37 = v5;
        for (i = 0; i != v37; ++i)
        {
          if (*v40 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v39 + 1) + 8 * i);
          v9 = [v8 date];
          v10 = v9;
          if (!self->latestDateToAdd || ([v9 earlierDate:?], v11 = objc_claimAutoreleasedReturnValue(), v12 = v10 == v11, v11, self = v38, v12))
          {
            v13 = [v8 longID];
            if (!v13)
            {
              v13 = [v8 serverID];
            }

            v14 = self->super.mailbox;
            if ([(MFDAMessageStore *)self->super.store backedByVirtualAllSearchMailbox])
            {
              v15 = [(MFMailboxUid *)self->super.mailbox account];
              v16 = [v8 folderID];
              v17 = [v15 mailboxForFolderID:v16];

              v14 = v17;
              if (!v17)
              {
                v18 = MFLogGeneral();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = v33;
                  v44 = v16;
                  _os_log_error_impl(&dword_1B0389000, v18, OS_LOG_TYPE_ERROR, "DAMessageStore - allMailboxes searchQuery returned result with invalid folderID: %@", buf, 0xCu);
                }

                v14 = v38->super.mailbox;
              }

              self = v38;
            }

            if (v13 && v14)
            {
              [(MFRemoteSearchResults *)self->searchResult addRemoteID:v13 mailbox:v14];
            }

            v19 = [(MFDAMessageStore *)self->super.store messageForRemoteID:v13 inMailbox:v14];
            v20 = v19 == 0;

            if (v20)
            {
              v21 = [[MFDAMessage alloc] initWithDAMailMessage:v8 mailbox:v14];
              [(MFBufferedQueue *)v38 addItem:v21];
              earliestDateAdded = v38->earliestDateAdded;
              v23 = [(MFDAMessage *)v21 dateReceived];
              v24 = v23;
              if (!v23)
              {
                v24 = v38->earliestDateAdded;
              }

              v25 = [(NSDate *)earliestDateAdded earlierDate:v24];
              v26 = v38->earliestDateAdded;
              v38->earliestDateAdded = v25;
            }
          }

          self = v38;
        }

        v5 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v5);
    }

    v27 = v38->earliestDateAdded;
    v28 = [MEMORY[0x1E695DF00] distantFuture];
    v29 = [(NSDate *)v27 isEqualToDate:v28];

    if (v29)
    {
      v30 = 0;
      v31 = v38;
    }

    else
    {
      v31 = v38;
      v30 = v38->earliestDateAdded;
    }

    [(MFRemoteSearchResults *)v31->searchResult setContinueOffset:v30];
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)searchQuery:(id)a3 finishedWithError:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    v9 = +[MFError errorWithDomain:code:userInfo:](MFError, "errorWithDomain:code:userInfo:", v8, [v7 code], 0);
    [(_MFDAMSBasicConsumer *)self setError:v9];
  }

  [(MFBufferedQueue *)self flush];
  [(MFConditionLock *)self->doneCondition lock];
  [(MFConditionLock *)self->doneCondition unlockWithCondition:1];
}

@end