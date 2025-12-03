@interface PKPaymentVerificationUpdateRequest
- (void)_urlRequestWithBuilder:(id)builder webService:(id)service completion:(id)completion;
- (void)setChannel:(id)channel;
@end

@implementation PKPaymentVerificationUpdateRequest

- (void)_urlRequestWithBuilder:(id)builder webService:(id)service completion:(id)completion
{
  v33[7] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  completionCopy = completion;
  if (completionCopy)
  {
    serviceCopy = service;
    v10 = PKEnableGroupVerificationMethods();
    brokerURL = [builderCopy brokerURL];
    if (v10)
    {
      v33[0] = @"devices";
      deviceID = [builderCopy deviceID];
      v33[1] = deviceID;
      v33[2] = @"passes";
      passTypeIdentifier = [(PKPass *)self->_pass passTypeIdentifier];
      v33[3] = passTypeIdentifier;
      serialNumber = [(PKPass *)self->_pass serialNumber];
      v33[4] = serialNumber;
      v33[5] = @"activation";
      v33[6] = @"start";
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:7];
    }

    else
    {
      v32[0] = @"devices";
      deviceID = [builderCopy deviceID];
      v32[1] = deviceID;
      v32[2] = @"passes";
      passTypeIdentifier = [(PKPass *)self->_pass passTypeIdentifier];
      v32[3] = passTypeIdentifier;
      serialNumber = [(PKPass *)self->_pass serialNumber];
      v32[4] = serialNumber;
      v32[5] = @"activation";
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:6];
    }

    appleAccountInformation = [builderCopy appleAccountInformation];
    v17 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL endpointComponents:v15 queryParameters:0 appleAccountInformation:appleAccountInformation];

    [v17 setHTTPMethod:@"POST"];
    [v17 setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v18 setObject:self->_stepIdentifier forKeyedSubscript:@"stepIdentifier"];
    identifier = [(PKPassVerificationMethod *)self->_method identifier];
    [v18 setObject:identifier forKeyedSubscript:@"methodIdentifier"];

    if (PKEnableGroupVerificationMethods())
    {
      identifier2 = [(PKPassVerificationMethodGroup *)self->_methodGroup identifier];
      [v18 setObject:identifier2 forKeyedSubscript:@"methodGroupIdentifier"];
    }

    if (self->_dynamicFieldParameters)
    {
      [v18 addEntriesFromDictionary:?];
    }

    if (self->_encryptedDynamicFieldParameters)
    {
      deviceData = [builderCopy deviceData];
      primaryJSBLSequenceCounter = [deviceData primaryJSBLSequenceCounter];
      stringValue = [primaryJSBLSequenceCounter stringValue];

      v25 = [stringValue dataUsingEncoding:4];
      hexEncoding = [v25 hexEncoding];
      [v19 setObject:hexEncoding forKeyedSubscript:@"jsblSequenceCounter"];

      deviceAccountIdentifier = [*(&self->super.super.super.super.isa + v28) deviceAccountIdentifier];
      [v19 setObject:deviceAccountIdentifier forKeyedSubscript:@"DPANIdentifier"];

      [v19 addEntriesFromDictionary:self->_encryptedDynamicFieldParameters];
    }

    [builderCopy configureOverlayRequest:self urlRequest:v17 secureDictionary:v19 dictionary:v18];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __83__PKPaymentVerificationUpdateRequest__urlRequestWithBuilder_webService_completion___block_invoke;
    v30[3] = &unk_1E79DAF50;
    v31 = completionCopy;
    [(PKPaymentWebServiceRequest *)self _signRequest:v17 webService:serviceCopy completion:v30];
  }
}

void __83__PKPaymentVerificationUpdateRequest__urlRequestWithBuilder_webService_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  (*(v2 + 16))(v2, v3);
}

- (void)setChannel:(id)channel
{
  v4 = [PKPassVerificationMethodGroup methodGroupFromLegacyChannel:channel];
  methodGroup = self->_methodGroup;
  self->_methodGroup = v4;
}

@end