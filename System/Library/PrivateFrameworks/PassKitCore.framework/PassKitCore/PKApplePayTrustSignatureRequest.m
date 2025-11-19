@interface PKApplePayTrustSignatureRequest
- (PKApplePayTrustSignatureRequest)initWithCoder:(id)a3;
- (PKApplePayTrustSignatureRequest)initWithKeyIdentifier:(id)a3 manifestHash:(id)a4 nonce:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplePayTrustSignatureRequest

- (PKApplePayTrustSignatureRequest)initWithKeyIdentifier:(id)a3 manifestHash:(id)a4 nonce:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKApplePayTrustSignatureRequest;
  v12 = [(PKApplePayTrustSignatureRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_keyIdentifier, a3);
    objc_storeStrong(&v13->_manifestHash, a4);
    objc_storeStrong(&v13->_nonce, a5);
  }

  return v13;
}

- (PKApplePayTrustSignatureRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKApplePayTrustSignatureRequest;
  v5 = [(PKApplePayTrustSignatureRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manifestHash"];
    manifestHash = v5->_manifestHash;
    v5->_manifestHash = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  nonce = self->_nonce;
  v5 = a3;
  [v5 encodeObject:nonce forKey:@"nonce"];
  [v5 encodeObject:self->_manifestHash forKey:@"manifestHash"];
  [v5 encodeObject:self->_keyIdentifier forKey:@"keyIdentifier"];
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