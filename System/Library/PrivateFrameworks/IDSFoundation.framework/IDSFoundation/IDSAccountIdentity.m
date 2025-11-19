@interface IDSAccountIdentity
- (IDSAccountIdentity)initWithCoder:(id)a3;
- (IDSAccountIdentity)initWithFullCluster:(id)a3;
- (IDSMPFullAccountIdentity)accountIdentity;
- (IDSMPFullServiceIdentityAdmin)adminIdentity;
- (IDSMPFullServiceIdentitySigning)signingIdentity;
- (IDSPublicAccountIdentity)accountPublicKey;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSAccountIdentity

- (IDSAccountIdentity)initWithFullCluster:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSAccountIdentity;
  v6 = [(IDSAccountIdentity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identityCluster, a3);
  }

  return v7;
}

- (IDSPublicAccountIdentity)accountPublicKey
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(IDSAccountIdentity *)self adminIdentity];
  v16 = 0;
  v4 = [v3 publicServiceIdentityAdminWithError:&v16];
  v5 = v16;

  if (v4)
  {
    v6 = [(IDSAccountIdentity *)self signingIdentity];
    v15 = v5;
    v7 = [v6 publicServiceIdentitySigningWithError:&v15];
    v8 = v15;

    if (v7)
    {
      v9 = [(IDSAccountIdentity *)self accountIdentity];
      v14 = v8;
      v10 = [v9 publicAccountIdentityWithError:&v14];
      v5 = v14;

      if (v10)
      {
        v11 = [[IDSPublicAccountIdentity alloc] initWithAccountIdentity:v10 adminIdentity:v4 signingIdentity:v7];
      }

      else
      {
        v12 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v18 = self;
          v19 = 2114;
          v20 = v5;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "Failed to create publicAccountIdentity for IDSPublicAccountIdentity {IDSAccountIdentity: %{public}@, error: %{public}@}", buf, 0x16u);
        }

        v11 = 0;
      }
    }

    else
    {
      v10 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v18 = self;
        v19 = 2114;
        v20 = v8;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Failed to create publicSigningIdentity for IDSPublicAccountIdentity {IDSAccountIdentity: %{public}@, error: %{public}@}", buf, 0x16u);
      }

      v11 = 0;
      v5 = v8;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Failed to create publicAdminIdentity for IDSPublicAccountIdentity {IDSAccountIdentity: %{public}@, error: %{public}@}", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSAccountIdentity *)self accountIdentity];
  v6 = [(IDSAccountIdentity *)self adminIdentity];
  v7 = [(IDSAccountIdentity *)self signingIdentity];
  v8 = [v3 stringWithFormat:@"<%@ %p accountIdentity: %@, adminIdentity: %@, signingIdentity: %@>", v4, self, v5, v6, v7];

  return v8;
}

- (IDSAccountIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSAccountIdentityClusterData"];
  v10 = 0;
  v6 = [IDSMPFullAccountIdentityCluster clusterWithDataRepresentation:v5 error:&v10];
  v7 = v10;
  if (v6)
  {
    v8 = [(IDSAccountIdentity *)self initWithFullCluster:v6];
    self = v8;
  }

  else
  {
    [v4 failWithError:v7];
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSAccountIdentity *)self identityCluster];
  v8 = 0;
  v6 = [v5 dataRepresentationWithError:&v8];
  v7 = v8;

  if (v6)
  {
    [v4 encodeObject:v6 forKey:@"kIDSAccountIdentityClusterData"];
  }

  else
  {
    [v4 failWithError:v7];
  }
}

- (IDSMPFullAccountIdentity)accountIdentity
{
  v2 = [(IDSAccountIdentity *)self identityCluster];
  v3 = [v2 fullAccountIdentity];

  return v3;
}

- (IDSMPFullServiceIdentityAdmin)adminIdentity
{
  v2 = [(IDSAccountIdentity *)self identityCluster];
  v3 = [v2 adminServiceIdentityWithType:1];

  return v3;
}

- (IDSMPFullServiceIdentitySigning)signingIdentity
{
  v2 = [(IDSAccountIdentity *)self identityCluster];
  v3 = [v2 signingServiceIdentityWithType:1];

  return v3;
}

@end