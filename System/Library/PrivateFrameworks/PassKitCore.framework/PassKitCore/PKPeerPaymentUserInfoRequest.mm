@interface PKPeerPaymentUserInfoRequest
- (PKPeerPaymentUserInfoRequest)initWithAccountIdentifier:(id)a3 lastUpdated:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPeerPaymentUserInfoRequest

- (PKPeerPaymentUserInfoRequest)initWithAccountIdentifier:(id)a3 lastUpdated:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentUserInfoRequest;
  v9 = [(PKOverlayableWebServiceRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountIdentifier, a3);
    objc_storeStrong(&v10->_lastUpdated, a4);
  }

  return v10;
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v25 = v14;
    v26 = 2082;
    v27 = "url";
LABEL_12:
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_13;
  }

  if (!v7)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    *buf = 138543618;
    v25 = v14;
    v26 = 2082;
    v27 = "appleAccountInformation";
    goto LABEL_12;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    lastUpdated = self->_lastUpdated;
    if (lastUpdated)
    {
      v22 = @"lastUpdated";
      v11 = PKISO8601DateStringFromDate(lastUpdated);
      v23 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      accountIdentifier = self->_accountIdentifier;
    }

    else
    {
      v12 = 0;
    }

    v21[0] = @"account";
    v21[1] = accountIdentifier;
    v21[2] = @"userInfo";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    v19 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:v18 queryParameters:v12 appleAccountInformation:v8];

    [v19 setHTTPMethod:@"GET"];
    [v19 setCachePolicy:1];
    v17 = [v19 copy];

    goto LABEL_16;
  }

  v12 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v14 = NSStringFromClass(v16);
    *buf = 138543618;
    v25 = v14;
    v26 = 2082;
    v27 = "_accountIdentifier";
    goto LABEL_12;
  }

LABEL_13:
  v17 = 0;
LABEL_16:

  return v17;
}

@end