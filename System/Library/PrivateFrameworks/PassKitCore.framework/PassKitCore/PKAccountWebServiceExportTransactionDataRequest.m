@interface PKAccountWebServiceExportTransactionDataRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceExportTransactionDataRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138543618;
    v31 = v19;
    v32 = 2082;
    v33 = "_baseURL";
LABEL_29:
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_30;
  }

  if (!v4)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v20 = objc_opt_class();
    v19 = NSStringFromClass(v20);
    *buf = 138543618;
    v31 = v19;
    v32 = 2082;
    v33 = "appleAccountInformation";
    goto LABEL_29;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v21 = objc_opt_class();
    v19 = NSStringFromClass(v21);
    *buf = 138543618;
    v31 = v19;
    v32 = 2082;
    v33 = "_accountIdentifier";
    goto LABEL_29;
  }

  if (!self->_fileFormat)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v22 = objc_opt_class();
    v19 = NSStringFromClass(v22);
    *buf = 138543618;
    v31 = v19;
    v32 = 2082;
    v33 = "_fileFormat";
    goto LABEL_29;
  }

  if (!self->_beginDate)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v23 = objc_opt_class();
    v19 = NSStringFromClass(v23);
    *buf = 138543618;
    v31 = v19;
    v32 = 2082;
    v33 = "_beginDate";
    goto LABEL_29;
  }

  if (!self->_endDate)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v24 = objc_opt_class();
    v19 = NSStringFromClass(v24);
    *buf = 138543618;
    v31 = v19;
    v32 = 2082;
    v33 = "_endDate";
    goto LABEL_29;
  }

  if (!self->_productTimeZone)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v19 = NSStringFromClass(v25);
      *buf = 138543618;
      v31 = v19;
      v32 = 2082;
      v33 = "_productTimeZone";
      goto LABEL_29;
    }

LABEL_30:
    v26 = 0;
    goto LABEL_31;
  }

  v29[0] = @"accounts";
  v29[1] = accountIdentifier;
  v29[2] = @"exportTransactionData";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];

  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:self->_fileFormat forKeyedSubscript:@"fileFormat"];
  v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v11 setLocale:v12];

  [v11 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZ"];
  [v11 setTimeZone:self->_productTimeZone];
  v13 = [v11 stringFromDate:self->_beginDate];
  [v10 setObject:v13 forKeyedSubscript:@"beginDate"];

  v14 = [v11 stringFromDate:self->_endDate];
  [v10 setObject:v14 forKeyedSubscript:@"endDate"];

  if (self->_type)
  {
    v15 = @"transactionMetadata";
  }

  else
  {
    v15 = @"default";
  }

  [v10 setObject:v15 forKeyedSubscript:@"type"];
  [v10 safelySetObject:self->_statementIdentifier forKey:@"statementIdentifier"];
  trigger = self->_trigger;
  v17 = @"unknown";
  if (trigger > 1)
  {
    if (trigger == 2)
    {
      v17 = @"statementChanged";
    }

    else if (trigger == 3)
    {
      v17 = @"scheduledActivity";
    }

    goto LABEL_38;
  }

  if (trigger)
  {
    if (trigger == 1)
    {
      v17 = @"manual";
    }

LABEL_38:
    [v10 safelySetObject:v17 forKey:@"trigger"];
  }

  if (v10)
  {
    v28 = [objc_opt_class() _HTTPBodyWithDictionary:v10];
    [v9 setHTTPBody:v28];
  }

  v26 = [v9 copy];

LABEL_31:

  return v26;
}

@end