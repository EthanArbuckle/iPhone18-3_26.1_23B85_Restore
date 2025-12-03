@interface MFFetchResponseQueue
- (BOOL)addItem:(id)item;
- (BOOL)handleItems:(id)items;
- (MFFetchResponseQueue)init;
- (void)dealloc;
@end

@implementation MFFetchResponseQueue

- (MFFetchResponseQueue)init
{
  v3.receiver = self;
  v3.super_class = MFFetchResponseQueue;
  return [(MFBufferedQueue *)&v3 initWithMaximumSize:256 latency:1.0];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFFetchResponseQueue;
  [(MFBufferedQueue *)&v2 dealloc];
}

- (BOOL)handleItems:(id)items
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [(MFFetchResponseQueue *)self insertMessages:?];
  currentMonitor = [MEMORY[0x277D283F8] currentMonitor];
  if ([currentMonitor gotNewMessagesState])
  {
    [objc_msgSend(MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{-259200.0), "timeIntervalSince1970"}];
    v7 = v6;
    gotNewMessagesState = [currentMonitor gotNewMessagesState];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v4);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          messageFlags = [v13 messageFlags];
          if ((messageFlags & 1) == 0)
          {
            [v13 dateReceivedAsTimeIntervalSince1970];
            if (v15 > v7)
            {
              if ([v13 conversationFlags])
              {
                gotNewMessagesState = 3;
                goto LABEL_19;
              }

              if (gotNewMessagesState <= 2)
              {
                v16 = 2;
              }

              else
              {
                v16 = gotNewMessagesState;
              }

              if ((messageFlags & 0x1000000) != 0)
              {
                gotNewMessagesState = v16;
              }
            }
          }
        }

        v10 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
    [currentMonitor setGotNewMessagesState:gotNewMessagesState];
  }

  v17 = [v4 count];
  result = [items count] == v17;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)addItem:(id)item
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = 1;
  if ([item responseType] == 17)
  {
    v6 = MEMORY[0x259C959F0](1);
    fetchResults = [item fetchResults];
    v8 = [(MFIMAPConnection *)self->_connection _isFetchResponseValid:item];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = [fetchResults countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v9)
    {
      v10 = v9;
      selfCopy = self;
      v40 = v6;
      customFlagsArray = 0;
      uniqueRemoteId = 0;
      modSequenceNumber = 0;
      messageSize = 0;
      internalDate = 0;
      v11 = 0;
      v12 = 0;
      messageFlags = 0;
      v47 = 0;
      v13 = 0;
      v14 = *v51;
      encoding = 0xFFFFFFFFLL;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(fetchResults);
          }

          v17 = *(*(&v50 + 1) + 8 * i);
          type = [v17 type];
          if (type <= 7)
          {
            if (type == 2)
            {
              internalDate = [v17 internalDate];
            }

            else if (type == 3)
            {
              messageSize = [v17 messageSize];
            }

            else if (type == 4 && v8)
            {
              v20 = [objc_msgSend(v17 "fetchData")];
              [v20 mf_convertNetworkLineEndingsToUnix];
              [v20 mf_makeImmutable];
              if (v47)
              {
              }

              v47 = v20;
            }
          }

          else if (type > 9)
          {
            if (type == 10)
            {
              messageFlags = [v17 messageFlags];
              encoding = [v17 encoding];
              customFlagsArray = [v17 customFlagsArray];
              v13 = 1;
            }

            else if (type == 11)
            {
              modSequenceNumber = [v17 modSequenceNumber];
            }
          }

          else if (type == 8)
          {
            v11 = [v17 uid];
            v12 = 1;
          }

          else
          {
            uniqueRemoteId = [v17 uniqueRemoteId];
          }
        }

        v10 = [fetchResults countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v10);
      if (v13)
      {
        v21 = v12 & v8;
        if ((([v47 length] != 0) & v21) == 1 && -[MFFetchResponseQueue shouldAddUID:](selfCopy, "shouldAddUID:", v11))
        {
          v22 = [objc_alloc(MEMORY[0x277D24F40]) initWithHeaderData:v47 encoding:encoding];
          v23 = [[MFIMAPMessageWithCache alloc] initWithFlags:messageFlags customFlags:customFlagsArray size:messageSize uid:v11];
          [internalDate timeIntervalSince1970];
          [(MFIMAPMessageWithCache *)v23 setDateReceivedTimeIntervalSince1970:?];
          if (encoding != -1)
          {
            [(MFIMAPMessage *)v23 setPreferredEncoding:encoding];
          }

          [(MFIMAPMessage *)v23 setUniqueRemoteId:uniqueRemoteId];
          [(MFMailMessage *)v23 loadCachedHeaderValuesFromHeaders:v22];
          [(MFIMAPMessageWithCache *)v23 setHeaders:v22];
          [(MFIMAPMessageWithCache *)v23 setMessageStore:selfCopy->_store];
          if (selfCopy->_highestModSequence <= modSequenceNumber)
          {
            highestModSequence = modSequenceNumber;
          }

          else
          {
            highestModSequence = selfCopy->_highestModSequence;
          }

          [(MFMailMessage *)v23 setModSequenceNumber:highestModSequence];

          v49.receiver = selfCopy;
          v49.super_class = MFFetchResponseQueue;
          v5 = [(MFBufferedQueue *)&v49 addItem:v23];
          v25 = MFLogGeneral();
          v6 = v40;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            subject = [(MFIMAPMessageWithCache *)v23 subject];
            *buf = 138412290;
            v55 = subject;
            _os_log_impl(&dword_258B7A000, v25, OS_LOG_TYPE_INFO, "#Power [New Message] subject=%@;", buf, 0xCu);
          }

          newMessageCount = selfCopy->_newMessageCount;
          selfCopy->_newMessageCount = newMessageCount + 1;
          numNewUIDs = selfCopy->_numNewUIDs;
          if (newMessageCount + 1 <= numNewUIDs)
          {
            currentMonitor = [MEMORY[0x277D283F8] currentMonitor];
            [currentMonitor setCurrentCount:selfCopy->_newMessageCount];
            if ((messageFlags & 1) == 0)
            {
              [currentMonitor setGotNewMessagesState:1];
            }
          }

          else if (newMessageCount == numNewUIDs)
          {
            [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
          }
        }

        else
        {
          v6 = v40;
          if (v21)
          {
            v30 = [(MFFetchResponseQueue *)selfCopy messageToSyncFlagsForUID:v11];
            if (v30)
            {
              v31 = v30;
              store = selfCopy->_store;
              messageFlags2 = [v30 messageFlags];
              connection = selfCopy->_connection;
              isSearching = selfCopy->_isSearching;
              v48[0] = MEMORY[0x277D85DD0];
              v48[1] = 3221225472;
              v48[2] = __32__MFFetchResponseQueue_addItem___block_invoke;
              v48[3] = &unk_2798B1D68;
              v48[4] = v31;
              _syncFlags(store, v11, messageFlags2, messageFlags, connection, isSearching, v48);
            }
          }

          v5 = 1;
        }
      }

      else
      {
        v5 = 1;
        v6 = v40;
      }

      v29 = v47;
    }

    else
    {
      v29 = 0;
    }

    MEMORY[0x259C959E0](v6);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v5;
}

@end