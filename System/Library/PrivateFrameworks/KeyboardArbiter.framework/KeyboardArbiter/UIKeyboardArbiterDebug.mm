@interface UIKeyboardArbiterDebug
@end

@implementation UIKeyboardArbiterDebug

uint64_t __41___UIKeyboardArbiterDebug_sharedInstance__block_invoke()
{
  qword_28122B748 = objc_alloc_init(_UIKeyboardArbiterDebug);

  return MEMORY[0x2821F96F8]();
}

void __36___UIKeyboardArbiterDebug_addEntry___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  *(*(a1 + 32) + 16) += [*(a1 + 40) importance];
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  while (1)
  {
    v2 = *(a1 + 32);
    if (*(v2 + 16) < 601)
    {
      break;
    }

    v3 = [*(v2 + 24) firstObject];
    *(*(a1 + 32) + 16) -= [v3 importance];

    [*(*(a1 + 32) + 24) removeObjectAtIndex:0];
  }

  objc_sync_exit(obj);
}

void __47___UIKeyboardArbiterDebug_addAsynchronousData___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [_UIKeyboardArbiterDebugEntryDictionaries entryWithDictionaries:a2];
  [v2 addEntry:v3];
}

void __73___UIKeyboardArbiterDebug_getDebugInfoDictionariesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __73___UIKeyboardArbiterDebug_getDebugInfoDictionariesWithCompletionHandler___block_invoke_2;
        v10[3] = &unk_2797F4D80;
        v11 = v2;
        [v7 enumerateContents:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 40) + 16))();
  objc_sync_exit(obj);

  v8 = *MEMORY[0x277D85DE8];
}

@end