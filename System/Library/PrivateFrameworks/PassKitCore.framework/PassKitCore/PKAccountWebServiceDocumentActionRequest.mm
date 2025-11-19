@interface PKAccountWebServiceDocumentActionRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceDocumentActionRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138543618;
    v25 = v13;
    v26 = 2082;
    v27 = "_baseURL";
LABEL_15:
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_16;
  }

  if (!v4)
  {
    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    *buf = 138543618;
    v25 = v13;
    v26 = 2082;
    v27 = "appleAccountInformation";
    goto LABEL_15;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v15 = objc_opt_class();
    v13 = NSStringFromClass(v15);
    *buf = 138543618;
    v25 = v13;
    v26 = 2082;
    v27 = "_accountIdentifier";
    goto LABEL_15;
  }

  documentIdentifier = self->_documentIdentifier;
  if (documentIdentifier)
  {
    action = self->_action;
    if ((action - 1) > 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = off_1E79C9B00[action - 1];
    }

    if (action == 3)
    {
      v19 = @"taxForms";
    }

    else
    {
      v19 = @"statements";
    }

    v23[0] = @"accounts";
    v23[1] = accountIdentifier;
    v23[2] = v19;
    v23[3] = documentIdentifier;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    v11 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v20 queryParameters:0 appleAccountInformation:v5];

    [v11 setHTTPMethod:@"POST"];
    [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v21 setObject:v10 forKeyedSubscript:@"action"];
    v22 = [objc_opt_class() _HTTPBodyWithDictionary:v21];
    [v11 setHTTPBody:v22];

    v17 = [v11 copy];
    goto LABEL_17;
  }

  v11 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v13 = NSStringFromClass(v16);
    *buf = 138543618;
    v25 = v13;
    v26 = 2082;
    v27 = "_documentIdentifier";
    goto LABEL_15;
  }

LABEL_16:
  v17 = 0;
LABEL_17:

  return v17;
}

@end