@interface PKApplePayTrustSignature
- (PKApplePayTrustSignature)initWithCoder:(id)coder;
- (PKApplePayTrustSignature)initWithSignatureRequest:(id)request signature:(id)signature;
- (id)description;
@end

@implementation PKApplePayTrustSignature

- (PKApplePayTrustSignature)initWithSignatureRequest:(id)request signature:(id)signature
{
  requestCopy = request;
  signatureCopy = signature;
  v12.receiver = self;
  v12.super_class = PKApplePayTrustSignature;
  v9 = [(PKApplePayTrustSignature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signatureRequest, request);
    objc_storeStrong(&v10->_signatureData, signature);
  }

  return v10;
}

- (PKApplePayTrustSignature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKApplePayTrustSignature;
  v5 = [(PKApplePayTrustSignature *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signatureData"];
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