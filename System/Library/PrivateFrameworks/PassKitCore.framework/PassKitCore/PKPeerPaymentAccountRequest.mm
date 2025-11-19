@interface PKPeerPaymentAccountRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPeerPaymentAccountRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:&unk_1F23B46B8 queryParameters:0 appleAccountInformation:v7];
      [v9 setHTTPMethod:@"GET"];
      [v9 setCachePolicy:1];
      v10 = [v9 copy];

      goto LABEL_10;
    }

    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v13 = NSStringFromClass(v14);
      v16 = 138543618;
      v17 = v13;
      v18 = 2082;
      v19 = "appleAccountInformation";
      goto LABEL_8;
    }
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = 138543618;
      v17 = v13;
      v18 = 2082;
      v19 = "url";
LABEL_8:
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v16, 0x16u);
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

@end