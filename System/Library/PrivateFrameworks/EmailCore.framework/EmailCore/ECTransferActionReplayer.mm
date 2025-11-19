@interface ECTransferActionReplayer
- (id)_allCopyItemsBySourceRemoteIDsForAction:(id)a3 failedItems:(id *)a4;
- (id)_appendMessagesInAction:(id)a3;
- (id)_deleteItemsInAction:(id)a3;
- (id)_downLoadSourceMessagesInAction:(id)a3;
- (id)_transferItemsInAction:(id)a3 isMove:(BOOL)a4;
- (id)failActionWithError:(id)a3;
- (id)replayAction;
@end

@implementation ECTransferActionReplayer

- (id)replayAction
{
  v4 = [(ECLocalActionReplayer *)self action];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"ECTransferActionReplayer.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"[transferAction isKindOfClass:[ECTransferMessageAction class]]"}];
  }

  v5 = [v4 itemsToDownload];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(ECTransferActionReplayer *)self _downLoadSourceMessagesInAction:v4];
  }

  else
  {
    v10 = [v4 itemsToCopy];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [v4 mailboxURL];
      v13 = [v4 destinationMailboxURL];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
        v7 = [(ECTransferActionReplayer *)self _appendMessagesInAction:v4];
      }

      else
      {
        if ([v4 transferType] == 1)
        {
          v17 = [(ECLocalActionReplayer *)self delegate];
          v18 = [v4 sourceMailboxURL];
          v19 = [v4 destinationMailboxURL];
          v20 = [v17 moveSupportedFromMailboxURL:v18 toURL:v19];
        }

        else
        {
          v20 = 0;
        }

        v7 = [(ECTransferActionReplayer *)self _transferItemsInAction:v4 isMove:v20];
      }
    }

    else
    {
      v15 = [v4 itemsToDelete];
      v16 = [v15 count];

      if (!v16)
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        [v22 handleFailureInMethod:a2 object:self file:@"ECTransferActionReplayer.m" lineNumber:36 description:{@"The copy action had nothing to do, so it shouldn't have been created"}];
      }

      v7 = [(ECTransferActionReplayer *)self _deleteItemsInAction:v4];
    }
  }

  v8 = v7;

  return v8;
}

- (id)_downLoadSourceMessagesInAction:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 itemsToDownload];
  v6 = [v5 firstObject];

  v7 = [v6 sourceRemoteID];
  v8 = [v4 mailboxURL];
  v9 = [(ECTransferActionReplayer *)self fetchBodyDataForRemoteID:v7 mailboxURL:v8];

  if ([v9 length])
  {
    v10 = [ECTransferMessageActionResults alloc];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__ECTransferActionReplayer__downLoadSourceMessagesInAction___block_invoke;
    v20[3] = &unk_27874C540;
    v21 = v6;
    v22 = v9;
    v11 = [(ECTransferMessageActionResults *)v10 initWithBuilder:v20];

    v12 = &v21;
LABEL_7:

    goto LABEL_8;
  }

  if ([(ECTransferActionReplayer *)self downloadFailed])
  {
    v13 = +[ECLocalActionReplayer log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(ECLocalActionReplayer *)self action];
      [(ECTransferActionReplayer *)v14 _downLoadSourceMessagesInAction:v6, buf, v13];
    }

    v15 = [ECTransferMessageActionResults alloc];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__ECTransferActionReplayer__downLoadSourceMessagesInAction___block_invoke_16;
    v18[3] = &unk_27874C540;
    v19[0] = v6;
    v19[1] = self;
    v11 = [(ECTransferMessageActionResults *)v15 initWithBuilder:v18];
    v12 = v19;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

void __60__ECTransferActionReplayer__downLoadSourceMessagesInAction___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setPhaseForResults:1];
  v10[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v3 setCompletedItems:v4];

  v5 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v3 setDownloadedDataByCopyItems:v6];

  v7 = *MEMORY[0x277D85DE8];
}

void __60__ECTransferActionReplayer__downLoadSourceMessagesInAction___block_invoke_16(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setPhaseForResults:1];
  v7[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 setFailedItems:v4];

  v5 = [*(a1 + 40) error];
  [v3 setError:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_transferItemsInAction:(id)a3 isMove:(BOOL)a4
{
  v4 = a4;
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v32 = 0;
  v7 = [(ECTransferActionReplayer *)self _allCopyItemsBySourceRemoteIDsForAction:v6 failedItems:&v32];
  v8 = v32;
  if ([v8 count])
  {
    v9 = +[ECLocalActionReplayer log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(ECLocalActionReplayer *)self action];
      [(ECTransferActionReplayer *)v10 _transferItemsInAction:buf isMove:v9];
    }

    v11 = [ECTransferMessageActionResults alloc];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __58__ECTransferActionReplayer__transferItemsInAction_isMove___block_invoke;
    v30[3] = &unk_27874C4D0;
    v31 = v8;
    v12 = [(ECTransferMessageActionResults *)v11 initWithBuilder:v30];
    v13 = v31;
  }

  else
  {
    if (v4)
    {
      v14 = [v6 destinationMailboxURL];
      v12 = [(ECTransferActionReplayer *)self moveItems:v7 destinationMailboxURL:v14];

      v15 = [(ECLocalMessageActionResults *)v12 error];
      if (v15)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [(ECLocalMessageActionResults *)v12 error];
        v13 = [v16 stringWithFormat:@"didn't work, error = %@", v17];
      }

      else
      {
        v13 = @"worked";
      }

      v22 = +[ECLocalActionReplayer log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(ECLocalActionReplayer *)self action];
        v24 = [v7 count];
        *buf = 138543874;
        v34 = v23;
        v35 = 2048;
        v36 = v24;
        v37 = 2114;
        v38 = v13;
        _os_log_impl(&dword_22D092000, v22, OS_LOG_TYPE_DEFAULT, "Replaying move action %{public}@ for %lu items %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v18 = [v6 destinationMailboxURL];
      v12 = [(ECTransferActionReplayer *)self copyItems:v7 destinationMailboxURL:v18];

      v19 = [(ECLocalMessageActionResults *)v12 error];
      if (v19)
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = [(ECLocalMessageActionResults *)v12 error];
        v13 = [v20 stringWithFormat:@"didn't work, error = %@", v21];
      }

      else
      {
        v13 = @"worked";
      }

      v22 = +[ECLocalActionReplayer log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(ECLocalActionReplayer *)self action];
        v26 = [v7 count];
        *buf = 138543874;
        v34 = v25;
        v35 = 2048;
        v36 = v26;
        v37 = 2114;
        v38 = v13;
        _os_log_impl(&dword_22D092000, v22, OS_LOG_TYPE_DEFAULT, "Replaying copy action %{public}@ for %lu items %{public}@", buf, 0x20u);
      }
    }
  }

  v27 = v12;
  v28 = *MEMORY[0x277D85DE8];
  return v12;
}

void __58__ECTransferActionReplayer__transferItemsInAction_isMove___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPhaseForResults:3];
  [v3 setFailedItems:*(a1 + 32)];
}

- (id)_allCopyItemsBySourceRemoteIDsForAction:(id)a3 failedItems:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v20 itemsToCopy];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v21 + 1) + 8 * v10);
      v12 = [v11 sourceRemoteID];
      if (v12 || ([v11 sourceMessage], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "remoteID"), v12 = objc_claimAutoreleasedReturnValue(), v13, v12))
      {
        [v5 setObject:v11 forKeyedSubscript:v12];
      }

      else
      {
        [v6 addObject:v11];
      }

      v14 = [v5 count] < 0x1F5;

      if (!v14)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v15 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v8 = v15;
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = [v6 count];
  if (a4 && v16)
  {
    v17 = v6;
    *a4 = v6;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_appendMessagesInAction:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 itemsToCopy];
  v6 = [v5 firstObject];

  v7 = [v6 destinationMessage];
  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = [v6 destinationMessage];
  v9 = [v8 flags];
  v10 = [v9 deleted];

  if (!v10)
  {
    v15 = [v4 destinationMailboxURL];
    v14 = [(ECTransferActionReplayer *)self appendItem:v6 mailboxURL:v15];
  }

  else
  {
LABEL_3:
    v11 = +[ECLocalActionReplayer log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(ECLocalActionReplayer *)self action];
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&dword_22D092000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@>. Not appending deleted messages", buf, 0xCu);
    }

    v13 = [ECTransferMessageActionResults alloc];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__ECTransferActionReplayer__appendMessagesInAction___block_invoke;
    v18[3] = &unk_27874C4D0;
    v19 = v6;
    v14 = [(ECTransferMessageActionResults *)v13 initWithBuilder:v18];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

void __52__ECTransferActionReplayer__appendMessagesInAction___block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setPhaseForResults:3];
  v6[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v3 setFailedItems:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_deleteItemsInAction:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 itemsToDelete];
  v6 = [(ECTransferActionReplayer *)self deleteSourceMessagesFromTransferItems:v5];

  v7 = @"got connection error";
  if (v6)
  {
    v7 = @"finished";
  }

  v8 = v7;
  v9 = +[ECLocalActionReplayer log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(ECLocalActionReplayer *)self action];
    v11 = [v4 itemsToDelete];
    *buf = 138543874;
    v19 = v10;
    v20 = 2048;
    v21 = [v11 count];
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_22D092000, v9, OS_LOG_TYPE_DEFAULT, "Replaying delete action %{public}@ for %lu items %{public}@", buf, 0x20u);
  }

  if (v6)
  {
    v12 = [ECTransferMessageActionResults alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__ECTransferActionReplayer__deleteItemsInAction___block_invoke;
    v16[3] = &unk_27874C4D0;
    v17 = v4;
    v13 = [(ECTransferMessageActionResults *)v12 initWithBuilder:v16];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __49__ECTransferActionReplayer__deleteItemsInAction___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setPhaseForResults:4];
  v3 = [*(a1 + 32) itemsToDelete];
  [v4 setCompletedItems:v3];
}

- (id)failActionWithError:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ECLocalActionReplayer *)self action];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"ECTransferActionReplayer.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"[action isKindOfClass:[ECTransferMessageAction class]]"}];
  }

  v7 = v6;
  v8 = [v7 itemsToDownload];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v7 itemsToDownload];
    v11 = 1;
  }

  else
  {
    v12 = [v7 itemsToCopy];
    v13 = [v12 count];

    if (v13)
    {
      v10 = [v7 itemsToCopy];
      v11 = 3;
    }

    else
    {
      v14 = [v7 itemsToDelete];
      v15 = [v14 count];

      if (!v15)
      {
        v27 = [MEMORY[0x277CCA890] currentHandler];
        [v27 handleFailureInMethod:a2 object:self file:@"ECTransferActionReplayer.m" lineNumber:164 description:{@"The copy action had nothing to do, so it shouldn't have been created"}];
      }

      v10 = [v7 itemsToDelete];
      v11 = 4;
    }
  }

  v16 = +[ECLocalActionReplayer log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v23 = [(ECLocalActionReplayer *)self action];
    v24 = [(ECLocalActionReplayer *)self error];
    v25 = [v24 ef_publicDescription];
    *buf = 138543618;
    v33 = v23;
    v34 = 2114;
    v35 = v25;
    _os_log_error_impl(&dword_22D092000, v16, OS_LOG_TYPE_ERROR, "<%{public}@>. Failed with error: %{public}@", buf, 0x16u);
  }

  v17 = [ECTransferMessageActionResults alloc];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __48__ECTransferActionReplayer_failActionWithError___block_invoke;
  v28[3] = &unk_27874C568;
  v31 = v11;
  v29 = v10;
  v18 = v5;
  v30 = v18;
  v19 = v10;
  v20 = [(ECTransferMessageActionResults *)v17 initWithBuilder:v28];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __48__ECTransferActionReplayer_failActionWithError___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  [v3 setPhaseForResults:a1[6]];
  [v3 setFailedItems:a1[4]];
  [v3 setError:a1[5]];
}

- (void)_downLoadSourceMessagesInAction:(uint8_t *)buf .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_22D092000, log, OS_LOG_TYPE_ERROR, "<%{public}@>. Download failed for item: %{publid}@", buf, 0x16u);
}

- (void)_transferItemsInAction:(os_log_t)log isMove:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_22D092000, log, OS_LOG_TYPE_ERROR, "<%{public}@>. Failed due to source messages without UIDs", buf, 0xCu);
}

@end