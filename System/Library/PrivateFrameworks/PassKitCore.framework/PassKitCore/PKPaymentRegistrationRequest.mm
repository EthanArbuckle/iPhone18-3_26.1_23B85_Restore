@interface PKPaymentRegistrationRequest
- (id)_requestWithServiceURL:(id)a3 deviceData:(id)a4 pushToken:(id)a5 consistencyData:(id)a6 appleAccountInformation:(id)a7;
@end

@implementation PKPaymentRegistrationRequest

- (id)_requestWithServiceURL:(id)a3 deviceData:(id)a4 pushToken:(id)a5 consistencyData:(id)a6 appleAccountInformation:(id)a7
{
  v41 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = MEMORY[0x1E695DF70];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a3;
  v18 = [v13 arrayWithObject:@"devices"];
  v19 = v18;
  if (v15)
  {
    [v18 addObject:@"status"];
  }

  v20 = [v12 authorizationHeader];
  [v14 setAuthorizationHeader:v20];

  v21 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v17 endpointComponents:v19 queryParameters:0 appleAccountInformation:v14];

  [v21 setHTTPMethod:@"POST"];
  [v21 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v21 setCachePolicy:1];
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v12 walletDeleted])
  {
    v23 = @"restricted";
  }

  else
  {
    v23 = @"full";
  }

  [v22 setObject:v23 forKeyedSubscript:@"registrationType"];
  [v22 safelySetObject:v16 forKey:@"pushToken"];

  v24 = [v12 signedAuthToken];
  [v22 safelySetObject:v24 forKey:@"signedAuthToken"];

  v25 = [v12 secureElementStateInformation];
  if (v25 && [MEMORY[0x1E696ACB0] isValidJSONObject:v25])
  {
    [v22 setObject:v25 forKey:@"SELDInfo"];
  }

  else
  {
    v26 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      v40 = v25;
      _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Invalid JSON SELDInfo : %@", &v39, 0xCu);
    }
  }

  v27 = [v12 deviceSerialNumber];
  [v22 safelySetObject:v27 forKey:@"deviceSerialNumber"];

  v28 = [v12 deviceMLBSerialNumber];
  [v22 safelySetObject:v28 forKey:@"deviceMLBSerialNumber"];

  v29 = [v12 additionalDeviceSerialNumbers];
  [v22 safelySetObject:v29 forKey:@"additionalSerialNumbers"];

  v30 = [v12 companionSerialNumber];
  [v22 safelySetObject:v30 forKey:@"companionSerialNumber"];

  v31 = [v12 productType];
  [v22 safelySetObject:v31 forKey:@"productType"];

  v32 = [v12 platformData];
  v33 = [v32 hexEncoding];
  [v22 safelySetObject:v33 forKey:@"pairedSEP"];

  v34 = [v12 platformDataSignature];
  v35 = [v34 hexEncoding];
  [v22 safelySetObject:v35 forKey:@"pairedSEPSignature"];

  [v22 safelySetObject:v15 forKey:@"consistencyData"];
  v36 = [objc_opt_class() _HTTPBodyWithDictionary:v22];
  [v21 setHTTPBody:v36];

  v37 = [v21 copy];

  return v37;
}

@end