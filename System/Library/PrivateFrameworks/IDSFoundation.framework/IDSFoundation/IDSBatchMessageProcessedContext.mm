@interface IDSBatchMessageProcessedContext
- (IDSBatchMessageProcessedContext)initWithBatchMessageContext:(id)context;
- (IDSBatchMessageProcessedContext)initWithCoder:(id)coder;
@end

@implementation IDSBatchMessageProcessedContext

- (IDSBatchMessageProcessedContext)initWithBatchMessageContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = IDSBatchMessageProcessedContext;
  v6 = [(IDSBatchMessageProcessedContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (!contextCopy)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_batchMessageContext, context);
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (IDSBatchMessageProcessedContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSBatchMessageProcessedContextBatchMessageContextKey"];

  v6 = [(IDSBatchMessageProcessedContext *)self initWithBatchMessageContext:v5];
  return v6;
}

@end