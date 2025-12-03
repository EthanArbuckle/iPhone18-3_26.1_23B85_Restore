@interface DCCredentialAuthorizationToken
- (DCCredentialAuthorizationToken)initWithCoder:(id)coder;
- (DCCredentialAuthorizationToken)initWithCredentialAuthorizationToken:(id)token pairingID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCCredentialAuthorizationToken

- (void)encodeWithCoder:(id)coder
{
  credentialAuthorizationToken = self->_credentialAuthorizationToken;
  coderCopy = coder;
  [coderCopy encodeObject:credentialAuthorizationToken forKey:0x28586D160];
  [coderCopy encodeObject:self->_credentialPairingID forKey:0x28586D1C0];
}

- (DCCredentialAuthorizationToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DCCredentialAuthorizationToken;
  v5 = [(DCCredentialAuthorizationToken *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D160];
    credentialAuthorizationToken = v5->_credentialAuthorizationToken;
    v5->_credentialAuthorizationToken = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D1C0];
    credentialPairingID = v5->_credentialPairingID;
    v5->_credentialPairingID = v8;
  }

  return v5;
}

- (DCCredentialAuthorizationToken)initWithCredentialAuthorizationToken:(id)token pairingID:(id)d
{
  tokenCopy = token;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = DCCredentialAuthorizationToken;
  v8 = [(DCCredentialAuthorizationToken *)&v14 init];
  if (v8)
  {
    v9 = [tokenCopy copy];
    credentialAuthorizationToken = v8->_credentialAuthorizationToken;
    v8->_credentialAuthorizationToken = v9;

    v11 = [dCopy copy];
    credentialPairingID = v8->_credentialPairingID;
    v8->_credentialPairingID = v11;
  }

  return v8;
}

@end