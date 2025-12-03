@interface PKBarcodeEventSignatureResponse
- (PKBarcodeEventSignatureResponse)initWithCoder:(id)coder;
- (PKBarcodeEventSignatureResponse)initWithSignedData:(NSData *)signedData;
@end

@implementation PKBarcodeEventSignatureResponse

- (PKBarcodeEventSignatureResponse)initWithSignedData:(NSData *)signedData
{
  v5 = signedData;
  v9.receiver = self;
  v9.super_class = PKBarcodeEventSignatureResponse;
  v6 = [(PKBarcodeEventSignatureResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signedData, signedData);
  }

  return v7;
}

- (PKBarcodeEventSignatureResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKBarcodeEventSignatureResponse;
  v5 = [(PKBarcodeEventSignatureResponse *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedData"];
    signedData = v5->_signedData;
    v5->_signedData = v6;

    v8 = v5;
  }

  return v5;
}

@end