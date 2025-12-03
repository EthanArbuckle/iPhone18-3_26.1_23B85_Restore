@interface MUIMessageListUnbundledSectionDataSource
- (MUIMessageListUnbundledSectionDataSource)initWithConfiguration:(id)configuration;
- (MUIMessageListUnbundledSectionDataSource)initWithSection:(id)section collectionView:(id)view messageList:(id)list initialLoadCompletedPromise:(id)promise layoutValuesHelper:(id)helper state:(id)state headerType:(unint64_t)type;
- (UICollectionViewCellRegistration)cellRegistration;
- (id)_allowedSections;
- (id)_indexPathsForSelectedItems;
- (id)configuredCollectionViewCellForCollectionView:(id)view indexPath:(id)path itemID:(id)d cellIdentifier:(id)identifier;
- (id)createCellRegistrationForCellClass:(Class)class;
- (id)sectionForCollection:(id)collection;
- (uint64_t)_isExpandedItemID:(void *)d;
- (uint64_t)_needsFlushSeparatorForItemID:(void *)d snapshot:(char)snapshot useSplitViewStyling:;
- (void)_configureCell:(id)cell atIndexPath:(id)path itemID:(id)d;
- (void)collection:(id)collection shouldHighlightSnippetHints:(id)hints;
@end

@implementation MUIMessageListUnbundledSectionDataSource

- (UICollectionViewCellRegistration)cellRegistration
{
  cellRegistration = self->_cellRegistration;
  if (!cellRegistration)
  {
    delegate = [(MessageListSectionDataSource *)self delegate];
    v5 = [delegate sectionListCellClassForMessageListSectionDataSource:self];

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

- (MUIMessageListUnbundledSectionDataSource)initWithSection:(id)section collectionView:(id)view messageList:(id)list initialLoadCompletedPromise:(id)promise layoutValuesHelper:(id)helper state:(id)state headerType:(unint64_t)type
{
  sectionCopy = section;
  viewCopy = view;
  listCopy = list;
  promiseCopy = promise;
  helperCopy = helper;
  stateCopy = state;
  v40.receiver = self;
  v40.super_class = MUIMessageListUnbundledSectionDataSource;
  v21 = [(MessageListSectionDataSource *)&v40 initWithSection:sectionCopy collectionView:viewCopy messageList:listCopy initialLoadCompletedPromise:promiseCopy layoutValuesHelper:helperCopy state:stateCopy headerType:type];
  if (v21)
  {
    v32 = sectionCopy;
    em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
    v23 = *MEMORY[0x277D06C70];
    -[MUIMessageListUnbundledSectionDataSource setHideFollowUp:](v21, "setHideFollowUp:", [em_userDefaults BOOLForKey:*MEMORY[0x277D06C70]]);
    objc_initWeak(&location, v21);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __151__MUIMessageListUnbundledSectionDataSource_initWithSection_collectionView_messageList_initialLoadCompletedPromise_layoutValuesHelper_state_headerType___block_invoke;
    v36[3] = &unk_278188C80;
    objc_copyWeak(&v38, &location);
    v24 = em_userDefaults;
    v37 = v24;
    v25 = [v24 ef_observeKeyPath:v23 options:1 autoCancelToken:1 usingBlock:v36];
    hideFollowUpUserDefaultsObserver = v21->_hideFollowUpUserDefaultsObserver;
    v21->_hideFollowUpUserDefaultsObserver = v25;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    -[MUIMessageListUnbundledSectionDataSource setLocalMailboxSearchScope:](v21, "setLocalMailboxSearchScope:", [standardUserDefaults BOOLForKey:@"LocalMailboxSearchOnly"]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __151__MUIMessageListUnbundledSectionDataSource_initWithSection_collectionView_messageList_initialLoadCompletedPromise_layoutValuesHelper_state_headerType___block_invoke_2;
    v33[3] = &unk_278188C80;
    objc_copyWeak(&v35, &location);
    v28 = standardUserDefaults;
    v34 = v28;
    v29 = [v28 ef_observeKeyPath:@"LocalMailboxSearchOnly" options:1 autoCancelToken:1 usingBlock:v33];
    localMailboxSearchScopeUserDefaultsObserver = v21->_localMailboxSearchScopeUserDefaultsObserver;
    v21->_localMailboxSearchScopeUserDefaultsObserver = v29;

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);

    sectionCopy = v32;
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

- (MUIMessageListUnbundledSectionDataSource)initWithConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = MUIMessageListUnbundledSectionDataSource;
  v3 = [(MessageListSectionDataSource *)&v6 initWithConfiguration:configuration];
  v4 = v3;
  if (v3)
  {
    [(MUIMessageListUnbundledSectionDataSource *)v3 cellRegistration];
  }

  return v4;
}

- (id)createCellRegistrationForCellClass:(Class)class
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D752B0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__MUIMessageListUnbundledSectionDataSource_createCellRegistrationForCellClass___block_invoke;
  v7[3] = &unk_27818AA00;
  objc_copyWeak(&v8, &location);
  v5 = [v4 registrationWithCellClass:class configurationHandler:v7];
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

- (id)configuredCollectionViewCellForCollectionView:(id)view indexPath:(id)path itemID:(id)d cellIdentifier:(id)identifier
{
  dCopy = d;
  pathCopy = path;
  viewCopy = view;
  cellRegistration = [(MUIMessageListUnbundledSectionDataSource *)self cellRegistration];
  v13 = [viewCopy dequeueConfiguredReusableCellWithRegistration:cellRegistration forIndexPath:pathCopy item:dCopy];

  return v13;
}

- (void)_configureCell:(id)cell atIndexPath:(id)path itemID:(id)d
{
  v71 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  pathCopy = path;
  dCopy = d;
  v11 = CACurrentMediaTime();
  state = [(MessageListSectionDataSource *)self state];
  cellHelper = [cellCopy cellHelper];
  layoutValuesHelper = [(MessageListSectionDataSource *)self layoutValuesHelper];
  cellView = [cellHelper cellView];
  [cellView setLayoutValuesHelper:layoutValuesHelper];

  [cellHelper setCompact:{objc_msgSend(state, "isCompact")}];
  [cellHelper setExpanded:{-[MUIMessageListUnbundledSectionDataSource _isExpandedItemID:](self, dCopy)}];
  [cellHelper setHideFollowUp:{-[MUIMessageListUnbundledSectionDataSource shouldHideFollowUp](self, "shouldHideFollowUp")}];
  [cellHelper setLocalMailboxSearchScope:{-[MUIMessageListUnbundledSectionDataSource isLocalMailboxSearchScope](self, "isLocalMailboxSearchScope")}];
  state2 = [(MessageListSectionDataSource *)self state];
  LODWORD(cellView) = [state2 isSearch];

  if (cellView)
  {
    [cellHelper setSenderSpecificCell:0];
  }

  else
  {
    state3 = [(MessageListSectionDataSource *)self state];
    [cellHelper setSenderSpecificCell:{objc_msgSend(state3, "isSenderSpecificMailbox")}];
  }

  messageList = [(MessageListSectionDataSource *)self messageList];
  itemHelper = [(MessageListSectionDataSource *)self itemHelper];
  provider = [(MessageListSectionDataSource *)self provider];
  v43 = [provider snapshotForMessageListSectionDataSource:self];

  messageList2 = [(MessageListSectionDataSource *)self messageList];
  v20 = [itemHelper cellGroupingForItemID:dCopy snapshot:v43 isThreaded:{objc_msgSend(messageList2, "isThreaded")}];

  [cellCopy setBackgroundViewConfigurationGrouping:v20];
  if (([state useSplitViewStyling] & 1) == 0)
  {
    [cellCopy setNeedsFlushSeparator:{-[MUIMessageListUnbundledSectionDataSource _needsFlushSeparatorForItemID:snapshot:useSplitViewStyling:](self, dCopy, v43, objc_msgSend(state, "useSplitViewStyling"))}];
  }

  messageListItemFuture = [cellCopy messageListItemFuture];

  if (messageListItemFuture)
  {
    v22 = [(MessageListSectionDataSource *)self log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      messageListItemFuture2 = [cellCopy messageListItemFuture];
      *buf = 134218498;
      selfCopy = self;
      v67 = 2114;
      v68 = v24;
      v69 = 2112;
      v70 = messageListItemFuture2;
      _os_log_impl(&dword_214A5E000, v22, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> Canceling messageListItemFuture to prepare for re-use: %@", buf, 0x20u);
    }

    messageListItemFuture3 = [cellCopy messageListItemFuture];
    [messageListItemFuture3 cancel];

    [cellCopy setMessageListItemFuture:0];
  }

  delegate = [(MessageListSectionDataSource *)self delegate];
  objc_initWeak(buf, self);
  objc_initWeak(&location, cellCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__MUIMessageListUnbundledSectionDataSource__configureCell_atIndexPath_itemID___block_invoke;
  aBlock[3] = &unk_27818ACC0;
  objc_copyWeak(&v62, buf);
  objc_copyWeak(&v63, &location);
  v28 = state;
  v60 = v28;
  v29 = dCopy;
  v61 = v29;
  v30 = _Block_copy(aBlock);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __78__MUIMessageListUnbundledSectionDataSource__configureCell_atIndexPath_itemID___block_invoke_2;
  v50[3] = &unk_27818ACE8;
  objc_copyWeak(&v57, buf);
  objc_copyWeak(v58, &location);
  v40 = cellHelper;
  v51 = v40;
  v31 = v28;
  v52 = v31;
  v32 = pathCopy;
  v53 = v32;
  v33 = v29;
  v54 = v33;
  v34 = delegate;
  v55 = v34;
  v35 = v30;
  v56 = v35;
  v58[1] = *&v11;
  v36 = _Block_copy(v50);
  v37 = [messageList messageListItemForItemID:v33];
  resultIfAvailable = [v37 resultIfAvailable];

  if (resultIfAvailable)
  {
    v36[2](v36, resultIfAvailable, 1);
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
    v47 = messageList;
    v48 = v34;
    v39 = [(MessageListSectionDataSource *)self messageListItemForItemID:v45 indexPath:v46 receiver:cellCopy completion:v44];
  }

  objc_destroyWeak(v58);
  objc_destroyWeak(&v57);

  objc_destroyWeak(&v63);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (uint64_t)_needsFlushSeparatorForItemID:(void *)d snapshot:(char)snapshot useSplitViewStyling:
{
  v7 = a2;
  dCopy = d;
  v9 = 0;
  if (self && (snapshot & 1) == 0)
  {
    threadHelper = [self threadHelper];
    v9 = [threadHelper needsFlushSeparatorForItemID:v7 snapshot:dCopy];
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
  collectionView = [(MessageListSectionDataSource *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  return indexPathsForSelectedItems;
}

- (id)sectionForCollection:(id)collection
{
  section = [(MessageListSectionDataSource *)self section];
  _allowedSections = [(MUIMessageListUnbundledSectionDataSource *)self _allowedSections];
  if ([_allowedSections containsObject:section])
  {
    v6 = section;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)collection:(id)collection shouldHighlightSnippetHints:(id)hints
{
  v27 = *MEMORY[0x277D85DE8];
  hintsCopy = hints;
  if (hintsCopy)
  {
    v6 = [(MessageListSectionDataSource *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [hintsCopy count];
      v10 = MEMORY[0x277D07198];
      allValues = [hintsCopy allValues];
      firstObject = [allValues firstObject];
      v13 = [v10 partiallyRedactedDictionary:firstObject];
      v19 = 134218754;
      selfCopy = self;
      v21 = 2114;
      v22 = v8;
      v23 = 2048;
      v24 = v9;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> [Snippet Hints] [Committed Search] Received (%ld) items: %@", &v19, 0x2Au);
    }

    snippetHintsByGlobalMessageID = [(MUIMessageListUnbundledSectionDataSource *)self snippetHintsByGlobalMessageID];
    v15 = snippetHintsByGlobalMessageID;
    if (snippetHintsByGlobalMessageID)
    {
      v16 = snippetHintsByGlobalMessageID;
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;

    v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v17];
    [v18 addEntriesFromDictionary:hintsCopy];
    [(MUIMessageListUnbundledSectionDataSource *)self setSnippetHintsByGlobalMessageID:v18];
  }
}

- (uint64_t)_isExpandedItemID:(void *)d
{
  v3 = a2;
  if (d)
  {
    messageList = [d messageList];
    if ([messageList isThreaded])
    {
      v5 = [messageList anyExpandedThreadContainsItemID:v3];
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