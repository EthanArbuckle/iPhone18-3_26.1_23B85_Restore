@interface PKPeerPaymentAcceptTermsRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 deviceIdentifier:(id)a5;
@end

@implementation PKPeerPaymentAcceptTermsRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 deviceIdentifier:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v16 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v23 = 138543618;
    v24 = v18;
    v25 = 2082;
    v26 = "url";
LABEL_14:
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v23, 0x16u);

    goto LABEL_15;
  }

  if (!v9)
  {
    v16 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    v23 = 138543618;
    v24 = v18;
    v25 = 2082;
    v26 = "appleAccountInformation";
    goto LABEL_14;
  }

  if (!v10)
  {
    v16 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v20 = objc_opt_class();
    v18 = NSStringFromClass(v20);
    v23 = 138543618;
    v24 = v18;
    v25 = 2082;
    v26 = "deviceIdentifier";
    goto LABEL_14;
  }

  if (self->_termsIdentifier)
  {
    v12 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v8 endpointComponents:&unk_1F23B46A0 queryParameters:0 appleAccountInformation:v9];
    [v12 setHTTPMethod:@"POST"];
    [v12 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v13 = [MEMORY[0x1E695DF90] dictionary];
    [v13 setObject:self->_termsIdentifier forKey:@"termsIdentifier"];
    v14 = [objc_opt_class() _HTTPBodyWithDictionary:v13];
    [v12 setHTTPBody:v14];

    v15 = [v12 copy];
    goto LABEL_16;
  }

  v16 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v18 = NSStringFromClass(v21);
    v23 = 138543618;
    v24 = v18;
    v25 = 2082;
    v26 = "_termsIdentifier";
    goto LABEL_14;
  }

LABEL_15:

  v15 = 0;
LABEL_16:

  return v15;
}

@end