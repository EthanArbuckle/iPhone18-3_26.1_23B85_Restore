@interface MFBaseSyncResponseQueue
- (BOOL)handleItems:(id)items;
- (MFBaseSyncResponseQueue)init;
- (id)sequenceIdentifierForItem:(id)item;
- (unint64_t)flagsForItem:(id)item;
- (unint64_t)uidForItem:(id)item;
@end

@implementation MFBaseSyncResponseQueue

- (MFBaseSyncResponseQueue)init
{
  v3.receiver = self;
  v3.super_class = MFBaseSyncResponseQueue;
  return [(MFBufferedQueue *)&v3 initWithMaximumSize:256 latency:1.0];
}

- (BOOL)handleItems:(id)items
{
  v72[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __39__MFBaseSyncResponseQueue_handleItems___block_invoke;
  v71[3] = &unk_1E7AA50A0;
  selfCopy = self;
  v71[4] = self;
  v63 = [itemsCopy sortedArrayUsingComparator:v71];

  currentUID = self->_currentUID;
  lastObject = [v63 lastObject];
  v7 = [(MFBaseSyncResponseQueue *)self uidForItem:lastObject];

  selfCopy->_currentUID = v7;
  if (currentUID + 1 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = currentUID + 1;
  }

  serverMessages = selfCopy->_serverMessages;
  if (serverMessages)
  {
    v69 = serverMessages;
  }

  else
  {
    library = [(MFLibraryStore *)selfCopy->_store library];
    persistence = [library persistence];
    serverMessagePersistenceFactory = [persistence serverMessagePersistenceFactory];
    mailbox = [(MFLibraryStore *)selfCopy->_store mailbox];
    v14 = [mailbox URL];
    v15 = [serverMessagePersistenceFactory serverMessagePersistenceForMailboxURL:v14];

    v16 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v8, v7 - v8 + 1}];
    v69 = [v15 serverMessagesForIMAPUIDs:v16 limit:*MEMORY[0x1E699B3A8] returnLastEntries:0];
  }

  v65 = [v63 count];
  v66 = [(NSArray *)v69 count];
  if (v65)
  {
    v17 = [v63 objectAtIndex:0];
  }

  else
  {
    v17 = 0;
  }

  if (v66)
  {
    v18 = [(NSArray *)v69 objectAtIndex:0];
  }

  else
  {
    v18 = 0;
  }

  v61 = objc_opt_new();
  v19 = v17 != 0;
  v20 = v18 != 0;
  if (v17 | v18)
  {
    array = 0;
    v67 = 0;
    v68 = 0;
    while (1)
    {
      v21 = [(MFBaseSyncResponseQueue *)selfCopy uidForItem:v17];
      imapUID = [v18 imapUID];
      if (v19 && v69 != 0 && v21 == imapUID)
      {
        break;
      }

      if (v19)
      {
        if (!v20 || v21 < imapUID)
        {
          if (selfCopy->_shouldFetch && ([(MFBaseSyncResponseQueue *)selfCopy flagsForItem:v17]& 2) == 0)
          {
            missingUIDs = selfCopy->_missingUIDs;
            if (!missingUIDs)
            {
              v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v26 = selfCopy->_missingUIDs;
              selfCopy->_missingUIDs = v25;

              missingUIDs = selfCopy->_missingUIDs;
            }

            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
            [(NSMutableArray *)missingUIDs addObject:v27];
          }

          if (++v67 >= v65)
          {
            v28 = 0;
          }

          else
          {
            v28 = [v63 objectAtIndex:?];
          }

          v50 = v17;
          goto LABEL_56;
        }

LABEL_40:
        if (selfCopy->_shouldCompact)
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          remoteID = [v18 remoteID];
          [array addObject:remoteID];
        }

        if (++v68 < v66)
        {
          v49 = [(NSArray *)v69 objectAtIndex:?];
          v50 = v18;
          v28 = v17;
          goto LABEL_49;
        }

        v50 = v18;
        v28 = v17;
LABEL_53:
        v18 = 0;
        goto LABEL_56;
      }

      if (v20)
      {
        goto LABEL_40;
      }

      v28 = 0;
      v18 = 0;
LABEL_57:
      v19 = v28 != 0;
      v20 = v18 != 0;
      v17 = v28;
      if (!(v28 | v18))
      {
        goto LABEL_60;
      }
    }

    if ([(MFBaseSyncResponseQueue *)selfCopy shouldSyncFlags])
    {
      store = selfCopy->_store;
      v30 = MFFlagsObjectForFlags([(MFBaseSyncResponseQueue *)selfCopy flagsForItem:v17]);
      v31 = store;
      v32 = v18;
      v33 = v30;
      v34 = MEMORY[0x1E699B300];
      v64 = v32;
      serverFlags = [v32 serverFlags];
      v36 = [v34 changeFrom:serverFlags to:v33];

      if ([v36 hasChanges])
      {
        library2 = [(MFLibraryStore *)v31 library];
        persistence2 = [library2 persistence];
        messageChangeManager = [persistence2 messageChangeManager];
        remoteID2 = [v64 remoteID];
        v72[0] = remoteID2;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
        mailbox2 = [(MFLibraryStore *)v31 mailbox];
        v41 = [mailbox2 URL];
        [messageChangeManager reflectFlagChanges:v36 forMessagesWithRemoteIDs:v39 mailboxURL:v41];
      }

      if (!selfCopy->_isSearching)
      {
        v42 = MEMORY[0x1E696AD98];
        messagePersistentID = [v64 messagePersistentID];
        v44 = [v42 numberWithLongLong:{objc_msgSend(messagePersistentID, "longLongValue")}];
        [v61 addObject:v44];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [(MFBaseSyncResponseQueue *)selfCopy sequenceIdentifierForItem:v17];
      if ([v45 length])
      {
        library3 = [(MFLibraryStore *)selfCopy->_store library];
        messagePersistentID2 = [v18 messagePersistentID];
        [library3 setSequenceIdentifier:v45 forMessageWithLibraryID:{objc_msgSend(messagePersistentID2, "longLongValue")}];
      }
    }

    if (++v67 >= v65)
    {
      v28 = 0;
    }

    else
    {
      v28 = [v63 objectAtIndex:?];
    }

    if (++v68 >= v66)
    {
      v50 = v18;
      goto LABEL_53;
    }

    v49 = [(NSArray *)v69 objectAtIndex:?];
    v50 = v18;
LABEL_49:
    v18 = v49;
LABEL_56:

    goto LABEL_57;
  }

  array = 0;
LABEL_60:
  if ([v61 count])
  {
    library4 = [(MFLibraryStore *)selfCopy->_store library];
    [library4 clearServerSearchFlagsForMessagesWithLibraryIDs:v61];
  }

  if (array)
  {
    library5 = [(MFLibraryStore *)selfCopy->_store library];
    persistence3 = [library5 persistence];
    messageChangeManager2 = [persistence3 messageChangeManager];
    mailbox3 = [(MFLibraryStore *)selfCopy->_store mailbox];
    v56 = [mailbox3 URL];
    [messageChangeManager2 reflectDeletedMessagesWithRemoteIDs:array mailboxURL:v56];
  }

  v57 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __39__MFBaseSyncResponseQueue_handleItems___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) uidForItem:a2];
  v7 = [*(a1 + 32) uidForItem:v5];
  v8 = -1;
  if (v6 >= v7)
  {
    v8 = 1;
  }

  if (v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (unint64_t)uidForItem:(id)item
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  itemCopy = item;
  v4 = [itemCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(itemCopy);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 type] == 8)
        {
          v8 = [v7 uid];
          goto LABEL_11;
        }
      }

      v4 = [itemCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unint64_t)flagsForItem:(id)item
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemCopy = item;
  messageFlags = [itemCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (messageFlags)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != messageFlags; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(itemCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 type] == 10)
        {
          messageFlags = [v7 messageFlags];
          goto LABEL_11;
        }
      }

      messageFlags = [itemCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (messageFlags)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return messageFlags;
}

- (id)sequenceIdentifierForItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFBaseSyncResponseQueue sequenceIdentifierForItem:]", "MFBaseSyncResponseQueue.m", 167, "[item isKindOfClass:[NSArray class]]");
  }

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = itemCopy;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      if ([v8 type] == 11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    modSequenceNumber = [v8 modSequenceNumber];

    if (modSequenceNumber == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", modSequenceNumber];
  }

  else
  {
LABEL_10:

LABEL_12:
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end