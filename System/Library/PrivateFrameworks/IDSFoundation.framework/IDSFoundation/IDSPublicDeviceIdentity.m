@interface IDSPublicDeviceIdentity
- (IDSPublicDeviceIdentity)initWithCoder:(id)a3;
- (IDSPublicDeviceIdentity)initWithPublicLegacyIdentity:(id)a3 modernIdentity:(id)a4 accountIdentity:(id)a5;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPublicDeviceIdentity

- (IDSPublicDeviceIdentity)initWithPublicLegacyIdentity:(id)a3 modernIdentity:(id)a4 accountIdentity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSPublicDeviceIdentity;
  v12 = [(IDSPublicDeviceIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_legacyIdentity, a3);
    objc_storeStrong(&v13->_modernIdentity, a4);
    objc_storeStrong(&v13->_accountIdentity, a5);
  }

  return v13;
}

- (IDSPublicDeviceIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicDeviceIdentityLegacy"];
  v17 = 0;
  v6 = [IDSMPPublicLegacyIdentity identityWithData:v5 error:&v17];
  v7 = v17;
  if (v6)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicDeviceIdentityAccount"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicDeviceIdentityModern"];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = [v8 adminIdentity];
      v16 = v7;
      v12 = [IDSMPPublicDeviceIdentity deviceIdentityFromDataRepresentation:v10 publicAdminServiceIdentity:v11 error:&v16];
      v13 = v16;

      if (v12)
      {
        self = [(IDSPublicDeviceIdentity *)self initWithPublicLegacyIdentity:v6 modernIdentity:v12 accountIdentity:v8];
        v7 = v13;
        v14 = self;
      }

      else
      {
        [v4 failWithError:v13];
        v7 = v13;
        v14 = 0;
      }
    }

    else
    {
      self = [(IDSPublicDeviceIdentity *)self initWithPublicLegacyIdentity:v6 modernIdentity:0 accountIdentity:0];
      v14 = self;
    }
  }

  else
  {
    [v4 failWithError:v7];
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSPublicDeviceIdentity *)self legacyIdentity];
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

  [v4 encodeObject:v6 forKey:@"kIDSPublicDeviceIdentityLegacy"];
  v8 = [(IDSPublicDeviceIdentity *)self modernIdentity];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [(IDSPublicDeviceIdentity *)self accountIdentity];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = [(IDSPublicDeviceIdentity *)self modernIdentity];
  v15 = v7;
  v12 = [v11 dataRepresentationWithError:&v15];
  v13 = v15;

  if (v12)
  {
    [v4 encodeObject:v12 forKey:@"kIDSPublicDeviceIdentityModern"];
    v14 = [(IDSPublicDeviceIdentity *)self accountIdentity];
    [v4 encodeObject:v14 forKey:@"kIDSPublicDeviceIdentityAccount"];
  }

  else
  {
    [v4 failWithError:v13];
  }

LABEL_10:
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSPublicDeviceIdentity *)self legacyIdentity];
  v6 = [(IDSPublicDeviceIdentity *)self modernIdentity];
  v7 = [(IDSPublicDeviceIdentity *)self accountIdentity];
  v8 = [v3 stringWithFormat:@"<%@ %p legacyIdentity: %@, modernIdentity: %@, accountIdentity: %@>", v4, self, v5, v6, v7];

  return v8;
}

@end