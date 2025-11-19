@interface NNMKSyncPersistenceHandler
- (NNMKDeviceRegistryHolder)delegate;
- (NNMKSyncStateManager)syncStateManager;
- (id)addAccountAuthenticationStatusRequest:(double)a3;
- (id)addMessageContent:(id)a3 forMessage:(id)a4 mailbox:(id)a5;
- (id)addMessages:(id)a3 containsNewMessages:(BOOL)a4 mailbox:(id)a5;
- (id)addMessagesToResend:(id)a3 mailbox:(id)a4;
- (id)addMoreConversationSpecificMessages:(id)a3 conversationId:(id)a4 mailbox:(id)a5;
- (id)addMoreMessages:(id)a3 mailbox:(id)a4;
- (id)addStandaloneAccountIdentity:(id)a3;
- (id)currentDeviceRegistry;
- (id)deleteMessagesWithIds:(id)a3 mailbox:(id)a4;
- (id)persistAccounts:(id)a3;
- (id)protoMessageFromMessage:(id)a3;
- (id)updateMailboxListForAccount:(id)a3 mailboxListChanged:(BOOL *)a4;
- (id)updateMessagesFromConversation:(id)a3 withState:(unint64_t)a4 include:(BOOL)a5 mailbox:(id)a6;
- (id)updateMessagesStatus:(id)a3 mailbox:(id)a4;
- (void)_createDefaultMailbox:(id)a3;
@end

@implementation NNMKSyncPersistenceHandler

- (id)persistAccounts:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(NNMKProtoInitialAccountsSync);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v6 = v4;
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
        v12 = [v10 accountId];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setAccountId:v12];

        v13 = [v10 displayName];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setDisplayName:v13];

        -[NNMKProtoAccountAdditionOrUpdate setShouldArchive:](v11, "setShouldArchive:", [v10 shouldArchive]);
        v14 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        -[NNMKProtoAccountAdditionOrUpdate setFullSyncVersion:](v11, "setFullSyncVersion:", [v14 fullSyncVersion]);

        v15 = [v10 username];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setUsername:v15];

        v16 = [v10 localId];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setLocalId:v16];

        v17 = [v10 parentAccountIdentifier];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setParentId:v17];

        v18 = [v10 defaultEmailAddress];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setDefaultEmail:v18];

        v19 = [v10 typeIdentifier];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setTypeIdentifier:v19];

        v20 = [v10 emailAddressToken];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setEmailAddressToken:v20];

        v21 = [v10 pccEmailAddress];
        [(NNMKProtoAccountAdditionOrUpdate *)v11 setPccEmailAddress:v21];

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v22 = [v10 emailAddresses];
        v23 = [v22 countByEnumeratingWithState:&v74 objects:v91 count:16];
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
                objc_enumerationMutation(v22);
              }

              [(NNMKProtoAccountAdditionOrUpdate *)v11 addEmail:*(*(&v74 + 1) + 8 * i), v61];
            }

            v24 = [v22 countByEnumeratingWithState:&v74 objects:v91 count:16];
          }

          while (v24);
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v65 = v10;
        v27 = [v10 mailboxes];
        v69 = [v27 countByEnumeratingWithState:&v70 objects:v90 count:16];
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
                objc_enumerationMutation(v27);
              }

              v30 = *(*(&v70 + 1) + 8 * j);
              v31 = [(NNMKSyncPersistenceHandler *)self syncController];
              v32 = [v31 canSyncMailbox:v30];

              v33 = v7[1];
              v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
              if (v32)
              {
                if (v34)
                {
                  log = v33;
                  v35 = [v30 mailboxId];
                  v36 = [v30 type];
                  v37 = v28;
                  v38 = v27;
                  v39 = self;
                  v40 = v8;
                  v41 = v7;
                  v42 = [v30 filterType];
                  v43 = [v30 syncEnabled];
                  *buf = 138544130;
                  v83 = v35;
                  v84 = 2048;
                  v85 = v36;
                  v86 = 2048;
                  v87 = v42;
                  v7 = v41;
                  v8 = v40;
                  self = v39;
                  v27 = v38;
                  v28 = v37;
                  v88 = 2048;
                  v89 = v43;
                  _os_log_impl(v8, log, OS_LOG_TYPE_DEFAULT, "Mailbox received. (Mailbox id: %{public}@, Type: %lu, Filter: %lu, Sync enabled: %lu)", buf, 0x2Au);
                }

                v44 = [(NNMKSyncPersistenceHandler *)self delegate];
                v45 = [v44 pairedDeviceSupportsMultipleMailboxes];

                if ((v45 & 1) == 0)
                {
                  v46 = [v30 copy];

                  [v46 setSyncActive:0];
                  [v46 setSyncEnabled:0];
                  v30 = v46;
                }

                v47 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
                [v47 addOrUpdateMailbox:v30];

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
                v49 = [v30 mailboxId];
                v50 = [v30 type];
                *buf = 138543618;
                v83 = v49;
                v84 = 2048;
                v85 = v50;
                _os_log_impl(v8, v48, OS_LOG_TYPE_DEFAULT, "Mailbox will not be synced. (Id: %{public}@, Type: %lu)", buf, 0x16u);
              }

LABEL_27:
            }

            v69 = [v27 countByEnumeratingWithState:&v70 objects:v90 count:16];
          }

          while (v69);
        }

        v5 = v63;
        [(NNMKProtoInitialAccountsSync *)v63 addInitialAccount:v11];
        v51 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        v52 = [[NNMKSyncedAccount alloc] initWithAccount:v65];
        [v51 addOrUpdateSyncedAccount:v52];

        v9 = v66 + 1;
        v6 = v62;
      }

      while (v66 + 1 != v64);
      v64 = [v62 countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v64);
  }

  v53 = [(NNMKSyncPersistenceHandler *)self delegate];
  v54 = [v53 pairedDeviceSupportsMultipleMailboxes];

  if ((v54 & 1) == 0)
  {
    [(NNMKSyncPersistenceHandler *)self _createDefaultMailbox:v6];
  }

  v55 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoInitialAccountsSync setFullSyncVersion:](v5, "setFullSyncVersion:", [v55 fullSyncVersion]);

  v56 = MEMORY[0x277CCAAB0];
  v57 = [MEMORY[0x277CBEAA8] date];
  v58 = [v56 archivedDataWithRootObject:v57 requiringSecureCoding:1 error:0];
  [(NNMKProtoInitialAccountsSync *)v5 setDateSynced:v58];

  v59 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_createDefaultMailbox:(id)a3
{
  v4 = a3;
  v5 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Creating default mailbox because device does not support multiple mailboxes", v17, 2u);
  }

  v6 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v7 = [v6 mailboxWithId:@"-1"];

  if (!v7)
  {
    v7 = objc_alloc_init(NNMKMailbox);
    [(NNMKMailbox *)v7 setMailboxId:@"-1"];
  }

  v8 = [[NNMKMailboxSelection alloc] initWithAccounts:v4];
  v9 = [(NNMKMailboxSelection *)v8 mailboxesWithAllMessagesSyncEnabled];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [(NNMKMailboxSelection *)v8 mailboxesWithAllMessagesSyncEnabled];
    v12 = [v11 firstObject];

    -[NNMKMailbox setType:](v7, "setType:", [v12 type]);
    -[NNMKMailbox setFilterType:](v7, "setFilterType:", [v12 filterType]);
    v13 = [v12 accountId];
    [(NNMKMailbox *)v7 setAccountId:v13];

    v14 = [v12 url];
    [(NNMKMailbox *)v7 setUrl:v14];

    v15 = [v12 customName];
    [(NNMKMailbox *)v7 setCustomName:v15];
  }

  else
  {
    [(NNMKMailbox *)v7 setFilterType:[(NNMKMailboxSelection *)v8 aggregatedMailboxesFilterTypes]];
    [(NNMKMailbox *)v7 setType:1];
    [(NNMKMailbox *)v7 resetURL];
  }

  [(NNMKMailbox *)v7 setSyncEnabled:1];
  v16 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v16 addOrUpdateMailbox:v7];
}

- (id)updateMailboxListForAccount:(id)a3 mailboxListChanged:(BOOL *)a4
{
  v113 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NNMKSyncPersistenceHandler *)self delegate];
  v8 = [v7 pairedDeviceSupportsMultipleMailboxes];

  if (v8)
  {
    v80 = a4;
    v9 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
    v81 = v6;
    v10 = [v6 accountId];
    v11 = [v9 mailboxesForAccountId:v10];

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
          v18 = [v17 mailboxId];
          [v12 setObject:v17 forKeyedSubscript:v18];
        }

        v14 = [obj countByEnumeratingWithState:&v98 objects:v112 count:16];
      }

      while (v14);
    }

    v19 = MEMORY[0x277CBEB18];
    v20 = [v81 mailboxes];
    v86 = [v19 arrayWithCapacity:{objc_msgSend(v20, "count")}];

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v87 = [v81 mailboxes];
    v21 = [v87 countByEnumeratingWithState:&v94 objects:v111 count:16];
    v89 = self;
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
            objc_enumerationMutation(v87);
          }

          v25 = *(*(&v94 + 1) + 8 * v24);
          v26 = [(NNMKSyncPersistenceHandler *)self syncController];
          v27 = [v26 canSyncMailbox:v25];

          if (v27)
          {
            v28 = [v25 mailboxId];
            v29 = [v12 objectForKeyedSubscript:v28];

            v30 = [v25 mailboxId];
            [v12 removeObjectForKey:v30];

            if (v29)
            {
              v31 = [v29 customName];
              v32 = [v25 customName];
              v33 = [v31 isEqualToString:v32];

              v34 = [v29 syncEnabled];
              v35 = [v25 syncEnabled];
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
              v50 = (v34 ^ v35);

              self = v89;
              if (((v49 | v50) & 1) != 0 || v39)
              {
                v51 = qword_28144D620;
                if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = v51;
                  v53 = [v25 mailboxId];
                  *buf = 138544130;
                  v104 = v53;
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
                    v56 = [v25 mailboxId];
                    v57 = [v29 url];
                    v58 = [v57 absoluteString];
                    v59 = [v25 url];
                    v60 = [v59 absoluteString];
                    *buf = 138543874;
                    v104 = v56;
                    v105 = 2114;
                    v106 = v58;
                    v107 = 2114;
                    v108 = v60;
                    _os_log_impl(&dword_25B19F000, v55, OS_LOG_TYPE_DEFAULT, "Mailbox URL changed. (Id: %{public}@, old URL: %{public}@, new URL: %{public}@)", buf, 0x20u);

                    self = v89;
                  }
                }

                v61 = [v25 customName];
                [v29 setCustomName:v61];

                [v29 setSyncEnabled:{objc_msgSend(v25, "syncEnabled")}];
                v62 = [v25 url];
                [v29 setUrl:v62];

                v63 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
                [v63 addOrUpdateMailbox:v29];

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
              v44 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              [v44 addOrUpdateMailbox:v25];

              v45 = [NNMKProtoMailbox protoMailboxFromMailbox:v25];
              [v86 addObject:v45];

              v46 = qword_28144D620;
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
              {
                v47 = v46;
                v48 = [v25 mailboxId];
                *buf = 138543362;
                v104 = v48;
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
              v42 = [v25 mailboxId];
              v43 = [v25 type];
              *buf = 138543618;
              v104 = v42;
              v105 = 2048;
              v106 = v43;
              _os_log_impl(&dword_25B19F000, v41, OS_LOG_TYPE_DEFAULT, "Mailbox will not be synced. (Id: %{public}@, Type: %lu)", buf, 0x16u);
            }
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v87 countByEnumeratingWithState:&v94 objects:v111 count:16];
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
    v65 = [v12 allValues];
    v66 = [v65 countByEnumeratingWithState:&v90 objects:v102 count:16];
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
            objc_enumerationMutation(v65);
          }

          v72 = *(*(&v90 + 1) + 8 * j);
          v73 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          v74 = [v72 mailboxId];
          [v73 deleteMailboxWithId:v74];

          v75 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v76 = v75;
            v77 = [v72 mailboxId];
            *buf = 138543362;
            v104 = v77;
            _os_log_impl(&dword_25B19F000, v76, OS_LOG_TYPE_DEFAULT, "Mailbox deleted. (Id: %{public}@)", buf, 0xCu);
          }

          self = v89;
        }

        v68 = [v65 countByEnumeratingWithState:&v90 objects:v102 count:16];
      }

      while (v68);
      v67 = 1;
      v12 = v69;
    }

    v6 = v81;
    if (v80)
    {
      *v80 = v67 & 1;
    }
  }

  else
  {
    v86 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  v78 = *MEMORY[0x277D85DE8];

  return v86;
}

- (id)addStandaloneAccountIdentity:(id)a3
{
  v4 = a3;
  v5 = [v4 username];
  if (![v5 length])
  {
    goto LABEL_9;
  }

  v6 = [v4 token];
  if (![v6 length])
  {

LABEL_9:
    goto LABEL_10;
  }

  v7 = [v4 refreshToken];

  if (v7)
  {
    v8 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
    v9 = [v4 username];
    v10 = [v8 accountIdForUsername:v9];

    if (!v10)
    {
      v11 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      v12 = [v4 username];
      v13 = [v11 syncedAccountForAccountWithId:v12];

      v10 = [v13 accountId];
    }

    if ([v10 length])
    {
      v14 = [(NNMKSyncPersistenceHandler *)self sessionController];
      [v14 updateStandaloneState:1 forAccountId:v10];

      v15 = objc_alloc_init(NNMKProtoStandaloneAccountIdentity);
      v16 = [v4 username];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setUsername:v16];

      v17 = [v4 displayName];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setDisplayName:v17];

      v18 = [v4 token];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setToken:v18];

      v19 = [v4 refreshToken];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setRefreshToken:v19];

      -[NNMKProtoStandaloneAccountIdentity setIdentityType:](v15, "setIdentityType:", [v4 identityType]);
      v20 = [v4 accountId];
      [(NNMKProtoStandaloneAccountIdentity *)v15 setAccountIdentifier:v20];
    }

    else
    {
      v22 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
      {
        [(NNMKSyncPersistenceHandler *)v22 addStandaloneAccountIdentity:v4];
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

- (id)addAccountAuthenticationStatusRequest:(double)a3
{
  v4 = objc_alloc_init(NNMKProtoAccountAuthenticationStatusRequest);
  [(NNMKProtoAccountAuthenticationStatusRequest *)v4 setRequestTime:a3];

  return v4;
}

- (id)addMessages:(id)a3 containsNewMessages:(BOOL)a4 mailbox:(id)a5
{
  v6 = a4;
  v121 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = [(NNMKSyncPersistenceHandler *)self syncController];
  v12 = [v11 filterMessages:v8 byAlreadySynced:1 byMailbox:v9];

  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_6];

  if ([v13 count])
  {
    v14 = [v13 firstObject];
    v15 = v14;
    v104 = v6;
    v97 = v14;
    if (!v6)
    {
      goto LABEL_4;
    }

    v16 = [v14 dateReceived];
    v17 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
    v18 = [v9 mailboxId];
    [v17 oldestDateReceivedForMailboxId:v18];
    v20 = v19 = v9;
    v21 = [v16 compare:v20];

    v9 = v19;
    v15 = v97;

    if (v21 == -1)
    {
      v89 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v90 = v89;
        v91 = [v8 count];
        v92 = [v97 dateReceived];
        *buf = 134218242;
        v111 = v91;
        v112 = 2114;
        v113 = v92;
        _os_log_impl(&dword_25B19F000, v90, OS_LOG_TYPE_DEFAULT, "Dropping messages. Receiving an old batch of messages from MobileMail. Ignoring so we don't create a gap between the current messages we have and the old batch. (Count: %lu, Newest message received date: %{public}@", buf, 0x16u);

        v15 = v97;
      }

      [v10 setReceivedOldMessages:1];
    }

    else
    {
LABEL_4:
      v22 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      [v22 beginUpdates];

      v99 = objc_alloc_init(NNMKProtoMessageAdditions);
      v102 = objc_alloc_init(NNMKProtoMessageAdditions);
      v23 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      v24 = [v9 mailboxId];
      v25 = [v23 oldestDateReceivedForMailboxId:v24];

      if (!v25)
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
        v25 = [v28 dateReceived];
        v29 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v25 requiringSecureCoding:1 error:0];
        [(NNMKProtoMessageAdditions *)v99 setDateForRequestingMoreMessages:v29];

        v30 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v25 requiringSecureCoding:1 error:0];
        [(NNMKProtoMessageAdditions *)v102 setDateForRequestingMoreMessages:v30];

        v31 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          [v28 dateReceived];
          v33 = v25;
          v35 = v34 = v15;
          *buf = 138543362;
          v111 = v35;
          _os_log_impl(&dword_25B19F000, v32, OS_LOG_TYPE_DEFAULT, "New received messages changed date cap (New date: %{public}@).", buf, 0xCu);

          v15 = v34;
          v25 = v33;
        }
      }

      v36 = [v13 count];
      v37 = [(NNMKSyncPersistenceHandler *)self syncController];
      v38 = [v37 filterMessages:v13 receivedBeforeDate:v25];

      if ([v38 count] < v36)
      {
        [v10 setReceivedOldMessages:1];
      }

      v39 = v102;
      if ([v38 count])
      {
        v94 = v9;
        v95 = v10;
        v96 = v8;
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

            v41 = v25;
            v42 = *(*(&v106 + 1) + 8 * i);
            v43 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v44 = v43;
              v45 = [v42 messageId];
              v46 = [v42 accountId];
              v47 = [v42 dateReceived];
              v48 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v42 status]);
              v49 = [v42 messageIdHeader];
              *buf = 138544386;
              v111 = v45;
              v112 = 2114;
              v113 = v46;
              v114 = 2114;
              v115 = v47;
              v116 = 2112;
              v117 = v48;
              v118 = 2114;
              v119 = v49;
              _os_log_impl(&dword_25B19F000, v44, OS_LOG_TYPE_DEFAULT, "Message ADDED (Id: %{public}@ - Account Id: %{public}@ - Date Received: %{public}@ - Status: %@ - Message ID Header %{public}@ - Reason: New)", buf, 0x34u);
            }

            v50 = [NNMKSyncedMessage alloc];
            v51 = [(NNMKSyncPersistenceHandler *)self delegate];
            v52 = -[NNMKSyncedMessage initWithMessage:useDefaultMailbox:](v50, "initWithMessage:useDefaultMailbox:", v42, [v51 pairedDeviceSupportsMultipleMailboxes] ^ 1);

            v53 = [(NNMKSyncPersistenceHandler *)self sessionController];
            if ([v53 deviceInStandalone])
            {
              v54 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              v55 = [v42 accountId];
              v56 = [v54 accountSourceTypeForAccountId:v55] == 0;
            }

            else
            {
              v56 = 1;
            }

            if (v104)
            {
              v57 = [(NNMKSyncPersistenceHandler *)self syncStateManager];
              v58 = [v57 willPresentNotificationForMessage:v42];

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

              v63 = [v42 messageId];
              [v61 addObject:v63];

              [(NNMKSyncedMessage *)v52 setUsedNotificationPriorityForMessageSync:v58];
              v64 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              [v64 addOrUpdateSyncedMessage:v52];

              v65 = [(NNMKSyncPersistenceHandler *)self sessionController];
              v66 = [v65 messageIdsToIgnoreStatusUpdates];
              v67 = [v42 messageId];
              [v66 removeObject:v67];

              v68 = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
              [v68 handleMessageAdded:v42];
              goto LABEL_38;
            }

            v69 = qword_28144D620;
            if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_39;
            }

            v68 = v69;
            v70 = [v42 accountId];
            v71 = [v42 messageId];
            *buf = 138543618;
            v111 = v70;
            v112 = 2114;
            v113 = v71;
            _os_log_impl(&dword_25B19F000, v68, OS_LOG_TYPE_DEFAULT, "Dropping message added because account source type does not allow sync. Account Id: %{public}@, Message Id: %{public}@", buf, 0x16u);

LABEL_38:
LABEL_39:

            v25 = v41;
          }

          v105 = [obj countByEnumeratingWithState:&v106 objects:v120 count:16];
          if (!v105)
          {
LABEL_41:

            v9 = v94;
            if ([(NNMKProtoMessageAdditions *)v99 messageAdditionsCount])
            {
              v72 = [v94 mailboxId];
              [(NNMKProtoMessageAdditions *)v99 setMailboxId:v72];

              v73 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              v74 = [v94 mailboxId];
              -[NNMKProtoMessageAdditions setMailboxSyncVersion:](v99, "setMailboxSyncVersion:", [v73 syncVersionForMailboxId:v74]);

              [(NNMKProtoMessageAdditions *)v99 setMessagesAreNew:v104];
              v75 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              -[NNMKProtoMessageAdditions setFullSyncVersion:](v99, "setFullSyncVersion:", [v75 fullSyncVersion]);

              v76 = MEMORY[0x277CCAAB0];
              v77 = [MEMORY[0x277CBEAA8] date];
              v78 = [v76 archivedDataWithRootObject:v77 requiringSecureCoding:1 error:0];
              [(NNMKProtoMessageAdditions *)v99 setDateSynced:v78];
            }

            v39 = v102;
            v10 = v95;
            v8 = v96;
            v15 = v97;
            if ([(NNMKProtoMessageAdditions *)v102 messageAdditionsCount])
            {
              v79 = [v94 mailboxId];
              [(NNMKProtoMessageAdditions *)v102 setMailboxId:v79];

              v80 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              v81 = [v94 mailboxId];
              -[NNMKProtoMessageAdditions setMailboxSyncVersion:](v102, "setMailboxSyncVersion:", [v80 syncVersionForMailboxId:v81]);

              [(NNMKProtoMessageAdditions *)v102 setMessagesAreNew:v104];
              v82 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              -[NNMKProtoMessageAdditions setFullSyncVersion:](v102, "setFullSyncVersion:", [v82 fullSyncVersion]);

              v83 = MEMORY[0x277CCAAB0];
              v84 = [MEMORY[0x277CBEAA8] date];
              v85 = [v83 archivedDataWithRootObject:v84 requiringSecureCoding:1 error:0];
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

      v86 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
      [v86 endUpdates];

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

- (id)addMoreMessages:(id)a3 mailbox:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v8 beginUpdates];

  v9 = objc_alloc_init(NNMKProtoMoreMessages);
  v10 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoMoreMessages setFullSyncVersion:](v9, "setFullSyncVersion:", [v10 fullSyncVersion]);

  v11 = MEMORY[0x277CCAAB0];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  [(NNMKProtoMoreMessages *)v9 setDateSynced:v13];

  v14 = [v7 mailboxId];
  [(NNMKProtoMoreMessages *)v9 setMailboxId:v14];

  v15 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v46 = v7;
  v16 = [v7 mailboxId];
  -[NNMKProtoMoreMessages setMailboxSyncVersion:](v9, "setMailboxSyncVersion:", [v15 syncVersionForMailboxId:v16]);

  if ([v6 count])
  {
    v17 = [v6 lastObject];
    v18 = [v17 dateReceived];
    if (v18)
    {
      v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
      [(NNMKProtoMoreMessages *)v9 setDateForRequestingMoreMessages:v19];
    }
  }

  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v6;
  v21 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v53;
    v24 = &__logCategories;
    v48 = *v53;
    v49 = self;
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
          v29 = [v26 messageId];
          [v26 accountId];
          v31 = v30 = v9;
          [v26 dateReceived];
          v33 = v32 = v24;
          v34 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v26 status]);
          v35 = [v26 messageIdHeader];
          *buf = 138544386;
          v57 = v29;
          v58 = 2114;
          v59 = v31;
          v60 = 2114;
          v61 = v33;
          v62 = 2112;
          v63 = v34;
          v64 = 2114;
          v65 = v35;
          _os_log_impl(&dword_25B19F000, v28, OS_LOG_TYPE_DEFAULT, "Message ADDED (Id: %{public}@ - Account Id: %{public}@ - Date Received: %{public}@ - Status: %@ - Message ID Header %{public}@ - Reason: #LOAD_MORE_MESSAGES)", buf, 0x34u);

          v24 = v32;
          v9 = v30;
          v20 = v47;
          self = v49;

          v23 = v48;
          v22 = v50;
        }

        v36 = [(NNMKSyncPersistenceHandler *)self protoMessageFromMessage:v26];
        [(NNMKProtoMoreMessages *)v9 addAddedMessage:v36];

        v37 = [NNMKSyncedMessage alloc];
        v38 = [(NNMKSyncPersistenceHandler *)self delegate];
        v39 = -[NNMKSyncedMessage initWithMessage:useDefaultMailbox:](v37, "initWithMessage:useDefaultMailbox:", v26, [v38 pairedDeviceSupportsMultipleMailboxes] ^ 1);

        v40 = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
        [v40 handleMessageAdded:v26];

        v41 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        [v41 addOrUpdateSyncedMessage:v39];

        v42 = [v26 messageId];
        [v20 addObject:v42];

        ++v25;
      }

      while (v22 != v25);
      v22 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v22);
  }

  v43 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v43 endUpdates];

  v44 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)addMoreConversationSpecificMessages:(id)a3 conversationId:(id)a4 mailbox:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v11 beginUpdates];

  v12 = objc_alloc_init(NNMKProtoMoreMessagesForConversation);
  v13 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoMoreMessagesForConversation setFullSyncVersion:](v12, "setFullSyncVersion:", [v13 fullSyncVersion]);

  v14 = MEMORY[0x277CCAAB0];
  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
  [(NNMKProtoMoreMessagesForConversation *)v12 setDateSynced:v16];

  v46 = v9;
  [(NNMKProtoMoreMessagesForConversation *)v12 setConversationId:v9];
  v17 = [v10 mailboxId];
  [(NNMKProtoMoreMessagesForConversation *)v12 setMailboxId:v17];

  v18 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v45 = v10;
  v19 = [v10 mailboxId];
  -[NNMKProtoMoreMessagesForConversation setMailboxSyncVersion:](v12, "setMailboxSyncVersion:", [v18 syncVersionForMailboxId:v19]);

  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v8;
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
          v51 = [v26 messageId];
          v28 = [v26 accountId];
          v29 = [v26 dateReceived];
          v30 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v26 status]);
          [v26 messageIdHeader];
          v31 = v24;
          v32 = self;
          v34 = v33 = v20;
          *buf = 138544386;
          v58 = v51;
          v59 = 2114;
          v60 = v28;
          v61 = 2114;
          v62 = v29;
          v63 = 2112;
          v64 = v30;
          v65 = 2114;
          v66 = v34;
          _os_log_impl(&dword_25B19F000, log, OS_LOG_TYPE_DEFAULT, "Message ADDED (Id: %{public}@ - Account Id: %{public}@ - Date Received: %{public}@ - Status: %@ - Message ID Header %{public}@ - Reason: #LOAD_MORE_MESSAGES for Conversation)", buf, 0x34u);

          v20 = v33;
          self = v32;
          v24 = v31;

          v22 = v49;
          v12 = v48;

          v23 = v47;
        }

        v35 = [(NNMKSyncPersistenceHandler *)self protoMessageFromMessage:v26];
        [(NNMKProtoMoreMessagesForConversation *)v12 addAddedMessage:v35];

        v36 = [NNMKSyncedMessage alloc];
        v37 = [(NNMKSyncPersistenceHandler *)self delegate];
        v38 = -[NNMKSyncedMessage initWithMessage:useDefaultMailbox:](v36, "initWithMessage:useDefaultMailbox:", v26, [v37 pairedDeviceSupportsMultipleMailboxes] ^ 1);

        v39 = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
        [v39 handleMessageAdded:v26];

        v40 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        [v40 addOrUpdateSyncedMessage:v38];

        v41 = [v26 messageId];
        [v20 addObject:v41];

        ++v25;
      }

      while (v22 != v25);
      v22 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v22);
  }

  v42 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v42 endUpdates];

  v43 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)addMessagesToResend:(id)a3 mailbox:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v8 beginUpdates];

  v43 = objc_alloc_init(NNMKAdditionResult);
  v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = objc_alloc_init(NNMKProtoMessageAdditions);
  [(NNMKProtoMessageAdditions *)v9 setMessagesAreNew:0];
  v10 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  -[NNMKProtoMessageAdditions setFullSyncVersion:](v9, "setFullSyncVersion:", [v10 fullSyncVersion]);

  v11 = MEMORY[0x277CCAAB0];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  [(NNMKProtoMessageAdditions *)v9 setDateSynced:v13];

  v14 = [v7 mailboxId];
  [(NNMKProtoMessageAdditions *)v9 setMailboxId:v14];

  v15 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v44 = v7;
  v16 = [v7 mailboxId];
  v48 = v9;
  -[NNMKProtoMessageAdditions setMailboxSyncVersion:](v9, "setMailboxSyncVersion:", [v15 syncVersionForMailboxId:v16]);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v50;
    v45 = self;
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
        v24 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        v25 = [v23 messageId];
        v26 = [v24 syncedMessageForMessageWithId:v25];

        if (v26 && [v26 resendRequested])
        {
          if (!v20)
          {
            v20 = [v26 resendInterval];
          }

          [v23 setIsThreadSpecific:{objc_msgSend(v26, "isThreadSpecific")}];
          [v23 setIsSpecialMailboxSpecific:{objc_msgSend(v26, "isSpecialMailboxSpecific")}];
          v27 = [v26 resendInterval];
          if (v27 < v20)
          {
            v20 = v27;
          }

          [v26 setStatus:{objc_msgSend(v23, "status")}];
          [v26 setResendRequested:0];
          [v26 setResendInterval:0];
          [v26 setUsedNotificationPriorityForMessageSync:0];
          v28 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          [v28 addOrUpdateSyncedMessage:v26];

          v29 = [v23 messageId];
          [v47 addObject:v29];

          [v23 setStatusVersion:{objc_msgSend(v26, "statusVersion")}];
          v30 = [(NNMKSyncPersistenceHandler *)self protoMessageFromMessage:v23];
          [(NNMKProtoMessageAdditions *)v48 addMessageAddition:v30];

          v31 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
            v33 = [v23 messageId];
            [v23 dateReceived];
            v34 = v21;
            v35 = v20;
            v37 = v36 = v17;
            v38 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v23 status]);
            v39 = [v23 statusVersion];
            *buf = 138544130;
            v54 = v33;
            v55 = 2114;
            v56 = v37;
            v57 = 2112;
            v58 = v38;
            v59 = 2048;
            v60 = v39;
            _os_log_impl(&dword_25B19F000, v32, OS_LOG_TYPE_DEFAULT, "Message being RESENT (Id: %{public}@ - Date Received: %{public}@ - Status: %@ - StatusVersion: %lu).", buf, 0x2Au);

            v17 = v36;
            v20 = v35;
            v21 = v34;
            v19 = v46;

            self = v45;
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
    v20 = 0;
  }

  v40 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v40 endUpdates];

  [(NNMKAdditionResult *)v43 setProtoMessagesWithDefaultPriority:v48];
  [(NNMKAdditionResult *)v43 setMessageIdsWithDefaultPriority:v47];
  [(NNMKAdditionResult *)v43 setResendInterval:v20];

  v41 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)updateMessagesStatus:(id)a3 mailbox:(id)a4
{
  v110 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v8 beginUpdates];

  v91 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  v90 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  v89 = [MEMORY[0x277CBEB18] array];
  v88 = [MEMORY[0x277CBEB18] array];
  v87 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v86 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v6;
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
        v15 = [(NNMKSyncPersistenceHandler *)self sessionController];
        v16 = [v15 messageIdsToIgnoreStatusUpdates];
        v17 = [v14 messageId];
        v18 = [v16 containsObject:v17];

        if (v18)
        {
          v19 = qword_28144D620;
          if (!os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v20 = v19;
          v21 = [v14 messageId];
          v22 = [v14 dateReceived];
          v23 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
          *buf = 138543874;
          v102 = v21;
          v103 = 2114;
          v104 = v22;
          v105 = 2112;
          v106 = v23;
          _os_log_impl(&dword_25B19F000, v20, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED but updates are being ignored for it. Dropping... (Id: %{public}@ - Date Received: %{public}@ - Status: %@).", buf, 0x20u);
        }

        else
        {
          v24 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          v25 = [v14 messageId];
          v20 = [v24 syncedMessageForMessageWithId:v25];

          v26 = [(NNMKSyncPersistenceHandler *)self syncController];
          v27 = 0;
          if ([v26 shouldAddsDeletesMessagesByStatusUpdatesForMailbox:v7] && v20)
          {
            v28 = [(NNMKSyncPersistenceHandler *)self syncController];
            if ([v28 isValidMessageStatus:-[NSObject status](v20 forMailbox:{"status"), v7}])
            {
              v27 = 0;
            }

            else
            {
              v29 = [(NNMKSyncPersistenceHandler *)self syncController];
              v27 = [v29 isValidMessageStatus:objc_msgSend(v14 forMailbox:{"status"), v7}];

              v12 = v92;
            }
          }

          if (!v20 || (v27 & 1) != 0)
          {
            v34 = [(NNMKSyncPersistenceHandler *)self syncController];
            if (([v34 shouldAddsDeletesMessagesByStatusUpdatesForMailbox:v7] & 1) == 0)
            {

LABEL_26:
              v47 = qword_28144D620;
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
              {
                v48 = v47;
                v49 = [v14 messageId];
                v50 = [v14 dateReceived];
                v51 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
                *buf = v85;
                v102 = v49;
                v103 = 2114;
                v104 = v50;
                v105 = 2112;
                v106 = v51;
                v107 = 2114;
                v108 = v20;
                _os_log_debug_impl(&dword_25B19F000, v48, OS_LOG_TYPE_DEBUG, "Dropping Message Status UPDATE. Message is not being tracked. (Id: %{public}@ - Date Received: %{public}@ - Status: %@ - MessageSynced: %{public}@).", buf, 0x2Au);

                v12 = v92;
              }

              goto LABEL_42;
            }

            v35 = [(NNMKSyncPersistenceHandler *)self syncController];
            v36 = [v35 canSyncMessage:v14 forMailbox:v7];

            v12 = v92;
            if (!v36)
            {
              goto LABEL_26;
            }

            v37 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v38 = v37;
              v39 = [v14 messageId];
              v40 = [v14 dateReceived];
              v41 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
              *buf = 138543874;
              v102 = v39;
              v103 = 2114;
              v104 = v40;
              v105 = 2112;
              v106 = v41;
              _os_log_impl(&dword_25B19F000, v38, OS_LOG_TYPE_DEFAULT, "Received Message Status UPDATE, but it still hadn't been synced or it is about to be removed on the client. Will try to re-add message if not too old. (Id: %{public}@ - Date Received: %{public}@ - Status: %@).", buf, 0x20u);
            }

            v42 = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
            v43 = [v14 messageId];
            v44 = [v7 mailboxId];
            [v42 handleMessageDeleted:v43 mailboxId:v44];

            v45 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
            v46 = [v14 messageId];
            [v45 removeSyncedMessageForMessageWithId:v46];

            [v87 addObject:v14];
          }

          else
          {
            v30 = [v20 status];
            if (v30 == [v14 status])
            {
              v31 = qword_28144D620;
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
              {
                v32 = v31;
                v33 = [v14 messageId];
                *buf = 138543362;
                v102 = v33;
                _os_log_impl(&dword_25B19F000, v32, OS_LOG_TYPE_DEFAULT, "Dropping Message Status UPDATE because status did not change. %{public}@", buf, 0xCu);
              }

              goto LABEL_42;
            }

            v52 = [(NNMKSyncPersistenceHandler *)self syncController];
            v53 = [v52 isValidMessageStatus:objc_msgSend(v14 forMailbox:{"status"), v7}];

            v54 = qword_28144D620;
            v55 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
            if (v53)
            {
              if (v55)
              {
                v56 = v54;
                v57 = [v14 messageId];
                v58 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
                v59 = [v14 dateReceived];
                *buf = 138543874;
                v102 = v57;
                v103 = 2112;
                v104 = v58;
                v105 = 2114;
                v106 = v59;
                _os_log_impl(&dword_25B19F000, v56, OS_LOG_TYPE_DEFAULT, "Message Status UPDATED (Id: %{public}@ - Status: %@ - Date Received: %{public}@ - Source: MobileMail).", buf, 0x20u);
              }

              [v20 setStatusVersion:[v20 statusVersion]+ 1];
              -[NSObject setStatus:](v20, "setStatus:", [v14 status]);
              v60 = objc_alloc_init(NNMKProtoMessageStatusUpdate);
              v61 = [(NNMKSyncPersistenceHandler *)self syncController];
              v62 = [v14 messageId];
              v63 = [v61 watchMessageIdFromMessageId:v62];
              [(NNMKProtoMessageStatusUpdate *)v60 setMessageId:v63];

              -[NNMKProtoMessageStatusUpdate setUpdatedStatus:](v60, "setUpdatedStatus:", [v14 status]);
              [(NNMKProtoMessageStatusUpdate *)v60 setStatusVersion:[v20 statusVersion]];
              v64 = [v20 usedNotificationPriorityForMessageSync];
              v65 = v64 == 0;
              if (v64)
              {
                v66 = v91;
              }

              else
              {
                v66 = v90;
              }

              if (v65)
              {
                v67 = v88;
              }

              else
              {
                v67 = v89;
              }

              [(NNMKProtoMessageStatusUpdates *)v66 addMessageStatusUpdate:v60];
              v68 = [v14 messageId];
              [v67 addObject:v68];

              v69 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
              [v69 addOrUpdateSyncedMessage:v20];
            }

            else
            {
              if (v55)
              {
                v70 = v54;
                v71 = [v14 messageId];
                v72 = [v14 dateReceived];
                v73 = +[NNMKMessage stringFromMailboxItemState:](NNMKMessage, "stringFromMailboxItemState:", [v14 status]);
                *buf = 138543874;
                v102 = v71;
                v103 = 2114;
                v104 = v72;
                v105 = 2112;
                v106 = v73;
                _os_log_impl(&dword_25B19F000, v70, OS_LOG_TYPE_DEFAULT, "Removing message that does not belong to current mailbox due to status change. (Id: %{public}@ - Date Received: %{public}@ - Status: %@).", buf, 0x20u);
              }

              v74 = [v14 messageId];
              [v86 addObject:v74];

              v75 = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
              [v75 handleMessageAdded:v14];
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

  v76 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v76 endUpdates];

  v77 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v78 = [v7 mailboxId];
  v79 = [v77 syncVersionForMailboxId:v78];

  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __59__NNMKSyncPersistenceHandler_updateMessagesStatus_mailbox___block_invoke;
  v94[3] = &unk_279936488;
  v94[4] = self;
  v95 = v7;
  v96 = v79;
  v80 = v7;
  v81 = MEMORY[0x25F864490](v94);
  (v81)[2](v81, v91);
  (v81)[2](v81, v90);
  v82 = objc_opt_new();
  [v82 setProtoMessageUpdatesWithNotificationPriority:v91];
  [v82 setProtoMessageUpdatesWithDefaultPriority:v90];
  [v82 setMessageIdsWithNotificationPriority:v89];
  [v82 setMessageIdsWithDefaultPriority:v88];
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

- (id)deleteMessagesWithIds:(id)a3 mailbox:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v8 beginUpdates];

  v48 = objc_alloc_init(NNMKProtoMessageDeletions);
  v47 = objc_alloc_init(NNMKProtoMessageDeletions);
  v46 = [MEMORY[0x277CBEB18] array];
  v45 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v6;
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
        v15 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
        v16 = [v15 syncedMessageForMessageWithId:v14];

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
          v19 = [(NNMKSyncPersistenceHandler *)self syncController];
          v20 = [v19 watchMessageIdFromMessageId:v14];
          [(NNMKProtoMessageDeletion *)v18 setMessageId:v20];

          v21 = [v16 usedNotificationPriorityForMessageSync];
          v22 = v21 == 0;
          if (v21)
          {
            v23 = v48;
          }

          else
          {
            v23 = v47;
          }

          if (v22)
          {
            v24 = v45;
          }

          else
          {
            v24 = v46;
          }

          [(NNMKProtoMessageDeletions *)v23 addMessageDeletion:v18];
          [v24 addObject:v14];
          v25 = [(NNMKSyncPersistenceHandler *)self batchRequestHandler];
          v26 = [v7 mailboxId];
          [v25 handleMessageDeleted:v14 mailboxId:v26];

          v27 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          v28 = [v7 mailboxId];
          [v27 insertDeletedMessageId:v14 mailboxId:v28];

          v29 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
          [v29 removeSyncedMessageForMessageWithId:v14];

          v30 = [(NNMKSyncPersistenceHandler *)self sessionController];
          v31 = [v30 notificationPayloadAcks];
          [v31 removeObjectForKey:v14];
        }

        v32 = [(NNMKSyncPersistenceHandler *)self sessionController];
        v33 = [v32 messageIdsToIgnoreStatusUpdates];
        [v33 removeObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v11);
  }

  v34 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v35 = [v7 mailboxId];
  v36 = [v34 syncVersionForMailboxId:v35];

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __60__NNMKSyncPersistenceHandler_deleteMessagesWithIds_mailbox___block_invoke;
  v49[3] = &unk_2799364B0;
  v49[4] = self;
  v50 = v7;
  v51 = v36;
  v37 = v7;
  v38 = MEMORY[0x25F864490](v49);
  (v38)[2](v38, v48);
  (v38)[2](v38, v47);
  v39 = objc_alloc_init(NNMKDeletionResult);
  [(NNMKDeletionResult *)v39 setUnprotectedNotificationProtobuf:v48];
  [(NNMKDeletionResult *)v39 setUnprotectedNotificationMessageIds:v46];
  [(NNMKDeletionResult *)v39 setUnprotectedDefaultProtobuf:v47];
  [(NNMKDeletionResult *)v39 setUnprotectedDefaultMessageIds:v45];
  v40 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v40 endUpdates];

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

- (id)updateMessagesFromConversation:(id)a3 withState:(unint64_t)a4 include:(BOOL)a5 mailbox:(id)a6
{
  v7 = a5;
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v44 = a6;
  v11 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  [v11 beginUpdates];

  v50 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  v49 = objc_alloc_init(NNMKProtoMessageStatusUpdates);
  v48 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v47 = v46 = self;
  v12 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v42 = v10;
  v13 = [v12 syncedMessagesForConversationWithId:v10];

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
    v17 = a4 != 128 || v7;
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
        if ((((([v19 status] & a4) == 0) ^ v7) & 1) == 0)
        {
          if ((v51 & 1) != 0 || [v44 filterType] != 32)
          {
            [v19 setStatusVersion:{objc_msgSend(v19, "statusVersion") + 1}];
            v21 = [v19 status];
            if (v7)
            {
              v22 = v21 | a4;
            }

            else
            {
              v22 = v21 ^ a4;
            }

            [v19 setStatus:v22];
            v20 = objc_alloc_init(NNMKProtoMessageStatusUpdate);
            v23 = [(NNMKSyncPersistenceHandler *)v46 syncController];
            [v19 messageId];
            v25 = v24 = v15;
            v26 = [v23 watchMessageIdFromMessageId:v25];
            [(NNMKProtoMessageStatusUpdate *)v20 setMessageId:v26];

            -[NNMKProtoMessageStatusUpdate setUpdatedStatus:](v20, "setUpdatedStatus:", [v19 status]);
            -[NNMKProtoMessageStatusUpdate setStatusVersion:](v20, "setStatusVersion:", [v19 statusVersion]);
            v27 = [v19 usedNotificationPriorityForMessageSync];
            v28 = v27 == 0;
            if (v27)
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
              v30 = v48;
            }

            [(NNMKProtoMessageStatusUpdates *)v29 addMessageStatusUpdate:v20];
            v31 = [v19 messageId];
            [v30 addObject:v31];

            v15 = v24;
            v32 = [(NNMKSyncPersistenceHandler *)v46 currentDeviceRegistry];
            [v32 addOrUpdateSyncedMessage:v19];

            v16 = v45;
          }

          else
          {
            v20 = [v19 messageId];
            [v43 addObject:v20];
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v15);
  }

  v33 = [(NNMKSyncPersistenceHandler *)v46 currentDeviceRegistry];
  [v33 endUpdates];

  v34 = [(NNMKSyncPersistenceHandler *)v46 currentDeviceRegistry];
  v35 = [v44 mailboxId];
  v36 = [v34 syncVersionForMailboxId:v35];

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __87__NNMKSyncPersistenceHandler_updateMessagesFromConversation_withState_include_mailbox___block_invoke;
  v53[3] = &unk_279936488;
  v53[4] = v46;
  v54 = v44;
  v55 = v36;
  v37 = v44;
  v38 = MEMORY[0x25F864490](v53);
  (v38)[2](v38, v50);
  (v38)[2](v38, v49);
  v39 = objc_opt_new();
  [v39 setProtoMessageUpdatesWithNotificationPriority:v50];
  [v39 setProtoMessageUpdatesWithDefaultPriority:v49];
  [v39 setMessageIdsWithNotificationPriority:v48];
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

- (id)addMessageContent:(id)a3 forMessage:(id)a4 mailbox:(id)a5
{
  v112 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(NNMKMessageContentResult);
  v100 = self;
  v10 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v11 = [v7 messageId];
  v12 = [v10 syncedMessageForMessageWithId:v11];

  v13 = [v12 usedNotificationPriorityForMessageSync];
  v14 = [v12 contentRequestedByUser];
  if ((v14 & 1) == 0)
  {
    if (v13)
    {
      v15 = [v12 contentSyncedUsingNotificationPriority];
    }

    else
    {
      v15 = [v12 contentSynced];
    }

    [(NNMKMessageContentResult *)v9 setAlreadySyncedWithCurrentPriority:v15];
  }

  [(NNMKMessageContentResult *)v9 setMessageDoesNotExist:v12 == 0];
  if (!v12 || [(NNMKMessageContentResult *)v9 alreadySyncedWithCurrentPriority])
  {
    goto LABEL_68;
  }

  v91 = v14;
  v16 = [(NNMKSyncPersistenceHandler *)v100 currentDeviceRegistry];
  [v16 beginUpdates];

  if ([v7 mainAlternativeValid])
  {
    v17 = [v8 preview];
  }

  else
  {
    v18 = [v7 hasTextData];
    v17 = [v8 preview];
    if (!v18)
    {
      goto LABEL_15;
    }
  }

  if ([v17 length] >= 0x65)
  {
    v19 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
    {
      [NNMKSyncPersistenceHandler addMessageContent:v19 forMessage:? mailbox:?];
    }

    v20 = [v17 substringToIndex:100];

    v17 = v20;
  }

LABEL_15:
  v95 = v9;
  v92 = v17;
  v89 = [v17 dataUsingEncoding:10];
  v21 = [v89 compressedData];
  v22 = objc_alloc_init(NNMKProtoMessageContentSync);
  v23 = [(NNMKSyncPersistenceHandler *)v100 currentDeviceRegistry];
  -[NNMKProtoMessageContentSync setFullSyncVersion:](v22, "setFullSyncVersion:", [v23 fullSyncVersion]);

  v24 = MEMORY[0x277CCAAB0];
  v25 = [MEMORY[0x277CBEAA8] date];
  v26 = [v24 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:0];
  [(NNMKProtoMessageContentSync *)v22 setDateSynced:v26];

  v27 = [(NNMKSyncPersistenceHandler *)v100 syncController];
  v28 = [v7 messageId];
  v29 = [v27 watchMessageIdFromMessageId:v28];
  [(NNMKProtoMessageContentSync *)v22 setMessageId:v29];

  v30 = [v8 mailboxId];
  [(NNMKProtoMessageContentSync *)v22 setMailboxId:v30];

  -[NNMKProtoMessageContentSync setMainAlternativeValid:](v22, "setMainAlternativeValid:", [v7 mainAlternativeValid]);
  v88 = v21;
  [(NNMKProtoMessageContentSync *)v22 setPreview:v21];
  v99 = v22;
  -[NNMKProtoMessageContentSync setPartiallyLoaded:](v22, "setPartiallyLoaded:", [v7 partiallyLoaded]);
  v31 = [(NNMKSyncPersistenceHandler *)v100 currentDeviceRegistry];
  v32 = [v31 supportsWebKit];

  v93 = v12;
  v87 = v32;
  if (v32)
  {
    v33 = [v32 BOOLValue];
    v34 = [v32 BOOLValue] ^ 1;
    if (!v33)
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
    v35 = [v7 htmlContentData];
    v36 = [v35 compressedData];

    v37 = [v7 htmlContentData];
    if ([v37 length] >> 21)
    {
    }

    else
    {
      v38 = (([v36 length] & 0xFFFFFFFFFFF00000) != 0) & v13;

      if ((v38 & 1) == 0)
      {
        v39 = qword_28144D620;
        if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
        {
          v40 = v39;
          v41 = [v7 messageId];
          v42 = [v7 htmlContentData];
          *buf = 138543874;
          v107 = v41;
          v108 = 2048;
          v109 = [v42 length];
          v110 = 2048;
          v111 = [v36 length];
          _os_log_impl(&dword_25B19F000, v40, OS_LOG_TYPE_INFO, "Message content will sync html content. %{public}@ - size: %lu - compressed: %lu", buf, 0x20u);
        }

        [(NNMKProtoMessageContentSync *)v99 setHtmlContentData:v36];
        v97 = [v36 length];

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
      v45 = [v7 messageId];
      v46 = [v7 htmlContentData];
      *buf = 138543874;
      v107 = v45;
      v108 = 2048;
      v109 = [v46 length];
      v110 = 2048;
      v111 = [v36 length];
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
    v47 = [v7 textData];
    v48 = [v47 length];

    if (v48 >> 21)
    {
      v58 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v58;
        v60 = [v7 messageId];
        v61 = [v7 textData];
        v62 = [v61 length];
        *buf = 138543618;
        v107 = v60;
        v108 = 2048;
        v109 = v62;
        _os_log_impl(&dword_25B19F000, v59, OS_LOG_TYPE_DEFAULT, "Message content too large won't sync. %{public}@ - size: %lu)", buf, 0x16u);
      }

      [(NNMKProtoMessageContentSync *)v99 setMainAlternativeValid:0];
    }

    else
    {
      v49 = [v7 textData];
      v50 = [v49 compressedData];

      v51 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_INFO))
      {
        v52 = v51;
        v53 = [v7 messageId];
        v54 = [v7 htmlContentData];
        v55 = v13;
        v56 = [v54 length];
        v57 = [v50 length];
        *buf = 138543874;
        v107 = v53;
        v108 = 2048;
        v109 = v56;
        v13 = v55;
        v110 = 2048;
        v111 = v57;
        _os_log_impl(&dword_25B19F000, v52, OS_LOG_TYPE_INFO, "Message content will sync text attribute. %{public}@ - size: %lu - compressed %lu", buf, 0x20u);
      }

      [(NNMKProtoMessageContentSync *)v99 setText:v50];
      v97 = [v50 length];
    }
  }

  v90 = v13;
  if (v13)
  {
    v63 = [(NNMKSyncPersistenceHandler *)v100 protoMessageFromMessage:v8];
    [(NNMKProtoMessageContentSync *)v99 setNotificationMessage:v63];
  }

  v94 = v8;
  v98 = [MEMORY[0x277CBEB58] set];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v96 = v7;
  v64 = [v7 attachments];
  v65 = [v64 countByEnumeratingWithState:&v101 objects:v105 count:16];
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
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v101 + 1) + 8 * i);
        v70 = [v69 contentId];

        if (v70)
        {
          v71 = objc_alloc_init(NNMKProtoAttachmentMetadata);
          v72 = [v69 fileName];
          [(NNMKProtoAttachmentMetadata *)v71 setFileName:v72];

          -[NNMKProtoAttachmentMetadata setFileSize:](v71, "setFileSize:", [v69 fileSize]);
          -[NNMKProtoAttachmentMetadata setType:](v71, "setType:", [v69 type]);
          v73 = [(NNMKSyncPersistenceHandler *)v100 syncController];
          v74 = [v69 contentId];
          v75 = [v73 watchAttachmentContentIdFromContentId:v74];
          [(NNMKProtoAttachmentMetadata *)v71 setContentId:v75];

          v76 = [v69 mimePartNumber];
          [(NNMKProtoAttachmentMetadata *)v71 setMimePartNumber:v76];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v77 = v69;
            if ([v77 renderOnClient])
            {
              v78 = [v77 contentId];
              [v98 addObject:v78];
            }

            -[NNMKProtoAttachmentMetadata setRenderOnClient:](v71, "setRenderOnClient:", [v77 renderOnClient]);
            [v77 imageSize];
            *&v79 = v79;
            [(NNMKProtoAttachmentMetadata *)v71 setImageWidth:v79];
            [v77 imageSize];
            *&v81 = v80;
            [(NNMKProtoAttachmentMetadata *)v71 setImageHeight:v81];
LABEL_54:
          }

          else if ([v69 isActionable])
          {
            v77 = [v69 contentId];
            [v98 addObject:v77];
            goto LABEL_54;
          }

          [(NNMKProtoMessageContentSync *)v99 addAttachment:v71];

          continue;
        }
      }

      v66 = [v64 countByEnumeratingWithState:&v101 objects:v105 count:16];
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

  v8 = v94;
  if (v91)
  {
    [v93 setContentSyncedBecauseUserRequested:1];
  }

  [v93 setContentSynced:1];
  v82 = [v93 contentResendInterval];
  [v93 setContentResendInterval:0];
  v7 = v96;
  if ([v93 isContentCompletelySynced])
  {
    [v93 setContentRequestedByUser:0];
  }

  v83 = [(NNMKSyncPersistenceHandler *)v100 currentDeviceRegistry];
  [v83 addOrUpdateSyncedMessage:v93];

  v84 = [(NNMKSyncPersistenceHandler *)v100 currentDeviceRegistry];
  [v84 endUpdates];

  v9 = v95;
  [(NNMKMessageContentResult *)v95 setProtoMessageContentSync:v99];
  [(NNMKMessageContentResult *)v95 setResendInterval:v82];
  [(NNMKMessageContentResult *)v95 setCompressedTextDataLength:v97];
  -[NNMKMessageContentResult setIsContentCompletelySynced:](v95, "setIsContentCompletelySynced:", [v93 isContentCompletelySynced]);
  -[NNMKMessageContentResult setIsNotificationPriority:](v95, "setIsNotificationPriority:", [v93 contentSyncedUsingNotificationPriority]);
  -[NNMKMessageContentResult setIsUserRequest:](v95, "setIsUserRequest:", [v93 contentSyncedBecauseUserRequested]);

LABEL_68:
  v85 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)protoMessageFromMessage:(id)a3
{
  v4 = a3;
  v5 = [(NNMKSyncPersistenceHandler *)self currentDeviceRegistry];
  v6 = [v5 organizeByThread];
  v7 = [(NNMKSyncPersistenceHandler *)self delegate];
  v8 = [v7 pairedDeviceSupportsMultipleMailboxes];
  v9 = [(NNMKSyncPersistenceHandler *)self delegate];
  v10 = +[NNMKProtoMessage protoMessageFromMessage:organizedByThread:sanitizeMessageId:supportsStandaloneMode:](NNMKProtoMessage, "protoMessageFromMessage:organizedByThread:sanitizeMessageId:supportsStandaloneMode:", v4, v6, v8 ^ 1u, [v9 pairedDeviceSupportsStandaloneMode]);

  return v10;
}

- (id)currentDeviceRegistry
{
  v2 = [(NNMKSyncPersistenceHandler *)self delegate];
  v3 = [v2 currentDeviceRegistry];

  return v3;
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