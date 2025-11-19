@interface IDSBatchMessageProcessedContext
- (IDSBatchMessageProcessedContext)initWithBatchMessageContext:(id)a3;
- (IDSBatchMessageProcessedContext)initWithCoder:(id)a3;
@end

@implementation IDSBatchMessageProcessedContext

- (IDSBatchMessageProcessedContext)initWithBatchMessageContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = IDSBatchMessageProcessedContext;
  v6 = [(IDSBatchMessageProcessedContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_batchMessageContext, a3);
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (IDSBatchMessageProcessedContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSBatchMessageProcessedContextBatchMessageContextKey"];

  v6 = [(IDSBatchMessageProcessedContext *)self initWithBatchMessageContext:v5];
  return v6;
}

@end