@interface MFBaseSyncResponseQueue
- (BOOL)handleItems:(id)a3;
- (MFBaseSyncResponseQueue)init;
- (id)sequenceIdentifierForItem:(id)a3;
- (unint64_t)flagsForItem:(id)a3;
- (unint64_t)uidForItem:(id)a3;
@end

@implementation MFBaseSyncResponseQueue

- (MFBaseSyncResponseQueue)init
{
  v3.receiver = self;
  v3.super_class = MFBaseSyncResponseQueue;
  return [(MFBufferedQueue *)&v3 initWithMaximumSize:256 latency:1.0];
}

- (BOOL)handleItems:(id)a3
{
  v72[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __39__MFBaseSyncResponseQueue_handleItems___block_invoke;
  v71[3] = &unk_1E7AA50A0;
  v70 = self;
  v71[4] = self;
  v63 = [v4 sortedArrayUsingComparator:v71];

  currentUID = self->_currentUID;
  v6 = [v63 lastObject];
  v7 = [(MFBaseSyncResponseQueue *)self uidForItem:v6];

  v70->_currentUID = v7;
  if (currentUID + 1 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = currentUID + 1;
  }

  serverMessages = v70->_serverMessages;
  if (serverMessages)
  {
    v69 = serverMessages;
  }

  else
  {
    v10 = [(MFLibraryStore *)v70->_store library];
    v11 = [v10 persistence];
    v12 = [v11 serverMessagePersistenceFactory];
    v13 = [(MFLibraryStore *)v70->_store mailbox];
    v14 = [v13 URL];
    v15 = [v12 serverMessagePersistenceForMailboxURL:v14];

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
    v62 = 0;
    v67 = 0;
    v68 = 0;
    while (1)
    {
      v21 = [(MFBaseSyncResponseQueue *)v70 uidForItem:v17];
      v22 = [v18 imapUID];
      if (v19 && v69 != 0 && v21 == v22)
      {
        break;
      }

      if (v19)
      {
        if (!v20 || v21 < v22)
        {
          if (v70->_shouldFetch && ([(MFBaseSyncResponseQueue *)v70 flagsForItem:v17]& 2) == 0)
          {
            missingUIDs = v70->_missingUIDs;
            if (!missingUIDs)
            {
              v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v26 = v70->_missingUIDs;
              v70->_missingUIDs = v25;

              missingUIDs = v70->_missingUIDs;
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
        if (v70->_shouldCompact)
        {
          if (!v62)
          {
            v62 = [MEMORY[0x1E695DF70] array];
          }

          v48 = [v18 remoteID];
          [v62 addObject:v48];
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

    if ([(MFBaseSyncResponseQueue *)v70 shouldSyncFlags])
    {
      store = v70->_store;
      v30 = MFFlagsObjectForFlags([(MFBaseSyncResponseQueue *)v70 flagsForItem:v17]);
      v31 = store;
      v32 = v18;
      v33 = v30;
      v34 = MEMORY[0x1E699B300];
      v64 = v32;
      v35 = [v32 serverFlags];
      v36 = [v34 changeFrom:v35 to:v33];

      if ([v36 hasChanges])
      {
        v60 = [(MFLibraryStore *)v31 library];
        v59 = [v60 persistence];
        v37 = [v59 messageChangeManager];
        v38 = [v64 remoteID];
        v72[0] = v38;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
        v40 = [(MFLibraryStore *)v31 mailbox];
        v41 = [v40 URL];
        [v37 reflectFlagChanges:v36 forMessagesWithRemoteIDs:v39 mailboxURL:v41];
      }

      if (!v70->_isSearching)
      {
        v42 = MEMORY[0x1E696AD98];
        v43 = [v64 messagePersistentID];
        v44 = [v42 numberWithLongLong:{objc_msgSend(v43, "longLongValue")}];
        [v61 addObject:v44];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [(MFBaseSyncResponseQueue *)v70 sequenceIdentifierForItem:v17];
      if ([v45 length])
      {
        v46 = [(MFLibraryStore *)v70->_store library];
        v47 = [v18 messagePersistentID];
        [v46 setSequenceIdentifier:v45 forMessageWithLibraryID:{objc_msgSend(v47, "longLongValue")}];
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

  v62 = 0;
LABEL_60:
  if ([v61 count])
  {
    v51 = [(MFLibraryStore *)v70->_store library];
    [v51 clearServerSearchFlagsForMessagesWithLibraryIDs:v61];
  }

  if (v62)
  {
    v52 = [(MFLibraryStore *)v70->_store library];
    v53 = [v52 persistence];
    v54 = [v53 messageChangeManager];
    v55 = [(MFLibraryStore *)v70->_store mailbox];
    v56 = [v55 URL];
    [v54 reflectDeletedMessagesWithRemoteIDs:v62 mailboxURL:v56];
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

- (unint64_t)uidForItem:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 type] == 8)
        {
          v8 = [v7 uid];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (unint64_t)flagsForItem:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 type] == 10)
        {
          v4 = [v7 messageFlags];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)sequenceIdentifierForItem:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[MFBaseSyncResponseQueue sequenceIdentifierForItem:]", "MFBaseSyncResponseQueue.m", 167, "[item isKindOfClass:[NSArray class]]");
  }

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
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

    v9 = [v8 modSequenceNumber];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v9];
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