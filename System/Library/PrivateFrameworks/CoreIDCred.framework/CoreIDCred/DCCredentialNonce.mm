@interface DCCredentialNonce
- (DCCredentialNonce)initWithCoder:(id)coder;
- (DCCredentialNonce)initWithCredentialNonce:(id)nonce;
@end

@implementation DCCredentialNonce

- (DCCredentialNonce)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DCCredentialNonce;
  v5 = [(DCCredentialNonce *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D140];
    credentialNonce = v5->_credentialNonce;
    v5->_credentialNonce = v6;
  }

  return v5;
}

- (DCCredentialNonce)initWithCredentialNonce:(id)nonce
{
  nonceCopy = nonce;
  v9.receiver = self;
  v9.super_class = DCCredentialNonce;
  v5 = [(DCCredentialNonce *)&v9 init];
  if (v5)
  {
    v6 = [nonceCopy copy];
    credentialNonce = v5->_credentialNonce;
    v5->_credentialNonce = v6;
  }

  return v5;
}

@end