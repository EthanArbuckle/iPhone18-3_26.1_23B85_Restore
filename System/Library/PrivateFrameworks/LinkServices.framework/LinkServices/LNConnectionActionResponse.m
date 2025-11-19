@interface LNConnectionActionResponse
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (LNConnectionActionResponse)initWithBSXPCCoder:(id)a3;
- (LNConnectionActionResponse)initWithCoder:(id)a3;
- (LNConnectionActionResponse)initWithXPCListenerEndpoint:(id)a3 auditToken:(id *)a4;
- (NSString)description;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNConnectionActionResponse

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNConnectionActionResponse *)self listenerEndpoint];
  v7 = [v3 stringWithFormat:@"<%@: %p, listenerEndpoint: %@>", v5, self, v6];

  return v7;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *self[1].var0;
  *retstr->var0 = *&self->var0[4];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNConnectionActionResponse *)self listenerEndpoint];
  v6 = [v5 _endpoint];
  [v4 encodeXPCObject:v6 forKey:@"listenerEndpoint"];

  v7 = MEMORY[0x1E695DEF0];
  [(LNConnectionActionResponse *)self auditToken];
  v8 = [v7 if_dataWithAuditToken:&v9];
  [v4 encodeObject:v8 forKey:@"auditToken"];
}

- (LNConnectionActionResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"listenerEndpoint"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
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

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (LNConnectionActionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v11);
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listenerEndpoint"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
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
    v9 = 0;
  }

  else
  {
    [v6 if_auditToken];
    self = [(LNConnectionActionResponse *)self initWithXPCListenerEndpoint:v5 auditToken:&v12];
    v9 = self;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = MEMORY[0x1E695DEF0];
  [(LNConnectionActionResponse *)self auditToken];
  v6 = [v5 if_dataWithAuditToken:&v9];
  [v4 encodeObject:v6 forKey:@"auditToken"];

  v7 = [(LNConnectionActionResponse *)self listenerEndpoint];
  [v4 encodeObject:v7 forKey:@"listenerEndpoint"];
}

- (LNConnectionActionResponse)initWithXPCListenerEndpoint:(id)a3 auditToken:(id *)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = LNConnectionActionResponse;
  v8 = [(LNConnectionActionResponse *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_listenerEndpoint, a3);
    v10 = *&a4->var0[4];
    *v9->_auditToken.val = *a4->var0;
    *&v9->_auditToken.val[4] = v10;
    v11 = v9;
  }

  return v9;
}

@end