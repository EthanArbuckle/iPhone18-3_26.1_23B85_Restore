@interface IAMStorageCoordinator
+ (id)_propertyNameForGlobalPresentationPolicyGroupLastDisplayTime:(int)time;
- (IAMICStorageProvider)iTunesCloudStorageProvider;
- (IAMStorageCoordinator)initWithMessageEntryProvider:(id)provider messageMetadataStorage:(id)storage propertyStorage:(id)propertyStorage messageBundleIdentifiers:(id)identifiers;
- (IAMStorageCoordinatorDelegate)delegate;
- (void)_fetchMessageEntries:(id)entries;
- (void)_fetchMessagesMetadata:(id)metadata;
- (void)downloadResourcesForMessageEntry:(id)entry completion:(id)completion;
- (void)fetchGlobalPresentationPolicyGroupDisplayTimes:(id)times;
- (void)fetchMessagesEntriesAndMetadata:(id)metadata;
- (void)messageEntriesDidChange:(id)change;
- (void)removeApplicationBadgeFromMessageEntry:(id)entry completion:(id)completion;
- (void)removeMessageEntry:(id)entry completion:(id)completion;
- (void)reportEventForMessageIdentifier:(id)identifier withParams:(id)params completion:(id)completion;
- (void)updateMetadata:(id)metadata forMessageEntry:(id)entry completion:(id)completion;
@end

@implementation IAMStorageCoordinator

- (IAMICStorageProvider)iTunesCloudStorageProvider
{
  iTunesCloudStorageProvider = self->_iTunesCloudStorageProvider;
  if (!iTunesCloudStorageProvider)
  {
    v4 = objc_alloc_init(IAMICStorageProvider);
    v5 = self->_iTunesCloudStorageProvider;
    self->_iTunesCloudStorageProvider = v4;

    iTunesCloudStorageProvider = self->_iTunesCloudStorageProvider;
  }

  return iTunesCloudStorageProvider;
}

- (IAMStorageCoordinator)initWithMessageEntryProvider:(id)provider messageMetadataStorage:(id)storage propertyStorage:(id)propertyStorage messageBundleIdentifiers:(id)identifiers
{
  providerCopy = provider;
  storageCopy = storage;
  propertyStorageCopy = propertyStorage;
  identifiersCopy = identifiers;
  v25.receiver = self;
  v25.super_class = IAMStorageCoordinator;
  v14 = [(IAMStorageCoordinator *)&v25 init];
  v15 = v14;
  if (v14)
  {
    if (providerCopy)
    {
      p_messageEntryProvider = &v14->_messageEntryProvider;
      objc_storeWeak(&v14->_messageEntryProvider, providerCopy);
    }

    else
    {
      iTunesCloudStorageProvider = [(IAMStorageCoordinator *)v14 iTunesCloudStorageProvider];
      messageEntryProvider = [iTunesCloudStorageProvider messageEntryProvider];
      p_messageEntryProvider = &v15->_messageEntryProvider;
      objc_storeWeak(&v15->_messageEntryProvider, messageEntryProvider);
    }

    WeakRetained = objc_loadWeakRetained(p_messageEntryProvider);
    [WeakRetained setDelegate:v15];

    if (storageCopy)
    {
      objc_storeWeak(&v15->_messageMetadataStorage, storageCopy);
      if (propertyStorageCopy)
      {
LABEL_7:
        objc_storeWeak(&v15->_propertyStorage, propertyStorageCopy);
LABEL_10:
        objc_storeStrong(&v15->_messageBundleIdentifiers, identifiers);
        goto LABEL_11;
      }
    }

    else
    {
      iTunesCloudStorageProvider2 = [(IAMStorageCoordinator *)v15 iTunesCloudStorageProvider];
      messageMetadataStorage = [iTunesCloudStorageProvider2 messageMetadataStorage];
      objc_storeWeak(&v15->_messageMetadataStorage, messageMetadataStorage);

      if (propertyStorageCopy)
      {
        goto LABEL_7;
      }
    }

    iTunesCloudStorageProvider3 = [(IAMStorageCoordinator *)v15 iTunesCloudStorageProvider];
    propertyStorage = [iTunesCloudStorageProvider3 propertyStorage];
    objc_storeWeak(&v15->_propertyStorage, propertyStorage);

    goto LABEL_10;
  }

LABEL_11:

  return v15;
}

- (void)fetchMessagesEntriesAndMetadata:(id)metadata
{
  metadataCopy = metadata;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__IAMStorageCoordinator_fetchMessagesEntriesAndMetadata___block_invoke;
  v6[3] = &unk_2797A74C8;
  v5 = metadataCopy;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [(IAMStorageCoordinator *)self _fetchMessageEntries:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __57__IAMStorageCoordinator_fetchMessagesEntriesAndMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
LABEL_9:
    v7();
    goto LABEL_10;
  }

  if (!v5 || ![v5 count])
  {
    v7 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__IAMStorageCoordinator_fetchMessagesEntriesAndMetadata___block_invoke_2;
    v9[3] = &unk_2797A74A0;
    v11 = *(a1 + 32);
    v10 = v5;
    [WeakRetained _fetchMessagesMetadata:v9];
  }

LABEL_10:
}

uint64_t __57__IAMStorageCoordinator_fetchMessagesEntriesAndMetadata___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (a3)
  {
    a2 = 0;
  }

  return (*(v6 + 16))(v6, *(a1 + 32), a2);
}

- (void)downloadResourcesForMessageEntry:(id)entry completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  completionCopy = completion;
  v8 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    applicationMessage = [entryCopy applicationMessage];
    identifier = [applicationMessage identifier];
    *buf = 138543362;
    v22 = identifier;
    _os_log_impl(&dword_254AF4000, v8, OS_LOG_TYPE_DEFAULT, "Asking storage to download resources for message with identifier = %{public}@", buf, 0xCu);
  }

  applicationMessage2 = [entryCopy applicationMessage];
  identifier2 = [applicationMessage2 identifier];

  WeakRetained = objc_loadWeakRetained(&self->_messageEntryProvider);
  bundleIdentifier = [entryCopy bundleIdentifier];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__IAMStorageCoordinator_downloadResourcesForMessageEntry_completion___block_invoke;
  v18[3] = &unk_2797A74F0;
  v19 = identifier2;
  v20 = completionCopy;
  v15 = completionCopy;
  v16 = identifier2;
  [WeakRetained downloadResourcesForMessageWithIdentifier:v16 bundleIdentifier:bundleIdentifier completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __69__IAMStorageCoordinator_downloadResourcesForMessageEntry_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v10 = 138543618;
      v11 = v5;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_254AF4000, v4, OS_LOG_TYPE_ERROR, "Error downloading message resources for message with identifier = %{public}@ :\n %{public}@", &v10, 0x16u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_8:
      v7();
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_8;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeMessageEntry:(id)entry completion:(id)completion
{
  completionCopy = completion;
  entryCopy = entry;
  applicationMessage = [entryCopy applicationMessage];
  identifier = [applicationMessage identifier];

  WeakRetained = objc_loadWeakRetained(&self->_messageEntryProvider);
  bundleIdentifier = [entryCopy bundleIdentifier];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__IAMStorageCoordinator_removeMessageEntry_completion___block_invoke;
  v14[3] = &unk_2797A74F0;
  v15 = identifier;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = identifier;
  [WeakRetained removeMessageEntryWithIdentifier:v13 forBundleIdentifier:bundleIdentifier completion:v14];
}

void __55__IAMStorageCoordinator_removeMessageEntry_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_254AF4000, v4, OS_LOG_TYPE_ERROR, "Error while removing message locally with identifier = %{public}@", &v10, 0xCu);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_8:
      v7();
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_8;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reportEventForMessageIdentifier:(id)identifier withParams:(id)params completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_messageEntryProvider);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__IAMStorageCoordinator_reportEventForMessageIdentifier_withParams_completion___block_invoke;
  v12[3] = &unk_2797A74F0;
  v13 = identifierCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  [WeakRetained reportEventForMessageIdentifier:v11 withParams:MEMORY[0x277CBEC10] completion:v12];
}

void __79__IAMStorageCoordinator_reportEventForMessageIdentifier_withParams_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_254AF4000, v4, OS_LOG_TYPE_ERROR, "Error while removing message globally with identifier = %{public}@", &v10, 0xCu);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_8:
      v7();
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_8;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateMetadata:(id)metadata forMessageEntry:(id)entry completion:(id)completion
{
  completionCopy = completion;
  entryCopy = entry;
  metadataCopy = metadata;
  applicationMessage = [entryCopy applicationMessage];
  identifier = [applicationMessage identifier];

  WeakRetained = objc_loadWeakRetained(&self->_messageMetadataStorage);
  bundleIdentifier = [entryCopy bundleIdentifier];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__IAMStorageCoordinator_updateMetadata_forMessageEntry_completion___block_invoke;
  v17[3] = &unk_2797A74F0;
  v18 = identifier;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = identifier;
  [WeakRetained updateMetadata:metadataCopy messageIdentifier:v16 bundleIdentifier:bundleIdentifier completion:v17];
}

void __67__IAMStorageCoordinator_updateMetadata_forMessageEntry_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v10 = 138543618;
      v11 = v5;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_254AF4000, v4, OS_LOG_TYPE_ERROR, "Error updating metadata for message entry with identifier = %{public}@ :\n %{public}@", &v10, 0x16u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_8:
      v7();
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_8;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchGlobalPresentationPolicyGroupDisplayTimes:(id)times
{
  timesCopy = times;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__1;
  v29[4] = __Block_byref_object_dispose__1;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2810000000;
  v27[3] = "";
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__1;
  v23[4] = __Block_byref_object_dispose__1;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__1;
  v19[4] = __Block_byref_object_dispose__1;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__3;
  v17[4] = __Block_byref_object_dispose__4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__IAMStorageCoordinator_fetchGlobalPresentationPolicyGroupDisplayTimes___block_invoke;
  v10[3] = &unk_2797A72A0;
  v12 = v29;
  v5 = timesCopy;
  v11 = v5;
  v13 = v25;
  v14 = v21;
  v15 = v23;
  v16 = v19;
  v18 = MEMORY[0x259C23D00](v10);
  v6 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_DEFAULT, "Fetching last display times for global presentation policy groups.", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__IAMStorageCoordinator_fetchGlobalPresentationPolicyGroupDisplayTimes___block_invoke_5;
  v8[3] = &unk_2797A7518;
  v8[4] = v27;
  v8[5] = v17;
  v8[6] = v23;
  v8[7] = v25;
  [(IAMStorageCoordinator *)self _fetchLastDisplayTimeForGlobalPresentationPolicyGroup:0 completion:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__IAMStorageCoordinator_fetchGlobalPresentationPolicyGroupDisplayTimes___block_invoke_2;
  v7[3] = &unk_2797A7518;
  v7[4] = v27;
  v7[5] = v17;
  v7[6] = v19;
  v7[7] = v21;
  [(IAMStorageCoordinator *)self _fetchLastDisplayTimeForGlobalPresentationPolicyGroup:1 completion:v7];
  _Block_object_dispose(v17, 8);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
}

uint64_t __72__IAMStorageCoordinator_fetchGlobalPresentationPolicyGroupDisplayTimes___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  v5 = *(a1[5] + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    if (v4)
    {
      objc_storeStrong(v6, a2);
      v8 = *(a1[4] + 16);
LABEL_4:
      v6 = v8();
      goto LABEL_8;
    }

    if (*(*(a1[6] + 8) + 24) == 1 && *(*(a1[7] + 8) + 24) == 1)
    {
      v9 = *(*(a1[8] + 8) + 40);
      v10 = *(*(a1[9] + 8) + 40);
      v8 = *(a1[4] + 16);
      goto LABEL_4;
    }
  }

LABEL_8:

  return MEMORY[0x2821F97C8](v6);
}

void __72__IAMStorageCoordinator_fetchGlobalPresentationPolicyGroupDisplayTimes___block_invoke_5(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1[4] + 8) + 32));
  if (!v6)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[7] + 8) + 24) = 1;
  }

  (*(*(*(a1[5] + 8) + 40) + 16))();
  os_unfair_lock_unlock((*(a1[4] + 8) + 32));
}

void __72__IAMStorageCoordinator_fetchGlobalPresentationPolicyGroupDisplayTimes___block_invoke_2(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1[4] + 8) + 32));
  if (!v6)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[7] + 8) + 24) = 1;
  }

  (*(*(*(a1[5] + 8) + 40) + 16))();
  os_unfair_lock_unlock((*(a1[4] + 8) + 32));
}

- (void)removeApplicationBadgeFromMessageEntry:(id)entry completion:(id)completion
{
  completionCopy = completion;
  entryCopy = entry;
  WeakRetained = objc_loadWeakRetained(&self->_messageEntryProvider);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__IAMStorageCoordinator_removeApplicationBadgeFromMessageEntry_completion___block_invoke;
  v12[3] = &unk_2797A7540;
  v13 = completionCopy;
  v11 = completionCopy;
  [WeakRetained removeApplicationBadgeForBundleIdentifier:bundleIdentifier fromPresentedMessageEntry:entryCopy completion:v12];
}

- (void)messageEntriesDidChange:(id)change
{
  delegate = [(IAMStorageCoordinator *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(IAMStorageCoordinator *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(IAMStorageCoordinator *)self delegate];
      [delegate3 storageCoordinatorMessageEntriesChanged:self];
    }
  }
}

- (void)_fetchMessageEntries:(id)entries
{
  v14 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v5 = self->_messageBundleIdentifiers;
  v6 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_DEFAULT, "Fetching message entries with bundle identifiers = %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageEntryProvider);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__IAMStorageCoordinator__fetchMessageEntries___block_invoke;
  v10[3] = &unk_2797A7568;
  v11 = entriesCopy;
  v8 = entriesCopy;
  [WeakRetained messageEntriesForBundleIdentifiers:v5 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __46__IAMStorageCoordinator__fetchMessageEntries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = IAMLogCategoryDefault();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_254AF4000, v8, OS_LOG_TYPE_ERROR, "Error fetching message entries. %{public}@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = [v5 count];
    _os_log_impl(&dword_254AF4000, v8, OS_LOG_TYPE_DEFAULT, "Received %lu message entries from storage.", &v10, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_fetchMessagesMetadata:(id)metadata
{
  v14 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v5 = self->_messageBundleIdentifiers;
  v6 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_DEFAULT, "Fetching metadata for message with bundle identifiers = %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageMetadataStorage);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__IAMStorageCoordinator__fetchMessagesMetadata___block_invoke;
  v10[3] = &unk_2797A7590;
  v11 = metadataCopy;
  v8 = metadataCopy;
  [WeakRetained metadataForBundleIdentifiers:v5 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __48__IAMStorageCoordinator__fetchMessagesMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = IAMLogCategoryDefault();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_254AF4000, v8, OS_LOG_TYPE_ERROR, "Error fetching metadata for all messages. %{public}@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = [v5 count];
    _os_log_impl(&dword_254AF4000, v8, OS_LOG_TYPE_DEFAULT, "Received %lu metadata entries for messages from storage.", &v10, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

void __90__IAMStorageCoordinator__fetchLastDisplayTimeForGlobalPresentationPolicyGroup_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_254AF4000, v7, OS_LOG_TYPE_ERROR, "Error fetching last display time for global presentation policy group = %{public}@ :\n %{public}@", &v11, 0x16u);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);
  }

  v9();

  v10 = *MEMORY[0x277D85DE8];
}

void __81__IAMStorageCoordinator__updateLastDisplayTime_forGlobalPresentationPolicyGroup___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_254AF4000, v4, OS_LOG_TYPE_ERROR, "Error storing last display time for global presentation policy group = %{public}@ :\n %{public}@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)_propertyNameForGlobalPresentationPolicyGroupLastDisplayTime:(int)time
{
  if (time == 1)
  {
    return @"LastDisplayTime_GlobalPresentationPolicyGroup_Restricted";
  }

  else
  {
    return @"LastDisplayTime_GlobalPresentationPolicyGroup_Normal";
  }
}

- (IAMStorageCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end