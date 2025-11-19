@interface PKAccountWebServiceReportDeviceEventRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceReportDeviceEventRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_baseURL)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543618;
    v22 = v16;
    v23 = 2082;
    v24 = "_baseURL";
LABEL_15:
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_16;
  }

  if (!v4)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    *buf = 138543618;
    v22 = v16;
    v23 = 2082;
    v24 = "appleAccountInformation";
    goto LABEL_15;
  }

  if (!self->_accountIdentifier)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v16 = NSStringFromClass(v18);
      *buf = 138543618;
      v22 = v16;
      v23 = 2082;
      v24 = "_accountIdentifier";
      goto LABEL_15;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(PKPaymentDeviceMetadata *)self->_deviceMetadata dictionaryRepresentation];
  if (v7)
  {
    [v6 setObject:v7 forKey:@"deviceMetadata"];
  }

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [v6 setObject:odiAssessment forKey:@"odiAssessment"];
  }

  v9 = PKAccountDeviceEventToString(self->_event);
  [v6 setObject:v9 forKeyedSubscript:@"event"];

  accountIdentifier = self->_accountIdentifier;
  v20[0] = @"accounts";
  v20[1] = accountIdentifier;
  v20[2] = @"reportEvent";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v12 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v11 queryParameters:0 appleAccountInformation:v5];
  [v12 setHTTPMethod:@"POST"];
  [v12 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v13 = [objc_opt_class() _HTTPBodyWithDictionary:v6];
  [v12 setHTTPBody:v13];

  v14 = [v12 copy];
LABEL_17:

  return v14;
}

@end