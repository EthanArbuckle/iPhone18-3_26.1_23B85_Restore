@interface PKPaymentOfferRewardsCriteriaEligibilityConfiguration
- (NSString)description;
- (PKPaymentOfferRewardsCriteriaEligibilityConfiguration)initWithAmount:(id)amount currencyCode:(id)code merchantCountryCode:(id)countryCode context:(unint64_t)context options:(unint64_t)options;
@end

@implementation PKPaymentOfferRewardsCriteriaEligibilityConfiguration

- (PKPaymentOfferRewardsCriteriaEligibilityConfiguration)initWithAmount:(id)amount currencyCode:(id)code merchantCountryCode:(id)countryCode context:(unint64_t)context options:(unint64_t)options
{
  amountCopy = amount;
  codeCopy = code;
  countryCodeCopy = countryCode;
  v19.receiver = self;
  v19.super_class = PKPaymentOfferRewardsCriteriaEligibilityConfiguration;
  v16 = [(PKPaymentOfferRewardsCriteriaEligibilityConfiguration *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_amount, amount);
    objc_storeStrong(&v17->_currencyCode, code);
    objc_storeStrong(&v17->_merchantCountryCode, countryCode);
    v17->_context = context;
    v17->_options = options;
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