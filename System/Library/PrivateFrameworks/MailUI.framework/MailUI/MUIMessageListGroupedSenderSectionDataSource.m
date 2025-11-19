@interface MUIMessageListGroupedSenderSectionDataSource
- (MUIMessageListGroupedSenderSectionDataSource)initWithConfiguration:(id)a3;
- (id)configuredCollectionViewCellForCollectionView:(id)a3 indexPath:(id)a4 itemID:(id)a5 cellIdentifier:(id)a6;
- (id)sectionForCollection:(id)a3;
- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5;
- (void)_promptForSenderInconsistencyIfNeeded:(void *)a3 itemID:(void *)a4 indexPath:;
@end

@implementation MUIMessageListGroupedSenderSectionDataSource

- (MUIMessageListGroupedSenderSectionDataSource)initWithConfiguration:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = MUIMessageListGroupedSenderSectionDataSource;
  v6 = [(MessageListSectionDataSource *)&v27 initWithConfiguration:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [(MessageListSectionDataSource *)v6 avatarGenerator];

    if (!v8)
    {
      [(MUIMessageListGroupedSenderSectionDataSource *)a2 initWithConfiguration:v7];
    }

    objc_initWeak(&location, v7);
    v9 = MEMORY[0x277D752B0];
    v10 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__MUIMessageListGroupedSenderSectionDataSource_initWithConfiguration___block_invoke;
    v24[3] = &unk_27818AA28;
    objc_copyWeak(&v25, &location);
    v11 = [v9 registrationWithCellClass:v10 configurationHandler:v24];
    cellRegistration = v7->_cellRegistration;
    v7->_cellRegistration = v11;

    v13 = [MEMORY[0x277CBEBD0] em_userDefaults];
    v14 = *MEMORY[0x277D06C88];
    -[MUIMessageListGroupedSenderSectionDataSource setHideMessageListAvatar:](v7, "setHideMessageListAvatar:", [v13 BOOLForKey:*MEMORY[0x277D06C88]]);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __70__MUIMessageListGroupedSenderSectionDataSource_initWithConfiguration___block_invoke_2;
    v21 = &unk_278188C80;
    objc_copyWeak(&v23, &location);
    v15 = v13;
    v22 = v15;
    v16 = [v15 ef_observeKeyPath:v14 options:5 autoCancelToken:1 usingBlock:&v18];
    [(MUIMessageListGroupedSenderSectionDataSource *)v7 setAvatarUserDefaultObserver:v16, v18, v19, v20, v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __70__MUIMessageListGroupedSenderSectionDataSource_initWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _configureCell:v11 atIndexPath:v7 itemID:v8];
  }
}

void __70__MUIMessageListGroupedSenderSectionDataSource_initWithConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setHideMessageListAvatar:{objc_msgSend(*(a1 + 32), "BOOLForKey:", *MEMORY[0x277D06C88])}];
    WeakRetained = v3;
  }
}

- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MessageListSectionDataSource *)self numberOfPreviewLines];
  v12 = CACurrentMediaTime();
  v13 = [(MessageListSectionDataSource *)self delegate];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__MUIMessageListGroupedSenderSectionDataSource__configureCell_atIndexPath_itemID___block_invoke;
  aBlock[3] = &unk_27818AA78;
  aBlock[4] = self;
  v14 = v10;
  v31 = v14;
  v15 = v9;
  v32 = v15;
  v16 = v8;
  v33 = v16;
  v35 = v11;
  v36 = v12;
  v17 = v13;
  v34 = v17;
  v18 = _Block_copy(aBlock);
  v19 = [(MessageListSectionDataSource *)self messageList];
  v20 = [v19 messageListItemForItemID:v14];
  v21 = [v20 resultIfAvailable];

  if (v21)
  {
    v18[2](v18, v21, 1);
  }

  else
  {
    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __82__MUIMessageListGroupedSenderSectionDataSource__configureCell_atIndexPath_itemID___block_invoke_12;
    v23[3] = &unk_27818AAA0;
    objc_copyWeak(&v28, &location);
    v27 = v18;
    v24 = v14;
    v25 = v15;
    v26 = v17;
    v22 = [(MessageListSectionDataSource *)self messageListItemForItemID:v24 indexPath:v25 receiver:v16 completion:v23];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

void __82__MUIMessageListGroupedSenderSectionDataSource__configureCell_atIndexPath_itemID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [(MUIMessageListGroupedSenderSectionDataSource *)*(a1 + 32) _promptForSenderInconsistencyIfNeeded:v5 itemID:*(a1 + 40) indexPath:*(a1 + 48)];
  v6 = [*(a1 + 32) contactStore];
  v7 = [v5 preferredSenderDisplayNameWithContactStore:v6];

  [*(a1 + 56) updateWithMessageListItem:v5 avatarResult:0 maximumPreviewLines:*(a1 + 72) hideAvatar:objc_msgSend(*(a1 + 32) displayName:{"hideMessageListAvatar"), v7}];
  [*(a1 + 64) messageListSectionDataSource:*(a1 + 32) didConfigureCell:*(a1 + 56) atIndexPath:*(a1 + 48) item:v5 itemWasCached:a3 duration:CACurrentMediaTime() - *(a1 + 80)];
  if (([*(a1 + 32) hideMessageListAvatar] & 1) == 0)
  {
    v8 = [[MUIAvatarImageContext alloc] initWithMessageListItem:v5];
    v9 = [*(a1 + 32) avatarGenerator];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__MUIMessageListGroupedSenderSectionDataSource__configureCell_atIndexPath_itemID___block_invoke_2;
    v13[3] = &unk_27818AA50;
    v14 = *(a1 + 56);
    v10 = v5;
    v18 = *(a1 + 72);
    v11 = *(a1 + 32);
    v15 = v10;
    v16 = v11;
    v17 = v7;
    v12 = [v9 contactForContext:v8 handler:v13];
  }
}

void __82__MUIMessageListGroupedSenderSectionDataSource__configureCell_atIndexPath_itemID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) itemID];
  v8 = [*(a1 + 40) itemID];

  if (v6 || v7 != v8)
  {
    v9 = [*(a1 + 48) log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) ef_publicDescription];
      v11 = [*(a1 + 32) itemID];
      v12 = [v6 ef_publicDescription];
      v13 = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "Skipping avatar update for item %@, the cell has ID %@ error %{public}@", &v13, 0x20u);
    }
  }

  else
  {
    [*(a1 + 32) updateWithMessageListItem:*(a1 + 40) avatarResult:v5 maximumPreviewLines:*(a1 + 64) hideAvatar:objc_msgSend(*(a1 + 48) displayName:{"hideMessageListAvatar"), *(a1 + 56)}];
  }
}

void __82__MUIMessageListGroupedSenderSectionDataSource__configureCell_atIndexPath_itemID___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v5)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v8 = [v6 ef_isCancelledError];
      v9 = [WeakRetained log];
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = [*(a1 + 40) ef_publicDescription];
          v13 = [v6 ef_publicDescription];
          v18 = 138543874;
          v19 = v11;
          v20 = 2114;
          v21 = v12;
          v22 = 2114;
          v23 = v13;
          _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "Cancel messageListItem for itemID=%{public}@, indexPath=%{public}@, error=%{public}@", &v18, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 32);
          v15 = [*(a1 + 40) ef_publicDescription];
          v16 = [WeakRetained messageList];
          v17 = [v6 ef_publicDescription];
          v18 = 138544130;
          v19 = v14;
          v20 = 2114;
          v21 = v15;
          v22 = 2048;
          v23 = v16;
          v24 = 2114;
          v25 = v17;
          _os_log_error_impl(&dword_214A5E000, v10, OS_LOG_TYPE_ERROR, "Failed to obtain messageListItem for itemID:%{public}@ at indexPath:%{public}@ in messageList:%p with error:%{public}@", &v18, 0x2Au);
        }

        [*(a1 + 48) messageListSectionDataSource:WeakRetained didFailToConfigureCellAtIndexPath:*(a1 + 40) error:v6];
      }
    }
  }
}

void __103__MUIMessageListGroupedSenderSectionDataSource__promptForSenderInconsistencyIfNeeded_itemID_indexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:@"[BlackPearl][TTR] Grouped sender inconsistency detected"];
  [v3 setRadarDescription:*(a1 + 32)];
  [v3 setComponent:15];
  [v3 setClassification:5];
  [v3 setReproducibility:5];
}

- (id)sectionForCollection:(id)a3
{
  if (EMBlackPearlIsFeatureEnabled())
  {
    v4 = [(MessageListSectionDataSource *)self section];
    if ([v4 isEqualToString:@"MessageListSectionGroupedSenderUnseen"])
    {
      v5 = @"MessageListSectionGroupedSenderUnseen";
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)configuredCollectionViewCellForCollectionView:(id)a3 indexPath:(id)a4 itemID:(id)a5 cellIdentifier:(id)a6
{
  if (self)
  {
    cellRegistration = self->_cellRegistration;
  }

  else
  {
    cellRegistration = 0;
  }

  return [a3 dequeueConfiguredReusableCellWithRegistration:cellRegistration forIndexPath:a4 item:{a5, a6}];
}

- (void)_promptForSenderInconsistencyIfNeeded:(void *)a3 itemID:(void *)a4 indexPath:
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [v7 date];
    if (v10 && ([v7 displayDate], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v12 = [MEMORY[0x277D07148] currentDevice];
      v13 = [v12 isInternal];

      if (v10)
      {

        if ((v13 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if (!v13)
      {
        goto LABEL_13;
      }

      v14 = [a1 log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v26 = [v9 ef_publicDescription];
        v27 = [v7 ef_publicDescription];
        *buf = 138543874;
        v31 = v26;
        v32 = 2114;
        v33 = v8;
        v34 = 2114;
        v35 = v27;
        _os_log_error_impl(&dword_214A5E000, v14, OS_LOG_TYPE_ERROR, "Inconsistency detected at indexPath: %{public}@, itemID: %{public}@, item: %{public}@", buf, 0x20u);
      }

      if ((sDidPromptForSenderInsconsistency & 1) == 0)
      {
        sDidPromptForSenderInsconsistency = 1;
        v15 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v15 setDateStyle:1];
        [v15 setTimeStyle:2];
        v16 = MEMORY[0x277CCACA8];
        v17 = [MEMORY[0x277CBEAA8] now];
        v18 = [v15 stringFromDate:v17];
        v19 = [v9 ef_publicDescription];
        v20 = [v7 ef_publicDescription];
        v21 = [v16 stringWithFormat:@"Sender inconsistency detected:\n\nTimestamp: %@\nItem ID: %@\nIndex Path: %@\n\nMessage List Item: %@", v18, v8, v19, v20];

        v22 = MEMORY[0x277D259A8];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __103__MUIMessageListGroupedSenderSectionDataSource__promptForSenderInconsistencyIfNeeded_itemID_indexPath___block_invoke;
        v28[3] = &unk_27818AAC8;
        v29 = v21;
        v23 = v21;
        v24 = [v22 radarURLWithBuilder:v28];
        v25 = [objc_alloc(MEMORY[0x277D259A0]) initWithTitle:@"[INTERNAL] Inconsistency detected" message:@"Mail has detected an inconsistency which can lead to a crash of MobileMail" radarURL:v24];
        [v25 promptToFile];
      }
    }
  }

LABEL_13:
}

- (void)initWithConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMessageListGroupedSenderSectionDataSource.m" lineNumber:38 description:@"Avatar generator must be provided"];
}

@end