@interface MFMailMessageStore
+ (BOOL)createEmptyStoreIfNeededForPath:(id)a3;
+ (id)copyMessages:(id)a3 toMailbox:(id)a4 markAsRead:(BOOL)a5 deleteOriginals:(BOOL)a6 isDeletion:(BOOL)a7;
- (BOOL)_updateFlagForMessage:(id)a3 key:(id)a4 value:(BOOL)a5;
- (BOOL)hasCachedDataForMimePart:(id)a3;
- (BOOL)hasMessageForAccount:(id)a3;
- (BOOL)shouldArchive;
- (BOOL)shouldDeleteInPlace;
- (BOOL)shouldDownloadBodyDataForMessage:(id)a3;
- (BOOL)shouldGrowFetchWindow;
- (BOOL)supportsArchiving;
- (MFMailMessageStore)initWithMailboxUid:(id)a3 readOnly:(BOOL)a4;
- (id)_setOrGetBody:(id)a3 forMessage:(id)a4 updateFlags:(BOOL)a5;
- (id)displayName;
- (id)finishRoutingMessages:(id)a3 routed:(id)a4;
- (id)lastViewedMessageDate;
- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4;
- (id)storeSearchResultMatchingCriterion:(id)a3 limit:(unsigned int)a4 offset:(id)a5 error:(id *)a6;
- (int)archiveDestination;
- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)a4 options:(unint64_t)a5;
- (void)_flushAllMessageData;
- (void)_setFlagsForMessages:(id)a3;
- (void)allMessageFlagsDidChange:(id)a3;
- (void)cancelOpen;
- (void)dealloc;
- (void)deleteMessages:(id)a3 moveToTrash:(BOOL)a4;
- (void)didOpen;
- (void)messageFlagsDidChange:(id)a3 flags:(id)a4;
- (void)messagesWereAdded:(id)a3;
- (void)messagesWereAdded:(id)a3 earliestReceivedDate:(id)a4;
- (void)messagesWereCompacted:(id)a3;
- (void)messagesWillBeCompacted:(id)a3;
- (void)openAsynchronously;
- (void)setFlagForAllMessages:(id)a3 state:(BOOL)a4;
- (void)setFlagsForAllMessagesFromDictionary:(id)a3;
- (void)setNumberOfAttachments:(unsigned int)a3 isSigned:(BOOL)a4 isEncrypted:(BOOL)a5 forMessage:(id)a6;
- (void)structureDidChange;
- (void)undeleteMessages:(id)a3;
- (void)updateMessages:(id)a3 updateNumberOfAttachments:(BOOL)a4;
@end

@implementation MFMailMessageStore

+ (BOOL)createEmptyStoreIfNeededForPath:(id)a3
{
  v7 = 0;
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    v5 = v7;
  }

  else
  {
    v5 = [a1 createEmptyStoreForPath:a3];
  }

  return v5 & 1;
}

- (MFMailMessageStore)initWithMailboxUid:(id)a3 readOnly:(BOOL)a4
{
  v12.receiver = self;
  v12.super_class = MFMailMessageStore;
  v6 = [(MFMailMessageStore *)&v12 init];
  if (v6)
  {
    v7 = [a3 fullPath];
    v8 = [a3 account];
    if ([objc_opt_class() createEmptyStoreIfNeededForPath:v7])
    {
      if (a4)
      {
        v9 = 1;
      }

      else
      {
        v9 = [objc_opt_class() storeAtPathIsWritable:v7] ^ 1;
      }

      v6->_flags = (*&v6->_flags & 0xFFFFFFFE | v9);
      v6->_account = v8;
      v6->_mailboxUid = a3;
      *&v6->_flags |= 0x100u;
      v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:100];
      *(&v6->super.super.isa + *MEMORY[0x277D25038]) = v10;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = self->_openMonitor;
  v4.receiver = self;
  v4.super_class = MFMailMessageStore;
  [(MFMailMessageStore *)&v4 dealloc];
}

- (void)openAsynchronously
{
  _MFLockGlobalLock();
  if ((self->_state | 4) == 4)
  {
    self->_state = 1;
    if (!openAsynchronously__openMailboxesQueue)
    {
      openAsynchronously__openMailboxesQueue = objc_alloc_init(MFInvocationQueue);
      [openAsynchronously__openMailboxesQueue setMaxThreadCount:3];
    }

    _MFUnlockGlobalLock();
    v3 = [MFMonitoredInvocation invocationWithSelector:sel_openSynchronously target:self taskName:0 priority:10 canBeCancelled:1];
    [openAsynchronously__openMailboxesQueue addInvocation:v3];
    [(MFMailMessageStore *)self mf_lock];

    self->_openMonitor = [(MFMonitoredInvocation *)v3 monitor];

    [(MFMailMessageStore *)self mf_unlock];
  }

  else
  {

    _MFUnlockGlobalLock();
  }
}

- (void)didOpen
{
  [(MFMailMessageStore *)self mf_lock];

  self->_openMonitor = 0;
  [(MFMailMessageStore *)self mf_unlock];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];

  [v3 postNotificationName:@"MailMessageStoreDidOpen" object:self userInfo:0];
}

- (void)cancelOpen
{
  [(MFMailMessageStore *)self mf_lock];
  [(MFActivityMonitor *)self->_openMonitor cancel];

  [(MFMailMessageStore *)self mf_unlock];
}

- (id)displayName
{
  v3 = [(MFMailMessageStore *)self account];
  v4 = [v3 displayName];
  v5 = [(MFMailboxUid *)self->_mailboxUid accountRelativePath];
  if ((v4 && ![v4 isEqualToString:&stru_2869ED3E0] || (v4 = objc_msgSend(v3, "hostname")) != 0) && (objc_msgSend(v4, "isEqualToString:", &stru_2869ED3E0) & 1) == 0)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"MAILBOX_DISPLAY_FORMAT", @"%@ --- %@", 0), v5, v4];
  }

  else
  {
    return v5;
  }
}

- (void)messageFlagsDidChange:(id)a3 flags:(id)a4
{
  if (a3)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"messages", a4, @"flags", 0}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];

  [v6 postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v5];
}

- (void)allMessageFlagsDidChange:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"flags";
  v7[0] = a3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)structureDidChange
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];

  [v3 postNotificationName:@"MailMessageStoreStructureChanged" object:self];
}

- (void)messagesWereAdded:(id)a3
{
  v5 = [MEMORY[0x277CBEAA8] distantPast];

  [(MFMailMessageStore *)self messagesWereAdded:a3 earliestReceivedDate:v5];
}

- (void)messagesWereCompacted:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([a3 count])
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = @"messages";
    v8[0] = a3;
    [v5 postNotificationName:@"MailMessageStoreMessagesRemoved" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)messagesWillBeCompacted:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([a3 count])
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = @"messages";
    v8[0] = a3;
    [v5 postNotificationName:@"MailMessageStoreMessagesWillBeCompacted" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldGrowFetchWindow
{
  v3 = [(MFMailMessageStore *)self hasMoreFetchableMessages];
  if (v3)
  {
    v4 = [(MFMailMessageStore *)self serverMessageCount];
    LOBYTE(v3) = v4 > [(MFMailMessageStore *)self fetchWindow];
  }

  return v3;
}

- (BOOL)hasMessageForAccount:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(MFMailMessageStore *)self account]== a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(MFMailMessageStore *)self copyOfAllMessagesWithOptions:128];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([MailAccount accountThatMessageIsFrom:*(*(&v13 + 1) + 8 * i)]== a3)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_12:
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)storeSearchResultMatchingCriterion:(id)a3 limit:(unsigned int)a4 offset:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  return 0;
}

- (id)finishRoutingMessages:(id)a3 routed:(id)a4
{
  v6 = [a3 mutableCopy];
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7 - 1;
    do
    {
      if (([objc_msgSend(v6 objectAtIndex:{v8), "messageFlags"}] & 2) != 0)
      {
        [v6 removeObjectAtIndex:v8];
      }

      --v8;
    }

    while (v8 != -1);
  }

  if ([v6 count])
  {
    v9 = [(MFMailMessageStore *)self _defaultRouterDestination];
    if (v9)
    {
      v10 = v9;
      if (([v9 isEqual:{-[MFMailMessageStore mailboxUid](self, "mailboxUid")}] & 1) == 0)
      {
        v11 = [objc_msgSend(v10 "account")];
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v11)
        {
          [v11 appendMessages:v6 unsuccessfulOnes:v12];
          v13 = [v6 count];
          if (a4)
          {
            v14 = [a4 mutableCopy];
          }

          else
          {
            v14 = [MEMORY[0x277CBEB18] array];
          }

          a4 = v14;
          if (v13)
          {
            v15 = v13 - 1;
            do
            {
              v16 = [v6 objectAtIndex:v15];
              if ([v12 indexOfObjectIdenticalTo:v16] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [a4 addObject:v16];
              }

              --v15;
            }

            while (v15 != -1);
          }

          [(MFMailMessageStore *)self deleteMessages:v6 moveToTrash:0];
        }
      }
    }
  }

  return a4;
}

- (void)deleteMessages:(id)a3 moveToTrash:(BOOL)a4
{
  v4 = a4;
  v27[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEC38];
  v26[0] = @"MessageIsDeleted";
  v26[1] = @"MessageIsRead";
  v27[0] = MEMORY[0x277CBEC38];
  v27[1] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  if (v4)
  {
    v9 = [(MailAccount *)self->_account storeForMailboxUid:[(MailAccount *)self->_account mailboxUidOfType:3 createIfNeeded:1]];
    if (v9)
    {
      v10 = v9;
      v24 = @"MessageIsRead";
      v25 = v7;
      -[MFMailMessageStore setFlagsFromDictionary:forMessages:](self, "setFlagsFromDictionary:forMessages:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1], a3);
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v10 mf_lock];
      [v10 appendMessages:a3 unsuccessfulOnes:v11];
      [v10 mf_unlock];
      if ([v11 count])
      {
        v12 = [MEMORY[0x277CBEB18] array];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v13 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(a3);
              }

              v17 = *(*(&v19 + 1) + 8 * i);
              if ([v11 indexOfObjectIdenticalTo:v17] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [v12 addObject:v17];
              }
            }

            v14 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v14);
        }

        [(MFMailMessageStore *)self setFlag:@"MessageIsDeleted" state:0 forMessages:v11];
        a3 = v12;
      }
    }
  }

  [(MFMailMessageStore *)self setFlagsFromDictionary:v8 forMessages:a3];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)undeleteMessages:(id)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  if ((*&self->_flags & 1) == 0)
  {
    v4 = @"MessageIsDeleted";
    v5[0] = MEMORY[0x277CBEC28];
    -[MFMailMessageStore setFlagsFromDictionary:forMessages:](self, "setFlagsFromDictionary:forMessages:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1], a3);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)copyMessages:(id)a3 toMailbox:(id)a4 markAsRead:(BOOL)a5 deleteOriginals:(BOOL)a6 isDeletion:(BOOL)a7
{
  v39[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MFMailMessageStore copyMessages:a2 toMailbox:a1 markAsRead:? deleteOriginals:? isDeletion:?];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  [MFMailMessageStore copyMessages:a2 toMailbox:a1 markAsRead:? deleteOriginals:? isDeletion:?];
LABEL_3:
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  Current = CFAbsoluteTimeGetCurrent();
  v38[0] = @"MessageIsDeleted";
  v38[1] = @"MessageIsRead";
  v39[0] = MEMORY[0x277CBEC38];
  v39[1] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v18 = [a4 store];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = v19;
  if (v18)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __83__MFMailMessageStore_copyMessages_toMailbox_markAsRead_deleteOriginals_isDeletion___block_invoke;
    v28[3] = &unk_2798B69E8;
    v29 = a6;
    v30 = a5;
    v28[4] = a4;
    v28[5] = v15;
    v28[6] = v18;
    v28[7] = v17;
    v31 = a7;
    v28[8] = v19;
    [a3 mf_enumerateByStoreUsingBlock:v28];
  }

  else
  {
    [v19 addObjectsFromArray:a3];
  }

  v21 = [v20 count];
  [v14 addObjectsFromArray:v20];

  v22 = CFAbsoluteTimeGetCurrent();
  v23 = [a3 count];
  v24 = MFLogGeneral();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v33 = v23;
    v34 = 2048;
    v35 = v22 - Current;
    v36 = 2048;
    v37 = (v22 - Current) / v23;
    _os_log_debug_impl(&dword_258BDA000, v24, OS_LOG_TYPE_DEBUG, "[LogMessageTransferTimes] Transferring %lu messages took %4.5f seconds (%4.5f s/msg).", buf, 0x20u);
  }

  v25 = [[MFMessageTransferResult alloc] initWithResultCode:v21 == 0 failedMessages:v14 transferedMessage:v15];

  result = v25;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void __83__MFMailMessageStore_copyMessages_toMailbox_markAsRead_deleteOriginals_isDeletion___block_invoke(uint64_t a1, void *a2, id a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [objc_msgSend(a2 "mailboxUid")];
  if (!v7)
  {
    v7 = [a2 account];
  }

  if (+[MailAccount canMoveMessagesFromAccount:toAccount:](MailAccount, "canMoveMessagesFromAccount:toAccount:", v7, [*(a1 + 32) representedAccount]))
  {
    if (*(a1 + 72) != 1 || (v8 = [v7 moveMessages:a3 fromMailbox:objc_msgSend(a2 toMailbox:"mailboxUid") markAsRead:{*(a1 + 32), *(a1 + 73)}], v9 = objc_msgSend(v8, "resultCode"), objc_msgSend(*(a1 + 40), "addObjectsFromArray:", objc_msgSend(v8, "transferedMessages")), objc_msgSend(v6, "addObjectsFromArray:", objc_msgSend(v8, "failedMessages")), v9 != 1))
    {
      if (![v6 count])
      {
        if (*(a1 + 73) == 1 && [a3 count])
        {
          v26 = @"MessageIsRead";
          v27[0] = MEMORY[0x277CBEC38];
          [a2 setFlagsFromDictionary:objc_msgSend(MEMORY[0x277CBEAC0] forMessages:{"dictionaryWithObjects:forKeys:count:", v27, &v26, 1), a3}];
        }

        v10 = [MEMORY[0x277CBEB18] array];
        v11 = [MEMORY[0x277CBEB18] array];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = [a3 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            v15 = 0;
            do
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(a3);
              }

              v16 = [*(*(&v19 + 1) + 8 * v15) messageFlags];
              [v10 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", v16 & 0xFFFFFFFFFFFFFFFDLL)}];
              ++v15;
            }

            while (v13 != v15);
            v13 = [a3 countByEnumeratingWithState:&v19 objects:v25 count:16];
          }

          while (v13);
        }

        if ([*(a1 + 48) appendMessages:a3 unsuccessfulOnes:v6 newMessageIDs:v11 newMessages:*(a1 + 40) flagsToSet:v10] != 1)
        {
          a3 = [a3 mutableCopy];
          [a3 removeObjectsInArray:v6];
        }

        if ([a3 count] && *(a1 + 72) == 1)
        {
          [a2 setFlagsFromDictionary:*(a1 + 56) forMessages:a3];
        }

        if ([v6 count])
        {
          if (*(a1 + 74) == 1 && ([objc_msgSend(a2 "mailboxUid")] & 1) == 0)
          {
            v17 = *(a1 + 56);
          }

          else
          {
            v23 = @"MessageIsDeleted";
            v24 = MEMORY[0x277CBEC28];
            v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          }

          [a2 setFlagsFromDictionary:v17 forMessages:v6];
        }
      }
    }
  }

  else
  {
    [v6 addObjectsFromArray:a3];
  }

  [*(a1 + 64) addObjectsFromArray:v6];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)lastViewedMessageDate
{
  v2 = [(MFMailMessageStore *)self mailboxUid];

  return [v2 lastViewedMessageDate];
}

- (BOOL)hasCachedDataForMimePart:(id)a3
{
  v3 = [objc_msgSend(a3 "mimeBody")];

  return [v3 isMessageContentsLocallyAvailable];
}

- (id)setFlagsFromDictionary:(id)a3 forMessages:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = [a3 count];
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a4, "count")}];
  v10 = [a3 allKeys];
  if (*&self->_flags)
  {
    v9 = 0;
  }

  else
  {
    v11 = v10;
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v8[i] = [a3 mf_BOOLForKey:{objc_msgSend(v11, "objectAtIndex:", i)}];
      }
    }

    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v23 = 0u;
    v13 = [v22 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v22);
          }

          if (v7)
          {
            v17 = 0;
            v18 = *(*(&v23 + 1) + 8 * j);
            do
            {
              if (-[MFMailMessageStore _updateFlagForMessage:key:value:](self, "_updateFlagForMessage:key:value:", v18, [v11 objectAtIndex:v17], v8[v17]))
              {
                [v9 ef_addObjectIfAbsent:v18];
              }

              ++v17;
            }

            while (v7 != v17);
          }
        }

        v14 = [v22 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setFlagForAllMessages:(id)a3 state:(BOOL)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7[0] = NSStringFromBOOL();
  -[MFMailMessageStore setFlagsForAllMessagesFromDictionary:](self, "setFlagsForAllMessagesFromDictionary:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1]);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setFlagsForAllMessagesFromDictionary:(id)a3
{
  v5 = [(MFMailMessageStore *)self copyOfAllMessagesWithOptions:128];
  [(MFMailMessageStore *)self setFlagsFromDictionary:a3 forMessages:v5];
}

- (void)setNumberOfAttachments:(unsigned int)a3 isSigned:(BOOL)a4 isEncrypted:(BOOL)a5 forMessage:(id)a6
{
  v7 = a5;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MFMailMessageStore;
  [MFMailMessageStore setNumberOfAttachments:sel_setNumberOfAttachments_isSigned_isEncrypted_forMessage_ isSigned:? isEncrypted:? forMessage:?];
  v10 = [a6 messageFlags];
  v11 = _MFFlagsBySettingNumberOfAttachments(v10, a3, v8, v7);
  if (v11 != v10)
  {
    [a6 setMessageFlags:v11];
  }
}

- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)a4 options:(unint64_t)a5
{
  [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
  [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_msgSend(-[MFMailMessageStore mailboxUid](self, "mailboxUid"), "URLString")];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|%lu|%@|%d", v9, lastFetchCount, a4, (a5 >> 1) & 1];
  v21 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  v11 = [-[MFMailMessageStore account](self "account")];
  for (i = v21; v11 && !v21; i = v21)
  {
    v11 = [-[MFMailMessageStore account](self "account")];
  }

  if ((v11 & 1) == 0)
  {
    v13 = [(MFMailMessageStore *)self account];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 powerAssertionIdentifierWithPrefix:@"com.apple.message.fetchMobileSynchronously"];
    }

    else
    {
      v15 = @"com.apple.message.fetchMobileSynchronously";
    }

    v20 = v15;
    [+[MFPowerController sharedInstance](MFPowerController retainAssertionWithIdentifier:"retainAssertionWithIdentifier:withAccount:" withAccount:v15, v14];
    [(MFMailMessageStore *)self mf_lock];
    if (lastFetchCount)
    {
      self->_lastFetchCount = lastFetchCount;
    }

    else
    {
      lastFetchCount = self->_lastFetchCount;
    }

    [(MFMailMessageStore *)self mf_unlock];
    v16 = -2;
    do
    {
      v17 = [(MFMailMessageStore *)self fetchNumMessages:lastFetchCount preservingUID:a4 options:a5];
      if (v17 < 0 && ![v14 shouldFetchAgainWithError:objc_msgSend(+[MFActivityMonitor currentMonitor](MFActivityMonitor foregroundRequest:{"currentMonitor"), "error"), (a5 >> 4) & 1}])
      {
        break;
      }

      v21 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
      if (!v16)
      {
        break;
      }

      ++v16;
    }

    while (v17 < 0);
    v18 = [(MFMailMessageStore *)self account];
    [v18 didFinishActionForChokePoint:v9 coalescePoint:v10 withResult:v21];
    [+[MFPowerController sharedInstance](MFPowerController releaseAssertionWithIdentifier:"releaseAssertionWithIdentifier:", v20];
    i = v21;
  }

  return [i integerValue];
}

- (void)_flushAllMessageData
{
  [(MFMailMessageStore *)self mf_lock];
  self->_deletedMessageCount = 0;
  self->_deletedMessagesSize = 0;
  self->_unreadMessageCount = 0;
  _MFLockGlobalLock();
  v3 = *MEMORY[0x277D25038];

  *(&self->super.super.isa + v3) = 0;
  _MFUnlockGlobalLock();
  [(MFMailMessageStore *)self mf_unlock];
  v4.receiver = self;
  v4.super_class = MFMailMessageStore;
  [(MFMailMessageStore *)&v4 _flushAllMessageData];
}

- (BOOL)shouldDownloadBodyDataForMessage:(id)a3
{
  if ([a3 summary])
  {
    return 0;
  }

  else
  {
    return [a3 isMessageContentsLocallyAvailable] ^ 1;
  }
}

- (BOOL)shouldDeleteInPlace
{
  v3 = [(MFMailMessageStore *)self account];
  v4 = [(MFMailMessageStore *)self mailboxUid];

  return [v3 deleteInPlaceForMailbox:v4];
}

- (BOOL)supportsArchiving
{
  v3 = [(MFMailMessageStore *)self account];
  v4 = [v3 supportsArchiving];
  if (v4)
  {
    LOBYTE(v4) = [v3 preventArchiveForMailbox:{-[MFMailMessageStore mailboxUid](self, "mailboxUid")}] ^ 1;
  }

  return v4;
}

- (BOOL)shouldArchive
{
  v3 = [(MFMailMessageStore *)self account];
  v4 = [v3 shouldArchiveByDefault];
  if (v4)
  {
    v5 = [(MFMailMessageStore *)self mailboxUid];

    LOBYTE(v4) = [v3 canArchiveForMailbox:v5];
  }

  return v4;
}

- (int)archiveDestination
{
  v3 = [(MFMailMessageStore *)self account];
  v4 = [(MFMailMessageStore *)self mailboxUid];

  return [v3 archiveDestinationForMailbox:v4];
}

- (id)_setOrGetBody:(id)a3 forMessage:(id)a4 updateFlags:(BOOL)a5
{
  v5 = a5;
  v11.receiver = self;
  v11.super_class = MFMailMessageStore;
  v8 = [MFMailMessageStore _setOrGetBody:sel__setOrGetBody_forMessage_updateFlags_ forMessage:? updateFlags:?];
  v9 = v8 != a3 || !v5;
  if (!v9 && ([a4 messageFlags] & 2) == 0)
  {
    [a4 calculateAttachmentInfoFromBody:a3];
  }

  return v8;
}

- (void)_setFlagsForMessages:(id)a3
{
  v4 = [a3 keyEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [a3 objectForKey:v6];
      v8 = [v7 objectForKey:@"messageFlags"];
      if (v8)
      {
        v9 = v8;
        v10 = [v7 objectForKey:@"messageFlagsMask"];
        if (!v10)
        {
          v12 = [v9 unsignedIntValue];
          v13 = 0x1BFDDF7FFFFLL;
          goto LABEL_8;
        }

        v11 = [v10 unsignedIntValue];
        v12 = [v9 unsignedIntValue];
        if (v11)
        {
          v13 = v11;
LABEL_8:
          v14 = v12;
          v15 = [v6 messageFlags];
          if (v13 == 0x1BFDDF7FFFFLL)
          {
            v16 = v14;
          }

          else
          {
            v16 = v15 & ~v13 | v13 & v14;
          }

          if (v16 != v15)
          {
            [v6 setMessageFlags:?];
          }
        }
      }

      v6 = [v4 nextObject];
    }

    while (v6);
  }
}

- (void)updateMessages:(id)a3 updateNumberOfAttachments:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    if (!v5)
    {
      v5 = [(MFMailMessageStore *)self copyOfAllMessages];
    }

    v11 = v5;
    v6 = [v5 count];
    if (v6)
    {
      v7 = v6 - 1;
      do
      {
        v8 = v7;
        v9 = objc_alloc_init(MEMORY[0x277CCA8B0]);
        [objc_msgSend(v11 objectAtIndex:{v8), "calculateAttachmentInfoFromBody:", 0}];
        v10 = [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
        [v9 drain];
        if (v10)
        {
          break;
        }

        v7 = v8 - 1;
      }

      while (v8);
    }
  }
}

- (void)messagesWereAdded:(id)a3 earliestReceivedDate:(id)a4
{
  generationNumber = self->_generationNumber;
  if (generationNumber == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 1;
  }

  else
  {
    v8 = generationNumber + 1;
  }

  self->_generationNumber = v8;
  if ([a3 count])
  {
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a3, @"messages", a4, @"previous earliest received date", 0}];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];

    [v10 postNotificationName:@"MailMessageStoreMessagesAdded" object:self userInfo:v9];
  }
}

- (BOOL)_updateFlagForMessage:(id)a3 key:(id)a4 value:(BOOL)a5
{
  v5 = a5;
  v9 = [a3 messageFlags];
  if ([a4 isEqual:@"MessageIsRead"])
  {
    if ((v9 & 1) != v5)
    {
      unreadMessageCount = self->_unreadMessageCount;
      v11 = v5 ? unreadMessageCount - 1 : unreadMessageCount + 1;
      self->_unreadMessageCount = v11;
      if (v11 >> 31)
      {
        self->_unreadMessageCount = 0;
        v12 = MFLogGeneral();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&dword_258BDA000, v12, OS_LOG_TYPE_INFO, "#UnreadCount _unreadMessageCount went negative", v18, 2u);
        }
      }
    }
  }

  else
  {
    if ([a4 isEqual:@"MessageIsDeleted"])
    {
      v13 = ((v9 >> 1) & 1) == v5;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      deletedMessageCount = self->_deletedMessageCount;
      if (v5)
      {
        self->_deletedMessageCount = deletedMessageCount + 1;
        v15 = self->_deletedMessagesSize + [a3 messageSize];
      }

      else
      {
        self->_deletedMessageCount = deletedMessageCount - 1;
        v15 = self->_deletedMessagesSize - [a3 messageSize];
      }

      self->_deletedMessagesSize = v15;
    }
  }

  v16 = _MFFlagsBySettingValueForKey(v9, a4, v5);
  if (v16 != v9 && [(MFMailMessageStore *)self _shouldChangeComponentMessageFlagsForMessage:a3])
  {
    [a3 setMessageFlags:v16];
  }

  return v16 != v9;
}

@end