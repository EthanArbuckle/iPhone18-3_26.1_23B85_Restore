@interface MFLibraryPOPStore
- (id)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6 didDownload:(BOOL *)a7;
- (id)messageForRemoteID:(id)a3;
- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5;
- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5;
- (void)messagesWereDeleted:(id)a3;
- (void)purgeMessages:(id)a3;
- (void)setServerUnreadOnlyOnServerCount:(unint64_t)a3;
@end

@implementation MFLibraryPOPStore

- (id)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6 didDownload:(BOOL *)a7
{
  v8 = a6;
  length = a4.length;
  v12 = a3;
  v13 = [v12 mimeBody];
  v14 = [v13 message];

  if (length <= 1)
  {
    v15 = [v12 mimeBody];
    v16 = [v15 topLevelPart];
    v17 = [v16 type];
    v18 = [v17 isEqualToString:@"multipart"];

    if (v18)
    {
    }

    else
    {
      v19 = [(MFLibraryPOPStore *)self bodyDataForMessage:v14 isComplete:a5 isPartial:0 downloadIfNecessary:1];

      if (v19)
      {
        goto LABEL_14;
      }
    }
  }

  v20 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v14 valueIfNotPresent:0];
  v21 = v20;
  if (v20 && (*(v20 + *MEMORY[0x277D24FF0]) & 1) == 0 && (v22 = MEMORY[0x277D24FE8], v23 = [*(v20 + *MEMORY[0x277D24FE8]) length], v24 = objc_msgSend(v12, "range"), v23 >= v24 + v25))
  {
    v28 = *&v21[*v22];
    v29 = [v12 range];
    v19 = [v28 mf_subdataWithRange:{v29, v30}];
    if (a5)
    {
      *a5 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (!v19 && v8)
  {
    v26 = [(MFLibraryPOPStore *)self fullBodyDataForMessage:v14 andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:1 usePartDatas:0 didDownload:a7];
    v19 = v26;
    if (a5)
    {
      if (v26)
      {
        *a5 = 1;
      }
    }
  }

LABEL_14:

  return v19;
}

- (void)purgeMessages:(id)a3
{
  v5 = a3;
  v4 = [(MFLibraryStore *)self library];
  [v4 compactMessages:v5 permanently:0 notifyPersistence:1];
}

- (int64_t)fetchNumMessages:(unint64_t)a3 preservingUID:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [MEMORY[0x277D281F0] currentMonitor];
  v10 = [(MFLibraryStore *)self mailbox];
  [v9 setMailbox:v10];

  v11 = self;
  v12 = [(MFLibraryStore *)v11 library];
  v13 = [(MFLibraryStore *)v11 mailbox];
  v14 = [v13 URLString];
  v15 = [v12 nonDeletedCountForMailbox:v14];

  v16 = [(MFLibraryStore *)v11 account];
  v17 = v16;
  v18 = a3 - v15;
  if (a3 < v15)
  {
    v18 = 0;
  }

  if ((v5 & 4) != 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = a3;
  }

  if ((v5 & 4) != 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = v18;
  }

  v21 = [v16 fetchNumNewMessages:v19 oldMessages:v20 preservingUID:v8 withStore:v11];

  if ((v5 & 4) == 0)
  {
    [(MFLibraryStore *)v11 purgeMessagesBeyondLimit:a3];
  }

  return v21;
}

- (id)messageForRemoteID:(id)a3
{
  v4 = a3;
  v5 = [(MFLibraryStore *)self library];
  v6 = [(MFLibraryStore *)self mailbox];
  v7 = [v6 URLString];
  v8 = [v5 messageWithRemoteID:v4 inRemoteMailbox:v7];

  [v8 setMessageStore:self];

  return v8;
}

- (void)messagesWereDeleted:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [(MFLibraryStore *)self library];
        v10 = [v8 remoteID];
        v11 = [(MFLibraryStore *)self account];
        v12 = [v11 URLString];
        [v9 deletePOPUID:v10 inMailbox:v12];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleFlagsChangedForMessages:(id)a3 flags:(id)a4 oldFlagsByMessage:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = MFLibraryPOPStore;
  [(MFLibraryStore *)&v26 _handleFlagsChangedForMessages:v8 flags:v9 oldFlagsByMessage:v10, v8];
  [(MFLibraryPOPStore *)self mf_lock];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v10 objectForKey:v14];
        v16 = [v15 intValue];

        if (v9)
        {
          v17 = MFMessageFlagsByApplyingDictionary();
        }

        else
        {
          v17 = [v14 messageFlags];
        }

        if ((v16 & 2) == 0 && (v17 & 2) != 0)
        {
          serverMessageCount = self->_serverMessageCount;
          if (serverMessageCount)
          {
            v19 = serverMessageCount == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = 1;
          }

          if (!v19)
          {
            self->_serverMessageCount = serverMessageCount - 1;
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v11);
  }

  [(MFLibraryPOPStore *)self mf_unlock];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)setServerUnreadOnlyOnServerCount:(unint64_t)a3
{
  v5 = [(MFLibraryStore *)self library];
  v4 = [(MFLibraryStore *)self URLString];
  [v5 setServerUnreadOnlyOnServerCount:0 forMailbox:v4];
}

@end