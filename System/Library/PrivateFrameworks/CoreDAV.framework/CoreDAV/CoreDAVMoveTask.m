@interface CoreDAVMoveTask
- (id)additionalHeaderValues;
- (id)description;
- (void)_callBackToDelegateWithResponses:(id)a3 error:(id)a4;
- (void)dealloc;
@end

@implementation CoreDAVMoveTask

- (void)dealloc
{
  [(CoreDAVTask *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = CoreDAVMoveTask;
  [(CoreDAVTask *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVMoveTask;
  v4 = [(CoreDAVCopyOrMoveTask *)&v7 description];
  [v3 appendFormat:@"[%@ ", v4];

  v5 = [(CoreDAVMoveTask *)self previousETag];
  [v3 appendFormat:@"| Previous ETag: [%@]", v5];

  [v3 appendFormat:@"]"];

  return v3;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7.receiver = self;
  v7.super_class = CoreDAVMoveTask;
  v4 = [(CoreDAVCopyOrMoveTask *)&v7 additionalHeaderValues];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(CoreDAVMoveTask *)self previousETag];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"If-Match"];
  }

  return v3;
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
    [v9 moveTask:self parsedResponses:v10 error:v6];

    [(CoreDAVTask *)self setDelegate:0];
  }
}

@end