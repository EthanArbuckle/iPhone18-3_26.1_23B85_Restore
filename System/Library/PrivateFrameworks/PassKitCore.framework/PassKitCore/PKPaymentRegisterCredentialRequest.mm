@interface PKPaymentRegisterCredentialRequest
+ (id)requestMetadataFromCarKeyRegistrationMetadata:(id)metadata withCredential:(id)credential;
+ (id)requestMetadataFromRegistrationMetadata:(id)metadata withCredential:(id)credential;
- (PKPaymentRegisterCredentialRequest)initWithCredential:(id)credential metadata:(id)metadata;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
- (id)requestBody;
- (void)buildRequestBody:(id)body;
@end

@implementation PKPaymentRegisterCredentialRequest

+ (id)requestMetadataFromRegistrationMetadata:(id)metadata withCredential:(id)credential
{
  metadataCopy = metadata;
  credentialCopy = credential;
  v8 = credentialCopy;
  v9 = 0;
  if (metadataCopy && credentialCopy)
  {
    if ([metadataCopy productType])
    {
      v9 = 0;
    }

    else
    {
      v9 = [self requestMetadataFromCarKeyRegistrationMetadata:metadataCopy withCredential:v8];
    }
  }

  return v9;
}

+ (id)requestMetadataFromCarKeyRegistrationMetadata:(id)metadata withCredential:(id)credential
{
  v28 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  credentialCopy = credential;
  v7 = PKPartnerIdentifierOverride();
  partnerIdentifier = [credentialCopy partnerIdentifier];
  if ([v7 length])
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = partnerIdentifier;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Overriding partner identifier with value %@ (was %@)", &v24, 0x16u);
    }

    v10 = v7;
    partnerIdentifier = v10;
  }

  v11 = 0;
  if (metadataCopy && partnerIdentifier)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 setObject:@"car" forKeyedSubscript:@"category"];
    [v12 setObject:partnerIdentifier forKeyedSubscript:@"partnerID"];
    brandIdentifier = [credentialCopy brandIdentifier];
    [v12 setObject:brandIdentifier forKeyedSubscript:@"brand"];

    v14 = PKAppletSubcredentialCarKeyVehicleVersionToString([credentialCopy carKeyVehicleVersion]);
    [v12 setObject:v14 forKeyedSubscript:@"deviceVehicleServerVersion"];

    v15 = PKAppletSubcredentialCarKeyServerVersionToString([credentialCopy carKeyServerVersion]);
    [v12 setObject:v15 forKeyedSubscript:@"vehicleOwnerDeviceFrameworkVersion"];

    v16 = PKAppletSubcredentialKeyClassToString([credentialCopy keyClass]);
    [v12 setObject:v16 forKeyedSubscript:@"keyClass"];

    v17 = PKAppletSubcredentialCredentialAuthorityTypeToString([credentialCopy credentialAuthorityType]);
    [v12 setObject:v17 forKeyedSubscript:@"keyOrigin"];

    personalizedVehicleIdentifier = [metadataCopy personalizedVehicleIdentifier];
    [v12 setObject:personalizedVehicleIdentifier forKeyedSubscript:@"personalizedVehicleIdentifier"];

    keyType = [metadataCopy keyType];
    if (keyType)
    {
      if (keyType != 1)
      {
LABEL_12:
        make = [metadataCopy make];
        [v12 setObject:make forKeyedSubscript:@"make"];

        model = [metadataCopy model];
        [v12 setObject:model forKeyedSubscript:@"model"];

        v11 = [v12 copy];
        goto LABEL_13;
      }

      v20 = @"SHARED";
    }

    else
    {
      v20 = @"OWNER";
    }

    [v12 setObject:v20 forKeyedSubscript:@"type"];
    goto LABEL_12;
  }

LABEL_13:

  return v11;
}

- (PKPaymentRegisterCredentialRequest)initWithCredential:(id)credential metadata:(id)metadata
{
  v24 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  metadataCopy = metadata;
  v19.receiver = self;
  v19.super_class = PKPaymentRegisterCredentialRequest;
  v9 = [(PKOverlayableWebServiceRequest *)&v19 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v9->_credential, credential);
  identifier = [credentialCopy identifier];
  credentialIdentifier = v10->_credentialIdentifier;
  v10->_credentialIdentifier = identifier;

  if (!v10->_credentialIdentifier)
  {
    v16 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = credentialCopy;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Missing credential identifier on register request: %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v13 = [objc_opt_class() requestMetadataFromRegistrationMetadata:metadataCopy withCredential:credentialCopy];
  metadata = v10->_metadata;
  v10->_metadata = v13;

  if (!v10->_metadata)
  {
    v16 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      partnerIdentifier = [credentialCopy partnerIdentifier];
      *buf = 138412546;
      v21 = metadataCopy;
      v22 = 2112;
      v23 = partnerIdentifier;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Invalid metadata/partner identifier on register request: %@, %@", buf, 0x16u);
    }

LABEL_9:

    v15 = 0;
    goto LABEL_10;
  }

LABEL_4:
  v15 = v10;
LABEL_10:

  return v15;
}

- (id)requestBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PKPaymentRegisterCredentialRequest *)self buildRequestBody:v3];
  v4 = [v3 copy];

  return v4;
}

- (void)buildRequestBody:(id)body
{
  credentialIdentifier = self->_credentialIdentifier;
  bodyCopy = body;
  [bodyCopy setObject:credentialIdentifier forKeyedSubscript:@"keyID"];
  [bodyCopy setObject:self->_metadata forKeyedSubscript:@"keyMetadata"];
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = @"devices";
  identifierCopy = identifier;
  v21 = @"registerKey";
  v8 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy2 = identifier;
  lCopy = l;
  v12 = [v8 arrayWithObjects:&v19 count:3];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy, v19, identifierCopy, v21, v22];

  [v13 setHTTPMethod:@"POST"];
  v14 = objc_opt_class();
  requestBody = [(PKPaymentRegisterCredentialRequest *)self requestBody];
  v16 = [v14 _HTTPBodyWithDictionary:requestBody];
  [v13 setHTTPBody:v16];

  v17 = [v13 copy];

  return v17;
}

@end