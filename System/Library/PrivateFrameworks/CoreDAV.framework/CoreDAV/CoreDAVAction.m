@interface CoreDAVAction
- (CoreDAVAction)initWithAction:(int)a3 context:(id)a4;
- (id)description;
@end

@implementation CoreDAVAction

- (CoreDAVAction)initWithAction:(int)a3 context:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CoreDAVAction;
  v8 = [(CoreDAVAction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_action = a3;
    objc_storeStrong(&v8->_context, a4);
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