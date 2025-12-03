@interface PKPeerPaymentPassDetailsRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier;
@end

@implementation PKPeerPaymentPassDetailsRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  identifierCopy = identifier;
  v11 = identifierCopy;
  if (!lCopy)
  {
    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543618;
    v22 = v16;
    v23 = 2082;
    v24 = "url";
LABEL_11:
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_12;
  }

  if (!informationCopy)
  {
    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    *buf = 138543618;
    v22 = v16;
    v23 = 2082;
    v24 = "appleAccountInformation";
    goto LABEL_11;
  }

  if (identifierCopy)
  {
    v20[0] = @"devices";
    v20[1] = identifierCopy;
    v20[2] = @"pass";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v13 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy];

    [v13 setHTTPMethod:@"GET"];
    [MEMORY[0x1E695AC60] setProperty:&unk_1F23B58D0 forKey:@"PKPeerPaymentEndPointKey" inRequest:v13];
    v14 = [v13 copy];
    goto LABEL_13;
  }

  v13 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v16 = NSStringFromClass(v18);
    *buf = 138543618;
    v22 = v16;
    v23 = 2082;
    v24 = "deviceIdentifier";
    goto LABEL_11;
  }

LABEL_12:
  v14 = 0;
LABEL_13:

  return v14;
}

@end