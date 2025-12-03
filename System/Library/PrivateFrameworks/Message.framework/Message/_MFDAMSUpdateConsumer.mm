@interface _MFDAMSUpdateConsumer
- (BOOL)handleItems:(id)items;
- (void)drainMailbox;
- (void)handleResponse:(id)response error:(id)error;
- (void)receiveSyncActions:(id)actions;
@end

@implementation _MFDAMSUpdateConsumer

- (void)drainMailbox
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self->super.mailbox == 0;
  uRLString = DALoggingwithCategory();
  v6 = os_log_type_enabled(uRLString, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      folderID = [(MFDAMailbox *)self->super.mailbox folderID];
      v11 = 138412290;
      v12 = folderID;
      _os_log_impl(&dword_1B0389000, uRLString, OS_LOG_TYPE_DEFAULT, "Failed erasing messages for folderID %@ - no such local mailbox.", &v11, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      folderID2 = [(MFDAMailbox *)self->super.mailbox folderID];
      v11 = 138412290;
      v12 = folderID2;
      _os_log_impl(&dword_1B0389000, uRLString, OS_LOG_TYPE_DEFAULT, "Erasing locally cached messages for folderID %@", &v11, 0xCu);
    }

    library = self->super.library;
    uRLString = [(MFMailboxUid *)self->super.mailbox URLString];
    [(MFMailMessageLibrary *)library removeAllMessagesFromMailbox:uRLString removeMailbox:0 andNotify:1];
  }

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)handleItems:(id)items
{
  v68 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = itemsCopy;
  if (self->super.error)
  {
    goto LABEL_77;
  }

  v46 = itemsCopy;
  v45 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  array6 = [MEMORY[0x1E695DF70] array];
  array7 = [MEMORY[0x1E695DF70] array];
  array8 = [MEMORY[0x1E695DF70] array];
  array9 = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v6 = v46;
  v7 = [v6 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = *v62;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v62 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v61 + 1) + 8 * i);
      itemChangeType = [v10 itemChangeType];
      if (itemChangeType == 2)
      {
        message = [v10 message];
        remoteID = [message remoteID];

        v12RemoteID = [(MFDAMessageStore *)self->super.store messageForRemoteID:remoteID];
        if (v12RemoteID)
        {
          [array2 addObject:v12RemoteID];
        }
      }

      else
      {
        if (itemChangeType == 1)
        {
          remoteID = [v10 message];
          v12RemoteID = [remoteID remoteID];
          v16 = [(MFDAMessageStore *)self->super.store messageForRemoteID:v12RemoteID];
          if (v16)
          {
            if ([remoteID isDraft])
            {
              v18 = [[MFDAMessage alloc] initWithDAMailMessage:remoteID mailbox:self->super.mailbox];
              [(MFDAMessage *)v18 setMessageStore:self->super.store];
              [array addObject:v18];
              [array2 addObject:v16];
            }

            else
            {
              [dictionary setObject:remoteID forKey:v16];
            }
          }
        }

        else
        {
          if (itemChangeType)
          {
            continue;
          }

          remoteID = [v10 message];
          store = self->super.store;
          v12RemoteID2 = [remoteID remoteID];
          v12RemoteID = [(MFDAMessageStore *)store messageForRemoteID:v12RemoteID2];

          if (v12RemoteID)
          {
            v16 = DALoggingwithCategory();
            if (os_log_type_enabled(&v16->super.super.super, OS_LOG_TYPE_DEFAULT))
            {
              v12RemoteID3 = [remoteID remoteID];
              *buf = 138412290;
              *&buf[4] = v12RemoteID3;
              _os_log_impl(&dword_1B0389000, &v16->super.super.super, OS_LOG_TYPE_DEFAULT, "received a redundant SyncAddAction for a message with remote-id %@", buf, 0xCu);
            }
          }

          else
          {
            v16 = [[MFDAMessage alloc] initWithDAMailMessage:remoteID mailbox:self->super.mailbox];
            [(MFDAMessage *)v16 setMessageStore:self->super.store];
            [array addObject:v16];
          }
        }
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v61 objects:v67 count:16];
  }

  while (v7);
LABEL_24:

  if ([dictionary count])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    allKeys = [dictionary allKeys];
    v21 = [allKeys countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (!v21)
    {
      goto LABEL_49;
    }

    v22 = *v58;
    while (1)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v58 != v22)
        {
          objc_enumerationMutation(allKeys);
        }

        v24 = *(*(&v57 + 1) + 8 * j);
        v25 = [dictionary objectForKey:v24];
        if ([v25 readIsSet])
        {
          if ([v25 read])
          {
            v26 = array3;
          }

          else
          {
            v26 = array4;
          }

          [v26 addObject:v24];
        }

        if ([v25 flaggedIsSet])
        {
          if ([v25 flagged])
          {
            v27 = array5;
          }

          else
          {
            v27 = array6;
          }

          [v27 addObject:v24];
        }

        if ([v25 verbIsSet])
        {
          lastVerb = [v25 lastVerb];
          v29 = array7;
          if (lastVerb == 1)
          {
            goto LABEL_46;
          }

          if (lastVerb == 3)
          {
            v29 = array9;
LABEL_46:
            [v29 addObject:v24];
            goto LABEL_47;
          }

          v29 = array8;
          if (lastVerb == 2)
          {
            goto LABEL_46;
          }
        }

LABEL_47:
      }

      v21 = [allKeys countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (!v21)
      {
LABEL_49:

        break;
      }
    }
  }

  if ([array count])
  {
    *buf = 0;
    library = self->super.library;
    account = [(MFLibraryStore *)self->super.store account];
    self->super.numNewMessages = insertDAMessages(array, library, account, self->super.mailbox, 0, buf);

    if ((buf[0] & 1) != 0 && (buf[0] & 8) != 0 && self->super.numNewMessages)
    {
      v32 = 1;
      if ((buf[0] & 2) != 0)
      {
        v32 = 2;
      }

      if ((buf[0] & 4) != 0)
      {
        v33 = 3;
      }

      else
      {
        v33 = v32;
      }

      [(MFActivityMonitor *)self->super.monitor setGotNewMessagesState:v33];
    }
  }

  persistence = [(MFMailMessageLibrary *)self->super.library persistence];
  messageChangeManager = [persistence messageChangeManager];

  if ([array4 count])
  {
    clearRead = [MEMORY[0x1E699B300] clearRead];
    [messageChangeManager reflectFlagChanges:clearRead forMessages:array4];
  }

  if ([array3 count])
  {
    setRead = [MEMORY[0x1E699B300] setRead];
    [messageChangeManager reflectFlagChanges:setRead forMessages:array3];
  }

  if ([array6 count])
  {
    clearFlagged = [MEMORY[0x1E699B300] clearFlagged];
    [messageChangeManager reflectFlagChanges:clearFlagged forMessages:array6];
  }

  if ([array5 count])
  {
    setFlagged = [MEMORY[0x1E699B300] setFlagged];
    [messageChangeManager reflectFlagChanges:setFlagged forMessages:array5];
  }

  if ([array7 count])
  {
    setReplied = [MEMORY[0x1E699B300] setReplied];
    [messageChangeManager reflectFlagChanges:setReplied forMessages:array7];
  }

  if ([array8 count])
  {
    setReplied2 = [MEMORY[0x1E699B300] setReplied];
    [messageChangeManager reflectFlagChanges:setReplied2 forMessages:array8];
  }

  if ([array9 count])
  {
    setForwarded = [MEMORY[0x1E699B300] setForwarded];
    [messageChangeManager reflectFlagChanges:setForwarded forMessages:array9];
  }

  if ([array2 count])
  {
    [messageChangeManager reflectDeletedMessages:array2];
  }

  v5 = v46;
  objc_autoreleasePoolPop(v45);
LABEL_77:

  v43 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)receiveSyncActions:(id)actions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  actionsCopy = actions;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(actionsCopy);
        }

        [(MFBufferedQueue *)self addItem:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleResponse:(id)response error:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  if (!errorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:1729 description:@"should only reach here in the error case."];
  }

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = errorCopy;
    _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_ERROR, "error syncing folder: %@", &v12, 0xCu);
  }

  objc_storeStrong(&self->super.error, error);
  [(MFBufferedQueue *)self flush];

  v10 = *MEMORY[0x1E69E9840];
}

@end