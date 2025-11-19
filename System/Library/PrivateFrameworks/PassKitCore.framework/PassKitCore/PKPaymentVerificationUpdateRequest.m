@interface PKPaymentVerificationUpdateRequest
- (void)_urlRequestWithBuilder:(id)a3 webService:(id)a4 completion:(id)a5;
- (void)setChannel:(id)a3;
@end

@implementation PKPaymentVerificationUpdateRequest

- (void)_urlRequestWithBuilder:(id)a3 webService:(id)a4 completion:(id)a5
{
  v33[7] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v29 = a4;
    v10 = PKEnableGroupVerificationMethods();
    v11 = [v8 brokerURL];
    if (v10)
    {
      v33[0] = @"devices";
      v12 = [v8 deviceID];
      v33[1] = v12;
      v33[2] = @"passes";
      v13 = [(PKPass *)self->_pass passTypeIdentifier];
      v33[3] = v13;
      v14 = [(PKPass *)self->_pass serialNumber];
      v33[4] = v14;
      v33[5] = @"activation";
      v33[6] = @"start";
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:7];
    }

    else
    {
      v32[0] = @"devices";
      v12 = [v8 deviceID];
      v32[1] = v12;
      v32[2] = @"passes";
      v13 = [(PKPass *)self->_pass passTypeIdentifier];
      v32[3] = v13;
      v14 = [(PKPass *)self->_pass serialNumber];
      v32[4] = v14;
      v32[5] = @"activation";
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:6];
    }

    v16 = [v8 appleAccountInformation];
    v17 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v15 queryParameters:0 appleAccountInformation:v16];

    [v17 setHTTPMethod:@"POST"];
    [v17 setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v18 setObject:self->_stepIdentifier forKeyedSubscript:@"stepIdentifier"];
    v20 = [(PKPassVerificationMethod *)self->_method identifier];
    [v18 setObject:v20 forKeyedSubscript:@"methodIdentifier"];

    if (PKEnableGroupVerificationMethods())
    {
      v21 = [(PKPassVerificationMethodGroup *)self->_methodGroup identifier];
      [v18 setObject:v21 forKeyedSubscript:@"methodGroupIdentifier"];
    }

    if (self->_dynamicFieldParameters)
    {
      [v18 addEntriesFromDictionary:?];
    }

    if (self->_encryptedDynamicFieldParameters)
    {
      v22 = [v8 deviceData];
      v23 = [v22 primaryJSBLSequenceCounter];
      v24 = [v23 stringValue];

      v25 = [v24 dataUsingEncoding:4];
      v26 = [v25 hexEncoding];
      [v19 setObject:v26 forKeyedSubscript:@"jsblSequenceCounter"];

      v27 = [*(&self->super.super.super.super.isa + v28) deviceAccountIdentifier];
      [v19 setObject:v27 forKeyedSubscript:@"DPANIdentifier"];

      [v19 addEntriesFromDictionary:self->_encryptedDynamicFieldParameters];
    }

    [v8 configureOverlayRequest:self urlRequest:v17 secureDictionary:v19 dictionary:v18];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __83__PKPaymentVerificationUpdateRequest__urlRequestWithBuilder_webService_completion___block_invoke;
    v30[3] = &unk_1E79DAF50;
    v31 = v9;
    [(PKPaymentWebServiceRequest *)self _signRequest:v17 webService:v29 completion:v30];
  }
}

void __83__PKPaymentVerificationUpdateRequest__urlRequestWithBuilder_webService_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  (*(v2 + 16))(v2, v3);
}

- (void)setChannel:(id)a3
{
  v4 = [PKPassVerificationMethodGroup methodGroupFromLegacyChannel:a3];
  methodGroup = self->_methodGroup;
  self->_methodGroup = v4;
}

@end