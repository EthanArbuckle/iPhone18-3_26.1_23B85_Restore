@interface PKPaymentCreateVehicleShareRequest
- (PKPaymentCreateVehicleShareRequest)initWithSubcredentialIdentifier:(id)identifier shareValidationType:(unint64_t)type shareValidationContainers:(id)containers;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
- (id)requestBody;
@end

@implementation PKPaymentCreateVehicleShareRequest

- (PKPaymentCreateVehicleShareRequest)initWithSubcredentialIdentifier:(id)identifier shareValidationType:(unint64_t)type shareValidationContainers:(id)containers
{
  identifierCopy = identifier;
  containersCopy = containers;
  v18.receiver = self;
  v18.super_class = PKPaymentCreateVehicleShareRequest;
  v11 = [(PKOverlayableWebServiceRequest *)&v18 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v11->_subcredentialIdentifier, identifier);
  v12->_shareValidationType = type;
  objc_storeStrong(&v12->_remoteShareValidationContainers, containers);
  if (!v12->_subcredentialIdentifier)
  {
    v14 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      v15 = "Missing subcredentialIdentifier on create vehicle share request";
LABEL_9:
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, v15, v17, 2u);
    }

LABEL_10:

    v13 = 0;
    goto LABEL_11;
  }

  if (![(NSArray *)v12->_remoteShareValidationContainers count])
  {
    v14 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      v15 = "Missing remoteShareValidationContainers on create vehicle share request";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_4:
  v13 = v12;
LABEL_11:

  return v13;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v18[4] = *MEMORY[0x1E69E9840];
  v18[0] = @"devices";
  v18[1] = identifier;
  v18[2] = @"sharing";
  v18[3] = @"vehicleKeyShare";
  v8 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy = identifier;
  lCopy = l;
  v12 = [v8 arrayWithObjects:v18 count:4];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy];

  [v13 setHTTPMethod:@"POST"];
  requestBody = [(PKPaymentCreateVehicleShareRequest *)self requestBody];
  v15 = [objc_opt_class() _HTTPBodyWithDictionary:requestBody];
  [v13 setHTTPBody:v15];

  v16 = [v13 copy];

  return v16;
}

- (id)requestBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_subcredentialIdentifier forKeyedSubscript:@"keyID"];
  v4 = PKVehicleShareValidationTypeToString(self->_shareValidationType);
  [v3 setObject:v4 forKeyedSubscript:@"shareValidationType"];

  if (self->_shareValidationType == 2)
  {
    [v3 setObject:@"SenderDeviceData" forKeyedSubscript:@"preShareDataType"];
  }

  v5 = [(NSArray *)self->_remoteShareValidationContainers pk_createArrayByApplyingBlock:&__block_literal_global_1272];
  [v3 setObject:v5 forKeyedSubscript:@"shareDataList"];

  return v3;
}

@end