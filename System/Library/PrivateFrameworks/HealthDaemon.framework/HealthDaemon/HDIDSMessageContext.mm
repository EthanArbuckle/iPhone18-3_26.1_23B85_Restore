@interface HDIDSMessageContext
- (BOOL)isEqual:(id)equal;
- (HDIDSMessageContext)initWithMessageContext:(id)context;
- (NSString)originalGUID;
@end

@implementation HDIDSMessageContext

- (HDIDSMessageContext)initWithMessageContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HDIDSMessageContext;
  v6 = [(HDIDSMessageContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  context = self->_context;
  v6 = equalCopy->_context;
  if (context == v6)
  {
LABEL_6:
    v7 = 1;
    goto LABEL_8;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(IDSMessageContext *)context isEqual:?];
LABEL_8:

  return v7;
}

- (NSString)originalGUID
{
  originalGUID = [(IDSMessageContext *)self->_context originalGUID];
  v3 = [originalGUID copy];

  return v3;
}

@end