@interface ECTransferActionIMAPReplayer
- (BOOL)deleteSourceMessagesFromTransferItems:(id)items;
- (BOOL)downloadFailed;
- (BOOL)isRecoverableError:(id)error;
- (ECIMAPLocalActionReplayerDelegate)delegate;
- (id)_transferItems:(id)items destinationMailboxURL:(id)l isMove:(BOOL)move;
- (id)appendItem:(id)item mailboxURL:(id)l;
- (id)fetchBodyDataForRemoteID:(id)d mailboxURL:(id)l;
- (id)moveItems:(id)items destinationMailboxURL:(id)l;
@end

@implementation ECTransferActionIMAPReplayer

- (id)moveItems:(id)items destinationMailboxURL:(id)l
{
  v4 = [(ECTransferActionIMAPReplayer *)self _transferItems:items destinationMailboxURL:l isMove:1];

  return v4;
}

- (id)_transferItems:(id)items destinationMailboxURL:(id)l isMove:(BOOL)move
{
  moveCopy = move;
  v87 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  lCopy = l;
  delegate = [(ECTransferActionIMAPReplayer *)self delegate];
  v11 = [delegate imapMailboxNameForMailboxURL:lCopy];

  if (v11)
  {
    v12 = objc_opt_new();
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    allKeys = [itemsCopy allKeys];
    v14 = [allKeys countByEnumeratingWithState:&v77 objects:v86 count:16];
    if (v14)
    {
      v15 = *v78;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v78 != v15)
          {
            objc_enumerationMutation(allKeys);
          }

          integerValue = [*(*(&v77 + 1) + 8 * i) integerValue];
          if (integerValue)
          {
            [v12 addIndex:integerValue];
          }
        }

        v14 = [allKeys countByEnumeratingWithState:&v77 objects:v86 count:16];
      }

      while (v14);
    }

    delegate2 = [(ECTransferActionIMAPReplayer *)self delegate];
    action = [(ECLocalActionReplayer *)self action];
    mailboxURL = [action mailboxURL];
    v54 = [delegate2 flagsForIMAPUIDs:v12 mailboxURL:mailboxURL];

    if (moveCopy)
    {
      serverInterface = [(ECTransferActionIMAPReplayer *)self serverInterface];
      v75 = 0;
      v76 = 0;
      v22 = [serverInterface moveUIDs:v12 toMailboxNamed:v11 copyInfo:&v76 error:&v75];
      v23 = v76;
      v24 = v75;

      if ((v22 & 1) == 0)
      {
LABEL_13:
        serverInterface2 = [(ECTransferActionIMAPReplayer *)self serverInterface];
        hasValidConnection = [serverInterface2 hasValidConnection];

        if (hasValidConnection)
        {
          v27 = +[ECLocalActionReplayer log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [(ECLocalActionReplayer *)self action];
            objc_claimAutoreleasedReturnValue();
            [v24 ef_publicDescription];
            objc_claimAutoreleasedReturnValue();
            [ECTransferActionIMAPReplayer _transferItems:destinationMailboxURL:isMove:];
          }

          v28 = [ECTransferMessageActionResults alloc];
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke_11;
          v57[3] = &unk_27874C4D0;
          v58 = itemsCopy;
          v29 = [(ECTransferMessageActionResults *)v28 initWithBuilder:v57];
        }

        else
        {
          v29 = 0;
        }

        [(ECLocalActionReplayer *)self setError:v24];
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      serverInterface3 = [(ECTransferActionIMAPReplayer *)self serverInterface];
      v73 = 0;
      v74 = 0;
      v34 = [serverInterface3 copyUIDs:v12 toMailboxNamed:v11 copyInfo:&v74 error:&v73];
      v23 = v74;
      v24 = v73;

      if (!v34)
      {
        goto LABEL_13;
      }
    }

    v53 = objc_opt_new();
    if (v23 && (-[ECTransferActionIMAPReplayer delegate](self, "delegate"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 checkUIDValidity:objc_msgSend(v23 mailboxURL:{"uidValidity"), lCopy}], v35, v36))
    {
      *buf = 0;
      v83 = buf;
      v84 = 0x2020000000;
      v85 = 0;
      v50 = objc_opt_new();
      sourceUIDsToDestinationUIDs = [v23 sourceUIDsToDestinationUIDs];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke;
      v67[3] = &unk_27874C458;
      v38 = itemsCopy;
      v68 = v38;
      v69 = v54;
      v51 = v53;
      v70 = v51;
      v39 = v50;
      v71 = v39;
      v72 = buf;
      [sourceUIDsToDestinationUIDs enumerateKeysAndObjectsUsingBlock:v67];

      allValues = [v38 allValues];
      v40 = [v39 count];
      if (v40 >= [allValues count])
      {
        v41 = 0;
      }

      else
      {
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke_2;
        v65[3] = &unk_27874C480;
        v66 = v39;
        v41 = [allValues ef_filter:v65];
      }

      if ([v41 count])
      {
        v43 = +[ECLocalActionReplayer log];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          action2 = [(ECLocalActionReplayer *)self action];
          -[ECTransferActionIMAPReplayer _transferItems:destinationMailboxURL:isMove:].cold.2(action2, v81, [v41 count], v43);
        }
      }

      v45 = [ECTransferMessageActionResults alloc];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke_8;
      v61[3] = &unk_27874C4A8;
      v46 = v39;
      v62 = v46;
      v63 = v51;
      v64 = v41;
      v47 = v41;
      v29 = [(ECTransferMessageActionResults *)v45 initWithBuilder:v61];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v42 = [ECTransferMessageActionResults alloc];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke_2_10;
      v59[3] = &unk_27874C4D0;
      v60 = itemsCopy;
      v29 = [(ECTransferMessageActionResults *)v42 initWithBuilder:v59];
    }

    goto LABEL_35;
  }

  v30 = +[ECLocalActionReplayer log];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    action3 = [(ECLocalActionReplayer *)self action];
    [ECTransferActionIMAPReplayer _transferItems:action3 destinationMailboxURL:buf isMove:v30];
  }

  v32 = [ECTransferMessageActionResults alloc];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke_12;
  v55[3] = &unk_27874C4D0;
  v56 = itemsCopy;
  v29 = [(ECTransferMessageActionResults *)v32 initWithBuilder:v55];
  v12 = v56;
LABEL_36:

  v48 = *MEMORY[0x277D85DE8];

  return v29;
}

void __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [v5 unsignedIntegerValue];
  v7 = [v6 unsignedIntegerValue];
  v8 = EFStringWithUnsignedInteger();
  v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = [ECServerMessage alloc];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke_4;
    v19 = &unk_27874C430;
    v11 = v9;
    v20 = v11;
    v21 = *(a1 + 40);
    v22 = v5;
    v23 = v7;
    v12 = [(ECServerMessage *)v10 initWithIMAPServerMessageBuilder:&v16];
    [*(a1 + 48) addObject:{v12, v16, v17, v18, v19}];
    [*(a1 + 56) addObject:v11];
    v13 = *(*(a1 + 64) + 8);
    if (v7 > *(v13 + 24))
    {
      *(v13 + 24) = v7;
    }

    v14 = v20;
  }

  else
  {
    v14 = +[ECLocalActionReplayer log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v5;
      _os_log_impl(&dword_22D092000, v14, OS_LOG_TYPE_DEFAULT, "Got unexpected Source UID %@ while replaying action", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) destinationMessage];
  v4 = [v3 persistentID];
  [v6 setMessagePersistentID:v4];

  v5 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  [v6 setServerFlags:v5];

  [v6 setImapUID:*(a1 + 56)];
}

void __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke_8(void *a1, void *a2)
{
  v3 = a2;
  [v3 setPhaseForResults:3];
  [v3 setCompletedItems:a1[4]];
  [v3 setCreatedServerMessages:a1[5]];
  [v3 setFailedItems:a1[6]];
}

void __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke_2_10(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setPhaseForResults:3];
  v3 = [*(a1 + 32) allValues];
  [v4 setCompletedItems:v3];
}

void __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke_11(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setPhaseForResults:3];
  v3 = [*(a1 + 32) allValues];
  [v4 setFailedItems:v3];
}

void __76__ECTransferActionIMAPReplayer__transferItems_destinationMailboxURL_isMove___block_invoke_12(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setPhaseForResults:3];
  v3 = [*(a1 + 32) allValues];
  [v4 setFailedItems:v3];
}

- (BOOL)deleteSourceMessagesFromTransferItems:(id)items
{
  v25 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        sourceRemoteID = [*(*(&v20 + 1) + 8 * i) sourceRemoteID];
        integerValue = [sourceRemoteID integerValue];

        if (integerValue)
        {
          [v5 addIndex:integerValue];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v12 = [[ECMessageFlagChange alloc] initWithBuilder:&__block_literal_global_23];
    serverInterface = [(ECTransferActionIMAPReplayer *)self serverInterface];
    v14 = [serverInterface storeFlagChange:v12 forUIDs:v5];

    serverInterface2 = [(ECTransferActionIMAPReplayer *)self serverInterface];
    [serverInterface2 expungeUIDs:v5];

    if (v14)
    {
      hasValidConnection = 1;
    }

    else
    {
      serverInterface3 = [(ECTransferActionIMAPReplayer *)self serverInterface];
      hasValidConnection = [serverInterface3 hasValidConnection];
    }
  }

  else
  {
    hasValidConnection = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return hasValidConnection;
}

- (id)fetchBodyDataForRemoteID:(id)d mailboxURL:(id)l
{
  dCopy = d;
  delegate = [(ECTransferActionIMAPReplayer *)self delegate];
  action = [(ECLocalActionReplayer *)self action];
  mailboxURL = [action mailboxURL];
  v9 = [delegate messageDataForRemoteID:dCopy mailboxURL:mailboxURL];

  return v9;
}

- (BOOL)downloadFailed
{
  error = [(ECLocalActionReplayer *)self error];
  serverInterface = [(ECTransferActionIMAPReplayer *)self serverInterface];
  if ([serverInterface hasValidConnection])
  {
    LOBYTE(v5) = 1;
  }

  else if (error)
  {
    v5 = ![(ECTransferActionIMAPReplayer *)self isRecoverableError:error];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isRecoverableError:(id)error
{
  errorCopy = error;
  delegate = [(ECTransferActionIMAPReplayer *)self delegate];
  v6 = [delegate errorIsIMAPError:errorCopy];

  return v6 ^ 1;
}

- (id)appendItem:(id)item mailboxURL:(id)l
{
  v60 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  lCopy = l;
  destinationMessage = [itemCopy destinationMessage];
  delegate = [(ECTransferActionIMAPReplayer *)self delegate];
  v8 = [delegate imapMailboxNameForMailboxURL:lCopy];

  if (!v8)
  {
    v9 = +[ECLocalActionReplayer log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ECLocalActionReplayer *)self action];
      objc_claimAutoreleasedReturnValue();
      [MEMORY[0x277D07198] ec_redactedStringForMailboxURL:lCopy];
      objc_claimAutoreleasedReturnValue();
      [ECTransferActionIMAPReplayer appendItem:mailboxURL:];
    }
  }

  delegate2 = [(ECTransferActionIMAPReplayer *)self delegate];
  v11 = [delegate2 messageDataForMessage:destinationMessage];

  v12 = [v11 length];
  v13 = 0;
  v14 = 0;
  if (!v8)
  {
    goto LABEL_11;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  serverInterface = [(ECTransferActionIMAPReplayer *)self serverInterface];
  flags = [destinationMessage flags];
  dateReceived = [destinationMessage dateReceived];
  v52 = 0;
  v53 = 0;
  v18 = [serverInterface appendData:v11 toMailboxNamed:v8 flags:flags dateReceived:dateReceived appendInfo:&v53 error:&v52];
  v14 = v53;
  v13 = v52;

  if (v18)
  {
    if (!v14 || (-[ECTransferActionIMAPReplayer delegate](self, "delegate"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 checkUIDValidity:objc_msgSend(v14 mailboxURL:{"uidValidity"), lCopy}], v19, !v20))
    {
      v33 = [ECTransferMessageActionResults alloc];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __54__ECTransferActionIMAPReplayer_appendItem_mailboxURL___block_invoke_3;
      v44[3] = &unk_27874C4D0;
      v45 = itemCopy;
      v26 = [(ECTransferMessageActionResults *)v33 initWithBuilder:v44];
      v27 = &v45;
      goto LABEL_20;
    }

    newMessageUID = [v14 newMessageUID];
    v22 = [ECServerMessage alloc];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __54__ECTransferActionIMAPReplayer_appendItem_mailboxURL___block_invoke;
    v49[3] = &unk_27874C518;
    v50 = destinationMessage;
    v51 = newMessageUID;
    v23 = [(ECServerMessage *)v22 initWithIMAPServerMessageBuilder:v49];
    v24 = [ECTransferMessageActionResults alloc];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __54__ECTransferActionIMAPReplayer_appendItem_mailboxURL___block_invoke_2;
    v46[3] = &unk_27874C540;
    v47 = itemCopy;
    v25 = v23;
    v48 = v25;
    v26 = [(ECTransferMessageActionResults *)v24 initWithBuilder:v46];

    v27 = &v50;
  }

  else
  {
LABEL_11:
    serverInterface2 = [(ECTransferActionIMAPReplayer *)self serverInterface];
    if ([serverInterface2 hasValidConnection])
    {
    }

    else
    {
      delegate3 = [(ECTransferActionIMAPReplayer *)self delegate];
      v30 = [delegate3 errorIsIMAPError:v13];

      if (!v30)
      {
        v26 = 0;
        goto LABEL_21;
      }
    }

    v31 = +[ECLocalActionReplayer log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      action = [(ECLocalActionReplayer *)self action];
      v37 = [v11 length];
      v38 = [MEMORY[0x277D07198] partiallyRedactedStringForString:v8];
      *buf = 138543874;
      v55 = action;
      v56 = 2048;
      v57 = v37;
      v58 = 2114;
      v59 = v38;
      _os_log_error_impl(&dword_22D092000, v31, OS_LOG_TYPE_ERROR, "<%{public}@> Permanent error trying to append message (Message Data Length = %lu, mailboxName = %{public}@).", buf, 0x20u);
    }

    v32 = [ECTransferMessageActionResults alloc];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __54__ECTransferActionIMAPReplayer_appendItem_mailboxURL___block_invoke_17;
    v41[3] = &unk_27874C540;
    v42 = itemCopy;
    v13 = v13;
    v43 = v13;
    v26 = [(ECTransferMessageActionResults *)v32 initWithBuilder:v41];
    v27 = &v42;
    v25 = v43;
  }

LABEL_20:
LABEL_21:

  v34 = *MEMORY[0x277D85DE8];

  return v26;
}

void __54__ECTransferActionIMAPReplayer_appendItem_mailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) persistentID];
  [v5 setMessagePersistentID:v3];

  v4 = [*(a1 + 32) flags];
  [v5 setServerFlags:v4];

  [v5 setImapUID:*(a1 + 40)];
}

void __54__ECTransferActionIMAPReplayer_appendItem_mailboxURL___block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setPhaseForResults:3];
  v8[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 setCompletedItems:v4];

  v7 = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  [v3 setCreatedServerMessages:v5];

  v6 = *MEMORY[0x277D85DE8];
}

void __54__ECTransferActionIMAPReplayer_appendItem_mailboxURL___block_invoke_3(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setPhaseForResults:3];
  v6[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v3 setCompletedItems:v4];

  v5 = *MEMORY[0x277D85DE8];
}

void __54__ECTransferActionIMAPReplayer_appendItem_mailboxURL___block_invoke_17(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setPhaseForResults:3];
  v6[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v3 setFailedItems:v4];

  [v3 setError:*(a1 + 40)];
  v5 = *MEMORY[0x277D85DE8];
}

- (ECIMAPLocalActionReplayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)_transferItems:destinationMailboxURL:isMove:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_22D092000, "<%{public}@>. Server interface does not have a valid connection for copying items. Error: %{public}@", v5, v6);
}

- (void)_transferItems:(uint64_t)a3 destinationMailboxURL:(NSObject *)a4 isMove:.cold.2(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 138543618;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  OUTLINED_FUNCTION_1_1(&dword_22D092000, "<%{public}@>. Failed to copy %lu items", a2, a4);
}

- (void)_transferItems:(void *)a1 destinationMailboxURL:(uint8_t *)buf isMove:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_22D092000, log, OS_LOG_TYPE_ERROR, "<%{public}@>. Unable to find a destination folder while copying items.", buf, 0xCu);
}

- (void)appendItem:mailboxURL:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_1_1(&dword_22D092000, "<%{public}@> Couldn't find IMAP mailbox name for URL %{public}@", v5, v6);
}

@end