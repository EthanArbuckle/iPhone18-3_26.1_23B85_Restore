@interface SUUISoftwareLibraryInterface
- (BOOL)performActionForLibraryItem:(id)a3;
- (id)stateForLibraryItem:(id)a3;
- (void)enumerateStatesForLibraryItems:(id)a3 usingBlock:(id)a4;
@end

@implementation SUUISoftwareLibraryInterface

- (void)enumerateStatesForLibraryItems:(id)a3 usingBlock:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v27 + 1) + 8 * v12) storeItemIdentifier];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = objc_alloc_init(MEMORY[0x277D69C68]);
  v16 = dispatch_semaphore_create(0);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __74__SUUISoftwareLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke;
  v24[3] = &unk_2798F7F78;
  v17 = v14;
  v25 = v17;
  v26 = v16;
  v18 = v16;
  [v15 getLibraryItemsForITunesStoreItemIdentifiers:v7 completionBlock:v24];
  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__SUUISoftwareLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke_2;
  v21[3] = &unk_2798F7FA0;
  v22 = v17;
  v23 = v6;
  v19 = v6;
  v20 = v17;
  [v8 enumerateObjectsUsingBlock:v21];
}

void __74__SUUISoftwareLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v16 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = *MEMORY[0x277D6A5D0];
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 valueForProperty:v10];
        if (v14 && ([v12 isPlaceholder] & 1) == 0)
        {
          v15 = [[SUUILibraryItemState alloc] initWithApplication:v12];
          [*(a1 + 32) setObject:v15 forKey:v14];
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __74__SUUISoftwareLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = [v7 storeItemIdentifier];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(SUUILibraryItemState);
  }

  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v3);
}

- (BOOL)performActionForLibraryItem:(id)a3
{
  v3 = [(SUUISoftwareLibraryInterface *)self stateForLibraryItem:a3];
  v4 = [v3 bundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    SUUIMetricsLaunchApplicationWithIdentifier(v6, 0);
    CFRelease(v6);
  }

  return v5 != 0;
}

- (id)stateForLibraryItem:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__20;
  v18 = __Block_byref_object_dispose__20;
  v19 = 0;
  v4 = objc_alloc_init(MEMORY[0x277D69C68]);
  v5 = dispatch_semaphore_create(0);
  v6 = [v3 storeItemIdentifier];
  v20[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SUUISoftwareLibraryInterface_stateForLibraryItem___block_invoke;
  v11[3] = &unk_2798F7FC8;
  v13 = &v14;
  v8 = v5;
  v12 = v8;
  [v4 getLibraryItemsForITunesStoreItemIdentifiers:v7 completionBlock:v11];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __52__SUUISoftwareLibraryInterface_stateForLibraryItem___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 firstObject];
  if (v6 && ([v6 isPlaceholder] & 1) == 0)
  {
    v3 = [[SUUILibraryItemState alloc] initWithApplication:v6];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end