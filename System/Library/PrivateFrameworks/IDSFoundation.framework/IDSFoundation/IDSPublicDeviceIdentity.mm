@interface IDSPublicDeviceIdentity
- (IDSPublicDeviceIdentity)initWithCoder:(id)coder;
- (IDSPublicDeviceIdentity)initWithPublicLegacyIdentity:(id)identity modernIdentity:(id)modernIdentity accountIdentity:(id)accountIdentity;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPublicDeviceIdentity

- (IDSPublicDeviceIdentity)initWithPublicLegacyIdentity:(id)identity modernIdentity:(id)modernIdentity accountIdentity:(id)accountIdentity
{
  identityCopy = identity;
  modernIdentityCopy = modernIdentity;
  accountIdentityCopy = accountIdentity;
  v15.receiver = self;
  v15.super_class = IDSPublicDeviceIdentity;
  v12 = [(IDSPublicDeviceIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_legacyIdentity, identity);
    objc_storeStrong(&v13->_modernIdentity, modernIdentity);
    objc_storeStrong(&v13->_accountIdentity, accountIdentity);
  }

  return v13;
}

- (IDSPublicDeviceIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicDeviceIdentityLegacy"];
  v17 = 0;
  v6 = [IDSMPPublicLegacyIdentity identityWithData:v5 error:&v17];
  v7 = v17;
  if (v6)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicDeviceIdentityAccount"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicDeviceIdentityModern"];
    v10 = v9;
    if (v8 && v9)
    {
      adminIdentity = [v8 adminIdentity];
      v16 = v7;
      v12 = [IDSMPPublicDeviceIdentity deviceIdentityFromDataRepresentation:v10 publicAdminServiceIdentity:adminIdentity error:&v16];
      v13 = v16;

      if (v12)
      {
        self = [(IDSPublicDeviceIdentity *)self initWithPublicLegacyIdentity:v6 modernIdentity:v12 accountIdentity:v8];
        v7 = v13;
        selfCopy2 = self;
      }

      else
      {
        [coderCopy failWithError:v13];
        v7 = v13;
        selfCopy2 = 0;
      }
    }

    else
    {
      self = [(IDSPublicDeviceIdentity *)self initWithPublicLegacyIdentity:v6 modernIdentity:0 accountIdentity:0];
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
  legacyIdentity = [(IDSPublicDeviceIdentity *)self legacyIdentity];
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

  [coderCopy encodeObject:v6 forKey:@"kIDSPublicDeviceIdentityLegacy"];
  modernIdentity = [(IDSPublicDeviceIdentity *)self modernIdentity];
  if (!modernIdentity)
  {
    goto LABEL_7;
  }

  v9 = modernIdentity;
  accountIdentity = [(IDSPublicDeviceIdentity *)self accountIdentity];

  if (!accountIdentity)
  {
    goto LABEL_7;
  }

  modernIdentity2 = [(IDSPublicDeviceIdentity *)self modernIdentity];
  v15 = v7;
  v12 = [modernIdentity2 dataRepresentationWithError:&v15];
  v13 = v15;

  if (v12)
  {
    [coderCopy encodeObject:v12 forKey:@"kIDSPublicDeviceIdentityModern"];
    accountIdentity2 = [(IDSPublicDeviceIdentity *)self accountIdentity];
    [coderCopy encodeObject:accountIdentity2 forKey:@"kIDSPublicDeviceIdentityAccount"];
  }

  else
  {
    [coderCopy failWithError:v13];
  }

LABEL_10:
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  legacyIdentity = [(IDSPublicDeviceIdentity *)self legacyIdentity];
  modernIdentity = [(IDSPublicDeviceIdentity *)self modernIdentity];
  accountIdentity = [(IDSPublicDeviceIdentity *)self accountIdentity];
  v8 = [v3 stringWithFormat:@"<%@ %p legacyIdentity: %@, modernIdentity: %@, accountIdentity: %@>", v4, self, legacyIdentity, modernIdentity, accountIdentity];

  return v8;
}

@end