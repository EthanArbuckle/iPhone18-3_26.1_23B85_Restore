@interface MFFetchResponseQueue
- (BOOL)addItem:(id)item;
- (BOOL)handleItems:(id)items;
- (MFFetchResponseQueue)init;
- (id)insertMessages:(id)messages;
@end

@implementation MFFetchResponseQueue

- (MFFetchResponseQueue)init
{
  v3.receiver = self;
  v3.super_class = MFFetchResponseQueue;
  return [(MFBufferedQueue *)&v3 initWithMaximumSize:256 latency:1.0];
}

- (id)insertMessages:(id)messages
{
  messagesCopy = messages;
  library = [(MFLibraryStore *)self->_store library];
  persistence = [library persistence];
  messageChangeManager = [persistence messageChangeManager];

  mailbox = [(MFLibraryStore *)self->_store mailbox];
  v9 = [mailbox URL];
  v10 = [messageChangeManager reflectNewMessages:messagesCopy mailboxURL:v9];

  return v10;
}

- (BOOL)handleItems:(id)items
{
  v28 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = [(MFFetchResponseQueue *)self insertMessages:itemsCopy];
  v6 = +[MFActivityMonitor currentMonitor];
  if ([v6 gotNewMessagesState])
  {
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-259200.0];
    [v7 timeIntervalSince1970];
    v9 = v8;

    gotNewMessagesState = [v6 gotNewMessagesState];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v5;
    v22 = v5;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          messageFlags = [v15 messageFlags];
          if ((messageFlags & 1) == 0)
          {
            [v15 dateReceivedAsTimeIntervalSince1970];
            if (v17 > v9)
            {
              if ([v15 conversationFlags])
              {
                gotNewMessagesState = 3;
                goto LABEL_19;
              }

              if (gotNewMessagesState <= 2)
              {
                v18 = 2;
              }

              else
              {
                v18 = gotNewMessagesState;
              }

              if ((messageFlags & 0x1000000) != 0)
              {
                gotNewMessagesState = v18;
              }
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v5 = v22;
    [v6 setGotNewMessagesState:gotNewMessagesState];
  }

  v19 = [v5 count];
  LOBYTE(v19) = [itemsCopy count] == v19;

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)addItem:(id)item
{
  v71 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ([itemCopy responseType] != 17)
  {
    v24 = 1;
    goto LABEL_62;
  }

  context = objc_autoreleasePoolPush();
  fetchResults = [itemCopy fetchResults];
  selfCopy = self;
  v60 = [(MFIMAPConnection *)self->_connection _isFetchResponseValid:itemCopy];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = fetchResults;
  v5 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (!v5)
  {
    v58 = 0;
    v59 = 0;
    v24 = 1;
    firstObject = obj;
    goto LABEL_60;
  }

  modSequenceNumber = 0;
  messageSize = 0;
  uniqueRemoteId = 0;
  v9 = 0;
  v54 = 0;
  messageFlags = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v10 = *v65;
  encoding = 0xFFFFFFFFLL;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v65 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v64 + 1) + 8 * i);
      type = [v13 type];
      if (type > 7)
      {
        if (type > 9)
        {
          if (type == 10)
          {
            messageFlags = [v13 messageFlags];
            encoding = [v13 encoding];
            v56 = 1;
          }

          else if (type == 11)
          {
            modSequenceNumber = [v13 modSequenceNumber];
          }
        }

        else if (type == 8)
        {
          v9 = [v13 uid];
          v54 = 1;
        }

        else
        {
          uniqueRemoteId = [v13 uniqueRemoteId];
        }
      }

      else if (type > 3)
      {
        if ((type == 4 || type == 7) && v60)
        {
          fetchData = [v13 fetchData];
          v18 = [fetchData mutableCopy];

          [v18 mf_convertNetworkLineEndingsToUnix];
          [v18 mf_makeImmutable];
          v19 = v58;
          v58 = v18;
LABEL_27:

          continue;
        }
      }

      else
      {
        if (type == 2)
        {
          internalDate = [v13 internalDate];
          v19 = v59;
          v59 = internalDate;
          goto LABEL_27;
        }

        if (type == 3)
        {
          messageSize = [v13 messageSize];
        }
      }
    }

    v5 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  }

  while (v5);

  if ((v56 & 1) == 0)
  {
    goto LABEL_53;
  }

  if ((([v58 length] != 0) & v54 & v60) != 1 || !-[MFFetchResponseQueue shouldAddUID:](selfCopy, "shouldAddUID:", v9))
  {
    if (v54 & v60)
    {
      serverMessagePersistence = [(MFLibraryIMAPStore *)selfCopy->_store serverMessagePersistence];
      v32 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v9];
      v33 = [serverMessagePersistence serverMessagesForIMAPUIDs:v32 limit:*MEMORY[0x1E699B3A8] returnLastEntries:0];
      firstObject = [v33 firstObject];

      if (!firstObject)
      {
        v24 = 1;
        goto LABEL_60;
      }

      v34 = MFFlagsObjectForFlags(messageFlags);
      v61 = selfCopy->_store;
      v35 = firstObject;
      v22 = v34;
      v36 = MEMORY[0x1E699B300];
      v21 = v35;
      serverFlags = [v35 serverFlags];
      v38 = [v36 changeFrom:serverFlags to:v22];

      if ([v38 hasChanges])
      {
        library = [(MFLibraryStore *)v61 library];
        persistence = [library persistence];
        messageChangeManager = [persistence messageChangeManager];
        remoteID = [v21 remoteID];
        *buf = remoteID;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
        mailbox = [(MFLibraryStore *)v61 mailbox];
        v43 = [mailbox URL];
        [messageChangeManager reflectFlagChanges:v38 forMessagesWithRemoteIDs:v41 mailboxURL:v43];
      }

      if (selfCopy->_isSearching)
      {
        v24 = 1;
        goto LABEL_59;
      }

      library2 = [(MFLibraryStore *)selfCopy->_store library];
      v44 = MEMORY[0x1E696AD98];
      messagePersistentID = [v21 messagePersistentID];
      v46 = [v44 numberWithLongLong:{objc_msgSend(messagePersistentID, "longLongValue")}];
      v68 = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
      [library2 clearServerSearchFlagsForMessagesWithLibraryIDs:v47];

      v24 = 1;
LABEL_58:

      goto LABEL_59;
    }

LABEL_53:
    v24 = 1;
    goto LABEL_61;
  }

  v21 = [objc_alloc(MEMORY[0x1E69AD6F8]) initWithHeaderData:v58 encoding:encoding];
  v22 = [[MFIMAPMessageWithCache alloc] initWithFlags:messageFlags size:messageSize uid:v9];
  [v59 timeIntervalSince1970];
  [(MFIMAPMessageWithCache *)v22 setDateReceivedAsTimeIntervalSince1970:?];
  if (encoding != -1)
  {
    [(MFIMAPMessage *)v22 setPreferredEncoding:encoding];
  }

  [(MFIMAPMessage *)v22 setUniqueRemoteId:uniqueRemoteId];
  [(MFMailMessage *)v22 loadCachedHeaderValuesFromHeaders:v21];
  [(MFIMAPMessageWithCache *)v22 setHeaders:v21];
  [(MFIMAPMessageWithCache *)v22 setMessageStore:selfCopy->_store];
  if (selfCopy->_highestModSequence <= modSequenceNumber)
  {
    highestModSequence = modSequenceNumber;
  }

  else
  {
    highestModSequence = selfCopy->_highestModSequence;
  }

  [(MFMailMessage *)v22 setModSequenceNumber:highestModSequence];
  v63.receiver = selfCopy;
  v63.super_class = MFFetchResponseQueue;
  v24 = [(MFBufferedQueue *)&v63 addItem:v22];
  v25 = MFLogGeneral();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    subject = [(MFIMAPMessageWithCache *)v22 subject];
    *buf = 138412290;
    *&buf[4] = subject;
    _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_INFO, "#Power [New Message] subject=%@;", buf, 0xCu);
  }

  newMessageCount = selfCopy->_newMessageCount;
  selfCopy->_newMessageCount = newMessageCount + 1;
  numNewUIDs = selfCopy->_numNewUIDs;
  if (newMessageCount + 1 <= numNewUIDs)
  {
    library2 = +[MFActivityMonitor currentMonitor];
    [library2 setCurrentCount:selfCopy->_newMessageCount];
    if ((messageFlags & 1) == 0)
    {
      [library2 setGotNewMessagesState:1];
    }

    goto LABEL_58;
  }

  if (newMessageCount == numNewUIDs)
  {
    library2 = +[MFActivityMonitor currentMonitor];
    [library2 reset];
    goto LABEL_58;
  }

LABEL_59:

  firstObject = v21;
LABEL_60:

LABEL_61:
  objc_autoreleasePoolPop(context);
LABEL_62:

  v48 = *MEMORY[0x1E69E9840];
  return v24;
}

@end