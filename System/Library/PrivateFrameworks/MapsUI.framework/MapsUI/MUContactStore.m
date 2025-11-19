@interface MUContactStore
- (BOOL)_calculateIfContainerIsGuardianRestricted;
- (BOOL)isGuardianRestrictedCNContainer;
- (CNContactStore)cnContactStore;
- (MUContactStore)init;
- (void)_contactStoreDidChange;
- (void)_invokeObservers;
- (void)fetchContactForPickerDisplayUsingContact:(id)a3 callbackQueue:(id)a4 completion:(id)a5;
- (void)fetchStoredContactForMatchingMapItem:(id)a3 callbackQueue:(id)a4 completion:(id)a5;
- (void)fetchUnifiedContactForIdentifier:(id)a3 callbackQueue:(id)a4 completion:(id)a5;
- (void)removeMapsDataFromContact:(id)a3 callbackQueue:(id)a4 completion:(id)a5;
@end

@implementation MUContactStore

- (BOOL)_calculateIfContainerIsGuardianRestricted
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(MUContactStore *)self cnContactStore];
  v4 = [v3 defaultContainerIdentifier];

  if (v4)
  {
    v5 = MEMORY[0x1E695CE48];
    v14[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v7 = [v5 predicateForContainersWithIdentifiers:v6];

    v8 = [(MUContactStore *)self cnContactStore];
    v9 = [v8 containersMatchingPredicate:v7 error:0];

    if ([v9 count] == 1)
    {
      v10 = [v9 firstObject];
      v11 = [v10 isGuardianRestricted];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)fetchStoredContactForMatchingMapItem:(id)a3 callbackQueue:(id)a4 completion:(id)a5
{
  v30[3] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695CD78];
  v11 = a3;
  v12 = [v10 alloc];
  v13 = *MEMORY[0x1E695C410];
  v30[0] = *MEMORY[0x1E695C2E0];
  v30[1] = v13;
  v30[2] = *MEMORY[0x1E695C328];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  v15 = [v12 initWithKeysToFetch:v14];

  v16 = MEMORY[0x1E695CD58];
  v17 = [v11 _mapsDataString];

  v18 = [v16 predicateForContactMatchingMapString:v17];
  [v15 setPredicate:v18];

  [v15 setSortOrder:1];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MUContactStore_fetchStoredContactForMatchingMapItem_callbackQueue_completion___block_invoke;
  block[3] = &unk_1E82197D0;
  objc_copyWeak(&v28, &location);
  v25 = v15;
  v26 = v8;
  v27 = v9;
  v20 = v9;
  v21 = v8;
  v22 = v15;
  dispatch_async(queue, block);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
  v23 = *MEMORY[0x1E69E9840];
}

void __80__MUContactStore_fetchStoredContactForMatchingMapItem_callbackQueue_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained cnContactStore];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__12685;
    v15[4] = __Block_byref_object_dispose__12686;
    v16 = 0;
    v5 = *(a1 + 32);
    v13[4] = v15;
    v14 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__MUContactStore_fetchStoredContactForMatchingMapItem_callbackQueue_completion___block_invoke_61;
    v13[3] = &unk_1E8219820;
    [v4 enumerateContactsWithFetchRequest:v5 error:&v14 usingBlock:v13];
    v6 = v14;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__MUContactStore_fetchStoredContactForMatchingMapItem_callbackQueue_completion___block_invoke_2;
    block[3] = &unk_1E8219848;
    v7 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = v15;
    v10 = v6;
    v8 = v6;
    dispatch_async(v7, block);

    _Block_object_dispose(v15, 8);
  }
}

void __80__MUContactStore_fetchStoredContactForMatchingMapItem_callbackQueue_completion___block_invoke_61(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }

  *a3 = 1;
}

- (void)fetchContactForPickerDisplayUsingContact:(id)a3 callbackQueue:(id)a4 completion:(id)a5
{
  v30[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v30[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v13 = [v8 areKeysAvailable:v12];

  if (v13)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__MUContactStore_fetchContactForPickerDisplayUsingContact_callbackQueue_completion___block_invoke;
    block[3] = &unk_1E821A618;
    v28 = v8;
    v29 = v10;
    v14 = v10;
    v15 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __84__MUContactStore_fetchContactForPickerDisplayUsingContact_callbackQueue_completion___block_invoke_2;
    v20[3] = &unk_1E82197F8;
    objc_copyWeak(&v25, &location);
    v20[4] = self;
    v21 = v8;
    v22 = v11;
    v23 = v9;
    v24 = v10;
    v17 = v10;
    v18 = v8;
    dispatch_async(queue, v20);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __84__MUContactStore_fetchContactForPickerDisplayUsingContact_callbackQueue_completion___block_invoke_2(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) cnContactStore];
    v4 = [*(a1 + 40) identifier];
    v20[0] = *(a1 + 48);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v19 = 0;
    v6 = [v3 unifiedContactWithIdentifier:v4 keysToFetch:v5 error:&v19];
    v7 = v19;

    v8 = *(a1 + 56);
    if (v7)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __84__MUContactStore_fetchContactForPickerDisplayUsingContact_callbackQueue_completion___block_invoke_4;
      v12[3] = &unk_1E821B8D8;
      v9 = &v15;
      v15 = *(a1 + 64);
      v10 = &v13;
      v13 = *(a1 + 40);
      v14 = v7;
      dispatch_async(v8, v12);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__MUContactStore_fetchContactForPickerDisplayUsingContact_callbackQueue_completion___block_invoke_3;
      block[3] = &unk_1E821A618;
      v9 = &v18;
      v18 = *(a1 + 64);
      v10 = &v17;
      v17 = v6;
      dispatch_async(v8, block);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeMapsDataFromContact:(id)a3 callbackQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 mutableCopy];
  [v10 setMapsData:0];
  if ([(MUContactStore *)self hasContactAccess])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MUContactStore_removeMapsDataFromContact_callbackQueue_completion___block_invoke_2;
    block[3] = &unk_1E82197D0;
    objc_copyWeak(&v20, &location);
    v17 = v10;
    v18 = v8;
    v19 = v9;
    v12 = v10;
    v13 = v9;
    dispatch_async(queue, block);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__MUContactStore_removeMapsDataFromContact_callbackQueue_completion___block_invoke;
    v22[3] = &unk_1E821A618;
    v23 = v10;
    v24 = v9;
    v14 = v10;
    v15 = v9;
    dispatch_async(v8, v22);
  }
}

void __69__MUContactStore_removeMapsDataFromContact_callbackQueue_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
    [v3 updateContact:*(a1 + 32)];
    v4 = [WeakRetained cnContactStore];
    v12 = 0;
    [v4 executeSaveRequest:v3 error:&v12];
    v5 = v12;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__MUContactStore_removeMapsDataFromContact_callbackQueue_completion___block_invoke_3;
    v8[3] = &unk_1E821B8D8;
    v6 = *(a1 + 40);
    v11 = *(a1 + 48);
    v9 = v5;
    v10 = *(a1 + 32);
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

void __69__MUContactStore_removeMapsDataFromContact_callbackQueue_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 48);

    v2(v3, 0);
  }

  else
  {
    v5 = [*(a1 + 40) copy];
    (*(v1 + 16))(v1, v5, *(a1 + 32));
  }
}

- (CNContactStore)cnContactStore
{
  cnContactStore = self->_cnContactStore;
  if (!cnContactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = self->_cnContactStore;
    self->_cnContactStore = v4;

    cnContactStore = self->_cnContactStore;
  }

  return cnContactStore;
}

- (void)fetchUnifiedContactForIdentifier:(id)a3 callbackQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MUContactStore_fetchUnifiedContactForIdentifier_callbackQueue_completion___block_invoke;
  block[3] = &unk_1E82197D0;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __76__MUContactStore_fetchUnifiedContactForIdentifier_callbackQueue_completion___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained cnContactStore];
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E695CD58] descriptorForAllComparatorKeys];
    v20[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v19 = 0;
    v8 = [v4 unifiedContactWithIdentifier:v5 keysToFetch:v7 error:&v19];
    v9 = v19;

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__MUContactStore_fetchUnifiedContactForIdentifier_callbackQueue_completion___block_invoke_2;
    v15[3] = &unk_1E821B8D8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v17 = v9;
    v18 = v11;
    v16 = v8;
    v12 = v9;
    v13 = v8;
    dispatch_async(v10, v15);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_invokeObservers
{
  objc_initWeak(&location, self);
  observers = self->_observers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__MUContactStore__invokeObservers__block_invoke;
  v4[3] = &unk_1E82197A8;
  objc_copyWeak(&v5, &location);
  [(GEOObserverHashTable *)observers enumerateObserversWithGroup:0 visitor:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __34__MUContactStore__invokeObservers__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v4 contactStoreDidChange:WeakRetained];
  }
}

- (BOOL)isGuardianRestrictedCNContainer
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  propertyIsolator = self->_propertyIsolator;
  geo_isolate_sync();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (void)_contactStoreDidChange
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__MUContactStore__contactStoreDidChange__block_invoke;
  v4[3] = &unk_1E821BAC8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __40__MUContactStore__contactStoreDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _calculateIfContainerIsGuardianRestricted];
    v3 = v2[5];
    geo_isolate_sync();
  }
}

- (MUContactStore)init
{
  v11.receiver = self;
  v11.super_class = MUContactStore;
  v2 = [(MUContactStore *)&v11 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = geo_isolater_create_with_format();
    propertyIsolator = v2->_propertyIsolator;
    v2->_propertyIsolator = v5;

    v7 = [objc_alloc(MEMORY[0x1E69A22D8]) initWithProtocol:&unk_1F452C3D0 queue:0];
    observers = v2->_observers;
    v2->_observers = v7;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__contactStoreDidChange name:*MEMORY[0x1E695C3D8] object:0];

    [(MUContactStore *)v2 _contactStoreDidChange];
  }

  return v2;
}

@end