@interface PKPaymentRequirementsResponse
+ (id)emptyRequirementsResponse;
- (PKPaymentRequirementsResponse)initWithData:(id)a3 headers:(id)a4;
- (PKPaymentRequirementsResponse)initWithProduct:(id)a3;
- (PKPaymentRequirementsResponse)initWithProvisioningMethodMetadata:(id)a3;
@end

@implementation PKPaymentRequirementsResponse

- (PKPaymentRequirementsResponse)initWithData:(id)a3 headers:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v62.receiver = self;
  v62.super_class = PKPaymentRequirementsResponse;
  v7 = [(PKWebServiceResponse *)&v62 initWithData:a3 headers:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(PKWebServiceResponse *)v7 JSONObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 objectForKeyedSubscript:@"requirementsStatus"], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [v9 objectForKeyedSubscript:@"requirementsStatus"];
      v8->_status = [v11 integerValue];

      v12 = [v9 PKStringForKey:@"nonce"];
      v13 = [v12 copy];
      nonce = v8->_nonce;
      v8->_nonce = v13;

      v15 = [v6 PKStringForKey:@"x-pod-region"];
      region = v8->_region;
      v8->_region = v15;

      status = v8->_status;
      if (status == 2)
      {
        v18 = [v9 PKArrayContaining:objc_opt_class() forKey:@"possibleProducts"];
        if (!v18)
        {
          goto LABEL_18;
        }

        v51 = v8;
        obja = v9;
        productIdentifier = [MEMORY[0x1E695DF70] array];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v38 = v18;
        v39 = [v38 countByEnumeratingWithState:&v54 objects:v67 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v55;
          do
          {
            v42 = 0;
            do
            {
              if (*v55 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v54 + 1) + 8 * v42);
              v44 = objc_alloc_init(PKPaymentSetupProduct);
              [(PKPaymentSetupProduct *)v44 updateWithProductDictionary:v43];
              [productIdentifier safelyAddObject:v44];

              ++v42;
            }

            while (v40 != v42);
            v40 = [v38 countByEnumeratingWithState:&v54 objects:v67 count:16];
          }

          while (v40);
        }

        v45 = [MEMORY[0x1E695DEC8] arrayWithArray:productIdentifier];
        v8 = v51;
        possibleProducts = v51->_possibleProducts;
        v51->_possibleProducts = v45;

        v9 = obja;
      }

      else if (status == 1)
      {
        v49 = v6;
        v50 = v8;
        v18 = [MEMORY[0x1E695DF70] array];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = [v9 PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
        v19 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v59;
          do
          {
            v22 = 0;
            do
            {
              v23 = v18;
              if (*v59 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v58 + 1) + 8 * v22);
              [v9 PKDictionaryForKey:@"requiredFieldOptions"];
              v26 = v25 = v9;
              v27 = [v26 PKDictionaryForKey:v24];

              v9 = v25;
              v28 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v24 configuration:v27];
              v18 = v23;
              [v23 safelyAddObject:v28];

              ++v22;
            }

            while (v20 != v22);
            v20 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
          }

          while (v20);
        }

        v29 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v18];
        v8 = v50;
        requiredPaymentSetupFields = v50->_requiredPaymentSetupFields;
        v50->_requiredPaymentSetupFields = v29;

        v31 = [v9 PKStringForKey:@"productIdentifier"];
        productIdentifier = v50->_productIdentifier;
        v50->_productIdentifier = v31;
        v6 = v49;
      }

      else
      {
        v47 = MEMORY[0x1E695DFF8];
        v18 = [v9 objectForKeyedSubscript:@"learnMoreURL"];
        v48 = [v47 URLWithString:v18];
        productIdentifier = &v8->_learnMoreURL->super;
        v8->_learnMoreURL = v48;
      }
    }

    else
    {
      productIdentifier = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(productIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = objc_opt_class();
        *buf = 138543618;
        v64 = v34;
        v65 = 2112;
        v66 = v35;
        v36 = v35;
        _os_log_impl(&dword_1AD337000, productIdentifier, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v18 = v8;
      v8 = 0;
    }

LABEL_18:
  }

  return v8;
}

- (PKPaymentRequirementsResponse)initWithProduct:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPaymentRequirementsResponse;
  v5 = [(PKPaymentRequirementsResponse *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v5->_status = 1;
    v7 = [v4 requiredFields];
    v8 = [v7 copy];
    requiredPaymentSetupFields = v6->_requiredPaymentSetupFields;
    v6->_requiredPaymentSetupFields = v8;

    v10 = [v4 configuration];
    v11 = [v10 productIdentifier];
    v12 = [v11 copy];
    productIdentifier = v6->_productIdentifier;
    v6->_productIdentifier = v12;
  }

  return v6;
}

- (PKPaymentRequirementsResponse)initWithProvisioningMethodMetadata:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPaymentRequirementsResponse;
  v5 = [(PKPaymentRequirementsResponse *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_status = 1;
    v7 = [v4 requiredFields];
    v8 = [v7 copy];
    requiredPaymentSetupFields = v6->_requiredPaymentSetupFields;
    v6->_requiredPaymentSetupFields = v8;

    v10 = [v4 productIdentifier];
    v11 = [v10 copy];
    productIdentifier = v6->_productIdentifier;
    v6->_productIdentifier = v11;
  }

  return v6;
}

+ (id)emptyRequirementsResponse
{
  v2 = objc_alloc_init(PKPaymentRequirementsResponse);
  v2->_status = 1;

  return v2;
}

@end