@interface LACSharedModePolicyCoordinatorACMStorageRequest
- (BOOL)isEqual:(id)a3;
- (LACSharedModePolicyCoordinatorACMStorageRequest)initWithKey:(int64_t)a3 BOOLValue:(BOOL)a4;
@end

@implementation LACSharedModePolicyCoordinatorACMStorageRequest

- (LACSharedModePolicyCoordinatorACMStorageRequest)initWithKey:(int64_t)a3 BOOLValue:(BOOL)a4
{
  v19 = a4;
  v18.receiver = self;
  v18.super_class = LACSharedModePolicyCoordinatorACMStorageRequest;
  v5 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v5->_domain = 0;
    v5->_key = a3;
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:&v19 length:1];
    value = v6->_value;
    v6->_value = v7;

    acl = v6->_acl;
    v6->_acl = 0;

    v10 = [LACXPCClient alloc];
    v11 = [MEMORY[0x1E696B0B8] currentConnection];
    v12 = [(LACXPCClient *)v10 initWithConnection:v11];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self identifier];
    if (v6 != [v5 identifier])
    {
      goto LABEL_12;
    }

    v7 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self key];
    if (v7 != [v5 key])
    {
      goto LABEL_12;
    }

    v8 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self domain];
    if (v8 != [v5 domain])
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

    v16 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self contextID];
    v17 = [v5 contextID];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self contextID];
      v20 = [v5 contextID];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
LABEL_12:
        v15 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    v23 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self value];
    v24 = [v5 value];
    if (v23 == v24)
    {
      v15 = 1;
    }

    else
    {
      v25 = [(LACSharedModePolicyCoordinatorACMStorageRequest *)self value];
      v26 = [v5 value];
      v15 = [v25 isEqual:v26];
    }

    goto LABEL_13;
  }

  v15 = 0;
LABEL_14:

  return v15 & 1;
}

@end