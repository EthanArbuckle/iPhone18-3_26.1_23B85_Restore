@interface PKPaymentOfferWebServicePaymentOffers
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKPaymentOfferWebServicePaymentOffers

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v55 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  if (!self->_baseURL)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    *buf = 138543618;
    v52 = v45;
    v53 = 2082;
    v54 = "_baseURL";
LABEL_56:
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_57;
  }

  if (!self->_criteriaIdentifier)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    v46 = objc_opt_class();
    v45 = NSStringFromClass(v46);
    *buf = 138543618;
    v52 = v45;
    v53 = 2082;
    v54 = "_criteriaIdentifier";
    goto LABEL_56;
  }

  if (!self->_sessionIdentifier)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    v47 = objc_opt_class();
    v45 = NSStringFromClass(v47);
    *buf = 138543618;
    v52 = v45;
    v53 = 2082;
    v54 = "_sessionIdentifier";
    goto LABEL_56;
  }

  if (!informationCopy)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v48 = objc_opt_class();
      v45 = NSStringFromClass(v48);
      *buf = 138543618;
      v52 = v45;
      v53 = 2082;
      v54 = "appleAccountInformation";
      goto LABEL_56;
    }

LABEL_57:
    v43 = 0;
    goto LABEL_58;
  }

  v6 = PKPaymentOffersSessionDetailsContextToString(self->_context);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:v6 forKeyedSubscript:@"context"];
  baseURL = self->_baseURL;
  criteriaIdentifier = self->_criteriaIdentifier;
  v50[0] = @"paymentOffers";
  v50[1] = criteriaIdentifier;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v11 = [(PKPaymentOfferWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v10 queryParameters:v7 appleAccountInformation:v5];

  [v11 setHTTPMethod:@"POST"];
  [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v12 setObject:self->_sessionIdentifier forKeyedSubscript:@"sessionIdentifier"];
  passSerialNumber = self->_passSerialNumber;
  if (passSerialNumber)
  {
    [v12 setObject:passSerialNumber forKeyedSubscript:@"passSerialNumber"];
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [v12 setObject:passTypeIdentifier forKeyedSubscript:@"passTypeIdentifier"];
  }

  dpanIdentifier = self->_dpanIdentifier;
  if (dpanIdentifier)
  {
    [v12 setObject:dpanIdentifier forKeyedSubscript:@"dpanIdentifier"];
  }

  fpanIdentifier = self->_fpanIdentifier;
  if (fpanIdentifier)
  {
    [v12 setObject:fpanIdentifier forKeyedSubscript:@"fpanIdentifier"];
  }

  amount = self->_amount;
  if (amount)
  {
    stringValue = [(NSDecimalNumber *)amount stringValue];
    [v12 setObject:stringValue forKeyedSubscript:@"amount"];
  }

  currencyCode = self->_currencyCode;
  if (currencyCode)
  {
    [v12 setObject:currencyCode forKeyedSubscript:@"currencyCode"];
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v12 setObject:countryCode forKeyedSubscript:@"countryCode"];
  }

  supportedNetworks = self->_supportedNetworks;
  if (supportedNetworks)
  {
    [v12 setObject:supportedNetworks forKeyedSubscript:@"supportedNetworks"];
  }

  v22 = PKApplePayLaterAvailabilityToString(self->_payLaterSuppressionMode);
  [v12 setObject:v22 forKeyedSubscript:@"payLaterSuppressionMode"];

  merchantIdentifier = self->_merchantIdentifier;
  if (merchantIdentifier)
  {
    [v12 setObject:merchantIdentifier forKeyedSubscript:@"merchantIdentifier"];
  }

  originURL = self->_originURL;
  if (originURL)
  {
    [v12 setObject:originURL forKeyedSubscript:@"originURL"];
  }

  webMerchantIdentifier = self->_webMerchantIdentifier;
  if (webMerchantIdentifier)
  {
    [v12 setObject:webMerchantIdentifier forKeyedSubscript:@"webMerchantIdentifier"];
  }

  webMerchantName = self->_webMerchantName;
  if (webMerchantName)
  {
    [v12 setObject:webMerchantName forKeyedSubscript:@"webMerchantName"];
  }

  merchantName = self->_merchantName;
  if (merchantName)
  {
    [v12 setObject:merchantName forKeyedSubscript:@"merchantName"];
  }

  adamIdentifier = self->_adamIdentifier;
  if (adamIdentifier)
  {
    [v12 setObject:adamIdentifier forKeyedSubscript:@"adamIdentifier"];
  }

  fraudAssessment = self->_fraudAssessment;
  if (fraudAssessment)
  {
    [v12 setObject:fraudAssessment forKeyedSubscript:@"fraudAssessment"];
  }

  merchandisingOfferIdentifiers = self->_merchandisingOfferIdentifiers;
  if (merchandisingOfferIdentifiers)
  {
    allObjects = [(NSSet *)merchandisingOfferIdentifiers allObjects];
    [v12 setObject:allObjects forKeyedSubscript:@"merchandisingOfferIdentifiers"];
  }

  challenge = self->_challenge;
  if (challenge)
  {
    [v12 setObject:challenge forKeyedSubscript:@"challenge"];
  }

  dictionaryRepresentation = [(PKPaymentDeviceMetadata *)self->_deviceMetadata dictionaryRepresentation];
  [v12 safelySetObject:dictionaryRepresentation forKey:@"deviceMetadata"];

  if (self->_handoff)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v12 setObject:v34 forKeyedSubscript:@"handoff"];
  }

  v35 = [MEMORY[0x1E696AD98] numberWithShort:self->_merchantCategoryCode];
  [v12 setObject:v35 forKeyedSubscript:@"merchantCategoryCode"];

  v36 = [MEMORY[0x1E696AD98] numberWithBool:self->_userInitiated];
  [v12 setObject:v36 forKeyedSubscript:@"userInitiated"];

  [v12 setObject:v6 forKeyedSubscript:@"context"];
  transactionDetails = self->_transactionDetails;
  if (transactionDetails)
  {
    dictionaryRepresentation2 = [(PKPaymentOffersSessionTransactionDetails *)transactionDetails dictionaryRepresentation];
    [v12 setObject:dictionaryRepresentation2 forKeyedSubscript:@"transactionDetails"];
  }

  userEnteredAmount = self->_userEnteredAmount;
  if (userEnteredAmount)
  {
    dictionaryRepresentation3 = [(PKCurrencyAmount *)userEnteredAmount dictionaryRepresentation];
    [v12 setObject:dictionaryRepresentation3 forKeyedSubscript:@"userEnteredAmount"];
  }

  v41 = PKPaymentOffersControllerUpdateReasonToString(self->_updateReason);
  [v11 setValue:v41 forHTTPHeaderField:@"X-Apple-List-Offers-Update-Reason"];

  if (v12)
  {
    v42 = [objc_opt_class() _HTTPBodyWithDictionary:v12];
    [v11 setHTTPBody:v42];
  }

  v43 = [v11 copy];

LABEL_58:

  return v43;
}

@end