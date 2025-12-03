@interface MFMessageChangeManager_iOS
- (BOOL)_mailboxIsGmail:(id)gmail;
- (BOOL)haveCompleteMIMEForMessage:(id)message;
- (BOOL)mailboxIsAllMail:(id)mail;
- (BOOL)mailboxIsTrash:(id)trash;
- (BOOL)mailboxPartOfAllMail:(id)mail;
- (BOOL)persistNewMessages:(id)messages mailboxURL:(id)l oldMessagesByNewMessage:(id)message fromSyncing:(BOOL)syncing;
- (MFMailMessageLibrary)library;
- (MFMessageChangeManager_iOS)initWithLibrary:(id)library database:(id)database localActionPersistence:(id)persistence messagePersistence:(id)messagePersistence serverMessagePersistenceFactory:(id)factory readLaterPersistence:(id)laterPersistence categoryPersistence:(id)categoryPersistence bimiManager:(id)self0 hookResponder:(id)self1 hookRegistry:(id)self2;
- (id)accountForMailboxURL:(id)l;
- (id)applyFlagChange:(id)change toMessagesInDatabase:(id)database;
- (id)iterateMessagesInMailboxURLs:(id)ls excludingMessages:(id)messages batchSize:(unint64_t)size returnMessagesForFlagChange:(id)change handler:(id)handler;
- (id)messageForDatabaseID:(int64_t)d;
- (id)messagesForRemoteIDs:(id)ds mailboxURL:(id)l;
- (id)messagesToJournalForMessages:(id)messages inMailbox:(id)mailbox;
- (id)reflectNewMessages:(id)messages mailboxURL:(id)l;
- (int64_t)mailboxDatabaseIDForURL:(id)l;
- (void)_recordFrecencyEventWithMailboxURL:(id)l;
- (void)actionHasChangedAccount:(id)account;
- (void)applyVIPStatus:(BOOL)status toMessagesInDatabase:(id)database;
- (void)checkForNewActionsInMailboxID:(int64_t)d;
- (void)deletePersistedMessages:(id)messages;
- (void)didFinishPersistenceDidAddMessages:(id)messages;
- (void)didReflectNewMessages:(id)messages;
- (void)messageWasAppended:(id)appended;
- (void)resetStatusCountsForMailboxWithURL:(id)l;
- (void)setData:(id)data onMessage:(id)message;
- (void)setRemoteID:(id)d onMessageWithDatabaseID:(int64_t)iD;
- (void)willStartPersistenceDidAddMessages:(id)messages;
@end

@implementation MFMessageChangeManager_iOS

- (MFMessageChangeManager_iOS)initWithLibrary:(id)library database:(id)database localActionPersistence:(id)persistence messagePersistence:(id)messagePersistence serverMessagePersistenceFactory:(id)factory readLaterPersistence:(id)laterPersistence categoryPersistence:(id)categoryPersistence bimiManager:(id)self0 hookResponder:(id)self1 hookRegistry:(id)self2
{
  obj = library;
  databaseCopy = database;
  persistenceCopy = persistence;
  messagePersistenceCopy = messagePersistence;
  factoryCopy = factory;
  laterPersistenceCopy = laterPersistence;
  categoryPersistenceCopy = categoryPersistence;
  managerCopy = manager;
  responderCopy = responder;
  registryCopy = registry;
  v35.receiver = self;
  v35.super_class = MFMessageChangeManager_iOS;
  v33 = factoryCopy;
  v26 = [(EDMessageChangeManager *)&v35 initWithDatabase:databaseCopy localActionPersistence:persistenceCopy messagePersistence:messagePersistenceCopy serverMessagePersistenceFactory:factoryCopy readLaterPersistence:laterPersistenceCopy categoryPersistence:categoryPersistenceCopy bimiManager:managerCopy hookResponder:responderCopy hookRegistry:registryCopy];
  v27 = v26;
  if (v26)
  {
    objc_storeWeak(&v26->_library, obj);
    analyticsLogger = [categoryPersistenceCopy analyticsLogger];
    biomeCollector = [analyticsLogger biomeCollector];
    biomeCollector = v27->_biomeCollector;
    v27->_biomeCollector = biomeCollector;
  }

  return v27;
}

- (void)_recordFrecencyEventWithMailboxURL:(id)l
{
  v10[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:lCopy];
    if (v5)
    {
      library = [(MFMessageChangeManager_iOS *)self library];
      mailboxFrecencyController = [library mailboxFrecencyController];
      v10[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      [mailboxFrecencyController recordEventWithMailboxIDs:v8];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)reflectNewMessages:(id)messages mailboxURL:(id)l
{
  v6.receiver = self;
  v6.super_class = MFMessageChangeManager_iOS;
  v4 = [(EDMessageChangeManager *)&v6 reflectNewMessages:messages mailboxURL:l];

  return v4;
}

- (id)messagesToJournalForMessages:(id)messages inMailbox:(id)mailbox
{
  messagesCopy = messages;
  v6 = [MailAccount accountWithURL:mailbox];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [messagesCopy ef_filter:&__block_literal_global_44];
  }

  else
  {
    v7 = messagesCopy;
  }

  v8 = v7;

  return v8;
}

- (BOOL)persistNewMessages:(id)messages mailboxURL:(id)l oldMessagesByNewMessage:(id)message fromSyncing:(BOOL)syncing
{
  messagesCopy = messages;
  lCopy = l;
  messageCopy = message;
  firstObject = [messagesCopy firstObject];
  objc_opt_class();
  LOBYTE(message) = objc_opt_isKindOfClass();

  if ((message & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMessageChangeManager_iOS.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"[messages.firstObject isKindOfClass:[MFMessage class]]"}];
  }

  v14 = messagesCopy;
  absoluteString = [lCopy absoluteString];
  v16 = [MailAccount mailboxUidFromActiveAccountsForURL:absoluteString];

  if (syncing)
  {
    i = 0;
  }

  else
  {
    v18 = [v14 count];
    for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18]; v18; --v18)
    {
      null = [MEMORY[0x1E695DFB0] null];
      [i addObject:null];
    }
  }

  v20 = [(EDMessageChangeManager *)self mailboxURLIsInRemoteAccount:lCopy];
  v21 = [v16 mailboxType] == 6;
  firstObject2 = [v14 firstObject];
  mailbox = [firstObject2 mailbox];
  v24 = [mailbox URL];

  if (v20)
  {
    v25 = ![(EDMessageChangeManager *)self mailboxURL:v24 isInSameAccountAsMailboxURL:lCopy];
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_opt_new();
  library = [(MFMessageChangeManager_iOS *)self library];
  v28 = [library addMessages:v14 withMailbox:v16 newMessagesByOldMessage:v26 remoteIDs:i setFlags:0 addPOPUIDs:0 dataSectionsByMessage:0 generationWindow:0];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __96__MFMessageChangeManager_iOS_persistNewMessages_mailboxURL_oldMessagesByNewMessage_fromSyncing___block_invoke;
  v34[3] = &unk_1E7AA6740;
  v29 = messageCopy;
  v37 = v25;
  v38 = v21;
  v35 = v29;
  selfCopy = self;
  [v26 enumerateKeysAndObjectsUsingBlock:v34];
  v30 = [v26 count] != 0;

  return v30;
}

- (void)deletePersistedMessages:(id)messages
{
  v31 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v5 = [messagesCopy ef_objectsPassingTest:&__block_literal_global_37];
  if ([v5 count])
  {
    if (_os_feature_enabled_impl())
    {
      biomeCollector = [(MFMessageChangeManager_iOS *)self biomeCollector];
      [biomeCollector deleteEventsForMessages:v5];
    }

    v7 = [MEMORY[0x1E699B5A8] log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v5;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Deleting persisted messages: %@", buf, 0xCu);
    }

    library = [(MFMessageChangeManager_iOS *)self library];
    [library compactMessages:v5 permanently:1 notifyPersistence:0];

    v9 = [v5 ef_groupBy:&__block_literal_global_45];
    library2 = [(MFMessageChangeManager_iOS *)self library];
    allKeys = [v9 allKeys];
    v24 = [library2 mailboxURLsForIDs:allKeys];

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
      em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
      v18 = *MEMORY[0x1E699ABA0];
      v19 = [em_userDefaults objectForKey:*MEMORY[0x1E699ABA0]];
      v20 = [v16 initWithArray:v19];

      [v20 addObject:v15];
      em_userDefaults2 = [MEMORY[0x1E695E000] em_userDefaults];
      v22 = [v20 copy];
      [em_userDefaults2 setValue:v22 forKey:v18];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)haveCompleteMIMEForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
    library = [(MFMessageChangeManager_iOS *)self library];
    v6 = [library areMessageContentsLocallyAvailable:messageCopy fullContentsAvailble:&v9];

    v7 = v6 & v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)mailboxDatabaseIDForURL:(id)l
{
  lCopy = l;
  library = [(MFMessageChangeManager_iOS *)self library];
  absoluteString = [lCopy absoluteString];
  v7 = [library mailboxIDForURLString:absoluteString createIfNecessary:1];

  return v7;
}

- (void)setRemoteID:(id)d onMessageWithDatabaseID:(int64_t)iD
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  library = [(MFMessageChangeManager_iOS *)self library];
  v8 = [library messageWithLibraryID:iD options:7346239 inMailbox:0];

  v9 = [MEMORY[0x1E699B5A8] log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [v8 ef_publicDescription];
    v12 = 138543618;
    v13 = dCopy;
    v14 = 2114;
    v15 = ef_publicDescription;
    _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "Setting remote ID to %{public}@ on message %{public}@", &v12, 0x16u);
  }

  [v8 setRemoteID:dCopy];
  [v8 commit];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setData:(id)data onMessage:(id)message
{
  dataCopy = data;
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMessageChangeManager_iOS.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"[message isKindOfClass:[MFLibraryMessage class]]"}];
  }

  mailbox = [messageCopy mailbox];
  v9 = [mailbox URL];
  v10 = [(EDMessageChangeManager *)self mailboxURLIsInRemoteAccount:v9];

  library = [(MFMessageChangeManager_iOS *)self library];
  if (v10)
  {
    [library setData:dataCopy forMessageToAppend:messageCopy];
  }

  else
  {
    [library setData:dataCopy forMessage:messageCopy isPartial:0];
  }
}

- (void)checkForNewActionsInMailboxID:(int64_t)d
{
  library = [(MFMessageChangeManager_iOS *)self library];
  v6 = [library urlForMailboxID:d];

  v5 = [MailAccount accountWithURLString:v6];
  [v5 newActionsAdded];
}

- (void)actionHasChangedAccount:(id)account
{
  accountCopy = account;
  mailboxURL = [accountCopy mailboxURL];
  v4 = [MailAccount accountWithURL:mailboxURL];

  [v4 addNewAction:accountCopy];
}

- (void)didReflectNewMessages:(id)messages
{
  v44 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = MFMessageChangeManager_iOS;
  messagesCopy = messages;
  [(EDMessageChangeManager *)&v41 didReflectNewMessages:messagesCopy];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = messagesCopy;
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
          subject = [v3 subject];
          subjectWithoutPrefix = [subject subjectWithoutPrefix];
          [WeakRetained updateUnprefixedSubjectTo:subjectWithoutPrefix forMessage:v3];
        }

        signatureInfo = [v3 signatureInfo];
        if (signatureInfo)
        {
          v8 = objc_alloc(MEMORY[0x1E699AC08]);
          smimeCapabilities = [signatureInfo smimeCapabilities];
          v30 = signatureInfo;
          signingDate = [signatureInfo signingDate];
          if (smimeCapabilities)
          {
            v11 = smimeCapabilities;
          }

          else
          {
            v11 = MEMORY[0x1E695E0F0];
          }

          v12 = [v8 initWithCapabilities:v11 date:signingDate];

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          addresses = [v30 addresses];
          v14 = [addresses countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v14)
          {
            v15 = *v34;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v34 != v15)
                {
                  objc_enumerationMutation(addresses);
                }

                v17 = *(*(&v33 + 1) + 8 * j);
                messagePersistence = [(EDMessageChangeManager *)self messagePersistence];
                v19 = v17;
                emailAddressValue = [v19 emailAddressValue];
                simpleAddress = [emailAddressValue simpleAddress];
                v22 = simpleAddress;
                if (simpleAddress)
                {
                  stringValue = simpleAddress;
                }

                else
                {
                  stringValue = [v19 stringValue];
                }

                v24 = stringValue;

                [messagePersistence setMetadata:v12 forAddress:v24];
              }

              v14 = [addresses countByEnumeratingWithState:&v33 objects:v42 count:16];
            }

            while (v14);
          }

          signatureInfo = v30;
        }
      }

      v29 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v29);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)messageWasAppended:(id)appended
{
  appendedCopy = appended;
  library = [(MFMessageChangeManager_iOS *)self library];
  [library increaseProtectionOnFileForMessage:appendedCopy];
}

- (void)resetStatusCountsForMailboxWithURL:(id)l
{
  absoluteString = [l absoluteString];
  v4 = [MailAccount mailboxUidFromActiveAccountsForURL:?];
  if (([v4 shouldUseNonDeletedForUnreadCount] & 1) == 0)
  {
    library = [(MFMessageChangeManager_iOS *)self library];
    [library setLastSyncAndMostRecentStatusCount:*MEMORY[0x1E699A770] forMailbox:absoluteString];
  }
}

- (id)applyFlagChange:(id)change toMessagesInDatabase:(id)database
{
  changeCopy = change;
  databaseCopy = database;
  firstObject = [databaseCopy firstObject];
  messageStore = [firstObject messageStore];

  v9 = MFFlagChangeDictionaryForFlagChange(changeCopy);
  v10 = [messageStore setFlagsLocallyFromDictionary:v9 forMessages:databaseCopy];

  return v10;
}

- (void)applyVIPStatus:(BOOL)status toMessagesInDatabase:(id)database
{
  statusCopy = status;
  v13[1] = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  library = [(MFMessageChangeManager_iOS *)self library];
  v12 = @"MessageSenderIsVIP";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:statusCopy];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [library setFlagsFromDictionary:v9 forMessages:databaseCopy];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)messageForDatabaseID:(int64_t)d
{
  library = [(MFMessageChangeManager_iOS *)self library];
  v5 = [library messageWithLibraryID:d options:7346239 inMailbox:0];

  return v5;
}

- (id)messagesForRemoteIDs:(id)ds mailboxURL:(id)l
{
  dsCopy = ds;
  lCopy = l;
  library = [(MFMessageChangeManager_iOS *)self library];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:dsCopy];
  absoluteString = [lCopy absoluteString];
  v11 = [library copyMessagesWithRemoteIDs:v9 options:7346239 inRemoteMailbox:absoluteString];

  return v11;
}

- (id)iterateMessagesInMailboxURLs:(id)ls excludingMessages:(id)messages batchSize:(unint64_t)size returnMessagesForFlagChange:(id)change handler:(id)handler
{
  v67 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  messagesCopy = messages;
  changeCopy = change;
  handlerCopy = handler;
  v51 = objc_opt_new();
  if ([lsCopy count] == 1)
  {
    firstObject = [lsCopy firstObject];
    absoluteString = [firstObject absoluteString];
    v13 = [MFMessageCriterion criterionForMailboxURL:absoluteString];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v15 = lsCopy;
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
          absoluteString2 = [v19 absoluteString];
          v21 = [MFMessageCriterion criterionForMailboxURL:absoluteString2];

          if (v21)
          {
            [array addObject:v21];
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

    v13 = [MFMessageCriterion orCompoundCriterionWithCriteria:array];
  }

  setRead = [MEMORY[0x1E699B300] setRead];
  v25 = [changeCopy isEqual:setRead];

  if (v25)
  {
    v26 = +[MFMessageCriterion unreadMessageCriterion];
  }

  else
  {
    clearRead = [MEMORY[0x1E699B300] clearRead];
    v28 = [changeCopy isEqual:clearRead];

    if ((v28 & 1) == 0)
    {
      clearRead2 = [MEMORY[0x1E699B300] clearRead];
      v30 = [changeCopy isEqual:clearRead2];

      if ((v30 & 1) == 0)
      {
        clearRead3 = [MEMORY[0x1E699B300] clearRead];
        v32 = [changeCopy isEqual:clearRead3];

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
  library = [(MFMessageChangeManager_iOS *)self library];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __123__MFMessageChangeManager_iOS_iterateMessagesInMailboxURLs_excludingMessages_batchSize_returnMessagesForFlagChange_handler___block_invoke;
  v53[3] = &unk_1E7AA67D8;
  v38 = messagesCopy;
  v54 = v38;
  v39 = v51;
  v55 = v39;
  v40 = v36;
  v56 = v40;
  sizeCopy = size;
  v41 = handlerCopy;
  v57 = v41;
  [library iterateMessagesMatchingCriterion:v13 options:7346367 handler:v53];

  if ([v40 count])
  {
    v41[2](v41, v40);
  }

  v42 = v57;
  v43 = v39;

  v44 = *MEMORY[0x1E69E9840];
  return v39;
}

- (id)accountForMailboxURL:(id)l
{
  absoluteString = [l absoluteString];
  v4 = [MailAccount accountWithURLString:absoluteString];

  return v4;
}

- (BOOL)mailboxIsAllMail:(id)mail
{
  mailCopy = mail;
  absoluteString = [mailCopy absoluteString];
  v5 = [MailAccount accountWithURL:mailCopy];
  v6 = [MailAccount mailboxUidFromActiveAccountsForURL:absoluteString];
  baseAccount = [v5 baseAccount];
  if ([baseAccount isGmailAccount])
  {
    v8 = [v6 type] == 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)mailboxPartOfAllMail:(id)mail
{
  mailCopy = mail;
  absoluteString = [mailCopy absoluteString];
  v5 = [MailAccount accountWithURL:mailCopy];
  v6 = [MailAccount mailboxUidFromActiveAccountsForURL:absoluteString];
  type = [v6 type];
  baseAccount = [v5 baseAccount];
  isGmailAccount = [baseAccount isGmailAccount];
  if (type == 2 || (type & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = isGmailAccount;
  }

  return v11;
}

- (BOOL)_mailboxIsGmail:(id)gmail
{
  v3 = [MailAccount accountWithURL:gmail];
  baseAccount = [v3 baseAccount];
  isGmailAccount = [baseAccount isGmailAccount];

  return isGmailAccount;
}

- (BOOL)mailboxIsTrash:(id)trash
{
  absoluteString = [trash absoluteString];
  v4 = [MailAccount mailboxUidFromActiveAccountsForURL:absoluteString];
  v5 = [v4 type] == 3;

  return v5;
}

- (void)willStartPersistenceDidAddMessages:(id)messages
{
  messagesCopy = messages;
  v6.receiver = self;
  v6.super_class = MFMessageChangeManager_iOS;
  [(EDMessageChangeManager *)&v6 willStartPersistenceDidAddMessages:messagesCopy];
  library = [(MFMessageChangeManager_iOS *)self library];
  [library willStartPersistenceDidAddMessages:messagesCopy];
}

- (void)didFinishPersistenceDidAddMessages:(id)messages
{
  messagesCopy = messages;
  v6.receiver = self;
  v6.super_class = MFMessageChangeManager_iOS;
  [(EDMessageChangeManager *)&v6 didFinishPersistenceDidAddMessages:messagesCopy];
  library = [(MFMessageChangeManager_iOS *)self library];
  [library didFinishPersistenceDidAddMessages:messagesCopy];
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