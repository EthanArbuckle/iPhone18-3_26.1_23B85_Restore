@interface IDSDeviceIdentity
- (ENDevicePublicKey)devicePublicKey;
- (IDSDeviceIdentity)initWithCoder:(id)a3;
- (IDSDeviceIdentity)initWithLegacyIdentity:(id)a3 modernIdentity:(id)a4 accountIdentity:(id)a5;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSDeviceIdentity

- (IDSDeviceIdentity)initWithLegacyIdentity:(id)a3 modernIdentity:(id)a4 accountIdentity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSDeviceIdentity;
  v12 = [(IDSDeviceIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_legacyIdentity, a3);
    objc_storeStrong(&v13->_modernIdentity, a4);
    objc_storeStrong(&v13->_accountIdentity, a5);
  }

  return v13;
}

- (ENDevicePublicKey)devicePublicKey
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(IDSDeviceIdentity *)self legacyIdentity];
  v14 = 0;
  v4 = [v3 publicIdentityWithError:&v14];
  v5 = v14;

  if (v4)
  {
    v6 = [(IDSDeviceIdentity *)self modernIdentity];
    v13 = v5;
    v7 = [v6 publicDeviceIdentityWithError:&v13];
    v8 = v13;

    if (v7)
    {
      v9 = [(IDSDeviceIdentity *)self accountIdentity];
      v10 = [v9 accountPublicKey];

      v11 = [[IDSPublicDeviceIdentity alloc] initWithPublicLegacyIdentity:v4 modernIdentity:v7 accountIdentity:v10];
    }

    else
    {
      v10 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v16 = self;
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Failed to create modernPublicKey {deviceIdentity: %{public}@, error: %{public}@}", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Failed to create legacyPublicKey {deviceIdentity: %{public}@, error: %{public}@}", buf, 0x16u);
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
  v5 = [(IDSDeviceIdentity *)self legacyIdentity];
  v6 = [(IDSDeviceIdentity *)self modernIdentity];
  v7 = [(IDSDeviceIdentity *)self accountIdentity];
  v8 = [v3 stringWithFormat:@"<%@ %p legacyIdentity: %@, modernIdentity: %@, accountIdentity: %@>", v4, self, v5, v6, v7];

  return v8;
}

- (IDSDeviceIdentity)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDeviceIdentityLegacy"];
  v22 = 0;
  v6 = [IDSMPFullLegacyIdentity identityWithData:v5 error:&v22];
  v7 = v22;
  if (v6)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDeviceIdentityAccount"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDeviceIdentityModern"];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = [v8 adminIdentity];
      v21 = v7;
      v12 = [v11 publicServiceIdentityAdminWithError:&v21];
      v13 = v21;

      if (v12)
      {
        v20 = v13;
        v14 = [IDSMPFullDeviceIdentity deviceIdentityFromDataRepresentation:v10 publicAdminServiceIdentity:v12 error:&v20, v12];
        v15 = v20;

        if (v14)
        {
          self = [(IDSDeviceIdentity *)self initWithLegacyIdentity:v6 modernIdentity:v14 accountIdentity:v8];
          v16 = self;
        }

        else
        {
          [v4 failWithError:v15];
          v16 = 0;
        }

        v13 = v15;
      }

      else
      {
        v17 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v24 = v8;
          v25 = 2114;
          v26 = v13;
          _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Failed to initWithCoder missing publicAdminKey from account {account: %{public}@, error: %{public}@", buf, 0x16u);
        }

        [v4 failWithError:v13];
        v16 = 0;
      }

      v7 = v13;
    }

    else
    {
      self = [(IDSDeviceIdentity *)self initWithLegacyIdentity:v6 modernIdentity:0 accountIdentity:0];
      v16 = self;
    }
  }

  else
  {
    [v4 failWithError:v7];
    v16 = 0;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSDeviceIdentity *)self legacyIdentity];
  v16 = 0;
  v6 = [v5 dataRepresentationWithError:&v16];
  v7 = v16;

  if (!v6)
  {
    [v4 failWithError:v7];
LABEL_7:
    v13 = v7;
    goto LABEL_10;
  }

  [v4 encodeObject:v6 forKey:@"kIDSDeviceIdentityLegacy"];
  v8 = [(IDSDeviceIdentity *)self modernIdentity];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [(IDSDeviceIdentity *)self accountIdentity];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = [(IDSDeviceIdentity *)self modernIdentity];
  v15 = v7;
  v12 = [v11 dataRepresentationWithError:&v15];
  v13 = v15;

  if (v12)
  {
    [v4 encodeObject:v12 forKey:@"kIDSDeviceIdentityModern"];
    v14 = [(IDSDeviceIdentity *)self accountIdentity];
    [v4 encodeObject:v14 forKey:@"kIDSDeviceIdentityAccount"];
  }

  else
  {
    [v4 failWithError:v13];
  }

LABEL_10:
}

@end