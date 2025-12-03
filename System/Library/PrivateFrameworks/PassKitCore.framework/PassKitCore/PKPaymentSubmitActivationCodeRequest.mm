@interface PKPaymentSubmitActivationCodeRequest
- (id)_urlRequestWithBuilder:(id)builder;
@end

@implementation PKPaymentSubmitActivationCodeRequest

- (id)_urlRequestWithBuilder:(id)builder
{
  v41[7] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  v5 = PKEnableGroupVerificationMethods();
  brokerURL = [builderCopy brokerURL];
  if (v5)
  {
    v41[0] = @"devices";
    deviceID = [builderCopy deviceID];
    v41[1] = deviceID;
    v41[2] = @"passes";
    passTypeIdentifier = [(PKPass *)self->_pass passTypeIdentifier];
    v41[3] = passTypeIdentifier;
    serialNumber = [(PKPass *)self->_pass serialNumber];
    v41[4] = serialNumber;
    v41[5] = @"activation";
    v41[6] = @"submit";
    v10 = MEMORY[0x1E695DEC8];
    v11 = v41;
    v12 = 7;
  }

  else
  {
    v40[0] = @"devices";
    deviceID = [builderCopy deviceID];
    v40[1] = deviceID;
    v40[2] = @"passes";
    passTypeIdentifier = [(PKPass *)self->_pass passTypeIdentifier];
    v40[3] = passTypeIdentifier;
    serialNumber = [(PKPass *)self->_pass serialNumber];
    v40[4] = serialNumber;
    v40[5] = @"activationCode";
    v10 = MEMORY[0x1E695DEC8];
    v11 = v40;
    v12 = 6;
  }

  v13 = [v10 arrayWithObjects:v11 count:v12];
  appleAccountInformation = [builderCopy appleAccountInformation];
  v15 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL endpointComponents:v13 queryParameters:0 appleAccountInformation:appleAccountInformation];

  [v15 setHTTPMethod:@"POST"];
  [v15 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = v16;
  if (self->_entries)
  {
    v33 = v15;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    selfCopy = self;
    v19 = self->_entries;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v35 + 1) + 8 * i);
          v25 = [v24 dictionaryRepresentationWithBuilder:{builderCopy, v33}];
          [v18 addObject:v25];

          verificationCode = [v24 verificationCode];

          if (verificationCode)
          {
            verificationCode2 = [v24 verificationCode];
            [v17 setObject:verificationCode2 forKeyedSubscript:@"activationCode"];
          }

          verificationData = [v24 verificationData];

          if (verificationData)
          {
            verificationData2 = [v24 verificationData];
            v30 = [verificationData2 base64EncodedStringWithOptions:0];
            [v17 setObject:v30 forKeyedSubscript:@"activationData"];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v21);
    }

    [v17 setObject:v18 forKeyedSubscript:@"activationDataSubmissions"];
    v15 = v33;
    self = selfCopy;
  }

  else
  {
    [v16 setObject:self->_verificationCode forKeyedSubscript:@"activationCode"];
    v18 = [(NSData *)self->_verificationData base64EncodedStringWithOptions:0];
    [v17 setObject:v18 forKeyedSubscript:@"activationData"];
  }

  [builderCopy configureOverlayRequest:self urlRequest:v15 dictionary:v17];
  v31 = [v15 copy];

  return v31;
}

@end