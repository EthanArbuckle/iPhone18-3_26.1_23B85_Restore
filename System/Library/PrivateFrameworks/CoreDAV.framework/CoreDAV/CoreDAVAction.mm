@interface CoreDAVAction
- (CoreDAVAction)initWithAction:(int)action context:(id)context;
- (id)description;
@end

@implementation CoreDAVAction

- (CoreDAVAction)initWithAction:(int)action context:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = CoreDAVAction;
  v8 = [(CoreDAVAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_action = action;
    objc_storeStrong(&v8->_context, context);
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p> { Change type %d, Context: %@", objc_opt_class(), self, self->_action, self->_context];
  v4 = v3;
  if (self->_changeContext)
  {
    [v3 stringByAppendingFormat:@", ChangeContext: %@ }", self->_changeContext];
  }

  else
  {
    [v3 stringByAppendingString:@" }"];
  }
  v5 = ;

  return v5;
}

@end