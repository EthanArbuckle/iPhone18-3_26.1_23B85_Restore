@interface PKPushProvisioningSharingMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEncryptedProvisioningTarget:(id)target;
- (PKPushProvisioningSharingMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPushProvisioningSharingMetadata

- (PKPushProvisioningSharingMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPushProvisioningSharingMetadata;
  v5 = [(PKPushProvisioningSharingMetadata *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifierKey"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialHash"];
    provisioningCredentialHash = v5->_provisioningCredentialHash;
    v5->_provisioningCredentialHash = v8;

    v5->_sharingStatus = [coderCopy decodeIntegerForKey:@"status"];
    v5->_source = [coderCopy decodeIntegerForKey:@"source"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialAuthorityIdentifier"];
    credentialAuthorityIdentifier = v5->_credentialAuthorityIdentifier;
    v5->_credentialAuthorityIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdAt"];
    createdAt = v5->_createdAt;
    v5->_createdAt = v12;

    v5->_securityOptions = [coderCopy decodeIntegerForKey:@"securityOptions"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sharingInstanceIdentifier = self->_sharingInstanceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sharingInstanceIdentifier forKey:@"sharingInstanceIdentifierKey"];
  [coderCopy encodeObject:self->_provisioningCredentialHash forKey:@"credentialHash"];
  [coderCopy encodeInteger:self->_sharingStatus forKey:@"status"];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_credentialAuthorityIdentifier forKey:@"credentialAuthorityIdentifier"];
  [coderCopy encodeObject:self->_createdAt forKey:@"createdAt"];
  [coderCopy encodeInteger:self->_securityOptions forKey:@"securityOptions"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPushProvisioningSharingMetadata *)self isEqualToEncryptedProvisioningTarget:v5];
  }

  return v6;
}

- (BOOL)isEqualToEncryptedProvisioningTarget:(id)target
{
  if (!target)
  {
    return 0;
  }

  sharingInstanceIdentifier = self->_sharingInstanceIdentifier;
  v4 = *(target + 1);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sharingInstanceIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_provisioningCredentialHash copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v5[3] = self->_sharingStatus;
  v5[4] = self->_source;
  v10 = [(NSString *)self->_credentialAuthorityIdentifier copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSDate *)self->_createdAt copy];
  v13 = v5[7];
  v5[7] = v12;

  v5[6] = self->_securityOptions;
  return v5;
}

@end