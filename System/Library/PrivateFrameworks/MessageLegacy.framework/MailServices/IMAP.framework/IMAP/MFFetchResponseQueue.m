@interface MFFetchResponseQueue
- (BOOL)addItem:(id)a3;
- (BOOL)handleItems:(id)a3;
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

- (BOOL)handleItems:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [(MFFetchResponseQueue *)self insertMessages:?];
  v5 = [MEMORY[0x277D283F8] currentMonitor];
  if ([v5 gotNewMessagesState])
  {
    [objc_msgSend(MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{-259200.0), "timeIntervalSince1970"}];
    v7 = v6;
    v8 = [v5 gotNewMessagesState];
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
          v14 = [v13 messageFlags];
          if ((v14 & 1) == 0)
          {
            [v13 dateReceivedAsTimeIntervalSince1970];
            if (v15 > v7)
            {
              if ([v13 conversationFlags])
              {
                v8 = 3;
                goto LABEL_19;
              }

              if (v8 <= 2)
              {
                v16 = 2;
              }

              else
              {
                v16 = v8;
              }

              if ((v14 & 0x1000000) != 0)
              {
                v8 = v16;
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
    [v5 setGotNewMessagesState:v8];
  }

  v17 = [v4 count];
  result = [a3 count] == v17;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)addItem:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = 1;
  if ([a3 responseType] == 17)
  {
    v6 = MEMORY[0x259C959F0](1);
    v7 = [a3 fetchResults];
    v8 = [(MFIMAPConnection *)self->_connection _isFetchResponseValid:a3];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v9)
    {
      v10 = v9;
      v39 = self;
      v40 = v6;
      v41 = 0;
      v44 = 0;
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v11 = 0;
      v12 = 0;
      v46 = 0;
      v47 = 0;
      v13 = 0;
      v14 = *v51;
      v15 = 0xFFFFFFFFLL;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v17 = *(*(&v50 + 1) + 8 * i);
          v18 = [v17 type];
          if (v18 <= 7)
          {
            if (v18 == 2)
            {
              v43 = [v17 internalDate];
            }

            else if (v18 == 3)
            {
              v42 = [v17 messageSize];
            }

            else if (v18 == 4 && v8)
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

          else if (v18 > 9)
          {
            if (v18 == 10)
            {
              v46 = [v17 messageFlags];
              v15 = [v17 encoding];
              v41 = [v17 customFlagsArray];
              v13 = 1;
            }

            else if (v18 == 11)
            {
              v45 = [v17 modSequenceNumber];
            }
          }

          else if (v18 == 8)
          {
            v11 = [v17 uid];
            v12 = 1;
          }

          else
          {
            v44 = [v17 uniqueRemoteId];
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v10);
      if (v13)
      {
        v21 = v12 & v8;
        if ((([v47 length] != 0) & v21) == 1 && -[MFFetchResponseQueue shouldAddUID:](v39, "shouldAddUID:", v11))
        {
          v22 = [objc_alloc(MEMORY[0x277D24F40]) initWithHeaderData:v47 encoding:v15];
          v23 = [[MFIMAPMessageWithCache alloc] initWithFlags:v46 customFlags:v41 size:v42 uid:v11];
          [v43 timeIntervalSince1970];
          [(MFIMAPMessageWithCache *)v23 setDateReceivedTimeIntervalSince1970:?];
          if (v15 != -1)
          {
            [(MFIMAPMessage *)v23 setPreferredEncoding:v15];
          }

          [(MFIMAPMessage *)v23 setUniqueRemoteId:v44];
          [(MFMailMessage *)v23 loadCachedHeaderValuesFromHeaders:v22];
          [(MFIMAPMessageWithCache *)v23 setHeaders:v22];
          [(MFIMAPMessageWithCache *)v23 setMessageStore:v39->_store];
          if (v39->_highestModSequence <= v45)
          {
            highestModSequence = v45;
          }

          else
          {
            highestModSequence = v39->_highestModSequence;
          }

          [(MFMailMessage *)v23 setModSequenceNumber:highestModSequence];

          v49.receiver = v39;
          v49.super_class = MFFetchResponseQueue;
          v5 = [(MFBufferedQueue *)&v49 addItem:v23];
          v25 = MFLogGeneral();
          v6 = v40;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = [(MFIMAPMessageWithCache *)v23 subject];
            *buf = 138412290;
            v55 = v26;
            _os_log_impl(&dword_258B7A000, v25, OS_LOG_TYPE_INFO, "#Power [New Message] subject=%@;", buf, 0xCu);
          }

          newMessageCount = v39->_newMessageCount;
          v39->_newMessageCount = newMessageCount + 1;
          numNewUIDs = v39->_numNewUIDs;
          if (newMessageCount + 1 <= numNewUIDs)
          {
            v38 = [MEMORY[0x277D283F8] currentMonitor];
            [v38 setCurrentCount:v39->_newMessageCount];
            if ((v46 & 1) == 0)
            {
              [v38 setGotNewMessagesState:1];
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
            v30 = [(MFFetchResponseQueue *)v39 messageToSyncFlagsForUID:v11];
            if (v30)
            {
              v31 = v30;
              store = v39->_store;
              v33 = [v30 messageFlags];
              connection = v39->_connection;
              isSearching = v39->_isSearching;
              v48[0] = MEMORY[0x277D85DD0];
              v48[1] = 3221225472;
              v48[2] = __32__MFFetchResponseQueue_addItem___block_invoke;
              v48[3] = &unk_2798B1D68;
              v48[4] = v31;
              _syncFlags(store, v11, v33, v46, connection, isSearching, v48);
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