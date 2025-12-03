@interface DMTWaitForKVOChangeOperation
- (DMTWaitForKVOChangeOperation)initWithObservedObject:(id)object keyPath:(id)path expectedValue:(id)value requireExpectedValue:(BOOL)expectedValue;
- (void)beginObserving;
- (void)cancel;
- (void)compareExpectedValueWithChangedValue:(id)value;
- (void)endObservingIfNeeded;
- (void)endOperationAndTearDownWithError:(id)error resultObject:(id)object;
- (void)handleKVOChangeWithValueOfKeyPath:(id)path;
- (void)main;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation DMTWaitForKVOChangeOperation

- (DMTWaitForKVOChangeOperation)initWithObservedObject:(id)object keyPath:(id)path expectedValue:(id)value requireExpectedValue:(BOOL)expectedValue
{
  objectCopy = object;
  pathCopy = path;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = DMTWaitForKVOChangeOperation;
  v14 = [(DMTWaitForKVOChangeOperation *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_observedObject, object);
    v16 = [pathCopy copy];
    keyPath = v15->_keyPath;
    v15->_keyPath = v16;

    objc_storeStrong(&v15->_expectedValue, value);
    v15->_requireExpectedValue = expectedValue;
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
  observedObject = [(DMTWaitForKVOChangeOperation *)self observedObject];
  keyPath = [(DMTWaitForKVOChangeOperation *)self keyPath];
  v5 = [observedObject valueForKeyPath:keyPath];
  [(DMTWaitForKVOChangeOperation *)self setInitialValue:v5];

  [(DMTWaitForKVOChangeOperation *)self setObserving:1];
  observedObject2 = [(DMTWaitForKVOChangeOperation *)self observedObject];
  keyPath2 = [(DMTWaitForKVOChangeOperation *)self keyPath];
  [observedObject2 addObserver:self forKeyPath:keyPath2 options:4 context:@"WaitForKVOChangeContext"];
}

- (void)endObservingIfNeeded
{
  if ([(DMTWaitForKVOChangeOperation *)self isObserving])
  {
    observedObject = [(DMTWaitForKVOChangeOperation *)self observedObject];
    keyPath = [(DMTWaitForKVOChangeOperation *)self keyPath];
    [observedObject removeObserver:self forKeyPath:keyPath context:@"WaitForKVOChangeContext"];

    [(DMTWaitForKVOChangeOperation *)self setObserving:0];
  }
}

- (void)handleKVOChangeWithValueOfKeyPath:(id)path
{
  pathCopy = path;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(DMTWaitForKVOChangeOperation *)self performSelectorOnMainThread:a2 withObject:pathCopy waitUntilDone:0];
LABEL_13:
    v9 = pathCopy;
    goto LABEL_14;
  }

  initialValue = [(DMTWaitForKVOChangeOperation *)self initialValue];
  if (initialValue == pathCopy || !pathCopy && ([(DMTWaitForKVOChangeOperation *)self initialValue], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_13;
  }

  initialValue2 = [(DMTWaitForKVOChangeOperation *)self initialValue];
  v8 = [pathCopy isEqual:initialValue2];

  if (!pathCopy)
  {
  }

  v9 = pathCopy;
  if ((v8 & 1) == 0)
  {
    if ([(DMTWaitForKVOChangeOperation *)self requireExpectedValue])
    {
      [(DMTWaitForKVOChangeOperation *)self compareExpectedValueWithChangedValue:pathCopy];
    }

    else
    {
      [(DMTWaitForKVOChangeOperation *)self endOperationAndTearDownWithError:0 resultObject:0];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)compareExpectedValueWithChangedValue:(id)value
{
  v15[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!valueCopy)
  {
    expectedValue = [(DMTWaitForKVOChangeOperation *)self expectedValue];
    if (!expectedValue)
    {
      goto LABEL_7;
    }
  }

  expectedValue2 = [(DMTWaitForKVOChangeOperation *)self expectedValue];
  v7 = [valueCopy isEqual:expectedValue2];

  if (!valueCopy)
  {

    if ((v7 & 1) == 0)
    {
      v14[0] = @"DMTWaitForKVOChangeOperationUnexpectedValue";
      null = [MEMORY[0x277CBEB68] null];
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
  null = valueCopy;
LABEL_9:
  v14[1] = @"kDMTWaitForKVOChangeOperationExpectedValue";
  v15[0] = null;
  expectedValue3 = [(DMTWaitForKVOChangeOperation *)self expectedValue];
  null2 = expectedValue3;
  if (!expectedValue3)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v15[1] = null2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  if (!expectedValue3)
  {
  }

  if (!valueCopy)
  {
  }

  v12 = DMTErrorWithCodeAndUserInfo(3, v11);
  [(DMTWaitForKVOChangeOperation *)self endOperationAndTearDownWithError:v12 resultObject:0];

LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)endOperationAndTearDownWithError:(id)error resultObject:(id)object
{
  errorCopy = error;
  objectCopy = object;
  [(DMTWaitForKVOChangeOperation *)self endObservingIfNeeded];
  if (errorCopy)
  {
    [(DMTWaitForKVOChangeOperation *)self endOperationWithError:errorCopy];
  }

  else
  {
    [(DMTWaitForKVOChangeOperation *)self endOperationWithResultObject:objectCopy];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  if (context == @"WaitForKVOChangeContext")
  {
    keyPath = [(DMTWaitForKVOChangeOperation *)self keyPath];
    v13 = [pathCopy isEqualToString:keyPath];

    if (v13)
    {
      v14 = [objectCopy valueForKeyPath:pathCopy];
      [(DMTWaitForKVOChangeOperation *)self handleKVOChangeWithValueOfKeyPath:v14];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = DMTWaitForKVOChangeOperation;
    [(DMTWaitForKVOChangeOperation *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:change context:context];
  }
}

@end