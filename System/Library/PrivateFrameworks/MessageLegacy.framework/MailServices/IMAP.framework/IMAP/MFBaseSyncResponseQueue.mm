@interface MFBaseSyncResponseQueue
- (BOOL)handleItems:(id)a3;
- (MFBaseSyncResponseQueue)init;
- (id)sequenceIdentifierForItem:(id)a3;
- (void)dealloc;
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
  currentUID = self->_currentUID;
  v6 = -[MFBaseSyncResponseQueue uidForItem:](self, "uidForItem:", [a3 lastObject]);
  self->_currentUID = v6;
  libraryDetails = self->_libraryDetails;
  if (!libraryDetails)
  {
    if (currentUID + 1 < v6)
    {
      v8 = currentUID + 1;
    }

    else
    {
      v8 = v6;
    }

    libraryDetails = [-[MFLibraryStore library](self->_store "library")];
  }

  v9 = [a3 count];
  v10 = [(NSArray *)libraryDetails count];
  v11 = v10;
  v37 = v9;
  if (!v9)
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v12 = [a3 objectAtIndex:0];
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_8:
  v13 = [(NSArray *)libraryDetails objectAtIndex:0];
LABEL_11:
  v14 = v12 != 0;
  v15 = v13 != 0;
  if (!(v12 | v13))
  {
    return 1;
  }

  v35 = a3;
  v36 = libraryDetails;
  v16 = 0;
  v17 = 0;
  v34 = 0;
  do
  {
    v18 = [(MFBaseSyncResponseQueue *)self uidForItem:v12];
    v19 = [v13 uid];
    v20 = v19;
    if (v14 && v15 && v18 == v19)
    {
      if ([(MFBaseSyncResponseQueue *)self shouldSyncFlags])
      {
        store = self->_store;
        v22 = *(v13 + *MEMORY[0x277D28508]);
        v23 = [(MFBaseSyncResponseQueue *)self flagsForItem:v12];
        connection = self->_connection;
        isSearching = self->_isSearching;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __39__MFBaseSyncResponseQueue_handleItems___block_invoke;
        v38[3] = &unk_2798B1D90;
        v38[4] = self;
        v38[5] = v13;
        _syncFlags(store, v20, v22, v23, connection, isSearching, v38);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [(MFBaseSyncResponseQueue *)self sequenceIdentifierForItem:v12];
        if ([v26 length])
        {
          v27 = [(MFLibraryStore *)self->_store library];
          [v27 setSequenceIdentifier:v26 forMessageWithLibraryID:*(v13 + *MEMORY[0x277D28500])];
        }
      }

      if (++v16 >= v37)
      {
        v12 = 0;
      }

      else
      {
        v12 = [v35 objectAtIndex:v16];
      }

      goto LABEL_39;
    }

    if (!v14)
    {
      if (!v15)
      {
        v12 = 0;
LABEL_42:
        v13 = 0;
        goto LABEL_43;
      }

LABEL_33:
      if (self->_shouldCompact)
      {
        v29 = [(MFLibraryStore *)self->_store library];
        v30 = [v29 messageWithLibraryID:*(v13 + *MEMORY[0x277D28500]) options:0 inMailbox:0];
        if (v30)
        {
          v31 = v30;
          v32 = v34;
          if (!v34)
          {
            v32 = [MEMORY[0x277CBEB18] array];
          }

          v34 = v32;
          [v32 addObject:v31];
        }
      }

LABEL_39:
      if (++v17 < v11)
      {
        v13 = [(NSArray *)v36 objectAtIndex:v17];
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v15 && v18 >= v19)
    {
      goto LABEL_33;
    }

    if (self->_shouldFetch && ([(MFBaseSyncResponseQueue *)self flagsForItem:v12]& 2) == 0)
    {
      missingUIDs = self->_missingUIDs;
      if (!missingUIDs)
      {
        missingUIDs = objc_alloc_init(MEMORY[0x277CBEB18]);
        self->_missingUIDs = missingUIDs;
      }

      -[NSMutableArray addObject:](missingUIDs, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18]);
    }

    if (++v16 >= v37)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v35 objectAtIndex:v16];
    }

LABEL_43:
    v14 = v12 != 0;
    v15 = v13 != 0;
  }

  while (v12 | v13);
  if (v34)
  {
    [-[MFLibraryStore library](self->_store "library")];
  }

  return 1;
}

uint64_t __39__MFBaseSyncResponseQueue_handleItems___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) library];
  v3 = *(*(a1 + 40) + *MEMORY[0x277D28500]);

  return [v2 messageWithLibraryID:v3 options:399 inMailbox:0];
}

- (id)sequenceIdentifierForItem:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MFBaseSyncResponseQueue sequenceIdentifierForItem:];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(a3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if ([v8 type] == 11)
        {
          v9 = [v8 modSequenceNumber];
          if (v9 == 0x7FFFFFFFFFFFFFFFLL)
          {
            result = 0;
          }

          else
          {
            result = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v9];
          }

          goto LABEL_14;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFBaseSyncResponseQueue;
  [(MFBufferedQueue *)&v3 dealloc];
}

@end