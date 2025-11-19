@interface MFPOPDownloadQueue
- (BOOL)addItem:(id)a3;
- (BOOL)handleItems:(id)a3;
- (MFPOPDownloadQueue)init;
@end

@implementation MFPOPDownloadQueue

- (MFPOPDownloadQueue)init
{
  v3.receiver = self;
  v3.super_class = MFPOPDownloadQueue;
  return [(MFBufferedQueue *)&v3 initWithMaximumSize:0x20000 latency:5.0];
}

- (BOOL)addItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->startDate)
  {
    v6 = [v4 dateReceived];
    if ([v6 compare:self->startDate] == -1)
    {
      [(MFBufferedQueue *)self flush];

      v11 = 0;
      goto LABEL_9;
    }
  }

  v7 = [(MFMailboxUid *)self->_mailbox store];
  [v5 setMessageStore:v7];

  uidStore = self->_uidStore;
  if (uidStore)
  {
    v9 = [v5 messageID];
    v10 = [(MFSqliteMessageIDStore *)uidStore flagsForUID:v9];

    if (v10)
    {
      [v5 setMessageFlags:v10];
    }
  }

  v13.receiver = self;
  v13.super_class = MFPOPDownloadQueue;
  [(MFBufferedQueue *)&v13 addItem:v5];
  v11 = 1;
LABEL_9:

  return v11;
}

- (BOOL)handleItems:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D070E8]);
  v6 = [(MFMailMessageLibrary *)self->_library persistence];
  v7 = [v6 hookRegistry];

  [v7 persistenceWillBeginUpdates];
  v8 = [(MFMailMessageLibrary *)self->_library addMessages:v4 withMailbox:self->_mailbox newMessagesByOldMessage:0 remoteIDs:0 setFlags:0 addPOPUIDs:1 dataSectionsByMessage:0 generationWindow:v5];
  if ([v8 count])
  {
    [v7 persistenceDidAddMessages:v8 generationWindow:v5];
    v9 = [(MFMailMessageLibrary *)self->_library persistence];
    v10 = [v9 messageChangeManager];
    [v10 didReflectNewMessages:v8];
  }

  [v7 persistenceDidFinishUpdates];
  v11 = [MEMORY[0x277D281F0] currentMonitor];
  if ([v11 gotNewMessagesState])
  {
    v27 = v7;
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-259200.0];
    [v12 timeIntervalSince1970];
    v14 = v13;

    v15 = [v11 gotNewMessagesState];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v8;
    v28 = v5;
    v29 = v4;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = *v31;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v21 = [v20 messageFlags];
          if ((v21 & 1) == 0)
          {
            [v20 dateReceivedAsTimeIntervalSince1970];
            if (v22 > v14)
            {
              if ([v20 conversationFlags])
              {
                v15 = 3;
                goto LABEL_21;
              }

              if (v15 <= 2)
              {
                v23 = 2;
              }

              else
              {
                v23 = v15;
              }

              if ((v21 & 0x1000000) != 0)
              {
                v15 = v23;
              }
            }
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    v5 = v28;
    v4 = v29;
    v7 = v27;
    [v11 setGotNewMessagesState:v15];
  }

  v24 = [v4 count];
  LOBYTE(v24) = v24 == [v8 count];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

@end