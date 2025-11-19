@interface PKAuxiliaryCapabilityKeyCreationMetadataRequest
- (PKAuxiliaryCapabilityKeyCreationMetadataRequest)initWithCapabilityStates:(id)a3 pass:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKAuxiliaryCapabilityKeyCreationMetadataRequest

- (PKAuxiliaryCapabilityKeyCreationMetadataRequest)initWithCapabilityStates:(id)a3 pass:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKAuxiliaryCapabilityKeyCreationMetadataRequest;
  v9 = [(PKAuxiliaryCapabilityWebServiceRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_capabilityStates, a3);
    [(PKAuxiliaryCapabilityWebServiceRequest *)v10 setPass:v8];
  }

  return v10;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v32[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32[0] = @"devices";
  v32[1] = v9;
  v25 = v9;
  v32[2] = @"auxiliaryCapabilityKeyCreationMetadata";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v26 = v8;
  v12 = [(PKAuxiliaryCapabilityWebServiceRequest *)self _murlRequestWithServiceURL:v8 endpointComponents:v11 queryParameters:0 appleAccountInformation:v10];

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = [(NSArray *)self->_capabilityStates pk_arrayByApplyingBlock:&__block_literal_global_41];
  [v13 setObject:v14 forKeyedSubscript:@"capabilityStates"];

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [(PKAuxiliaryCapabilityWebServiceRequest *)self pass];
  v17 = [v16 devicePaymentApplications];

  v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v27 + 1) + 8 * i) dpanIdentifier];
        [v15 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);
  }

  [v13 setObject:v15 forKeyedSubscript:@"dpanIdentifiers"];
  v23 = [objc_opt_class() _HTTPBodyWithDictionary:v13];
  [v12 setHTTPBody:v23];

  [v12 setHTTPMethod:@"POST"];

  return v12;
}

@end