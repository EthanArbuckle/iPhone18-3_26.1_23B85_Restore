@interface MUIMessageListUnbundledSectionDataSource
- (MUIMessageListUnbundledSectionDataSource)initWithConfiguration:(id)a3;
- (MUIMessageListUnbundledSectionDataSource)initWithSection:(id)a3 collectionView:(id)a4 messageList:(id)a5 initialLoadCompletedPromise:(id)a6 layoutValuesHelper:(id)a7 state:(id)a8 headerType:(unint64_t)a9;
- (UICollectionViewCellRegistration)cellRegistration;
- (id)_allowedSections;
- (id)_indexPathsForSelectedItems;
- (id)configuredCollectionViewCellForCollectionView:(id)a3 indexPath:(id)a4 itemID:(id)a5 cellIdentifier:(id)a6;
- (id)createCellRegistrationForCellClass:(Class)a3;
- (id)sectionForCollection:(id)a3;
- (uint64_t)_isExpandedItemID:(void *)a1;
- (uint64_t)_needsFlushSeparatorForItemID:(void *)a3 snapshot:(char)a4 useSplitViewStyling:;
- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5;
- (void)collection:(id)a3 shouldHighlightSnippetHints:(id)a4;
@end

@implementation MUIMessageListUnbundledSectionDataSource

- (UICollectionViewCellRegistration)cellRegistration
{
  cellRegistration = self->_cellRegistration;
  if (!cellRegistration)
  {
    v4 = [(MessageListSectionDataSource *)self delegate];
    v5 = [v4 sectionListCellClassForMessageListSectionDataSource:self];

    v6 = [(MUIMessageListUnbundledSectionDataSource *)self createCellRegistrationForCellClass:v5];
    v7 = self->_cellRegistration;
    self->_cellRegistration = v6;

    cellRegistration = self->_cellRegistration;
  }

  return cellRegistration;
}

- (id)_allowedSections
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (EMBlackPearlIsFeatureEnabled())
  {
    [v2 addObject:@"MessageListSectionRecentUnseen"];
  }

  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    [v2 addObject:@"MessageListSectionPriority"];
  }

  if (_os_feature_enabled_impl())
  {
    [v2 addObject:@"MessageListSectionInstantAnswers"];
    [v2 addObject:@"MessageListSectionTopHits"];
  }

  [v2 addObject:@"MessageListSectionIndexedSearch"];

  return v2;
}

- (MUIMessageListUnbundledSectionDataSource)initWithSection:(id)a3 collectionView:(id)a4 messageList:(id)a5 initialLoadCompletedPromise:(id)a6 layoutValuesHelper:(id)a7 state:(id)a8 headerType:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v40.receiver = self;
  v40.super_class = MUIMessageListUnbundledSectionDataSource;
  v21 = [(MessageListSectionDataSource *)&v40 initWithSection:v15 collectionView:v16 messageList:v17 initialLoadCompletedPromise:v18 layoutValuesHelper:v19 state:v20 headerType:a9];
  if (v21)
  {
    v32 = v15;
    v22 = [MEMORY[0x277CBEBD0] em_userDefaults];
    v23 = *MEMORY[0x277D06C70];
    -[MUIMessageListUnbundledSectionDataSource setHideFollowUp:](v21, "setHideFollowUp:", [v22 BOOLForKey:*MEMORY[0x277D06C70]]);
    objc_initWeak(&location, v21);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __151__MUIMessageListUnbundledSectionDataSource_initWithSection_collectionView_messageList_initialLoadCompletedPromise_layoutValuesHelper_state_headerType___block_invoke;
    v36[3] = &unk_278188C80;
    objc_copyWeak(&v38, &location);
    v24 = v22;
    v37 = v24;
    v25 = [v24 ef_observeKeyPath:v23 options:1 autoCancelToken:1 usingBlock:v36];
    hideFollowUpUserDefaultsObserver = v21->_hideFollowUpUserDefaultsObserver;
    v21->_hideFollowUpUserDefaultsObserver = v25;

    v27 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    -[MUIMessageListUnbundledSectionDataSource setLocalMailboxSearchScope:](v21, "setLocalMailboxSearchScope:", [v27 BOOLForKey:@"LocalMailboxSearchOnly"]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __151__MUIMessageListUnbundledSectionDataSource_initWithSection_collectionView_messageList_initialLoadCompletedPromise_layoutValuesHelper_state_headerType___block_invoke_2;
    v33[3] = &unk_278188C80;
    objc_copyWeak(&v35, &location);
    v28 = v27;
    v34 = v28;
    v29 = [v28 ef_observeKeyPath:@"LocalMailboxSearchOnly" options:1 autoCancelToken:1 usingBlock:v33];
    localMailboxSearchScopeUserDefaultsObserver = v21->_localMailboxSearchScopeUserDefaultsObserver;
    v21->_localMailboxSearchScopeUserDefaultsObserver = v29;

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);

    v15 = v32;
  }

  return v21;
}

void __151__MUIMessageListUnbundledSectionDataSource_initWithSection_collectionView_messageList_initialLoadCompletedPromise_layoutValuesHelper_state_headerType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setHideFollowUp:{objc_msgSend(*(a1 + 32), "BOOLForKey:", *MEMORY[0x277D06C70])}];
    WeakRetained = v3;
  }
}

void __151__MUIMessageListUnbundledSectionDataSource_initWithSection_collectionView_messageList_initialLoadCompletedPromise_layoutValuesHelper_state_headerType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setLocalMailboxSearchScope:{objc_msgSend(*(a1 + 32), "BOOLForKey:", @"LocalMailboxSearchOnly"}];
    WeakRetained = v3;
  }
}

- (MUIMessageListUnbundledSectionDataSource)initWithConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = MUIMessageListUnbundledSectionDataSource;
  v3 = [(MessageListSectionDataSource *)&v6 initWithConfiguration:a3];
  v4 = v3;
  if (v3)
  {
    [(MUIMessageListUnbundledSectionDataSource *)v3 cellRegistration];
  }

  return v4;
}

- (id)createCellRegistrationForCellClass:(Class)a3
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D752B0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__MUIMessageListUnbundledSectionDataSource_createCellRegistrationForCellClass___block_invoke;
  v7[3] = &unk_27818AA00;
  objc_copyWeak(&v8, &location);
  v5 = [v4 registrationWithCellClass:a3 configurationHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

void __79__MUIMessageListUnbundledSectionDataSource_createCellRegistrationForCellClass___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureCell:v9 atIndexPath:v8 itemID:v7];
}

- (id)configuredCollectionViewCellForCollectionView:(id)a3 indexPath:(id)a4 itemID:(id)a5 cellIdentifier:(id)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(MUIMessageListUnbundledSectionDataSource *)self cellRegistration];
  v13 = [v11 dequeueConfiguredReusableCellWithRegistration:v12 forIndexPath:v10 item:v9];

  return v13;
}

- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CACurrentMediaTime();
  v12 = [(MessageListSectionDataSource *)self state];
  v13 = [v8 cellHelper];
  v14 = [(MessageListSectionDataSource *)self layoutValuesHelper];
  v15 = [v13 cellView];
  [v15 setLayoutValuesHelper:v14];

  [v13 setCompact:{objc_msgSend(v12, "isCompact")}];
  [v13 setExpanded:{-[MUIMessageListUnbundledSectionDataSource _isExpandedItemID:](self, v10)}];
  [v13 setHideFollowUp:{-[MUIMessageListUnbundledSectionDataSource shouldHideFollowUp](self, "shouldHideFollowUp")}];
  [v13 setLocalMailboxSearchScope:{-[MUIMessageListUnbundledSectionDataSource isLocalMailboxSearchScope](self, "isLocalMailboxSearchScope")}];
  v16 = [(MessageListSectionDataSource *)self state];
  LODWORD(v15) = [v16 isSearch];

  if (v15)
  {
    [v13 setSenderSpecificCell:0];
  }

  else
  {
    v17 = [(MessageListSectionDataSource *)self state];
    [v13 setSenderSpecificCell:{objc_msgSend(v17, "isSenderSpecificMailbox")}];
  }

  v42 = [(MessageListSectionDataSource *)self messageList];
  v41 = [(MessageListSectionDataSource *)self itemHelper];
  v18 = [(MessageListSectionDataSource *)self provider];
  v43 = [v18 snapshotForMessageListSectionDataSource:self];

  v19 = [(MessageListSectionDataSource *)self messageList];
  v20 = [v41 cellGroupingForItemID:v10 snapshot:v43 isThreaded:{objc_msgSend(v19, "isThreaded")}];

  [v8 setBackgroundViewConfigurationGrouping:v20];
  if (([v12 useSplitViewStyling] & 1) == 0)
  {
    [v8 setNeedsFlushSeparator:{-[MUIMessageListUnbundledSectionDataSource _needsFlushSeparatorForItemID:snapshot:useSplitViewStyling:](self, v10, v43, objc_msgSend(v12, "useSplitViewStyling"))}];
  }

  v21 = [v8 messageListItemFuture];

  if (v21)
  {
    v22 = [(MessageListSectionDataSource *)self log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v8 messageListItemFuture];
      *buf = 134218498;
      v66 = self;
      v67 = 2114;
      v68 = v24;
      v69 = 2112;
      v70 = v25;
      _os_log_impl(&dword_214A5E000, v22, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> Canceling messageListItemFuture to prepare for re-use: %@", buf, 0x20u);
    }

    v26 = [v8 messageListItemFuture];
    [v26 cancel];

    [v8 setMessageListItemFuture:0];
  }

  v27 = [(MessageListSectionDataSource *)self delegate];
  objc_initWeak(buf, self);
  objc_initWeak(&location, v8);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__MUIMessageListUnbundledSectionDataSource__configureCell_atIndexPath_itemID___block_invoke;
  aBlock[3] = &unk_27818ACC0;
  objc_copyWeak(&v62, buf);
  objc_copyWeak(&v63, &location);
  v28 = v12;
  v60 = v28;
  v29 = v10;
  v61 = v29;
  v30 = _Block_copy(aBlock);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __78__MUIMessageListUnbundledSectionDataSource__configureCell_atIndexPath_itemID___block_invoke_2;
  v50[3] = &unk_27818ACE8;
  objc_copyWeak(&v57, buf);
  objc_copyWeak(v58, &location);
  v40 = v13;
  v51 = v40;
  v31 = v28;
  v52 = v31;
  v32 = v9;
  v53 = v32;
  v33 = v29;
  v54 = v33;
  v34 = v27;
  v55 = v34;
  v35 = v30;
  v56 = v35;
  v58[1] = *&v11;
  v36 = _Block_copy(v50);
  v37 = [v42 messageListItemForItemID:v33];
  v38 = [v37 resultIfAvailable];

  if (v38)
  {
    v36[2](v36, v38, 1);
  }

  else
  {
    v35[2](v35);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __78__MUIMessageListUnbundledSectionDataSource__configureCell_atIndexPath_itemID___block_invoke_12;
    v44[3] = &unk_27818AD10;
    v49 = v36;
    v44[4] = self;
    v45 = v33;
    v46 = v32;
    v47 = v42;
    v48 = v34;
    v39 = [(MessageListSectionDataSource *)self messageListItemForItemID:v45 indexPath:v46 receiver:v8 completion:v44];
  }

  objc_destroyWeak(v58);
  objc_destroyWeak(&v57);

  objc_destroyWeak(&v63);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (uint64_t)_needsFlushSeparatorForItemID:(void *)a3 snapshot:(char)a4 useSplitViewStyling:
{
  v7 = a2;
  v8 = a3;
  v9 = 0;
  if (a1 && (a4 & 1) == 0)
  {
    v10 = [a1 threadHelper];
    v9 = [v10 needsFlushSeparatorForItemID:v7 snapshot:v8];
  }

  return v9;
}

void __78__MUIMessageListUnbundledSectionDataSource__configureCell_atIndexPath_itemID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 56));
    if (v3)
    {
      [v3 setEditing:objc_msgSend(*(a1 + 32) animated:{"isEditing"), 0}];
      v4 = [v10 selectionModelProvider];
      v5 = [v4 selectionModelForMessageListSectionDataSource:v10];

      if (([v5 isMultipleSelectionActive] & 1) == 0 && v5)
      {
        [v5 configureSelectionForItemID:*(a1 + 40)];
        v6 = [v10 provider];
        v7 = [v6 messageListSectionDataSource:v10 indexPathForItemIdentifier:*(a1 + 40)];

        if (v7)
        {
          v8 = [v10 _indexPathsForSelectedItems];
          v9 = [v8 containsObject:v7];
        }

        else
        {
          v9 = 0;
        }

        [v3 setSelected:{(objc_msgSend(v5, "isSelectedItemID:", *(a1 + 40)) | v9) & 1}];
        [v3 setNeedsUpdateConfiguration];
      }
    }

    WeakRetained = v10;
  }
}

void __78__MUIMessageListUnbundledSectionDataSource__configureCell_atIndexPath_itemID___block_invoke_2(uint64_t a1, void *a2, unsigned int a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained((a1 + 88));
    if (v7)
    {
      v34 = a3;
      if (objc_opt_respondsToSelector())
      {
        v8 = [WeakRetained log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = [v5 ef_shortPublicDescription];
          *buf = 134218498;
          v36 = WeakRetained;
          v37 = 2114;
          v38 = v10;
          v39 = 2112;
          v40 = v11;
          _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> Configuring cell %@", buf, 0x20u);
        }
      }

      v12 = [v5 itemID];
      [v7 setItemID:v12];

      v13 = [MEMORY[0x277D07150] futureWithResult:v5];
      [v7 setMessageListItemFuture:v13];

      if ([*(a1 + 40) isOutgoingMailbox])
      {
        v14 = 1;
      }

      else
      {
        v14 = [*(a1 + 40) containsFollowUpMailbox];
      }

      [*(a1 + 32) setOutgoingMailbox:v14];
      [*(a1 + 32) setInbox:{objc_msgSend(*(a1 + 40), "containsInbox")}];
      [*(a1 + 32) setCanShowReadLaterDate:{objc_msgSend(*(a1 + 40), "canShowReadLaterDate")}];
      [*(a1 + 32) setSearchResult:{objc_msgSend(*(a1 + 40), "isSearch")}];
      [*(a1 + 32) setNumberOfPreviewLines:{objc_msgSend(WeakRetained, "numberOfPreviewLines")}];
      v15 = [WeakRetained collectionView];
      [*(a1 + 32) setVisible:{objc_msgSend(v15, "mui_isIndexPathVisible:", *(a1 + 48))}];

      v16 = [WeakRetained threadHelper];
      v33 = v16;
      if (v16)
      {
        v17 = [v16 styleForMessageListItem:v5];
        if (v17 == 1)
        {
          [v7 setDisclosureDelegate:WeakRetained];
          v18 = [WeakRetained messageList];
          v19 = [v18 expandedThreadItemIDs];
          v20 = [v19 containsObject:*(a1 + 56)];

          v17 = 1;
          if (v20)
          {
            [*(a1 + 32) setDisclosureEnabled:1];
          }
        }
      }

      else
      {
        v17 = 0;
      }

      v21 = [*(a1 + 64) selectedBucketForMUIMessageListUnbundledSectionDataSource:WeakRetained];
      v22 = [v5 category];
      [*(a1 + 32) setCategory:v22];

      [*(a1 + 32) setShouldShowHighImpact:v21 == 1];
      v23 = [v5 displayMessageObjectID];
      v24 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v23, "globalMessageID")}];
      v25 = [WeakRetained snippetHintsByGlobalMessageID];
      v26 = [v25 objectForKeyedSubscript:v24];
      v27 = [v26 copy];

      v28 = [WeakRetained log];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = objc_opt_class();
        v32 = NSStringFromClass(v29);
        v30 = [MEMORY[0x277D07198] partiallyRedactedDictionary:v27];
        *buf = 134218754;
        v36 = WeakRetained;
        v37 = 2114;
        v38 = v32;
        v39 = 2112;
        v40 = v30;
        v31 = v30;
        v41 = 2112;
        v42 = v24;
        _os_log_debug_impl(&dword_214A5E000, v28, OS_LOG_TYPE_DEBUG, "<%p: %{public}@> Found hints: %@, for id: %@", buf, 0x2Au);
      }

      [*(a1 + 32) setMessageListItem:v5 style:v17 hintsBySnippetZone:v27];
      [*(a1 + 32) setPriority:{objc_msgSend(WeakRetained, "isPrioritySection")}];
      [*(a1 + 32) setShouldDisplayUnreadAndVIP:{objc_msgSend(*(a1 + 40), "shouldDisplayUnreadAndVIP")}];
      [*(a1 + 32) setShouldAnnotateReplyOrForward:0];
      [*(a1 + 32) setShowsAccessory:objc_msgSend(*(a1 + 40) showingDetail:{"isOutgoingMailbox") ^ 1, objc_msgSend(*(a1 + 64), "messageListUnbundledSectionDataSourceIsInExpandedEnvironment:", WeakRetained)}];
      (*(*(a1 + 72) + 16))();
      [*(a1 + 64) messageListSectionDataSource:WeakRetained didConfigureCell:v7 atIndexPath:*(a1 + 48) item:v5 itemWasCached:v34 duration:CACurrentMediaTime() - *(a1 + 96)];
    }
  }
}

void __78__MUIMessageListUnbundledSectionDataSource__configureCell_atIndexPath_itemID___block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7 = [v5 ef_isCancelledError];
    v8 = [*(a1 + 32) log];
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = *(a1 + 40);
        v14 = [*(a1 + 48) ef_publicDescription];
        v15 = [v6 ef_publicDescription];
        v23 = 134219010;
        v24 = v10;
        v25 = 2114;
        v26 = v12;
        v27 = 2114;
        v28 = v13;
        v29 = 2114;
        v30 = v14;
        v31 = 2114;
        v32 = v15;
        _os_log_impl(&dword_214A5E000, v9, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> Cancel messageListItem for itemID=%{public}@, indexPath=%{public}@, error=%{public}@", &v23, 0x34u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = *(a1 + 40);
        v20 = [*(a1 + 48) ef_publicDescription];
        v21 = *(a1 + 56);
        v22 = [v6 ef_publicDescription];
        v23 = 134219266;
        v24 = v16;
        v25 = 2114;
        v26 = v18;
        v27 = 2114;
        v28 = v19;
        v29 = 2114;
        v30 = v20;
        v31 = 2048;
        v32 = v21;
        v33 = 2114;
        v34 = v22;
        _os_log_error_impl(&dword_214A5E000, v9, OS_LOG_TYPE_ERROR, "<%p: %{public}@> Failed to obtain messageListItem for itemID:%{public}@ at indexPath:%{public}@ in messageList:%p with error:%{public}@", &v23, 0x3Eu);
      }

      [*(a1 + 64) messageListSectionDataSource:*(a1 + 32) didFailToConfigureCellAtIndexPath:*(a1 + 48) error:v6];
    }
  }
}

- (id)_indexPathsForSelectedItems
{
  v2 = [(MessageListSectionDataSource *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];

  return v3;
}

- (id)sectionForCollection:(id)a3
{
  v4 = [(MessageListSectionDataSource *)self section];
  v5 = [(MUIMessageListUnbundledSectionDataSource *)self _allowedSections];
  if ([v5 containsObject:v4])
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)collection:(id)a3 shouldHighlightSnippetHints:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
  {
    v6 = [(MessageListSectionDataSource *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v5 count];
      v10 = MEMORY[0x277D07198];
      v11 = [v5 allValues];
      v12 = [v11 firstObject];
      v13 = [v10 partiallyRedactedDictionary:v12];
      v19 = 134218754;
      v20 = self;
      v21 = 2114;
      v22 = v8;
      v23 = 2048;
      v24 = v9;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> [Snippet Hints] [Committed Search] Received (%ld) items: %@", &v19, 0x2Au);
    }

    v14 = [(MUIMessageListUnbundledSectionDataSource *)self snippetHintsByGlobalMessageID];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;

    v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v17];
    [v18 addEntriesFromDictionary:v5];
    [(MUIMessageListUnbundledSectionDataSource *)self setSnippetHintsByGlobalMessageID:v18];
  }
}

- (uint64_t)_isExpandedItemID:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 messageList];
    if ([v4 isThreaded])
    {
      v5 = [v4 anyExpandedThreadContainsItemID:v3];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end