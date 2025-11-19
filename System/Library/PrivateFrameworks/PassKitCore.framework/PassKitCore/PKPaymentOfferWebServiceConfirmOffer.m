@interface PKPaymentOfferWebServiceConfirmOffer
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKPaymentOfferWebServiceConfirmOffer

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_baseURL)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    *buf = 138543618;
    v40 = v20;
    v41 = 2082;
    v42 = "_baseURL";
LABEL_27:
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_28;
  }

  if (!self->_criteriaIdentifier)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    *buf = 138543618;
    v40 = v20;
    v41 = 2082;
    v42 = "_criteriaIdentifier";
    goto LABEL_27;
  }

  if (!self->_transactionDetails)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v22 = objc_opt_class();
    v20 = NSStringFromClass(v22);
    *buf = 138543618;
    v40 = v20;
    v41 = 2082;
    v42 = "_transactionDetails";
    goto LABEL_27;
  }

  if (!self->_eventType)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v23 = objc_opt_class();
    v20 = NSStringFromClass(v23);
    *buf = 138543618;
    v40 = v20;
    v41 = 2082;
    v42 = "_eventType";
    goto LABEL_27;
  }

  if (!self->_selectionType)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v24 = objc_opt_class();
    v20 = NSStringFromClass(v24);
    *buf = 138543618;
    v40 = v20;
    v41 = 2082;
    v42 = "_selectionType";
    goto LABEL_27;
  }

  if (!v4)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v20 = NSStringFromClass(v25);
      *buf = 138543618;
      v40 = v20;
      v41 = 2082;
      v42 = "appleAccountInformation";
      goto LABEL_27;
    }

LABEL_28:
    v26 = 0;
    goto LABEL_29;
  }

  v6 = PKPaymentOffersSessionDetailsContextToString(self->_context);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:v6 forKeyedSubscript:@"context"];
  baseURL = self->_baseURL;
  v38[0] = self->_criteriaIdentifier;
  v38[1] = @"confirm";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v37 = v7;
  v10 = [(PKPaymentOfferWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v9 queryParameters:v7 appleAccountInformation:v5];

  [v10 setHTTPMethod:@"POST"];
  [v10 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:v6 forKeyedSubscript:@"context"];
  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v11 setObject:sessionIdentifier forKeyedSubscript:@"sessionIdentifier"];
  }

  selectedOfferIdentifier = self->_selectedOfferIdentifier;
  if (selectedOfferIdentifier)
  {
    [v11 setObject:selectedOfferIdentifier forKeyedSubscript:@"selectedOfferIdentifier"];
  }

  rewardsRedemptionIntent = self->_rewardsRedemptionIntent;
  if (rewardsRedemptionIntent)
  {
    v15 = [(PKPaymentOfferRewardsRedemptionIntent *)rewardsRedemptionIntent dictionaryRepresentation];
    [v11 setObject:v15 forKeyedSubscript:@"rewardsRedemptionIntent"];
  }

  v16 = [(PKPaymentOffersSessionTransactionDetails *)self->_transactionDetails dictionaryRepresentation];
  [v11 setObject:v16 forKeyedSubscript:@"transactionDetails"];

  v17 = self->_eventType - 1;
  if (v17 > 2)
  {
    v18 = @"unknown";
  }

  else
  {
    v18 = off_1E79D40C0[v17];
  }

  [v11 setObject:v18 forKeyedSubscript:@"eventType"];
  v28 = self->_selectionType - 1;
  if (v28 > 3)
  {
    v29 = @"unknown";
  }

  else
  {
    v29 = off_1E79D40D8[v28];
  }

  [v11 setObject:v29 forKeyedSubscript:@"selectionType"];
  passSerialNumber = self->_passSerialNumber;
  if (passSerialNumber)
  {
    [v11 setObject:passSerialNumber forKeyedSubscript:@"passSerialNumber"];
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [v11 setObject:passTypeIdentifier forKeyedSubscript:@"passTypeIdentifier"];
  }

  dpanIdentifier = self->_dpanIdentifier;
  if (dpanIdentifier)
  {
    [v11 setObject:dpanIdentifier forKeyedSubscript:@"dpanIdentifier"];
  }

  fpanIdentifier = self->_fpanIdentifier;
  if (fpanIdentifier)
  {
    [v11 setObject:fpanIdentifier forKeyedSubscript:@"fpanIdentifier"];
  }

  if ([(PKSelectedPaymentOffer *)self->_selectedOffer type]== 1)
  {
    v34 = [(PKSelectedPaymentOffer *)self->_selectedOffer selectedInstallmentOffer];
    v35 = [v34 dictionaryRepresentation];

    if (v35)
    {
      [v11 setObject:v35 forKeyedSubscript:@"selectedOfferDetails"];
    }
  }

  v36 = [objc_opt_class() _HTTPBodyWithDictionary:v11];
  [v10 setHTTPBody:v36];

  v26 = [v10 copy];
LABEL_29:

  return v26;
}

@end