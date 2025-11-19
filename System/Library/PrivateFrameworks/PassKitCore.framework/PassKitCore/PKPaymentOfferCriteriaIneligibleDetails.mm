@interface PKPaymentOfferCriteriaIneligibleDetails
+ (id)ineligibleDetailsWithReason:(unint64_t)a3 preferredLanguage:(id)a4 criteria:(id)a5 isWebPaymentRequest:(BOOL)a6;
+ (id)ineligibleDetailsWithReason:(unint64_t)a3 preferredLanguage:(id)a4 overrideDisplayString:(id)a5 criteria:(id)a6 isWebPaymentRequest:(BOOL)a7;
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferCriteriaIneligibleDetails)initWithIneligibleDetailsWithReason:(unint64_t)a3 overrideDisplayString:(id)a4 preferredLanguage:(id)a5 criteria:(id)a6 isWebPaymentRequest:(BOOL)a7;
- (id)analyticsValue;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKPaymentOfferCriteriaIneligibleDetails

+ (id)ineligibleDetailsWithReason:(unint64_t)a3 preferredLanguage:(id)a4 criteria:(id)a5 isWebPaymentRequest:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [[PKPaymentOfferCriteriaIneligibleDetails alloc] initWithIneligibleDetailsWithReason:a3 overrideDisplayString:0 preferredLanguage:v10 criteria:v9 isWebPaymentRequest:v6];

  return v11;
}

+ (id)ineligibleDetailsWithReason:(unint64_t)a3 preferredLanguage:(id)a4 overrideDisplayString:(id)a5 criteria:(id)a6 isWebPaymentRequest:(BOOL)a7
{
  v7 = a7;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [[PKPaymentOfferCriteriaIneligibleDetails alloc] initWithIneligibleDetailsWithReason:a3 overrideDisplayString:v12 preferredLanguage:v13 criteria:v11 isWebPaymentRequest:v7];

  return v14;
}

- (PKPaymentOfferCriteriaIneligibleDetails)initWithIneligibleDetailsWithReason:(unint64_t)a3 overrideDisplayString:(id)a4 preferredLanguage:(id)a5 criteria:(id)a6 isWebPaymentRequest:(BOOL)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v14 type] == 1)
  {
    v24 = a7;
    v15 = v13;
    v16 = v12;
    v17 = v14;
    v18 = [v17 supportedCurrencyCodes];
    v19 = [v17 minimumAmounts];
    v20 = [v17 maximumAmounts];

    v12 = v16;
    v13 = v15;
    a7 = v24;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  v26.receiver = self;
  v26.super_class = PKPaymentOfferCriteriaIneligibleDetails;
  v21 = [(PKPaymentOfferCriteriaIneligibleDetails *)&v26 init];
  v22 = v21;
  if (v21)
  {
    v21->_reason = a3;
    objc_storeStrong(&v21->_overrideDisplayString, a4);
    objc_storeStrong(&v22->_preferredLanguage, a5);
    objc_storeStrong(&v22->_supportedCurrencyCodes, v18);
    v22->_isWebPaymentRequest = a7;
    objc_storeStrong(&v22->_minimumAmounts, v19);
    objc_storeStrong(&v22->_maximumAmounts, v20);
  }

  return v22;
}

- (id)analyticsValue
{
  reason = self->_reason;
  if (reason >= 0x10 && (reason <= 0x1B ? (v4 = ((1 << reason) & 0xFC20000) == 0) : (v4 = 1), v4))
  {
    v5 = @"userIneligible";
  }

  else
  {
    v5 = PKPaymentOfferCriteriaIneligibleDetailsReasonToString(reason);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        overrideDisplayString = v6->_overrideDisplayString;
        v8 = self->_overrideDisplayString;
        v9 = overrideDisplayString;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_17;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_18;
          }
        }

        preferredLanguage = v6->_preferredLanguage;
        v8 = self->_preferredLanguage;
        v14 = preferredLanguage;
        v10 = v14;
        if (v8 == v14)
        {

LABEL_22:
          supportedCurrencyCodes = self->_supportedCurrencyCodes;
          v18 = v6->_supportedCurrencyCodes;
          if (supportedCurrencyCodes && v18)
          {
            if (([(NSArray *)supportedCurrencyCodes isEqual:?]& 1) == 0)
            {
              goto LABEL_18;
            }
          }

          else if (supportedCurrencyCodes != v18)
          {
            goto LABEL_18;
          }

          if (self->_reason != v6->_reason || self->_isWebPaymentRequest != v6->_isWebPaymentRequest)
          {
            goto LABEL_18;
          }

          minimumAmounts = self->_minimumAmounts;
          v20 = v6->_minimumAmounts;
          if (minimumAmounts && v20)
          {
            if (([(NSSet *)minimumAmounts isEqual:?]& 1) != 0)
            {
              goto LABEL_34;
            }
          }

          else if (minimumAmounts == v20)
          {
LABEL_34:
            maximumAmounts = self->_maximumAmounts;
            v22 = v6->_maximumAmounts;
            if (maximumAmounts && v22)
            {
              v12 = [(NSSet *)maximumAmounts isEqual:?];
            }

            else
            {
              v12 = maximumAmounts == v22;
            }

            goto LABEL_19;
          }

LABEL_18:
          v12 = 0;
LABEL_19:

          goto LABEL_20;
        }

        if (v8 && v14)
        {
          v15 = [(NSString *)v8 isEqualToString:v14];

          if (!v15)
          {
            goto LABEL_18;
          }

          goto LABEL_22;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_overrideDisplayString];
  [v3 safelyAddObject:self->_preferredLanguage];
  [v3 safelyAddObject:self->_supportedCurrencyCodes];
  [v3 safelyAddObject:self->_minimumAmounts];
  [v3 safelyAddObject:self->_maximumAmounts];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_reason - v4 + 32 * v4;
  v6 = self->_isWebPaymentRequest - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  v4 = PKPaymentOfferCriteriaIneligibleDetailsReasonToString(self->_reason);
  [v3 appendFormat:@"reason: '%@'; ", v4];

  if (self->_overrideDisplayString)
  {
    [v3 appendFormat:@"overrideDisplayString: '%@'; ", self->_overrideDisplayString];
  }

  [v3 appendFormat:@"supportedCurrencyCodes: '%@'; ", self->_supportedCurrencyCodes];
  [v3 appendFormat:@"preferredLanguage: '%@'; ", self->_preferredLanguage];
  if (self->_isWebPaymentRequest)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"isWebPaymentRequest: '%@'; ", v5];
  [v3 appendFormat:@"minimumAmounts: '%@'; ", self->_minimumAmounts];
  [v3 appendFormat:@"maximumAmounts: '%@'; ", self->_maximumAmounts];
  [v3 appendFormat:@">"];

  return v3;
}

@end