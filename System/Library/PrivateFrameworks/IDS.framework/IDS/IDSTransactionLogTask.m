@interface IDSTransactionLogTask
- (void)_completeWithError:(id)a3;
@end

@implementation IDSTransactionLogTask

- (void)_completeWithError:(id)a3
{
  v6 = a3;
  v4 = [(IDSTransactionLogTask *)self completionBlock];

  if (v4)
  {
    v5 = [(IDSTransactionLogTask *)self completionBlock];
    (v5)[2](v5, v6);

    [(IDSTransactionLogTask *)self setCompletionBlock:0];
  }
}

@end