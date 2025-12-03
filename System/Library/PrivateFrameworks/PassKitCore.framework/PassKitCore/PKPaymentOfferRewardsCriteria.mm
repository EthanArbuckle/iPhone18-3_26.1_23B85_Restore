@interface PKPaymentOfferRewardsCriteria
- (BOOL)eligibleWithConfiguration:(id)configuration ineligibleReason:(unint64_t *)reason;
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferRewardsCriteria)initWithCoder:(id)coder;
- (PKPaymentOfferRewardsCriteria)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferRewardsCriteria

- (PKPaymentOfferRewardsCriteria)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = PKPaymentOfferRewardsCriteria;
  v5 = [(PKPaymentOfferCriteria *)&v25 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKURLForKey:@"redemptionTermsURL"];
    redemptionTermsURL = v5->_redemptionTermsURL;
    v5->_redemptionTermsURL = v6;

    v8 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"supportedCurrencyCodes"];
    supportedCurrencyCodes = v5->_supportedCurrencyCodes;
    v5->_supportedCurrencyCodes = v8;

    v10 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"supportedMerchantCountryCodes"];
    supportedMerchantCountryCodes = v5->_supportedMerchantCountryCodes;
    v5->_supportedMerchantCountryCodes = v10;

    v5->_supportedDeferredPayments = [dictionaryCopy PKBoolForKey:@"supportedDeferredPayments"];
    v5->_supportedRecurringPayments = [dictionaryCopy PKBoolForKey:@"supportedRecurringPayments"];
    v12 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"minimumAmounts"];
    v13 = [v12 pk_setBySafelyApplyingBlock:&__block_literal_global_128];
    minimumAmounts = v5->_minimumAmounts;
    v5->_minimumAmounts = v13;

    v15 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"maximumAmounts"];
    v16 = [v15 pk_setBySafelyApplyingBlock:&__block_literal_global_50_1];
    maximumAmounts = v5->_maximumAmounts;
    v5->_maximumAmounts = v16;

    v18 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"userEnteredMinimumAmounts"];
    v19 = [v18 pk_setBySafelyApplyingBlock:&__block_literal_global_52_1];
    userEnteredMinimumAmounts = v5->_userEnteredMinimumAmounts;
    v5->_userEnteredMinimumAmounts = v19;

    v21 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"userEnteredMaximumAmounts"];
    v22 = [v21 pk_setBySafelyApplyingBlock:&__block_literal_global_54_0];
    userEnteredMaximumAmounts = v5->_userEnteredMaximumAmounts;
    v5->_userEnteredMaximumAmounts = v22;

    v5->_selectedOfferStickyDuration = [dictionaryCopy PKIntegerForKey:@"selectedOfferStickyDuration"];
    v5->_selectedOfferActiveDuration = [dictionaryCopy PKIntegerForKey:@"selectedOfferActiveDuration"];
  }

  return v5;
}

PKCurrencyAmount *__52__PKPaymentOfferRewardsCriteria_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCurrencyAmount alloc] initWithDictionary:v2];

  return v3;
}

PKCurrencyAmount *__52__PKPaymentOfferRewardsCriteria_initWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCurrencyAmount alloc] initWithDictionary:v2];

  return v3;
}

PKCurrencyAmount *__52__PKPaymentOfferRewardsCriteria_initWithDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCurrencyAmount alloc] initWithDictionary:v2];

  return v3;
}

PKCurrencyAmount *__52__PKPaymentOfferRewardsCriteria_initWithDictionary___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCurrencyAmount alloc] initWithDictionary:v2];

  return v3;
}

- (BOOL)eligibleWithConfiguration:(id)configuration ineligibleReason:(unint64_t *)reason
{
  configurationCopy = configuration;
  v29.receiver = self;
  v29.super_class = PKPaymentOfferRewardsCriteria;
  if (![(PKPaymentOfferCriteria *)&v29 eligibleWithConfiguration:configurationCopy ineligibleReason:reason])
  {
    LOBYTE(v12) = 0;
    goto LABEL_51;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = configurationCopy;
    amount = [v7 amount];
    currencyCode = [v7 currencyCode];
    context = [v7 context];
    options = [v7 options];
    merchantCountryCode = [v7 merchantCountryCode];
    if ([(NSSet *)self->_supportedMerchantCountryCodes count])
    {
      if ([(NSSet *)self->_supportedMerchantCountryCodes count])
      {
        LODWORD(v12) = [(NSSet *)self->_supportedMerchantCountryCodes containsObject:merchantCountryCode];
      }

      else
      {
        LODWORD(v12) = 0;
      }
    }

    else
    {
      LODWORD(v12) = 1;
    }

    if (context == 1)
    {
      v13 = 0;
      LOBYTE(v12) = 1;
      goto LABEL_47;
    }

    if (!amount)
    {
      LOBYTE(v12) = 0;
      v13 = 3;
      goto LABEL_47;
    }

    if (!currencyCode)
    {
      LOBYTE(v12) = 0;
      v13 = 4;
      goto LABEL_47;
    }

    if ([(NSSet *)self->_supportedCurrencyCodes count])
    {
      v14 = [(NSSet *)self->_supportedCurrencyCodes containsObject:currencyCode];
      if (v14)
      {
        v13 = 8;
      }

      else
      {
        v13 = 7;
      }

      if ((v14 & v12 & 1) == 0)
      {
        LOBYTE(v12) = 0;
        goto LABEL_47;
      }
    }

    else if (!v12)
    {
      v13 = 8;
      goto LABEL_47;
    }

    pk_isPositiveNumber = [(NSDecimalNumber *)amount pk_isPositiveNumber];
    LOBYTE(v12) = 0;
    if (pk_isPositiveNumber)
    {
      v13 = 15;
    }

    else
    {
      v13 = 13;
    }

    if (pk_isPositiveNumber && (options & 1) == 0)
    {
      if ((options & 4) != 0 && !self->_supportedRecurringPayments)
      {
        LOBYTE(v12) = 0;
        v13 = 17;
        goto LABEL_47;
      }

      if ((options & 8) != 0)
      {
        if (!self->_supportedDeferredPayments)
        {
          LOBYTE(v12) = 0;
          v13 = 18;
          goto LABEL_47;
        }
      }

      else if ((options & 6) == 2)
      {
        LOBYTE(v12) = 0;
        v13 = 16;
        goto LABEL_47;
      }

      v23 = PKCurrencyAmountCreate(amount, currencyCode, 0);
      maximumAmounts = self->_maximumAmounts;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __76__PKPaymentOfferRewardsCriteria_eligibleWithConfiguration_ineligibleReason___block_invoke;
      v27[3] = &unk_1E79D8908;
      v17 = currencyCode;
      v28 = v17;
      v12 = [(NSSet *)maximumAmounts pk_anyObjectPassingTest:v27];
      minimumAmounts = self->_minimumAmounts;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __76__PKPaymentOfferRewardsCriteria_eligibleWithConfiguration_ineligibleReason___block_invoke_2;
      v25[3] = &unk_1E79D8908;
      v26 = v17;
      v19 = [(NSSet *)minimumAmounts pk_anyObjectPassingTest:v25];
      if (v19 && ([v23 currencyAmountLessThanCurrencyAmount:v19] & 1) != 0)
      {
        v20 = v12;
        LOBYTE(v12) = 0;
        v13 = 13;
      }

      else if (v12)
      {
        v21 = [v23 currencyAmountGreaterThanCurrencyAmount:v12];
        if (v21)
        {
          v13 = 14;
        }

        else
        {
          v13 = 0;
        }

        v20 = v12;
        LOBYTE(v12) = v21 ^ 1;
      }

      else
      {
        v13 = 0;
        v20 = 0;
        LOBYTE(v12) = 1;
      }
    }

LABEL_47:

    if (context == 1)
    {
      LOBYTE(v12) = 1;
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v13 = 0;
  LOBYTE(v12) = 1;
LABEL_49:
  if (reason)
  {
    *reason = v13;
  }

LABEL_51:

  return v12;
}

uint64_t __76__PKPaymentOfferRewardsCriteria_eligibleWithConfiguration_ineligibleReason___block_invoke(uint64_t a1, void *a2)
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

uint64_t __76__PKPaymentOfferRewardsCriteria_eligibleWithConfiguration_ineligibleReason___block_invoke_2(uint64_t a1, void *a2)
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
  v22.receiver = self;
  v22.super_class = PKPaymentOfferRewardsCriteria;
  dictionaryRepresentation = [(PKPaymentOfferCriteria *)&v22 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  absoluteString = [(NSURL *)self->_redemptionTermsURL absoluteString];
  [v4 setObject:absoluteString forKeyedSubscript:@"redemptionTermsURL"];

  allObjects = [(NSSet *)self->_supportedCurrencyCodes allObjects];
  [v4 setObject:allObjects forKeyedSubscript:@"supportedCurrencyCodes"];

  allObjects2 = [(NSSet *)self->_supportedMerchantCountryCodes allObjects];
  [v4 setObject:allObjects2 forKeyedSubscript:@"supportedMerchantCountryCodes"];

  allObjects3 = [(NSSet *)self->_minimumAmounts allObjects];
  v9 = [allObjects3 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_63];
  [v4 setObject:v9 forKeyedSubscript:@"minimumAmounts"];

  allObjects4 = [(NSSet *)self->_maximumAmounts allObjects];
  v11 = [allObjects4 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_65_0];
  [v4 setObject:v11 forKeyedSubscript:@"maximumAmounts"];

  allObjects5 = [(NSSet *)self->_userEnteredMinimumAmounts allObjects];
  v13 = [allObjects5 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_67];
  [v4 setObject:v13 forKeyedSubscript:@"userEnteredMinimumAmounts"];

  allObjects6 = [(NSSet *)self->_userEnteredMaximumAmounts allObjects];
  v15 = [allObjects6 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_69];
  [v4 setObject:v15 forKeyedSubscript:@"userEnteredMaximumAmounts"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportedDeferredPayments];
  [v4 setObject:v16 forKeyedSubscript:@"supportedDeferredPayments"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportedRecurringPayments];
  [v4 setObject:v17 forKeyedSubscript:@"supportedRecurringPayments"];

  v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_selectedOfferStickyDuration];
  [v4 setObject:v18 forKeyedSubscript:@"selectedOfferStickyDuration"];

  v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_selectedOfferActiveDuration];
  [v4 setObject:v19 forKeyedSubscript:@"selectedOfferActiveDuration"];

  v20 = [v4 copy];

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v23.receiver = self;
        v23.super_class = PKPaymentOfferRewardsCriteria;
        if (![(PKPaymentOfferCriteria *)&v23 isEqual:v6]|| self->_supportedDeferredPayments != *(v6 + 72) || self->_supportedRecurringPayments != *(v6 + 73) || self->_selectedOfferStickyDuration != v6[17] || self->_selectedOfferActiveDuration != v6[18])
        {
          goto LABEL_43;
        }

        supportedCurrencyCodes = self->_supportedCurrencyCodes;
        v8 = *(v6 + 11);
        if (supportedCurrencyCodes && v8)
        {
          if (([(NSSet *)supportedCurrencyCodes isEqual:?]& 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (supportedCurrencyCodes != v8)
        {
          goto LABEL_43;
        }

        supportedMerchantCountryCodes = self->_supportedMerchantCountryCodes;
        v11 = *(v6 + 12);
        if (supportedMerchantCountryCodes && v11)
        {
          if (([(NSSet *)supportedMerchantCountryCodes isEqual:?]& 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (supportedMerchantCountryCodes != v11)
        {
          goto LABEL_43;
        }

        minimumAmounts = self->_minimumAmounts;
        v13 = *(v6 + 13);
        if (minimumAmounts && v13)
        {
          if (([(NSSet *)minimumAmounts isEqual:?]& 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (minimumAmounts != v13)
        {
          goto LABEL_43;
        }

        maximumAmounts = self->_maximumAmounts;
        v15 = *(v6 + 14);
        if (maximumAmounts && v15)
        {
          if (([(NSSet *)maximumAmounts isEqual:?]& 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (maximumAmounts != v15)
        {
          goto LABEL_43;
        }

        userEnteredMinimumAmounts = self->_userEnteredMinimumAmounts;
        v17 = *(v6 + 15);
        if (userEnteredMinimumAmounts && v17)
        {
          if (([(NSSet *)userEnteredMinimumAmounts isEqual:?]& 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (userEnteredMinimumAmounts != v17)
        {
          goto LABEL_43;
        }

        userEnteredMaximumAmounts = self->_userEnteredMaximumAmounts;
        v19 = *(v6 + 16);
        if (userEnteredMaximumAmounts && v19)
        {
          if (([(NSSet *)userEnteredMaximumAmounts isEqual:?]& 1) != 0)
          {
LABEL_39:
            redemptionTermsURL = self->_redemptionTermsURL;
            v21 = *(v6 + 10);
            if (redemptionTermsURL && v21)
            {
              v9 = [(NSURL *)redemptionTermsURL isEqual:?];
            }

            else
            {
              v9 = redemptionTermsURL == v21;
            }

            goto LABEL_44;
          }
        }

        else if (userEnteredMaximumAmounts == v19)
        {
          goto LABEL_39;
        }

LABEL_43:
        v9 = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    v9 = 0;
  }

LABEL_45:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_supportedCurrencyCodes];
  [v3 safelyAddObject:self->_supportedMerchantCountryCodes];
  [v3 safelyAddObject:self->_minimumAmounts];
  [v3 safelyAddObject:self->_maximumAmounts];
  [v3 safelyAddObject:self->_userEnteredMinimumAmounts];
  [v3 safelyAddObject:self->_userEnteredMaximumAmounts];
  [v3 safelyAddObject:self->_redemptionTermsURL];
  v11.receiver = self;
  v11.super_class = PKPaymentOfferRewardsCriteria;
  v4 = [(PKPaymentOfferCriteria *)&v11 hash];
  v5 = PKCombinedHash(v4, v3);
  v6 = self->_supportedDeferredPayments - v5 + 32 * v5;
  v7 = self->_supportedRecurringPayments - v6 + 32 * v6;
  v8 = self->_selectedOfferStickyDuration - v7 + 32 * v7;
  v9 = self->_selectedOfferActiveDuration - v8 + 32 * v8;

  return v9;
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

  absoluteString = [(NSURL *)self->_redemptionTermsURL absoluteString];
  [v3 appendFormat:@"redemptionTermsURL: '%@'; ", absoluteString];

  [v3 appendFormat:@"supportedCurrencyCodes: '%@'; ", self->_supportedCurrencyCodes];
  [v3 appendFormat:@"supportedMerchantCountryCodes: '%@'; ", self->_supportedMerchantCountryCodes];
  [v3 appendFormat:@"minimumAmounts: '%@'; ", self->_minimumAmounts];
  [v3 appendFormat:@"maximumAmounts: '%@'; ", self->_maximumAmounts];
  [v3 appendFormat:@"userEnteredMinimumAmounts: '%@'; ", self->_userEnteredMinimumAmounts];
  [v3 appendFormat:@"userEnteredMaximumAmounts: '%@'; ", self->_userEnteredMaximumAmounts];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportedDeferredPayments];
  [v3 appendFormat:@"supportedDeferredPayments: '%@'; ", v12];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportedRecurringPayments];
  [v3 appendFormat:@"supportedRecurringPayments: '%@'; ", v13];

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_selectedOfferStickyDuration];
  [v3 appendFormat:@"selectedOfferStickyDuration: '%@'; ", v14];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_selectedOfferActiveDuration];
  [v3 appendFormat:@"selectedOfferActiveDuration: '%@'; ", v15];

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferRewardsCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = PKPaymentOfferRewardsCriteria;
  v5 = [(PKPaymentOfferCriteria *)&v39 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"redemptionTermsURL"];
    redemptionTermsURL = v5->_redemptionTermsURL;
    v5->_redemptionTermsURL = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"supportedCurrencyCodes"];
    supportedCurrencyCodes = v5->_supportedCurrencyCodes;
    v5->_supportedCurrencyCodes = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"supportedMerchantCountryCodes"];
    supportedMerchantCountryCodes = v5->_supportedMerchantCountryCodes;
    v5->_supportedMerchantCountryCodes = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"minimumAmounts"];
    minimumAmounts = v5->_minimumAmounts;
    v5->_minimumAmounts = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"maximumAmounts"];
    maximumAmounts = v5->_maximumAmounts;
    v5->_maximumAmounts = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"userEnteredMinimumAmounts"];
    userEnteredMinimumAmounts = v5->_userEnteredMinimumAmounts;
    v5->_userEnteredMinimumAmounts = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"userEnteredMaximumAmounts"];
    userEnteredMaximumAmounts = v5->_userEnteredMaximumAmounts;
    v5->_userEnteredMaximumAmounts = v36;

    v5->_supportedDeferredPayments = [coderCopy decodeBoolForKey:@"supportedDeferredPayments"];
    v5->_supportedRecurringPayments = [coderCopy decodeBoolForKey:@"supportedRecurringPayments"];
    v5->_selectedOfferStickyDuration = [coderCopy decodeIntegerForKey:@"selectedOfferStickyDuration"];
    v5->_selectedOfferActiveDuration = [coderCopy decodeIntegerForKey:@"selectedOfferActiveDuration"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentOfferRewardsCriteria;
  coderCopy = coder;
  [(PKPaymentOfferCriteria *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_redemptionTermsURL forKey:{@"redemptionTermsURL", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_supportedMerchantCountryCodes forKey:@"supportedMerchantCountryCodes"];
  [coderCopy encodeObject:self->_supportedCurrencyCodes forKey:@"supportedCurrencyCodes"];
  [coderCopy encodeObject:self->_minimumAmounts forKey:@"minimumAmounts"];
  [coderCopy encodeObject:self->_maximumAmounts forKey:@"maximumAmounts"];
  [coderCopy encodeObject:self->_userEnteredMinimumAmounts forKey:@"userEnteredMinimumAmounts"];
  [coderCopy encodeObject:self->_userEnteredMaximumAmounts forKey:@"userEnteredMaximumAmounts"];
  [coderCopy encodeBool:self->_supportedDeferredPayments forKey:@"supportedDeferredPayments"];
  [coderCopy encodeBool:self->_supportedRecurringPayments forKey:@"supportedRecurringPayments"];
  [coderCopy encodeInteger:self->_selectedOfferStickyDuration forKey:@"selectedOfferStickyDuration"];
  [coderCopy encodeInteger:self->_selectedOfferActiveDuration forKey:@"selectedOfferActiveDuration"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21.receiver = self;
  v21.super_class = PKPaymentOfferRewardsCriteria;
  v5 = [(PKPaymentOfferCriteria *)&v21 copyWithZone:?];
  v6 = [(NSURL *)self->_redemptionTermsURL copyWithZone:zone];
  v7 = v5[10];
  v5[10] = v6;

  v8 = [(NSSet *)self->_supportedMerchantCountryCodes copyWithZone:zone];
  v9 = v5[12];
  v5[12] = v8;

  v10 = [(NSSet *)self->_supportedCurrencyCodes copyWithZone:zone];
  v11 = v5[11];
  v5[11] = v10;

  v12 = [(NSSet *)self->_minimumAmounts copyWithZone:zone];
  v13 = v5[13];
  v5[13] = v12;

  v14 = [(NSSet *)self->_maximumAmounts copyWithZone:zone];
  v15 = v5[14];
  v5[14] = v14;

  v16 = [(NSSet *)self->_userEnteredMinimumAmounts copyWithZone:zone];
  v17 = v5[15];
  v5[15] = v16;

  v18 = [(NSSet *)self->_userEnteredMaximumAmounts copyWithZone:zone];
  v19 = v5[16];
  v5[16] = v18;

  *(v5 + 72) = self->_supportedDeferredPayments;
  *(v5 + 73) = self->_supportedRecurringPayments;
  v5[17] = *&self->_selectedOfferStickyDuration;
  v5[18] = *&self->_selectedOfferActiveDuration;
  return v5;
}

@end