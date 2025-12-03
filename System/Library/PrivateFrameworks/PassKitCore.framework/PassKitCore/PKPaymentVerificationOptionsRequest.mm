@interface PKPaymentVerificationOptionsRequest
+ (id)requestWithPass:(id)pass;
- (id)_urlRequestWithBuilder:(id)builder;
@end

@implementation PKPaymentVerificationOptionsRequest

+ (id)requestWithPass:(id)pass
{
  passCopy = pass;
  v4 = objc_alloc_init(PKPaymentVerificationOptionsRequest);
  [(PKPaymentVerificationOptionsRequest *)v4 setPass:passCopy];

  return v4;
}

- (id)_urlRequestWithBuilder:(id)builder
{
  v20[6] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = dictionary;
  stepIdentifier = self->_stepIdentifier;
  if (stepIdentifier)
  {
    [dictionary setObject:stepIdentifier forKey:@"stepIdentifier"];
  }

  v8 = PKEnableGroupVerificationMethods();
  brokerURL = [builderCopy brokerURL];
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

  deviceID = [builderCopy deviceID];
  v11[1] = deviceID;
  v11[2] = @"passes";
  passTypeIdentifier = [(PKPass *)self->_pass passTypeIdentifier];
  v11[3] = passTypeIdentifier;
  serialNumber = [(PKPass *)self->_pass serialNumber];
  v11[4] = serialNumber;
  v11[5] = v10;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];
  appleAccountInformation = [builderCopy appleAccountInformation];
  v17 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL endpointComponents:v15 queryParameters:v6 appleAccountInformation:appleAccountInformation];

  [v17 setHTTPMethod:@"GET"];

  return v17;
}

@end