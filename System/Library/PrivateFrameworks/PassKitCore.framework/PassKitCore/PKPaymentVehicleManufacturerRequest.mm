@interface PKPaymentVehicleManufacturerRequest
+ (id)requestMetadataWithPartnerIdentifier:(id)a3 brandIdentifier:(id)a4;
- (PKPaymentVehicleManufacturerRequest)initWithInvitation:(id)a3 encryptedVehicleDataRequest:(id)a4;
- (PKPaymentVehicleManufacturerRequest)initWithPartnerIdentifier:(id)a3 brandIdentifier:(id)a4 encryptedVehicleDataRequest:(id)a5;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
- (id)requestBody;
@end

@implementation PKPaymentVehicleManufacturerRequest

+ (id)requestMetadataWithPartnerIdentifier:(id)a3 brandIdentifier:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = PKPartnerIdentifierOverride();
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
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
      v18 = v5;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Overriding partner identifier with value %@ (was %@)", &v15, 0x16u);
    }
  }

  v12 = 0;
  if (v6 && v10)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setObject:v10 forKeyedSubscript:@"partnerID"];
    [v13 setObject:v6 forKeyedSubscript:@"brand"];
    v12 = [v13 copy];
  }

  return v12;
}

- (PKPaymentVehicleManufacturerRequest)initWithInvitation:(id)a3 encryptedVehicleDataRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 partnerIdentifier];
  v9 = [v7 brandIdentifier];

  v10 = [(PKPaymentVehicleManufacturerRequest *)self initWithPartnerIdentifier:v8 brandIdentifier:v9 encryptedVehicleDataRequest:v6];
  return v10;
}

- (PKPaymentVehicleManufacturerRequest)initWithPartnerIdentifier:(id)a3 brandIdentifier:(id)a4 encryptedVehicleDataRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = PKPaymentVehicleManufacturerRequest;
  v11 = [(PKOverlayableWebServiceRequest *)&v21 init];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = dictionaryFromSubcredentialEncryptedRequest(v10);
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

  v14 = [objc_opt_class() requestMetadataWithPartnerIdentifier:v8 brandIdentifier:v9];
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

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = @"devices";
  v20 = a4;
  v21 = @"vehicleManufacturerData";
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v19 count:3];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v12 queryParameters:0 appleAccountInformation:v9, v19, v20, v21, v22];

  [v13 setHTTPMethod:@"POST"];
  v14 = objc_opt_class();
  v15 = [(PKPaymentVehicleManufacturerRequest *)self requestBody];
  v16 = [v14 _HTTPBodyWithDictionary:v15];
  [v13 setHTTPBody:v16];

  v17 = [v13 copy];

  return v17;
}

@end