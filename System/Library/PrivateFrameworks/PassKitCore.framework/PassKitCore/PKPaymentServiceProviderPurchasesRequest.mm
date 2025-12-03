@interface PKPaymentServiceProviderPurchasesRequest
- (PKPaymentServiceProviderPurchasesRequest)initWithPurchaseState:(id)state serviceProviderIdentifier:(id)identifier productIdentifier:(id)productIdentifier actionIdentifier:(id)actionIdentifier serviceProviderCountryCode:(id)code;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentServiceProviderPurchasesRequest

- (PKPaymentServiceProviderPurchasesRequest)initWithPurchaseState:(id)state serviceProviderIdentifier:(id)identifier productIdentifier:(id)productIdentifier actionIdentifier:(id)actionIdentifier serviceProviderCountryCode:(id)code
{
  stateCopy = state;
  identifierCopy = identifier;
  productIdentifierCopy = productIdentifier;
  actionIdentifierCopy = actionIdentifier;
  codeCopy = code;
  v29.receiver = self;
  v29.super_class = PKPaymentServiceProviderPurchasesRequest;
  v17 = [(PKOverlayableWebServiceRequest *)&v29 init];
  if (v17)
  {
    v18 = [stateCopy copy];
    purchaseState = v17->_purchaseState;
    v17->_purchaseState = v18;

    v20 = [identifierCopy copy];
    serviceProviderIdentifier = v17->_serviceProviderIdentifier;
    v17->_serviceProviderIdentifier = v20;

    v22 = [productIdentifierCopy copy];
    productIdentifier = v17->_productIdentifier;
    v17->_productIdentifier = v22;

    v24 = [actionIdentifierCopy copy];
    actionIdentifier = v17->_actionIdentifier;
    v17->_actionIdentifier = v24;

    v26 = [codeCopy copy];
    countryCode = v17->_countryCode;
    v17->_countryCode = v26;
  }

  return v17;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v27[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = MEMORY[0x1E695DF90];
  informationCopy = information;
  lCopy = l;
  dictionary = [v9 dictionary];
  v13 = dictionary;
  purchaseState = self->_purchaseState;
  if (purchaseState)
  {
    [dictionary setObject:purchaseState forKey:@"state"];
  }

  serviceProviderIdentifier = self->_serviceProviderIdentifier;
  if (serviceProviderIdentifier)
  {
    [v13 setObject:serviceProviderIdentifier forKey:@"serviceProviderIdentifier"];
  }

  productIdentifier = self->_productIdentifier;
  if (productIdentifier)
  {
    [v13 setObject:productIdentifier forKey:@"productIdentifier"];
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [v13 setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  targetDeviceSerialNumber = self->_targetDeviceSerialNumber;
  if (targetDeviceSerialNumber)
  {
    v26 = @"targetDeviceSerialNumber";
    v27[0] = targetDeviceSerialNumber;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  }

  else
  {
    v19 = 0;
  }

  v25[0] = @"device";
  v25[1] = identifierCopy;
  v25[2] = @"purchases";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v21 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v20 queryParameters:v13 appleAccountInformation:informationCopy];

  v22 = [objc_opt_class() _HTTPBodyWithDictionary:v19];
  [v21 setHTTPBody:v22];

  [v21 setHTTPMethod:@"POST"];
  v23 = [v21 copy];

  return v23;
}

@end