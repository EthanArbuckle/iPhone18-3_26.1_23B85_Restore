@interface IDSDeviceIdentity
- (ENDevicePublicKey)devicePublicKey;
- (IDSDeviceIdentity)initWithCoder:(id)coder;
- (IDSDeviceIdentity)initWithLegacyIdentity:(id)identity modernIdentity:(id)modernIdentity accountIdentity:(id)accountIdentity;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSDeviceIdentity

- (IDSDeviceIdentity)initWithLegacyIdentity:(id)identity modernIdentity:(id)modernIdentity accountIdentity:(id)accountIdentity
{
  identityCopy = identity;
  modernIdentityCopy = modernIdentity;
  accountIdentityCopy = accountIdentity;
  v15.receiver = self;
  v15.super_class = IDSDeviceIdentity;
  v12 = [(IDSDeviceIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_legacyIdentity, identity);
    objc_storeStrong(&v13->_modernIdentity, modernIdentity);
    objc_storeStrong(&v13->_accountIdentity, accountIdentity);
  }

  return v13;
}

- (ENDevicePublicKey)devicePublicKey
{
  v19 = *MEMORY[0x1E69E9840];
  legacyIdentity = [(IDSDeviceIdentity *)self legacyIdentity];
  v14 = 0;
  v4 = [legacyIdentity publicIdentityWithError:&v14];
  v5 = v14;

  if (v4)
  {
    modernIdentity = [(IDSDeviceIdentity *)self modernIdentity];
    v13 = v5;
    registration = [modernIdentity publicDeviceIdentityWithError:&v13];
    v8 = v13;

    if (registration)
    {
      accountIdentity = [(IDSDeviceIdentity *)self accountIdentity];
      accountPublicKey = [accountIdentity accountPublicKey];

      v11 = [[IDSPublicDeviceIdentity alloc] initWithPublicLegacyIdentity:v4 modernIdentity:registration accountIdentity:accountPublicKey];
    }

    else
    {
      accountPublicKey = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(accountPublicKey, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&dword_1A7AD9000, accountPublicKey, OS_LOG_TYPE_DEFAULT, "Failed to create modernPublicKey {deviceIdentity: %{public}@, error: %{public}@}", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "Failed to create legacyPublicKey {deviceIdentity: %{public}@, error: %{public}@}", buf, 0x16u);
    }

    v11 = 0;
    v8 = v5;
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  legacyIdentity = [(IDSDeviceIdentity *)self legacyIdentity];
  modernIdentity = [(IDSDeviceIdentity *)self modernIdentity];
  accountIdentity = [(IDSDeviceIdentity *)self accountIdentity];
  v8 = [v3 stringWithFormat:@"<%@ %p legacyIdentity: %@, modernIdentity: %@, accountIdentity: %@>", v4, self, legacyIdentity, modernIdentity, accountIdentity];

  return v8;
}

- (IDSDeviceIdentity)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDeviceIdentityLegacy"];
  v22 = 0;
  v6 = [IDSMPFullLegacyIdentity identityWithData:v5 error:&v22];
  v7 = v22;
  if (v6)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDeviceIdentityAccount"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDeviceIdentityModern"];
    v10 = v9;
    if (v8 && v9)
    {
      adminIdentity = [v8 adminIdentity];
      v21 = v7;
      v12 = [adminIdentity publicServiceIdentityAdminWithError:&v21];
      v13 = v21;

      if (v12)
      {
        v20 = v13;
        v14 = [IDSMPFullDeviceIdentity deviceIdentityFromDataRepresentation:v10 publicAdminServiceIdentity:v12 error:&v20, v12];
        v15 = v20;

        if (v14)
        {
          self = [(IDSDeviceIdentity *)self initWithLegacyIdentity:v6 modernIdentity:v14 accountIdentity:v8];
          selfCopy2 = self;
        }

        else
        {
          [coderCopy failWithError:v15];
          selfCopy2 = 0;
        }

        v13 = v15;
      }

      else
      {
        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v24 = v8;
          v25 = 2114;
          v26 = v13;
          _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "Failed to initWithCoder missing publicAdminKey from account {account: %{public}@, error: %{public}@", buf, 0x16u);
        }

        [coderCopy failWithError:v13];
        selfCopy2 = 0;
      }

      v7 = v13;
    }

    else
    {
      self = [(IDSDeviceIdentity *)self initWithLegacyIdentity:v6 modernIdentity:0 accountIdentity:0];
      selfCopy2 = self;
    }
  }

  else
  {
    [coderCopy failWithError:v7];
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  legacyIdentity = [(IDSDeviceIdentity *)self legacyIdentity];
  v16 = 0;
  v6 = [legacyIdentity dataRepresentationWithError:&v16];
  v7 = v16;

  if (!v6)
  {
    [coderCopy failWithError:v7];
LABEL_7:
    v13 = v7;
    goto LABEL_10;
  }

  [coderCopy encodeObject:v6 forKey:@"kIDSDeviceIdentityLegacy"];
  modernIdentity = [(IDSDeviceIdentity *)self modernIdentity];
  if (!modernIdentity)
  {
    goto LABEL_7;
  }

  v9 = modernIdentity;
  accountIdentity = [(IDSDeviceIdentity *)self accountIdentity];

  if (!accountIdentity)
  {
    goto LABEL_7;
  }

  modernIdentity2 = [(IDSDeviceIdentity *)self modernIdentity];
  v15 = v7;
  v12 = [modernIdentity2 dataRepresentationWithError:&v15];
  v13 = v15;

  if (v12)
  {
    [coderCopy encodeObject:v12 forKey:@"kIDSDeviceIdentityModern"];
    accountIdentity2 = [(IDSDeviceIdentity *)self accountIdentity];
    [coderCopy encodeObject:accountIdentity2 forKey:@"kIDSDeviceIdentityAccount"];
  }

  else
  {
    [coderCopy failWithError:v13];
  }

LABEL_10:
}

@end