@interface IDSTransactionLogTask
- (void)_completeWithError:(id)error;
@end

@implementation IDSTransactionLogTask

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  completionBlock = [(IDSTransactionLogTask *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(IDSTransactionLogTask *)self completionBlock];
    (completionBlock2)[2](completionBlock2, errorCopy);

    [(IDSTransactionLogTask *)self setCompletionBlock:0];
  }
}

@end