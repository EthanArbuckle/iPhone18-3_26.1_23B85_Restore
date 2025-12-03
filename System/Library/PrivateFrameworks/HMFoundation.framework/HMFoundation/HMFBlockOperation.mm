@interface HMFBlockOperation
+ (id)blockOperationWithBlock:(id)block;
- (HMFBlockOperation)initWithTimeout:(double)timeout;
- (NSArray)executionBlocks;
- (void)addExecutionBlock:(id)block;
- (void)main;
@end

@implementation HMFBlockOperation

+ (id)blockOperationWithBlock:(id)block
{
  v11[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = objc_alloc_init(self);
  v6 = _Block_copy(blockCopy);

  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = v5[39];
  v5[39] = v7;

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMFBlockOperation)initWithTimeout:(double)timeout
{
  v7.receiver = self;
  v7.super_class = HMFBlockOperation;
  v3 = [(HMFOperation *)&v7 initWithTimeout:timeout];
  v4 = v3;
  if (v3)
  {
    executionBlocks = v3->_executionBlocks;
    v3->_executionBlocks = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (NSArray)executionBlocks
{
  os_unfair_lock_lock_with_options();
  v3 = self->_executionBlocks;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)addExecutionBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    aBlock = blockCopy;
    os_unfair_lock_lock_with_options();
    if (self->super._executing || self->super._finished)
    {
      v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Operation is already executing or has finished." userInfo:0];
      objc_exception_throw(v9);
    }

    executionBlocks = self->_executionBlocks;
    v6 = _Block_copy(aBlock);
    v7 = [(NSArray *)executionBlocks arrayByAddingObject:v6];
    v8 = self->_executionBlocks;
    self->_executionBlocks = v7;

    os_unfair_lock_unlock(&self->super._lock);
    blockCopy = aBlock;
  }
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  executionBlocks = [(HMFBlockOperation *)self executionBlocks];
  v4 = [executionBlocks count];

  if ([(HMFOperation *)self isExecuting]&& ([(HMFBlockOperation *)self isCancelled]& 1) == 0 && v4)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      v24 = v8;
      v25 = 2048;
      v26 = v4;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Executing %tu blocks", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    executionBlocks2 = [(HMFBlockOperation *)selfCopy executionBlocks];
    v10 = [executionBlocks2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(executionBlocks2);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          queue = selfCopy->super._queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __25__HMFBlockOperation_main__block_invoke;
          block[3] = &unk_2786E7490;
          block[4] = v14;
          dispatch_async(queue, block);
          ++v13;
        }

        while (v11 != v13);
        v11 = [executionBlocks2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end