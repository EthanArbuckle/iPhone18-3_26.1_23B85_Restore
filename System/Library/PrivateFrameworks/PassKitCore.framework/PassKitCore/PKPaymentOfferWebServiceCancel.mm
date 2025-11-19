@interface PKPaymentOfferWebServiceCancel
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKPaymentOfferWebServiceCancel

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138543618;
      v24 = v19;
      v25 = 2082;
      v26 = "_baseURL";
LABEL_20:
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);
    }

LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  if (!self->_criteriaIdentifier)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v19 = NSStringFromClass(v20);
      *buf = 138543618;
      v24 = v19;
      v25 = 2082;
      v26 = "_criteriaIdentifier";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v22[0] = self->_criteriaIdentifier;
  v22[1] = @"cancel";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v7 = [(PKPaymentOfferWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v6 queryParameters:0 appleAccountInformation:v4];

  [v7 setHTTPMethod:@"POST"];
  [v7 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = v8;
  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v8 setObject:sessionIdentifier forKeyedSubscript:@"sessionIdentifier"];
  }

  selectedOfferIdentifier = self->_selectedOfferIdentifier;
  if (selectedOfferIdentifier)
  {
    [v9 setObject:selectedOfferIdentifier forKeyedSubscript:@"selectedOfferIdentifier"];
  }

  passSerialNumber = self->_passSerialNumber;
  if (passSerialNumber)
  {
    [v9 setObject:passSerialNumber forKeyedSubscript:@"passSerialNumber"];
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [v9 setObject:passTypeIdentifier forKeyedSubscript:@"passTypeIdentifier"];
  }

  dpanIdentifier = self->_dpanIdentifier;
  if (dpanIdentifier)
  {
    [v9 setObject:dpanIdentifier forKeyedSubscript:@"dpanIdentifier"];
  }

  fpanIdentifier = self->_fpanIdentifier;
  if (fpanIdentifier)
  {
    [v9 setObject:fpanIdentifier forKeyedSubscript:@"fpanIdentifier"];
  }

  v16 = [objc_opt_class() _HTTPBodyWithDictionary:v9];
  [v7 setHTTPBody:v16];

  v17 = [v7 copy];
LABEL_22:

  return v17;
}

@end