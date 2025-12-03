@interface PKPaymentVehicleManufacturerRequest
+ (id)requestMetadataWithPartnerIdentifier:(id)identifier brandIdentifier:(id)brandIdentifier;
- (PKPaymentVehicleManufacturerRequest)initWithInvitation:(id)invitation encryptedVehicleDataRequest:(id)request;
- (PKPaymentVehicleManufacturerRequest)initWithPartnerIdentifier:(id)identifier brandIdentifier:(id)brandIdentifier encryptedVehicleDataRequest:(id)request;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
- (id)requestBody;
@end

@implementation PKPaymentVehicleManufacturerRequest

+ (id)requestMetadataWithPartnerIdentifier:(id)identifier brandIdentifier:(id)brandIdentifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  brandIdentifierCopy = brandIdentifier;
  v7 = PKPartnerIdentifierOverride();
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = identifierCopy;
  }

  v10 = v9;
  if ([v8 length])
  {
    v11 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = identifierCopy;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Overriding partner identifier with value %@ (was %@)", &v15, 0x16u);
    }
  }

  v12 = 0;
  if (brandIdentifierCopy && v10)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setObject:v10 forKeyedSubscript:@"partnerID"];
    [v13 setObject:brandIdentifierCopy forKeyedSubscript:@"brand"];
    v12 = [v13 copy];
  }

  return v12;
}

- (PKPaymentVehicleManufacturerRequest)initWithInvitation:(id)invitation encryptedVehicleDataRequest:(id)request
{
  requestCopy = request;
  invitationCopy = invitation;
  partnerIdentifier = [invitationCopy partnerIdentifier];
  brandIdentifier = [invitationCopy brandIdentifier];

  v10 = [(PKPaymentVehicleManufacturerRequest *)self initWithPartnerIdentifier:partnerIdentifier brandIdentifier:brandIdentifier encryptedVehicleDataRequest:requestCopy];
  return v10;
}

- (PKPaymentVehicleManufacturerRequest)initWithPartnerIdentifier:(id)identifier brandIdentifier:(id)brandIdentifier encryptedVehicleDataRequest:(id)request
{
  identifierCopy = identifier;
  brandIdentifierCopy = brandIdentifier;
  requestCopy = request;
  v21.receiver = self;
  v21.super_class = PKPaymentVehicleManufacturerRequest;
  v11 = [(PKOverlayableWebServiceRequest *)&v21 init];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = dictionaryFromSubcredentialEncryptedRequest(requestCopy);
  encryptedVehicleDataRequest = v11->_encryptedVehicleDataRequest;
  v11->_encryptedVehicleDataRequest = v12;

  if (!v11->_encryptedVehicleDataRequest)
  {
    v17 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v18 = "Missing encryptedVehicleDataRequest on vehicle manufacturer request";
LABEL_9:
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, v18, v20, 2u);
    }

LABEL_10:

    v16 = 0;
    goto LABEL_11;
  }

  v14 = [objc_opt_class() requestMetadataWithPartnerIdentifier:identifierCopy brandIdentifier:brandIdentifierCopy];
  metadata = v11->_metadata;
  v11->_metadata = v14;

  if (!v11->_metadata)
  {
    v17 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v18 = "Missing metadata on vehicle manufacturer request";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_4:
  v16 = v11;
LABEL_11:

  return v16;
}

- (id)requestBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_encryptedVehicleDataRequest forKeyedSubscript:@"vehicleData"];
  [v3 setObject:self->_metadata forKeyedSubscript:@"metadata"];
  v4 = [v3 copy];

  return v4;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = @"devices";
  identifierCopy = identifier;
  v21 = @"vehicleManufacturerData";
  v8 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy2 = identifier;
  lCopy = l;
  v12 = [v8 arrayWithObjects:&v19 count:3];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy, v19, identifierCopy, v21, v22];

  [v13 setHTTPMethod:@"POST"];
  v14 = objc_opt_class();
  requestBody = [(PKPaymentVehicleManufacturerRequest *)self requestBody];
  v16 = [v14 _HTTPBodyWithDictionary:requestBody];
  [v13 setHTTPBody:v16];

  v17 = [v13 copy];

  return v17;
}

@end