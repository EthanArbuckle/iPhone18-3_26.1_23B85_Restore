@interface PKPeerPaymentTermsAcceptanceResponse
- (BOOL)hasTermsData;
- (PKPeerPaymentTermsAcceptanceResponse)initWithData:(id)a3;
@end

@implementation PKPeerPaymentTermsAcceptanceResponse

- (PKPeerPaymentTermsAcceptanceResponse)initWithData:(id)a3
{
  v12.receiver = self;
  v12.super_class = PKPeerPaymentTermsAcceptanceResponse;
  v3 = [(PKWebServiceResponse *)&v12 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 PKStringForKey:@"termsIdentifier"];
      termsIdentifier = v4->_termsIdentifier;
      v4->_termsIdentifier = v7;

      v9 = [v6 PKURLForKey:@"termsURL"];

      termsURL = v4->_termsURL;
      v4->_termsURL = v9;
    }
  }

  return v4;
}

- (BOOL)hasTermsData
{
  v3 = [(NSString *)self->_termsIdentifier length];
  if (v3)
  {
    LOBYTE(v3) = self->_termsURL != 0;
  }

  return v3;
}

@end