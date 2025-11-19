@interface CUTAsyncReducerState
- (void)cancelWithError:(id)a3;
- (void)continueWithResult:(id)a3;
- (void)stopWithResult:(id)a3;
@end

@implementation CUTAsyncReducerState

- (void)continueWithResult:(id)a3
{
  v5 = a3;
  v6 = [(CUTAsyncReducerState *)self continueBlock];

  if (!v6)
  {
    sub_1B2330D48(a2, self);
  }

  v7 = [(CUTAsyncReducerState *)self continueBlock];
  v7[2](v7, v5);
}

- (void)cancelWithError:(id)a3
{
  v5 = a3;
  v6 = [(CUTAsyncReducerState *)self cancelBlock];

  if (!v6)
  {
    sub_1B2330DC4(a2, self);
  }

  v7 = [(CUTAsyncReducerState *)self cancelBlock];
  v7[2](v7, v5);
}

- (void)stopWithResult:(id)a3
{
  v5 = a3;
  v6 = [(CUTAsyncReducerState *)self stopBlock];

  if (!v6)
  {
    sub_1B2330E40(a2, self);
  }

  v7 = [(CUTAsyncReducerState *)self stopBlock];
  v7[2](v7, v5);
}

@end