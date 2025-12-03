@interface PKAccountWebServiceDeleteBeneficiaryRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceDeleteBeneficiaryRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v22 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  if (!self->_baseURL)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138543618;
    v19 = v12;
    v20 = 2082;
    v21 = "_baseURL";
LABEL_14:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_15;
  }

  if (!informationCopy)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    *buf = 138543618;
    v19 = v12;
    v20 = 2082;
    v21 = "appleAccountInformation";
    goto LABEL_14;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v14 = objc_opt_class();
    v12 = NSStringFromClass(v14);
    *buf = 138543618;
    v19 = v12;
    v20 = 2082;
    v21 = "_accountIdentifier";
    goto LABEL_14;
  }

  beneficiaryIdentifier = self->_beneficiaryIdentifier;
  if (beneficiaryIdentifier)
  {
    v17[0] = @"accounts";
    v17[1] = accountIdentifier;
    v17[2] = @"userInfo";
    v17[3] = @"beneficiaries";
    v17[4] = beneficiaryIdentifier;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
    v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];
    [v9 setHTTPMethod:@"DELETE"];
    v10 = [v9 copy];

    goto LABEL_16;
  }

  v8 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v12 = NSStringFromClass(v15);
    *buf = 138543618;
    v19 = v12;
    v20 = 2082;
    v21 = "_beneficiaryIdentifier";
    goto LABEL_14;
  }

LABEL_15:
  v10 = 0;
LABEL_16:

  return v10;
}

@end