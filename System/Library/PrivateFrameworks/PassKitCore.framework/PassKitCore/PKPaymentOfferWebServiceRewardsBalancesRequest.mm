@interface PKPaymentOfferWebServiceRewardsBalancesRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKPaymentOfferWebServiceRewardsBalancesRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v23 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  baseURL = [(PKPaymentOfferWebServiceRewardsBalancesRequest *)self baseURL];
  if (!baseURL)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "baseURL";
LABEL_14:
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_15;
  }

  if (!self->_fpanIdentifier)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "_fpanIdentifier";
    goto LABEL_14;
  }

  if (!self->_criteriaIdentifier)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = objc_opt_class();
    v13 = NSStringFromClass(v15);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "_criteriaIdentifier";
    goto LABEL_14;
  }

  if (informationCopy)
  {
    v18[0] = @"rewards";
    v18[1] = @"balances";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v7 = [(PKPaymentOfferWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v6 queryParameters:0 appleAccountInformation:informationCopy];

    [v7 setHTTPMethod:@"POST"];
    [v7 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v8 setObject:self->_fpanIdentifier forKeyedSubscript:@"fpanIdentifier"];
    [v8 setObject:self->_criteriaIdentifier forKeyedSubscript:@"criteriaIdentifier"];
    httpDictionaryRepresentation = [(PKPaymentOffersSessionDetails *)self->_sessionDetails httpDictionaryRepresentation];
    [v8 setObject:httpDictionaryRepresentation forKeyedSubscript:@"sessionDetails"];

    v10 = [objc_opt_class() _HTTPBodyWithDictionary:v8];
    [v7 setHTTPBody:v10];

    v11 = [v7 copy];
    goto LABEL_16;
  }

  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v13 = NSStringFromClass(v16);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "appleAccountInformation";
    goto LABEL_14;
  }

LABEL_15:
  v11 = 0;
LABEL_16:

  return v11;
}

@end