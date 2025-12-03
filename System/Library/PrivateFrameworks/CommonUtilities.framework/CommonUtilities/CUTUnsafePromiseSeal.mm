@interface CUTUnsafePromiseSeal
- (CUTUnsafePromiseSeal)init;
- (void)failWithError:(id)error;
- (void)fulfillWithValue:(id)value;
@end

@implementation CUTUnsafePromiseSeal

- (CUTUnsafePromiseSeal)init
{
  v6.receiver = self;
  v6.super_class = CUTUnsafePromiseSeal;
  v2 = [(CUTUnsafePromiseSeal *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_CUTUnsafePromise);
    promise = v2->_promise;
    v2->_promise = &v3->super;
  }

  return v2;
}

- (void)fulfillWithValue:(id)value
{
  valueCopy = value;
  promise = [(CUTUnsafePromiseSeal *)self promise];
  v5 = [[CUTResult alloc] initWithSuccess:valueCopy];

  [promise _fulfillWithResult:v5];
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  promise = [(CUTUnsafePromiseSeal *)self promise];
  v5 = [[CUTResult alloc] initWithError:errorCopy];

  [promise _fulfillWithResult:v5];
}

@end