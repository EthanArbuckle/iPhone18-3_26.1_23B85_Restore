@interface CATObserverManager
@end

@implementation CATObserverManager

void __41___CATObserverManager_initWithOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained notifyObserversOperationDidProgress:v2];
}

uint64_t __35___CATObserverManager_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [*(a1 + 32) events];
    v4 = result;
  }

  else
  {
    v4 = 15;
  }

  if (*(*(a1 + 40) + 16) >= 3)
  {
    v5 = *(a1 + 32);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [*(a1 + 32) operationDidStart:*(a1 + 48)];
    }

    if (*(*(a1 + 40) + 16) < 5)
    {
      if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0)
      {
        return result;
      }

      goto LABEL_12;
    }

    v6 = *(a1 + 32);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [*(a1 + 32) operationDidFinish:*(a1 + 48)];
    }

    v4 &= 0xFFFFFFFFFFFFFFF0;
  }

  if (!v4)
  {
    return result;
  }

LABEL_12:
  v7 = *(*(a1 + 40) + 8);
  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = *(a1 + 40);
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;

    v7 = *(*(a1 + 40) + 8);
  }

  v11 = *(a1 + 32);

  return [v7 addObject:v11];
}

void __38___CATObserverManager_removeObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __41___CATObserverManager_operationDidStart___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 56) = 1;
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  *(*(a1 + 32) + 16) = 3;
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 operationDidStart:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __42___CATObserverManager_operationDidFinish___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 56) == 1)
  {
    [*(a1 + 40) removeObserver:? forKeyPath:? context:?];
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  *(*(a1 + 32) + 16) = 5;
  v4 = [*(*(a1 + 32) + 8) allObjects];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 operationDidFinish:*(a1 + 40)];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 8) removeAllObjects];
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  *(v10 + 8) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = 0;

  v14 = *MEMORY[0x277D85DE8];
}

@end