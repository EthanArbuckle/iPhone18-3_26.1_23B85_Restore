@interface PKPaymentVerificationOptionsRequest
+ (id)requestWithPass:(id)a3;
- (id)_urlRequestWithBuilder:(id)a3;
@end

@implementation PKPaymentVerificationOptionsRequest

+ (id)requestWithPass:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKPaymentVerificationOptionsRequest);
  [(PKPaymentVerificationOptionsRequest *)v4 setPass:v3];

  return v4;
}

- (id)_urlRequestWithBuilder:(id)a3
{
  v20[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = v5;
  stepIdentifier = self->_stepIdentifier;
  if (stepIdentifier)
  {
    [v5 setObject:stepIdentifier forKey:@"stepIdentifier"];
  }

  v8 = PKEnableGroupVerificationMethods();
  v9 = [v4 brokerURL];
  if (v8)
  {
    v20[0] = @"devices";
    v10 = @"activationMethods";
    v11 = v20;
  }

  else
  {
    v19 = @"devices";
    v10 = @"activation";
    v11 = &v19;
  }

  v12 = [v4 deviceID];
  v11[1] = v12;
  v11[2] = @"passes";
  v13 = [(PKPass *)self->_pass passTypeIdentifier];
  v11[3] = v13;
  v14 = [(PKPass *)self->_pass serialNumber];
  v11[4] = v14;
  v11[5] = v10;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];
  v16 = [v4 appleAccountInformation];
  v17 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v9 endpointComponents:v15 queryParameters:v6 appleAccountInformation:v16];

  [v17 setHTTPMethod:@"GET"];

  return v17;
}

@end