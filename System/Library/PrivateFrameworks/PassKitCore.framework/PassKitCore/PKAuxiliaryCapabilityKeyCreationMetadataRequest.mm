@interface PKAuxiliaryCapabilityKeyCreationMetadataRequest
- (PKAuxiliaryCapabilityKeyCreationMetadataRequest)initWithCapabilityStates:(id)states pass:(id)pass;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKAuxiliaryCapabilityKeyCreationMetadataRequest

- (PKAuxiliaryCapabilityKeyCreationMetadataRequest)initWithCapabilityStates:(id)states pass:(id)pass
{
  statesCopy = states;
  passCopy = pass;
  v12.receiver = self;
  v12.super_class = PKAuxiliaryCapabilityKeyCreationMetadataRequest;
  v9 = [(PKAuxiliaryCapabilityWebServiceRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_capabilityStates, states);
    [(PKAuxiliaryCapabilityWebServiceRequest *)v10 setPass:passCopy];
  }

  return v10;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v32[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  informationCopy = information;
  v32[0] = @"devices";
  v32[1] = identifierCopy;
  v25 = identifierCopy;
  v32[2] = @"auxiliaryCapabilityKeyCreationMetadata";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v26 = lCopy;
  v12 = [(PKAuxiliaryCapabilityWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v11 queryParameters:0 appleAccountInformation:informationCopy];

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = [(NSArray *)self->_capabilityStates pk_arrayByApplyingBlock:&__block_literal_global_41];
  [v13 setObject:v14 forKeyedSubscript:@"capabilityStates"];

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  pass = [(PKAuxiliaryCapabilityWebServiceRequest *)self pass];
  devicePaymentApplications = [pass devicePaymentApplications];

  v18 = [devicePaymentApplications countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(devicePaymentApplications);
        }

        dpanIdentifier = [*(*(&v27 + 1) + 8 * i) dpanIdentifier];
        [v15 addObject:dpanIdentifier];
      }

      v19 = [devicePaymentApplications countByEnumeratingWithState:&v27 objects:v31 count:16];
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