@interface _MFDAMSUpdateConsumer
- (BOOL)handleItems:(id)a3;
- (void)drainMailbox;
- (void)handleResponse:(id)a3 error:(id)a4;
- (void)receiveSyncActions:(id)a3;
@end

@implementation _MFDAMSUpdateConsumer

- (void)drainMailbox
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self->super.mailbox == 0;
  v5 = DALoggingwithCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v9 = [(MFDAMailbox *)self->super.mailbox folderID];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Failed erasing messages for folderID %@ - no such local mailbox.", &v11, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v7 = [(MFDAMailbox *)self->super.mailbox folderID];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Erasing locally cached messages for folderID %@", &v11, 0xCu);
    }

    library = self->super.library;
    v5 = [(MFMailboxUid *)self->super.mailbox URLString];
    [(MFMailMessageLibrary *)library removeAllMessagesFromMailbox:v5 removeMailbox:0 andNotify:1];
  }

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)handleItems:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->super.error)
  {
    goto LABEL_77;
  }

  v46 = v4;
  v45 = objc_autoreleasePoolPush();
  v49 = [MEMORY[0x1E695DF70] array];
  v50 = [MEMORY[0x1E695DF70] array];
  v55 = [MEMORY[0x1E695DF70] array];
  v54 = [MEMORY[0x1E695DF70] array];
  v53 = [MEMORY[0x1E695DF70] array];
  v52 = [MEMORY[0x1E695DF70] array];
  v51 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  v47 = [MEMORY[0x1E695DF70] array];
  v56 = [MEMORY[0x1E695DF90] dictionary];
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
      v11 = [v10 itemChangeType];
      if (v11 == 2)
      {
        v19 = [v10 message];
        v12 = [v19 remoteID];

        v15 = [(MFDAMessageStore *)self->super.store messageForRemoteID:v12];
        if (v15)
        {
          [v50 addObject:v15];
        }
      }

      else
      {
        if (v11 == 1)
        {
          v12 = [v10 message];
          v15 = [v12 remoteID];
          v16 = [(MFDAMessageStore *)self->super.store messageForRemoteID:v15];
          if (v16)
          {
            if ([v12 isDraft])
            {
              v18 = [[MFDAMessage alloc] initWithDAMailMessage:v12 mailbox:self->super.mailbox];
              [(MFDAMessage *)v18 setMessageStore:self->super.store];
              [v49 addObject:v18];
              [v50 addObject:v16];
            }

            else
            {
              [v56 setObject:v12 forKey:v16];
            }
          }
        }

        else
        {
          if (v11)
          {
            continue;
          }

          v12 = [v10 message];
          store = self->super.store;
          v14 = [v12 remoteID];
          v15 = [(MFDAMessageStore *)store messageForRemoteID:v14];

          if (v15)
          {
            v16 = DALoggingwithCategory();
            if (os_log_type_enabled(&v16->super.super.super, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v12 remoteID];
              *buf = 138412290;
              *&buf[4] = v17;
              _os_log_impl(&dword_1B0389000, &v16->super.super.super, OS_LOG_TYPE_DEFAULT, "received a redundant SyncAddAction for a message with remote-id %@", buf, 0xCu);
            }
          }

          else
          {
            v16 = [[MFDAMessage alloc] initWithDAMailMessage:v12 mailbox:self->super.mailbox];
            [(MFDAMessage *)v16 setMessageStore:self->super.store];
            [v49 addObject:v16];
          }
        }
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v61 objects:v67 count:16];
  }

  while (v7);
LABEL_24:

  if ([v56 count])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v20 = [v56 allKeys];
    v21 = [v20 countByEnumeratingWithState:&v57 objects:v65 count:16];
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
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v57 + 1) + 8 * j);
        v25 = [v56 objectForKey:v24];
        if ([v25 readIsSet])
        {
          if ([v25 read])
          {
            v26 = v55;
          }

          else
          {
            v26 = v54;
          }

          [v26 addObject:v24];
        }

        if ([v25 flaggedIsSet])
        {
          if ([v25 flagged])
          {
            v27 = v53;
          }

          else
          {
            v27 = v52;
          }

          [v27 addObject:v24];
        }

        if ([v25 verbIsSet])
        {
          v28 = [v25 lastVerb];
          v29 = v51;
          if (v28 == 1)
          {
            goto LABEL_46;
          }

          if (v28 == 3)
          {
            v29 = v47;
LABEL_46:
            [v29 addObject:v24];
            goto LABEL_47;
          }

          v29 = v48;
          if (v28 == 2)
          {
            goto LABEL_46;
          }
        }

LABEL_47:
      }

      v21 = [v20 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (!v21)
      {
LABEL_49:

        break;
      }
    }
  }

  if ([v49 count])
  {
    *buf = 0;
    library = self->super.library;
    v31 = [(MFLibraryStore *)self->super.store account];
    self->super.numNewMessages = insertDAMessages(v49, library, v31, self->super.mailbox, 0, buf);

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

  v34 = [(MFMailMessageLibrary *)self->super.library persistence];
  v35 = [v34 messageChangeManager];

  if ([v54 count])
  {
    v36 = [MEMORY[0x1E699B300] clearRead];
    [v35 reflectFlagChanges:v36 forMessages:v54];
  }

  if ([v55 count])
  {
    v37 = [MEMORY[0x1E699B300] setRead];
    [v35 reflectFlagChanges:v37 forMessages:v55];
  }

  if ([v52 count])
  {
    v38 = [MEMORY[0x1E699B300] clearFlagged];
    [v35 reflectFlagChanges:v38 forMessages:v52];
  }

  if ([v53 count])
  {
    v39 = [MEMORY[0x1E699B300] setFlagged];
    [v35 reflectFlagChanges:v39 forMessages:v53];
  }

  if ([v51 count])
  {
    v40 = [MEMORY[0x1E699B300] setReplied];
    [v35 reflectFlagChanges:v40 forMessages:v51];
  }

  if ([v48 count])
  {
    v41 = [MEMORY[0x1E699B300] setReplied];
    [v35 reflectFlagChanges:v41 forMessages:v48];
  }

  if ([v47 count])
  {
    v42 = [MEMORY[0x1E699B300] setForwarded];
    [v35 reflectFlagChanges:v42 forMessages:v47];
  }

  if ([v50 count])
  {
    [v35 reflectDeletedMessages:v50];
  }

  v5 = v46;
  objc_autoreleasePoolPop(v45);
LABEL_77:

  v43 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)receiveSyncActions:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(MFBufferedQueue *)self addItem:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleResponse:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:1729 description:@"should only reach here in the error case."];
  }

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_ERROR, "error syncing folder: %@", &v12, 0xCu);
  }

  objc_storeStrong(&self->super.error, a4);
  [(MFBufferedQueue *)self flush];

  v10 = *MEMORY[0x1E69E9840];
}

@end