@interface DCCredentialAuthorizationToken
- (DCCredentialAuthorizationToken)initWithCoder:(id)a3;
- (DCCredentialAuthorizationToken)initWithCredentialAuthorizationToken:(id)a3 pairingID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCCredentialAuthorizationToken

- (void)encodeWithCoder:(id)a3
{
  credentialAuthorizationToken = self->_credentialAuthorizationToken;
  v5 = a3;
  [v5 encodeObject:credentialAuthorizationToken forKey:0x28586D160];
  [v5 encodeObject:self->_credentialPairingID forKey:0x28586D1C0];
}

- (DCCredentialAuthorizationToken)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DCCredentialAuthorizationToken;
  v5 = [(DCCredentialAuthorizationToken *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D160];
    credentialAuthorizationToken = v5->_credentialAuthorizationToken;
    v5->_credentialAuthorizationToken = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D1C0];
    credentialPairingID = v5->_credentialPairingID;
    v5->_credentialPairingID = v8;
  }

  return v5;
}

- (DCCredentialAuthorizationToken)initWithCredentialAuthorizationToken:(id)a3 pairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DCCredentialAuthorizationToken;
  v8 = [(DCCredentialAuthorizationToken *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    credentialAuthorizationToken = v8->_credentialAuthorizationToken;
    v8->_credentialAuthorizationToken = v9;

    v11 = [v7 copy];
    credentialPairingID = v8->_credentialPairingID;
    v8->_credentialPairingID = v11;
  }

  return v8;
}

@end