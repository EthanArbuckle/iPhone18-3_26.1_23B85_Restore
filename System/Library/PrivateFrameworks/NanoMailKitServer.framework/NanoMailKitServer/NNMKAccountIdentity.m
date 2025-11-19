@interface NNMKAccountIdentity
- (NNMKAccountIdentity)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NNMKAccountIdentity

- (NNMKAccountIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NNMKAccountIdentity;
  v5 = [(NNMKAccountIdentity *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccountIdentifier"];
    accountId = v5->_accountId;
    v5->_accountId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyUsername"];
    username = v5->_username;
    v5->_username = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyDisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyToken"];
    token = v5->_token;
    v5->_token = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyRefreshToken"];
    refreshToken = v5->_refreshToken;
    v5->_refreshToken = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyType"];
    v5->_identityType = [v16 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  accountId = self->_accountId;
  v5 = a3;
  [v5 encodeObject:accountId forKey:@"kNSCodingKeyAccountIdentifier"];
  [v5 encodeObject:self->_username forKey:@"kNSCodingKeyUsername"];
  [v5 encodeObject:self->_displayName forKey:@"kNSCodingKeyDisplayName"];
  [v5 encodeObject:self->_token forKey:@"kNSCodingKeyToken"];
  [v5 encodeObject:self->_refreshToken forKey:@"kNSCodingKeyRefreshToken"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_identityType];
  [v5 encodeObject:v6 forKey:@"kNSCodingKeyType"];
}

@end