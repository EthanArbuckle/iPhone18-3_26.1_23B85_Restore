@interface PKPeerPaymentSubmitDeviceScoreIdentifiersRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPeerPaymentSubmitDeviceScoreIdentifiersRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  v8 = informationCopy;
  if (!lCopy)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    *buf = 138543618;
    v26 = v20;
    v27 = 2082;
    v28 = "url";
LABEL_15:
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_16;
  }

  if (!informationCopy)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    *buf = 138543618;
    v26 = v20;
    v27 = 2082;
    v28 = "appleAccountInformation";
    goto LABEL_15;
  }

  paymentIdentifier = self->_paymentIdentifier;
  if (!paymentIdentifier)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v20 = NSStringFromClass(v22);
      *buf = 138543618;
      v26 = v20;
      v27 = 2082;
      v28 = "_paymentIdentifier";
      goto LABEL_15;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v24[0] = @"payment";
  v24[1] = paymentIdentifier;
  v24[2] = @"submitDeviceScoreIdentifiers";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v11 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v10 queryParameters:0 appleAccountInformation:v8];

  [v11 setHTTPMethod:@"POST"];
  [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  requestDeviceScoreIdentifier = self->_requestDeviceScoreIdentifier;
  if (requestDeviceScoreIdentifier)
  {
    uUIDString = [(NSUUID *)requestDeviceScoreIdentifier UUIDString];
    [dictionary setObject:uUIDString forKey:@"requestDeviceScoreIdentifier"];
  }

  sendDeviceScoreIdentifier = self->_sendDeviceScoreIdentifier;
  if (sendDeviceScoreIdentifier)
  {
    uUIDString2 = [(NSUUID *)sendDeviceScoreIdentifier UUIDString];
    [dictionary setObject:uUIDString2 forKey:@"sendDeviceScoreIdentifier"];
  }

  v17 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v11 setHTTPBody:v17];

  v18 = [v11 copy];
LABEL_17:

  return v18;
}

@end