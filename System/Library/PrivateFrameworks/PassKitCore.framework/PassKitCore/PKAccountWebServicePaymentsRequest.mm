@interface PKAccountWebServicePaymentsRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServicePaymentsRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_baseURL)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138543618;
    v24 = v18;
    v25 = 2082;
    v26 = "_baseURL";
LABEL_17:
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_18;
  }

  if (!v4)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    *buf = 138543618;
    v24 = v18;
    v25 = 2082;
    v26 = "appleAccountInformation";
    goto LABEL_17;
  }

  if (!self->_accountIdentifier)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v18 = NSStringFromClass(v20);
      *buf = 138543618;
      v24 = v18;
      v25 = 2082;
      v26 = "_accountIdentifier";
      goto LABEL_17;
    }

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  beginDate = self->_beginDate;
  if (beginDate)
  {
    v8 = PKW3CDateStringFromDate(beginDate);
    [v6 setObject:v8 forKey:@"beginDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v10 = PKW3CDateStringFromDate(endDate);
    [v6 setObject:v10 forKey:@"endDate"];
  }

  state = self->_state;
  if (state)
  {
    v12 = PKAccountPaymentStateStringForState(state);
    [v6 setObject:v12 forKey:@"state"];
  }

  accountIdentifier = self->_accountIdentifier;
  v22[0] = @"accounts";
  v22[1] = accountIdentifier;
  v22[2] = @"payments";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v15 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v14 queryParameters:v6 appleAccountInformation:v5];
  [v15 setHTTPMethod:@"GET"];
  [v15 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v16 = [v15 copy];

LABEL_19:

  return v16;
}

@end