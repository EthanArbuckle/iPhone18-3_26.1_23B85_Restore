@interface MessageListCollectionHelper
+ (OS_os_log)log;
+ (id)signpostLog;
- (MessageListCollectionHelper)initWithLog:(id)log updateQueueName:(id)name section:(id)section;
- (MessageListCollectionHelper)initWithLoggableClient:(id)client updateQueueName:(id)name section:(id)section;
- (id)_filterExistingItemIDFromItemIDs:(void *)ds validExistingItemID:;
- (id)changeItemIDs:(id)ds snapshot:(id)snapshot;
- (int64_t)addItemIDs:(id)ds after:(id)after snapshot:(id)snapshot section:(id)section validateOtherSections:(BOOL)sections;
- (int64_t)addItemIDs:(id)ds before:(id)before snapshot:(id)snapshot section:(id)section validateOtherSections:(BOOL)sections;
- (int64_t)moveItemID:(id)d after:(id)after snapshot:(id)snapshot section:(id)section;
- (int64_t)moveItemID:(id)d before:(id)before snapshot:(id)snapshot section:(id)section;
- (void)_insertItemIDs:(void *)ds beforeFirstItemOfSnapshot:(void *)snapshot section:(void *)section errorString:;
- (void)_removeItemsIDsFromOtherSections:(void *)sections currentSection:(void *)section snapshot:;
- (void)_reportChangedItemIDs:(void *)ds;
- (void)didScheduleReadInteractionForItemID:(id)d;
- (void)removePendingReadCancelablesForItemID:(id)d;
@end

@implementation MessageListCollectionHelper

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__MessageListCollectionHelper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v2 = log_log_2;

  return v2;
}

void __34__MessageListCollectionHelper_log__block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CCACA8] mailUISubsystem];
  v2 = v7;
  v3 = [v7 UTF8String];
  v4 = NSStringFromClass(*(a1 + 32));
  v5 = os_log_create(v3, [v4 UTF8String]);
  v6 = log_log_2;
  log_log_2 = v5;
}

+ (id)signpostLog
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MessageListCollectionHelper_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (signpostLog_onceToken != -1)
  {
    dispatch_once(&signpostLog_onceToken, block);
  }

  v1 = signpostLog_log;

  return v1;
}

void __42__MessageListCollectionHelper_signpostLog__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email.signposts", [v4 UTF8String]);
  v3 = signpostLog_log;
  signpostLog_log = v2;
}

- (MessageListCollectionHelper)initWithLoggableClient:(id)client updateQueueName:(id)name section:(id)section
{
  sectionCopy = section;
  nameCopy = name;
  v9 = [objc_opt_class() log];
  v10 = [(MessageListCollectionHelper *)self initWithLog:v9 updateQueueName:nameCopy section:sectionCopy];

  return v10;
}

- (MessageListCollectionHelper)initWithLog:(id)log updateQueueName:(id)name section:(id)section
{
  logCopy = log;
  nameCopy = name;
  sectionCopy = section;
  v26.receiver = self;
  v26.super_class = MessageListCollectionHelper;
  v12 = [(MessageListCollectionHelper *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientLog, log);
    if ([nameCopy length])
    {
      uTF8String = [nameCopy UTF8String];
      v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INTERACTIVE, 0);
      v17 = dispatch_queue_create(uTF8String, v16);
      updateQueue = v13->_updateQueue;
      v13->_updateQueue = v17;
    }

    v19 = [sectionCopy copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      section = v13->_section;
      v13->_section = v21;
    }

    else
    {
      section = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [section UUIDString];
      v24 = v13->_section;
      v13->_section = uUIDString;
    }
  }

  return v13;
}

- (int64_t)addItemIDs:(id)ds before:(id)before snapshot:(id)snapshot section:(id)section validateOtherSections:(BOOL)sections
{
  sectionsCopy = sections;
  v29 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  beforeCopy = before;
  snapshotCopy = snapshot;
  sectionCopy = section;
  v16 = [dsCopy count];
  if (sectionsCopy)
  {
    [(MessageListCollectionHelper *)self _removeItemsIDsFromOtherSections:dsCopy currentSection:sectionCopy snapshot:snapshotCopy];
    if (beforeCopy)
    {
      goto LABEL_3;
    }
  }

  else if (beforeCopy)
  {
LABEL_3:
    v17 = [snapshotCopy mui_validItemIDFromExistingItemID:beforeCopy updateReason:@"Adding items before existing item"];
    if (v17)
    {
      v22 = [(MessageListCollectionHelper *)self _filterExistingItemIDFromItemIDs:dsCopy validExistingItemID:v17];

      clientLog = [(MessageListCollectionHelper *)self clientLog];
      if (os_log_type_enabled(clientLog, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 134349314;
        v26 = [v22 count];
        v27 = 2114;
        v28 = v17;
        _os_log_impl(&dword_214A5E000, clientLog, OS_LOG_TYPE_DEFAULT, "Inserting %{public}ld identifiers before %{public}@", &v25, 0x16u);
      }

      clientLog2 = [(MessageListCollectionHelper *)self clientLog];
      if (os_log_type_enabled(clientLog2, OS_LOG_TYPE_DEBUG))
      {
        [MessageListCollectionHelper addItemIDs:before:snapshot:section:validateOtherSections:];
      }

      [snapshotCopy insertItemsWithIdentifiers:v22 beforeItemWithIdentifier:v17];
      dsCopy = v22;
    }

    else
    {
      clientLog3 = [(MessageListCollectionHelper *)self clientLog];
      if (os_log_type_enabled(clientLog3, OS_LOG_TYPE_ERROR))
      {
        [MessageListCollectionHelper addItemIDs:dsCopy before:? snapshot:? section:? validateOtherSections:?];
      }

      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_14;
  }

  clientLog4 = [(MessageListCollectionHelper *)self clientLog];
  if (os_log_type_enabled(clientLog4, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134349056;
    v26 = [dsCopy count];
    _os_log_impl(&dword_214A5E000, clientLog4, OS_LOG_TYPE_DEFAULT, "Appending %{public}ld identifiers", &v25, 0xCu);
  }

  clientLog5 = [(MessageListCollectionHelper *)self clientLog];
  if (os_log_type_enabled(clientLog5, OS_LOG_TYPE_DEBUG))
  {
    [MessageListCollectionHelper addItemIDs:before:snapshot:section:validateOtherSections:];
  }

  [snapshotCopy appendItemsWithIdentifiers:dsCopy intoSectionWithIdentifier:sectionCopy];
LABEL_14:

  return v16;
}

- (int64_t)addItemIDs:(id)ds after:(id)after snapshot:(id)snapshot section:(id)section validateOtherSections:(BOOL)sections
{
  sectionsCopy = sections;
  v27 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  afterCopy = after;
  snapshotCopy = snapshot;
  sectionCopy = section;
  v16 = [dsCopy count];
  if (sectionsCopy)
  {
    [(MessageListCollectionHelper *)self _removeItemsIDsFromOtherSections:dsCopy currentSection:sectionCopy snapshot:snapshotCopy];
    if (afterCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    [(MessageListCollectionHelper *)self _insertItemIDs:dsCopy beforeFirstItemOfSnapshot:snapshotCopy section:sectionCopy errorString:0];
    goto LABEL_8;
  }

  if (!afterCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  v17 = [snapshotCopy mui_validItemIDFromExistingItemID:afterCopy updateReason:@"Adding items after existing item"];
  if (v17)
  {
    v20 = [(MessageListCollectionHelper *)self _filterExistingItemIDFromItemIDs:dsCopy validExistingItemID:v17];

    clientLog = [(MessageListCollectionHelper *)self clientLog];
    if (os_log_type_enabled(clientLog, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134349314;
      v24 = [v20 count];
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&dword_214A5E000, clientLog, OS_LOG_TYPE_DEFAULT, "Inserting %{public}ld identifiers after %{public}@", &v23, 0x16u);
    }

    clientLog2 = [(MessageListCollectionHelper *)self clientLog];
    if (os_log_type_enabled(clientLog2, OS_LOG_TYPE_DEBUG))
    {
      [MessageListCollectionHelper addItemIDs:before:snapshot:section:validateOtherSections:];
    }

    [snapshotCopy insertItemsWithIdentifiers:v20 afterItemWithIdentifier:v17];
    dsCopy = v20;
  }

  else
  {
    clientLog3 = [(MessageListCollectionHelper *)self clientLog];
    if (os_log_type_enabled(clientLog3, OS_LOG_TYPE_ERROR))
    {
      [MessageListCollectionHelper addItemIDs:dsCopy after:? snapshot:? section:? validateOtherSections:?];
    }

    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_8:
  return v16;
}

- (int64_t)moveItemID:(id)d before:(id)before snapshot:(id)snapshot section:(id)section
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  snapshotCopy = snapshot;
  sectionCopy = section;
  beforeCopy = before;
  v14 = [snapshotCopy mui_validItemIDFromExistingItemID:dCopy updateReason:@"Moving item before - itemID"];
  v15 = [snapshotCopy mui_validItemIDFromExistingItemID:beforeCopy updateReason:@"Moving item before - existingItemID"];

  if (!v14)
  {
    goto LABEL_8;
  }

  if (![v14 isEqual:v15])
  {
    if (v15)
    {
      clientLog = [(MessageListCollectionHelper *)self clientLog];
      if (os_log_type_enabled(clientLog, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__b[0]) = 138543618;
        *(__b + 4) = v14;
        WORD2(__b[1]) = 2114;
        *(&__b[1] + 6) = v15;
        _os_log_impl(&dword_214A5E000, clientLog, OS_LOG_TYPE_DEFAULT, "Moving identifier %{public}@ before %{public}@", __b, 0x16u);
      }

      [snapshotCopy moveItemWithIdentifier:v14 beforeItemWithIdentifier:v15];
      v17 = 1;
      goto LABEL_26;
    }

    v19 = [snapshotCopy itemIdentifiersInSectionWithIdentifier:sectionCopy];
    lastObject = [v19 lastObject];

    if (lastObject)
    {
      v21 = [lastObject isEqual:v14];
      clientLog2 = [(MessageListCollectionHelper *)self clientLog];
      v23 = os_log_type_enabled(clientLog2, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (v23)
        {
          LODWORD(__b[0]) = 138543618;
          *(__b + 4) = v14;
          WORD2(__b[1]) = 2114;
          *(&__b[1] + 6) = sectionCopy;
          _os_log_impl(&dword_214A5E000, clientLog2, OS_LOG_TYPE_DEFAULT, "Identifier %{public}@ is already last item in section:%{public}@", __b, 0x16u);
        }

        v17 = 0;
        goto LABEL_25;
      }

      if (v23)
      {
        LODWORD(__b[0]) = 138543874;
        *(__b + 4) = v14;
        WORD2(__b[1]) = 2114;
        *(&__b[1] + 6) = lastObject;
        HIWORD(__b[2]) = 2114;
        __b[3] = sectionCopy;
        _os_log_impl(&dword_214A5E000, clientLog2, OS_LOG_TYPE_DEFAULT, "Moving identifier %{public}@ after last item %{public}@ in section:%{public}@", __b, 0x20u);
      }

      [snapshotCopy moveItemWithIdentifier:v14 afterItemWithIdentifier:lastObject];
    }

    else
    {
      v30 = v14;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      [snapshotCopy deleteItemsWithIdentifiers:v24];

      v29 = v14;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [snapshotCopy appendItemsWithIdentifiers:v25 intoSectionWithIdentifier:sectionCopy];

      clientLog3 = [(MessageListCollectionHelper *)self clientLog];
      if (os_log_type_enabled(clientLog3, OS_LOG_TYPE_INFO))
      {
        LODWORD(__b[0]) = 138543874;
        *(__b + 4) = v14;
        WORD2(__b[1]) = 2114;
        *(&__b[1] + 6) = sectionCopy;
        HIWORD(__b[2]) = 2114;
        __b[3] = snapshotCopy;
        _os_log_impl(&dword_214A5E000, clientLog3, OS_LOG_TYPE_INFO, "Moving identifier %{public}@ as first item into section:%{public}@ snapshot:%{public}@", __b, 0x20u);
      }
    }

    v17 = 1;
LABEL_25:

    goto LABEL_26;
  }

  clientLog4 = [(MessageListCollectionHelper *)self clientLog];
  if (os_log_type_enabled(clientLog4, OS_LOG_TYPE_ERROR))
  {
    [MessageListCollectionHelper moveItemID:dCopy before:snapshotCopy snapshot:? section:?];
  }

  memset(__b, 170, sizeof(__b));
  LODWORD(__b[4]) = 0;
  *v32 = 0xE00000001;
  v33 = 1;
  v34 = getpid();
  v28 = 648;
  v17 = 0;
  if (!sysctl(v32, 4u, __b, &v28, 0, 0) && (__b[4] & 0x800) != 0)
  {
    __debugbreak();
LABEL_8:
    v17 = 0;
  }

LABEL_26:

  return v17;
}

- (int64_t)moveItemID:(id)d after:(id)after snapshot:(id)snapshot section:(id)section
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  snapshotCopy = snapshot;
  sectionCopy = section;
  afterCopy = after;
  v14 = [snapshotCopy mui_validItemIDFromExistingItemID:dCopy updateReason:@"Moving item after - itemID"];
  v15 = [snapshotCopy mui_validItemIDFromExistingItemID:afterCopy updateReason:@"Moving item after - existingItemID"];

  if (!v14)
  {
    goto LABEL_8;
  }

  if (![v14 isEqual:v15])
  {
    if (v15)
    {
      clientLog = [(MessageListCollectionHelper *)self clientLog];
      if (os_log_type_enabled(clientLog, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__b[0]) = 138543618;
        *(__b + 4) = v14;
        WORD2(__b[1]) = 2114;
        *(&__b[1] + 6) = v15;
        _os_log_impl(&dword_214A5E000, clientLog, OS_LOG_TYPE_DEFAULT, "Moving identifier %{public}@ after %{public}@", __b, 0x16u);
      }

      [snapshotCopy moveItemWithIdentifier:v14 afterItemWithIdentifier:v15];
      v17 = 1;
      goto LABEL_26;
    }

    v19 = [snapshotCopy itemIdentifiersInSectionWithIdentifier:sectionCopy];
    firstObject = [v19 firstObject];

    if (firstObject)
    {
      v21 = [firstObject isEqual:v14];
      clientLog2 = [(MessageListCollectionHelper *)self clientLog];
      v23 = os_log_type_enabled(clientLog2, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (v23)
        {
          LODWORD(__b[0]) = 138543618;
          *(__b + 4) = v14;
          WORD2(__b[1]) = 2114;
          *(&__b[1] + 6) = sectionCopy;
          _os_log_impl(&dword_214A5E000, clientLog2, OS_LOG_TYPE_DEFAULT, "Identifier %{public}@ is already first item in section:%{public}@", __b, 0x16u);
        }

        v17 = 0;
        goto LABEL_25;
      }

      if (v23)
      {
        LODWORD(__b[0]) = 138543874;
        *(__b + 4) = v14;
        WORD2(__b[1]) = 2114;
        *(&__b[1] + 6) = firstObject;
        HIWORD(__b[2]) = 2114;
        __b[3] = sectionCopy;
        _os_log_impl(&dword_214A5E000, clientLog2, OS_LOG_TYPE_DEFAULT, "Moving identifier %{public}@ before first item %{public}@ in section:%{public}@", __b, 0x20u);
      }

      [snapshotCopy moveItemWithIdentifier:v14 beforeItemWithIdentifier:firstObject];
    }

    else
    {
      v30 = v14;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      [snapshotCopy deleteItemsWithIdentifiers:v24];

      v29 = v14;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [snapshotCopy appendItemsWithIdentifiers:v25 intoSectionWithIdentifier:sectionCopy];

      clientLog3 = [(MessageListCollectionHelper *)self clientLog];
      if (os_log_type_enabled(clientLog3, OS_LOG_TYPE_INFO))
      {
        LODWORD(__b[0]) = 138543874;
        *(__b + 4) = v14;
        WORD2(__b[1]) = 2114;
        *(&__b[1] + 6) = sectionCopy;
        HIWORD(__b[2]) = 2114;
        __b[3] = snapshotCopy;
        _os_log_impl(&dword_214A5E000, clientLog3, OS_LOG_TYPE_INFO, "Moving identifier %{public}@ as first item into section:%{public}@ snapshot:%{public}@", __b, 0x20u);
      }
    }

    v17 = 1;
LABEL_25:

    goto LABEL_26;
  }

  clientLog4 = [(MessageListCollectionHelper *)self clientLog];
  if (os_log_type_enabled(clientLog4, OS_LOG_TYPE_ERROR))
  {
    [MessageListCollectionHelper moveItemID:dCopy before:snapshotCopy snapshot:? section:?];
  }

  memset(__b, 170, sizeof(__b));
  LODWORD(__b[4]) = 0;
  *v32 = 0xE00000001;
  v33 = 1;
  v34 = getpid();
  v28 = 648;
  v17 = 0;
  if (!sysctl(v32, 4u, __b, &v28, 0, 0) && (__b[4] & 0x800) != 0)
  {
    __debugbreak();
LABEL_8:
    v17 = 0;
  }

LABEL_26:

  return v17;
}

- (id)changeItemIDs:(id)ds snapshot:(id)snapshot
{
  v13 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  snapshotCopy = snapshot;
  clientLog = [(MessageListCollectionHelper *)self clientLog];
  if (os_log_type_enabled(clientLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = dsCopy;
    _os_log_impl(&dword_214A5E000, clientLog, OS_LOG_TYPE_DEFAULT, "changedItemIDs: %@", &v11, 0xCu);
  }

  [(MessageListCollectionHelper *)self _reportChangedItemIDs:dsCopy];
  v9 = [snapshotCopy mui_validItemIDsFromExistingItemIDs:dsCopy updateReason:@"Changing itemIDs"];

  return v9;
}

- (void)didScheduleReadInteractionForItemID:(id)d
{
  dCopy = d;
  v5 = +[MessageListCollectionHelper signpostLog];
  v6 = os_signpost_id_make_with_pointer(v5, dCopy);

  v7 = +[MessageListCollectionHelper signpostLog];
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_214A5E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "EMMessageListItemReadUnread", "", buf, 2u);
  }

  globalAsyncScheduler = [MEMORY[0x277D071B8] globalAsyncScheduler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__MessageListCollectionHelper_didScheduleReadInteractionForItemID___block_invoke;
  v16[3] = &unk_278188D70;
  v18 = v6;
  v16[4] = self;
  v10 = dCopy;
  v17 = v10;
  v11 = [globalAsyncScheduler afterDelay:v16 performBlock:2.0];

  pendingReadTimeoutCancelables = [(MessageListCollectionHelper *)self pendingReadTimeoutCancelables];
  v13 = [pendingReadTimeoutCancelables objectForKeyedSubscript:v10];

  if (!v13)
  {
    v13 = [MEMORY[0x277CBEB98] set];
  }

  v14 = [v13 setByAddingObject:v11];

  os_unfair_lock_lock(&self->pendingReadCancelableLock);
  pendingReadTimeoutCancelables2 = [(MessageListCollectionHelper *)self pendingReadTimeoutCancelables];
  [pendingReadTimeoutCancelables2 setObject:v14 forKeyedSubscript:v10];

  os_unfair_lock_unlock(&self->pendingReadCancelableLock);
}

uint64_t __67__MessageListCollectionHelper_didScheduleReadInteractionForItemID___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = +[MessageListCollectionHelper signpostLog];
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v6[0] = 67240192;
    v6[1] = 1;
    _os_signpost_emit_with_name_impl(&dword_214A5E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "EMMessageListItemReadUnread", "TimedOut=%{public,signpost.telemetry:number1}u enableTelemetry=YES ", v6, 8u);
  }

  return [*(a1 + 32) removePendingReadCancelablesForItemID:*(a1 + 40)];
}

- (void)removePendingReadCancelablesForItemID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->pendingReadCancelableLock);
  pendingReadTimeoutCancelables = [(MessageListCollectionHelper *)self pendingReadTimeoutCancelables];
  v5 = [pendingReadTimeoutCancelables objectForKeyedSubscript:dCopy];

  [v5 makeObjectsPerformSelector:sel_cancel];
  pendingReadTimeoutCancelables2 = [(MessageListCollectionHelper *)self pendingReadTimeoutCancelables];
  [pendingReadTimeoutCancelables2 removeObjectForKey:dCopy];

  os_unfair_lock_unlock(&self->pendingReadCancelableLock);
}

- (void)_removeItemsIDsFromOtherSections:(void *)sections currentSection:(void *)section snapshot:
{
  v40 = *MEMORY[0x277D85DE8];
  v26 = a2;
  sectionsCopy = sections;
  sectionCopy = section;
  v9 = sectionCopy;
  selfCopy = self;
  if (self)
  {
    mui_validSectionIdentifiers = [sectionCopy mui_validSectionIdentifiers];
    if ([mui_validSectionIdentifiers count] >= 2 && objc_msgSend(v26, "count"))
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v24 = mui_validSectionIdentifiers;
      v11 = mui_validSectionIdentifiers;
      v12 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v29 + 1) + 8 * i);
            if (([v16 isEqual:sectionsCopy] & 1) == 0)
            {
              v17 = MEMORY[0x277CBEB98];
              v18 = [v9 itemIdentifiersInSectionWithIdentifier:v16];
              v19 = [v17 setWithArray:v18];

              v27[0] = MEMORY[0x277D85DD0];
              v27[1] = 3221225472;
              v27[2] = __88__MessageListCollectionHelper__removeItemsIDsFromOtherSections_currentSection_snapshot___block_invoke;
              v27[3] = &unk_278188D48;
              v20 = v19;
              v28 = v20;
              v21 = [v26 ef_filter:v27];
              if ([v21 count])
              {
                clientLog = [selfCopy clientLog];
                if (os_log_type_enabled(clientLog, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = [v21 count];
                  *buf = 134218498;
                  v34 = v23;
                  v35 = 2048;
                  v36 = v16;
                  v37 = 2114;
                  v38 = v21;
                  _os_log_impl(&dword_214A5E000, clientLog, OS_LOG_TYPE_DEFAULT, "Remove %ld item ids from other section (%p): %{public}@", buf, 0x20u);
                }

                [v9 deleteItemsWithIdentifiers:v21];
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v13);
      }

      mui_validSectionIdentifiers = v24;
    }
  }
}

- (id)_filterExistingItemIDFromItemIDs:(void *)ds validExistingItemID:
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  dsCopy = ds;
  if (self)
  {
    if ([v5 indexOfObject:dsCopy] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
      [v7 removeObject:dsCopy];
      clientLog = [self clientLog];
      if (os_log_type_enabled(clientLog, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__b[0]) = 134349570;
        *(__b + 4) = [v5 count];
        WORD2(__b[1]) = 2112;
        *(&__b[1] + 6) = v5;
        HIWORD(__b[2]) = 2114;
        __b[3] = dsCopy;
        _os_log_error_impl(&dword_214A5E000, clientLog, OS_LOG_TYPE_ERROR, "Inserting existing identifiers (%{public}ld) %@ before or after %{public}@", __b, 0x20u);
      }

      memset(__b, 170, sizeof(__b));
      LODWORD(__b[4]) = 0;
      *v12 = 0xE00000001;
      v13 = 1;
      v14 = getpid();
      v10 = 648;
      if (!sysctl(v12, 4u, __b, &v10, 0, 0) && (__b[4] & 0x800) != 0)
      {
        __debugbreak();
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_insertItemIDs:(void *)ds beforeFirstItemOfSnapshot:(void *)snapshot section:(void *)section errorString:
{
  v9 = a2;
  dsCopy = ds;
  snapshotCopy = snapshot;
  sectionCopy = section;
  if (self)
  {
    v13 = [dsCopy itemIdentifiersInSectionWithIdentifier:snapshotCopy];
    firstObject = [v13 firstObject];

    clientLog = [self clientLog];
    v16 = clientLog;
    if (firstObject)
    {
      if (sectionCopy)
      {
        if (os_log_type_enabled(clientLog, OS_LOG_TYPE_ERROR))
        {
          [v9 count];
          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_5();
          _os_log_error_impl(v17, v18, OS_LOG_TYPE_ERROR, v19, v20, 0x2Au);
        }
      }

      else if (os_log_type_enabled(clientLog, OS_LOG_TYPE_DEFAULT))
      {
        [v9 count];
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_5();
        _os_log_impl(v25, v26, OS_LOG_TYPE_DEFAULT, v27, v28, 0x20u);
      }

      [dsCopy insertItemsWithIdentifiers:v9 beforeItemWithIdentifier:firstObject];
    }

    else
    {
      if (sectionCopy)
      {
        if (os_log_type_enabled(clientLog, OS_LOG_TYPE_ERROR))
        {
          [v9 count];
          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_5();
          _os_log_error_impl(v21, v22, OS_LOG_TYPE_ERROR, v23, v24, 0x20u);
        }
      }

      else if (os_log_type_enabled(clientLog, OS_LOG_TYPE_DEFAULT))
      {
        [v9 count];
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_5();
        _os_log_impl(v29, v30, OS_LOG_TYPE_DEFAULT, v31, v32, 0x16u);
      }

      [dsCopy appendItemsWithIdentifiers:v9 intoSectionWithIdentifier:snapshotCopy];
    }
  }
}

- (void)_reportChangedItemIDs:(void *)ds
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (ds)
  {
    v6 = OUTLINED_FUNCTION_6(v3, v4);
    if (v6)
    {
      v8 = v6;
      v9 = MEMORY[0];
      *&v7 = 67240192;
      v20 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(8 * i);
          pendingReadTimeoutCancelables = [ds pendingReadTimeoutCancelables];
          v13 = [pendingReadTimeoutCancelables objectForKeyedSubscript:v11];

          if (v13)
          {
            [ds removePendingReadCancelablesForItemID:v11];
            v16 = +[MessageListCollectionHelper signpostLog];
            v17 = os_signpost_id_make_with_pointer(v16, v11);

            v18 = +[MessageListCollectionHelper signpostLog];
            v19 = v18;
            if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
            {
              *buf = v20;
              v22 = 0;
              _os_signpost_emit_with_name_impl(&dword_214A5E000, v19, OS_SIGNPOST_INTERVAL_END, v17, "EMMessageListItemReadUnread", "TimedOut=%{public,signpost.telemetry:number1}u enableTelemetry=YES ", buf, 8u);
            }
          }
        }

        v8 = OUTLINED_FUNCTION_6(v14, v15);
      }

      while (v8);
    }
  }
}

- (void)addItemIDs:(void *)a1 before:snapshot:section:validateOtherSections:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_214A5E000, v1, v2, "Failed to insert %{public}ld identifiers before %{public}@. Could not find validExistingItemId", v3, v4, v5, v6, v7);
}

- (void)addItemIDs:(void *)a1 after:snapshot:section:validateOtherSections:.cold.2(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_214A5E000, v1, v2, "Failed to insert %{public}ld identifiers after %{public}@. Could not find validExistingItemId", v3, v4, v5, v6, v7);
}

- (void)moveItemID:(uint64_t)a1 before:(void *)a2 snapshot:section:.cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 itemIdentifiers];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1(&dword_214A5E000, v3, v4, "Moving existing identifiers %{public}@ before or after snapshot %{public}@", v5, v6, v7, v8, v9);
}

@end