@interface PKPaymentOfferInstallmentCriteria
- (BOOL)eligibleWithConfiguration:(id)configuration ineligibleReason:(unint64_t *)reason;
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferInstallmentCriteria)initWithCoder:(id)coder;
- (PKPaymentOfferInstallmentCriteria)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferInstallmentCriteria

- (PKPaymentOfferInstallmentCriteria)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v54.receiver = self;
  v54.super_class = PKPaymentOfferInstallmentCriteria;
  v5 = [(PKPaymentOfferCriteria *)&v54 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"supportedCurrencyCodes"];
    supportedCurrencyCodes = v5->_supportedCurrencyCodes;
    v5->_supportedCurrencyCodes = v6;

    v8 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"supportedMerchantCountryCodes"];
    supportedMerchantCountryCodes = v5->_supportedMerchantCountryCodes;
    v5->_supportedMerchantCountryCodes = v8;

    v10 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"supportedDeviceRegionCountryCodes"];
    supportedDeviceRegionCountryCodes = v5->_supportedDeviceRegionCountryCodes;
    v5->_supportedDeviceRegionCountryCodes = v10;

    v12 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"supportedLanguages"];
    supportedLanguages = v5->_supportedLanguages;
    v5->_supportedLanguages = v12;

    v14 = [dictionaryCopy PKStringForKey:@"paymentNetworkIdentifier"];
    v5->_paymentNetworkIdentifier = PKPaymentCredentialTypeForPaymentNetworkName(v14);

    v15 = [dictionaryCopy PKStringForKey:@"paymentMethodType"];
    v5->_paymentMethodType = PKPaymentMethodTypeForString(v15);

    v16 = [dictionaryCopy PKStringForKey:@"programName"];
    programName = v5->_programName;
    v5->_programName = v16;

    v18 = [dictionaryCopy PKStringForKey:@"issuerName"];
    v19 = v18;
    if (!v18)
    {
      v19 = [dictionaryCopy PKStringForKey:@"productName"];
    }

    objc_storeStrong(&v5->_issuerName, v19);
    if (!v18)
    {
    }

    v20 = [PKPaymentOfferDynamicContentIcon alloc];
    v21 = [dictionaryCopy PKDictionaryForKey:@"iconURL"];
    v22 = [(PKPaymentOfferDynamicContentIcon *)v20 initWithDictionary:v21];
    icon = v5->_icon;
    v5->_icon = v22;

    v24 = [PKApplyFooterContent alloc];
    v25 = [dictionaryCopy PKDictionaryForKey:@"disclosureFooter"];
    v26 = [(PKApplyFooterContent *)v24 initWithDictionary:v25];
    disclosureFooter = v5->_disclosureFooter;
    v5->_disclosureFooter = v26;

    v28 = [dictionaryCopy PKStringForKey:@"merchandisingIdentifier"];
    merchandisingIdentifier = v5->_merchandisingIdentifier;
    v5->_merchandisingIdentifier = v28;

    v30 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"minimumAmounts"];
    v31 = [v30 pk_setBySafelyApplyingBlock:&__block_literal_global_134];
    minimumAmounts = v5->_minimumAmounts;
    v5->_minimumAmounts = v31;

    v33 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"maximumAmounts"];
    v34 = [v33 pk_setBySafelyApplyingBlock:&__block_literal_global_109];
    maximumAmounts = v5->_maximumAmounts;
    v5->_maximumAmounts = v34;

    v36 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"associatedStoreIdentifiers"];
    associatedStoreIdentifiers = v5->_associatedStoreIdentifiers;
    v5->_associatedStoreIdentifiers = v36;

    v38 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"associatedApplicationIdentifiers"];
    associatedApplicationIdentifiers = v5->_associatedApplicationIdentifiers;
    v5->_associatedApplicationIdentifiers = v38;

    v40 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"associatedWebDomains"];
    v41 = [v40 pk_setBySafelyApplyingBlock:&__block_literal_global_113];
    associatedWebDomains = v5->_associatedWebDomains;
    v5->_associatedWebDomains = v41;

    v43 = [dictionaryCopy PKURLForKey:@"appLaunchURL"];
    appLaunchURL = v5->_appLaunchURL;
    v5->_appLaunchURL = v43;

    v5->_requiresChallenge = [dictionaryCopy PKBoolForKey:@"requiresChallenge"];
    v5->_suppressPayInFull = [dictionaryCopy PKBoolForKey:@"suppressPayInFull"];
    v5->_hasPreconfiguredOffers = [dictionaryCopy PKBoolForKey:@"hasPreconfiguredOffers"];
    v5->_hasDefaultPlan = [dictionaryCopy PKBoolForKey:@"hasDefaultPlan"];
    v5->_requiresInStorePlanSelection = [dictionaryCopy PKBoolForKey:@"requiresInStorePlanSelection"];
    v5->_isHandoff = [dictionaryCopy PKBoolForKey:@"isHandoff"];
    v45 = [dictionaryCopy PKStringForKey:@"localizedPayInFullTitleOverride"];
    localizedPayInFullTitleOverride = v5->_localizedPayInFullTitleOverride;
    v5->_localizedPayInFullTitleOverride = v45;

    v47 = [dictionaryCopy PKStringForKey:@"localizedPayInFullSubtitleOverride"];
    localizedPayInFullSubtitleOverride = v5->_localizedPayInFullSubtitleOverride;
    v5->_localizedPayInFullSubtitleOverride = v47;

    v49 = [dictionaryCopy PKStringForKey:@"localizedTitleOverride"];
    localizedTitleOverride = v5->_localizedTitleOverride;
    v5->_localizedTitleOverride = v49;

    v51 = [dictionaryCopy PKStringForKey:@"localizedSubtitleOverride"];
    localizedSubtitleOverride = v5->_localizedSubtitleOverride;
    v5->_localizedSubtitleOverride = v51;

    v5->_setupAfterPurchaseActiveDuration = [dictionaryCopy PKIntegerForKey:@"setupAfterPurchaseActiveDuration"];
    v5->_setupAfterPurchaseStickyDuration = [dictionaryCopy PKIntegerForKey:@"setupAfterPurchaseStickyDuration"];
  }

  return v5;
}

PKCurrencyAmount *__56__PKPaymentOfferInstallmentCriteria_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCurrencyAmount alloc] initWithDictionary:v2];

  return v3;
}

PKCurrencyAmount *__56__PKPaymentOfferInstallmentCriteria_initWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCurrencyAmount alloc] initWithDictionary:v2];

  return v3;
}

id __56__PKPaymentOfferInstallmentCriteria_initWithDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = a2;
  v4 = [[v2 alloc] initWithString:v3];

  return v4;
}

- (BOOL)eligibleWithConfiguration:(id)configuration ineligibleReason:(unint64_t *)reason
{
  configurationCopy = configuration;
  v38.receiver = self;
  v38.super_class = PKPaymentOfferInstallmentCriteria;
  if (![(PKPaymentOfferCriteria *)&v38 eligibleWithConfiguration:configurationCopy ineligibleReason:reason])
  {
    v14 = 0;
    goto LABEL_69;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = configurationCopy;
    amount = [v7 amount];
    currencyCode = [v7 currencyCode];
    merchantCountryCode = [v7 merchantCountryCode];
    deviceRegion = [v7 deviceRegion];
    supportedNetworks = [v7 supportedNetworks];
    merchantCapabilities = [v7 merchantCapabilities];
    v29 = PKPaymentNetworkNameForPaymentCredentialType(self->_paymentNetworkIdentifier);
    payLaterSuppressionMode = [v7 payLaterSuppressionMode];
    context = [v7 context];
    options = [v7 options];
    if ([(NSSet *)self->_supportedMerchantCountryCodes count])
    {
      if ([(NSSet *)self->_supportedMerchantCountryCodes count])
      {
        v13 = [(NSSet *)self->_supportedMerchantCountryCodes containsObject:merchantCountryCode];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }

    if (context == 3)
    {
      v13 |= merchantCountryCode == 0;
      v18 = 1;
    }

    else
    {
      if (context == 1)
      {
        v16 = deviceRegion;
        if (deviceRegion)
        {
          if ([(NSSet *)self->_supportedDeviceRegionCountryCodes count])
          {
            v17 = [(NSSet *)self->_supportedDeviceRegionCountryCodes containsObject:deviceRegion];
            v14 = v17;
            if (v17)
            {
              v15 = 0;
            }

            else
            {
              v15 = 9;
            }
          }

          else
          {
            v15 = 0;
            v14 = 1;
          }
        }

        else
        {
          v14 = 0;
          v15 = 6;
        }

        v20 = 0;
        if (reason)
        {
          *reason = v15;
        }

        goto LABEL_66;
      }

      v18 = 0;
    }

    if (amount)
    {
      if (currencyCode)
      {
        v19 = v18 ^ 1;
        if (merchantCountryCode)
        {
          v19 = 0;
        }

        if (v19)
        {
          v14 = 0;
          v20 = 1;
          v15 = 5;
        }

        else if (deviceRegion)
        {
          if ([(NSArray *)self->_supportedCurrencyCodes count]&& ![(NSArray *)self->_supportedCurrencyCodes containsObject:currencyCode])
          {
            v14 = 0;
            v20 = 1;
            v15 = 7;
          }

          else if (v13)
          {
            if ([(NSSet *)self->_supportedDeviceRegionCountryCodes count]&& ![(NSSet *)self->_supportedDeviceRegionCountryCodes containsObject:deviceRegion])
            {
              v14 = 0;
              v20 = 1;
              v15 = 9;
            }

            else if (supportedNetworks && v29 && ![supportedNetworks containsObject:v29])
            {
              v14 = 0;
              v20 = 1;
              v15 = 10;
            }

            else if (payLaterSuppressionMode)
            {
              v14 = 0;
              v20 = 1;
              v15 = 11;
            }

            else if ([PKPaymentApplication paymentApplicationSupportsMerchantCapabilties:merchantCapabilities paymentType:self->_paymentMethodType])
            {
              if (options)
              {
                v14 = 0;
                v20 = 1;
                v15 = 15;
              }

              else if ((options & 2) != 0)
              {
                v14 = 0;
                v20 = 1;
                v15 = 16;
              }

              else if ((options & 4) != 0)
              {
                v14 = 0;
                v20 = 1;
                v15 = 17;
              }

              else
              {
                v28 = PKCurrencyAmountCreate(amount, currencyCode, 0);
                maximumAmounts = self->_maximumAmounts;
                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v36[2] = __80__PKPaymentOfferInstallmentCriteria_eligibleWithConfiguration_ineligibleReason___block_invoke;
                v36[3] = &unk_1E79D8908;
                v22 = currencyCode;
                v37 = v22;
                v23 = [(NSSet *)maximumAmounts pk_anyObjectPassingTest:v36];
                minimumAmounts = self->_minimumAmounts;
                v34[0] = MEMORY[0x1E69E9820];
                v34[1] = 3221225472;
                v34[2] = __80__PKPaymentOfferInstallmentCriteria_eligibleWithConfiguration_ineligibleReason___block_invoke_2;
                v34[3] = &unk_1E79D8908;
                v35 = v22;
                v25 = [(NSSet *)minimumAmounts pk_anyObjectPassingTest:v34];
                if (v25 && ([v28 currencyAmountLessThanCurrencyAmount:v25] & 1) != 0)
                {
                  v14 = 0;
                  v15 = 13;
                }

                else if (v23)
                {
                  v26 = [v28 currencyAmountGreaterThanCurrencyAmount:v23];
                  if (v26)
                  {
                    v15 = 14;
                  }

                  else
                  {
                    v15 = 0;
                  }

                  v14 = v26 ^ 1;
                }

                else
                {
                  v15 = 0;
                  v14 = 1;
                }

                v20 = 1;
              }
            }

            else
            {
              v14 = 0;
              v20 = 1;
              v15 = 12;
            }
          }

          else
          {
            v14 = 0;
            v20 = 1;
            v15 = 8;
          }
        }

        else
        {
          v14 = 0;
          v20 = 1;
          v15 = 6;
        }
      }

      else
      {
        v14 = 0;
        v20 = 1;
        v15 = 4;
      }
    }

    else
    {
      v14 = 0;
      v20 = 1;
      v15 = 3;
    }

    v16 = deviceRegion;
LABEL_66:

    if (!v20)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v15 = 0;
  v14 = 1;
LABEL_67:
  if (reason)
  {
    *reason = v15;
  }

LABEL_69:

  return v14 & 1;
}

uint64_t __80__PKPaymentOfferInstallmentCriteria_eligibleWithConfiguration_ineligibleReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 currency];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3 && v5)
  {
    v6 = [v3 isEqual:?];
  }

  else
  {
    v6 = v3 == v5;
  }

  return v6;
}

uint64_t __80__PKPaymentOfferInstallmentCriteria_eligibleWithConfiguration_ineligibleReason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 currency];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3 && v5)
  {
    v6 = [v3 isEqual:?];
  }

  else
  {
    v6 = v3 == v5;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v30.receiver = self;
  v30.super_class = PKPaymentOfferInstallmentCriteria;
  dictionaryRepresentation = [(PKPaymentOfferCriteria *)&v30 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  [v4 setObject:self->_supportedCurrencyCodes forKeyedSubscript:@"supportedCurrencyCodes"];
  allObjects = [(NSSet *)self->_supportedMerchantCountryCodes allObjects];
  [v4 setObject:allObjects forKeyedSubscript:@"supportedMerchantCountryCodes"];

  allObjects2 = [(NSSet *)self->_supportedDeviceRegionCountryCodes allObjects];
  [v4 setObject:allObjects2 forKeyedSubscript:@"supportedDeviceRegionCountryCodes"];

  [v4 setObject:self->_supportedLanguages forKeyedSubscript:@"supportedLanguages"];
  v7 = PKPaymentNetworkNameForPaymentCredentialType(self->_paymentNetworkIdentifier);
  [v4 setObject:v7 forKeyedSubscript:@"paymentNetworkIdentifier"];

  v8 = PKPaymentMethodTypeToString(self->_paymentMethodType);
  [v4 setObject:v8 forKeyedSubscript:@"paymentMethodType"];

  [v4 setObject:self->_programName forKeyedSubscript:@"programName"];
  [v4 setObject:self->_issuerName forKeyedSubscript:@"issuerName"];
  dictionaryRepresentation2 = [(PKPaymentOfferDynamicContentIcon *)self->_icon dictionaryRepresentation];
  [v4 setObject:dictionaryRepresentation2 forKeyedSubscript:@"iconURL"];

  dictionaryRepresentation3 = [(PKApplyFooterContent *)self->_disclosureFooter dictionaryRepresentation];
  [v4 setObject:dictionaryRepresentation3 forKeyedSubscript:@"disclosureFooter"];

  [v4 setObject:self->_merchandisingIdentifier forKeyedSubscript:@"merchandisingIdentifier"];
  allObjects3 = [(NSSet *)self->_minimumAmounts allObjects];
  v12 = [allObjects3 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_124];
  [v4 setObject:v12 forKeyedSubscript:@"minimumAmounts"];

  allObjects4 = [(NSSet *)self->_maximumAmounts allObjects];
  v14 = [allObjects4 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_126_0];
  [v4 setObject:v14 forKeyedSubscript:@"maximumAmounts"];

  allObjects5 = [(NSSet *)self->_associatedStoreIdentifiers allObjects];
  [v4 setObject:allObjects5 forKeyedSubscript:@"associatedStoreIdentifiers"];

  absoluteString = [(NSURL *)self->_appLaunchURL absoluteString];
  [v4 setObject:absoluteString forKeyedSubscript:@"appLaunchURL"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresChallenge];
  [v4 setObject:v17 forKeyedSubscript:@"requiresChallenge"];

  v18 = [(NSSet *)self->_associatedWebDomains pk_setByApplyingBlock:&__block_literal_global_129_1];
  allObjects6 = [v18 allObjects];
  [v4 setObject:allObjects6 forKeyedSubscript:@"associatedWebDomains"];

  allObjects7 = [(NSSet *)self->_associatedApplicationIdentifiers allObjects];
  [v4 setObject:allObjects7 forKeyedSubscript:@"associatedApplicationIdentifiers"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_suppressPayInFull];
  [v4 setObject:v21 forKeyedSubscript:@"suppressPayInFull"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasPreconfiguredOffers];
  [v4 setObject:v22 forKeyedSubscript:@"hasPreconfiguredOffers"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasDefaultPlan];
  [v4 setObject:v23 forKeyedSubscript:@"hasDefaultPlan"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresInStorePlanSelection];
  [v4 setObject:v24 forKeyedSubscript:@"requiresInStorePlanSelection"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_isHandoff];
  [v4 setObject:v25 forKeyedSubscript:@"isHandoff"];

  [v4 setObject:self->_localizedPayInFullTitleOverride forKeyedSubscript:@"localizedPayInFullTitleOverride"];
  [v4 setObject:self->_localizedPayInFullSubtitleOverride forKeyedSubscript:@"localizedPayInFullSubtitleOverride"];
  [v4 setObject:self->_localizedTitleOverride forKeyedSubscript:@"localizedTitleOverride"];
  [v4 setObject:self->_localizedSubtitleOverride forKeyedSubscript:@"localizedSubtitleOverride"];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:self->_setupAfterPurchaseActiveDuration];
  [v4 setObject:v26 forKeyedSubscript:@"setupAfterPurchaseActiveDuration"];

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_setupAfterPurchaseStickyDuration];
  [v4 setObject:v27 forKeyedSubscript:@"setupAfterPurchaseStickyDuration"];

  v28 = [v4 copy];

  return v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v66.receiver = self;
        v66.super_class = PKPaymentOfferInstallmentCriteria;
        if (![(PKPaymentOfferCriteria *)&v66 isEqual:v6])
        {
          goto LABEL_55;
        }

        supportedCurrencyCodes = self->_supportedCurrencyCodes;
        v8 = v6->_supportedCurrencyCodes;
        if (supportedCurrencyCodes)
        {
          v9 = v8 == 0;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          if (supportedCurrencyCodes != v8)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v11 = [(NSArray *)supportedCurrencyCodes isEqual:?];
          if ((v11 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        supportedMerchantCountryCodes = self->_supportedMerchantCountryCodes;
        v13 = v6->_supportedMerchantCountryCodes;
        if (supportedMerchantCountryCodes && v13)
        {
          if (([(NSSet *)supportedMerchantCountryCodes isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (supportedMerchantCountryCodes != v13)
        {
          goto LABEL_55;
        }

        supportedDeviceRegionCountryCodes = self->_supportedDeviceRegionCountryCodes;
        v15 = v6->_supportedDeviceRegionCountryCodes;
        if (supportedDeviceRegionCountryCodes && v15)
        {
          if (([(NSSet *)supportedDeviceRegionCountryCodes isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (supportedDeviceRegionCountryCodes != v15)
        {
          goto LABEL_55;
        }

        supportedLanguages = self->_supportedLanguages;
        v17 = v6->_supportedLanguages;
        if (supportedLanguages && v17)
        {
          if (([(NSArray *)supportedLanguages isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (supportedLanguages != v17)
        {
          goto LABEL_55;
        }

        if (self->_paymentNetworkIdentifier != v6->_paymentNetworkIdentifier || self->_paymentMethodType != v6->_paymentMethodType || self->_requiresChallenge != v6->_requiresChallenge)
        {
          goto LABEL_55;
        }

        programName = v6->_programName;
        v19 = self->_programName;
        v20 = programName;
        v21 = v20;
        if (v19 == v20)
        {
        }

        else
        {
          v10 = 0;
          if (!v19 || !v20)
          {
            goto LABEL_124;
          }

          v22 = v20;
          v23 = [(NSString *)v19 isEqualToString:v20];

          if (!v23)
          {
            goto LABEL_55;
          }
        }

        issuerName = v6->_issuerName;
        v19 = self->_issuerName;
        v25 = issuerName;
        v21 = v25;
        if (v19 == v25)
        {
        }

        else
        {
          v10 = 0;
          if (!v19 || !v25)
          {
            goto LABEL_124;
          }

          v26 = v25;
          v27 = [(NSString *)v19 isEqualToString:v25];

          if (!v27)
          {
            goto LABEL_55;
          }
        }

        icon = self->_icon;
        v29 = v6->_icon;
        if (icon && v29)
        {
          if (![(PKPaymentOfferDynamicContentIcon *)icon isEqual:?])
          {
            goto LABEL_55;
          }
        }

        else if (icon != v29)
        {
          goto LABEL_55;
        }

        disclosureFooter = self->_disclosureFooter;
        v31 = v6->_disclosureFooter;
        if (disclosureFooter && v31)
        {
          if (![(PKApplyFooterContent *)disclosureFooter isEqual:?])
          {
            goto LABEL_55;
          }
        }

        else if (disclosureFooter != v31)
        {
          goto LABEL_55;
        }

        merchandisingIdentifier = v6->_merchandisingIdentifier;
        v19 = self->_merchandisingIdentifier;
        v34 = merchandisingIdentifier;
        v21 = v34;
        if (v19 == v34)
        {
        }

        else
        {
          v10 = 0;
          if (!v19 || !v34)
          {
            goto LABEL_124;
          }

          v35 = v34;
          v36 = [(NSString *)v19 isEqualToString:v34];

          if (!v36)
          {
            goto LABEL_55;
          }
        }

        minimumAmounts = self->_minimumAmounts;
        v38 = v6->_minimumAmounts;
        if (minimumAmounts && v38)
        {
          if (([(NSSet *)minimumAmounts isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (minimumAmounts != v38)
        {
          goto LABEL_55;
        }

        maximumAmounts = self->_maximumAmounts;
        v40 = v6->_maximumAmounts;
        if (maximumAmounts && v40)
        {
          if (([(NSSet *)maximumAmounts isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (maximumAmounts != v40)
        {
          goto LABEL_55;
        }

        associatedStoreIdentifiers = self->_associatedStoreIdentifiers;
        v42 = v6->_associatedStoreIdentifiers;
        if (associatedStoreIdentifiers && v42)
        {
          if (([(NSSet *)associatedStoreIdentifiers isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (associatedStoreIdentifiers != v42)
        {
          goto LABEL_55;
        }

        appLaunchURL = self->_appLaunchURL;
        v44 = v6->_appLaunchURL;
        if (appLaunchURL && v44)
        {
          if (([(NSURL *)appLaunchURL isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (appLaunchURL != v44)
        {
          goto LABEL_55;
        }

        associatedWebDomains = self->_associatedWebDomains;
        v46 = v6->_associatedWebDomains;
        if (associatedWebDomains && v46)
        {
          if (([(NSSet *)associatedWebDomains isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (associatedWebDomains != v46)
        {
          goto LABEL_55;
        }

        associatedApplicationIdentifiers = self->_associatedApplicationIdentifiers;
        v48 = v6->_associatedApplicationIdentifiers;
        if (associatedApplicationIdentifiers && v48)
        {
          if (([(NSSet *)associatedApplicationIdentifiers isEqual:?]& 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (associatedApplicationIdentifiers != v48)
        {
          goto LABEL_55;
        }

        if (self->_suppressPayInFull != v6->_suppressPayInFull || self->_hasPreconfiguredOffers != v6->_hasPreconfiguredOffers || self->_hasDefaultPlan != v6->_hasDefaultPlan || self->_requiresInStorePlanSelection != v6->_requiresInStorePlanSelection || self->_isHandoff != v6->_isHandoff || self->_setupAfterPurchaseActiveDuration != v6->_setupAfterPurchaseActiveDuration || self->_setupAfterPurchaseStickyDuration != v6->_setupAfterPurchaseStickyDuration)
        {
          goto LABEL_55;
        }

        localizedPayInFullTitleOverride = v6->_localizedPayInFullTitleOverride;
        v19 = self->_localizedPayInFullTitleOverride;
        v50 = localizedPayInFullTitleOverride;
        v21 = v50;
        if (v19 == v50)
        {
        }

        else
        {
          v10 = 0;
          if (!v19 || !v50)
          {
            goto LABEL_124;
          }

          v51 = v50;
          v52 = [(NSString *)v19 isEqualToString:v50];

          if (!v52)
          {
            goto LABEL_55;
          }
        }

        localizedPayInFullSubtitleOverride = v6->_localizedPayInFullSubtitleOverride;
        v19 = self->_localizedPayInFullSubtitleOverride;
        v54 = localizedPayInFullSubtitleOverride;
        v21 = v54;
        if (v19 == v54)
        {
        }

        else
        {
          v10 = 0;
          if (!v19 || !v54)
          {
            goto LABEL_124;
          }

          v55 = v54;
          v56 = [(NSString *)v19 isEqualToString:v54];

          if (!v56)
          {
            goto LABEL_55;
          }
        }

        localizedTitleOverride = v6->_localizedTitleOverride;
        v19 = self->_localizedTitleOverride;
        v58 = localizedTitleOverride;
        v21 = v58;
        if (v19 == v58)
        {

          goto LABEL_119;
        }

        v10 = 0;
        if (v19 && v58)
        {
          v59 = v58;
          v60 = [(NSString *)v19 isEqualToString:v58];

          if (v60)
          {
LABEL_119:
            localizedSubtitleOverride = self->_localizedSubtitleOverride;
            v62 = v6->_localizedSubtitleOverride;
            v19 = localizedSubtitleOverride;
            v63 = v62;
            v21 = v63;
            if (v19 == v63)
            {
              v10 = 1;
            }

            else
            {
              v10 = 0;
              if (v19 && v63)
              {
                v64 = v63;
                v65 = [(NSString *)v19 isEqualToString:v63];
                v21 = v64;
                v10 = v65;
              }
            }

            goto LABEL_124;
          }

LABEL_55:
          v10 = 0;
LABEL_56:

          goto LABEL_57;
        }

LABEL_124:

        goto LABEL_56;
      }
    }

    v10 = 0;
  }

LABEL_57:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_supportedCurrencyCodes];
  [v3 safelyAddObject:self->_supportedMerchantCountryCodes];
  [v3 safelyAddObject:self->_supportedDeviceRegionCountryCodes];
  [v3 safelyAddObject:self->_supportedLanguages];
  [v3 safelyAddObject:self->_programName];
  [v3 safelyAddObject:self->_issuerName];
  [v3 safelyAddObject:self->_icon];
  [v3 safelyAddObject:self->_disclosureFooter];
  [v3 safelyAddObject:self->_merchandisingIdentifier];
  [v3 safelyAddObject:self->_minimumAmounts];
  [v3 safelyAddObject:self->_maximumAmounts];
  [v3 safelyAddObject:self->_associatedStoreIdentifiers];
  [v3 safelyAddObject:self->_appLaunchURL];
  [v3 safelyAddObject:self->_associatedWebDomains];
  [v3 safelyAddObject:self->_associatedApplicationIdentifiers];
  [v3 safelyAddObject:self->_localizedPayInFullTitleOverride];
  [v3 safelyAddObject:self->_localizedPayInFullSubtitleOverride];
  [v3 safelyAddObject:self->_localizedTitleOverride];
  [v3 safelyAddObject:self->_localizedSubtitleOverride];
  v17.receiver = self;
  v17.super_class = PKPaymentOfferInstallmentCriteria;
  v4 = [(PKPaymentOfferCriteria *)&v17 hash];
  v5 = PKCombinedHash(v4, v3);
  v6 = self->_paymentNetworkIdentifier - v5 + 32 * v5;
  v7 = self->_paymentMethodType - v6 + 32 * v6;
  v8 = self->_requiresChallenge - v7 + 32 * v7;
  v9 = self->_suppressPayInFull - v8 + 32 * v8;
  v10 = self->_hasPreconfiguredOffers - v9 + 32 * v9;
  v11 = self->_hasDefaultPlan - v10 + 32 * v10;
  v12 = self->_requiresInStorePlanSelection - v11 + 32 * v11;
  v13 = self->_isHandoff - v12 + 32 * v12;
  v14 = self->_setupAfterPurchaseActiveDuration - v13 + 32 * v13;
  v15 = self->_setupAfterPurchaseStickyDuration - v14 + 32 * v14;

  return v15;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  identifier = [(PKPaymentOfferCriteria *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", identifier];

  v5 = PKPaymentOfferCriteriaTypeToString([(PKPaymentOfferCriteria *)self type]);
  [v3 appendFormat:@"type: '%@'; ", v5];

  v6 = PKPaymentOfferCriteriaEligibilityToString([(PKPaymentOfferCriteria *)self eligibility]);
  [v3 appendFormat:@"eligibility: '%@'; ", v6];

  passSerialNumber = [(PKPaymentOfferCriteria *)self passSerialNumber];
  [v3 appendFormat:@"passSerialNumber: '%@'; ", passSerialNumber];

  passTypeIdentifier = [(PKPaymentOfferCriteria *)self passTypeIdentifier];
  [v3 appendFormat:@"passTypeIdentifier: '%@'; ", passTypeIdentifier];

  fpanIdentifier = [(PKPaymentOfferCriteria *)self fpanIdentifier];
  [v3 appendFormat:@"fpanIdentifier: '%@'; ", fpanIdentifier];

  instoreCapabilitiesString = [(PKPaymentOfferCriteria *)self instoreCapabilitiesString];
  [v3 appendFormat:@"instoreCapabilities: '%@'; ", instoreCapabilitiesString];

  [v3 appendFormat:@"supportedCurrencyCodes: '%@'; ", self->_supportedCurrencyCodes];
  [v3 appendFormat:@"supportedMerchantCountryCodes: '%@'; ", self->_supportedMerchantCountryCodes];
  [v3 appendFormat:@"supportedDeviceRegionCountryCodes: '%@'; ", self->_supportedDeviceRegionCountryCodes];
  [v3 appendFormat:@"supportedLanguages: '%@'; ", self->_supportedLanguages];
  [v3 appendFormat:@"productName: '%@'; ", self->_programName];
  [v3 appendFormat:@"issuerName: '%@'; ", self->_issuerName];
  [v3 appendFormat:@"icon: '%@'; ", self->_icon];
  [v3 appendFormat:@"disclosureFooter: '%@'; ", self->_disclosureFooter];
  [v3 appendFormat:@"merchandisingIdentifier: '%@'; ", self->_merchandisingIdentifier];
  [v3 appendFormat:@"minimumAmounts: '%@'; ", self->_minimumAmounts];
  [v3 appendFormat:@"maximumAmounts: '%@'; ", self->_maximumAmounts];
  [v3 appendFormat:@"associatedStoreIdentifiers: '%@'; ", self->_associatedStoreIdentifiers];
  [v3 appendFormat:@"appLaunchURL: '%@'; ", self->_appLaunchURL];
  [v3 appendFormat:@"associatedWebDomains: '%@'; ", self->_associatedWebDomains];
  [v3 appendFormat:@"associatedApplicationIdentifiers: '%@'; ", self->_associatedApplicationIdentifiers];
  v11 = PKPaymentNetworkNameForPaymentCredentialType(self->_paymentNetworkIdentifier);
  [v3 appendFormat:@"paymentNetworkIdentifier: '%@'; ", v11];

  v12 = PKPaymentMethodTypeToString(self->_paymentMethodType);
  [v3 appendFormat:@"paymentMethodType: '%@'; ", v12];

  if (self->_requiresChallenge)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v3 appendFormat:@"requiresChallenge: '%@'; ", v13];
  if (self->_suppressPayInFull)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v3 appendFormat:@"suppressPayInFull: '%@'; ", v14];
  if (self->_hasPreconfiguredOffers)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [v3 appendFormat:@"hasPreconfiguredOffers: '%@'; ", v15];
  if (self->_hasDefaultPlan)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v3 appendFormat:@"hasDefaultPlan: '%@'; ", v16];
  if (self->_requiresInStorePlanSelection)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v3 appendFormat:@"requiresInStorePlanSelection: '%@'; ", v17];
  if (self->_isHandoff)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v3 appendFormat:@"isHandoff: '%@'; ", v18];
  [v3 appendFormat:@"localizedPayInFullTitleOverride: '%@'; ", self->_localizedPayInFullTitleOverride];
  [v3 appendFormat:@"localizedPayInFullSubtitleOverride: '%@'; ", self->_localizedPayInFullSubtitleOverride];
  [v3 appendFormat:@"localizedTitleOverride: '%@'; ", self->_localizedTitleOverride];
  [v3 appendFormat:@"localizedSubtitleOverride: '%@'; ", self->_localizedSubtitleOverride];
  [v3 appendFormat:@"setupAfterPurchaseActiveDuration: %ld; ", self->_setupAfterPurchaseActiveDuration];
  [v3 appendFormat:@"setupAfterPurchaseStickyDuration: %ld; ", self->_setupAfterPurchaseStickyDuration];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferInstallmentCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v72.receiver = self;
  v72.super_class = PKPaymentOfferInstallmentCriteria;
  v5 = [(PKPaymentOfferCriteria *)&v72 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"supportedCurrencyCodes"];
    supportedCurrencyCodes = v5->_supportedCurrencyCodes;
    v5->_supportedCurrencyCodes = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"supportedMerchantCountryCodes"];
    supportedMerchantCountryCodes = v5->_supportedMerchantCountryCodes;
    v5->_supportedMerchantCountryCodes = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"supportedDeviceRegionCountryCodes"];
    supportedDeviceRegionCountryCodes = v5->_supportedDeviceRegionCountryCodes;
    v5->_supportedDeviceRegionCountryCodes = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"supportedLanguages"];
    supportedLanguages = v5->_supportedLanguages;
    v5->_supportedLanguages = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"programName"];
    programName = v5->_programName;
    v5->_programName = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuerName"];
    issuerName = v5->_issuerName;
    v5->_issuerName = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconURL"];
    icon = v5->_icon;
    v5->_icon = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disclosureFooter"];
    disclosureFooter = v5->_disclosureFooter;
    v5->_disclosureFooter = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchandisingIdentifier"];
    merchandisingIdentifier = v5->_merchandisingIdentifier;
    v5->_merchandisingIdentifier = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"minimumAmounts"];
    minimumAmounts = v5->_minimumAmounts;
    v5->_minimumAmounts = v39;

    v41 = MEMORY[0x1E695DFD8];
    v42 = objc_opt_class();
    v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
    v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"maximumAmounts"];
    maximumAmounts = v5->_maximumAmounts;
    v5->_maximumAmounts = v44;

    v46 = objc_alloc(MEMORY[0x1E695DFD8]);
    v47 = objc_opt_class();
    v48 = [v46 initWithObjects:{v47, objc_opt_class(), 0}];
    v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"associatedStoreIdentifiers"];
    associatedStoreIdentifiers = v5->_associatedStoreIdentifiers;
    v5->_associatedStoreIdentifiers = v49;

    v51 = objc_alloc(MEMORY[0x1E695DFD8]);
    v52 = objc_opt_class();
    v53 = [v51 initWithObjects:{v52, objc_opt_class(), 0}];
    v54 = [coderCopy decodeObjectOfClasses:v53 forKey:@"associatedApplicationIdentifiers"];
    associatedApplicationIdentifiers = v5->_associatedApplicationIdentifiers;
    v5->_associatedApplicationIdentifiers = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchURL"];
    appLaunchURL = v5->_appLaunchURL;
    v5->_appLaunchURL = v56;

    v58 = objc_alloc(MEMORY[0x1E695DFD8]);
    v59 = objc_opt_class();
    v60 = [v58 initWithObjects:{v59, objc_opt_class(), 0}];
    v61 = [coderCopy decodeObjectOfClasses:v60 forKey:@"associatedWebDomains"];
    associatedWebDomains = v5->_associatedWebDomains;
    v5->_associatedWebDomains = v61;

    v5->_paymentNetworkIdentifier = [coderCopy decodeIntegerForKey:@"paymentNetworkIdentifier"];
    v5->_paymentMethodType = [coderCopy decodeIntegerForKey:@"paymentMethodType"];
    v5->_requiresChallenge = [coderCopy decodeBoolForKey:@"requiresChallenge"];
    v5->_suppressPayInFull = [coderCopy decodeBoolForKey:@"suppressPayInFull"];
    v5->_hasPreconfiguredOffers = [coderCopy decodeBoolForKey:@"hasPreconfiguredOffers"];
    v5->_hasDefaultPlan = [coderCopy decodeBoolForKey:@"hasDefaultPlan"];
    v5->_requiresInStorePlanSelection = [coderCopy decodeBoolForKey:@"requiresInStorePlanSelection"];
    v5->_isHandoff = [coderCopy decodeBoolForKey:@"isHandoff"];
    v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedPayInFullTitleOverride"];
    localizedPayInFullTitleOverride = v5->_localizedPayInFullTitleOverride;
    v5->_localizedPayInFullTitleOverride = v63;

    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedPayInFullSubtitleOverride"];
    localizedPayInFullSubtitleOverride = v5->_localizedPayInFullSubtitleOverride;
    v5->_localizedPayInFullSubtitleOverride = v65;

    v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitleOverride"];
    localizedTitleOverride = v5->_localizedTitleOverride;
    v5->_localizedTitleOverride = v67;

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitleOverride"];
    localizedSubtitleOverride = v5->_localizedSubtitleOverride;
    v5->_localizedSubtitleOverride = v69;

    v5->_setupAfterPurchaseActiveDuration = [coderCopy decodeIntegerForKey:@"setupAfterPurchaseActiveDuration"];
    v5->_setupAfterPurchaseStickyDuration = [coderCopy decodeIntegerForKey:@"setupAfterPurchaseStickyDuration"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentOfferInstallmentCriteria;
  coderCopy = coder;
  [(PKPaymentOfferCriteria *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_supportedCurrencyCodes forKey:{@"supportedCurrencyCodes", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_supportedMerchantCountryCodes forKey:@"supportedMerchantCountryCodes"];
  [coderCopy encodeObject:self->_supportedDeviceRegionCountryCodes forKey:@"supportedDeviceRegionCountryCodes"];
  [coderCopy encodeObject:self->_supportedLanguages forKey:@"supportedLanguages"];
  [coderCopy encodeObject:self->_programName forKey:@"programName"];
  [coderCopy encodeObject:self->_issuerName forKey:@"issuerName"];
  [coderCopy encodeObject:self->_icon forKey:@"iconURL"];
  [coderCopy encodeObject:self->_disclosureFooter forKey:@"disclosureFooter"];
  [coderCopy encodeObject:self->_merchandisingIdentifier forKey:@"merchandisingIdentifier"];
  [coderCopy encodeObject:self->_minimumAmounts forKey:@"minimumAmounts"];
  [coderCopy encodeObject:self->_maximumAmounts forKey:@"maximumAmounts"];
  [coderCopy encodeObject:self->_associatedStoreIdentifiers forKey:@"associatedStoreIdentifiers"];
  [coderCopy encodeObject:self->_associatedApplicationIdentifiers forKey:@"associatedApplicationIdentifiers"];
  [coderCopy encodeObject:self->_appLaunchURL forKey:@"appLaunchURL"];
  [coderCopy encodeObject:self->_associatedWebDomains forKey:@"associatedWebDomains"];
  [coderCopy encodeInteger:self->_paymentNetworkIdentifier forKey:@"paymentNetworkIdentifier"];
  [coderCopy encodeInteger:self->_paymentMethodType forKey:@"paymentMethodType"];
  [coderCopy encodeBool:self->_requiresChallenge forKey:@"requiresChallenge"];
  [coderCopy encodeBool:self->_suppressPayInFull forKey:@"suppressPayInFull"];
  [coderCopy encodeBool:self->_hasPreconfiguredOffers forKey:@"hasPreconfiguredOffers"];
  [coderCopy encodeBool:self->_hasDefaultPlan forKey:@"hasDefaultPlan"];
  [coderCopy encodeBool:self->_requiresInStorePlanSelection forKey:@"requiresInStorePlanSelection"];
  [coderCopy encodeBool:self->_isHandoff forKey:@"isHandoff"];
  [coderCopy encodeObject:self->_localizedPayInFullTitleOverride forKey:@"localizedPayInFullTitleOverride"];
  [coderCopy encodeObject:self->_localizedPayInFullSubtitleOverride forKey:@"localizedPayInFullSubtitleOverride"];
  [coderCopy encodeObject:self->_localizedTitleOverride forKey:@"localizedTitleOverride"];
  [coderCopy encodeObject:self->_localizedSubtitleOverride forKey:@"localizedSubtitleOverride"];
  [coderCopy encodeInteger:self->_setupAfterPurchaseActiveDuration forKey:@"setupAfterPurchaseActiveDuration"];
  [coderCopy encodeInteger:self->_setupAfterPurchaseStickyDuration forKey:@"setupAfterPurchaseStickyDuration"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v45.receiver = self;
  v45.super_class = PKPaymentOfferInstallmentCriteria;
  v5 = [(PKPaymentOfferCriteria *)&v45 copyWithZone:?];
  v6 = [(NSArray *)self->_supportedCurrencyCodes copyWithZone:zone];
  v7 = v5[10];
  v5[10] = v6;

  v8 = [(NSSet *)self->_supportedMerchantCountryCodes copyWithZone:zone];
  v9 = v5[11];
  v5[11] = v8;

  v10 = [(NSSet *)self->_supportedDeviceRegionCountryCodes copyWithZone:zone];
  v11 = v5[12];
  v5[12] = v10;

  v12 = [(NSArray *)self->_supportedLanguages copyWithZone:zone];
  v13 = v5[13];
  v5[13] = v12;

  v14 = [(NSString *)self->_programName copyWithZone:zone];
  v15 = v5[20];
  v5[20] = v14;

  v16 = [(NSString *)self->_issuerName copyWithZone:zone];
  v17 = v5[21];
  v5[21] = v16;

  v18 = [(PKPaymentOfferDynamicContentIcon *)self->_icon copyWithZone:zone];
  v19 = v5[22];
  v5[22] = v18;

  v20 = [(PKApplyFooterContent *)self->_disclosureFooter copyWithZone:zone];
  v21 = v5[23];
  v5[23] = v20;

  v22 = [(NSString *)self->_merchandisingIdentifier copyWithZone:zone];
  v23 = v5[24];
  v5[24] = v22;

  v24 = [(NSSet *)self->_minimumAmounts copyWithZone:zone];
  v25 = v5[25];
  v5[25] = v24;

  v26 = [(NSSet *)self->_maximumAmounts copyWithZone:zone];
  v27 = v5[26];
  v5[26] = v26;

  v28 = [(NSSet *)self->_associatedStoreIdentifiers copyWithZone:zone];
  v29 = v5[29];
  v5[29] = v28;

  v30 = [(NSSet *)self->_associatedApplicationIdentifiers copyWithZone:zone];
  v31 = v5[30];
  v5[30] = v30;

  v32 = [(NSURL *)self->_appLaunchURL copyWithZone:zone];
  v33 = v5[32];
  v5[32] = v32;

  v34 = [(NSSet *)self->_associatedWebDomains copyWithZone:zone];
  v35 = v5[31];
  v5[31] = v34;

  v5[14] = self->_paymentNetworkIdentifier;
  v5[15] = self->_paymentMethodType;
  *(v5 + 72) = self->_requiresChallenge;
  *(v5 + 73) = self->_suppressPayInFull;
  *(v5 + 74) = self->_hasPreconfiguredOffers;
  *(v5 + 75) = self->_hasDefaultPlan;
  *(v5 + 76) = self->_requiresInStorePlanSelection;
  *(v5 + 77) = self->_isHandoff;
  v5[28] = *&self->_setupAfterPurchaseActiveDuration;
  v5[27] = *&self->_setupAfterPurchaseStickyDuration;
  v36 = [(NSString *)self->_localizedPayInFullTitleOverride copyWithZone:zone];
  v37 = v5[16];
  v5[16] = v36;

  v38 = [(NSString *)self->_localizedPayInFullSubtitleOverride copyWithZone:zone];
  v39 = v5[17];
  v5[17] = v38;

  v40 = [(NSString *)self->_localizedTitleOverride copyWithZone:zone];
  v41 = v5[18];
  v5[18] = v40;

  v42 = [(NSString *)self->_localizedSubtitleOverride copyWithZone:zone];
  v43 = v5[19];
  v5[19] = v42;

  return v5;
}

@end