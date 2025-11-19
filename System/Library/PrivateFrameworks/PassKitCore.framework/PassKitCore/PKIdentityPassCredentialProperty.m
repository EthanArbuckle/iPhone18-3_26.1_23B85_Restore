@interface PKIdentityPassCredentialProperty
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPKIdentityPassCredentialProperty:(id)a3;
- (PKIdentityPassCredentialProperty)initWithCoder:(id)a3;
- (PKIdentityPassCredentialProperty)initWithPassUniqueIdentifier:(id)a3 applicationIdentifier:(id)a4 subCredentialIdentifier:(id)a5;
- (PKIdentityPassCredentialProperty)initWithPassUniqueIdentifier:(id)a3 applicationIdentifier:(id)a4 subCredentialIdentifier:(id)a5 docType:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKIdentityPassCredentialProperty

- (PKIdentityPassCredentialProperty)initWithPassUniqueIdentifier:(id)a3 applicationIdentifier:(id)a4 subCredentialIdentifier:(id)a5 docType:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PKIdentityPassCredentialProperty;
  v15 = [(PKIdentityPassCredentialProperty *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_passUniqueIdentifier, a3);
    objc_storeStrong(&v16->_applicationIdentifier, a4);
    objc_storeStrong(&v16->_subCredentialIdentifier, a5);
    objc_storeStrong(&v16->_docType, a6);
  }

  return v16;
}

- (PKIdentityPassCredentialProperty)initWithPassUniqueIdentifier:(id)a3 applicationIdentifier:(id)a4 subCredentialIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKIdentityPassCredentialProperty;
  v12 = [(PKIdentityPassCredentialProperty *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_passUniqueIdentifier, a3);
    objc_storeStrong(&v13->_applicationIdentifier, a4);
    objc_storeStrong(&v13->_subCredentialIdentifier, a5);
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIdentityPassCredentialProperty *)self isEqualToPKIdentityPassCredentialProperty:v5];
  }

  return v6;
}

- (BOOL)isEqualToPKIdentityPassCredentialProperty:(id)a3
{
  v4 = a3;
  v5 = v4[1];
  v6 = self->_passUniqueIdentifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_10;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    LOBYTE(v10) = 0;
    goto LABEL_27;
  }

  v10 = [(NSString *)v6 isEqualToString:v7];

  if (v10)
  {
LABEL_10:
    v11 = v4[2];
    v6 = self->_applicationIdentifier;
    v12 = v11;
    v8 = v12;
    if (v6 == v12)
    {
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v6 || !v12)
      {
        goto LABEL_27;
      }

      v10 = [(NSString *)v6 isEqualToString:v12];

      if (!v10)
      {
        goto LABEL_28;
      }
    }

    v13 = v4[3];
    v6 = self->_subCredentialIdentifier;
    v14 = v13;
    v8 = v14;
    if (v6 == v14)
    {

LABEL_22:
      docType = self->_docType;
      v16 = v4[4];
      v6 = docType;
      v17 = v16;
      v8 = v17;
      if (v6 == v17)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v6 && v17)
        {
          LOBYTE(v10) = [(NSString *)v6 isEqualToString:v17];
        }
      }

      goto LABEL_27;
    }

    LOBYTE(v10) = 0;
    if (v6 && v14)
    {
      v10 = [(NSString *)v6 isEqualToString:v14];

      if (!v10)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

LABEL_27:
  }

LABEL_28:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_passUniqueIdentifier];
  [v3 safelyAddObject:self->_applicationIdentifier];
  [v3 safelyAddObject:self->_subCredentialIdentifier];
  [v3 safelyAddObject:self->_docType];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  applicationIdentifier = self->_applicationIdentifier;
  v5 = a3;
  [v5 encodeObject:applicationIdentifier forKey:@"passUniqueIdentifier"];
  [v5 encodeObject:self->_passUniqueIdentifier forKey:@"paymentApplicationIdentifier"];
  [v5 encodeObject:self->_subCredentialIdentifier forKey:@"subCredentialIdentifier"];
  [v5 encodeObject:self->_docType forKey:@"docType"];
}

- (PKIdentityPassCredentialProperty)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKIdentityPassCredentialProperty *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentApplicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subCredentialIdentifier"];
    subCredentialIdentifier = v5->_subCredentialIdentifier;
    v5->_subCredentialIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"docType"];
    docType = v5->_docType;
    v5->_docType = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_passUniqueIdentifier copyWithZone:a3];
  [v5 setPassUniqueIdentifier:v6];

  v7 = [(NSString *)self->_applicationIdentifier copyWithZone:a3];
  [v5 setApplicationIdentifier:v7];

  v8 = [(NSString *)self->_subCredentialIdentifier copyWithZone:a3];
  [v5 setSubCredentialIdentifier:v8];

  v9 = [(NSString *)self->_docType copyWithZone:a3];
  [v5 setDocType:v9];

  return v5;
}

@end