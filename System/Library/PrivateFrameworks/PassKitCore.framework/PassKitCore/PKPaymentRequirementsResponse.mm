@interface PKPaymentRequirementsResponse
+ (id)emptyRequirementsResponse;
- (PKPaymentRequirementsResponse)initWithData:(id)data headers:(id)headers;
- (PKPaymentRequirementsResponse)initWithProduct:(id)product;
- (PKPaymentRequirementsResponse)initWithProvisioningMethodMetadata:(id)metadata;
@end

@implementation PKPaymentRequirementsResponse

- (PKPaymentRequirementsResponse)initWithData:(id)data headers:(id)headers
{
  v69 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  v62.receiver = self;
  v62.super_class = PKPaymentRequirementsResponse;
  v7 = [(PKWebServiceResponse *)&v62 initWithData:data headers:headersCopy];
  v8 = v7;
  if (v7)
  {
    jSONObject = [(PKWebServiceResponse *)v7 JSONObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([jSONObject objectForKeyedSubscript:@"requirementsStatus"], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [jSONObject objectForKeyedSubscript:@"requirementsStatus"];
      v8->_status = [v11 integerValue];

      v12 = [jSONObject PKStringForKey:@"nonce"];
      v13 = [v12 copy];
      nonce = v8->_nonce;
      v8->_nonce = v13;

      v15 = [headersCopy PKStringForKey:@"x-pod-region"];
      region = v8->_region;
      v8->_region = v15;

      status = v8->_status;
      if (status == 2)
      {
        array = [jSONObject PKArrayContaining:objc_opt_class() forKey:@"possibleProducts"];
        if (!array)
        {
          goto LABEL_18;
        }

        v51 = v8;
        obja = jSONObject;
        productIdentifier = [MEMORY[0x1E695DF70] array];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v38 = array;
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

        jSONObject = obja;
      }

      else if (status == 1)
      {
        v49 = headersCopy;
        v50 = v8;
        array = [MEMORY[0x1E695DF70] array];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = [jSONObject PKArrayContaining:objc_opt_class() forKey:@"requiredFields"];
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
              v23 = array;
              if (*v59 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v58 + 1) + 8 * v22);
              [jSONObject PKDictionaryForKey:@"requiredFieldOptions"];
              v26 = v25 = jSONObject;
              v27 = [v26 PKDictionaryForKey:v24];

              jSONObject = v25;
              v28 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v24 configuration:v27];
              array = v23;
              [v23 safelyAddObject:v28];

              ++v22;
            }

            while (v20 != v22);
            v20 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
          }

          while (v20);
        }

        v29 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:array];
        v8 = v50;
        requiredPaymentSetupFields = v50->_requiredPaymentSetupFields;
        v50->_requiredPaymentSetupFields = v29;

        v31 = [jSONObject PKStringForKey:@"productIdentifier"];
        productIdentifier = v50->_productIdentifier;
        v50->_productIdentifier = v31;
        headersCopy = v49;
      }

      else
      {
        v47 = MEMORY[0x1E695DFF8];
        array = [jSONObject objectForKeyedSubscript:@"learnMoreURL"];
        v48 = [v47 URLWithString:array];
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

      array = v8;
      v8 = 0;
    }

LABEL_18:
  }

  return v8;
}

- (PKPaymentRequirementsResponse)initWithProduct:(id)product
{
  productCopy = product;
  v15.receiver = self;
  v15.super_class = PKPaymentRequirementsResponse;
  v5 = [(PKPaymentRequirementsResponse *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v5->_status = 1;
    requiredFields = [productCopy requiredFields];
    v8 = [requiredFields copy];
    requiredPaymentSetupFields = v6->_requiredPaymentSetupFields;
    v6->_requiredPaymentSetupFields = v8;

    configuration = [productCopy configuration];
    productIdentifier = [configuration productIdentifier];
    v12 = [productIdentifier copy];
    productIdentifier = v6->_productIdentifier;
    v6->_productIdentifier = v12;
  }

  return v6;
}

- (PKPaymentRequirementsResponse)initWithProvisioningMethodMetadata:(id)metadata
{
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = PKPaymentRequirementsResponse;
  v5 = [(PKPaymentRequirementsResponse *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_status = 1;
    requiredFields = [metadataCopy requiredFields];
    v8 = [requiredFields copy];
    requiredPaymentSetupFields = v6->_requiredPaymentSetupFields;
    v6->_requiredPaymentSetupFields = v8;

    productIdentifier = [metadataCopy productIdentifier];
    v11 = [productIdentifier copy];
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