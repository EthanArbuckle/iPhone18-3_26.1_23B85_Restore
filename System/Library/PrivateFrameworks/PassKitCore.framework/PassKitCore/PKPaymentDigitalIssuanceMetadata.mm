@interface PKPaymentDigitalIssuanceMetadata
- (PKPaymentDigitalIssuanceMetadata)initWithDictionary:(id)dictionary;
@end

@implementation PKPaymentDigitalIssuanceMetadata

- (PKPaymentDigitalIssuanceMetadata)initWithDictionary:(id)dictionary
{
  v62 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v60.receiver = self;
  v60.super_class = PKPaymentDigitalIssuanceMetadata;
  v5 = [(PKPaymentDigitalIssuanceMetadata *)&v60 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"serviceProviderIdentifier"];
    serviceProviderIdentifier = v5->_serviceProviderIdentifier;
    v5->_serviceProviderIdentifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"serviceProviderLocalizedDisplayName"];
    serviceProviderLocalizedDisplayName = v5->_serviceProviderLocalizedDisplayName;
    v5->_serviceProviderLocalizedDisplayName = v8;

    v10 = [dictionaryCopy PKStringForKey:@"serviceProviderCountryCode"];
    serviceProviderCountryCode = v5->_serviceProviderCountryCode;
    v5->_serviceProviderCountryCode = v10;

    v12 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"serviceProviderAcceptedNetworks"];
    if (!v12)
    {
      v12 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"serviceProviderSupportedNetworks"];
    }

    v13 = +[PKServiceProviderPaymentRequest availableNetworks];
    v55 = v12;
    v14 = [v12 pk_intersectArray:v13];
    serviceProviderAcceptedNetworks = v5->_serviceProviderAcceptedNetworks;
    v5->_serviceProviderAcceptedNetworks = v14;

    v16 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"serviceProviderCapabilities"];
    serviceProviderCapabilities = v5->_serviceProviderCapabilities;
    v5->_serviceProviderCapabilities = v16;

    v18 = [dictionaryCopy PKDictionaryForKey:@"serviceProviderData"];
    serviceProviderDict = v5->_serviceProviderDict;
    v5->_serviceProviderDict = v18;

    v20 = [dictionaryCopy PKStringForKey:@"action"];
    action = v5->_action;
    v5->_action = v20;

    v22 = [dictionaryCopy PKStringForKey:@"merchantId"];
    merchantID = v5->_merchantID;
    v5->_merchantID = v22;

    v54 = [dictionaryCopy PKArrayForKey:@"defaultSuggestions"];
    v24 = [v54 pk_arrayByApplyingBlock:&__block_literal_global_9];
    defaultSuggestions = v5->_defaultSuggestions;
    v5->_defaultSuggestions = v24;

    v26 = [dictionaryCopy PKSetForKey:@"serviceProviderSupportedCountries"];
    if ([v26 count])
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    objc_storeStrong(&v5->_serviceProviderSupportedCountries, v27);
    v28 = [dictionaryCopy PKStringForKey:@"balanceIdentifier"];
    balanceIdentifier = v5->_balanceIdentifier;
    v5->_balanceIdentifier = v28;

    v53 = [dictionaryCopy PKDictionaryForKey:@"autoTopUpMetaData"];
    v30 = [[PKDigitalIssuanceServiceProviderProduct alloc] initWithDictionary:v53];
    autoTopUpProduct = v5->_autoTopUpProduct;
    v5->_autoTopUpProduct = v30;

    v32 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"serviceProviderProducts"];
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v34 = v32;
    v35 = [v34 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v57;
      do
      {
        v38 = 0;
        do
        {
          if (*v57 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [[PKDigitalIssuanceServiceProviderProduct alloc] initWithDictionary:*(*(&v56 + 1) + 8 * v38)];
          [v33 safelyAddObject:v39];

          ++v38;
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v36);
    }

    v40 = [v33 copy];
    serviceProviderProducts = v5->_serviceProviderProducts;
    v5->_serviceProviderProducts = v40;

    v42 = [dictionaryCopy PKDictionaryForKey:@"balanceMetaData"];
    v43 = [v42 objectForKeyedSubscript:@"localizedDisplayName"];
    balanceLocalizedDisplayName = v5->_balanceLocalizedDisplayName;
    v5->_balanceLocalizedDisplayName = v43;

    v45 = [v42 objectForKeyedSubscript:@"localizedDescription"];
    balanceLocalizedDescription = v5->_balanceLocalizedDescription;
    v5->_balanceLocalizedDescription = v45;

    v47 = [dictionaryCopy PKDictionaryForKey:@"serviceProviderProductsMetaData"];
    v48 = [v47 objectForKeyedSubscript:@"localizedDisplayName"];
    serviceProviderProductsLocalizedDisplayName = v5->_serviceProviderProductsLocalizedDisplayName;
    v5->_serviceProviderProductsLocalizedDisplayName = v48;

    v50 = [v47 objectForKeyedSubscript:@"localizedDescription"];
    serviceProviderProductsLocalizedDescription = v5->_serviceProviderProductsLocalizedDescription;
    v5->_serviceProviderProductsLocalizedDescription = v50;

    v5->_purchaseBased = [dictionaryCopy PKBoolForKey:@"isPurchaseBased"];
  }

  return v5;
}

@end