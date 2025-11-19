@interface PKAccountWebServiceAccountsRequest
- (id)_urlRequestWithServiceURL:(id)a3 AppleAccountInformation:(id)a4;
@end

@implementation PKAccountWebServiceAccountsRequest

- (id)_urlRequestWithServiceURL:(id)a3 AppleAccountInformation:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v16 = @"accounts";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      v10 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:v9 queryParameters:0 appleAccountInformation:v8];

      [v10 setHTTPMethod:@"GET"];
      [v10 setCachePolicy:1];
      v11 = [v10 copy];
      goto LABEL_10;
    }

    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v13 = NSStringFromClass(v14);
      *buf = 138543618;
      v18 = v13;
      v19 = 2082;
      v20 = "appleAccountInformation";
      goto LABEL_8;
    }
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v18 = v13;
      v19 = 2082;
      v20 = "url";
LABEL_8:
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

@end