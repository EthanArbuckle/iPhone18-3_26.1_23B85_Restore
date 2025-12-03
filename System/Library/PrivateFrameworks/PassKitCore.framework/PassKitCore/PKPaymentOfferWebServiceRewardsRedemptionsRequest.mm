@interface PKPaymentOfferWebServiceRewardsRedemptionsRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKPaymentOfferWebServiceRewardsRedemptionsRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v30 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  baseURL = [(PKPaymentOfferWebServiceRewardsRedemptionsRequest *)self baseURL];
  if (!baseURL)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    *buf = 138543618;
    v27 = v20;
    v28 = 2082;
    v29 = "baseURL";
LABEL_18:
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_19;
  }

  if (!self->_fpanIdentifier)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    *buf = 138543618;
    v27 = v20;
    v28 = 2082;
    v29 = "_fpanIdentifier";
    goto LABEL_18;
  }

  if (!self->_criteriaIdentifier)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v22 = objc_opt_class();
    v20 = NSStringFromClass(v22);
    *buf = 138543618;
    v27 = v20;
    v28 = 2082;
    v29 = "_criteriaIdentifier";
    goto LABEL_18;
  }

  if (!informationCopy)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v20 = NSStringFromClass(v23);
      *buf = 138543618;
      v27 = v20;
      v28 = 2082;
      v29 = "appleAccountInformation";
      goto LABEL_18;
    }

LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  lastUpdated = self->_lastUpdated;
  if (lastUpdated)
  {
    v8 = MEMORY[0x1E696AD98];
    [(NSDate *)lastUpdated timeIntervalSince1970];
    v9 = [v8 numberWithDouble:?];
    stringValue = [v9 stringValue];
    [v6 setObject:stringValue forKey:@"lastUpdated"];
  }

  limit = self->_limit;
  if (limit)
  {
    stringValue2 = [(NSNumber *)limit stringValue];
    [v6 setObject:stringValue2 forKey:@"limit"];
  }

  v25[0] = @"rewards";
  v25[1] = @"redemptions";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v14 = [v6 copy];
  v15 = [(PKPaymentOfferWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v13 queryParameters:v14 appleAccountInformation:informationCopy];

  [v15 setHTTPMethod:@"POST"];
  [v15 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setObject:self->_fpanIdentifier forKeyedSubscript:@"fpanIdentifier"];
  [v16 setObject:self->_criteriaIdentifier forKeyedSubscript:@"criteriaIdentifier"];
  v17 = [objc_opt_class() _HTTPBodyWithDictionary:v16];
  [v15 setHTTPBody:v17];

  v18 = [v15 copy];
LABEL_20:

  return v18;
}

@end