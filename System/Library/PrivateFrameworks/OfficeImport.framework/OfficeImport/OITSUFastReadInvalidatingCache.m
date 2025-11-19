@interface OITSUFastReadInvalidatingCache
- (id)initForReentrant:(BOOL)a3 withGenerator:(id)a4;
- (id)value;
- (void)dealloc;
- (void)p_setValue:(id)a3;
@end

@implementation OITSUFastReadInvalidatingCache

- (id)initForReentrant:(BOOL)a3 withGenerator:(id)a4
{
  v10.receiver = self;
  v10.super_class = OITSUFastReadInvalidatingCache;
  v6 = [(OITSUFastReadInvalidatingCache *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (a4)
    {
      v6->mGenerator = _Block_copy(a4);
      v7->mReentrant = a3;
      if (!a3)
      {
        v7->mCondition = objc_alloc_init(MEMORY[0x277CCA928]);
      }
    }

    else
    {
      v8 = v6;
      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  mGenerator = self->mGenerator;
  if (mGenerator)
  {
    _Block_release(mGenerator);
  }

  v4 = atomic_load(&self->mValue);

  v5 = atomic_load(&self->mToDispose);
  v6.receiver = self;
  v6.super_class = OITSUFastReadInvalidatingCache;
  [(OITSUFastReadInvalidatingCache *)&v6 dealloc];
}

- (void)p_setValue:(id)a3
{
  v5 = a3;
  do
  {
    v6 = atomic_load(&self->mValue);
    v7 = v6;
    atomic_compare_exchange_strong(&self->mValue, &v7, a3);
  }

  while (v7 != v6);
  if (v6)
  {
    v11 = v7;
    v8 = 0;
    do
    {

      v9 = atomic_load(&self->mToDispose);
      if (v9)
      {
        v8 = [v9 arrayByAddingObject:v11];
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v11, 0}];
      }

      v10 = v9;
      atomic_compare_exchange_strong(&self->mToDispose, &v10, v8);
    }

    while (v10 != v9);
  }
}

- (id)value
{
  p_mReaderCount = &self->mReaderCount;
  atomic_fetch_add(&self->mReaderCount, 1uLL);
  v4 = atomic_load(&self->mValue);
  v5 = v4;
  v6 = atomic_load(&self->mToDispose);
  add = atomic_fetch_add(p_mReaderCount, 0xFFFFFFFFFFFFFFFFLL);
  if (v5)
  {
LABEL_2:
    v8 = v5;
  }

  else
  {
    while (!self->mReentrant)
    {
      [(NSCondition *)self->mCondition lock];
      if (!self->mIsGenerating)
      {
        self->mIsGenerating = 1;
        [(NSCondition *)self->mCondition unlock];
        break;
      }

      [(NSCondition *)self->mCondition wait];
      [(NSCondition *)self->mCondition unlock];
      atomic_fetch_add(&self->mReaderCount, 1uLL);
      v13 = atomic_load(&self->mValue);
      v5 = v13;
      v6 = atomic_load(&self->mToDispose);
      add = atomic_fetch_add(&self->mReaderCount, 0xFFFFFFFFFFFFFFFFLL);
      if (v5)
      {
        goto LABEL_2;
      }
    }

    v8 = (*(self->mGenerator + 2))();
    [(OITSUFastReadInvalidatingCache *)self p_setValue:v8];
    if (!self->mReentrant)
    {
      [(NSCondition *)self->mCondition lock];
      self->mIsGenerating = 0;
      [(NSCondition *)self->mCondition broadcast];
      [(NSCondition *)self->mCondition unlock];
    }
  }

  if (add == 1 && v6 != 0)
  {
    v10 = v6;
    atomic_compare_exchange_strong(&self->mToDispose, &v10, 0);
    if (v10 == v6)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__OITSUFastReadInvalidatingCache_value__block_invoke;
      block[3] = &unk_2799C60B0;
      block[4] = v6;
      dispatch_async(global_queue, block);
    }
  }

  return v8;
}

@end