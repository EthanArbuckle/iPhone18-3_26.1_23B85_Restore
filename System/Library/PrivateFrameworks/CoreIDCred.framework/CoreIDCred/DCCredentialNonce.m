@interface DCCredentialNonce
- (DCCredentialNonce)initWithCoder:(id)a3;
- (DCCredentialNonce)initWithCredentialNonce:(id)a3;
@end

@implementation DCCredentialNonce

- (DCCredentialNonce)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DCCredentialNonce;
  v5 = [(DCCredentialNonce *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D140];
    credentialNonce = v5->_credentialNonce;
    v5->_credentialNonce = v6;
  }

  return v5;
}

- (DCCredentialNonce)initWithCredentialNonce:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DCCredentialNonce;
  v5 = [(DCCredentialNonce *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    credentialNonce = v5->_credentialNonce;
    v5->_credentialNonce = v6;
  }

  return v5;
}

@end