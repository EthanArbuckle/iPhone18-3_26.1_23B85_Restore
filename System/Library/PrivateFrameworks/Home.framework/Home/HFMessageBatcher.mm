@interface HFMessageBatcher
- (HFMessageBatcher)initWithIdentifier:(id)identifier batchingInterval:(double)interval maxDelay:(double)delay block:(id)block;
- (NSSet)objects;
- (void)batchObject:(id)object sender:(SEL)sender;
- (void)batchObjects:(id)objects sender:(SEL)sender;
- (void)didAddToBatchWithSender:(SEL)sender;
- (void)executeBatch;
- (void)reset;
@end

@implementation HFMessageBatcher

- (HFMessageBatcher)initWithIdentifier:(id)identifier batchingInterval:(double)interval maxDelay:(double)delay block:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v21.receiver = self;
  v21.super_class = HFMessageBatcher;
  v13 = [(HFMessageBatcher *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    v14->_batchingInterval = interval;
    v14->_maxDelay = delay;
    v15 = [MEMORY[0x277CBEB58] set];
    mutableObjects = v14->_mutableObjects;
    v14->_mutableObjects = v15;

    v17 = _Block_copy(blockCopy);
    block = v14->_block;
    v14->_block = v17;

    v19 = HFLogForCategory(0x36uLL);
    v14->signpostID = os_signpost_id_generate(v19);
  }

  return v14;
}

- (NSSet)objects
{
  mutableObjects = [(HFMessageBatcher *)self mutableObjects];
  v3 = [mutableObjects copy];

  return v3;
}

- (void)reset
{
  cancelable = [(HFMessageBatcher *)self cancelable];
  [cancelable cancel];

  [(HFMessageBatcher *)self setCancelable:0];
  mutableObjects = [(HFMessageBatcher *)self mutableObjects];
  [mutableObjects removeAllObjects];
}

- (void)batchObjects:(id)objects sender:(SEL)sender
{
  objectsCopy = objects;
  mutableObjects = [(HFMessageBatcher *)self mutableObjects];
  [mutableObjects unionSet:objectsCopy];

  [(HFMessageBatcher *)self didAddToBatchWithSender:sender];
}

- (void)batchObject:(id)object sender:(SEL)sender
{
  objectCopy = object;
  mutableObjects = [(HFMessageBatcher *)self mutableObjects];
  [mutableObjects addObject:objectCopy];

  [(HFMessageBatcher *)self didAddToBatchWithSender:sender];
}

- (void)didAddToBatchWithSender:(SEL)sender
{
  v32 = *MEMORY[0x277D85DE8];
  batchBeginDate = [(HFMessageBatcher *)self batchBeginDate];

  if (batchBeginDate)
  {
    batchBeginDate2 = [(HFMessageBatcher *)self batchBeginDate];
    [batchBeginDate2 timeIntervalSinceNow];
    v8 = fabs(v7);
    [(HFMessageBatcher *)self maxDelay];
    v10 = v9;

    if (v8 >= v10)
    {
      cancelable = [(HFMessageBatcher *)self cancelable];
      [cancelable cancel];

      v12 = *MEMORY[0x277D85DE8];

      [(HFMessageBatcher *)self executeBatch];
      return;
    }
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HFMessageBatcher *)self setBatchBeginDate:date];

    v14 = HFLogForCategory(0x36uLL);
    v15 = v14;
    signpostID = self->signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      identifier = [(HFMessageBatcher *)self identifier];
      v18 = NSStringFromSelector(sender);
      *buf = 138543618;
      v29 = identifier;
      v30 = 2114;
      v31 = v18;
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v15, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "HFMessageBatcher", "HFMessageBatcher-%{public}@: Started batch with sender %{public}@", buf, 0x16u);
    }
  }

  cancelable2 = [(HFMessageBatcher *)self cancelable];

  if (cancelable2)
  {
    cancelable3 = [(HFMessageBatcher *)self cancelable];
    [cancelable3 cancel];
  }

  objc_initWeak(buf, self);
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  [(HFMessageBatcher *)self batchingInterval];
  v23 = v22;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __44__HFMessageBatcher_didAddToBatchWithSender___block_invoke;
  v26[3] = &unk_277DF4460;
  objc_copyWeak(&v27, buf);
  v24 = [mainThreadScheduler afterDelay:v26 performBlock:v23];
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
  objects = [(HFMessageBatcher *)self objects];
  [(HFMessageBatcher *)self setCancelable:0];
  mutableObjects = [(HFMessageBatcher *)self mutableObjects];
  [mutableObjects removeAllObjects];

  [(HFMessageBatcher *)self setBatchBeginDate:0];
  if ([objects count])
  {
    v5 = HFLogForCategory(0x36uLL);
    v6 = v5;
    signpostID = self->signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      identifier = [(HFMessageBatcher *)self identifier];
      v11 = 138543618;
      v12 = identifier;
      v13 = 2048;
      v14 = [objects count];
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v6, OS_SIGNPOST_INTERVAL_END, signpostID, "HFMessageBatcher", "HFMessageBatcher-%{public}@: executing batch with %lu objects", &v11, 0x16u);
    }

    block = [(HFMessageBatcher *)self block];
    (block)[2](block, objects);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end