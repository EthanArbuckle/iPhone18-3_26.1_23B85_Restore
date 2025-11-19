@interface BRFileProvidingOperation
- (BRFileProvidingOperation)initWithURL:(id)a3 readingOptions:(unint64_t)a4;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRFileProvidingOperation

- (BRFileProvidingOperation)initWithURL:(id)a3 readingOptions:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BRFileProvidingOperation;
  v8 = [(BROperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_url, a3);
    v9->_readingOptions = a4;
    [(BROperation *)v9 setWaitForRemoteToBeCancelled:1];
  }

  return v9;
}

- (void)main
{
  v3 = [MEMORY[0x1E696ABC0] brc_errorOperationNotImplemented:self];
  [(BROperation *)self completedWithResult:0 error:v3];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BRFileProvidingOperation *)self fileProvidingCompletion];
  (v8)[2](v8, v6);

  [(BRFileProvidingOperation *)self setFileProvidingCompletion:0];
  v9.receiver = self;
  v9.super_class = BRFileProvidingOperation;
  [(BROperation *)&v9 finishWithResult:v7 error:v6];
}

@end