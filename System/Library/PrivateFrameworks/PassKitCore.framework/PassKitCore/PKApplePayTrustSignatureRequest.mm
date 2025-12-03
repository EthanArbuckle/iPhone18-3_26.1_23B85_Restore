@interface PKApplePayTrustSignatureRequest
- (PKApplePayTrustSignatureRequest)initWithCoder:(id)coder;
- (PKApplePayTrustSignatureRequest)initWithKeyIdentifier:(id)identifier manifestHash:(id)hash nonce:(id)nonce;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplePayTrustSignatureRequest

- (PKApplePayTrustSignatureRequest)initWithKeyIdentifier:(id)identifier manifestHash:(id)hash nonce:(id)nonce
{
  identifierCopy = identifier;
  hashCopy = hash;
  nonceCopy = nonce;
  v15.receiver = self;
  v15.super_class = PKApplePayTrustSignatureRequest;
  v12 = [(PKApplePayTrustSignatureRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_keyIdentifier, identifier);
    objc_storeStrong(&v13->_manifestHash, hash);
    objc_storeStrong(&v13->_nonce, nonce);
  }

  return v13;
}

- (PKApplePayTrustSignatureRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKApplePayTrustSignatureRequest;
  v5 = [(PKApplePayTrustSignatureRequest *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manifestHash"];
    manifestHash = v5->_manifestHash;
    v5->_manifestHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  nonce = self->_nonce;
  coderCopy = coder;
  [coderCopy encodeObject:nonce forKey:@"nonce"];
  [coderCopy encodeObject:self->_manifestHash forKey:@"manifestHash"];
  [coderCopy encodeObject:self->_keyIdentifier forKey:@"keyIdentifier"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"keyIdentifier: '%@'; ", self->_keyIdentifier];
  [v3 appendFormat:@"manifestHash length: '%lu'; ", -[NSData length](self->_manifestHash, "length")];
  [v3 appendFormat:@"nonce length: '%lu'; ", -[NSData length](self->_nonce, "length")];
  [v3 appendFormat:@">"];

  return v3;
}

@end