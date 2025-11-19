@interface CUTPromiseSeal
- (CUTPromiseSeal)initWithQueue:(id)a3;
- (void)failWithError:(id)a3;
- (void)fulfillWithValue:(id)a3;
@end

@implementation CUTPromiseSeal

- (CUTPromiseSeal)initWithQueue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CUTPromiseSeal;
  v5 = [(CUTPromiseSeal *)&v9 init];
  if (v5)
  {
    v6 = [[_CUTPromise alloc] initWithQueue:v4];
    promise = v5->_promise;
    v5->_promise = &v6->super;
  }

  return v5;
}

- (void)fulfillWithValue:(id)a3
{
  v4 = a3;
  v6 = [(CUTPromiseSeal *)self promise];
  v5 = [[CUTResult alloc] initWithSuccess:v4];

  [v6 _fulfillWithResult:v5];
}

- (void)failWithError:(id)a3
{
  v4 = a3;
  v6 = [(CUTPromiseSeal *)self promise];
  v5 = [[CUTResult alloc] initWithError:v4];

  [v6 _fulfillWithResult:v5];
}

@end