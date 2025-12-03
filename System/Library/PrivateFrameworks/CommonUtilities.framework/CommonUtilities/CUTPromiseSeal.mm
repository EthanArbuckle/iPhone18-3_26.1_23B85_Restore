@interface CUTPromiseSeal
- (CUTPromiseSeal)initWithQueue:(id)queue;
- (void)failWithError:(id)error;
- (void)fulfillWithValue:(id)value;
@end

@implementation CUTPromiseSeal

- (CUTPromiseSeal)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CUTPromiseSeal;
  v5 = [(CUTPromiseSeal *)&v9 init];
  if (v5)
  {
    v6 = [[_CUTPromise alloc] initWithQueue:queueCopy];
    promise = v5->_promise;
    v5->_promise = &v6->super;
  }

  return v5;
}

- (void)fulfillWithValue:(id)value
{
  valueCopy = value;
  promise = [(CUTPromiseSeal *)self promise];
  v5 = [[CUTResult alloc] initWithSuccess:valueCopy];

  [promise _fulfillWithResult:v5];
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  promise = [(CUTPromiseSeal *)self promise];
  v5 = [[CUTResult alloc] initWithError:errorCopy];

  [promise _fulfillWithResult:v5];
}

@end