@interface IDSPublicAccountIdentity
- (IDSPublicAccountIdentity)initWithAccountIdentity:(id)identity adminIdentity:(id)adminIdentity signingIdentity:(id)signingIdentity;
- (IDSPublicAccountIdentity)initWithCoder:(id)coder;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPublicAccountIdentity

- (IDSPublicAccountIdentity)initWithAccountIdentity:(id)identity adminIdentity:(id)adminIdentity signingIdentity:(id)signingIdentity
{
  identityCopy = identity;
  adminIdentityCopy = adminIdentity;
  signingIdentityCopy = signingIdentity;
  v15.receiver = self;
  v15.super_class = IDSPublicAccountIdentity;
  v12 = [(IDSPublicAccountIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountIdentity, identity);
    objc_storeStrong(&v13->_adminIdentity, adminIdentity);
    objc_storeStrong(&v13->_signingIdentity, signingIdentity);
  }

  return v13;
}

- (IDSPublicAccountIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicAccountIdentityAccountData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicAccountIdentityAdminData"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicAccountIdentitySigningData"];
  v19 = 0;
  v8 = [IDSMPPublicAccountIdentity publicAccountIdentitywithDataRepresentation:v5 error:&v19];
  v9 = v19;
  if (v8)
  {
    v18 = v9;
    v10 = [IDSMPPublicServiceIdentityAdmin publicServiceIdentityAdminWithDataRepresentation:v6 publicAccountIdentity:v8 error:&v18];
    v11 = v18;

    if (v10)
    {
      v12 = v7;
      selfCopy = self;
      v17 = v12;
      v14 = [IDSMPPublicServiceIdentitySigning publicServiceIdentitySigningWithDataRepresentation:"publicServiceIdentitySigningWithDataRepresentation:publicAccountIdentity:error:" publicAccountIdentity:? error:?];
      v9 = v11;

      if (v14)
      {
        v15 = [(IDSPublicAccountIdentity *)selfCopy initWithAccountIdentity:v8 adminIdentity:v10 signingIdentity:v14];
        selfCopy = v15;
      }

      else
      {
        [coderCopy failWithError:v9];
        v15 = 0;
      }

      self = selfCopy;
      v7 = v17;
    }

    else
    {
      [coderCopy failWithError:v11];
      v15 = 0;
      v9 = v11;
    }
  }

  else
  {
    [coderCopy failWithError:v9];
    v15 = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountIdentity = [(IDSPublicAccountIdentity *)self accountIdentity];
  v15 = 0;
  v6 = [accountIdentity dataRepresentationWithError:&v15];
  v7 = v15;

  if (v6)
  {
    adminIdentity = [(IDSPublicAccountIdentity *)self adminIdentity];
    v14 = v7;
    v9 = [adminIdentity dataRepresentationWithError:&v14];
    v10 = v14;

    if (v9)
    {
      signingIdentity = [(IDSPublicAccountIdentity *)self signingIdentity];
      v13 = v10;
      v12 = [signingIdentity dataRepresentationWithError:&v13];
      v7 = v13;

      if (v12)
      {
        [coderCopy encodeObject:v6 forKey:@"kIDSPublicAccountIdentityAccountData"];
        [coderCopy encodeObject:v9 forKey:@"kIDSPublicAccountIdentityAdminData"];
        [coderCopy encodeObject:v12 forKey:@"kIDSPublicAccountIdentitySigningData"];
      }

      else
      {
        [coderCopy failWithError:v7];
      }
    }

    else
    {
      [coderCopy failWithError:v10];
      v7 = v10;
    }
  }

  else
  {
    [coderCopy failWithError:v7];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  accountIdentity = [(IDSPublicAccountIdentity *)self accountIdentity];
  adminIdentity = [(IDSPublicAccountIdentity *)self adminIdentity];
  signingIdentity = [(IDSPublicAccountIdentity *)self signingIdentity];
  v8 = [v3 stringWithFormat:@"<%@ %p accountIdentity: %@, adminIdentity: %@, signingIdentity: %@>", v4, self, accountIdentity, adminIdentity, signingIdentity];

  return v8;
}

@end