@interface _MFDAMSSearchResponseConsumer
- (BOOL)handleItems:(id)items;
- (BOOL)waitUntilDoneBeforeDate:(id)date;
- (void)resetDoneCondition;
- (void)searchQuery:(id)query finishedWithError:(id)error;
- (void)searchQuery:(id)query returnedResults:(id)results;
- (void)waitUntilDone;
@end

@implementation _MFDAMSSearchResponseConsumer

- (BOOL)waitUntilDoneBeforeDate:(id)date
{
  dateCopy = date;
  v5 = [(MFConditionLock *)self->doneCondition lockWhenCondition:1 beforeDate:dateCopy];
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

- (BOOL)handleItems:(id)items
{
  itemsCopy = items;
  error = [(_MFDAMSBasicConsumer *)self error];
  v6 = error;
  if (!error || (([error domain], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E6999880]), v7, objc_msgSend(v6, "code") == 78) ? (v9 = v8) : (v9 = 0), (v9 & 1) != 0))
  {
    if (![(MFActivityMonitor *)self->super.monitor shouldCancel])
    {
      if ([(MFDAMessageStore *)self->super.store backedByVirtualAllSearchMailbox])
      {
        account = [itemsCopy ef_groupBy:&__block_literal_global_28];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __45___MFDAMSSearchResponseConsumer_handleItems___block_invoke_2;
        v13[3] = &unk_1E7AA5440;
        v13[4] = self;
        [account enumerateKeysAndObjectsUsingBlock:v13];
      }

      else
      {
        library = self->super.library;
        account = [(MFLibraryStore *)self->super.store account];
        self->super.numNewMessages += insertDAMessages(itemsCopy, library, account, self->super.mailbox, 1, 0);
      }
    }
  }

  return 1;
}

- (void)searchQuery:(id)query returnedResults:(id)results
{
  v46 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  self->timeReceivedLastResponse = CFAbsoluteTimeGetCurrent();
  if (![(MFActivityMonitor *)self->super.monitor shouldCancel])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = resultsCopy;
    v5 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    selfCopy = self;
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
          date = [v8 date];
          v10 = date;
          if (!self->latestDateToAdd || ([date earlierDate:?], v11 = objc_claimAutoreleasedReturnValue(), v12 = v10 == v11, v11, self = selfCopy, v12))
          {
            longID = [v8 longID];
            if (!longID)
            {
              longID = [v8 serverID];
            }

            v14 = self->super.mailbox;
            if ([(MFDAMessageStore *)self->super.store backedByVirtualAllSearchMailbox])
            {
              account = [(MFMailboxUid *)self->super.mailbox account];
              folderID = [v8 folderID];
              v17 = [account mailboxForFolderID:folderID];

              v14 = v17;
              if (!v17)
              {
                v18 = MFLogGeneral();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = v33;
                  v44 = folderID;
                  _os_log_error_impl(&dword_1B0389000, v18, OS_LOG_TYPE_ERROR, "DAMessageStore - allMailboxes searchQuery returned result with invalid folderID: %@", buf, 0xCu);
                }

                v14 = selfCopy->super.mailbox;
              }

              self = selfCopy;
            }

            if (longID && v14)
            {
              [(MFRemoteSearchResults *)self->searchResult addRemoteID:longID mailbox:v14];
            }

            v19 = [(MFDAMessageStore *)self->super.store messageForRemoteID:longID inMailbox:v14];
            v20 = v19 == 0;

            if (v20)
            {
              v21 = [[MFDAMessage alloc] initWithDAMailMessage:v8 mailbox:v14];
              [(MFBufferedQueue *)selfCopy addItem:v21];
              earliestDateAdded = selfCopy->earliestDateAdded;
              dateReceived = [(MFDAMessage *)v21 dateReceived];
              v24 = dateReceived;
              if (!dateReceived)
              {
                v24 = selfCopy->earliestDateAdded;
              }

              v25 = [(NSDate *)earliestDateAdded earlierDate:v24];
              v26 = selfCopy->earliestDateAdded;
              selfCopy->earliestDateAdded = v25;
            }
          }

          self = selfCopy;
        }

        v5 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v5);
    }

    v27 = selfCopy->earliestDateAdded;
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    v29 = [(NSDate *)v27 isEqualToDate:distantFuture];

    if (v29)
    {
      v30 = 0;
      v31 = selfCopy;
    }

    else
    {
      v31 = selfCopy;
      v30 = selfCopy->earliestDateAdded;
    }

    [(MFRemoteSearchResults *)v31->searchResult setContinueOffset:v30];
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)searchQuery:(id)query finishedWithError:(id)error
{
  queryCopy = query;
  errorCopy = error;
  v7 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v9 = +[MFError errorWithDomain:code:userInfo:](MFError, "errorWithDomain:code:userInfo:", domain, [v7 code], 0);
    [(_MFDAMSBasicConsumer *)self setError:v9];
  }

  [(MFBufferedQueue *)self flush];
  [(MFConditionLock *)self->doneCondition lock];
  [(MFConditionLock *)self->doneCondition unlockWithCondition:1];
}

@end