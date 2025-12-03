@interface ECTransferUndownloadedActionIMAPReplayer
- (BOOL)_deleteUIDs:(id)ds;
- (BOOL)_moveAllMessages;
- (ECIMAPLocalActionReplayerDelegate)delegate;
- (id)_copyAllMessages:(BOOL)messages;
- (id)_uidIndexSet;
- (id)replayAction;
- (void)_uidIndexSet;
@end

@implementation ECTransferUndownloadedActionIMAPReplayer

- (id)replayAction
{
  v37 = *MEMORY[0x277D85DE8];
  action = [(ECLocalActionReplayer *)self action];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECTransferUndownloadedActionIMAPReplayer.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"[self.action isKindOfClass:[ECTransferUndownloadedMessageAction class]]"}];
  }

  action2 = [(ECLocalActionReplayer *)self action];
  if ([action2 transferType] != 1)
  {
    goto LABEL_7;
  }

  delegate = [(ECTransferUndownloadedActionIMAPReplayer *)self delegate];
  sourceMailboxURL = [action2 sourceMailboxURL];
  destinationMailboxURL = [action2 destinationMailboxURL];
  v10 = [delegate moveSupportedFromMailboxURL:sourceMailboxURL toURL:destinationMailboxURL];

  if (v10)
  {
    if ([(ECTransferUndownloadedActionIMAPReplayer *)self _moveAllMessages])
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_7:
    if ([action2 transferType] == 3)
    {
      itemsToDelete = [action2 itemsToDelete];
      v12 = [itemsToDelete count];

      if (v12)
      {
        v13 = objc_opt_new();
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        itemsToDelete2 = [action2 itemsToDelete];
        v15 = [itemsToDelete2 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v15)
        {
          v16 = *v33;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(itemsToDelete2);
              }

              sourceRemoteID = [*(*(&v32 + 1) + 8 * i) sourceRemoteID];
              [v13 addIndex:{objc_msgSend(sourceRemoteID, "integerValue")}];
            }

            v15 = [itemsToDelete2 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v15);
        }

        v19 = [(ECTransferUndownloadedActionIMAPReplayer *)self _deleteUIDs:v13];
        serverInterface = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
        [serverInterface expungeUIDs:v13];

        if (v19)
        {
          goto LABEL_21;
        }
      }

      else
      {
        _uidIndexSet = [(ECTransferUndownloadedActionIMAPReplayer *)self _uidIndexSet];
        v23 = [(ECTransferUndownloadedActionIMAPReplayer *)self _deleteUIDs:_uidIndexSet];

        serverInterface2 = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
        [serverInterface2 expunge];

        if (v23)
        {
LABEL_21:
          v21 = [(ECLocalMessageActionResults *)[ECTransferMessageActionResults alloc] initWithError:0];
          goto LABEL_25;
        }
      }
    }

    else
    {
      v21 = -[ECTransferUndownloadedActionIMAPReplayer _copyAllMessages:](self, "_copyAllMessages:", [action2 transferType] == 1);
      if (v21)
      {
        goto LABEL_25;
      }
    }
  }

  serverInterface3 = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
  hasValidConnection = [serverInterface3 hasValidConnection];

  if (hasValidConnection)
  {
    v27 = [ECTransferMessageActionResults alloc];
    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECLocalActionReplayErrorDomain" code:1 userInfo:0];
    v21 = [(ECLocalMessageActionResults *)v27 initWithError:v28];
  }

  else
  {
    v21 = 0;
  }

LABEL_25:

  v29 = *MEMORY[0x277D85DE8];

  return v21;
}

- (BOOL)_moveAllMessages
{
  action = [(ECLocalActionReplayer *)self action];
  delegate = [(ECTransferUndownloadedActionIMAPReplayer *)self delegate];
  destinationMailboxURL = [action destinationMailboxURL];
  v6 = [delegate imapMailboxNameForMailboxURL:destinationMailboxURL];

  serverInterface = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
  _uidIndexSet = [(ECTransferUndownloadedActionIMAPReplayer *)self _uidIndexSet];
  LOBYTE(destinationMailboxURL) = [serverInterface moveUIDs:_uidIndexSet toMailboxNamed:v6 copyInfo:0 error:0];

  return destinationMailboxURL;
}

- (id)_copyAllMessages:(BOOL)messages
{
  messagesCopy = messages;
  v37 = *MEMORY[0x277D85DE8];
  action = [(ECLocalActionReplayer *)self action];
  delegate = [(ECTransferUndownloadedActionIMAPReplayer *)self delegate];
  destinationMailboxURL = [action destinationMailboxURL];
  v26 = [delegate imapMailboxNameForMailboxURL:destinationMailboxURL];

  serverInterface = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
  _uidIndexSet = [(ECTransferUndownloadedActionIMAPReplayer *)self _uidIndexSet];
  v35 = 0;
  v9 = [serverInterface copyUIDs:_uidIndexSet toMailboxNamed:v26 copyInfo:&v35 error:0];
  v27 = v35;

  sourceUIDsToDestinationUIDs = [v27 sourceUIDsToDestinationUIDs];
  allKeys = [sourceUIDsToDestinationUIDs allKeys];

  if (messagesCopy && [allKeys count])
  {
    v11 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = allKeys;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = *v32;
      do
      {
        v15 = 0;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v12);
          }

          unsignedIntegerValue = [*(*(&v31 + 1) + 8 * v15) unsignedIntegerValue];
          v17 = [ECTransferMessageActionItem alloc];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __61__ECTransferUndownloadedActionIMAPReplayer__copyAllMessages___block_invoke;
          v30[3] = &__block_descriptor_40_e46_v16__0___ECTransferMessageActionItemBuilder__8l;
          v30[4] = unsignedIntegerValue;
          v18 = [(ECTransferMessageActionItem *)v17 initWithBuilder:v30];
          [v11 addObject:v18];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    v19 = [ECTransferMessageActionResults alloc];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __61__ECTransferUndownloadedActionIMAPReplayer__copyAllMessages___block_invoke_2;
    v28[3] = &unk_27874C4D0;
    v20 = v11;
    v29 = v20;
    v21 = [(ECTransferMessageActionResults *)v19 initWithBuilder:v28];
  }

  else if (v9)
  {
    v21 = [(ECLocalMessageActionResults *)[ECTransferMessageActionResults alloc] initWithError:0];
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void __61__ECTransferUndownloadedActionIMAPReplayer__copyAllMessages___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = EFStringWithInt();
  [v5 setSourceRemoteID:v4];
}

void __61__ECTransferUndownloadedActionIMAPReplayer__copyAllMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPhaseForResults:3];
  [v3 setCompletedItems:*(a1 + 32)];
}

- (BOOL)_deleteUIDs:(id)ds
{
  dsCopy = ds;
  v5 = [[ECMessageFlagChange alloc] initWithBuilder:&__block_literal_global_24];
  serverInterface = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
  v7 = [serverInterface storeFlagChange:v5 forUIDs:dsCopy];

  return v7;
}

- (id)_uidIndexSet
{
  action = [(ECLocalActionReplayer *)self action];
  v3 = action;
  if (action)
  {
    oldestPersistedRemoteID = [action oldestPersistedRemoteID];
    v5 = oldestPersistedRemoteID;
    if (!oldestPersistedRemoteID)
    {
      v9 = +[ECLocalActionReplayer log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ECTransferUndownloadedActionIMAPReplayer _uidIndexSet];
      }

      indexSet = [MEMORY[0x277CCAA78] indexSet];
      goto LABEL_19;
    }

    v12 = 0;
    if (sscanf([oldestPersistedRemoteID UTF8String], "%lld", &v12) == 1)
    {
      if (v12 <= 0)
      {
        v6 = +[ECLocalActionReplayer log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [ECTransferUndownloadedActionIMAPReplayer _uidIndexSet];
        }
      }

      else
      {
        if (!HIDWORD(v12))
        {
          indexSet = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, v12 - 1}];
          goto LABEL_19;
        }

        v6 = +[ECLocalActionReplayer log];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [(ECTransferUndownloadedActionIMAPReplayer *)&v12 _uidIndexSet];
        }
      }
    }

    else
    {
      v6 = +[ECLocalActionReplayer log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [ECTransferUndownloadedActionIMAPReplayer _uidIndexSet];
      }
    }

    indexSet = [MEMORY[0x277CCAA78] indexSet];
LABEL_19:
    indexSet2 = indexSet;

    goto LABEL_20;
  }

  v7 = +[ECLocalActionReplayer log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ECTransferUndownloadedActionIMAPReplayer _uidIndexSet];
  }

  indexSet2 = [MEMORY[0x277CCAA78] indexSet];
LABEL_20:

  return indexSet2;
}

- (ECIMAPLocalActionReplayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)_uidIndexSet
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *self;
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end