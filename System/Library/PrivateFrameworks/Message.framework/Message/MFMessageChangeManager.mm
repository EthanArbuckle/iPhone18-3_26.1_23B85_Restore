@interface MFMessageChangeManager
@end

@implementation MFMessageChangeManager

uint64_t __69__MFMessageChangeManager_iOS_messagesToJournalForMessages_inMailbox___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isSearchResultWithBogusRemoteId] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void __96__MFMessageChangeManager_iOS_persistNewMessages_mailboxURL_oldMessagesByNewMessage_fromSyncing___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  if ((*(a1 + 48) & 1) != 0 || *(a1 + 49) == 1)
  {
    v9 = 0;
    v7 = [v5 messageDataIsComplete:&v9 downloadIfNecessary:0];
    if (v7 && v9 == 1)
    {
      v8 = [*(a1 + 40) library];
      [v8 setData:v7 forMessageToAppend:v6];
    }
  }
}

uint64_t __54__MFMessageChangeManager_iOS_deletePersistedMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __54__MFMessageChangeManager_iOS_deletePersistedMessages___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "mailboxID")}];

  return v3;
}

void __54__MFMessageChangeManager_iOS_deletePersistedMessages___block_invoke_47(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v6 = [v5 absoluteString];
  v7 = [MailAccount mailboxUidFromActiveAccountsForURL:v6];

  v8 = [v7 store];
  [v8 messagesWereDeleted:v9];
}

void __54__MFMessageChangeManager_iOS_deletePersistedMessages___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([*(a1 + 32) _mailboxIsGmail:?])
  {
    v6 = [MEMORY[0x1E695DF00] now];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:*MEMORY[0x1E699ABB8]];

    *a4 = 1;
  }
}

void __123__MFMessageChangeManager_iOS_iterateMessagesInMailboxURLs_excludingMessages_batchSize_returnMessagesForFlagChange_handler___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = [v12 mailbox];
    v4 = [v3 URL];

    v5 = [v4 scheme];
    v6 = [v5 isEqualToString:*MEMORY[0x1E699A698]];

    if (v6)
    {
      v7 = [*(a1 + 40) objectForKeyedSubscript:v4];
      v8 = [v12 uid];
      if (!v7 || v8 < [v7 intValue])
      {
        v9 = [v12 remoteID];
        [*(a1 + 40) setObject:v9 forKeyedSubscript:v4];
      }
    }

    [*(a1 + 48) addObject:v12];
    if ([*(a1 + 48) count] == *(a1 + 64))
    {
      v10 = *(a1 + 56);
      v11 = [*(a1 + 48) copy];
      (*(v10 + 16))(v10, v11);

      [*(a1 + 48) removeAllObjects];
    }
  }
}

@end