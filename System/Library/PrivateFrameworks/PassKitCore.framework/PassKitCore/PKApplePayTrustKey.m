@interface PKApplePayTrustKey
- (PKApplePayTrustKey)initWithCoder:(id)a3;
- (PKApplePayTrustKey)initWithKey:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplePayTrustKey

- (PKApplePayTrustKey)initWithKey:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKApplePayTrustKey;
  v5 = [(PKApplePayTrustKey *)&v18 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 keyAttestation];
    v9 = [v8 pk_decodeHexadecimal];
    signedEnrollmentData = v5->_signedEnrollmentData;
    v5->_signedEnrollmentData = v9;

    v11 = [v4 publicKey];
    v12 = [v11 SHA256Hash];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v12;

    v14 = [v4 keyAttestationAuthority];
    v15 = [v14 pk_decodeHexadecimal];
    certificate = v5->_certificate;
    v5->_certificate = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  signedEnrollmentData = self->_signedEnrollmentData;
  v5 = a3;
  [v5 encodeObject:signedEnrollmentData forKey:@"signedEnrollmentData"];
  [v5 encodeObject:self->_publicKeyHash forKey:@"publicKeyHash"];
  [v5 encodeObject:self->_certificate forKey:@"certificate"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

- (PKApplePayTrustKey)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKApplePayTrustKey;
  v5 = [(PKApplePayTrustKey *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signedEnrollmentData"];
    signedEnrollmentData = v5->_signedEnrollmentData;
    v5->_signedEnrollmentData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyHash"];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"certificate"];
    certificate = v5->_certificate;
    v5->_certificate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
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