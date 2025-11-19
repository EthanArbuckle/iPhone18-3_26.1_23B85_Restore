@interface HDIDSMessageContext
- (BOOL)isEqual:(id)a3;
- (HDIDSMessageContext)initWithMessageContext:(id)a3;
- (NSString)originalGUID;
@end

@implementation HDIDSMessageContext

- (HDIDSMessageContext)initWithMessageContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDIDSMessageContext;
  v6 = [(HDIDSMessageContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
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
  v6 = v4->_context;
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
  v2 = [(IDSMessageContext *)self->_context originalGUID];
  v3 = [v2 copy];

  return v3;
}

@end