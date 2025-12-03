@interface GKDelayOperation
- (GKDelayOperation)initWithDelay:(double)delay andOperation:(id)operation;
- (void)main;
@end

@implementation GKDelayOperation

- (GKDelayOperation)initWithDelay:(double)delay andOperation:(id)operation
{
  operationCopy = operation;
  v10.receiver = self;
  v10.super_class = GKDelayOperation;
  v7 = [(GKDelayOperation *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(GKDelayOperation *)v7 setDelayInSec:delay];
    [(GKDelayOperation *)v8 setOperation:operationCopy];
  }

  return v8;
}

- (void)main
{
  [(GKDelayOperation *)self delayInSec];
  usleep((v3 * 1000.0 * 1000.0));
  if (([(GKDelayOperation *)self isCancelled]& 1) == 0)
  {
    v4 = *(self->_operation + 2);

    v4();
  }
}

@end