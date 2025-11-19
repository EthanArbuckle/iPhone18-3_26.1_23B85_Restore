@interface PKAccountWebServiceDeleteFundingSourceRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceDeleteFundingSourceRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "_baseURL";
LABEL_14:
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_15;
  }

  if (!v4)
  {
    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "appleAccountInformation";
    goto LABEL_14;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = objc_opt_class();
    v13 = NSStringFromClass(v15);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "_accountIdentifier";
    goto LABEL_14;
  }

  fundingSourceIdentifier = self->_fundingSourceIdentifier;
  if (fundingSourceIdentifier)
  {
    v18[0] = @"accounts";
    v18[1] = accountIdentifier;
    v18[2] = @"fundingSources";
    v18[3] = fundingSourceIdentifier;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
    v10 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v9 queryParameters:0 appleAccountInformation:v5];

    [v10 setHTTPMethod:@"DELETE"];
    goto LABEL_16;
  }

  v11 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v13 = NSStringFromClass(v16);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "_fundingSourceIdentifier";
    goto LABEL_14;
  }

LABEL_15:

  v10 = 0;
LABEL_16:

  return v10;
}

@end