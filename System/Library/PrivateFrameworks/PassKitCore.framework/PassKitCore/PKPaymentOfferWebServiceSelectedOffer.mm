@interface PKPaymentOfferWebServiceSelectedOffer
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKPaymentOfferWebServiceSelectedOffer

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v29 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138543618;
    v26 = v18;
    v27 = 2082;
    v28 = "_baseURL";
LABEL_25:
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_26;
  }

  if (!self->_criteriaIdentifier)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    *buf = 138543618;
    v26 = v18;
    v27 = 2082;
    v28 = "_criteriaIdentifier";
    goto LABEL_25;
  }

  if (!self->_sessionIdentifier)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v20 = objc_opt_class();
    v18 = NSStringFromClass(v20);
    *buf = 138543618;
    v26 = v18;
    v27 = 2082;
    v28 = "_sessionIdentifier";
    goto LABEL_25;
  }

  offerIdentifier = self->_offerIdentifier;
  if (!offerIdentifier)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v21 = objc_opt_class();
    v18 = NSStringFromClass(v21);
    *buf = 138543618;
    v26 = v18;
    v27 = 2082;
    v28 = "_offerIdentifier";
    goto LABEL_25;
  }

  if (!informationCopy)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v18 = NSStringFromClass(v22);
      *buf = 138543618;
      v26 = v18;
      v27 = 2082;
      v28 = "appleAccountInformation";
      goto LABEL_25;
    }

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  v24[0] = self->_criteriaIdentifier;
  v24[1] = @"selected";
  v24[2] = offerIdentifier;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v9 = [(PKPaymentOfferWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];

  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:self->_sessionIdentifier forKeyedSubscript:@"sessionIdentifier"];
  passSerialNumber = self->_passSerialNumber;
  if (passSerialNumber)
  {
    [v10 setObject:passSerialNumber forKeyedSubscript:@"passSerialNumber"];
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [v10 setObject:passTypeIdentifier forKeyedSubscript:@"passTypeIdentifier"];
  }

  dpanIdentifier = self->_dpanIdentifier;
  if (dpanIdentifier)
  {
    [v10 setObject:dpanIdentifier forKeyedSubscript:@"dpanIdentifier"];
  }

  fpanIdentifier = self->_fpanIdentifier;
  if (fpanIdentifier)
  {
    [v10 setObject:fpanIdentifier forKeyedSubscript:@"fpanIdentifier"];
  }

  v15 = [objc_opt_class() _HTTPBodyWithDictionary:v10];
  [v9 setHTTPBody:v15];

  v16 = [v9 copy];
LABEL_27:

  return v16;
}

@end