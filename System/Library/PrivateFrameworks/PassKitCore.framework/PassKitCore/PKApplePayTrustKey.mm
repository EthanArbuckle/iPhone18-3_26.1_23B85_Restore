@interface PKApplePayTrustKey
- (PKApplePayTrustKey)initWithCoder:(id)coder;
- (PKApplePayTrustKey)initWithKey:(id)key;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplePayTrustKey

- (PKApplePayTrustKey)initWithKey:(id)key
{
  keyCopy = key;
  v18.receiver = self;
  v18.super_class = PKApplePayTrustKey;
  v5 = [(PKApplePayTrustKey *)&v18 init];
  if (v5)
  {
    identifier = [keyCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    keyAttestation = [keyCopy keyAttestation];
    pk_decodeHexadecimal = [keyAttestation pk_decodeHexadecimal];
    signedEnrollmentData = v5->_signedEnrollmentData;
    v5->_signedEnrollmentData = pk_decodeHexadecimal;

    publicKey = [keyCopy publicKey];
    sHA256Hash = [publicKey SHA256Hash];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = sHA256Hash;

    keyAttestationAuthority = [keyCopy keyAttestationAuthority];
    pk_decodeHexadecimal2 = [keyAttestationAuthority pk_decodeHexadecimal];
    certificate = v5->_certificate;
    v5->_certificate = pk_decodeHexadecimal2;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  signedEnrollmentData = self->_signedEnrollmentData;
  coderCopy = coder;
  [coderCopy encodeObject:signedEnrollmentData forKey:@"signedEnrollmentData"];
  [coderCopy encodeObject:self->_publicKeyHash forKey:@"publicKeyHash"];
  [coderCopy encodeObject:self->_certificate forKey:@"certificate"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (PKApplePayTrustKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKApplePayTrustKey;
  v5 = [(PKApplePayTrustKey *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedEnrollmentData"];
    signedEnrollmentData = v5->_signedEnrollmentData;
    v5->_signedEnrollmentData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyHash"];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"certificate"];
    certificate = v5->_certificate;
    v5->_certificate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"signedEnrollmentData: '%@'; ", self->_signedEnrollmentData];
  [v3 appendFormat:@"publicKeyHash: '%@'; ", self->_publicKeyHash];
  [v3 appendFormat:@"certificate: '%@'; ", self->_certificate];
  [v3 appendFormat:@">"];

  return v3;
}

@end