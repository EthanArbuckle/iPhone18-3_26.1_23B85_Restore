@interface MFMessageChangeManager_iOS
- (BOOL)_mailboxIsGmail:(id)a3;
- (BOOL)haveCompleteMIMEForMessage:(id)a3;
- (BOOL)mailboxIsAllMail:(id)a3;
- (BOOL)mailboxIsTrash:(id)a3;
- (BOOL)mailboxPartOfAllMail:(id)a3;
- (BOOL)persistNewMessages:(id)a3 mailboxURL:(id)a4 oldMessagesByNewMessage:(id)a5 fromSyncing:(BOOL)a6;
- (MFMailMessageLibrary)library;
- (MFMessageChangeManager_iOS)initWithLibrary:(id)a3 database:(id)a4 localActionPersistence:(id)a5 messagePersistence:(id)a6 serverMessagePersistenceFactory:(id)a7 readLaterPersistence:(id)a8 categoryPersistence:(id)a9 bimiManager:(id)a10 hookResponder:(id)a11 hookRegistry:(id)a12;
- (id)accountForMailboxURL:(id)a3;
- (id)applyFlagChange:(id)a3 toMessagesInDatabase:(id)a4;
- (id)iterateMessagesInMailboxURLs:(id)a3 excludingMessages:(id)a4 batchSize:(unint64_t)a5 returnMessagesForFlagChange:(id)a6 handler:(id)a7;
- (id)messageForDatabaseID:(int64_t)a3;
- (id)messagesForRemoteIDs:(id)a3 mailboxURL:(id)a4;
- (id)messagesToJournalForMessages:(id)a3 inMailbox:(id)a4;
- (id)reflectNewMessages:(id)a3 mailboxURL:(id)a4;
- (int64_t)mailboxDatabaseIDForURL:(id)a3;
- (void)_recordFrecencyEventWithMailboxURL:(id)a3;
- (void)actionHasChangedAccount:(id)a3;
- (void)applyVIPStatus:(BOOL)a3 toMessagesInDatabase:(id)a4;
- (void)checkForNewActionsInMailboxID:(int64_t)a3;
- (void)deletePersistedMessages:(id)a3;
- (void)didFinishPersistenceDidAddMessages:(id)a3;
- (void)didReflectNewMessages:(id)a3;
- (void)messageWasAppended:(id)a3;
- (void)resetStatusCountsForMailboxWithURL:(id)a3;
- (void)setData:(id)a3 onMessage:(id)a4;
- (void)setRemoteID:(id)a3 onMessageWithDatabaseID:(int64_t)a4;
- (void)willStartPersistenceDidAddMessages:(id)a3;
@end

@implementation MFMessageChangeManager_iOS

- (MFMessageChangeManager_iOS)initWithLibrary:(id)a3 database:(id)a4 localActionPersistence:(id)a5 messagePersistence:(id)a6 serverMessagePersistenceFactory:(id)a7 readLaterPersistence:(id)a8 categoryPersistence:(id)a9 bimiManager:(id)a10 hookResponder:(id)a11 hookRegistry:(id)a12
{
  obj = a3;
  v18 = a4;
  v32 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v35.receiver = self;
  v35.super_class = MFMessageChangeManager_iOS;
  v33 = v20;
  v26 = [(EDMessageChangeManager *)&v35 initWithDatabase:v18 localActionPersistence:v32 messagePersistence:v19 serverMessagePersistenceFactory:v20 readLaterPersistence:v21 categoryPersistence:v22 bimiManager:v23 hookResponder:v24 hookRegistry:v25];
  v27 = v26;
  if (v26)
  {
    objc_storeWeak(&v26->_library, obj);
    v28 = [v22 analyticsLogger];
    v29 = [v28 biomeCollector];
    biomeCollector = v27->_biomeCollector;
    v27->_biomeCollector = v29;
  }

  return v27;
}

- (void)_recordFrecencyEventWithMailboxURL:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v4];
    if (v5)
    {
      v6 = [(MFMessageChangeManager_iOS *)self library];
      v7 = [v6 mailboxFrecencyController];
      v10[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      [v7 recordEventWithMailboxIDs:v8];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)reflectNewMessages:(id)a3 mailboxURL:(id)a4
{
  v6.receiver = self;
  v6.super_class = MFMessageChangeManager_iOS;
  v4 = [(EDMessageChangeManager *)&v6 reflectNewMessages:a3 mailboxURL:a4];

  return v4;
}

- (id)messagesToJournalForMessages:(id)a3 inMailbox:(id)a4
{
  v5 = a3;
  v6 = [MailAccount accountWithURL:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 ef_filter:&__block_literal_global_44];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (BOOL)persistNewMessages:(id)a3 mailboxURL:(id)a4 oldMessagesByNewMessage:(id)a5 fromSyncing:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v33 = a5;
  v13 = [v11 firstObject];
  objc_opt_class();
  LOBYTE(a5) = objc_opt_isKindOfClass();

  if ((a5 & 1) == 0)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"MFMessageChangeManager_iOS.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"[messages.firstObject isKindOfClass:[MFMessage class]]"}];
  }

  v14 = v11;
  v15 = [v12 absoluteString];
  v16 = [MailAccount mailboxUidFromActiveAccountsForURL:v15];

  if (a6)
  {
    i = 0;
  }

  else
  {
    v18 = [v14 count];
    for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18]; v18; --v18)
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [i addObject:v19];
    }
  }

  v20 = [(EDMessageChangeManager *)self mailboxURLIsInRemoteAccount:v12];
  v21 = [v16 mailboxType] == 6;
  v22 = [v14 firstObject];
  v23 = [v22 mailbox];
  v24 = [v23 URL];

  if (v20)
  {
    v25 = ![(EDMessageChangeManager *)self mailboxURL:v24 isInSameAccountAsMailboxURL:v12];
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_opt_new();
  v27 = [(MFMessageChangeManager_iOS *)self library];
  v28 = [v27 addMessages:v14 withMailbox:v16 newMessagesByOldMessage:v26 remoteIDs:i setFlags:0 addPOPUIDs:0 dataSectionsByMessage:0 generationWindow:0];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __96__MFMessageChangeManager_iOS_persistNewMessages_mailboxURL_oldMessagesByNewMessage_fromSyncing___block_invoke;
  v34[3] = &unk_1E7AA6740;
  v29 = v33;
  v37 = v25;
  v38 = v21;
  v35 = v29;
  v36 = self;
  [v26 enumerateKeysAndObjectsUsingBlock:v34];
  v30 = [v26 count] != 0;

  return v30;
}

- (void)deletePersistedMessages:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 ef_objectsPassingTest:&__block_literal_global_37];
  if ([v5 count])
  {
    if (_os_feature_enabled_impl())
    {
      v6 = [(MFMessageChangeManager_iOS *)self biomeCollector];
      [v6 deleteEventsForMessages:v5];
    }

    v7 = [MEMORY[0x1E699B5A8] log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v5;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Deleting persisted messages: %@", buf, 0xCu);
    }

    v8 = [(MFMessageChangeManager_iOS *)self library];
    [v8 compactMessages:v5 permanently:1 notifyPersistence:0];

    v9 = [v5 ef_groupBy:&__block_literal_global_45];
    v10 = [(MFMessageChangeManager_iOS *)self library];
    v11 = [v9 allKeys];
    v24 = [v10 mailboxURLsForIDs:v11];

    v12 = [MEMORY[0x1E699B5A8] log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v9;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "Persisted messages were deleted { %@ }", buf, 0xCu);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __54__MFMessageChangeManager_iOS_deletePersistedMessages___block_invoke_47;
    v27[3] = &unk_1E7AA6788;
    v13 = v24;
    v28 = v13;
    [v9 enumerateKeysAndObjectsUsingBlock:v27];
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __54__MFMessageChangeManager_iOS_deletePersistedMessages___block_invoke_2;
    v25[3] = &unk_1E7AA67B0;
    v25[4] = self;
    v15 = v14;
    v26 = v15;
    [v13 enumerateKeysAndObjectsUsingBlock:v25];
    if ([v15 count])
    {
      v16 = objc_alloc(MEMORY[0x1E695DF70]);
      v17 = [MEMORY[0x1E695E000] em_userDefaults];
      v18 = *MEMORY[0x1E699ABA0];
      v19 = [v17 objectForKey:*MEMORY[0x1E699ABA0]];
      v20 = [v16 initWithArray:v19];

      [v20 addObject:v15];
      v21 = [MEMORY[0x1E695E000] em_userDefaults];
      v22 = [v20 copy];
      [v21 setValue:v22 forKey:v18];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)haveCompleteMIMEForMessage:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
    v5 = [(MFMessageChangeManager_iOS *)self library];
    v6 = [v5 areMessageContentsLocallyAvailable:v4 fullContentsAvailble:&v9];

    v7 = v6 & v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)mailboxDatabaseIDForURL:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageChangeManager_iOS *)self library];
  v6 = [v4 absoluteString];
  v7 = [v5 mailboxIDForURLString:v6 createIfNecessary:1];

  return v7;
}

- (void)setRemoteID:(id)a3 onMessageWithDatabaseID:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MFMessageChangeManager_iOS *)self library];
  v8 = [v7 messageWithLibraryID:a4 options:7346239 inMailbox:0];

  v9 = [MEMORY[0x1E699B5A8] log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 ef_publicDescription];
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "Setting remote ID to %{public}@ on message %{public}@", &v12, 0x16u);
  }

  [v8 setRemoteID:v6];
  [v8 commit];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setData:(id)a3 onMessage:(id)a4
{
  v13 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MFMessageChangeManager_iOS.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"[message isKindOfClass:[MFLibraryMessage class]]"}];
  }

  v8 = [v7 mailbox];
  v9 = [v8 URL];
  v10 = [(EDMessageChangeManager *)self mailboxURLIsInRemoteAccount:v9];

  v11 = [(MFMessageChangeManager_iOS *)self library];
  if (v10)
  {
    [v11 setData:v13 forMessageToAppend:v7];
  }

  else
  {
    [v11 setData:v13 forMessage:v7 isPartial:0];
  }
}

- (void)checkForNewActionsInMailboxID:(int64_t)a3
{
  v4 = [(MFMessageChangeManager_iOS *)self library];
  v6 = [v4 urlForMailboxID:a3];

  v5 = [MailAccount accountWithURLString:v6];
  [v5 newActionsAdded];
}

- (void)actionHasChangedAccount:(id)a3
{
  v5 = a3;
  v3 = [v5 mailboxURL];
  v4 = [MailAccount accountWithURL:v3];

  [v4 addNewAction:v5];
}

- (void)didReflectNewMessages:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = MFMessageChangeManager_iOS;
  v26 = a3;
  [(EDMessageChangeManager *)&v41 didReflectNewMessages:v26];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v26;
  v29 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v29)
  {
    v28 = *v38;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v37 + 1) + 8 * i);
        if ([v3 updateSubjectFromEncryptedContent])
        {
          WeakRetained = objc_loadWeakRetained(&self->_library);
          v5 = [v3 subject];
          v6 = [v5 subjectWithoutPrefix];
          [WeakRetained updateUnprefixedSubjectTo:v6 forMessage:v3];
        }

        v7 = [v3 signatureInfo];
        if (v7)
        {
          v8 = objc_alloc(MEMORY[0x1E699AC08]);
          v9 = [v7 smimeCapabilities];
          v30 = v7;
          v10 = [v7 signingDate];
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = MEMORY[0x1E695E0F0];
          }

          v12 = [v8 initWithCapabilities:v11 date:v10];

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v13 = [v30 addresses];
          v14 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v14)
          {
            v15 = *v34;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v34 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v33 + 1) + 8 * j);
                v18 = [(EDMessageChangeManager *)self messagePersistence];
                v19 = v17;
                v20 = [v19 emailAddressValue];
                v21 = [v20 simpleAddress];
                v22 = v21;
                if (v21)
                {
                  v23 = v21;
                }

                else
                {
                  v23 = [v19 stringValue];
                }

                v24 = v23;

                [v18 setMetadata:v12 forAddress:v24];
              }

              v14 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
            }

            while (v14);
          }

          v7 = v30;
        }
      }

      v29 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v29);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)messageWasAppended:(id)a3
{
  v5 = a3;
  v4 = [(MFMessageChangeManager_iOS *)self library];
  [v4 increaseProtectionOnFileForMessage:v5];
}

- (void)resetStatusCountsForMailboxWithURL:(id)a3
{
  v6 = [a3 absoluteString];
  v4 = [MailAccount mailboxUidFromActiveAccountsForURL:?];
  if (([v4 shouldUseNonDeletedForUnreadCount] & 1) == 0)
  {
    v5 = [(MFMessageChangeManager_iOS *)self library];
    [v5 setLastSyncAndMostRecentStatusCount:*MEMORY[0x1E699A770] forMailbox:v6];
  }
}

- (id)applyFlagChange:(id)a3 toMessagesInDatabase:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 firstObject];
  v8 = [v7 messageStore];

  v9 = MFFlagChangeDictionaryForFlagChange(v5);
  v10 = [v8 setFlagsLocallyFromDictionary:v9 forMessages:v6];

  return v10;
}

- (void)applyVIPStatus:(BOOL)a3 toMessagesInDatabase:(id)a4
{
  v4 = a3;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MFMessageChangeManager_iOS *)self library];
  v12 = @"MessageSenderIsVIP";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v7 setFlagsFromDictionary:v9 forMessages:v6];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)messageForDatabaseID:(int64_t)a3
{
  v4 = [(MFMessageChangeManager_iOS *)self library];
  v5 = [v4 messageWithLibraryID:a3 options:7346239 inMailbox:0];

  return v5;
}

- (id)messagesForRemoteIDs:(id)a3 mailboxURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFMessageChangeManager_iOS *)self library];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  v10 = [v7 absoluteString];
  v11 = [v8 copyMessagesWithRemoteIDs:v9 options:7346239 inRemoteMailbox:v10];

  return v11;
}

- (id)iterateMessagesInMailboxURLs:(id)a3 excludingMessages:(id)a4 batchSize:(unint64_t)a5 returnMessagesForFlagChange:(id)a6 handler:(id)a7
{
  v67 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v49 = a4;
  v52 = a6;
  v50 = a7;
  v51 = objc_opt_new();
  if ([v10 count] == 1)
  {
    v11 = [v10 firstObject];
    v12 = [v11 absoluteString];
    v13 = [MFMessageCriterion criterionForMailboxURL:v12];
  }

  else
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v59 objects:v66 count:16];
    if (v16)
    {
      v17 = *v60;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v59 + 1) + 8 * i);
          v20 = [v19 absoluteString];
          v21 = [MFMessageCriterion criterionForMailboxURL:v20];

          if (v21)
          {
            [v14 addObject:v21];
          }

          else
          {
            v22 = [MEMORY[0x1E699B5A8] log];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              v23 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:v19];
              [MFMessageChangeManager_iOS iterateMessagesInMailboxURLs:v23 excludingMessages:buf batchSize:&v65 returnMessagesForFlagChange:v22 handler:?];
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v16);
    }

    v13 = [MFMessageCriterion orCompoundCriterionWithCriteria:v14];
  }

  v24 = [MEMORY[0x1E699B300] setRead];
  v25 = [v52 isEqual:v24];

  if (v25)
  {
    v26 = +[MFMessageCriterion unreadMessageCriterion];
  }

  else
  {
    v27 = [MEMORY[0x1E699B300] clearRead];
    v28 = [v52 isEqual:v27];

    if ((v28 & 1) == 0)
    {
      v29 = [MEMORY[0x1E699B300] clearRead];
      v30 = [v52 isEqual:v29];

      if ((v30 & 1) == 0)
      {
        v31 = [MEMORY[0x1E699B300] clearRead];
        v32 = [v52 isEqual:v31];

        if (!v32)
        {
          v33 = 0;
          goto LABEL_24;
        }
      }
    }

    v26 = +[MFMessageCriterion readMessageCriterion];
  }

  v33 = v26;
  if (v26)
  {
    v63[0] = v13;
    v63[1] = v26;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
    v35 = [MFMessageCriterion andCompoundCriterionWithCriteria:v34];

    v13 = v35;
  }

LABEL_24:
  v36 = objc_opt_new();
  v37 = [(MFMessageChangeManager_iOS *)self library];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __123__MFMessageChangeManager_iOS_iterateMessagesInMailboxURLs_excludingMessages_batchSize_returnMessagesForFlagChange_handler___block_invoke;
  v53[3] = &unk_1E7AA67D8;
  v38 = v49;
  v54 = v38;
  v39 = v51;
  v55 = v39;
  v40 = v36;
  v56 = v40;
  v58 = a5;
  v41 = v50;
  v57 = v41;
  [v37 iterateMessagesMatchingCriterion:v13 options:7346367 handler:v53];

  if ([v40 count])
  {
    v41[2](v41, v40);
  }

  v42 = v57;
  v43 = v39;

  v44 = *MEMORY[0x1E69E9840];
  return v39;
}

- (id)accountForMailboxURL:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [MailAccount accountWithURLString:v3];

  return v4;
}

- (BOOL)mailboxIsAllMail:(id)a3
{
  v3 = a3;
  v4 = [v3 absoluteString];
  v5 = [MailAccount accountWithURL:v3];
  v6 = [MailAccount mailboxUidFromActiveAccountsForURL:v4];
  v7 = [v5 baseAccount];
  if ([v7 isGmailAccount])
  {
    v8 = [v6 type] == 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)mailboxPartOfAllMail:(id)a3
{
  v3 = a3;
  v4 = [v3 absoluteString];
  v5 = [MailAccount accountWithURL:v3];
  v6 = [MailAccount mailboxUidFromActiveAccountsForURL:v4];
  v7 = [v6 type];
  v8 = [v5 baseAccount];
  v9 = [v8 isGmailAccount];
  if (v7 == 2 || (v7 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

- (BOOL)_mailboxIsGmail:(id)a3
{
  v3 = [MailAccount accountWithURL:a3];
  v4 = [v3 baseAccount];
  v5 = [v4 isGmailAccount];

  return v5;
}

- (BOOL)mailboxIsTrash:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [MailAccount mailboxUidFromActiveAccountsForURL:v3];
  v5 = [v4 type] == 3;

  return v5;
}

- (void)willStartPersistenceDidAddMessages:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MFMessageChangeManager_iOS;
  [(EDMessageChangeManager *)&v6 willStartPersistenceDidAddMessages:v4];
  v5 = [(MFMessageChangeManager_iOS *)self library];
  [v5 willStartPersistenceDidAddMessages:v4];
}

- (void)didFinishPersistenceDidAddMessages:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MFMessageChangeManager_iOS;
  [(EDMessageChangeManager *)&v6 didFinishPersistenceDidAddMessages:v4];
  v5 = [(MFMessageChangeManager_iOS *)self library];
  [v5 didFinishPersistenceDidAddMessages:v4];
}

- (MFMailMessageLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

- (void)iterateMessagesInMailboxURLs:(void *)a3 excludingMessages:(os_log_t)log batchSize:returnMessagesForFlagChange:handler:.cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_fault_impl(&dword_1B0389000, log, OS_LOG_TYPE_FAULT, "messagesInMailboxURLCriterion is nil for mailboxURL %{public}@", buf, 0xCu);
}

@end