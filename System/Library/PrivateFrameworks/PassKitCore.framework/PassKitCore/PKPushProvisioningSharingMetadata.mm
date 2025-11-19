@interface PKPushProvisioningSharingMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEncryptedProvisioningTarget:(id)a3;
- (PKPushProvisioningSharingMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPushProvisioningSharingMetadata

- (PKPushProvisioningSharingMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPushProvisioningSharingMetadata;
  v5 = [(PKPushProvisioningSharingMetadata *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifierKey"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialHash"];
    provisioningCredentialHash = v5->_provisioningCredentialHash;
    v5->_provisioningCredentialHash = v8;

    v5->_sharingStatus = [v4 decodeIntegerForKey:@"status"];
    v5->_source = [v4 decodeIntegerForKey:@"source"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialAuthorityIdentifier"];
    credentialAuthorityIdentifier = v5->_credentialAuthorityIdentifier;
    v5->_credentialAuthorityIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createdAt"];
    createdAt = v5->_createdAt;
    v5->_createdAt = v12;

    v5->_securityOptions = [v4 decodeIntegerForKey:@"securityOptions"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sharingInstanceIdentifier = self->_sharingInstanceIdentifier;
  v5 = a3;
  [v5 encodeObject:sharingInstanceIdentifier forKey:@"sharingInstanceIdentifierKey"];
  [v5 encodeObject:self->_provisioningCredentialHash forKey:@"credentialHash"];
  [v5 encodeInteger:self->_sharingStatus forKey:@"status"];
  [v5 encodeInteger:self->_source forKey:@"source"];
  [v5 encodeObject:self->_credentialAuthorityIdentifier forKey:@"credentialAuthorityIdentifier"];
  [v5 encodeObject:self->_createdAt forKey:@"createdAt"];
  [v5 encodeInteger:self->_securityOptions forKey:@"securityOptions"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPushProvisioningSharingMetadata *)self isEqualToEncryptedProvisioningTarget:v5];
  }

  return v6;
}

- (BOOL)isEqualToEncryptedProvisioningTarget:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  sharingInstanceIdentifier = self->_sharingInstanceIdentifier;
  v4 = *(a3 + 1);
  if (sharingInstanceIdentifier)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return sharingInstanceIdentifier == v4;
  }

  else
  {
    return [(NSString *)sharingInstanceIdentifier isEqual:?];
  }
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_sharingInstanceIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"sharingIdentifier: '%@'; ", self->_sharingInstanceIdentifier];
  [v3 appendFormat:@"provisioningCredentialHash: '%@'; ", self->_provisioningCredentialHash];
  [v3 appendFormat:@"sharingStatus: '%lu'; ", self->_sharingStatus];
  [v3 appendFormat:@"source: '%lu'; ", self->_source];
  [v3 appendFormat:@"credentialAuthority: '%@'; ", self->_credentialAuthorityIdentifier];
  [v3 appendFormat:@"createdAt: '%@'; ", self->_createdAt];
  [v3 appendFormat:@"securityOptions: '%lu'; ", self->_securityOptions];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sharingInstanceIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_provisioningCredentialHash copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v5[3] = self->_sharingStatus;
  v5[4] = self->_source;
  v10 = [(NSString *)self->_credentialAuthorityIdentifier copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSDate *)self->_createdAt copy];
  v13 = v5[7];
  v5[7] = v12;

  v5[6] = self->_securityOptions;
  return v5;
}

@end