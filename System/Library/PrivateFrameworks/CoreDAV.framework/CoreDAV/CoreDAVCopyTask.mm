@interface CoreDAVCopyTask
- (BOOL)validate:(id *)validate;
- (void)_callBackToDelegateWithResponses:(id)responses error:(id)error;
- (void)dealloc;
@end

@implementation CoreDAVCopyTask

- (void)dealloc
{
  [(CoreDAVTask *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = CoreDAVCopyTask;
  [(CoreDAVTask *)&v3 dealloc];
}

- (BOOL)validate:(id *)validate
{
  v9.receiver = self;
  v9.super_class = CoreDAVCopyTask;
  LODWORD(v5) = [(CoreDAVTask *)&v9 validate:?];
  if (v5)
  {
    LODWORD(v5) = [(CoreDAVTask *)self depth];
    v6 = v5 >= 3;
    LOBYTE(v5) = v5 < 3;
    if (validate)
    {
      if (v6)
      {
        v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:5 userInfo:0];
        v5 = v7;
        LOBYTE(v5) = 0;
        *validate = v7;
      }
    }
  }

  return v5;
}

- (void)_callBackToDelegateWithResponses:(id)responses error:(id)error
{
  responsesCopy = responses;
  errorCopy = error;
  delegate = [(CoreDAVTask *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CoreDAVTask *)self delegate];
    [delegate2 copyTask:self parsedResponses:responsesCopy error:errorCopy];

    [(CoreDAVTask *)self setDelegate:0];
  }
}

@end