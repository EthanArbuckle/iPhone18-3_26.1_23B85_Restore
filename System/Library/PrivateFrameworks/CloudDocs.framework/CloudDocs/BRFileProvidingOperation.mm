@interface BRFileProvidingOperation
- (BRFileProvidingOperation)initWithURL:(id)l readingOptions:(unint64_t)options;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRFileProvidingOperation

- (BRFileProvidingOperation)initWithURL:(id)l readingOptions:(unint64_t)options
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = BRFileProvidingOperation;
  v8 = [(BROperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_url, l);
    v9->_readingOptions = options;
    [(BROperation *)v9 setWaitForRemoteToBeCancelled:1];
  }

  return v9;
}

- (void)main
{
  v3 = [MEMORY[0x1E696ABC0] brc_errorOperationNotImplemented:self];
  [(BROperation *)self completedWithResult:0 error:v3];
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  fileProvidingCompletion = [(BRFileProvidingOperation *)self fileProvidingCompletion];
  (fileProvidingCompletion)[2](fileProvidingCompletion, errorCopy);

  [(BRFileProvidingOperation *)self setFileProvidingCompletion:0];
  v9.receiver = self;
  v9.super_class = BRFileProvidingOperation;
  [(BROperation *)&v9 finishWithResult:resultCopy error:errorCopy];
}

@end