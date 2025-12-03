@interface PKBarcodeEventMetadataResponse
- (PKBarcodeEventMetadataResponse)initWithCoder:(id)coder;
- (PKBarcodeEventMetadataResponse)initWithPaymentInformation:(NSData *)paymentInformation;
@end

@implementation PKBarcodeEventMetadataResponse

- (PKBarcodeEventMetadataResponse)initWithPaymentInformation:(NSData *)paymentInformation
{
  v5 = paymentInformation;
  v9.receiver = self;
  v9.super_class = PKBarcodeEventMetadataResponse;
  v6 = [(PKBarcodeEventMetadataResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentInformation, paymentInformation);
  }

  return v7;
}

- (PKBarcodeEventMetadataResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKBarcodeEventMetadataResponse;
  v5 = [(PKBarcodeEventMetadataResponse *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentInformation"];
    paymentInformation = v5->_paymentInformation;
    v5->_paymentInformation = v6;

    v8 = v5;
  }

  return v5;
}

@end