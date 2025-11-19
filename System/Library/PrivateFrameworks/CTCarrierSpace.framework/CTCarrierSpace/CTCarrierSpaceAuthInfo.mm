@interface CTCarrierSpaceAuthInfo
- (CTCarrierSpaceAuthInfo)init;
- (CTCarrierSpaceAuthInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCarrierSpaceAuthInfo

- (CTCarrierSpaceAuthInfo)init
{
  v8.receiver = self;
  v8.super_class = CTCarrierSpaceAuthInfo;
  v2 = [(CTCarrierSpaceAuthInfo *)&v8 init];
  v3 = v2;
  if (v2)
  {
    accessToken = v2->_accessToken;
    v2->_accessToken = 0;

    refreshToken = v3->_refreshToken;
    v3->_refreshToken = 0;

    expiresAt = v3->_expiresAt;
    v3->_expiresAt = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTCarrierSpaceAuthInfo *)self accessToken];
  [v3 appendFormat:@" accessToken=%@", v4];

  v5 = [(CTCarrierSpaceAuthInfo *)self refreshToken];
  [v3 appendFormat:@" refreshToken=%@", v5];

  v6 = [(CTCarrierSpaceAuthInfo *)self expiresAt];
  [v3 appendFormat:@" expiresAt=%@", v6];

  [v3 appendFormat:@" shouldCache=%d", -[CTCarrierSpaceAuthInfo shouldCache](self, "shouldCache")];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  accessToken = self->_accessToken;
  v5 = a3;
  [v5 encodeObject:accessToken forKey:@"accessToken"];
  [v5 encodeObject:self->_refreshToken forKey:@"refreshToken"];
  [v5 encodeObject:self->_expiresAt forKey:@"expiresAt"];
  [v5 encodeBool:self->_shouldCache forKey:@"shouldCache"];
}

- (CTCarrierSpaceAuthInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTCarrierSpaceAuthInfo;
  v5 = [(CTCarrierSpaceAuthInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessToken"];
    accessToken = v5->_accessToken;
    v5->_accessToken = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"refreshToken"];
    refreshToken = v5->_refreshToken;
    v5->_refreshToken = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiresAt"];
    expiresAt = v5->_expiresAt;
    v5->_expiresAt = v10;

    v5->_shouldCache = [v4 decodeBoolForKey:@"shouldCache"];
  }

  return v5;
}

@end