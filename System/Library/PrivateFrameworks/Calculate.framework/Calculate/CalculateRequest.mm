@interface CalculateRequest
+ (id)serialQueue;
+ (void)_lock;
- (void)cancel;
- (void)evaluate;
- (void)finish;
- (void)update;
@end

@implementation CalculateRequest

- (void)finish
{
  +[CalculateRequest _lock];
  isCanceled = [(CalculateRequest *)self isCanceled];
  result = [(CalculateRequest *)self result];
  error = [(CalculateRequest *)self error];
  [(CalculateRequest *)self setResult:0];
  [(CalculateRequest *)self setError:0];
  [(CalculateRequest *)self setIsCanceled:1];
  +[CalculateRequest _unlock];
  if (!isCanceled)
  {
    resultHandler = [(CalculateRequest *)self resultHandler];

    if (resultHandler)
    {
      resultHandler2 = [(CalculateRequest *)self resultHandler];
      (resultHandler2)[2](resultHandler2, result, error);
    }
  }
}

- (void)cancel
{
  +[CalculateRequest _lock];
  isCanceled = [(CalculateRequest *)self isCanceled];
  [(CalculateRequest *)self setResult:0];
  [(CalculateRequest *)self setError:0];
  [(CalculateRequest *)self setIsCanceled:1];
  +[CalculateRequest _unlock];
  if (!isCanceled)
  {
    resultHandler = [(CalculateRequest *)self resultHandler];

    if (resultHandler)
    {
      resultHandler2 = [(CalculateRequest *)self resultHandler];
      (*(resultHandler2 + 2))(resultHandler2, 0, 0);
    }
  }
}

- (void)update
{
  if (+[_TtC9Calculate22StocksKitCurrencyCache isEnabled])
  {
    v3 = +[_TtC9Calculate22StocksKitCurrencyCache shared];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __26__CalculateRequest_update__block_invoke;
    v6[3] = &unk_1E815C450;
    v6[4] = self;
    [v3 refreshWithCompletionHandler:v6];
  }

  else
  {
    +[CalculateRequest _lock];
    if ((calculateRequestUpdating & 1) == 0)
    {
      calculateRequestUpdating = 1;
      v4 = +[CalculateRequest serialQueue];
      dispatch_async(v4, &__block_literal_global_917);
    }

    +[CalculateRequest _unlock];
    v3 = +[CalculateRequest serialQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __26__CalculateRequest_update__block_invoke_3;
    v5[3] = &unk_1E815C940;
    v5[4] = self;
    dispatch_async(v3, v5);
  }
}

uint64_t __26__CalculateRequest_update__block_invoke_2()
{
  v0 = +[CalculateCurrencyCache shared];
  [v0 refresh];

  +[CalculateRequest _lock];
  calculateRequestUpdating = 0;

  return +[CalculateRequest _unlock];
}

- (void)evaluate
{
  +[CalculateRequest _lock];
  if ([(CalculateRequest *)self isCanceled])
  {

    +[CalculateRequest _unlock];
  }

  else
  {
    [(CalculateRequest *)self setIsCanceled:1];
    [(CalculateRequest *)self setResult:0];
    [(CalculateRequest *)self setError:0];
    v10 = 0;
    expression = [(CalculateRequest *)self expression];
    options = [(CalculateRequest *)self options];
    v9 = 0;
    v5 = [Calculate evaluate:expression options:options error:&v9 needsUpdate:&v10];
    v6 = v9;

    +[CalculateRequest _unlock];
    resultHandler = [(CalculateRequest *)self resultHandler];

    if (resultHandler)
    {
      resultHandler2 = [(CalculateRequest *)self resultHandler];
      (resultHandler2)[2](resultHandler2, v5, v6);
    }
  }
}

+ (id)serialQueue
{
  if (serialQueue_onceToken != -1)
  {
    dispatch_once(&serialQueue_onceToken, &__block_literal_global_912);
  }

  v3 = serialQueue_queue;

  return v3;
}

uint64_t __31__CalculateRequest_serialQueue__block_invoke()
{
  serialQueue_queue = dispatch_queue_create("com.apple.framework.calculate.evaluate", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_lock
{
  if (_lock_onceToken[0] != -1)
  {
    dispatch_once(_lock_onceToken, &__block_literal_global_909);
  }

  v3 = calculateRequestLock;

  [v3 lock];
}

uint64_t __25__CalculateRequest__lock__block_invoke()
{
  calculateRequestLock = objc_alloc_init(MEMORY[0x1E696AD10]);

  return MEMORY[0x1EEE66BB8]();
}

@end