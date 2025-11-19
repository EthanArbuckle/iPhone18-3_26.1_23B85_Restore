@interface KSUserWordsManager
- (KSUserWordsManager)init;
- (NSArray)entries;
- (id)addObserver:(id)a3;
- (void)addEntries:(id)a3 removeEntries:(id)a4 withCompletionHandler:(id)a5;
- (void)dealloc;
- (void)notifyObserversOfChange;
@end

@implementation KSUserWordsManager

- (KSUserWordsManager)init
{
  v5.receiver = self;
  v5.super_class = KSUserWordsManager;
  v2 = [(KSUserWordsManager *)&v5 init];
  if (v2)
  {
    v2->_textReplacementStore = objc_alloc_init(MEMORY[0x277D22AD8]);
    v2->_observers = [MEMORY[0x277CBEB18] array];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, ShortcutsDidChange, *MEMORY[0x277D22AD0], 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D22AD0], 0);

  v4.receiver = self;
  v4.super_class = KSUserWordsManager;
  [(KSUserWordsManager *)&v4 dealloc];
}

- (NSArray)entries
{
  result = self->_cache;
  if (!result)
  {
    [(KSUserWordsManager *)self setCache:[(_KSTextReplacementClientStore *)self->_textReplacementStore textReplacementEntries]];
    return self->_cache;
  }

  return result;
}

- (void)addEntries:(id)a3 removeEntries:(id)a4 withCompletionHandler:(id)a5
{
  textReplacementStore = self->_textReplacementStore;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__KSUserWordsManager_addEntries_removeEntries_withCompletionHandler___block_invoke;
  v6[3] = &unk_2797FA178;
  v6[4] = self;
  v6[5] = a5;
  [(_KSTextReplacementClientStore *)textReplacementStore addEntries:a3 removeEntries:a4 withCompletionHandler:v6];
}

void __69__KSUserWordsManager_addEntries_removeEntries_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__KSUserWordsManager_addEntries_removeEntries_withCompletionHandler___block_invoke_2;
  block[3] = &unk_2797FA150;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  block[5] = a2;
  block[6] = v3;
  block[4] = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __69__KSUserWordsManager_addEntries_removeEntries_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) notifyObserversOfChange];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)notifyObserversOfChange
{
  v14 = *MEMORY[0x277D85DE8];
  [(KSUserWordsManager *)self setCache:0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  observers = self->_observers;
  v4 = [(NSMutableArray *)observers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(observers);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)observers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)addObserver:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableArray *)self->_observers addObject:v4];

  return v4;
}

@end