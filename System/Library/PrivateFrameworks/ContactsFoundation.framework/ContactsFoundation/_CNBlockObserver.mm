@interface _CNBlockObserver
- (_CNBlockObserver)initWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation _CNBlockObserver

- (void)observerDidComplete
{
  [(CNObservableContractEnforcement *)self->_enforcement observerDidComplete];
  v3 = *(self->_completionBlock + 2);

  v3();
}

- (_CNBlockObserver)initWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  failureBlockCopy = failureBlock;
  v22.receiver = self;
  v22.super_class = _CNBlockObserver;
  v11 = [(_CNBlockObserver *)&v22 init];
  if (v11)
  {
    if (!blockCopy)
    {
      blockCopy = &__block_literal_global_85;
    }

    if (!completionBlockCopy)
    {
      completionBlockCopy = &__block_literal_global_3_2;
    }

    if (!failureBlockCopy)
    {
      failureBlockCopy = &__block_literal_global_6;
    }

    v12 = [blockCopy copy];
    resultBlock = v11->_resultBlock;
    v11->_resultBlock = v12;

    v14 = [completionBlockCopy copy];
    completionBlock = v11->_completionBlock;
    v11->_completionBlock = v14;

    v16 = [failureBlockCopy copy];
    failureBlock = v11->_failureBlock;
    v11->_failureBlock = v16;

    v18 = objc_alloc_init(CNObservableContractEnforcement);
    enforcement = v11->_enforcement;
    v11->_enforcement = v18;

    v20 = v11;
  }

  return v11;
}

- (void)observerDidReceiveResult:(id)result
{
  resultCopy = result;
  v5 = +[CNObservableContractEnforcement shouldSwizzleNilResults];
  if (!resultCopy && v5)
  {
    v6 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNBehaviorSubject observerDidReceiveResult:v6];
    }

    v7 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CNBehaviorSubject observerDidReceiveResult:v7];
    }

    resultCopy = [MEMORY[0x1E695DFB0] null];
  }

  [(CNObservableContractEnforcement *)self->_enforcement observerDidReceiveResult:resultCopy];
  (*(self->_resultBlock + 2))();
}

- (void)observerDidFailWithError:(id)error
{
  enforcement = self->_enforcement;
  errorCopy = error;
  [(CNObservableContractEnforcement *)enforcement observerDidFailWithError:errorCopy];
  (*(self->_failureBlock + 2))();
}

@end