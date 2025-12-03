@interface HMFScheduler
+ (id)defaultScheduler;
+ (id)mainScheduler;
- (HMFScheduler)initWithQueue:(id)queue;
- (id)performBlock:(id)block;
- (id)performOperation:(id)operation;
- (id)performSelector:(SEL)selector target:(id)target argument:(id)argument;
- (id)performSelector:(SEL)selector target:(id)target argument:(id)argument qualityOfService:(int64_t)service;
- (id)performWithQualityOfService:(int64_t)service block:(id)block;
@end

@implementation HMFScheduler

+ (id)defaultScheduler
{
  if (_MergedGlobals_78 != -1)
  {
    dispatch_once(&_MergedGlobals_78, &__block_literal_global_51);
  }

  v3 = qword_280AFC730;

  return v3;
}

uint64_t __32__HMFScheduler_defaultScheduler__block_invoke()
{
  qword_280AFC730 = objc_alloc_init(HMFScheduler);

  return MEMORY[0x2821F96F8]();
}

+ (id)mainScheduler
{
  if (qword_280AFC738 != -1)
  {
    dispatch_once(&qword_280AFC738, &__block_literal_global_2);
  }

  v3 = qword_280AFC740;

  return v3;
}

void __29__HMFScheduler_mainScheduler__block_invoke()
{
  v0 = [HMFScheduler alloc];
  v3 = [MEMORY[0x277CCABD8] mainQueue];
  v1 = [(HMFScheduler *)v0 initWithQueue:v3];
  v2 = qword_280AFC740;
  qword_280AFC740 = v1;
}

- (HMFScheduler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HMFScheduler;
  v6 = [(HMFScheduler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (queueCopy)
    {
      objc_storeStrong(&v6->_operationQueue, queue);
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
      operationQueue = v7->_operationQueue;
      v7->_operationQueue = v8;

      [(NSOperationQueue *)v7->_operationQueue setName:@"com.apple.HMFoundation.Scheduler"];
    }
  }

  return v7;
}

- (id)performOperation:(id)operation
{
  operationCopy = operation;
  v5 = operationCopy;
  if (self && operationCopy)
  {
    [(NSOperationQueue *)self->_operationQueue addOperation:operationCopy];
  }

  return v5;
}

- (id)performBlock:(id)block
{
  selfCopy = self;
  v5 = 0;
  if (selfCopy)
  {
    if (block)
    {
      v5 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:block];
      if (v5)
      {
        [(NSOperationQueue *)selfCopy->_operationQueue addOperation:v5];
      }
    }
  }

  return v5;
}

- (id)performWithQualityOfService:(int64_t)service block:(id)block
{
  selfCopy = self;
  v7 = 0;
  if (selfCopy && block)
  {
    v8 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:block];
    v9 = selfCopy;
    v10 = v8;
    v7 = v10;
    if (v10)
    {
      if (service != -1)
      {
        [v10 setQualityOfService:service];
        if (![v7 queuePriority])
        {
          v11 = __ROR8__(service - 9, 3);
          if (v11 > 3)
          {
            v12 = 0;
          }

          else
          {
            v12 = qword_22AE829E0[v11];
          }

          [v7 setQueuePriority:v12];
        }
      }

      [v9[1] addOperation:v7];
    }
  }

  return v7;
}

- (id)performSelector:(SEL)selector target:(id)target argument:(id)argument
{
  selfCopy = self;
  v9 = 0;
  if (selfCopy)
  {
    if (selector)
    {
      if (target)
      {
        v10 = MEMORY[0x277CCAA80];
        argumentCopy = argument;
        targetCopy = target;
        v9 = [[v10 alloc] initWithTarget:targetCopy selector:selector object:argumentCopy];

        if (v9)
        {
          [(NSOperationQueue *)selfCopy->_operationQueue addOperation:v9];
        }
      }
    }
  }

  return v9;
}

- (id)performSelector:(SEL)selector target:(id)target argument:(id)argument qualityOfService:(int64_t)service
{
  selfCopy = self;
  v11 = 0;
  if (selfCopy && selector && target)
  {
    v12 = MEMORY[0x277CCAA80];
    argumentCopy = argument;
    targetCopy = target;
    v15 = [[v12 alloc] initWithTarget:targetCopy selector:selector object:argumentCopy];

    v16 = selfCopy;
    v17 = v15;
    v11 = v17;
    if (v17)
    {
      if (service != -1)
      {
        [v17 setQualityOfService:service];
        if (![v11 queuePriority])
        {
          v18 = __ROR8__(service - 9, 3);
          if (v18 > 3)
          {
            v19 = 0;
          }

          else
          {
            v19 = qword_22AE829E0[v18];
          }

          [v11 setQueuePriority:v19];
        }
      }

      [v16[1] addOperation:v11];
    }
  }

  return v11;
}

@end