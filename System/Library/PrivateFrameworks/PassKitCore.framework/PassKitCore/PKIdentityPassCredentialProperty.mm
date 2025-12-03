@interface PKIdentityPassCredentialProperty
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPKIdentityPassCredentialProperty:(id)property;
- (PKIdentityPassCredentialProperty)initWithCoder:(id)coder;
- (PKIdentityPassCredentialProperty)initWithPassUniqueIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier subCredentialIdentifier:(id)credentialIdentifier;
- (PKIdentityPassCredentialProperty)initWithPassUniqueIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier subCredentialIdentifier:(id)credentialIdentifier docType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIdentityPassCredentialProperty

- (PKIdentityPassCredentialProperty)initWithPassUniqueIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier subCredentialIdentifier:(id)credentialIdentifier docType:(id)type
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  credentialIdentifierCopy = credentialIdentifier;
  typeCopy = type;
  v18.receiver = self;
  v18.super_class = PKIdentityPassCredentialProperty;
  v15 = [(PKIdentityPassCredentialProperty *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_passUniqueIdentifier, identifier);
    objc_storeStrong(&v16->_applicationIdentifier, applicationIdentifier);
    objc_storeStrong(&v16->_subCredentialIdentifier, credentialIdentifier);
    objc_storeStrong(&v16->_docType, type);
  }

  return v16;
}

- (PKIdentityPassCredentialProperty)initWithPassUniqueIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier subCredentialIdentifier:(id)credentialIdentifier
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  credentialIdentifierCopy = credentialIdentifier;
  v15.receiver = self;
  v15.super_class = PKIdentityPassCredentialProperty;
  v12 = [(PKIdentityPassCredentialProperty *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_passUniqueIdentifier, identifier);
    objc_storeStrong(&v13->_applicationIdentifier, applicationIdentifier);
    objc_storeStrong(&v13->_subCredentialIdentifier, credentialIdentifier);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIdentityPassCredentialProperty *)self isEqualToPKIdentityPassCredentialProperty:v5];
  }

  return v6;
}

- (BOOL)isEqualToPKIdentityPassCredentialProperty:(id)property
{
  propertyCopy = property;
  v5 = propertyCopy[1];
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
    v11 = propertyCopy[2];
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

    v13 = propertyCopy[3];
    v6 = self->_subCredentialIdentifier;
    v14 = v13;
    v8 = v14;
    if (v6 == v14)
    {

LABEL_22:
      docType = self->_docType;
      v16 = propertyCopy[4];
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

- (void)encodeWithCoder:(id)coder
{
  applicationIdentifier = self->_applicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:applicationIdentifier forKey:@"passUniqueIdentifier"];
  [coderCopy encodeObject:self->_passUniqueIdentifier forKey:@"paymentApplicationIdentifier"];
  [coderCopy encodeObject:self->_subCredentialIdentifier forKey:@"subCredentialIdentifier"];
  [coderCopy encodeObject:self->_docType forKey:@"docType"];
}

- (PKIdentityPassCredentialProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKIdentityPassCredentialProperty *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentApplicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subCredentialIdentifier"];
    subCredentialIdentifier = v5->_subCredentialIdentifier;
    v5->_subCredentialIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"docType"];
    docType = v5->_docType;
    v5->_docType = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_passUniqueIdentifier copyWithZone:zone];
  [v5 setPassUniqueIdentifier:v6];

  v7 = [(NSString *)self->_applicationIdentifier copyWithZone:zone];
  [v5 setApplicationIdentifier:v7];

  v8 = [(NSString *)self->_subCredentialIdentifier copyWithZone:zone];
  [v5 setSubCredentialIdentifier:v8];

  v9 = [(NSString *)self->_docType copyWithZone:zone];
  [v5 setDocType:v9];

  return v5;
}

@end