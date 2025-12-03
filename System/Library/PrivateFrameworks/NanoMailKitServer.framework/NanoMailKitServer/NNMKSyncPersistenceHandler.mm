@interface NNMKSyncPersistenceHandler
- (NNMKDeviceRegistryHolder)delegate;
- (NNMKSyncStateManager)syncStateManager;
- (id)addAccountAuthenticationStatusRequest:(double)request;
- (id)addMessageContent:(id)content forMessage:(id)message mailbox:(id)mailbox;
- (id)addMessages:(id)messages containsNewMessages:(BOOL)newMessages mailbox:(id)mailbox;
- (id)addMessagesToResend:(id)resend mailbox:(id)mailbox;
- (id)addMoreConversationSpecificMessages:(id)messages conversationId:(id)id mailbox:(id)mailbox;
- (id)addMoreMessages:(id)messages mailbox:(id)mailbox;
- (id)addStandaloneAccountIdentity:(id)identity;
- (id)currentDeviceRegistry;
- (id)deleteMessagesWithIds:(id)ids mailbox:(id)mailbox;
- (id)persistAccounts:(id)accounts;
- (id)protoMessageFromMessage:(id)message;
- (id)updateMailboxListForAccount:(id)account mailboxListChanged:(BOOL *)changed;
- (id)updateMessagesFromConversation:(id)conversation withState:(unint64_t)state include:(BOOL)include mailbox:(id)mailbox;
- (id)updateMessagesStatus:(id)status mailbox:(id)mailbox;
- (void)_createDefaultMailbox:(id)mailbox;
@end

@implementation NNMKSyncPersistenceHandler

- (id)persistAccounts:(id)accounts
{
  v93 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v5 = objc_alloc_init(NNMKProtoInitialAccountsSync);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v6 = accountsCopy;
  v64 = [v6 countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (v64)
  {
    v61 = *v79;
    v7 = &__logCategories;
    v8 = &dword_25B19F000;
    v62 = v6;
    v63 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v79 != v61)
        {
          objc_enumerationMutation(v6);
        }

        v66 = v9;
        v10 = *(*(&v78 + 1) + 8 * v9);
        v11 = objc_alloc_init(NNMKProtoAccountAdditionOrUpdate);
        accountId = [v10 accountId];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setAccountId:accountId];

        displayName = [v10 displayName];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setDisplayName:displayName];

        -[NNMKProtoAccountAdditionOrUpdate setShouldArchive:](v11, "setShouldArchive:", [v10 shouldArchive]);
        currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        -[NNMKProtoAccountAdditionOrUpdate setFullSyncVersion:](v11, "setFullSyncVersion:", [currentDeviceRegistry fullSyncVersion]);

        username = [v10 username];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setUsername:username];

        localId = [v10 localId];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setLocalId:localId];

        parentAccountIdentifier = [v10 parentAccountIdentifier];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setParentId:parentAccountIdentifier];

        defaultEmailAddress = [v10 defaultEmailAddress];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setDefaultEmail:defaultEmailAddress];

        typeIdentifier = [v10 typeIdentifier];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setTypeIdentifier:typeIdentifier];

        emailAddressToken = [v10 emailAddressToken];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setEmailAddressToken:emailAddressToken];

        pccEmailAddress = [v10 pccEmailAddress];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setPccEmailAddress:pccEmailAddress];

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        emailAddresses = [v10 emailAddresses];
        v23 = [emailAddresses countByEnumeratingWithState:&v74 objects:v91 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v75;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v75 != v25)
              {
                objc_enumerationMutation(emailAddresses);
              }

              [(NNMKProtoAccountAdditionOrUpdate *)v11 addEmail:*(*(&v74 + 1) + 8 * i), v61];
            }

            v24 = [emailAddresses countByEnumeratingWithState:&v74 objects:v91 count:16];
          }

          while (v24);
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v65 = v10;
        mailboxes = [v10 mailboxes];
        v69 = [mailboxes countByEnumeratingWithState:&v70 objects:v90 count:16];
        if (v69)
        {
          v28 = *v71;
          v68 = v11;
          do
          {
            for (j = 0; j != v69; ++j)
            {
              if (*v71 != v28)
              {
                objc_enumerationMutation(mailboxes);
              }

              v30 = *(*(&v70 + 1) + 8 * j);
              syncController = [(NNMKSyncPersistenceHandler *)self syncController];
              v32 = [syncController canSyncMailbox:v30];

              v33 = v7[1];
              v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
              if (v32)
              {
                if (v34)
                {
                  log = v33;
                  mailboxId = [v30 mailboxId];
                  type = [v30 type];
                  v37 = v28;
                  v38 = mailboxes;
                  selfCopy = self;
                  v40 = v8;
                  v41 = v7;
                  filterType = [v30 filterType];
                  syncEnabled = [v30 syncEnabled];
                  *buf = 138544130;
                  v83 = mailboxId;
                  v84 = 2048;
                  v85 = type;
                  v86 = 2048;
                  v87 = filterType;
                  v7 = v41;
                  v8 = v40;
                  self = selfCopy;
                  mailboxes = v38;
                  v28 = v37;
                  v88 = 2048;
                  v89 = syncEnabled;
                  _os_log_impl(v8, log, OS_LOG_TYPE_DEFAULT, "Mailbox received. (Mailbox id: %{public}@, Type: %lu, Filter: %lu, Sync enabled: %lu)", buf, 0x2Au);
                }

                delegate = [(NNMKSyncPersistenceHandler *)self delegate];
                pairedDeviceSupportsMultipleMailboxes = [delegate pairedDeviceSupportsMultipleMailboxes];

                if ((pairedDeviceSupportsMultipleMailboxes & 1) == 0)
                {
                  v46 = [v30 copy];

                  [v46 setSyncActive:0];
                  [v46 setSyncEnabled:0];
                  v30 = v46;
                }

                currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
                [currentDeviceRegistry2 addOrUpdateMailbox:v30];

                v48 = [NNMKProtoMailbox protoMailboxFromMailbox:v30];
                v11 = v68;
                [(NNMKProtoAccountAdditionOrUpdate *)v68 addMailboxes:v48];
              }

              else
              {
                if (!v34)
                {
                  goto LABEL_27;
                }

                v48 = v33;
                mailboxId2 = [v30 mailboxId];
                type2 = [v30 type];
                *buf = 138543618;
                v83 = mailboxId2;
                v84 = 2048;
                v85 = type2;
                _os_log_impl(v8, v48, OS_LOG_TYPE_DEFAULT, "Mailbox will not be synced. (Id: %{public}@, Type: %lu)", buf, 0x16u);
              }

LABEL_27:
            }

            v69 = [mailboxes countByEnumeratingWithState:&v70 objects:v90 count:16];
          }

          while (v69);
        }

        v5 = v63;
        [(NNMKProtoInitialAccountsSync *)v63 addInitialAccount:v11];
        currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        v52 = [[NNMKSyncedAccount alloc] initWithAccount:v65];
        [currentDeviceRegistry3 addOrUpdateSyncedAccount:v52];

        v9 = v66 + 1;
        v6 = v62;
      }

      while (v66 + 1 != v64);
      v64 = [v62 countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v64);
  }

  delegate2 = [(NNMKSyncPersistenceHandler *)self delegate];
  pairedDeviceSupportsMultipleMailboxes2 = [delegate2 pairedDeviceSupportsMultipleMailboxes];

  if ((pairedDeviceSupportsMultipleMailboxes2 & 1) == 0)
  {
    [(NNMKSyncPersistenceHandler *)self _createDefaultMailbox:v6];
  }

  currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoInitialAccountsSync setFullSyncVersion:](v5, "setFullSyncVersion:", [currentDeviceRegistry4 fullSyncVersion]);

  v56 = MEMORY[0x277CCAAB0];
  date = [MEMORY[0x277CBEAA8] date];
  v58 = [v56 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
  [(NNMKProtoInitialAccountsSync *)v5 setDateSynced:v58];

  v59 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_createDefaultMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Creating default mailbox because device does not support multiple mailboxes", v17, 2u);
  }

  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v7 = [currentDeviceRegistry mailboxWithId:@"-1"];

  if (!v7)
  {
    v7 = objc_alloc_init(NNMKMailbox);
    [(NNMKMailbox *)v7 setMailboxId:@"-1"];
  }

  v8 = [[NNMKMailboxSelection alloc] initWithAccounts:mailboxCopy];
  mailboxesWithAllMessagesSyncEnabled = [(NNMKMailboxSelection *)v8 mailboxesWithAllMessagesSyncEnabled];
  v10 = [mailboxesWithAllMessagesSyncEnabled count];

  if (v10 == 1)
  {
    mailboxesWithAllMessagesSyncEnabled2 = [(NNMKMailboxSelection *)v8 mailboxesWithAllMessagesSyncEnabled];
    firstObject = [mailboxesWithAllMessagesSyncEnabled2 firstObject];

    -[NNMKMailbox setType:](v7, "setType:", [firstObject type]);
    -[NNMKMailbox setFilterType:](v7, "setFilterType:", [firstObject filterType]);
    accountId = [firstObject accountId];
    [(NNMKMailbox *)v7 setAccountId:accountId];

    v14 = [firstObject url];
    [(NNMKMailbox *)v7 setUrl:v14];

    customName = [firstObject customName];
    [(NNMKMailbox *)v7 setCustomName:customName];
  }

  else
  {
    [(NNMKMailbox *)v7 setFilterType:[(NNMKMailboxSelection *)v8 aggregatedMailboxesFilterTypes]];
    [(NNMKMailbox *)v7 setType:1];
    [(NNMKMailbox *)v7 resetURL];
  }

  [(NNMKMailbox *)v7 setSyncEnabled:1];
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry2 addOrUpdateMailbox:v7];
}

- (id)updateMailboxListForAccount:(id)account mailboxListChanged:(BOOL *)changed
{
  v113 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  delegate = [(NNMKSyncPersistenceHandler *)self delegate];
  pairedDeviceSupportsMultipleMailboxes = [delegate pairedDeviceSupportsMultipleMailboxes];

  if (pairedDeviceSupportsMultipleMailboxes)
  {
    changedCopy = changed;
    currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
    v81 = accountCopy;
    accountId = [accountCopy accountId];
    v11 = [currentDeviceRegistry mailboxesForAccountId:accountId];

    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v11;
    v13 = [obj countByEnumeratingWithState:&v98 objects:v112 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v99;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v99 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v98 + 1) + 8 * i);
          mailboxId = [v17 mailboxId];
          [v12 setObject:v17 forKeyedSubscript:mailboxId];
        }

        v14 = [obj countByEnumeratingWithState:&v98 objects:v112 count:16];
      }

      while (v14);
    }

    v19 = MEMORY[0x277CBEB18];
    mailboxes = [v81 mailboxes];
    v86 = [v19 arrayWithCapacity:{objc_msgSend(mailboxes, "count")}];

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    mailboxes2 = [v81 mailboxes];
    v21 = [mailboxes2 countByEnumeratingWithState:&v94 objects:v111 count:16];
    selfCopy = self;
    if (v21)
    {
      v22 = v21;
      v85 = 0;
      v23 = *v95;
      v82 = *v95;
      v83 = v12;
      do
      {
        v24 = 0;
        v84 = v22;
        do
        {
          if (*v95 != v23)
          {
            objc_enumerationMutation(mailboxes2);
          }

          v25 = *(*(&v94 + 1) + 8 * v24);
          syncController = [(NNMKSyncPersistenceHandler *)self syncController];
          v27 = [syncController canSyncMailbox:v25];

          if (v27)
          {
            mailboxId2 = [v25 mailboxId];
            v29 = [v12 objectForKeyedSubscript:mailboxId2];

            mailboxId3 = [v25 mailboxId];
            [v12 removeObjectForKey:mailboxId3];

            if (v29)
            {
              customName = [v29 customName];
              customName2 = [v25 customName];
              v33 = [customName isEqualToString:customName2];

              syncEnabled = [v29 syncEnabled];
              syncEnabled2 = [v25 syncEnabled];
              v36 = [v25 url];
              if (v36)
              {
                v37 = [v25 url];
                v38 = [v29 url];
                v39 = [v37 isEqual:v38] ^ 1;
              }

              else
              {
                v37 = [v29 url];
                v39 = v37 != 0;
              }

              v49 = v33 ^ 1u;
              v50 = (syncEnabled ^ syncEnabled2);

              self = selfCopy;
              if (((v49 | v50) & 1) != 0 || v39)
              {
                v51 = qword_28144D620;
                if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = v51;
                  mailboxId4 = [v25 mailboxId];
                  *buf = 138544130;
                  v104 = mailboxId4;
                  v105 = 2048;
                  v106 = v49;
                  v107 = 2048;
                  v108 = v50;
                  v109 = 2048;
                  v110 = v39;
                  _os_log_impl(&dword_25B19F000, v52, OS_LOG_TYPE_DEFAULT, "Mailbox updated. (Id: %{public}@, customNameChanged: %lu, syncEnabledChanged: %lu, urlChanged: %lu)", buf, 0x2Au);
                }

                if (v39)
                {
                  v54 = qword_28144D620;
                  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
                  {
                    v55 = v54;
                    mailboxId5 = [v25 mailboxId];
                    v57 = [v29 url];
                    absoluteString = [v57 absoluteString];
                    v59 = [v25 url];
                    absoluteString2 = [v59 absoluteString];
                    *buf = 138543874;
                    v104 = mailboxId5;
                    v105 = 2114;
                    v106 = absoluteString;
                    v107 = 2114;
                    v108 = absoluteString2;
                    _os_log_impl(&dword_25B19F000, v55, OS_LOG_TYPE_DEFAULT, "Mailbox URL changed. (Id: %{public}@, old URL: %{public}@, new URL: %{public}@)", buf, 0x20u);

                    self = selfCopy;
                  }
                }

                customName3 = [v25 customName];
                [v29 setCustomName:customName3];

                [v29 setSyncEnabled:{objc_msgSend(v25, "syncEnabled")}];
                v62 = [v25 url];
                [v29 setUrl:v62];

                currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
                [currentDeviceRegistry2 addOrUpdateMailbox:v29];

                v85 = 1;
              }

              v64 = [NNMKProtoMailbox protoMailboxFromMailbox:v29];
              [v86 addObject:v64];

              v23 = v82;
              v12 = v83;
              v22 = v84;
            }

            else
            {
              currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              [currentDeviceRegistry3 addOrUpdateMailbox:v25];

              v45 = [NNMKProtoMailbox protoMailboxFromMailbox:v25];
              [v86 addObject:v45];

              v46 = qword_28144D620;
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
              {
                v47 = v46;
                mailboxId6 = [v25 mailboxId];
                *buf = 138543362;
                v104 = mailboxId6;
                _os_log_impl(&dword_25B19F000, v47, OS_LOG_TYPE_DEFAULT, "Mailbox added. (Id: %{public}@)", buf, 0xCu);
              }

              v85 = 1;
            }
          }

          else
          {
            v40 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v41 = v40;
              mailboxId7 = [v25 mailboxId];
              type = [v25 type];
              *buf = 138543618;
              v104 = mailboxId7;
              v105 = 2048;
              v106 = type;
              _os_log_impl(&dword_25B19F000, v41, OS_LOG_TYPE_DEFAULT, "Mailbox will not be synced. (Id: %{public}@, Type: %lu)", buf, 0x16u);
            }
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [mailboxes2 countByEnumeratingWithState:&v94 objects:v111 count:16];
      }

      while (v22);
    }

    else
    {
      v85 = 0;
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    allValues = [v12 allValues];
    v66 = [allValues countByEnumeratingWithState:&v90 objects:v102 count:16];
    v67 = v85;
    if (v66)
    {
      v68 = v66;
      v69 = v12;
      v70 = *v91;
      do
      {
        for (j = 0; j != v68; ++j)
        {
          if (*v91 != v70)
          {
            objc_enumerationMutation(allValues);
          }

          v72 = *(*(&v90 + 1) + 8 * j);
          currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          mailboxId8 = [v72 mailboxId];
          [currentDeviceRegistry4 deleteMailboxWithId:mailboxId8];

          v75 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v76 = v75;
            mailboxId9 = [v72 mailboxId];
            *buf = 138543362;
            v104 = mailboxId9;
            _os_log_impl(&dword_25B19F000, v76, OS_LOG_TYPE_DEFAULT, "Mailbox deleted. (Id: %{public}@)", buf, 0xCu);
          }

          self = selfCopy;
        }

        v68 = [allValues countByEnumeratingWithState:&v90 objects:v102 count:16];
      }

      while (v68);
      v67 = 1;
      v12 = v69;
    }

    accountCopy = v81;
    if (changedCopy)
    {
      *changedCopy = v67 & 1;
    }
  }

  else
  {
    v86 = 0;
    if (changed)
    {
      *changed = 0;
    }
  }

  v78 = *MEMORY[0x277D85DE8];

  return v86;
}

- (id)addStandaloneAccountIdentity:(id)identity
{
  identityCopy = identity;
  username = [identityCopy username];
  if (![username length])
  {
    goto LABEL_9;
  }

  token = [identityCopy token];
  if (![token length])
  {

LABEL_9:
    goto LABEL_10;
  }

  refreshToken = [identityCopy refreshToken];

  if (refreshToken)
  {
    currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
    username2 = [identityCopy username];
    accountId = [currentDeviceRegistry accountIdForUsername:username2];

    if (!accountId)
    {
      currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      username3 = [identityCopy username];
      v13 = [currentDeviceRegistry2 syncedAccountForAccountWithId:username3];

      accountId = [v13 accountId];
    }

    if ([accountId length])
    {
      sessionController = [(NNMKSyncPersistenceHandler *)self sessionController];
      [sessionController updateStandaloneState:1 forAccountId:accountId];

      v15 = objc_alloc_init(NNMKProtoStandaloneAccountIdentity);
      username4 = [identityCopy username];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setUsername:username4];

      displayName = [identityCopy displayName];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setDisplayName:displayName];

      token2 = [identityCopy token];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setToken:token2];

      refreshToken2 = [identityCopy refreshToken];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setRefreshToken:refreshToken2];

      -[NNMKProtoStandaloneAccountIdentity setIdentityType:](v15, "setIdentityType:", [identityCopy identityType]);
      accountId2 = [identityCopy accountId];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setAccountIdentifier:accountId2];
    }

    else
    {
      v22 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
      {
        [(NNMKSyncPersistenceHandler *)v22 addStandaloneAccountIdentity:identityCopy];
      }

      v15 = 0;
    }

    goto LABEL_17;
  }

LABEL_10:
  v21 = qword_28144D630;
  if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
  {
    [NNMKSyncPersistenceHandler addStandaloneAccountIdentity:v21];
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (id)addAccountAuthenticationStatusRequest:(double)request
{
  v4 = objc_alloc_init(NNMKProtoAccountAuthenticationStatusRequest);
  [(NNMKProtoAccountAuthenticationStatusRequest *)v4 setRequestTime:request];

  return v4;
}

- (id)addMessages:(id)messages containsNewMessages:(BOOL)newMessages mailbox:(id)mailbox
{
  newMessagesCopy = newMessages;
  v121 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  v10 = objc_opt_new();
  syncController = [(NNMKSyncPersistenceHandler *)self syncController];
  v12 = [syncController filterMessages:messagesCopy byAlreadySynced:1 byMailbox:mailboxCopy];

  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_6];

  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    v15 = firstObject;
    v104 = newMessagesCopy;
    v97 = firstObject;
    if (!newMessagesCopy)
    {
      goto LABEL_4;
    }

    dateReceived = [firstObject dateReceived];
    currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
    mailboxId = [mailboxCopy mailboxId];
    [currentDeviceRegistry oldestDateReceivedForMailboxId:mailboxId];
    v20 = v19 = mailboxCopy;
    v21 = [dateReceived compare:v20];

    mailboxCopy = v19;
    v15 = v97;

    if (v21 == -1)
    {
      v89 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v90 = v89;
        v91 = [messagesCopy count];
        dateReceived2 = [v97 dateReceived];
        *buf = 134218242;
        v111 = v91;
        v112 = 2114;
        v113 = dateReceived2;
        _os_log_impl(&dword_25B19F000, v90, OS_LOG_TYPE_DEFAULT, "Dropping messages. Receiving an old batch of messages from MobileMail. Ignoring so we don't create a gap between the current messages we have and the old batch. (Count: %lu, Newest message received date: %{public}@", buf, 0x16u);

        v15 = v97;
      }

      [v10 setReceivedOldMessages:1];
    }

    else
    {
LABEL_4:
      currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      [currentDeviceRegistry2 beginUpdates];

      v99 = objc_alloc_init(NNMKProtoMessageAdditions);
      v102 = objc_alloc_init(NNMKProtoMessageAdditions);
      currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      mailboxId2 = [mailboxCopy mailboxId];
      dateReceived3 = [currentDeviceRegistry3 oldestDateReceivedForMailboxId:mailboxId2];

      if (!dateReceived3)
      {
        v26 = [v13 count];
        if ((v26 - 1) >= 0x13)
        {
          v27 = 19;
        }

        else
        {
          v27 = v26 - 1;
        }

        v28 = [v13 objectAtIndexedSubscript:v27];
        dateReceived3 = [v28 dateReceived];
        v29 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dateReceived3 requiringSecureCoding:1 error:0];
        [(NNMKProtoMessageAdditions *)v99 setDateForRequestingMoreMessages:v29];

        v30 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dateReceived3 requiringSecureCoding:1 error:0];
        [(NNMKProtoMessageAdditions *)v102 setDateForRequestingMoreMessages:v30];

        v31 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          [v28 dateReceived];
          v33 = dateReceived3;
          v35 = v34 = v15;
          *buf = 138543362;
          v111 = v35;
          _os_log_impl(&dword_25B19F000, v32, OS_LOG_TYPE_DEFAULT, "New received messages changed date cap (New date: %{public}@).", buf, 0xCu);

          v15 = v34;
          dateReceived3 = v33;
        }
      }

      v36 = [v13 count];
      syncController2 = [(NNMKSyncPersistenceHandler *)self syncController];
      v38 = [syncController2 filterMessages:v13 receivedBeforeDate:dateReceived3];

      if ([v38 count] < v36)
      {
        [v10 setReceivedOldMessages:1];
      }

      v39 = v102;
      if ([v38 count])
      {
        v94 = mailboxCopy;
        v95 = v10;
        v96 = messagesCopy;
        v98 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v38, "count")}];
        v101 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v38, "count")}];
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v93 = v38;
        obj = v38;
        v105 = [obj countByEnumeratingWithState:&v106 objects:v120 count:16];
        if (!v105)
        {
          goto LABEL_41;
        }

        v103 = *v107;
        while (1)
        {
          for (i = 0; i != v105; ++i)
          {
            if (*v107 != v103)
            {
              objc_enumerationMutation(obj);
            }

            v41 = dateReceived3;
            v42 = *(*(&v106 + 1) + 8 * i);
            v43 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v44 = v43;
              messageId = [v42 messageId];
              accountId = [v42 accountId];
              dateReceived4 = [v42 dateReceived];
              v48 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v42 status]);
              messageIdHeader = [v42 messageIdHeader];
              *buf = 138544386;
              v111 = messageId;
              v112 = 2114;
              v113 = accountId;
              v114 = 2114;
              v115 = dateReceived4;
              v116 = 2112;
              v117 = v48;
              v118 = 2114;
              v119 = messageIdHeader;
              _os_log_impl(&dword_25B19F000, v44, OS_LOG_TYPE_DEFAULT, "Message ADDED (Id: %{public}@ - Account Id: %{public}@ - Date Received: %{public}@ - Status: %@ - Message ID Header %{public}@ - Reason: New)", buf, 0x34u);
            }

            v50 = [NNMKSyncedMessage alloc];
            delegate = [(NNMKSyncPersistenceHandler *)self delegate];
            v52 = -[NNMKSyncedMessage initWithMessage:useDefaultMailbox:](v50, "initWithMessage:useDefaultMailbox:", v42, [delegate pairedDeviceSupportsMultipleMailboxes] ^ 1);

            sessionController = [(NNMKSyncPersistenceHandler *)self sessionController];
            if ([sessionController deviceInStandalone])
            {
              currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              accountId2 = [v42 accountId];
              v56 = [currentDeviceRegistry4 accountSourceTypeForAccountId:accountId2] == 0;
            }

            else
            {
              v56 = 1;
            }

            if (v104)
            {
              syncStateManager = [(NNMKSyncPersistenceHandler *)self syncStateManager];
              v58 = [syncStateManager willPresentNotificationForMessage:v42];

              v59 = v58 | v56;
              if (v58)
              {
                v60 = v99;
              }

              else
              {
                v60 = v102;
              }

              if (v58)
              {
                v61 = v98;
              }

              else
              {
                v61 = v101;
              }

              if (v59)
              {
                goto LABEL_35;
              }
            }

            else if (v56)
            {
              v58 = 0;
              v61 = v101;
              v60 = v102;
LABEL_35:
              v62 = [(NNMKSyncPersistenceHandler *)self protoMessageFromMessage:v42];
              [(NNMKProtoMessageAdditions *)v60 addMessageAddition:v62];

              messageId2 = [v42 messageId];
              [v61 addObject:messageId2];

              [(NNMKSyncedMessage *)v52 setUsedNotificationPriorityForMessageSync:v58];
              currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              [currentDeviceRegistry5 addOrUpdateSyncedMessage:v52];

              sessionController2 = [(NNMKSyncPersistenceHandler *)self sessionController];
              messageIdsToIgnoreStatusUpdates = [sessionController2 messageIdsToIgnoreStatusUpdates];
              messageId3 = [v42 messageId];
              [messageIdsToIgnoreStatusUpdates removeObject:messageId3];

              batchRequestHandler = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
              [batchRequestHandler handleMessageAdded:v42];
              goto LABEL_38;
            }

            v69 = qword_28144D620;
            if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_39;
            }

            batchRequestHandler = v69;
            accountId3 = [v42 accountId];
            messageId4 = [v42 messageId];
            *buf = 138543618;
            v111 = accountId3;
            v112 = 2114;
            v113 = messageId4;
            _os_log_impl(&dword_25B19F000, batchRequestHandler, OS_LOG_TYPE_DEFAULT, "Dropping message added because account source type does not allow sync. Account Id: %{public}@, Message Id: %{public}@", buf, 0x16u);

LABEL_38:
LABEL_39:

            dateReceived3 = v41;
          }

          v105 = [obj countByEnumeratingWithState:&v106 objects:v120 count:16];
          if (!v105)
          {
LABEL_41:

            mailboxCopy = v94;
            if ([(NNMKProtoMessageAdditions *)v99 messageAdditionsCount])
            {
              mailboxId3 = [v94 mailboxId];
              [(NNMKProtoMessageAdditions *)v99 setMailboxId:mailboxId3];

              currentDeviceRegistry6 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              mailboxId4 = [v94 mailboxId];
              -[NNMKProtoMessageAdditions setMailboxSyncVersion:](v99, "setMailboxSyncVersion:", [currentDeviceRegistry6 syncVersionForMailboxId:mailboxId4]);

              [(NNMKProtoMessageAdditions *)v99 setMessagesAreNew:v104];
              currentDeviceRegistry7 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              -[NNMKProtoMessageAdditions setFullSyncVersion:](v99, "setFullSyncVersion:", [currentDeviceRegistry7 fullSyncVersion]);

              v76 = MEMORY[0x277CCAAB0];
              date = [MEMORY[0x277CBEAA8] date];
              v78 = [v76 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
              [(NNMKProtoMessageAdditions *)v99 setDateSynced:v78];
            }

            v39 = v102;
            v10 = v95;
            messagesCopy = v96;
            v15 = v97;
            if ([(NNMKProtoMessageAdditions *)v102 messageAdditionsCount])
            {
              mailboxId5 = [v94 mailboxId];
              [(NNMKProtoMessageAdditions *)v102 setMailboxId:mailboxId5];

              currentDeviceRegistry8 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              mailboxId6 = [v94 mailboxId];
              -[NNMKProtoMessageAdditions setMailboxSyncVersion:](v102, "setMailboxSyncVersion:", [currentDeviceRegistry8 syncVersionForMailboxId:mailboxId6]);

              [(NNMKProtoMessageAdditions *)v102 setMessagesAreNew:v104];
              currentDeviceRegistry9 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              -[NNMKProtoMessageAdditions setFullSyncVersion:](v102, "setFullSyncVersion:", [currentDeviceRegistry9 fullSyncVersion]);

              v83 = MEMORY[0x277CCAAB0];
              date2 = [MEMORY[0x277CBEAA8] date];
              v85 = [v83 archivedDataWithRootObject:date2 requiringSecureCoding:1 error:0];
              [(NNMKProtoMessageAdditions *)v102 setDateSynced:v85];

              v39 = v102;
            }

            [v95 setMessageIdsWithNotificationPriority:v98];
            [v95 setMessageIdsWithDefaultPriority:v101];
            [v95 setProtoMessagesWithNotificationPriority:v99];
            [v95 setProtoMessagesWithDefaultPriority:v39];

            v38 = v93;
            break;
          }
        }
      }

      currentDeviceRegistry10 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      [currentDeviceRegistry10 endUpdates];

      v13 = v38;
    }
  }

  v87 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __70__NNMKSyncPersistenceHandler_addMessages_containsNewMessages_mailbox___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateReceived];
  v6 = [v4 dateReceived];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)addMoreMessages:(id)messages mailbox:(id)mailbox
{
  v67 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v9 = objc_alloc_init(NNMKProtoMoreMessages);
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoMoreMessages setFullSyncVersion:](v9, "setFullSyncVersion:", [currentDeviceRegistry2 fullSyncVersion]);

  v11 = MEMORY[0x277CCAAB0];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [v11 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
  [(NNMKProtoMoreMessages *)v9 setDateSynced:v13];

  mailboxId = [mailboxCopy mailboxId];
  [(NNMKProtoMoreMessages *)v9 setMailboxId:mailboxId];

  currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v46 = mailboxCopy;
  mailboxId2 = [mailboxCopy mailboxId];
  -[NNMKProtoMoreMessages setMailboxSyncVersion:](v9, "setMailboxSyncVersion:", [currentDeviceRegistry3 syncVersionForMailboxId:mailboxId2]);

  if ([messagesCopy count])
  {
    lastObject = [messagesCopy lastObject];
    dateReceived = [lastObject dateReceived];
    if (dateReceived)
    {
      v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dateReceived requiringSecureCoding:1 error:0];
      [(NNMKProtoMoreMessages *)v9 setDateForRequestingMoreMessages:v19];
    }
  }

  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = messagesCopy;
  v21 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v53;
    v24 = &__logCategories;
    v48 = *v53;
    selfCopy = self;
    v47 = v20;
    do
    {
      v25 = 0;
      v50 = v22;
      do
      {
        if (*v53 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v52 + 1) + 8 * v25);
        v27 = v24[1];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          messageId = [v26 messageId];
          [v26 accountId];
          v31 = v30 = v9;
          [v26 dateReceived];
          v33 = v32 = v24;
          v34 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v26 status]);
          messageIdHeader = [v26 messageIdHeader];
          *buf = 138544386;
          v57 = messageId;
          v58 = 2114;
          v59 = v31;
          v60 = 2114;
          v61 = v33;
          v62 = 2112;
          v63 = v34;
          v64 = 2114;
          v65 = messageIdHeader;
          _os_log_impl(&dword_25B19F000, v28, OS_LOG_TYPE_DEFAULT, "Message ADDED (Id: %{public}@ - Account Id: %{public}@ - Date Received: %{public}@ - Status: %@ - Message ID Header %{public}@ - Reason: #LOAD_MORE_MESSAGES)", buf, 0x34u);

          v24 = v32;
          v9 = v30;
          v20 = v47;
          self = selfCopy;

          v23 = v48;
          v22 = v50;
        }

        v36 = [(NNMKSyncPersistenceHandler *)self protoMessageFromMessage:v26];
        [(NNMKProtoMoreMessages *)v9 addAddedMessage:v36];

        v37 = [NNMKSyncedMessage alloc];
        delegate = [(NNMKSyncPersistenceHandler *)self delegate];
        v39 = -[NNMKSyncedMessage initWithMessage:useDefaultMailbox:](v37, "initWithMessage:useDefaultMailbox:", v26, [delegate pairedDeviceSupportsMultipleMailboxes] ^ 1);

        batchRequestHandler = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
        [batchRequestHandler handleMessageAdded:v26];

        currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        [currentDeviceRegistry4 addOrUpdateSyncedMessage:v39];

        messageId2 = [v26 messageId];
        [v20 addObject:messageId2];

        ++v25;
      }

      while (v22 != v25);
      v22 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v22);
  }

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry5 endUpdates];

  v44 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)addMoreConversationSpecificMessages:(id)messages conversationId:(id)id mailbox:(id)mailbox
{
  v68 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  idCopy = id;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v12 = objc_alloc_init(NNMKProtoMoreMessagesForConversation);
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoMoreMessagesForConversation setFullSyncVersion:](v12, "setFullSyncVersion:", [currentDeviceRegistry2 fullSyncVersion]);

  v14 = MEMORY[0x277CCAAB0];
  date = [MEMORY[0x277CBEAA8] date];
  v16 = [v14 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
  [(NNMKProtoMoreMessagesForConversation *)v12 setDateSynced:v16];

  v46 = idCopy;
  [(NNMKProtoMoreMessagesForConversation *)v12 setConversationId:idCopy];
  mailboxId = [mailboxCopy mailboxId];
  [(NNMKProtoMoreMessagesForConversation *)v12 setMailboxId:mailboxId];

  currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v45 = mailboxCopy;
  mailboxId2 = [mailboxCopy mailboxId];
  -[NNMKProtoMoreMessagesForConversation setMailboxSyncVersion:](v12, "setMailboxSyncVersion:", [currentDeviceRegistry3 syncVersionForMailboxId:mailboxId2]);

  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = messagesCopy;
  v21 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v54;
    v24 = &__logCategories;
    v47 = *v54;
    v48 = v12;
    do
    {
      v25 = 0;
      v49 = v22;
      do
      {
        if (*v54 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v53 + 1) + 8 * v25);
        v27 = v24[1];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          log = v27;
          messageId = [v26 messageId];
          accountId = [v26 accountId];
          dateReceived = [v26 dateReceived];
          v30 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v26 status]);
          [v26 messageIdHeader];
          v31 = v24;
          selfCopy = self;
          v34 = v33 = v20;
          *buf = 138544386;
          v58 = messageId;
          v59 = 2114;
          v60 = accountId;
          v61 = 2114;
          v62 = dateReceived;
          v63 = 2112;
          v64 = v30;
          v65 = 2114;
          v66 = v34;
          _os_log_impl(&dword_25B19F000, log, OS_LOG_TYPE_DEFAULT, "Message ADDED (Id: %{public}@ - Account Id: %{public}@ - Date Received: %{public}@ - Status: %@ - Message ID Header %{public}@ - Reason: #LOAD_MORE_MESSAGES for Conversation)", buf, 0x34u);

          v20 = v33;
          self = selfCopy;
          v24 = v31;

          v22 = v49;
          v12 = v48;

          v23 = v47;
        }

        v35 = [(NNMKSyncPersistenceHandler *)self protoMessageFromMessage:v26];
        [(NNMKProtoMoreMessagesForConversation *)v12 addAddedMessage:v35];

        v36 = [NNMKSyncedMessage alloc];
        delegate = [(NNMKSyncPersistenceHandler *)self delegate];
        v38 = -[NNMKSyncedMessage initWithMessage:useDefaultMailbox:](v36, "initWithMessage:useDefaultMailbox:", v26, [delegate pairedDeviceSupportsMultipleMailboxes] ^ 1);

        batchRequestHandler = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
        [batchRequestHandler handleMessageAdded:v26];

        currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        [currentDeviceRegistry4 addOrUpdateSyncedMessage:v38];

        messageId2 = [v26 messageId];
        [v20 addObject:messageId2];

        ++v25;
      }

      while (v22 != v25);
      v22 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v22);
  }

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry5 endUpdates];

  v43 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)addMessagesToResend:(id)resend mailbox:(id)mailbox
{
  v62 = *MEMORY[0x277D85DE8];
  resendCopy = resend;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v43 = objc_alloc_init(NNMKAdditionResult);
  v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resendCopy, "count")}];
  v9 = objc_alloc_init(NNMKProtoMessageAdditions);
  [(NNMKProtoMessageAdditions *)v9 setMessagesAreNew:0];
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoMessageAdditions setFullSyncVersion:](v9, "setFullSyncVersion:", [currentDeviceRegistry2 fullSyncVersion]);

  v11 = MEMORY[0x277CCAAB0];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [v11 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
  [(NNMKProtoMessageAdditions *)v9 setDateSynced:v13];

  mailboxId = [mailboxCopy mailboxId];
  [(NNMKProtoMessageAdditions *)v9 setMailboxId:mailboxId];

  currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v44 = mailboxCopy;
  mailboxId2 = [mailboxCopy mailboxId];
  v48 = v9;
  -[NNMKProtoMessageAdditions setMailboxSyncVersion:](v9, "setMailboxSyncVersion:", [currentDeviceRegistry3 syncVersionForMailboxId:mailboxId2]);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = resendCopy;
  v18 = [v17 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v18)
  {
    v19 = v18;
    resendInterval = 0;
    v21 = *v50;
    selfCopy = self;
    do
    {
      v22 = 0;
      v46 = v19;
      do
      {
        if (*v50 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v49 + 1) + 8 * v22);
        currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        messageId = [v23 messageId];
        v26 = [currentDeviceRegistry4 syncedMessageForMessageWithId:messageId];

        if (v26 && [v26 resendRequested])
        {
          if (!resendInterval)
          {
            resendInterval = [v26 resendInterval];
          }

          [v23 setIsThreadSpecific:{objc_msgSend(v26, "isThreadSpecific")}];
          [v23 setIsSpecialMailboxSpecific:{objc_msgSend(v26, "isSpecialMailboxSpecific")}];
          resendInterval2 = [v26 resendInterval];
          if (resendInterval2 < resendInterval)
          {
            resendInterval = resendInterval2;
          }

          [v26 setStatus:{objc_msgSend(v23, "status")}];
          [v26 setResendRequested:0];
          [v26 setResendInterval:0];
          [v26 setUsedNotificationPriorityForMessageSync:0];
          currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          [currentDeviceRegistry5 addOrUpdateSyncedMessage:v26];

          messageId2 = [v23 messageId];
          [v47 addObject:messageId2];

          [v23 setStatusVersion:{objc_msgSend(v26, "statusVersion")}];
          v30 = [(NNMKSyncPersistenceHandler *)self protoMessageFromMessage:v23];
          [(NNMKProtoMessageAdditions *)v48 addMessageAddition:v30];

          v31 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
            messageId3 = [v23 messageId];
            [v23 dateReceived];
            v34 = v21;
            v35 = resendInterval;
            v37 = v36 = v17;
            v38 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v23 status]);
            statusVersion = [v23 statusVersion];
            *buf = 138544130;
            v54 = messageId3;
            v55 = 2114;
            v56 = v37;
            v57 = 2112;
            v58 = v38;
            v59 = 2048;
            v60 = statusVersion;
            _os_log_impl(&dword_25B19F000, v32, OS_LOG_TYPE_DEFAULT, "Message being RESENT (Id: %{public}@ - Date Received: %{public}@ - Status: %@ - StatusVersion: %lu).", buf, 0x2Au);

            v17 = v36;
            resendInterval = v35;
            v21 = v34;
            v19 = v46;

            self = selfCopy;
          }
        }

        ++v22;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v19);
  }

  else
  {
    resendInterval = 0;
  }

  currentDeviceRegistry6 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry6 endUpdates];

  [(NNMKAdditionResult *)v43 setProtoMessagesWithDefaultPriority:v48];
  [(NNMKAdditionResult *)v43 setMessageIdsWithDefaultPriority:v47];
  [(NNMKAdditionResult *)v43 setResendInterval:resendInterval];

  v41 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)updateMessagesStatus:(id)status mailbox:(id)mailbox
{
  v110 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v91 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  v90 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v87 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(statusCopy, "count")}];
  v86 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(statusCopy, "count")}];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = statusCopy;
  v9 = [obj countByEnumeratingWithState:&v97 objects:v109 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v98;
    *&v10 = 138544130;
    v85 = v10;
    v92 = *v98;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v98 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v97 + 1) + 8 * i);
        sessionController = [(NNMKSyncPersistenceHandler *)self sessionController];
        messageIdsToIgnoreStatusUpdates = [sessionController messageIdsToIgnoreStatusUpdates];
        messageId = [v14 messageId];
        v18 = [messageIdsToIgnoreStatusUpdates containsObject:messageId];

        if (v18)
        {
          v19 = qword_28144D620;
          if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v20 = v19;
          messageId2 = [v14 messageId];
          dateReceived = [v14 dateReceived];
          v23 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
          *buf = 138543874;
          v102 = messageId2;
          v103 = 2114;
          v104 = dateReceived;
          v105 = 2112;
          v106 = v23;
          _os_log_impl(&dword_25B19F000, v20, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED but updates are being ignored for it. Dropping... (Id: %{public}@ - Date Received: %{public}@ - Status: %@).", buf, 0x20u);
        }

        else
        {
          currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          messageId3 = [v14 messageId];
          v20 = [currentDeviceRegistry2 syncedMessageForMessageWithId:messageId3];

          syncController = [(NNMKSyncPersistenceHandler *)self syncController];
          v27 = 0;
          if ([syncController shouldAddsDeletesMessagesByStatusUpdatesForMailbox:mailboxCopy] && v20)
          {
            syncController2 = [(NNMKSyncPersistenceHandler *)self syncController];
            if ([syncController2 isValidMessageStatus:-[NSObject status](v20 forMailbox:{"status"), mailboxCopy}])
            {
              v27 = 0;
            }

            else
            {
              syncController3 = [(NNMKSyncPersistenceHandler *)self syncController];
              v27 = [syncController3 isValidMessageStatus:objc_msgSend(v14 forMailbox:{"status"), mailboxCopy}];

              v12 = v92;
            }
          }

          if (!v20 || (v27 & 1) != 0)
          {
            syncController4 = [(NNMKSyncPersistenceHandler *)self syncController];
            if (([syncController4 shouldAddsDeletesMessagesByStatusUpdatesForMailbox:mailboxCopy] & 1) == 0)
            {

LABEL_26:
              v47 = qword_28144D620;
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
              {
                v48 = v47;
                messageId4 = [v14 messageId];
                dateReceived2 = [v14 dateReceived];
                v51 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
                *buf = v85;
                v102 = messageId4;
                v103 = 2114;
                v104 = dateReceived2;
                v105 = 2112;
                v106 = v51;
                v107 = 2114;
                v108 = v20;
                _os_log_debug_impl(&dword_25B19F000, v48, OS_LOG_TYPE_DEBUG, "Dropping Message Status UPDATE. Message is not being tracked. (Id: %{public}@ - Date Received: %{public}@ - Status: %@ - MessageSynced: %{public}@).", buf, 0x2Au);

                v12 = v92;
              }

              goto LABEL_42;
            }

            syncController5 = [(NNMKSyncPersistenceHandler *)self syncController];
            v36 = [syncController5 canSyncMessage:v14 forMailbox:mailboxCopy];

            v12 = v92;
            if (!v36)
            {
              goto LABEL_26;
            }

            v37 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v38 = v37;
              messageId5 = [v14 messageId];
              dateReceived3 = [v14 dateReceived];
              v41 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
              *buf = 138543874;
              v102 = messageId5;
              v103 = 2114;
              v104 = dateReceived3;
              v105 = 2112;
              v106 = v41;
              _os_log_impl(&dword_25B19F000, v38, OS_LOG_TYPE_DEFAULT, "Received Message Status UPDATE, but it still hadn't been synced or it is about to be removed on the client. Will try to re-add message if not too old. (Id: %{public}@ - Date Received: %{public}@ - Status: %@).", buf, 0x20u);
            }

            batchRequestHandler = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
            messageId6 = [v14 messageId];
            mailboxId = [mailboxCopy mailboxId];
            [batchRequestHandler handleMessageDeleted:messageId6 mailboxId:mailboxId];

            currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
            messageId7 = [v14 messageId];
            [currentDeviceRegistry3 removeSyncedMessageForMessageWithId:messageId7];

            [v87 addObject:v14];
          }

          else
          {
            status = [v20 status];
            if (status == [v14 status])
            {
              v31 = qword_28144D620;
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
              {
                v32 = v31;
                messageId8 = [v14 messageId];
                *buf = 138543362;
                v102 = messageId8;
                _os_log_impl(&dword_25B19F000, v32, OS_LOG_TYPE_DEFAULT, "Dropping Message Status UPDATE because status did not change. %{public}@", buf, 0xCu);
              }

              goto LABEL_42;
            }

            syncController6 = [(NNMKSyncPersistenceHandler *)self syncController];
            v53 = [syncController6 isValidMessageStatus:objc_msgSend(v14 forMailbox:{"status"), mailboxCopy}];

            v54 = qword_28144D620;
            v55 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
            if (v53)
            {
              if (v55)
              {
                v56 = v54;
                messageId9 = [v14 messageId];
                v58 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
                dateReceived4 = [v14 dateReceived];
                *buf = 138543874;
                v102 = messageId9;
                v103 = 2112;
                v104 = v58;
                v105 = 2114;
                v106 = dateReceived4;
                _os_log_impl(&dword_25B19F000, v56, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED (Id: %{public}@ - Status: %@ - Date Received: %{public}@ - Source: MobileMail).", buf, 0x20u);
              }

              [v20 setStatusVersion:[v20 statusVersion]+ 1];
              -[NSObject setStatus:](v20, "setStatus:", [v14 status]);
              v60 = objc_alloc_init(NNMKProtoMessageStatusUpdate);
              syncController7 = [(NNMKSyncPersistenceHandler *)self syncController];
              messageId10 = [v14 messageId];
              v63 = [syncController7 watchMessageIdFromMessageId:messageId10];
              [(NNMKProtoMessageStatusUpdate *)v60 setMessageId:v63];

              -[NNMKProtoMessageStatusUpdate setUpdatedStatus:](v60, "setUpdatedStatus:", [v14 status]);
              [(NNMKProtoMessageStatusUpdate *)v60 setStatusVersion:[v20 statusVersion]];
              usedNotificationPriorityForMessageSync = [v20 usedNotificationPriorityForMessageSync];
              v65 = usedNotificationPriorityForMessageSync == 0;
              if (usedNotificationPriorityForMessageSync)
              {
                v66 = v91;
              }

              else
              {
                v66 = v90;
              }

              if (v65)
              {
                v67 = array2;
              }

              else
              {
                v67 = array;
              }

              [(NNMKProtoMessageStatusUpdates *)v66 addMessageStatusUpdate:v60];
              messageId11 = [v14 messageId];
              [v67 addObject:messageId11];

              currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              [currentDeviceRegistry4 addOrUpdateSyncedMessage:v20];
            }

            else
            {
              if (v55)
              {
                v70 = v54;
                messageId12 = [v14 messageId];
                dateReceived5 = [v14 dateReceived];
                v73 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
                *buf = 138543874;
                v102 = messageId12;
                v103 = 2114;
                v104 = dateReceived5;
                v105 = 2112;
                v106 = v73;
                _os_log_impl(&dword_25B19F000, v70, OS_LOG_TYPE_DEFAULT, "Removing message that does not belong to current mailbox due to status change. (Id: %{public}@ - Date Received: %{public}@ - Status: %@).", buf, 0x20u);
              }

              messageId13 = [v14 messageId];
              [v86 addObject:messageId13];

              batchRequestHandler2 = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
              [batchRequestHandler2 handleMessageAdded:v14];
            }
          }

          v12 = v92;
        }

LABEL_42:
      }

      v11 = [obj countByEnumeratingWithState:&v97 objects:v109 count:16];
    }

    while (v11);
  }

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry5 endUpdates];

  currentDeviceRegistry6 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  mailboxId2 = [mailboxCopy mailboxId];
  v79 = [currentDeviceRegistry6 syncVersionForMailboxId:mailboxId2];

  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __59__NNMKSyncPersistenceHandler_updateMessagesStatus_mailbox___block_invoke;
  v94[3] = &unk_279936488;
  v94[4] = self;
  v95 = mailboxCopy;
  v96 = v79;
  v80 = mailboxCopy;
  v81 = MEMORY[0x25F864490](v94);
  (v81)[2](v81, v91);
  (v81)[2](v81, v90);
  v82 = objc_opt_new();
  [v82 setProtoMessageUpdatesWithNotificationPriority:v91];
  [v82 setProtoMessageUpdatesWithDefaultPriority:v90];
  [v82 setMessageIdsWithNotificationPriority:array];
  [v82 setMessageIdsWithDefaultPriority:array2];
  [v82 setMessagesToAdd:v87];
  [v82 setMessageIdsToDelete:v86];

  v83 = *MEMORY[0x277D85DE8];

  return v82;
}

void __59__NNMKSyncPersistenceHandler_updateMessagesStatus_mailbox___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 messageStatusUpdatesCount])
  {
    v3 = [*(a1 + 32) currentDeviceRegistry];
    [v8 setFullSyncVersion:{objc_msgSend(v3, "fullSyncVersion")}];

    v4 = MEMORY[0x277CCAAB0];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    [v8 setDateSynced:v6];

    v7 = [*(a1 + 40) mailboxId];
    [v8 setMailboxId:v7];

    [v8 setMailboxSyncVersion:*(a1 + 48)];
  }
}

- (id)deleteMessagesWithIds:(id)ids mailbox:(id)mailbox
{
  v59 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v48 = objc_alloc_init(NNMKProtoMessageDeletions);
  v47 = objc_alloc_init(NNMKProtoMessageDeletions);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = idsCopy;
  v9 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v53;
    *&v10 = 138543362;
    v43 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v52 + 1) + 8 * i);
        currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        v16 = [currentDeviceRegistry2 syncedMessageForMessageWithId:v14];

        if (v16)
        {
          v17 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v43;
            v57 = v14;
            _os_log_impl(&dword_25B19F000, v17, OS_LOG_TYPE_DEFAULT, "Message DELETED (Id: %{public}@).", buf, 0xCu);
          }

          v18 = objc_alloc_init(NNMKProtoMessageDeletion);
          syncController = [(NNMKSyncPersistenceHandler *)self syncController];
          v20 = [syncController watchMessageIdFromMessageId:v14];
          [(NNMKProtoMessageDeletion *)v18 setMessageId:v20];

          usedNotificationPriorityForMessageSync = [v16 usedNotificationPriorityForMessageSync];
          v22 = usedNotificationPriorityForMessageSync == 0;
          if (usedNotificationPriorityForMessageSync)
          {
            v23 = v48;
          }

          else
          {
            v23 = v47;
          }

          if (v22)
          {
            v24 = array2;
          }

          else
          {
            v24 = array;
          }

          [(NNMKProtoMessageDeletions *)v23 addMessageDeletion:v18];
          [v24 addObject:v14];
          batchRequestHandler = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
          mailboxId = [mailboxCopy mailboxId];
          [batchRequestHandler handleMessageDeleted:v14 mailboxId:mailboxId];

          currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          mailboxId2 = [mailboxCopy mailboxId];
          [currentDeviceRegistry3 insertDeletedMessageId:v14 mailboxId:mailboxId2];

          currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          [currentDeviceRegistry4 removeSyncedMessageForMessageWithId:v14];

          sessionController = [(NNMKSyncPersistenceHandler *)self sessionController];
          notificationPayloadAcks = [sessionController notificationPayloadAcks];
          [notificationPayloadAcks removeObjectForKey:v14];
        }

        sessionController2 = [(NNMKSyncPersistenceHandler *)self sessionController];
        messageIdsToIgnoreStatusUpdates = [sessionController2 messageIdsToIgnoreStatusUpdates];
        [messageIdsToIgnoreStatusUpdates removeObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v11);
  }

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  mailboxId3 = [mailboxCopy mailboxId];
  v36 = [currentDeviceRegistry5 syncVersionForMailboxId:mailboxId3];

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __60__NNMKSyncPersistenceHandler_deleteMessagesWithIds_mailbox___block_invoke;
  v49[3] = &unk_2799364B0;
  v49[4] = self;
  v50 = mailboxCopy;
  v51 = v36;
  v37 = mailboxCopy;
  v38 = MEMORY[0x25F864490](v49);
  (v38)[2](v38, v48);
  (v38)[2](v38, v47);
  v39 = objc_alloc_init(NNMKDeletionResult);
  [(NNMKDeletionResult *)v39 setUnprotectedNotificationProtobuf:v48];
  [(NNMKDeletionResult *)v39 setUnprotectedNotificationMessageIds:array];
  [(NNMKDeletionResult *)v39 setUnprotectedDefaultProtobuf:v47];
  [(NNMKDeletionResult *)v39 setUnprotectedDefaultMessageIds:array2];
  currentDeviceRegistry6 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry6 endUpdates];

  v41 = *MEMORY[0x277D85DE8];

  return v39;
}

void __60__NNMKSyncPersistenceHandler_deleteMessagesWithIds_mailbox___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 messageDeletionsCount])
  {
    v3 = [*(a1 + 32) currentDeviceRegistry];
    [v8 setFullSyncVersion:{objc_msgSend(v3, "fullSyncVersion")}];

    v4 = MEMORY[0x277CCAAB0];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    [v8 setDateSynced:v6];

    v7 = [*(a1 + 40) mailboxId];
    [v8 setMailboxId:v7];

    [v8 setMailboxSyncVersion:*(a1 + 48)];
  }
}

- (id)updateMessagesFromConversation:(id)conversation withState:(unint64_t)state include:(BOOL)include mailbox:(id)mailbox
{
  includeCopy = include;
  v61 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  mailboxCopy = mailbox;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [currentDeviceRegistry beginUpdates];

  v50 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  v49 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  array = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v47 = v46 = self;
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v42 = conversationCopy;
  v13 = [currentDeviceRegistry2 syncedMessagesForConversationWithId:conversationCopy];

  v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v57;
    v17 = state != 128 || includeCopy;
    v51 = v17;
    v45 = *v57;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v57 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v56 + 1) + 8 * i);
        if ((((([v19 status] & state) == 0) ^ includeCopy) & 1) == 0)
        {
          if ((v51 & 1) != 0 || [mailboxCopy filterType] != 32)
          {
            [v19 setStatusVersion:{objc_msgSend(v19, "statusVersion") + 1}];
            status = [v19 status];
            if (includeCopy)
            {
              v22 = status | state;
            }

            else
            {
              v22 = status ^ state;
            }

            [v19 setStatus:v22];
            messageId2 = objc_alloc_init(NNMKProtoMessageStatusUpdate);
            syncController = [(NNMKSyncPersistenceHandler *)v46 syncController];
            [v19 messageId];
            v25 = v24 = v15;
            v26 = [syncController watchMessageIdFromMessageId:v25];
            [(NNMKProtoMessageStatusUpdate *)messageId2 setMessageId:v26];

            -[NNMKProtoMessageStatusUpdate setUpdatedStatus:](messageId2, "setUpdatedStatus:", [v19 status]);
            -[NNMKProtoMessageStatusUpdate setStatusVersion:](messageId2, "setStatusVersion:", [v19 statusVersion]);
            usedNotificationPriorityForMessageSync = [v19 usedNotificationPriorityForMessageSync];
            v28 = usedNotificationPriorityForMessageSync == 0;
            if (usedNotificationPriorityForMessageSync)
            {
              v29 = v50;
            }

            else
            {
              v29 = v49;
            }

            if (v28)
            {
              v30 = v47;
            }

            else
            {
              v30 = array;
            }

            [(NNMKProtoMessageStatusUpdates *)v29 addMessageStatusUpdate:messageId2];
            messageId = [v19 messageId];
            [v30 addObject:messageId];

            v15 = v24;
            currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)v46 currentDeviceRegistry];
            [currentDeviceRegistry3 addOrUpdateSyncedMessage:v19];

            v16 = v45;
          }

          else
          {
            messageId2 = [v19 messageId];
            [v43 addObject:messageId2];
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v15);
  }

  currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)v46 currentDeviceRegistry];
  [currentDeviceRegistry4 endUpdates];

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)v46 currentDeviceRegistry];
  mailboxId = [mailboxCopy mailboxId];
  v36 = [currentDeviceRegistry5 syncVersionForMailboxId:mailboxId];

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __87__NNMKSyncPersistenceHandler_updateMessagesFromConversation_withState_include_mailbox___block_invoke;
  v53[3] = &unk_279936488;
  v53[4] = v46;
  v54 = mailboxCopy;
  v55 = v36;
  v37 = mailboxCopy;
  v38 = MEMORY[0x25F864490](v53);
  (v38)[2](v38, v50);
  (v38)[2](v38, v49);
  v39 = objc_opt_new();
  [v39 setProtoMessageUpdatesWithNotificationPriority:v50];
  [v39 setProtoMessageUpdatesWithDefaultPriority:v49];
  [v39 setMessageIdsWithNotificationPriority:array];
  [v39 setMessageIdsWithDefaultPriority:v47];
  [v39 setMessageIdsToDelete:v43];

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

void __87__NNMKSyncPersistenceHandler_updateMessagesFromConversation_withState_include_mailbox___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 messageStatusUpdatesCount])
  {
    v3 = [*(a1 + 32) currentDeviceRegistry];
    [v8 setFullSyncVersion:{objc_msgSend(v3, "fullSyncVersion")}];

    v4 = MEMORY[0x277CCAAB0];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    [v8 setDateSynced:v6];

    v7 = [*(a1 + 40) mailboxId];
    [v8 setMailboxId:v7];

    [v8 setMailboxSyncVersion:*(a1 + 48)];
  }
}

- (id)addMessageContent:(id)content forMessage:(id)message mailbox:(id)mailbox
{
  v112 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  messageCopy = message;
  v9 = objc_alloc_init(NNMKMessageContentResult);
  selfCopy = self;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  messageId = [contentCopy messageId];
  v12 = [currentDeviceRegistry syncedMessageForMessageWithId:messageId];

  usedNotificationPriorityForMessageSync = [v12 usedNotificationPriorityForMessageSync];
  contentRequestedByUser = [v12 contentRequestedByUser];
  if ((contentRequestedByUser & 1) == 0)
  {
    if (usedNotificationPriorityForMessageSync)
    {
      contentSyncedUsingNotificationPriority = [v12 contentSyncedUsingNotificationPriority];
    }

    else
    {
      contentSyncedUsingNotificationPriority = [v12 contentSynced];
    }

    [(NNMKMessageContentResult *)v9 setAlreadySyncedWithCurrentPriority:contentSyncedUsingNotificationPriority];
  }

  [(NNMKMessageContentResult *)v9 setMessageDoesNotExist:v12 == 0];
  if (!v12 || [(NNMKMessageContentResult *)v9 alreadySyncedWithCurrentPriority])
  {
    goto LABEL_68;
  }

  v91 = contentRequestedByUser;
  currentDeviceRegistry2 = [(NNMKSyncPersistenceHandler *)selfCopy currentDeviceRegistry];
  [currentDeviceRegistry2 beginUpdates];

  if ([contentCopy mainAlternativeValid])
  {
    preview = [messageCopy preview];
  }

  else
  {
    hasTextData = [contentCopy hasTextData];
    preview = [messageCopy preview];
    if (!hasTextData)
    {
      goto LABEL_15;
    }
  }

  if ([preview length] >= 0x65)
  {
    v19 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
    {
      [NNMKSyncPersistenceHandler addMessageContent:v19 forMessage:? mailbox:?];
    }

    v20 = [preview substringToIndex:100];

    preview = v20;
  }

LABEL_15:
  v95 = v9;
  v92 = preview;
  v89 = [preview dataUsingEncoding:10];
  compressedData = [v89 compressedData];
  v22 = objc_alloc_init(NNMKProtoMessageContentSync);
  currentDeviceRegistry3 = [(NNMKSyncPersistenceHandler *)selfCopy currentDeviceRegistry];
  -[NNMKProtoMessageContentSync setFullSyncVersion:](v22, "setFullSyncVersion:", [currentDeviceRegistry3 fullSyncVersion]);

  v24 = MEMORY[0x277CCAAB0];
  date = [MEMORY[0x277CBEAA8] date];
  v26 = [v24 archivedDataWithRootObject:date requiringSecureCoding:1 error:0];
  [(NNMKProtoMessageContentSync *)v22 setDateSynced:v26];

  syncController = [(NNMKSyncPersistenceHandler *)selfCopy syncController];
  messageId2 = [contentCopy messageId];
  v29 = [syncController watchMessageIdFromMessageId:messageId2];
  [(NNMKProtoMessageContentSync *)v22 setMessageId:v29];

  mailboxId = [messageCopy mailboxId];
  [(NNMKProtoMessageContentSync *)v22 setMailboxId:mailboxId];

  -[NNMKProtoMessageContentSync setMainAlternativeValid:](v22, "setMainAlternativeValid:", [contentCopy mainAlternativeValid]);
  v88 = compressedData;
  [(NNMKProtoMessageContentSync *)v22 setPreview:compressedData];
  v99 = v22;
  -[NNMKProtoMessageContentSync setPartiallyLoaded:](v22, "setPartiallyLoaded:", [contentCopy partiallyLoaded]);
  currentDeviceRegistry4 = [(NNMKSyncPersistenceHandler *)selfCopy currentDeviceRegistry];
  supportsWebKit = [currentDeviceRegistry4 supportsWebKit];

  v93 = v12;
  v87 = supportsWebKit;
  if (supportsWebKit)
  {
    bOOLValue = [supportsWebKit BOOLValue];
    v34 = [supportsWebKit BOOLValue] ^ 1;
    if (!bOOLValue)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v34 = 1;
  }

  if (![(NNMKProtoMessageContentSync *)v99 mainAlternativeValid])
  {
    htmlContentData = [contentCopy htmlContentData];
    compressedData2 = [htmlContentData compressedData];

    htmlContentData2 = [contentCopy htmlContentData];
    if ([htmlContentData2 length] >> 21)
    {
    }

    else
    {
      v38 = (([compressedData2 length] & 0xFFFFFFFFFFF00000) != 0) & usedNotificationPriorityForMessageSync;

      if ((v38 & 1) == 0)
      {
        v39 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
        {
          v40 = v39;
          messageId3 = [contentCopy messageId];
          htmlContentData3 = [contentCopy htmlContentData];
          *buf = 138543874;
          v107 = messageId3;
          v108 = 2048;
          v109 = [htmlContentData3 length];
          v110 = 2048;
          v111 = [compressedData2 length];
          _os_log_impl(&dword_25B19F000, v40, OS_LOG_TYPE_INFO, "Message content will sync html content. %{public}@ - size: %lu - compressed: %lu", buf, 0x20u);
        }

        [(NNMKProtoMessageContentSync *)v99 setHtmlContentData:compressedData2];
        v97 = [compressedData2 length];

        if (v34)
        {
          goto LABEL_33;
        }

        goto LABEL_21;
      }
    }

    v43 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
      messageId4 = [contentCopy messageId];
      htmlContentData4 = [contentCopy htmlContentData];
      *buf = 138543874;
      v107 = messageId4;
      v108 = 2048;
      v109 = [htmlContentData4 length];
      v110 = 2048;
      v111 = [compressedData2 length];
      _os_log_impl(&dword_25B19F000, v44, OS_LOG_TYPE_DEFAULT, "Html Message content size is too large. It will sync text attribute instead. %{public}@ - size: %lu - compressed %lu", buf, 0x20u);
    }

    v97 = 0;
    goto LABEL_33;
  }

LABEL_20:
  v97 = 0;
  if (v34)
  {
    goto LABEL_33;
  }

LABEL_21:
  if ([(NNMKProtoMessageContentSync *)v99 mainAlternativeValid])
  {
LABEL_33:
    textData = [contentCopy textData];
    v48 = [textData length];

    if (v48 >> 21)
    {
      v58 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v58;
        messageId5 = [contentCopy messageId];
        textData2 = [contentCopy textData];
        v62 = [textData2 length];
        *buf = 138543618;
        v107 = messageId5;
        v108 = 2048;
        v109 = v62;
        _os_log_impl(&dword_25B19F000, v59, OS_LOG_TYPE_DEFAULT, "Message content too large won't sync. %{public}@ - size: %lu)", buf, 0x16u);
      }

      [(NNMKProtoMessageContentSync *)v99 setMainAlternativeValid:0];
    }

    else
    {
      textData3 = [contentCopy textData];
      compressedData3 = [textData3 compressedData];

      v51 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
      {
        v52 = v51;
        messageId6 = [contentCopy messageId];
        htmlContentData5 = [contentCopy htmlContentData];
        v55 = usedNotificationPriorityForMessageSync;
        v56 = [htmlContentData5 length];
        v57 = [compressedData3 length];
        *buf = 138543874;
        v107 = messageId6;
        v108 = 2048;
        v109 = v56;
        usedNotificationPriorityForMessageSync = v55;
        v110 = 2048;
        v111 = v57;
        _os_log_impl(&dword_25B19F000, v52, OS_LOG_TYPE_INFO, "Message content will sync text attribute. %{public}@ - size: %lu - compressed %lu", buf, 0x20u);
      }

      [(NNMKProtoMessageContentSync *)v99 setText:compressedData3];
      v97 = [compressedData3 length];
    }
  }

  v90 = usedNotificationPriorityForMessageSync;
  if (usedNotificationPriorityForMessageSync)
  {
    v63 = [(NNMKSyncPersistenceHandler *)selfCopy protoMessageFromMessage:messageCopy];
    [(NNMKProtoMessageContentSync *)v99 setNotificationMessage:v63];
  }

  v94 = messageCopy;
  v98 = [MEMORY[0x277CBEB58] set];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v96 = contentCopy;
  attachments = [contentCopy attachments];
  v65 = [attachments countByEnumeratingWithState:&v101 objects:v105 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v102;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v102 != v67)
        {
          objc_enumerationMutation(attachments);
        }

        v69 = *(*(&v101 + 1) + 8 * i);
        contentId = [v69 contentId];

        if (contentId)
        {
          v71 = objc_alloc_init(NNMKProtoAttachmentMetadata);
          fileName = [v69 fileName];
          [(NNMKProtoAttachmentMetadata *)v71 setFileName:fileName];

          -[NNMKProtoAttachmentMetadata setFileSize:](v71, "setFileSize:", [v69 fileSize]);
          -[NNMKProtoAttachmentMetadata setType:](v71, "setType:", [v69 type]);
          syncController2 = [(NNMKSyncPersistenceHandler *)selfCopy syncController];
          contentId2 = [v69 contentId];
          v75 = [syncController2 watchAttachmentContentIdFromContentId:contentId2];
          [(NNMKProtoAttachmentMetadata *)v71 setContentId:v75];

          mimePartNumber = [v69 mimePartNumber];
          [(NNMKProtoAttachmentMetadata *)v71 setMimePartNumber:mimePartNumber];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            contentId4 = v69;
            if ([contentId4 renderOnClient])
            {
              contentId3 = [contentId4 contentId];
              [v98 addObject:contentId3];
            }

            -[NNMKProtoAttachmentMetadata setRenderOnClient:](v71, "setRenderOnClient:", [contentId4 renderOnClient]);
            [contentId4 imageSize];
            *&v79 = v79;
            [(NNMKProtoAttachmentMetadata *)v71 setImageWidth:v79];
            [contentId4 imageSize];
            *&v81 = v80;
            [(NNMKProtoAttachmentMetadata *)v71 setImageHeight:v81];
LABEL_54:
          }

          else if ([v69 isActionable])
          {
            contentId4 = [v69 contentId];
            [v98 addObject:contentId4];
            goto LABEL_54;
          }

          [(NNMKProtoMessageContentSync *)v99 addAttachment:v71];

          continue;
        }
      }

      v66 = [attachments countByEnumeratingWithState:&v101 objects:v105 count:16];
    }

    while (v66);
  }

  v12 = v93;
  if (![v93 contentSynced] || objc_msgSend(v93, "contentRequestedByUser"))
  {
    [v93 setAttachmentsContentIdsNotYetSynced:v98];
  }

  if (v90)
  {
    [v93 setContentSyncedUsingNotificationPriority:1];
  }

  messageCopy = v94;
  if (v91)
  {
    [v93 setContentSyncedBecauseUserRequested:1];
  }

  [v93 setContentSynced:1];
  contentResendInterval = [v93 contentResendInterval];
  [v93 setContentResendInterval:0];
  contentCopy = v96;
  if ([v93 isContentCompletelySynced])
  {
    [v93 setContentRequestedByUser:0];
  }

  currentDeviceRegistry5 = [(NNMKSyncPersistenceHandler *)selfCopy currentDeviceRegistry];
  [currentDeviceRegistry5 addOrUpdateSyncedMessage:v93];

  currentDeviceRegistry6 = [(NNMKSyncPersistenceHandler *)selfCopy currentDeviceRegistry];
  [currentDeviceRegistry6 endUpdates];

  v9 = v95;
  [(NNMKMessageContentResult *)v95 setProtoMessageContentSync:v99];
  [(NNMKMessageContentResult *)v95 setResendInterval:contentResendInterval];
  [(NNMKMessageContentResult *)v95 setCompressedTextDataLength:v97];
  -[NNMKMessageContentResult setIsContentCompletelySynced:](v95, "setIsContentCompletelySynced:", [v93 isContentCompletelySynced]);
  -[NNMKMessageContentResult setIsNotificationPriority:](v95, "setIsNotificationPriority:", [v93 contentSyncedUsingNotificationPriority]);
  -[NNMKMessageContentResult setIsUserRequest:](v95, "setIsUserRequest:", [v93 contentSyncedBecauseUserRequested]);

LABEL_68:
  v85 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)protoMessageFromMessage:(id)message
{
  messageCopy = message;
  currentDeviceRegistry = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  organizeByThread = [currentDeviceRegistry organizeByThread];
  delegate = [(NNMKSyncPersistenceHandler *)self delegate];
  pairedDeviceSupportsMultipleMailboxes = [delegate pairedDeviceSupportsMultipleMailboxes];
  delegate2 = [(NNMKSyncPersistenceHandler *)self delegate];
  v10 = +[NNMKProtoMessage protoMessageFromMessage:organizedByThread:sanitizeMessageId:supportsStandaloneMode:](NNMKProtoMessage, "protoMessageFromMessage:organizedByThread:sanitizeMessageId:supportsStandaloneMode:", messageCopy, organizeByThread, pairedDeviceSupportsMultipleMailboxes ^ 1u, [delegate2 pairedDeviceSupportsStandaloneMode]);

  return v10;
}

- (id)currentDeviceRegistry
{
  delegate = [(NNMKSyncPersistenceHandler *)self delegate];
  currentDeviceRegistry = [delegate currentDeviceRegistry];

  return currentDeviceRegistry;
}

- (NNMKDeviceRegistryHolder)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NNMKSyncStateManager)syncStateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_syncStateManager);

  return WeakRetained;
}

- (void)addStandaloneAccountIdentity:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 username];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_25B19F000, v3, OS_LOG_TYPE_ERROR, "No account for username. Standalone account information won't be synced. %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end