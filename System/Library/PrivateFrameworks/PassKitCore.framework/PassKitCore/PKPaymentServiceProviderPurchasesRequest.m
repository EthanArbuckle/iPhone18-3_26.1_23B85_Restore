@interface PKPaymentServiceProviderPurchasesRequest
- (PKPaymentServiceProviderPurchasesRequest)initWithPurchaseState:(id)a3 serviceProviderIdentifier:(id)a4 productIdentifier:(id)a5 actionIdentifier:(id)a6 serviceProviderCountryCode:(id)a7;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentServiceProviderPurchasesRequest

- (PKPaymentServiceProviderPurchasesRequest)initWithPurchaseState:(id)a3 serviceProviderIdentifier:(id)a4 productIdentifier:(id)a5 actionIdentifier:(id)a6 serviceProviderCountryCode:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = PKPaymentServiceProviderPurchasesRequest;
  v17 = [(PKOverlayableWebServiceRequest *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    purchaseState = v17->_purchaseState;
    v17->_purchaseState = v18;

    v20 = [v13 copy];
    serviceProviderIdentifier = v17->_serviceProviderIdentifier;
    v17->_serviceProviderIdentifier = v20;

    v22 = [v14 copy];
    productIdentifier = v17->_productIdentifier;
    v17->_productIdentifier = v22;

    v24 = [v15 copy];
    actionIdentifier = v17->_actionIdentifier;
    v17->_actionIdentifier = v24;

    v26 = [v16 copy];
    countryCode = v17->_countryCode;
    v17->_countryCode = v26;
  }

  return v17;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = MEMORY[0x1E695DF90];
  v10 = a5;
  v11 = a3;
  v12 = [v9 dictionary];
  v13 = v12;
  purchaseState = self->_purchaseState;
  if (purchaseState)
  {
    [v12 setObject:purchaseState forKey:@"state"];
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
  v25[1] = v8;
  v25[2] = @"purchases";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v21 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v20 queryParameters:v13 appleAccountInformation:v10];

  v22 = [objc_opt_class() _HTTPBodyWithDictionary:v19];
  [v21 setHTTPBody:v22];

  [v21 setHTTPMethod:@"POST"];
  v23 = [v21 copy];

  return v23;
}

@end