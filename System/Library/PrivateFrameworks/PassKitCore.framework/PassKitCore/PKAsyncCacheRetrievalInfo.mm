@interface PKAsyncCacheRetrievalInfo
- (PKAsyncCacheRetrievalInfo)init;
- (id)synchronouslyRetrieve:(id)retrieve outDeliveryBlocks:(id *)blocks;
- (void)addDeliveryBlock:(id)block;
- (void)deliverItem:(id)item;
@end

@implementation PKAsyncCacheRetrievalInfo

- (PKAsyncCacheRetrievalInfo)init
{
  v7.receiver = self;
  v7.super_class = PKAsyncCacheRetrievalInfo;
  v2 = [(PKAsyncCacheRetrievalInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deliveryBlocks = v3->_deliveryBlocks;
    v3->_deliveryBlocks = v4;
  }

  return v3;
}

- (void)addDeliveryBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v9 = blockCopy;
    os_unfair_lock_lock(&self->_lock);
    if (self->_itemFetched)
    {
      v5 = self->_item;
      os_unfair_lock_unlock(&self->_lock);
      v9[2](v9, v5);
    }

    else
    {
      deliveryBlocks = self->_deliveryBlocks;
      v7 = [v9 copy];
      v8 = _Block_copy(v7);
      [(NSMutableArray *)deliveryBlocks addObject:v8];

      os_unfair_lock_unlock(&self->_lock);
    }

    blockCopy = v9;
  }
}

- (id)synchronouslyRetrieve:(id)retrieve outDeliveryBlocks:(id *)blocks
{
  retrieveCopy = retrieve;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  os_unfair_lock_lock(&self->_lock);
  if (self->_itemFetched)
  {
    objc_storeStrong(v13 + 5, self->_item);
    if (!blocks)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (retrieveCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__PKAsyncCacheRetrievalInfo_synchronouslyRetrieve_outDeliveryBlocks___block_invoke;
    v11[3] = &unk_1E79CA668;
    v11[4] = &v12;
    retrieveCopy[2](retrieveCopy, v11);
  }

  objc_storeStrong(&self->_item, v13[5]);
  self->_itemFetched = 1;
  if (blocks)
  {
LABEL_7:
    v7 = [(NSMutableArray *)self->_deliveryBlocks count];
    if (v7)
    {
      v7 = [(NSMutableArray *)self->_deliveryBlocks copy];
    }

    v8 = *blocks;
    *blocks = v7;

    [(NSMutableArray *)self->_deliveryBlocks removeAllObjects];
  }

LABEL_10:
  os_unfair_lock_unlock(&self->_lock);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)deliverItem:(id)item
{
  v17 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_item, item);
  self->_itemFetched = 1;
  if ([(NSMutableArray *)self->_deliveryBlocks count])
  {
    v6 = [(NSMutableArray *)self->_deliveryBlocks copy];
  }

  else
  {
    v6 = 0;
  }

  [(NSMutableArray *)self->_deliveryBlocks removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end