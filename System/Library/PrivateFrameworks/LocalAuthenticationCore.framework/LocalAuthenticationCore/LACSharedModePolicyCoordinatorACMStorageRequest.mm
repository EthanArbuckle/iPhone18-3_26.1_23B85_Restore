@interface LACSharedModePolicyCoordinatorACMStorageRequest
- (BOOL)isEqual:(id)equal;
- (LACSharedModePolicyCoordinatorACMStorageRequest)initWithKey:(int64_t)key BOOLValue:(BOOL)value;
@end

@implementation LACSharedModePolicyCoordinatorACMStorageRequest

- (LACSharedModePolicyCoordinatorACMStorageRequest)initWithKey:(int64_t)key BOOLValue:(BOOL)value
{
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = LACSharedModePolicyCoordinatorACMStorageRequest;
  v5 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v5->_domain = 0;
    v5->_key = key;
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:&valueCopy length:1];
    value = v6->_value;
    v6->_value = v7;

    acl = v6->_acl;
    v6->_acl = 0;

    v10 = [LACXPCClient alloc];
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v12 = [(LACXPCClient *)v10 initWithConnection:currentConnection];
    client = v6->_client;
    v6->_client = v12;

    contextID = v6->_contextID;
    v6->_contextID = 0;

    v15 = identifierCounter++;
    v6->_identifier = v15;
    options = v6->_options;
    v6->_options = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self identifier];
    if (identifier != [v5 identifier])
    {
      goto LABEL_12;
    }

    v7 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self key];
    if (v7 != [v5 key])
    {
      goto LABEL_12;
    }

    domain = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self domain];
    if (domain != [v5 domain])
    {
      goto LABEL_12;
    }

    v9 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self acl];
    v10 = [v5 acl];
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self acl];
      v13 = [v5 acl];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_12;
      }
    }

    contextID = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self contextID];
    contextID2 = [v5 contextID];
    v18 = contextID2;
    if (contextID == contextID2)
    {
    }

    else
    {
      contextID3 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self contextID];
      contextID4 = [v5 contextID];
      v21 = [contextID3 isEqual:contextID4];

      if (!v21)
      {
LABEL_12:
        v15 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    value = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self value];
    value2 = [v5 value];
    if (value == value2)
    {
      v15 = 1;
    }

    else
    {
      value3 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self value];
      value4 = [v5 value];
      v15 = [value3 isEqual:value4];
    }

    goto LABEL_13;
  }

  v15 = 0;
LABEL_14:

  return v15 & 1;
}

@end