@interface PKPaymentOfferInstallmentCriteriaEligibilityConfiguration
- (NSString)description;
- (PKPaymentOfferInstallmentCriteriaEligibilityConfiguration)initWithAmount:(id)a3 currencyCode:(id)a4 merchantCountryCode:(id)a5 deviceRegion:(id)a6 supportedNetworks:(id)a7 merchantCapabilities:(unint64_t)a8 payLaterSuppressionMode:(int64_t)a9 context:(unint64_t)a10 options:(unint64_t)a11;
- (PKPaymentOfferInstallmentCriteriaEligibilityConfiguration)initWithTransaction:(id)a3;
@end

@implementation PKPaymentOfferInstallmentCriteriaEligibilityConfiguration

- (PKPaymentOfferInstallmentCriteriaEligibilityConfiguration)initWithAmount:(id)a3 currencyCode:(id)a4 merchantCountryCode:(id)a5 deviceRegion:(id)a6 supportedNetworks:(id)a7 merchantCapabilities:(unint64_t)a8 payLaterSuppressionMode:(int64_t)a9 context:(unint64_t)a10 options:(unint64_t)a11
{
  v18 = a3;
  v19 = a4;
  v25 = a5;
  v20 = a6;
  v21 = a7;
  v26.receiver = self;
  v26.super_class = PKPaymentOfferInstallmentCriteriaEligibilityConfiguration;
  v22 = [(PKPaymentOfferInstallmentCriteriaEligibilityConfiguration *)&v26 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_amount, a3);
    objc_storeStrong(&v23->_currencyCode, a4);
    objc_storeStrong(&v23->_merchantCountryCode, a5);
    objc_storeStrong(&v23->_supportedNetworks, a7);
    v23->_merchantCapabilities = a8;
    v23->_payLaterSuppressionMode = a9;
    v23->_deviceRegion = v20;
    v23->_context = a10;
    v23->_options = a11;
  }

  return v23;
}

- (PKPaymentOfferInstallmentCriteriaEligibilityConfiguration)initWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 merchant];
  v6 = [v4 amount];
  v7 = [v4 currencyCode];

  v8 = [v5 rawCountry];
  v9 = PKCurrentRegion();
  v10 = [(PKPaymentOfferInstallmentCriteriaEligibilityConfiguration *)self initWithAmount:v6 currencyCode:v7 merchantCountryCode:v8 deviceRegion:v9 supportedNetworks:0 merchantCapabilities:0 payLaterSuppressionMode:0 context:3 options:0];

  return v10;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"amount: '%@'; ", self->_amount];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  [v3 appendFormat:@"merchantCountryCode: '%@'; ", self->_merchantCountryCode];
  [v3 appendFormat:@"deviceRegion: '%@'; ", self->_deviceRegion];
  [v3 appendFormat:@"supportedNetworks: '%@'; ", self->_supportedNetworks];
  v4 = PKMerchantCapabilityToStrings(self->_merchantCapabilities);
  [v3 appendFormat:@"merchantCapabilities: '%@'; ", v4];

  v5 = PKApplePayLaterAvailabilityToString(self->_payLaterSuppressionMode);
  [v3 appendFormat:@"payLaterSuppressionMode: '%@'; ", v5];

  v6 = PKPaymentOffersSessionDetailsContextToString(self->_context);
  [v3 appendFormat:@"context: '%@'; ", v6];

  if (self->_options)
  {
    [v3 appendFormat:@"options: %ld; ", self->_options];
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end