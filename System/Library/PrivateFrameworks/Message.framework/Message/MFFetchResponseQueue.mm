@interface MFFetchResponseQueue
- (BOOL)addItem:(id)a3;
- (BOOL)handleItems:(id)a3;
- (MFFetchResponseQueue)init;
- (id)insertMessages:(id)a3;
@end

@implementation MFFetchResponseQueue

- (MFFetchResponseQueue)init
{
  v3.receiver = self;
  v3.super_class = MFFetchResponseQueue;
  return [(MFBufferedQueue *)&v3 initWithMaximumSize:256 latency:1.0];
}

- (id)insertMessages:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryStore *)self->_store library];
  v6 = [v5 persistence];
  v7 = [v6 messageChangeManager];

  v8 = [(MFLibraryStore *)self->_store mailbox];
  v9 = [v8 URL];
  v10 = [v7 reflectNewMessages:v4 mailboxURL:v9];

  return v10;
}

- (BOOL)handleItems:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MFFetchResponseQueue *)self insertMessages:v4];
  v6 = +[MFActivityMonitor currentMonitor];
  if ([v6 gotNewMessagesState])
  {
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-259200.0];
    [v7 timeIntervalSince1970];
    v9 = v8;

    v10 = [v6 gotNewMessagesState];
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
          v16 = [v15 messageFlags];
          if ((v16 & 1) == 0)
          {
            [v15 dateReceivedAsTimeIntervalSince1970];
            if (v17 > v9)
            {
              if ([v15 conversationFlags])
              {
                v10 = 3;
                goto LABEL_19;
              }

              if (v10 <= 2)
              {
                v18 = 2;
              }

              else
              {
                v18 = v10;
              }

              if ((v16 & 0x1000000) != 0)
              {
                v10 = v18;
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
    [v6 setGotNewMessagesState:v10];
  }

  v19 = [v5 count];
  LOBYTE(v19) = [v4 count] == v19;

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)addItem:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v52 = a3;
  if ([v52 responseType] != 17)
  {
    v24 = 1;
    goto LABEL_62;
  }

  context = objc_autoreleasePoolPush();
  v4 = [v52 fetchResults];
  v50 = self;
  v60 = [(MFIMAPConnection *)self->_connection _isFetchResponseValid:v52];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (!v5)
  {
    v58 = 0;
    v59 = 0;
    v24 = 1;
    v30 = obj;
    goto LABEL_60;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v54 = 0;
  v53 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v10 = *v65;
  v11 = 0xFFFFFFFFLL;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v65 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v64 + 1) + 8 * i);
      v14 = [v13 type];
      if (v14 > 7)
      {
        if (v14 > 9)
        {
          if (v14 == 10)
          {
            v53 = [v13 messageFlags];
            v11 = [v13 encoding];
            v56 = 1;
          }

          else if (v14 == 11)
          {
            v6 = [v13 modSequenceNumber];
          }
        }

        else if (v14 == 8)
        {
          v9 = [v13 uid];
          v54 = 1;
        }

        else
        {
          v8 = [v13 uniqueRemoteId];
        }
      }

      else if (v14 > 3)
      {
        if ((v14 == 4 || v14 == 7) && v60)
        {
          v17 = [v13 fetchData];
          v18 = [v17 mutableCopy];

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
        if (v14 == 2)
        {
          v20 = [v13 internalDate];
          v19 = v59;
          v59 = v20;
          goto LABEL_27;
        }

        if (v14 == 3)
        {
          v7 = [v13 messageSize];
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

  if ((([v58 length] != 0) & v54 & v60) != 1 || !-[MFFetchResponseQueue shouldAddUID:](v50, "shouldAddUID:", v9))
  {
    if (v54 & v60)
    {
      v31 = [(MFLibraryIMAPStore *)v50->_store serverMessagePersistence];
      v32 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v9];
      v33 = [v31 serverMessagesForIMAPUIDs:v32 limit:*MEMORY[0x1E699B3A8] returnLastEntries:0];
      v30 = [v33 firstObject];

      if (!v30)
      {
        v24 = 1;
        goto LABEL_60;
      }

      v34 = MFFlagsObjectForFlags(v53);
      v61 = v50->_store;
      v35 = v30;
      v22 = v34;
      v36 = MEMORY[0x1E699B300];
      v21 = v35;
      v37 = [v35 serverFlags];
      v38 = [v36 changeFrom:v37 to:v22];

      if ([v38 hasChanges])
      {
        v57 = [(MFLibraryStore *)v61 library];
        v55 = [v57 persistence];
        v39 = [v55 messageChangeManager];
        v40 = [v21 remoteID];
        *buf = v40;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
        v42 = [(MFLibraryStore *)v61 mailbox];
        v43 = [v42 URL];
        [v39 reflectFlagChanges:v38 forMessagesWithRemoteIDs:v41 mailboxURL:v43];
      }

      if (v50->_isSearching)
      {
        v24 = 1;
        goto LABEL_59;
      }

      v29 = [(MFLibraryStore *)v50->_store library];
      v44 = MEMORY[0x1E696AD98];
      v45 = [v21 messagePersistentID];
      v46 = [v44 numberWithLongLong:{objc_msgSend(v45, "longLongValue")}];
      v68 = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
      [v29 clearServerSearchFlagsForMessagesWithLibraryIDs:v47];

      v24 = 1;
LABEL_58:

      goto LABEL_59;
    }

LABEL_53:
    v24 = 1;
    goto LABEL_61;
  }

  v21 = [objc_alloc(MEMORY[0x1E69AD6F8]) initWithHeaderData:v58 encoding:v11];
  v22 = [[MFIMAPMessageWithCache alloc] initWithFlags:v53 size:v7 uid:v9];
  [v59 timeIntervalSince1970];
  [(MFIMAPMessageWithCache *)v22 setDateReceivedAsTimeIntervalSince1970:?];
  if (v11 != -1)
  {
    [(MFIMAPMessage *)v22 setPreferredEncoding:v11];
  }

  [(MFIMAPMessage *)v22 setUniqueRemoteId:v8];
  [(MFMailMessage *)v22 loadCachedHeaderValuesFromHeaders:v21];
  [(MFIMAPMessageWithCache *)v22 setHeaders:v21];
  [(MFIMAPMessageWithCache *)v22 setMessageStore:v50->_store];
  if (v50->_highestModSequence <= v6)
  {
    highestModSequence = v6;
  }

  else
  {
    highestModSequence = v50->_highestModSequence;
  }

  [(MFMailMessage *)v22 setModSequenceNumber:highestModSequence];
  v63.receiver = v50;
  v63.super_class = MFFetchResponseQueue;
  v24 = [(MFBufferedQueue *)&v63 addItem:v22];
  v25 = MFLogGeneral();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [(MFIMAPMessageWithCache *)v22 subject];
    *buf = 138412290;
    *&buf[4] = v26;
    _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_INFO, "#Power [New Message] subject=%@;", buf, 0xCu);
  }

  newMessageCount = v50->_newMessageCount;
  v50->_newMessageCount = newMessageCount + 1;
  numNewUIDs = v50->_numNewUIDs;
  if (newMessageCount + 1 <= numNewUIDs)
  {
    v29 = +[MFActivityMonitor currentMonitor];
    [v29 setCurrentCount:v50->_newMessageCount];
    if ((v53 & 1) == 0)
    {
      [v29 setGotNewMessagesState:1];
    }

    goto LABEL_58;
  }

  if (newMessageCount == numNewUIDs)
  {
    v29 = +[MFActivityMonitor currentMonitor];
    [v29 reset];
    goto LABEL_58;
  }

LABEL_59:

  v30 = v21;
LABEL_60:

LABEL_61:
  objc_autoreleasePoolPop(context);
LABEL_62:

  v48 = *MEMORY[0x1E69E9840];
  return v24;
}

@end