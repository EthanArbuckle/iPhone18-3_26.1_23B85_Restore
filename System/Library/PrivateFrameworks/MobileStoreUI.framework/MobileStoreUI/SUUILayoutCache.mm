@interface SUUILayoutCache
- (SUUILayoutCache)init;
- (SUUILayoutCacheDelegate)delegate;
- (_NSRange)addLayoutRequests:(id)requests;
- (_NSRange)populateCacheWithLayoutRequests:(id)requests;
- (id)layoutForIndex:(int64_t)index forced:(BOOL)forced;
- (void)_addLayoutBatch:(id)batch;
- (void)_layoutRequestsInRange:(_NSRange)range;
- (void)_populateCache;
- (void)commitLayoutRequests;
@end

@implementation SUUILayoutCache

- (SUUILayoutCache)init
{
  v11.receiver = self;
  v11.super_class = SUUILayoutCache;
  v2 = [(SUUILayoutCache *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.iTunesStoreUI.SUUILayoutCache.%p", v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    layouts = v2->_layouts;
    v2->_layouts = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requests = v2->_requests;
    v2->_requests = v8;
  }

  return v2;
}

- (_NSRange)addLayoutRequests:(id)requests
{
  requestsCopy = requests;
  if (!self->_batchedRequests)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    batchedRequests = self->_batchedRequests;
    self->_batchedRequests = v5;
  }

  v7 = [(NSMutableArray *)self->_requests count];
  v8 = [(NSMutableArray *)self->_batchedRequests count];
  v9 = [requestsCopy count];
  [(NSMutableArray *)self->_batchedRequests addObjectsFromArray:requestsCopy];

  v10 = v8 + v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)commitLayoutRequests
{
  batchedRequests = self->_batchedRequests;
  if (batchedRequests)
  {
    v5 = [(NSMutableArray *)batchedRequests copy];
    v4 = self->_batchedRequests;
    self->_batchedRequests = 0;

    [(SUUILayoutCache *)self populateCacheWithLayoutRequests:v5];
  }
}

- (id)layoutForIndex:(int64_t)index forced:(BOOL)forced
{
  forcedCopy = forced;
  if ([(NSMutableArray *)self->_layouts count]<= index)
  {
    if (forcedCopy && (v8 = index - [(NSMutableArray *)self->_layouts count], v8 < [(NSMutableArray *)self->_batchedRequests count]))
    {
      v9 = [(NSMutableArray *)self->_batchedRequests objectAtIndex:v8];
      v7 = [objc_alloc(objc_msgSend(v9 "layoutClass"))];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [(NSMutableArray *)self->_layouts objectAtIndex:index];
  }

  return v7;
}

- (_NSRange)populateCacheWithLayoutRequests:(id)requests
{
  requestsCopy = requests;
  v5 = [(NSMutableArray *)self->_requests count];
  v6 = [requestsCopy count];
  if (self->_batchedRequests)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"-populateCacheWithLayoutRequests: before -commitLayoutRequests"];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_layouts count];
    v8 = [(NSMutableArray *)self->_requests count];
    [(NSMutableArray *)self->_requests addObjectsFromArray:requestsCopy];
    if (v7 == v8)
    {
      [(SUUILayoutCache *)self _populateCache];
    }

    else
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__SUUILayoutCache_populateCacheWithLayoutRequests___block_invoke;
      block[3] = &unk_2798F5AD0;
      block[4] = self;
      block[5] = v5;
      block[6] = v6;
      dispatch_async(dispatchQueue, block);
    }
  }

  v10 = v5;
  v11 = v6;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)_addLayoutBatch:(id)batch
{
  [(NSMutableArray *)self->_layouts addObjectsFromArray:batch];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 layoutCacheDidFinishBatch:self];
  }
}

- (void)_layoutRequestsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (location < location + length)
  {
    do
    {
      v7 = [(NSMutableArray *)self->_requests objectAtIndex:location];
      v8 = [objc_alloc(objc_msgSend(v7 "layoutClass"))];
      [v6 addObject:v8];
      if ([v6 count] == 250)
      {
        v9 = v6;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __42__SUUILayoutCache__layoutRequestsInRange___block_invoke;
        block[3] = &unk_2798F5AF8;
        block[4] = self;
        v13 = v9;
        dispatch_async(MEMORY[0x277D85CD0], block);
        v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      ++location;
      --length;
    }

    while (length);
  }

  if ([v6 count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__SUUILayoutCache__layoutRequestsInRange___block_invoke_2;
    v10[3] = &unk_2798F5AF8;
    v10[4] = self;
    v11 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

- (void)_populateCache
{
  v3 = [(NSMutableArray *)self->_layouts count];
  v4 = [(NSMutableArray *)self->_requests count];
  v5 = v4 - v3;
  if (v4 - v3 >= 1)
  {
    v6 = v4;
    if (v5 >= 0xFA)
    {
      v5 = 250;
    }

    v7 = v5 + v3;
    do
    {
      v8 = [(NSMutableArray *)self->_requests objectAtIndex:v3];
      v9 = [objc_alloc(objc_msgSend(v8 "layoutClass"))];
      [(NSMutableArray *)self->_layouts addObject:v9];

      ++v3;
    }

    while (v3 < v7);
    v10 = [(NSMutableArray *)self->_layouts count];
    if (v10 < v6)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__SUUILayoutCache__populateCache__block_invoke;
      block[3] = &unk_2798F5AD0;
      block[4] = self;
      block[5] = v10;
      block[6] = v6;
      dispatch_async(dispatchQueue, block);
    }
  }
}

- (SUUILayoutCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end