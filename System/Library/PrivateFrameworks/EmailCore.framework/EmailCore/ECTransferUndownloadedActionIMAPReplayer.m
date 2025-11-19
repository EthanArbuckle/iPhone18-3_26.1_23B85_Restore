@interface ECTransferUndownloadedActionIMAPReplayer
- (BOOL)_deleteUIDs:(id)a3;
- (BOOL)_moveAllMessages;
- (ECIMAPLocalActionReplayerDelegate)delegate;
- (id)_copyAllMessages:(BOOL)a3;
- (id)_uidIndexSet;
- (id)replayAction;
- (void)_uidIndexSet;
@end

@implementation ECTransferUndownloadedActionIMAPReplayer

- (id)replayAction
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = [(ECLocalActionReplayer *)self action];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"ECTransferUndownloadedActionIMAPReplayer.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"[self.action isKindOfClass:[ECTransferUndownloadedMessageAction class]]"}];
  }

  v6 = [(ECLocalActionReplayer *)self action];
  if ([v6 transferType] != 1)
  {
    goto LABEL_7;
  }

  v7 = [(ECTransferUndownloadedActionIMAPReplayer *)self delegate];
  v8 = [v6 sourceMailboxURL];
  v9 = [v6 destinationMailboxURL];
  v10 = [v7 moveSupportedFromMailboxURL:v8 toURL:v9];

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
    if ([v6 transferType] == 3)
    {
      v11 = [v6 itemsToDelete];
      v12 = [v11 count];

      if (v12)
      {
        v13 = objc_opt_new();
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v14 = [v6 itemsToDelete];
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v15)
        {
          v16 = *v33;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = [*(*(&v32 + 1) + 8 * i) sourceRemoteID];
              [v13 addIndex:{objc_msgSend(v18, "integerValue")}];
            }

            v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v15);
        }

        v19 = [(ECTransferUndownloadedActionIMAPReplayer *)self _deleteUIDs:v13];
        v20 = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
        [v20 expungeUIDs:v13];

        if (v19)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v22 = [(ECTransferUndownloadedActionIMAPReplayer *)self _uidIndexSet];
        v23 = [(ECTransferUndownloadedActionIMAPReplayer *)self _deleteUIDs:v22];

        v24 = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
        [v24 expunge];

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
      v21 = -[ECTransferUndownloadedActionIMAPReplayer _copyAllMessages:](self, "_copyAllMessages:", [v6 transferType] == 1);
      if (v21)
      {
        goto LABEL_25;
      }
    }
  }

  v25 = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
  v26 = [v25 hasValidConnection];

  if (v26)
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
  v3 = [(ECLocalActionReplayer *)self action];
  v4 = [(ECTransferUndownloadedActionIMAPReplayer *)self delegate];
  v5 = [v3 destinationMailboxURL];
  v6 = [v4 imapMailboxNameForMailboxURL:v5];

  v7 = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
  v8 = [(ECTransferUndownloadedActionIMAPReplayer *)self _uidIndexSet];
  LOBYTE(v5) = [v7 moveUIDs:v8 toMailboxNamed:v6 copyInfo:0 error:0];

  return v5;
}

- (id)_copyAllMessages:(BOOL)a3
{
  v3 = a3;
  v37 = *MEMORY[0x277D85DE8];
  v25 = [(ECLocalActionReplayer *)self action];
  v5 = [(ECTransferUndownloadedActionIMAPReplayer *)self delegate];
  v6 = [v25 destinationMailboxURL];
  v26 = [v5 imapMailboxNameForMailboxURL:v6];

  v7 = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
  v8 = [(ECTransferUndownloadedActionIMAPReplayer *)self _uidIndexSet];
  v35 = 0;
  v9 = [v7 copyUIDs:v8 toMailboxNamed:v26 copyInfo:&v35 error:0];
  v27 = v35;

  v10 = [v27 sourceUIDsToDestinationUIDs];
  v24 = [v10 allKeys];

  if (v3 && [v24 count])
  {
    v11 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v24;
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

          v16 = [*(*(&v31 + 1) + 8 * v15) unsignedIntegerValue];
          v17 = [ECTransferMessageActionItem alloc];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __61__ECTransferUndownloadedActionIMAPReplayer__copyAllMessages___block_invoke;
          v30[3] = &__block_descriptor_40_e46_v16__0___ECTransferMessageActionItemBuilder__8l;
          v30[4] = v16;
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

- (BOOL)_deleteUIDs:(id)a3
{
  v4 = a3;
  v5 = [[ECMessageFlagChange alloc] initWithBuilder:&__block_literal_global_24];
  v6 = [(ECTransferUndownloadedActionIMAPReplayer *)self serverInterface];
  v7 = [v6 storeFlagChange:v5 forUIDs:v4];

  return v7;
}

- (id)_uidIndexSet
{
  v2 = [(ECLocalActionReplayer *)self action];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 oldestPersistedRemoteID];
    v5 = v4;
    if (!v4)
    {
      v9 = +[ECLocalActionReplayer log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ECTransferUndownloadedActionIMAPReplayer _uidIndexSet];
      }

      v10 = [MEMORY[0x277CCAA78] indexSet];
      goto LABEL_19;
    }

    v12 = 0;
    if (sscanf([v4 UTF8String], "%lld", &v12) == 1)
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
          v10 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, v12 - 1}];
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

    v10 = [MEMORY[0x277CCAA78] indexSet];
LABEL_19:
    v8 = v10;

    goto LABEL_20;
  }

  v7 = +[ECLocalActionReplayer log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ECTransferUndownloadedActionIMAPReplayer _uidIndexSet];
  }

  v8 = [MEMORY[0x277CCAA78] indexSet];
LABEL_20:

  return v8;
}

- (ECIMAPLocalActionReplayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)_uidIndexSet
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end