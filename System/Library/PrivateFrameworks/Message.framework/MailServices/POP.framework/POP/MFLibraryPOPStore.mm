@interface MFLibraryPOPStore
- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (id)messageForRemoteID:(id)d;
- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)messagesWereDeleted:(id)deleted;
- (void)purgeMessages:(id)messages;
- (void)setServerUnreadOnlyOnServerCount:(unint64_t)count;
@end

@implementation MFLibraryPOPStore

- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  length = range.length;
  partCopy = part;
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  if (length <= 1)
  {
    mimeBody2 = [partCopy mimeBody];
    topLevelPart = [mimeBody2 topLevelPart];
    type = [topLevelPart type];
    v18 = [type isEqualToString:@"multipart"];

    if (v18)
    {
    }

    else
    {
      v19 = [(MFLibraryPOPStore *)self bodyDataForMessage:message isComplete:complete isPartial:0 downloadIfNecessary:1];

      if (v19)
      {
        goto LABEL_14;
      }
    }
  }

  v20 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:0];
  v21 = v20;
  if (v20 && (*(v20 + *MEMORY[0x277D24FF0]) & 1) == 0 && (v22 = MEMORY[0x277D24FE8], v23 = [*(v20 + *MEMORY[0x277D24FE8]) length], v24 = objc_msgSend(partCopy, "range"), v23 >= v24 + v25))
  {
    v28 = *&v21[*v22];
    range = [partCopy range];
    v19 = [v28 mf_subdataWithRange:{range, v30}];
    if (complete)
    {
      *complete = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (!v19 && necessaryCopy)
  {
    v26 = [(MFLibraryPOPStore *)self fullBodyDataForMessage:message andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:1 usePartDatas:0 didDownload:download];
    v19 = v26;
    if (complete)
    {
      if (v26)
      {
        *complete = 1;
      }
    }
  }

LABEL_14:

  return v19;
}

- (void)purgeMessages:(id)messages
{
  messagesCopy = messages;
  library = [(MFLibraryStore *)self library];
  [library compactMessages:messagesCopy permanently:0 notifyPersistence:1];
}

- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  optionsCopy = options;
  dCopy = d;
  currentMonitor = [MEMORY[0x277D281F0] currentMonitor];
  mailbox = [(MFLibraryStore *)self mailbox];
  [currentMonitor setMailbox:mailbox];

  selfCopy = self;
  library = [(MFLibraryStore *)selfCopy library];
  mailbox2 = [(MFLibraryStore *)selfCopy mailbox];
  uRLString = [mailbox2 URLString];
  v15 = [library nonDeletedCountForMailbox:uRLString];

  account = [(MFLibraryStore *)selfCopy account];
  v17 = account;
  v18 = messages - v15;
  if (messages < v15)
  {
    v18 = 0;
  }

  if ((optionsCopy & 4) != 0)
  {
    messagesCopy = 0;
  }

  else
  {
    messagesCopy = messages;
  }

  if ((optionsCopy & 4) != 0)
  {
    messagesCopy2 = messages;
  }

  else
  {
    messagesCopy2 = v18;
  }

  v21 = [account fetchNumNewMessages:messagesCopy oldMessages:messagesCopy2 preservingUID:dCopy withStore:selfCopy];

  if ((optionsCopy & 4) == 0)
  {
    [(MFLibraryStore *)selfCopy purgeMessagesBeyondLimit:messages];
  }

  return v21;
}

- (id)messageForRemoteID:(id)d
{
  dCopy = d;
  library = [(MFLibraryStore *)self library];
  mailbox = [(MFLibraryStore *)self mailbox];
  uRLString = [mailbox URLString];
  v8 = [library messageWithRemoteID:dCopy inRemoteMailbox:uRLString];

  [v8 setMessageStore:self];

  return v8;
}

- (void)messagesWereDeleted:(id)deleted
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  deletedCopy = deleted;
  v5 = [deletedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(deletedCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        library = [(MFLibraryStore *)self library];
        remoteID = [v8 remoteID];
        account = [(MFLibraryStore *)self account];
        uRLString = [account URLString];
        [library deletePOPUID:remoteID inMailbox:uRLString];

        ++v7;
      }

      while (v5 != v7);
      v5 = [deletedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  flagsCopy = flags;
  messageCopy = message;
  v26.receiver = self;
  v26.super_class = MFLibraryPOPStore;
  [(MFLibraryStore *)&v26 _handleFlagsChangedForMessages:messagesCopy flags:flagsCopy oldFlagsByMessage:messageCopy, messagesCopy];
  [(MFLibraryPOPStore *)self mf_lock];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = messagesCopy;
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
        v15 = [messageCopy objectForKey:v14];
        intValue = [v15 intValue];

        if (flagsCopy)
        {
          messageFlags = MFMessageFlagsByApplyingDictionary();
        }

        else
        {
          messageFlags = [v14 messageFlags];
        }

        if ((intValue & 2) == 0 && (messageFlags & 2) != 0)
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

- (void)setServerUnreadOnlyOnServerCount:(unint64_t)count
{
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  [library setServerUnreadOnlyOnServerCount:0 forMailbox:uRLString];
}

@end