@interface ENAsyncReducerState
- (void)cancelWithError:(id)a3;
- (void)continueWithResult:(id)a3;
- (void)stopWithResult:(id)a3;
@end

@implementation ENAsyncReducerState

- (void)continueWithResult:(id)a3
{
  v4 = a3;
  v5 = [(ENAsyncReducerState *)self continueBlock];
  v5[2](v5, v4);
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  v5 = [(ENAsyncReducerState *)self cancelBlock];
  v5[2](v5, v4);
}

- (void)stopWithResult:(id)a3
{
  v4 = a3;
  v5 = [(ENAsyncReducerState *)self stopBlock];
  v5[2](v5, v4);
}

@end