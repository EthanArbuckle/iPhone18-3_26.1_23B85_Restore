@interface HFMessageBatcher
- (HFMessageBatcher)initWithIdentifier:(id)a3 batchingInterval:(double)a4 maxDelay:(double)a5 block:(id)a6;
- (NSSet)objects;
- (void)batchObject:(id)a3 sender:(SEL)a4;
- (void)batchObjects:(id)a3 sender:(SEL)a4;
- (void)didAddToBatchWithSender:(SEL)a3;
- (void)executeBatch;
- (void)reset;
@end

@implementation HFMessageBatcher

- (HFMessageBatcher)initWithIdentifier:(id)a3 batchingInterval:(double)a4 maxDelay:(double)a5 block:(id)a6
{
  v11 = a3;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = HFMessageBatcher;
  v13 = [(HFMessageBatcher *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    v14->_batchingInterval = a4;
    v14->_maxDelay = a5;
    v15 = [MEMORY[0x277CBEB58] set];
    mutableObjects = v14->_mutableObjects;
    v14->_mutableObjects = v15;

    v17 = _Block_copy(v12);
    block = v14->_block;
    v14->_block = v17;

    v19 = HFLogForCategory(0x36uLL);
    v14->signpostID = os_signpost_id_generate(v19);
  }

  return v14;
}

- (NSSet)objects
{
  v2 = [(HFMessageBatcher *)self mutableObjects];
  v3 = [v2 copy];

  return v3;
}

- (void)reset
{
  v3 = [(HFMessageBatcher *)self cancelable];
  [v3 cancel];

  [(HFMessageBatcher *)self setCancelable:0];
  v4 = [(HFMessageBatcher *)self mutableObjects];
  [v4 removeAllObjects];
}

- (void)batchObjects:(id)a3 sender:(SEL)a4
{
  v6 = a3;
  v7 = [(HFMessageBatcher *)self mutableObjects];
  [v7 unionSet:v6];

  [(HFMessageBatcher *)self didAddToBatchWithSender:a4];
}

- (void)batchObject:(id)a3 sender:(SEL)a4
{
  v6 = a3;
  v7 = [(HFMessageBatcher *)self mutableObjects];
  [v7 addObject:v6];

  [(HFMessageBatcher *)self didAddToBatchWithSender:a4];
}

- (void)didAddToBatchWithSender:(SEL)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [(HFMessageBatcher *)self batchBeginDate];

  if (v5)
  {
    v6 = [(HFMessageBatcher *)self batchBeginDate];
    [v6 timeIntervalSinceNow];
    v8 = fabs(v7);
    [(HFMessageBatcher *)self maxDelay];
    v10 = v9;

    if (v8 >= v10)
    {
      v11 = [(HFMessageBatcher *)self cancelable];
      [v11 cancel];

      v12 = *MEMORY[0x277D85DE8];

      [(HFMessageBatcher *)self executeBatch];
      return;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    [(HFMessageBatcher *)self setBatchBeginDate:v13];

    v14 = HFLogForCategory(0x36uLL);
    v15 = v14;
    signpostID = self->signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = [(HFMessageBatcher *)self identifier];
      v18 = NSStringFromSelector(a3);
      *buf = 138543618;
      v29 = v17;
      v30 = 2114;
      v31 = v18;
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v15, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "HFMessageBatcher", "HFMessageBatcher-%{public}@: Started batch with sender %{public}@", buf, 0x16u);
    }
  }

  v19 = [(HFMessageBatcher *)self cancelable];

  if (v19)
  {
    v20 = [(HFMessageBatcher *)self cancelable];
    [v20 cancel];
  }

  objc_initWeak(buf, self);
  v21 = [MEMORY[0x277D2C938] mainThreadScheduler];
  [(HFMessageBatcher *)self batchingInterval];
  v23 = v22;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __44__HFMessageBatcher_didAddToBatchWithSender___block_invoke;
  v26[3] = &unk_277DF4460;
  objc_copyWeak(&v27, buf);
  v24 = [v21 afterDelay:v26 performBlock:v23];
  [(HFMessageBatcher *)self setCancelable:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
  v25 = *MEMORY[0x277D85DE8];
}

void __44__HFMessageBatcher_didAddToBatchWithSender___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained executeBatch];
    WeakRetained = v2;
  }
}

- (void)executeBatch
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HFMessageBatcher *)self objects];
  [(HFMessageBatcher *)self setCancelable:0];
  v4 = [(HFMessageBatcher *)self mutableObjects];
  [v4 removeAllObjects];

  [(HFMessageBatcher *)self setBatchBeginDate:0];
  if ([v3 count])
  {
    v5 = HFLogForCategory(0x36uLL);
    v6 = v5;
    signpostID = self->signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v8 = [(HFMessageBatcher *)self identifier];
      v11 = 138543618;
      v12 = v8;
      v13 = 2048;
      v14 = [v3 count];
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v6, OS_SIGNPOST_INTERVAL_END, signpostID, "HFMessageBatcher", "HFMessageBatcher-%{public}@: executing batch with %lu objects", &v11, 0x16u);
    }

    v9 = [(HFMessageBatcher *)self block];
    (v9)[2](v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end