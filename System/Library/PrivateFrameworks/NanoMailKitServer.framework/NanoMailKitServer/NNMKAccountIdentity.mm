@interface NNMKAccountIdentity
- (NNMKAccountIdentity)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NNMKAccountIdentity

- (NNMKAccountIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = NNMKAccountIdentity;
  v5 = [(NNMKAccountIdentity *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccountIdentifier"];
    accountId = v5->_accountId;
    v5->_accountId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyUsername"];
    username = v5->_username;
    v5->_username = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyDisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyToken"];
    token = v5->_token;
    v5->_token = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyRefreshToken"];
    refreshToken = v5->_refreshToken;
    v5->_refreshToken = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyType"];
    v5->_identityType = [v16 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountId = self->_accountId;
  coderCopy = coder;
  [coderCopy encodeObject:accountId forKey:@"kNSCodingKeyAccountIdentifier"];
  [coderCopy encodeObject:self->_username forKey:@"kNSCodingKeyUsername"];
  [coderCopy encodeObject:self->_displayName forKey:@"kNSCodingKeyDisplayName"];
  [coderCopy encodeObject:self->_token forKey:@"kNSCodingKeyToken"];
  [coderCopy encodeObject:self->_refreshToken forKey:@"kNSCodingKeyRefreshToken"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_identityType];
  [coderCopy encodeObject:v6 forKey:@"kNSCodingKeyType"];
}

@end