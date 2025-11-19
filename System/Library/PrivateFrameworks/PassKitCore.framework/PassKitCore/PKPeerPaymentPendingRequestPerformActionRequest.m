@interface PKPeerPaymentPendingRequestPerformActionRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPeerPaymentPendingRequestPerformActionRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v24 = v17;
    v25 = 2082;
    v26 = "url";
LABEL_16:
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_17;
  }

  if (!v7)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    *buf = 138543618;
    v24 = v17;
    v25 = 2082;
    v26 = "appleAccountInformation";
    goto LABEL_16;
  }

  requestToken = self->_requestToken;
  if (!requestToken)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v19 = objc_opt_class();
    v17 = NSStringFromClass(v19);
    *buf = 138543618;
    v24 = v17;
    v25 = 2082;
    v26 = "_requestToken";
    goto LABEL_16;
  }

  if (!self->_action)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v17 = NSStringFromClass(v20);
      *buf = 138543618;
      v24 = v17;
      v25 = 2082;
      v26 = "_action";
      goto LABEL_16;
    }

LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v22[0] = @"request";
  v22[1] = requestToken;
  v22[2] = @"performAction";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v11 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:v10 queryParameters:0 appleAccountInformation:v8];

  [v11 setHTTPMethod:@"POST"];
  [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = v12;
  if (v11)
  {
    [v12 setObject:self->_requestToken forKey:@"requestToken"];
    [v13 setObject:self->_action forKey:@"action"];
  }

  v14 = [objc_opt_class() _HTTPBodyWithDictionary:v13];
  [v11 setHTTPBody:v14];

  v15 = [v11 copy];
LABEL_18:

  return v15;
}

@end