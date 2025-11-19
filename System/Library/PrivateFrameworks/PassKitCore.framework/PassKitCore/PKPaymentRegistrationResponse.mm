@interface PKPaymentRegistrationResponse
- (PKPaymentRegistrationResponse)initWithData:(id)a3;
@end

@implementation PKPaymentRegistrationResponse

- (PKPaymentRegistrationResponse)initWithData:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = PKPaymentRegistrationResponse;
  v3 = [(PKWebServiceResponse *)&v64 initWithData:a3];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 PKStringForKey:@"deviceIdentifier"];
    deviceIdentifier = v4->_deviceIdentifier;
    v4->_deviceIdentifier = v6;

    v8 = [v5 PKNumberForKey:@"cardsOnFile"];
    cardsOnFile = v4->_cardsOnFile;
    v4->_cardsOnFile = v8;

    v10 = [v5 PKNumberForKey:@"maxCards"];
    maxCards = v4->_maxCards;
    v4->_maxCards = v10;

    v12 = [v5 PKStringForKey:@"primaryRegion"];
    primaryRegion = v4->_primaryRegion;
    v4->_primaryRegion = v12;

    v14 = [v5 PKStringForKey:@"environmentName"];
    environmentName = v4->_environmentName;
    v55 = v4;
    v4->_environmentName = v14;

    v16 = [v5 PKDictionaryForKey:@"regions"];
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v54 = v5;
    v18 = [v5 PKBoolForKey:@"hasPeerPaymentAccount"];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v19 = v16;
    v20 = [(PKPaymentRegistrationResponse *)v19 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v61;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v61 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v60 + 1) + 8 * i);
          v25 = [PKPaymentWebServiceRegion alloc];
          v26 = [(PKPaymentRegistrationResponse *)v19 PKDictionaryForKey:v24];
          v27 = [(PKPaymentWebServiceRegion *)v25 initWithDictionary:v26 hasPeerPaymentAccount:v18];
          [v17 setObject:v27 forKeyedSubscript:v24];
        }

        v21 = [(PKPaymentRegistrationResponse *)v19 countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v21);
    }

    [(PKPaymentRegistrationResponse *)v4 setRegions:v17];
    v28 = [v54 objectForKey:@"brokerURL"];
    if (v28)
    {
      v29 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v28];
      brokerURL = v4->_brokerURL;
      v4->_brokerURL = v29;
    }

    v31 = [v54 objectForKey:@"trustedServiceManagerURL"];
    if (v31)
    {
      v32 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v31];
      trustedServiceManagerURL = v4->_trustedServiceManagerURL;
      v4->_trustedServiceManagerURL = v32;
    }

    v34 = [v54 objectForKey:{@"paymentServicesURL", v31}];
    if (v34)
    {
      v35 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v34];
      paymentServicesURL = v4->_paymentServicesURL;
      v4->_paymentServicesURL = v35;
    }

    v37 = [v54 objectForKey:@"certificates"];
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v39 = v37;
    v40 = [v39 countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v57;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:*(*(&v56 + 1) + 8 * j) options:0];
          if (v44)
          {
            [v38 addObject:v44];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v56 objects:v69 count:16];
      }

      while (v41);
    }

    v45 = [v38 copy];
    v46 = v55;
    certificates = v55->_certificates;
    v55->_certificates = v45;

    v5 = v54;
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = objc_opt_class();
      *buf = 138543618;
      v66 = v49;
      v67 = 2112;
      v68 = v50;
      v51 = v50;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
    }

    v19 = v4;
    v46 = 0;
  }

  return v46;
}

@end