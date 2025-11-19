@interface HMFScheduler
+ (id)defaultScheduler;
+ (id)mainScheduler;
- (HMFScheduler)initWithQueue:(id)a3;
- (id)performBlock:(id)a3;
- (id)performOperation:(id)a3;
- (id)performSelector:(SEL)a3 target:(id)a4 argument:(id)a5;
- (id)performSelector:(SEL)a3 target:(id)a4 argument:(id)a5 qualityOfService:(int64_t)a6;
- (id)performWithQualityOfService:(int64_t)a3 block:(id)a4;
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

- (HMFScheduler)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMFScheduler;
  v6 = [(HMFScheduler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_operationQueue, a3);
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

- (id)performOperation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self && v4)
  {
    [(NSOperationQueue *)self->_operationQueue addOperation:v4];
  }

  return v5;
}

- (id)performBlock:(id)a3
{
  v4 = self;
  v5 = 0;
  if (v4)
  {
    if (a3)
    {
      v5 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:a3];
      if (v5)
      {
        [(NSOperationQueue *)v4->_operationQueue addOperation:v5];
      }
    }
  }

  return v5;
}

- (id)performWithQualityOfService:(int64_t)a3 block:(id)a4
{
  v6 = self;
  v7 = 0;
  if (v6 && a4)
  {
    v8 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:a4];
    v9 = v6;
    v10 = v8;
    v7 = v10;
    if (v10)
    {
      if (a3 != -1)
      {
        [v10 setQualityOfService:a3];
        if (![v7 queuePriority])
        {
          v11 = __ROR8__(a3 - 9, 3);
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

- (id)performSelector:(SEL)a3 target:(id)a4 argument:(id)a5
{
  v8 = self;
  v9 = 0;
  if (v8)
  {
    if (a3)
    {
      if (a4)
      {
        v10 = MEMORY[0x277CCAA80];
        v11 = a5;
        v12 = a4;
        v9 = [[v10 alloc] initWithTarget:v12 selector:a3 object:v11];

        if (v9)
        {
          [(NSOperationQueue *)v8->_operationQueue addOperation:v9];
        }
      }
    }
  }

  return v9;
}

- (id)performSelector:(SEL)a3 target:(id)a4 argument:(id)a5 qualityOfService:(int64_t)a6
{
  v10 = self;
  v11 = 0;
  if (v10 && a3 && a4)
  {
    v12 = MEMORY[0x277CCAA80];
    v13 = a5;
    v14 = a4;
    v15 = [[v12 alloc] initWithTarget:v14 selector:a3 object:v13];

    v16 = v10;
    v17 = v15;
    v11 = v17;
    if (v17)
    {
      if (a6 != -1)
      {
        [v17 setQualityOfService:a6];
        if (![v11 queuePriority])
        {
          v18 = __ROR8__(a6 - 9, 3);
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