@interface _EFBlockObserver
- (_EFBlockObserver)initWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
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

- (_EFBlockObserver)initWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _EFBlockObserver;
  v11 = [(_EFBlockObserver *)&v19 init];
  if (v11)
  {
    v12 = _Block_copy(v8);
    resultBlock = v11->_resultBlock;
    v11->_resultBlock = v12;

    v14 = _Block_copy(v9);
    completionBlock = v11->_completionBlock;
    v11->_completionBlock = v14;

    v16 = _Block_copy(v10);
    failureBlock = v11->_failureBlock;
    v11->_failureBlock = v16;
  }

  return v11;
}

- (void)observerDidReceiveResult:(id)a3
{
  v5 = a3;
  resultBlock = self->_resultBlock;
  if (resultBlock)
  {
    resultBlock[2](resultBlock, v5);
  }
}

- (void)observerDidFailWithError:(id)a3
{
  v5 = a3;
  failureBlock = self->_failureBlock;
  if (failureBlock)
  {
    failureBlock[2](failureBlock, v5);
  }
}

@end