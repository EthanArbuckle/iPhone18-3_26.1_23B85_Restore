@interface DMTWaitForKVOChangeOperation
- (DMTWaitForKVOChangeOperation)initWithObservedObject:(id)a3 keyPath:(id)a4 expectedValue:(id)a5 requireExpectedValue:(BOOL)a6;
- (void)beginObserving;
- (void)cancel;
- (void)compareExpectedValueWithChangedValue:(id)a3;
- (void)endObservingIfNeeded;
- (void)endOperationAndTearDownWithError:(id)a3 resultObject:(id)a4;
- (void)handleKVOChangeWithValueOfKeyPath:(id)a3;
- (void)main;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DMTWaitForKVOChangeOperation

- (DMTWaitForKVOChangeOperation)initWithObservedObject:(id)a3 keyPath:(id)a4 expectedValue:(id)a5 requireExpectedValue:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = DMTWaitForKVOChangeOperation;
  v14 = [(DMTWaitForKVOChangeOperation *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_observedObject, a3);
    v16 = [v12 copy];
    keyPath = v15->_keyPath;
    v15->_keyPath = v16;

    objc_storeStrong(&v15->_expectedValue, a5);
    v15->_requireExpectedValue = a6;
  }

  return v15;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = DMTWaitForKVOChangeOperation;
  [(DMTWaitForKVOChangeOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DMTWaitForKVOChangeOperation_cancel__block_invoke;
  block[3] = &unk_278F5DEC8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __38__DMTWaitForKVOChangeOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = *(a1 + 32);
    v3 = CATErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v3];
  }
}

- (void)main
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([(DMTWaitForKVOChangeOperation *)self isExecuting])
    {
      if ([(DMTWaitForKVOChangeOperation *)self isCancelled])
      {
        v4 = CATErrorWithCodeAndUserInfo();
        [(DMTWaitForKVOChangeOperation *)self endOperationWithError:v4];
      }

      else
      {

        [(DMTWaitForKVOChangeOperation *)self beginObserving];
      }
    }
  }

  else
  {

    [(DMTWaitForKVOChangeOperation *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)beginObserving
{
  v3 = [(DMTWaitForKVOChangeOperation *)self observedObject];
  v4 = [(DMTWaitForKVOChangeOperation *)self keyPath];
  v5 = [v3 valueForKeyPath:v4];
  [(DMTWaitForKVOChangeOperation *)self setInitialValue:v5];

  [(DMTWaitForKVOChangeOperation *)self setObserving:1];
  v7 = [(DMTWaitForKVOChangeOperation *)self observedObject];
  v6 = [(DMTWaitForKVOChangeOperation *)self keyPath];
  [v7 addObserver:self forKeyPath:v6 options:4 context:@"WaitForKVOChangeContext"];
}

- (void)endObservingIfNeeded
{
  if ([(DMTWaitForKVOChangeOperation *)self isObserving])
  {
    v3 = [(DMTWaitForKVOChangeOperation *)self observedObject];
    v4 = [(DMTWaitForKVOChangeOperation *)self keyPath];
    [v3 removeObserver:self forKeyPath:v4 context:@"WaitForKVOChangeContext"];

    [(DMTWaitForKVOChangeOperation *)self setObserving:0];
  }
}

- (void)handleKVOChangeWithValueOfKeyPath:(id)a3
{
  v10 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(DMTWaitForKVOChangeOperation *)self performSelectorOnMainThread:a2 withObject:v10 waitUntilDone:0];
LABEL_13:
    v9 = v10;
    goto LABEL_14;
  }

  v6 = [(DMTWaitForKVOChangeOperation *)self initialValue];
  if (v6 == v10 || !v10 && ([(DMTWaitForKVOChangeOperation *)self initialValue], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_13;
  }

  v7 = [(DMTWaitForKVOChangeOperation *)self initialValue];
  v8 = [v10 isEqual:v7];

  if (!v10)
  {
  }

  v9 = v10;
  if ((v8 & 1) == 0)
  {
    if ([(DMTWaitForKVOChangeOperation *)self requireExpectedValue])
    {
      [(DMTWaitForKVOChangeOperation *)self compareExpectedValueWithChangedValue:v10];
    }

    else
    {
      [(DMTWaitForKVOChangeOperation *)self endOperationAndTearDownWithError:0 resultObject:0];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)compareExpectedValueWithChangedValue:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v3 = [(DMTWaitForKVOChangeOperation *)self expectedValue];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v6 = [(DMTWaitForKVOChangeOperation *)self expectedValue];
  v7 = [v5 isEqual:v6];

  if (!v5)
  {

    if ((v7 & 1) == 0)
    {
      v14[0] = @"DMTWaitForKVOChangeOperationUnexpectedValue";
      v8 = [MEMORY[0x277CBEB68] null];
      goto LABEL_9;
    }

LABEL_7:
    [(DMTWaitForKVOChangeOperation *)self endOperationAndTearDownWithError:0 resultObject:0];
    goto LABEL_16;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  v14[0] = @"DMTWaitForKVOChangeOperationUnexpectedValue";
  v8 = v5;
LABEL_9:
  v14[1] = @"kDMTWaitForKVOChangeOperationExpectedValue";
  v15[0] = v8;
  v9 = [(DMTWaitForKVOChangeOperation *)self expectedValue];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  if (!v9)
  {
  }

  if (!v5)
  {
  }

  v12 = DMTErrorWithCodeAndUserInfo(3, v11);
  [(DMTWaitForKVOChangeOperation *)self endOperationAndTearDownWithError:v12 resultObject:0];

LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)endOperationAndTearDownWithError:(id)a3 resultObject:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(DMTWaitForKVOChangeOperation *)self endObservingIfNeeded];
  if (v7)
  {
    [(DMTWaitForKVOChangeOperation *)self endOperationWithError:v7];
  }

  else
  {
    [(DMTWaitForKVOChangeOperation *)self endOperationWithResultObject:v6];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  if (a6 == @"WaitForKVOChangeContext")
  {
    v12 = [(DMTWaitForKVOChangeOperation *)self keyPath];
    v13 = [v10 isEqualToString:v12];

    if (v13)
    {
      v14 = [v11 valueForKeyPath:v10];
      [(DMTWaitForKVOChangeOperation *)self handleKVOChangeWithValueOfKeyPath:v14];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = DMTWaitForKVOChangeOperation;
    [(DMTWaitForKVOChangeOperation *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];
  }
}

@end