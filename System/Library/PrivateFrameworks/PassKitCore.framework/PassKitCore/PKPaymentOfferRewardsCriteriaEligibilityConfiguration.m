@interface PKPaymentOfferRewardsCriteriaEligibilityConfiguration
- (NSString)description;
- (PKPaymentOfferRewardsCriteriaEligibilityConfiguration)initWithAmount:(id)a3 currencyCode:(id)a4 merchantCountryCode:(id)a5 context:(unint64_t)a6 options:(unint64_t)a7;
@end

@implementation PKPaymentOfferRewardsCriteriaEligibilityConfiguration

- (PKPaymentOfferRewardsCriteriaEligibilityConfiguration)initWithAmount:(id)a3 currencyCode:(id)a4 merchantCountryCode:(id)a5 context:(unint64_t)a6 options:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = PKPaymentOfferRewardsCriteriaEligibilityConfiguration;
  v16 = [(PKPaymentOfferRewardsCriteriaEligibilityConfiguration *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_amount, a3);
    objc_storeStrong(&v17->_currencyCode, a4);
    objc_storeStrong(&v17->_merchantCountryCode, a5);
    v17->_context = a6;
    v17->_options = a7;
  }

  return v17;
}

- (NSString)description
{
  options = self->_options;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v4 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v4 appendFormat:@"amount: '%@'; ", self->_amount];
  [v4 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  [v4 appendFormat:@"merchantCountryCode: '%@'; ", self->_merchantCountryCode];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:options & 1];
  [v4 appendFormat:@"options: MultiToken: '%@'; ", v5];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:(options >> 1) & 1];
  [v4 appendFormat:@"options: MerchantToken: '%@'; ", v6];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:(options >> 2) & 1];
  [v4 appendFormat:@"options: Recurring: '%@'; ", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:(options >> 3) & 1];
  [v4 appendFormat:@"options: Deferred: '%@'; ", v8];

  [v4 appendFormat:@">"];

  return v4;
}

@end