@interface PKPaymentRegistrationRequest
- (id)_requestWithServiceURL:(id)l deviceData:(id)data pushToken:(id)token consistencyData:(id)consistencyData appleAccountInformation:(id)information;
@end

@implementation PKPaymentRegistrationRequest

- (id)_requestWithServiceURL:(id)l deviceData:(id)data pushToken:(id)token consistencyData:(id)consistencyData appleAccountInformation:(id)information
{
  v41 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v13 = MEMORY[0x1E695DF70];
  informationCopy = information;
  consistencyDataCopy = consistencyData;
  tokenCopy = token;
  lCopy = l;
  v18 = [v13 arrayWithObject:@"devices"];
  v19 = v18;
  if (consistencyDataCopy)
  {
    [v18 addObject:@"status"];
  }

  authorizationHeader = [dataCopy authorizationHeader];
  [informationCopy setAuthorizationHeader:authorizationHeader];

  v21 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v19 queryParameters:0 appleAccountInformation:informationCopy];

  [v21 setHTTPMethod:@"POST"];
  [v21 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v21 setCachePolicy:1];
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([dataCopy walletDeleted])
  {
    v23 = @"restricted";
  }

  else
  {
    v23 = @"full";
  }

  [v22 setObject:v23 forKeyedSubscript:@"registrationType"];
  [v22 safelySetObject:tokenCopy forKey:@"pushToken"];

  signedAuthToken = [dataCopy signedAuthToken];
  [v22 safelySetObject:signedAuthToken forKey:@"signedAuthToken"];

  secureElementStateInformation = [dataCopy secureElementStateInformation];
  if (secureElementStateInformation && [MEMORY[0x1E696ACB0] isValidJSONObject:secureElementStateInformation])
  {
    [v22 setObject:secureElementStateInformation forKey:@"SELDInfo"];
  }

  else
  {
    v26 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      v40 = secureElementStateInformation;
      _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Invalid JSON SELDInfo : %@", &v39, 0xCu);
    }
  }

  deviceSerialNumber = [dataCopy deviceSerialNumber];
  [v22 safelySetObject:deviceSerialNumber forKey:@"deviceSerialNumber"];

  deviceMLBSerialNumber = [dataCopy deviceMLBSerialNumber];
  [v22 safelySetObject:deviceMLBSerialNumber forKey:@"deviceMLBSerialNumber"];

  additionalDeviceSerialNumbers = [dataCopy additionalDeviceSerialNumbers];
  [v22 safelySetObject:additionalDeviceSerialNumbers forKey:@"additionalSerialNumbers"];

  companionSerialNumber = [dataCopy companionSerialNumber];
  [v22 safelySetObject:companionSerialNumber forKey:@"companionSerialNumber"];

  productType = [dataCopy productType];
  [v22 safelySetObject:productType forKey:@"productType"];

  platformData = [dataCopy platformData];
  hexEncoding = [platformData hexEncoding];
  [v22 safelySetObject:hexEncoding forKey:@"pairedSEP"];

  platformDataSignature = [dataCopy platformDataSignature];
  hexEncoding2 = [platformDataSignature hexEncoding];
  [v22 safelySetObject:hexEncoding2 forKey:@"pairedSEPSignature"];

  [v22 safelySetObject:consistencyDataCopy forKey:@"consistencyData"];
  v36 = [objc_opt_class() _HTTPBodyWithDictionary:v22];
  [v21 setHTTPBody:v36];

  v37 = [v21 copy];

  return v37;
}

@end