@interface PKApplePayTrustSignature
- (PKApplePayTrustSignature)initWithCoder:(id)a3;
- (PKApplePayTrustSignature)initWithSignatureRequest:(id)a3 signature:(id)a4;
- (id)description;
@end

@implementation PKApplePayTrustSignature

- (PKApplePayTrustSignature)initWithSignatureRequest:(id)a3 signature:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKApplePayTrustSignature;
  v9 = [(PKApplePayTrustSignature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signatureRequest, a3);
    objc_storeStrong(&v10->_signatureData, a4);
  }

  return v10;
}

- (PKApplePayTrustSignature)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKApplePayTrustSignature;
  v5 = [(PKApplePayTrustSignature *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signatureData"];
    signatureData = v5->_signatureData;
    v5->_signatureData = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"signatureData: '%@'; ", self->_signatureData];
  [v3 appendFormat:@"signatureRequest: '%@'; ", self->_signatureRequest];
  [v3 appendFormat:@">"];

  return v3;
}

@end