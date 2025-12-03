@interface LNConnectionListenerEndpoint
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (LNConnectionListenerEndpoint)initWithCoder:(id)coder;
- (LNConnectionListenerEndpoint)initWithProcessInstanceIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier xpcListenerEndpoint:(id)endpoint auditToken:(id *)token;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  processInstanceIdentifier = [(LNConnectionListenerEndpoint *)self processInstanceIdentifier];
  bundleIdentifier = [(LNConnectionListenerEndpoint *)self bundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, processInstanceIdentifier: %@, bundleIdentifier: %@>", v5, self, processInstanceIdentifier, bundleIdentifier];

  return v8;
}

- (LNConnectionListenerEndpoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!coderCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"LNConnectionListenerEndpoint can only be encoded using an NSXPCCoder" userInfo:0];
    objc_exception_throw(v12);
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processInstanceIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"xpcListenerEndpoint"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auditToken"];
  v8 = v7;
  selfCopy = 0;
  if (v6 && v7)
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    [v8 if_auditToken];
    self = [(LNConnectionListenerEndpoint *)self initWithProcessInstanceIdentifier:v5 bundleIdentifier:v10 xpcListenerEndpoint:v6 auditToken:&v13];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (!coderCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"LNConnectionListenerEndpoint can only be encoded using an NSXPCCoder" userInfo:0];
    objc_exception_throw(v10);
  }

  processInstanceIdentifier = [(LNConnectionListenerEndpoint *)self processInstanceIdentifier];
  [coderCopy encodeObject:processInstanceIdentifier forKey:@"processInstanceIdentifier"];

  bundleIdentifier = [(LNConnectionListenerEndpoint *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  xpcListenerEndpoint = [(LNConnectionListenerEndpoint *)self xpcListenerEndpoint];
  [coderCopy encodeObject:xpcListenerEndpoint forKey:@"xpcListenerEndpoint"];

  v8 = MEMORY[0x1E695DEF0];
  [(LNConnectionListenerEndpoint *)self auditToken];
  v9 = [v8 if_dataWithAuditToken:&v11];
  [coderCopy encodeObject:v9 forKey:@"auditToken"];
}

- (LNConnectionListenerEndpoint)initWithProcessInstanceIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier xpcListenerEndpoint:(id)endpoint auditToken:(id *)token
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  endpointCopy = endpoint;
  v14 = endpointCopy;
  if (identifierCopy)
  {
    if (endpointCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnectionListenerEndpoint.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"processInstanceIdentifier"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNConnectionListenerEndpoint.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"xpcListenerEndpoint"}];

LABEL_3:
  v25.receiver = self;
  v25.super_class = LNConnectionListenerEndpoint;
  v15 = [(LNConnectionListenerEndpoint *)&v25 init];
  if (v15)
  {
    v16 = [identifierCopy copy];
    processInstanceIdentifier = v15->_processInstanceIdentifier;
    v15->_processInstanceIdentifier = v16;

    v18 = [bundleIdentifierCopy copy];
    bundleIdentifier = v15->_bundleIdentifier;
    v15->_bundleIdentifier = v18;

    objc_storeStrong(&v15->_xpcListenerEndpoint, endpoint);
    v20 = *&token->var0[4];
    *v15->_auditToken.val = *token->var0;
    *&v15->_auditToken.val[4] = v20;
    v21 = v15;
  }

  return v15;
}

@end