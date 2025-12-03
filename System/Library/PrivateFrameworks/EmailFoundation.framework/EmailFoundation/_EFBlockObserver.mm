@interface _EFBlockObserver
- (_EFBlockObserver)initWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)error;
- (void)observerDidReceiveResult:(id)result;
@end

@implementation _EFBlockObserver

- (void)observerDidComplete
{
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2]();
  }
}

- (_EFBlockObserver)initWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  failureBlockCopy = failureBlock;
  v19.receiver = self;
  v19.super_class = _EFBlockObserver;
  v11 = [(_EFBlockObserver *)&v19 init];
  if (v11)
  {
    v12 = _Block_copy(blockCopy);
    resultBlock = v11->_resultBlock;
    v11->_resultBlock = v12;

    v14 = _Block_copy(completionBlockCopy);
    completionBlock = v11->_completionBlock;
    v11->_completionBlock = v14;

    v16 = _Block_copy(failureBlockCopy);
    failureBlock = v11->_failureBlock;
    v11->_failureBlock = v16;
  }

  return v11;
}

- (void)observerDidReceiveResult:(id)result
{
  resultCopy = result;
  resultBlock = self->_resultBlock;
  if (resultBlock)
  {
    resultBlock[2](resultBlock, resultCopy);
  }
}

- (void)observerDidFailWithError:(id)error
{
  errorCopy = error;
  failureBlock = self->_failureBlock;
  if (failureBlock)
  {
    failureBlock[2](failureBlock, errorCopy);
  }
}

@end