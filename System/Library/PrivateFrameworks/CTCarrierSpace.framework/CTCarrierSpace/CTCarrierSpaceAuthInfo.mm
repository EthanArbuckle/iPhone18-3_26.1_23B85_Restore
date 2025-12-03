@interface CTCarrierSpaceAuthInfo
- (CTCarrierSpaceAuthInfo)init;
- (CTCarrierSpaceAuthInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  accessToken = [(CTCarrierSpaceAuthInfo *)self accessToken];
  [v3 appendFormat:@" accessToken=%@", accessToken];

  refreshToken = [(CTCarrierSpaceAuthInfo *)self refreshToken];
  [v3 appendFormat:@" refreshToken=%@", refreshToken];

  expiresAt = [(CTCarrierSpaceAuthInfo *)self expiresAt];
  [v3 appendFormat:@" expiresAt=%@", expiresAt];

  [v3 appendFormat:@" shouldCache=%d", -[CTCarrierSpaceAuthInfo shouldCache](self, "shouldCache")];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  accessToken = self->_accessToken;
  coderCopy = coder;
  [coderCopy encodeObject:accessToken forKey:@"accessToken"];
  [coderCopy encodeObject:self->_refreshToken forKey:@"refreshToken"];
  [coderCopy encodeObject:self->_expiresAt forKey:@"expiresAt"];
  [coderCopy encodeBool:self->_shouldCache forKey:@"shouldCache"];
}

- (CTCarrierSpaceAuthInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTCarrierSpaceAuthInfo;
  v5 = [(CTCarrierSpaceAuthInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessToken"];
    accessToken = v5->_accessToken;
    v5->_accessToken = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"refreshToken"];
    refreshToken = v5->_refreshToken;
    v5->_refreshToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiresAt"];
    expiresAt = v5->_expiresAt;
    v5->_expiresAt = v10;

    v5->_shouldCache = [coderCopy decodeBoolForKey:@"shouldCache"];
  }

  return v5;
}

@end