@interface PKAsyncCache
- (PKAsyncCache)init;
- (PKAsyncCache)initWithCache:(id)cache;
- (void)_executeRetrievalBlock:(id)block forKey:(id)key;
- (void)retrieveItemForKey:(id)key synchronous:(BOOL)synchronous retrievalBlock:(id)block deliveryBlock:(id)deliveryBlock;
@end

@implementation PKAsyncCache

- (PKAsyncCache)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v4 = [(PKAsyncCache *)self initWithCache:v3];

  return v4;
}

- (PKAsyncCache)initWithCache:(id)cache
{
  cacheCopy = cache;
  v13.receiver = self;
  v13.super_class = PKAsyncCache;
  v6 = [(PKAsyncCache *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_itemByKey, cache);
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    weakItemByKey = v7->_weakItemByKey;
    v7->_weakItemByKey = strongToWeakObjectsMapTable;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    outstandingRetrievals = v7->_outstandingRetrievals;
    v7->_outstandingRetrievals = v10;
  }

  return v7;
}

- (void)retrieveItemForKey:(id)key synchronous:(BOOL)synchronous retrievalBlock:(id)block deliveryBlock:(id)deliveryBlock
{
  synchronousCopy = synchronous;
  v30 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  blockCopy = block;
  deliveryBlockCopy = deliveryBlock;
  os_unfair_lock_lock(&self->_lock);
  v13 = [(NSCache *)self->_itemByKey objectForKey:keyCopy];
  if (v13)
  {
    goto LABEL_4;
  }

  v14 = [(NSMapTable *)self->_weakItemByKey objectForKey:keyCopy];
  if (!v14)
  {
    v23 = [(NSMutableDictionary *)self->_outstandingRetrievals objectForKeyedSubscript:keyCopy];
    if (v23)
    {
      v17 = v23;
      os_unfair_lock_unlock(&self->_lock);
      v28 = 0;
      if (!synchronousCopy)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = objc_alloc_init(PKAsyncCacheRetrievalInfo);
      [(NSMutableDictionary *)self->_outstandingRetrievals setObject:v17 forKeyedSubscript:keyCopy];
      os_unfair_lock_unlock(&self->_lock);
      v28 = 0;
      if (!synchronousCopy)
      {
        [(PKAsyncCache *)self _executeRetrievalBlock:blockCopy forKey:keyCopy];
LABEL_27:
        [(PKAsyncCacheRetrievalInfo *)v17 addDeliveryBlock:deliveryBlockCopy];
        v16 = 0;
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [(PKAsyncCacheRetrievalInfo *)v17 synchronouslyRetrieve:blockCopy outDeliveryBlocks:&v28];
    os_unfair_lock_lock(&self->_lock);
    if (v13)
    {
      [(NSCache *)self->_itemByKey setObject:v13 forKey:keyCopy];
      [(NSMapTable *)self->_weakItemByKey setObject:v13 forKey:keyCopy];
    }

    v16 = [(NSMutableDictionary *)self->_outstandingRetrievals objectForKeyedSubscript:keyCopy];
    [(NSMutableDictionary *)self->_outstandingRetrievals setObject:0 forKeyedSubscript:keyCopy];
    if (v17 == v16)
    {

      v16 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    v15 = v28;
    goto LABEL_5;
  }

  v13 = v14;
  [(NSCache *)self->_itemByKey setObject:v14 forKey:keyCopy];
LABEL_4:
  os_unfair_lock_unlock(&self->_lock);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v28 = 0;
LABEL_5:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        (*(*(*(&v24 + 1) + 8 * i) + 16))(*(*(&v24 + 1) + 8 * i));
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v20);
  }

  if (v16)
  {
    [(PKAsyncCacheRetrievalInfo *)v16 deliverItem:v13, v24];
  }

  if (deliveryBlockCopy)
  {
    deliveryBlockCopy[2](deliveryBlockCopy, v13);
  }

LABEL_16:
}

- (void)_executeRetrievalBlock:(id)block forKey:(id)key
{
  keyCopy = key;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__PKAsyncCache__executeRetrievalBlock_forKey___block_invoke;
  v9[3] = &unk_1E79CA690;
  v9[4] = self;
  v10 = keyCopy;
  v7 = *(block + 2);
  v8 = keyCopy;
  v7(block, v9);
}

void __46__PKAsyncCache__executeRetrievalBlock_forKey___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  if (v4)
  {
    [*(*(a1 + 32) + 16) setObject:v4 forKey:*(a1 + 40)];
    [*(*(a1 + 32) + 24) setObject:v4 forKey:*(a1 + 40)];
  }

  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  [v3 deliverItem:v4];
}

@end