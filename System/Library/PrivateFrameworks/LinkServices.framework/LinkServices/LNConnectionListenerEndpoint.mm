@interface LNConnectionListenerEndpoint
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (LNConnectionListenerEndpoint)initWithCoder:(id)a3;
- (LNConnectionListenerEndpoint)initWithProcessInstanceIdentifier:(id)a3 bundleIdentifier:(id)a4 xpcListenerEndpoint:(id)a5 auditToken:(id *)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNConnectionListenerEndpoint

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNConnectionListenerEndpoint *)self processInstanceIdentifier];
  v7 = [(LNConnectionListenerEndpoint *)self bundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, processInstanceIdentifier: %@, bundleIdentifier: %@>", v5, self, v6, v7];

  return v8;
}

- (LNConnectionListenerEndpoint)initWithCoder:(id)a3
{
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"LNConnectionListenerEndpoint can only be encoded using an NSXPCCoder" userInfo:0];
    objc_exception_throw(v12);
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processInstanceIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"xpcListenerEndpoint"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    [v8 if_auditToken];
    self = [(LNConnectionListenerEndpoint *)self initWithProcessInstanceIdentifier:v5 bundleIdentifier:v10 xpcListenerEndpoint:v6 auditToken:&v13];

    v9 = self;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"LNConnectionListenerEndpoint can only be encoded using an NSXPCCoder" userInfo:0];
    objc_exception_throw(v10);
  }

  v5 = [(LNConnectionListenerEndpoint *)self processInstanceIdentifier];
  [v4 encodeObject:v5 forKey:@"processInstanceIdentifier"];

  v6 = [(LNConnectionListenerEndpoint *)self bundleIdentifier];
  [v4 encodeObject:v6 forKey:@"bundleIdentifier"];

  v7 = [(LNConnectionListenerEndpoint *)self xpcListenerEndpoint];
  [v4 encodeObject:v7 forKey:@"xpcListenerEndpoint"];

  v8 = MEMORY[0x1E695DEF0];
  [(LNConnectionListenerEndpoint *)self auditToken];
  v9 = [v8 if_dataWithAuditToken:&v11];
  [v4 encodeObject:v9 forKey:@"auditToken"];
}

- (LNConnectionListenerEndpoint)initWithProcessInstanceIdentifier:(id)a3 bundleIdentifier:(id)a4 xpcListenerEndpoint:(id)a5 auditToken:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (v11)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"LNConnectionListenerEndpoint.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"processInstanceIdentifier"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"LNConnectionListenerEndpoint.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"xpcListenerEndpoint"}];

LABEL_3:
  v25.receiver = self;
  v25.super_class = LNConnectionListenerEndpoint;
  v15 = [(LNConnectionListenerEndpoint *)&v25 init];
  if (v15)
  {
    v16 = [v11 copy];
    processInstanceIdentifier = v15->_processInstanceIdentifier;
    v15->_processInstanceIdentifier = v16;

    v18 = [v12 copy];
    bundleIdentifier = v15->_bundleIdentifier;
    v15->_bundleIdentifier = v18;

    objc_storeStrong(&v15->_xpcListenerEndpoint, a5);
    v20 = *&a6->var0[4];
    *v15->_auditToken.val = *a6->var0;
    *&v15->_auditToken.val[4] = v20;
    v21 = v15;
  }

  return v15;
}

@end