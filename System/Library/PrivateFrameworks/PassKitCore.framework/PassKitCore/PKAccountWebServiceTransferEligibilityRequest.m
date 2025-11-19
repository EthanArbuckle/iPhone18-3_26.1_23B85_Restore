@interface PKAccountWebServiceTransferEligibilityRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceTransferEligibilityRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKAccountWebServiceTransferEligibilityRequest *)self baseURL];
  if (!v5)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = "baseURL";
LABEL_17:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_18;
  }

  if (!v4)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = "appleAccountInformation";
    goto LABEL_17;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v19 = objc_opt_class();
    v17 = NSStringFromClass(v19);
    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = "_accountIdentifier";
    goto LABEL_17;
  }

  if (!self->_currencyAmount)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v20 = objc_opt_class();
    v17 = NSStringFromClass(v20);
    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = "_currencyAmount";
    goto LABEL_17;
  }

  if (self->_type)
  {
    v23[0] = @"accounts";
    v23[1] = accountIdentifier;
    v23[2] = @"transfers";
    v23[3] = @"eligibility";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    v8 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:v5 endpointComponents:v7 queryParameters:0 appleAccountInformation:v4];

    [v8 setHTTPMethod:@"POST"];
    [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = [(PKCurrencyAmount *)self->_currencyAmount amount];
    v11 = [v10 stringValue];
    [v9 setObject:v11 forKeyedSubscript:@"amount"];

    v12 = [(PKCurrencyAmount *)self->_currencyAmount currency];
    [v9 setObject:v12 forKeyedSubscript:@"currencyCode"];

    v13 = PKAccountTransferTypeToString(self->_type);
    [v9 setObject:v13 forKeyedSubscript:@"type"];

    v14 = [objc_opt_class() _HTTPBodyWithDictionary:v9];
    [v8 setHTTPBody:v14];

    v15 = [v8 copy];
    goto LABEL_19;
  }

  v8 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v17 = NSStringFromClass(v21);
    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = "_type";
    goto LABEL_17;
  }

LABEL_18:
  v15 = 0;
LABEL_19:

  return v15;
}

@end