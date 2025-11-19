@interface NPKObserverManager
- (NPKObserverManager)init;
- (void)_enumerateObserversTablesCopy:(BOOL)a3 withBlock:(id)a4;
- (void)_enumerateObserversUsingBlock:(id)a3;
- (void)_registerObserver:(id)a3 withRelativePriority:(unint64_t)a4;
- (void)_unregisterObserver:(id)a3;
@end

@implementation NPKObserverManager

- (NPKObserverManager)init
{
  v8.receiver = self;
  v8.super_class = NPKObserverManager;
  v2 = [(NPKObserverManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
    priorityIndexSet = v2->_priorityIndexSet;
    v2->_priorityIndexSet = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observersTables = v2->_observersTables;
    v2->_observersTables = v5;
  }

  return v2;
}

- (void)_registerObserver:(id)a3 withRelativePriority:(unint64_t)a4
{
  v6 = a3;
  [(NPKObserverManager *)self _unregisterObserver:v6];
  if (([(NSMutableIndexSet *)self->_priorityIndexSet containsIndex:a4]& 1) != 0)
  {
    observersTables = self->_observersTables;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v11 = [(NSMutableDictionary *)observersTables objectForKeyedSubscript:v8];
  }

  else
  {
    v11 = [MEMORY[0x277CCAA50] pk_weakObjectsHashTableUsingPointerPersonality];
    v9 = self->_observersTables;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v9 setObject:v11 forKeyedSubscript:v10];

    [(NSMutableIndexSet *)self->_priorityIndexSet addIndex:a4];
  }

  [v11 addObject:v6];
}

- (void)_unregisterObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__NPKObserverManager__unregisterObserver___block_invoke;
  v6[3] = &unk_279947170;
  v7 = v4;
  v5 = v4;
  [(NPKObserverManager *)self _enumerateObserversTablesCopy:0 withBlock:v6];
}

void __42__NPKObserverManager__unregisterObserver___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  *a3 = [v6 containsObject:v5];
  [v6 removeObject:*(a1 + 32)];
}

- (void)_enumerateObserversUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__NPKObserverManager__enumerateObserversUsingBlock___block_invoke;
  v6[3] = &unk_279947198;
  v7 = v4;
  v5 = v4;
  [(NPKObserverManager *)self _enumerateObserversTablesCopy:1 withBlock:v6];
}

void __52__NPKObserverManager__enumerateObserversUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        (*(*(a1 + 32) + 16))();
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateObserversTablesCopy:(BOOL)a3 withBlock:(id)a4
{
  v6 = a4;
  priorityIndexSet = self->_priorityIndexSet;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__NPKObserverManager__enumerateObserversTablesCopy_withBlock___block_invoke;
  v9[3] = &unk_2799471C0;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(NSMutableIndexSet *)priorityIndexSet enumerateIndexesWithOptions:2 usingBlock:v9];
}

void __62__NPKObserverManager__enumerateObserversTablesCopy_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v7 = [v3 objectForKeyedSubscript:v4];

  if (*(a1 + 48) == 1)
  {
    v5 = [v7 copy];

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  (*(*(a1 + 40) + 16))();
}

@end