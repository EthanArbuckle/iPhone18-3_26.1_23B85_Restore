@interface CoreDAVMoveTask
- (id)additionalHeaderValues;
- (id)description;
- (void)_callBackToDelegateWithResponses:(id)responses error:(id)error;
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

  previousETag = [(CoreDAVMoveTask *)self previousETag];
  [v3 appendFormat:@"| Previous ETag: [%@]", previousETag];

  [v3 appendFormat:@"]"];

  return v3;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7.receiver = self;
  v7.super_class = CoreDAVMoveTask;
  additionalHeaderValues = [(CoreDAVCopyOrMoveTask *)&v7 additionalHeaderValues];
  [v3 addEntriesFromDictionary:additionalHeaderValues];

  previousETag = [(CoreDAVMoveTask *)self previousETag];
  if (previousETag)
  {
    [v3 setObject:previousETag forKey:@"If-Match"];
  }

  return v3;
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
    [delegate2 moveTask:self parsedResponses:responsesCopy error:errorCopy];

    [(CoreDAVTask *)self setDelegate:0];
  }
}

@end