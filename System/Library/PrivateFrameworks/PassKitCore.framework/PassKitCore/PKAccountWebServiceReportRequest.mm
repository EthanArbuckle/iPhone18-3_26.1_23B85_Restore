@interface PKAccountWebServiceReportRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceReportRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_baseURL)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138543618;
    v24 = v15;
    v25 = 2082;
    v26 = "_baseURL";
LABEL_18:
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_19;
  }

  if (!v4)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    *buf = 138543618;
    v24 = v15;
    v25 = 2082;
    v26 = "appleAccountInformation";
    goto LABEL_18;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v17 = objc_opt_class();
    v15 = NSStringFromClass(v17);
    *buf = 138543618;
    v24 = v15;
    v25 = 2082;
    v26 = "_accountIdentifier";
    goto LABEL_18;
  }

  if (!self->_report)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v15 = NSStringFromClass(v18);
      *buf = 138543618;
      v24 = v15;
      v25 = 2082;
      v26 = "_report";
      goto LABEL_18;
    }

LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  v22[0] = @"accounts";
  v22[1] = accountIdentifier;
  v22[2] = @"reporting";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v8 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v7 queryParameters:0 appleAccountInformation:v5];
  [v8 setHTTPMethod:@"POST"];
  [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [(PKAccountReport *)self->_report dictionaryRepresentation];
  [v9 addEntriesFromDictionary:v10];

  trigger = self->_trigger;
  v12 = @"unknown";
  if (trigger > 1)
  {
    if (trigger == 3)
    {
      v12 = @"scheduledActivity";
    }

    if (trigger == 2)
    {
      v13 = @"statementChanged";
    }

    else
    {
      v13 = v12;
    }

    goto LABEL_28;
  }

  if (trigger)
  {
    if (trigger == 1)
    {
      v13 = @"manual";
    }

    else
    {
      v13 = @"unknown";
    }

LABEL_28:
    [v9 safelySetObject:v13 forKey:@"trigger"];
  }

  v21 = [objc_opt_class() _HTTPBodyWithDictionary:v9];
  [v8 setHTTPBody:v21];

  v19 = [v8 copy];
LABEL_20:

  return v19;
}

@end