@interface MFDATransferActionReplayer
- (BOOL)deleteSourceMessagesFromTransferItems:(id)items;
- (BOOL)downloadFailed;
- (BOOL)isRecoverableError:(id)error;
- (id)appendItem:(id)item mailboxURL:(id)l;
- (id)copyItems:(id)items destinationMailboxURL:(id)l;
- (id)fetchBodyDataForRemoteID:(id)d mailboxURL:(id)l;
- (id)moveItems:(id)items destinationMailboxURL:(id)l;
- (id)replayActionUsingStore:(id)store;
@end

@implementation MFDATransferActionReplayer

- (id)replayActionUsingStore:(id)store
{
  storeCopy = store;
  [(MFDATransferActionReplayer *)self setStore:storeCopy];
  replayAction = [(ECTransferActionReplayer *)self replayAction];

  return replayAction;
}

- (id)appendItem:(id)item mailboxURL:(id)l
{
  v49[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  store = [(MFDATransferActionReplayer *)self store];
  account = [store account];
  action = [(ECLocalActionReplayer *)self action];
  mailboxURL = [action mailboxURL];
  absoluteString = [mailboxURL absoluteString];
  v11 = [account mailboxUidForURL:absoluteString];

  if ([v11 type] == 3)
  {
    v12 = objc_alloc(MEMORY[0x1E699B360]);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke;
    v47[3] = &unk_1E7AA5490;
    v48 = itemCopy;
    v13 = [v12 initWithBuilder:v47];
    v14 = v48;
  }

  else if ([v11 type] == 5)
  {
    folderID = [v11 folderID];
    v16 = [account syncAnchorForFolderID:folderID mailbox:0];

    if (!v16)
    {
      [store fetchNumMessages:0 preservingUID:0 options:0];
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = objc_alloc(MEMORY[0x1E695DFA8]);
    v49[0] = itemCopy;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
    v36 = [v18 initWithArray:v19];

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    destinationMessage = [itemCopy destinationMessage];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [MFDAMessageStoreSaveDraftRequest alloc];
      folderID2 = [v11 folderID];
      v23 = [(MFDAMessageStoreSaveDraftRequest *)v21 initWithMessage:destinationMessage mailbox:folderID2];

      v24 = objc_opt_new();
      [account addRequest:v23 consumer:v24 mailbox:v11];
      if ([v24 success])
      {
        [v17 addObject:itemCopy];
        [v36 removeObject:itemCopy];
        v25 = objc_alloc(MEMORY[0x1E699B320]);
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_3;
        v42[3] = &unk_1E7AA54B8;
        v43 = destinationMessage;
        v44 = v24;
        v26 = [v25 initWithServerMessageBuilder:v42];
        [v35 addObject:v26];

        error = 0;
      }

      else
      {
        error = [v24 error];
      }
    }

    else
    {
      error = 0;
    }

    v29 = objc_alloc(MEMORY[0x1E699B360]);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_4;
    v37[3] = &unk_1E7AA54E0;
    v14 = v17;
    v38 = v14;
    v30 = v36;
    v39 = v30;
    v31 = v35;
    v40 = v31;
    v41 = error;
    v32 = error;
    v13 = [v29 initWithBuilder:v37];
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x1E699B360]);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_2;
    v45[3] = &unk_1E7AA5490;
    v46 = itemCopy;
    v13 = [v28 initWithBuilder:v45];
    v14 = v46;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v13;
}

void __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setPhaseForResults:3];
  v6[0] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v3 setCompletedItems:v4];

  v5 = *MEMORY[0x1E69E9840];
}

void __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setPhaseForResults:3];
  v7[0] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setFailedItems:v4];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699B068] code:1 userInfo:0];
  [v3 setError:v5];

  v6 = *MEMORY[0x1E69E9840];
}

void __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) persistentID];
  [v5 setMessagePersistentID:v3];

  v4 = [*(a1 + 40) serverId];
  [v5 setRemoteID:v4];
}

void __52__MFDATransferActionReplayer_appendItem_mailboxURL___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setPhaseForResults:3];
  [v4 setCompletedItems:*(a1 + 32)];
  v3 = [*(a1 + 40) allObjects];
  [v4 setFailedItems:v3];

  [v4 setCreatedServerMessages:*(a1 + 48)];
  [v4 setError:*(a1 + 56)];
}

- (BOOL)deleteSourceMessagesFromTransferItems:(id)items
{
  v28 = *MEMORY[0x1E69E9840];
  action = [(ECLocalActionReplayer *)self action];
  store = [(MFDATransferActionReplayer *)self store];
  v5 = [objc_alloc(MEMORY[0x1E699B300]) initWithBuilder:&__block_literal_global_30];
  itemsToDelete = [action itemsToDelete];
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(itemsToDelete, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = itemsToDelete;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        sourceRemoteID = [v12 sourceRemoteID];
        if (sourceRemoteID || ([v12 sourceMessage], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "remoteID"), sourceRemoteID = objc_claimAutoreleasedReturnValue(), v14, sourceRemoteID))
        {
          [v7 addObject:sourceRemoteID];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  v15 = MFExchangeLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v7;
    _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Deleting source messages from transfer: %{public}@", buf, 0xCu);
  }

  v20 = 0;
  v16 = [store replayFlagChange:v5 forRemoteIDs:v7 error:&v20 completed:0];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)copyItems:(id)items destinationMailboxURL:(id)l
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MFDATransferActionReplayer.m" lineNumber:116 description:@"Copy is not supported for DA accounts"];

  return 0;
}

- (id)moveItems:(id)items destinationMailboxURL:(id)l
{
  v104 = *MEMORY[0x1E69E9840];
  v67 = [(MFDATransferActionReplayer *)self store:items];
  account = [v67 account];
  action = [(ECLocalActionReplayer *)self action];
  itemsToCopy = [action itemsToCopy];
  v5 = [itemsToCopy count];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v5];
  v64 = v5;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v7 = itemsToCopy;
  v8 = [v7 countByEnumeratingWithState:&v92 objects:v103 count:16];
  if (v8)
  {
    v9 = *v93;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v93 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v92 + 1) + 8 * i);
        sourceRemoteID = [v11 sourceRemoteID];
        if (sourceRemoteID || ([v11 sourceMessage], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "remoteID"), sourceRemoteID = objc_claimAutoreleasedReturnValue(), v13, sourceRemoteID))
        {
          [v6 setObject:v11 forKeyedSubscript:sourceRemoteID];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v92 objects:v103 count:16];
    }

    while (v8);
  }

  sourceMailboxURL = [action sourceMailboxURL];
  absoluteString = [sourceMailboxURL absoluteString];
  v70 = [account mailboxUidForURL:absoluteString];

  folderID = [v70 folderID];
  destinationMailboxURL = [action destinationMailboxURL];
  absoluteString2 = [destinationMailboxURL absoluteString];
  v68 = [account mailboxUidForURL:absoluteString2];

  folderID2 = [v68 folderID];
  account2 = [v70 account];
  v21 = account2;
  if (account2 == account)
  {
    account3 = [v68 account];
    if (folderID)
    {
      v23 = folderID2 == 0;
    }

    else
    {
      v23 = 1;
    }

    v25 = !v23 && account3 == account;

    if (v25)
    {
      v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v72 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v64];
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v26 = v6;
      v27 = [v26 countByEnumeratingWithState:&v88 objects:v102 count:16];
      if (v27)
      {
        v28 = *v89;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v89 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = [objc_alloc(MEMORY[0x1E6999850]) initMoveRequestWithMessage:*(*(&v88 + 1) + 8 * j) fromFolder:folderID toFolder:folderID2];
            if (v30)
            {
              [v72 addObject:v30];
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v88 objects:v102 count:16];
        }

        while (v27);
      }

      if ([v72 count])
      {
        v61 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v64];
        v32 = objc_alloc(MEMORY[0x1E695DFD8]);
        allKeys = [v26 allKeys];
        v65 = [v32 initWithArray:allKeys];

        v34 = [[MFDAMoveResponseConsumer alloc] initWithSourceRemoteIDs:v65 destinationRemoteIDsBySourceRemoteIDs:v31 failures:v61];
        accountConduit = [account accountConduit];
        [accountConduit performMoveRequests:v72 consumer:v34];

        [(MFDAMailAccountConsumer *)v34 waitUntilDone];
        v36 = +[MFActivityMonitor currentMonitor];
        error = [(MFDAMoveResponseConsumer *)v34 error];
        [v36 setError:error];

        statusCode = [(MFDAMoveResponseConsumer *)v34 statusCode];
        if ([(MFDAMailAccountConsumer *)v34 shouldRetryRequest])
        {
          v39 = 0;
        }

        else
        {
          v50 = objc_opt_new();
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke;
          v82[3] = &unk_1E7AA5528;
          v83 = v61;
          v60 = v62;
          v84 = v60;
          v85 = v31;
          v59 = v66;
          v86 = v59;
          v51 = v50;
          v87 = v51;
          [v26 enumerateKeysAndObjectsUsingBlock:v82];
          v52 = DALoggingwithCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v97 = v59;
            v98 = 2112;
            v99 = v60;
            v100 = 2048;
            v101 = statusCode;
            _os_log_impl(&dword_1B0389000, v52, OS_LOG_TYPE_INFO, "Transfer action completed with successful items: %@. Failed items: %@. StatusCode: %lu", buf, 0x20u);
          }

          if ([v60 count] && statusCode == 15)
          {
            v53 = DALoggingwithCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1B0389000, v53, OS_LOG_TYPE_DEFAULT, "Transfer failed with Invalid Source Error. Moving the messages locally", buf, 2u);
            }

            [v59 addObjectsFromArray:v60];
            [v60 removeAllObjects];
            v54 = +[MFActivityMonitor currentMonitor];
            [v54 setError:0];
          }

          v55 = objc_alloc(MEMORY[0x1E699B360]);
          v77[0] = MEMORY[0x1E69E9820];
          v77[1] = 3221225472;
          v77[2] = __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_23;
          v77[3] = &unk_1E7AA54E0;
          v78 = v59;
          v56 = v51;
          v79 = v56;
          v80 = v60;
          v81 = v34;
          v39 = [v55 initWithBuilder:v77];
        }

        v49 = v61;
      }

      else
      {
        v48 = objc_alloc(MEMORY[0x1E699B360]);
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_2_24;
        v75[3] = &unk_1E7AA5490;
        v76 = v7;
        v39 = [v48 initWithBuilder:v75];
        v49 = v76;
      }

      v41 = v62;
      goto LABEL_53;
    }
  }

  else
  {
  }

  account4 = [v70 account];
  v41 = +[LocalAccount localAccount];
  if (account4 != v41)
  {
    v66 = account4;
LABEL_39:
    v39 = 0;
LABEL_53:

    goto LABEL_54;
  }

  account5 = [v68 account];
  v43 = account5;
  if (account5 != account)
  {
    v66 = account4;

    goto LABEL_39;
  }

  v44 = account4;
  v45 = [v68 type] == 3;

  if (v45)
  {
    v66 = [v7 ef_compactMap:&__block_literal_global_28];
    library = [account library];
    [library compactMessages:v66];

    v47 = objc_alloc(MEMORY[0x1E699B360]);
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_4;
    v73[3] = &unk_1E7AA5490;
    v74 = v7;
    v39 = [v47 initWithBuilder:v73];
    v41 = v74;
    goto LABEL_53;
  }

  v39 = 0;
LABEL_54:

  v57 = *MEMORY[0x1E69E9840];

  return v39;
}

void __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([a1[4] containsObject:v5])
  {
    [a1[5] addObject:v6];
  }

  else
  {
    v7 = [a1[6] objectForKeyedSubscript:v5];
    if (v7)
    {
      [a1[7] addObject:v6];
      v8 = objc_alloc(MEMORY[0x1E699B320]);
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_2;
      v16 = &unk_1E7AA54B8;
      v17 = v6;
      v18 = v7;
      v9 = [v8 initWithServerMessageBuilder:&v13];
      [a1[8] addObject:{v9, v13, v14, v15, v16}];

      v10 = v17;
    }

    else
    {
      v10 = DALoggingwithCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 destinationMessage];
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "message %@ was successfully transferred, but we don't have a new remote ID for it", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) destinationMessage];
  v4 = [v3 persistentID];
  [v5 setMessagePersistentID:v4];

  [v5 setRemoteID:*(a1 + 40)];
}

void __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_23(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setPhaseForResults:3];
  [v4 setCompletedItems:*(a1 + 32)];
  [v4 setCreatedServerMessages:*(a1 + 40)];
  [v4 setFailedItems:*(a1 + 48)];
  v3 = [*(a1 + 56) error];
  [v4 setError:v3];
}

void __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_2_24(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPhaseForResults:3];
  [v3 setFailedItems:*(a1 + 32)];
}

id __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 sourceMessage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __62__MFDATransferActionReplayer_moveItems_destinationMailboxURL___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPhaseForResults:3];
  [v3 setCompletedItems:*(a1 + 32)];
}

- (id)fetchBodyDataForRemoteID:(id)d mailboxURL:(id)l
{
  dCopy = d;
  store = [(MFDATransferActionReplayer *)self store];
  v7 = [store fetchBodyDataForRemoteID:dCopy];

  return v7;
}

- (BOOL)downloadFailed
{
  error = [(ECLocalActionReplayer *)self error];
  if (error)
  {
    v4 = ![(MFDATransferActionReplayer *)self isRecoverableError:error];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isRecoverableError:(id)error
{
  domain = [error domain];
  v4 = [domain isEqualToString:*MEMORY[0x1E6999880]];

  return v4 ^ 1;
}

@end