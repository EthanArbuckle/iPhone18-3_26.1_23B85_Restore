@interface PKPeerPaymentPassDetailsRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 deviceIdentifier:(id)a5;
@end

@implementation PKPeerPaymentPassDetailsRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 deviceIdentifier:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
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

  if (!v9)
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

  if (v10)
  {
    v20[0] = @"devices";
    v20[1] = v10;
    v20[2] = @"pass";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v13 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v8 endpointComponents:v12 queryParameters:0 appleAccountInformation:v9];

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