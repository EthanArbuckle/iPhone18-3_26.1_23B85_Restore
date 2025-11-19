@interface PKPaymentSubmitActivationCodeRequest
- (id)_urlRequestWithBuilder:(id)a3;
@end

@implementation PKPaymentSubmitActivationCodeRequest

- (id)_urlRequestWithBuilder:(id)a3
{
  v41[7] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKEnableGroupVerificationMethods();
  v6 = [v4 brokerURL];
  if (v5)
  {
    v41[0] = @"devices";
    v7 = [v4 deviceID];
    v41[1] = v7;
    v41[2] = @"passes";
    v8 = [(PKPass *)self->_pass passTypeIdentifier];
    v41[3] = v8;
    v9 = [(PKPass *)self->_pass serialNumber];
    v41[4] = v9;
    v41[5] = @"activation";
    v41[6] = @"submit";
    v10 = MEMORY[0x1E695DEC8];
    v11 = v41;
    v12 = 7;
  }

  else
  {
    v40[0] = @"devices";
    v7 = [v4 deviceID];
    v40[1] = v7;
    v40[2] = @"passes";
    v8 = [(PKPass *)self->_pass passTypeIdentifier];
    v40[3] = v8;
    v9 = [(PKPass *)self->_pass serialNumber];
    v40[4] = v9;
    v40[5] = @"activationCode";
    v10 = MEMORY[0x1E695DEC8];
    v11 = v40;
    v12 = 6;
  }

  v13 = [v10 arrayWithObjects:v11 count:v12];
  v14 = [v4 appleAccountInformation];
  v15 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:v13 queryParameters:0 appleAccountInformation:v14];

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
    v34 = self;
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
          v25 = [v24 dictionaryRepresentationWithBuilder:{v4, v33}];
          [v18 addObject:v25];

          v26 = [v24 verificationCode];

          if (v26)
          {
            v27 = [v24 verificationCode];
            [v17 setObject:v27 forKeyedSubscript:@"activationCode"];
          }

          v28 = [v24 verificationData];

          if (v28)
          {
            v29 = [v24 verificationData];
            v30 = [v29 base64EncodedStringWithOptions:0];
            [v17 setObject:v30 forKeyedSubscript:@"activationData"];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v21);
    }

    [v17 setObject:v18 forKeyedSubscript:@"activationDataSubmissions"];
    v15 = v33;
    self = v34;
  }

  else
  {
    [v16 setObject:self->_verificationCode forKeyedSubscript:@"activationCode"];
    v18 = [(NSData *)self->_verificationData base64EncodedStringWithOptions:0];
    [v17 setObject:v18 forKeyedSubscript:@"activationData"];
  }

  [v4 configureOverlayRequest:self urlRequest:v15 dictionary:v17];
  v31 = [v15 copy];

  return v31;
}

@end