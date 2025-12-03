@interface LNConnectionActionResponse
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (LNConnectionActionResponse)initWithBSXPCCoder:(id)coder;
- (LNConnectionActionResponse)initWithCoder:(id)coder;
- (LNConnectionActionResponse)initWithXPCListenerEndpoint:(id)endpoint auditToken:(id *)token;
- (NSString)description;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNConnectionActionResponse

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  listenerEndpoint = [(LNConnectionActionResponse *)self listenerEndpoint];
  v7 = [v3 stringWithFormat:@"<%@: %p, listenerEndpoint: %@>", v5, self, listenerEndpoint];

  return v7;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *self[1].var0;
  *retstr->var0 = *&self->var0[4];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  listenerEndpoint = [(LNConnectionActionResponse *)self listenerEndpoint];
  _endpoint = [listenerEndpoint _endpoint];
  [coderCopy encodeXPCObject:_endpoint forKey:@"listenerEndpoint"];

  v7 = MEMORY[0x1E695DEF0];
  [(LNConnectionActionResponse *)self auditToken];
  v8 = [v7 if_dataWithAuditToken:&v9];
  [coderCopy encodeObject:v8 forKey:@"auditToken"];
}

- (LNConnectionActionResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"listenerEndpoint"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
    v7 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    [v7 _setEndpoint:v5];
    if (v6)
    {
      [v6 if_auditToken];
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    self = [(LNConnectionActionResponse *)self initWithXPCListenerEndpoint:v7 auditToken:v10];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNConnectionActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v11);
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listenerEndpoint"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    [v6 if_auditToken];
    self = [(LNConnectionActionResponse *)self initWithXPCListenerEndpoint:v5 auditToken:&v12];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = MEMORY[0x1E695DEF0];
  [(LNConnectionActionResponse *)self auditToken];
  v6 = [v5 if_dataWithAuditToken:&v9];
  [coderCopy encodeObject:v6 forKey:@"auditToken"];

  listenerEndpoint = [(LNConnectionActionResponse *)self listenerEndpoint];
  [coderCopy encodeObject:listenerEndpoint forKey:@"listenerEndpoint"];
}

- (LNConnectionActionResponse)initWithXPCListenerEndpoint:(id)endpoint auditToken:(id *)token
{
  endpointCopy = endpoint;
  v13.receiver = self;
  v13.super_class = LNConnectionActionResponse;
  v8 = [(LNConnectionActionResponse *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_listenerEndpoint, endpoint);
    v10 = *&token->var0[4];
    *v9->_auditToken.val = *token->var0;
    *&v9->_auditToken.val[4] = v10;
    v11 = v9;
  }

  return v9;
}

@end