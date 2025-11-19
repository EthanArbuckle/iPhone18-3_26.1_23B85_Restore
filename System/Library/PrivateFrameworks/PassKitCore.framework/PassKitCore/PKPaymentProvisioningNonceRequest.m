@interface PKPaymentProvisioningNonceRequest
- (PKPaymentProvisioningNonceRequest)initWithNonceType:(unint64_t)a3;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentProvisioningNonceRequest

- (PKPaymentProvisioningNonceRequest)initWithNonceType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentProvisioningNonceRequest;
  result = [(PKOverlayableWebServiceRequest *)&v5 init];
  if (result)
  {
    result->_nonceType = a3;
  }

  return result;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (self->_nonceType == 1)
  {
    v8 = @"extended";
  }

  else
  {
    v8 = @"standard";
  }

  v19 = @"nonceType";
  v20[0] = v8;
  v9 = MEMORY[0x1E695DF20];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v18[0] = @"devices";
  v18[1] = v11;
  v18[2] = @"provisioningNonce";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];

  v15 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v12 endpointComponents:v14 queryParameters:v13 appleAccountInformation:v10];

  [v15 setHTTPMethod:@"GET"];
  [v15 setCachePolicy:1];
  v16 = [v15 copy];

  return v16;
}

@end