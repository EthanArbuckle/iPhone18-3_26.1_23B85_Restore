@interface CoreDAVCopyTask
- (BOOL)validate:(id *)a3;
- (void)_callBackToDelegateWithResponses:(id)a3 error:(id)a4;
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

- (BOOL)validate:(id *)a3
{
  v9.receiver = self;
  v9.super_class = CoreDAVCopyTask;
  LODWORD(v5) = [(CoreDAVTask *)&v9 validate:?];
  if (v5)
  {
    LODWORD(v5) = [(CoreDAVTask *)self depth];
    v6 = v5 >= 3;
    LOBYTE(v5) = v5 < 3;
    if (a3)
    {
      if (v6)
      {
        v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:5 userInfo:0];
        v5 = v7;
        LOBYTE(v5) = 0;
        *a3 = v7;
      }
    }
  }

  return v5;
}

- (void)_callBackToDelegateWithResponses:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CoreDAVTask *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CoreDAVTask *)self delegate];
    [v9 copyTask:self parsedResponses:v10 error:v6];

    [(CoreDAVTask *)self setDelegate:0];
  }
}

@end