@interface CUTAsyncReducerState
- (void)cancelWithError:(id)error;
- (void)continueWithResult:(id)result;
- (void)stopWithResult:(id)result;
@end

@implementation CUTAsyncReducerState

- (void)continueWithResult:(id)result
{
  resultCopy = result;
  continueBlock = [(CUTAsyncReducerState *)self continueBlock];

  if (!continueBlock)
  {
    sub_1B2330D48(a2, self);
  }

  continueBlock2 = [(CUTAsyncReducerState *)self continueBlock];
  continueBlock2[2](continueBlock2, resultCopy);
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  cancelBlock = [(CUTAsyncReducerState *)self cancelBlock];

  if (!cancelBlock)
  {
    sub_1B2330DC4(a2, self);
  }

  cancelBlock2 = [(CUTAsyncReducerState *)self cancelBlock];
  cancelBlock2[2](cancelBlock2, errorCopy);
}

- (void)stopWithResult:(id)result
{
  resultCopy = result;
  stopBlock = [(CUTAsyncReducerState *)self stopBlock];

  if (!stopBlock)
  {
    sub_1B2330E40(a2, self);
  }

  stopBlock2 = [(CUTAsyncReducerState *)self stopBlock];
  stopBlock2[2](stopBlock2, resultCopy);
}

@end