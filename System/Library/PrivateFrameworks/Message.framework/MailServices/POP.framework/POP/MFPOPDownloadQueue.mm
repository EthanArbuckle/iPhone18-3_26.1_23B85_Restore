@interface MFPOPDownloadQueue
- (BOOL)addItem:(id)item;
- (BOOL)handleItems:(id)items;
- (MFPOPDownloadQueue)init;
@end

@implementation MFPOPDownloadQueue

- (MFPOPDownloadQueue)init
{
  v3.receiver = self;
  v3.super_class = MFPOPDownloadQueue;
  return [(MFBufferedQueue *)&v3 initWithMaximumSize:0x20000 latency:5.0];
}

- (BOOL)addItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (self->startDate)
  {
    dateReceived = [itemCopy dateReceived];
    if ([dateReceived compare:self->startDate] == -1)
    {
      [(MFBufferedQueue *)self flush];

      v11 = 0;
      goto LABEL_9;
    }
  }

  store = [(MFMailboxUid *)self->_mailbox store];
  [v5 setMessageStore:store];

  uidStore = self->_uidStore;
  if (uidStore)
  {
    messageID = [v5 messageID];
    v10 = [(MFSqliteMessageIDStore *)uidStore flagsForUID:messageID];

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

- (BOOL)handleItems:(id)items
{
  v35 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x277D070E8]);
  persistence = [(MFMailMessageLibrary *)self->_library persistence];
  hookRegistry = [persistence hookRegistry];

  [hookRegistry persistenceWillBeginUpdates];
  v8 = [(MFMailMessageLibrary *)self->_library addMessages:itemsCopy withMailbox:self->_mailbox newMessagesByOldMessage:0 remoteIDs:0 setFlags:0 addPOPUIDs:1 dataSectionsByMessage:0 generationWindow:v5];
  if ([v8 count])
  {
    [hookRegistry persistenceDidAddMessages:v8 generationWindow:v5];
    persistence2 = [(MFMailMessageLibrary *)self->_library persistence];
    messageChangeManager = [persistence2 messageChangeManager];
    [messageChangeManager didReflectNewMessages:v8];
  }

  [hookRegistry persistenceDidFinishUpdates];
  currentMonitor = [MEMORY[0x277D281F0] currentMonitor];
  if ([currentMonitor gotNewMessagesState])
  {
    v27 = hookRegistry;
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-259200.0];
    [v12 timeIntervalSince1970];
    v14 = v13;

    gotNewMessagesState = [currentMonitor gotNewMessagesState];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v8;
    v28 = v5;
    v29 = itemsCopy;
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
          messageFlags = [v20 messageFlags];
          if ((messageFlags & 1) == 0)
          {
            [v20 dateReceivedAsTimeIntervalSince1970];
            if (v22 > v14)
            {
              if ([v20 conversationFlags])
              {
                gotNewMessagesState = 3;
                goto LABEL_21;
              }

              if (gotNewMessagesState <= 2)
              {
                v23 = 2;
              }

              else
              {
                v23 = gotNewMessagesState;
              }

              if ((messageFlags & 0x1000000) != 0)
              {
                gotNewMessagesState = v23;
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
    itemsCopy = v29;
    hookRegistry = v27;
    [currentMonitor setGotNewMessagesState:gotNewMessagesState];
  }

  v24 = [itemsCopy count];
  LOBYTE(v24) = v24 == [v8 count];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

@end