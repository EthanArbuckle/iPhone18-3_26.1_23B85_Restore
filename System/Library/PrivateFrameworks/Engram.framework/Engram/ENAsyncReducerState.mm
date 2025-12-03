@interface ENAsyncReducerState
- (void)cancelWithError:(id)error;
- (void)continueWithResult:(id)result;
- (void)stopWithResult:(id)result;
@end

@implementation ENAsyncReducerState

- (void)continueWithResult:(id)result
{
  resultCopy = result;
  continueBlock = [(ENAsyncReducerState *)self continueBlock];
  continueBlock[2](continueBlock, resultCopy);
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  cancelBlock = [(ENAsyncReducerState *)self cancelBlock];
  cancelBlock[2](cancelBlock, errorCopy);
}

- (void)stopWithResult:(id)result
{
  resultCopy = result;
  stopBlock = [(ENAsyncReducerState *)self stopBlock];
  stopBlock[2](stopBlock, resultCopy);
}

@end