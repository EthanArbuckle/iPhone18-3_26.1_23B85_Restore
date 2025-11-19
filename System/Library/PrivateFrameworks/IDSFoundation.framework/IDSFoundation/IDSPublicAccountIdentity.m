@interface IDSPublicAccountIdentity
- (IDSPublicAccountIdentity)initWithAccountIdentity:(id)a3 adminIdentity:(id)a4 signingIdentity:(id)a5;
- (IDSPublicAccountIdentity)initWithCoder:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPublicAccountIdentity

- (IDSPublicAccountIdentity)initWithAccountIdentity:(id)a3 adminIdentity:(id)a4 signingIdentity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSPublicAccountIdentity;
  v12 = [(IDSPublicAccountIdentity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountIdentity, a3);
    objc_storeStrong(&v13->_adminIdentity, a4);
    objc_storeStrong(&v13->_signingIdentity, a5);
  }

  return v13;
}

- (IDSPublicAccountIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicAccountIdentityAccountData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicAccountIdentityAdminData"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSPublicAccountIdentitySigningData"];
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
      v13 = self;
      v17 = v12;
      v14 = [IDSMPPublicServiceIdentitySigning publicServiceIdentitySigningWithDataRepresentation:"publicServiceIdentitySigningWithDataRepresentation:publicAccountIdentity:error:" publicAccountIdentity:? error:?];
      v9 = v11;

      if (v14)
      {
        v15 = [(IDSPublicAccountIdentity *)v13 initWithAccountIdentity:v8 adminIdentity:v10 signingIdentity:v14];
        v13 = v15;
      }

      else
      {
        [v4 failWithError:v9];
        v15 = 0;
      }

      self = v13;
      v7 = v17;
    }

    else
    {
      [v4 failWithError:v11];
      v15 = 0;
      v9 = v11;
    }
  }

  else
  {
    [v4 failWithError:v9];
    v15 = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSPublicAccountIdentity *)self accountIdentity];
  v15 = 0;
  v6 = [v5 dataRepresentationWithError:&v15];
  v7 = v15;

  if (v6)
  {
    v8 = [(IDSPublicAccountIdentity *)self adminIdentity];
    v14 = v7;
    v9 = [v8 dataRepresentationWithError:&v14];
    v10 = v14;

    if (v9)
    {
      v11 = [(IDSPublicAccountIdentity *)self signingIdentity];
      v13 = v10;
      v12 = [v11 dataRepresentationWithError:&v13];
      v7 = v13;

      if (v12)
      {
        [v4 encodeObject:v6 forKey:@"kIDSPublicAccountIdentityAccountData"];
        [v4 encodeObject:v9 forKey:@"kIDSPublicAccountIdentityAdminData"];
        [v4 encodeObject:v12 forKey:@"kIDSPublicAccountIdentitySigningData"];
      }

      else
      {
        [v4 failWithError:v7];
      }
    }

    else
    {
      [v4 failWithError:v10];
      v7 = v10;
    }
  }

  else
  {
    [v4 failWithError:v7];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSPublicAccountIdentity *)self accountIdentity];
  v6 = [(IDSPublicAccountIdentity *)self adminIdentity];
  v7 = [(IDSPublicAccountIdentity *)self signingIdentity];
  v8 = [v3 stringWithFormat:@"<%@ %p accountIdentity: %@, adminIdentity: %@, signingIdentity: %@>", v4, self, v5, v6, v7];

  return v8;
}

@end