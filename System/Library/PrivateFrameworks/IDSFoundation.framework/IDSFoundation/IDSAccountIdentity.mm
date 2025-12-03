@interface IDSAccountIdentity
- (IDSAccountIdentity)initWithCoder:(id)coder;
- (IDSAccountIdentity)initWithFullCluster:(id)cluster;
- (IDSMPFullAccountIdentity)accountIdentity;
- (IDSMPFullServiceIdentityAdmin)adminIdentity;
- (IDSMPFullServiceIdentitySigning)signingIdentity;
- (IDSPublicAccountIdentity)accountPublicKey;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSAccountIdentity

- (IDSAccountIdentity)initWithFullCluster:(id)cluster
{
  clusterCopy = cluster;
  v9.receiver = self;
  v9.super_class = IDSAccountIdentity;
  v6 = [(IDSAccountIdentity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identityCluster, cluster);
  }

  return v7;
}

- (IDSPublicAccountIdentity)accountPublicKey
{
  v21 = *MEMORY[0x1E69E9840];
  adminIdentity = [(IDSAccountIdentity *)self adminIdentity];
  v16 = 0;
  v4 = [adminIdentity publicServiceIdentityAdminWithError:&v16];
  v5 = v16;

  if (v4)
  {
    signingIdentity = [(IDSAccountIdentity *)self signingIdentity];
    v15 = v5;
    registration3 = [signingIdentity publicServiceIdentitySigningWithError:&v15];
    v8 = v15;

    if (registration3)
    {
      accountIdentity = [(IDSAccountIdentity *)self accountIdentity];
      v14 = v8;
      registration2 = [accountIdentity publicAccountIdentityWithError:&v14];
      v5 = v14;

      if (registration2)
      {
        v11 = [[IDSPublicAccountIdentity alloc] initWithAccountIdentity:registration2 adminIdentity:v4 signingIdentity:registration3];
      }

      else
      {
        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v19 = 2114;
          v20 = v5;
          _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "Failed to create publicAccountIdentity for IDSPublicAccountIdentity {IDSAccountIdentity: %{public}@, error: %{public}@}", buf, 0x16u);
        }

        v11 = 0;
      }
    }

    else
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v19 = 2114;
        v20 = v8;
        _os_log_impl(&dword_1A7AD9000, registration2, OS_LOG_TYPE_DEFAULT, "Failed to create publicSigningIdentity for IDSPublicAccountIdentity {IDSAccountIdentity: %{public}@, error: %{public}@}", buf, 0x16u);
      }

      v11 = 0;
      v5 = v8;
    }
  }

  else
  {
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_1A7AD9000, registration3, OS_LOG_TYPE_DEFAULT, "Failed to create publicAdminIdentity for IDSPublicAccountIdentity {IDSAccountIdentity: %{public}@, error: %{public}@}", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  accountIdentity = [(IDSAccountIdentity *)self accountIdentity];
  adminIdentity = [(IDSAccountIdentity *)self adminIdentity];
  signingIdentity = [(IDSAccountIdentity *)self signingIdentity];
  v8 = [v3 stringWithFormat:@"<%@ %p accountIdentity: %@, adminIdentity: %@, signingIdentity: %@>", v4, self, accountIdentity, adminIdentity, signingIdentity];

  return v8;
}

- (IDSAccountIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSAccountIdentityClusterData"];
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
    [coderCopy failWithError:v7];
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identityCluster = [(IDSAccountIdentity *)self identityCluster];
  v8 = 0;
  v6 = [identityCluster dataRepresentationWithError:&v8];
  v7 = v8;

  if (v6)
  {
    [coderCopy encodeObject:v6 forKey:@"kIDSAccountIdentityClusterData"];
  }

  else
  {
    [coderCopy failWithError:v7];
  }
}

- (IDSMPFullAccountIdentity)accountIdentity
{
  identityCluster = [(IDSAccountIdentity *)self identityCluster];
  fullAccountIdentity = [identityCluster fullAccountIdentity];

  return fullAccountIdentity;
}

- (IDSMPFullServiceIdentityAdmin)adminIdentity
{
  identityCluster = [(IDSAccountIdentity *)self identityCluster];
  v3 = [identityCluster adminServiceIdentityWithType:1];

  return v3;
}

- (IDSMPFullServiceIdentitySigning)signingIdentity
{
  identityCluster = [(IDSAccountIdentity *)self identityCluster];
  v3 = [identityCluster signingServiceIdentityWithType:1];

  return v3;
}

@end