@interface PKPaymentOfferInstallmentCriteriaEligibilityConfiguration
- (NSString)description;
- (PKPaymentOfferInstallmentCriteriaEligibilityConfiguration)initWithAmount:(id)amount currencyCode:(id)code merchantCountryCode:(id)countryCode deviceRegion:(id)region supportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities payLaterSuppressionMode:(int64_t)mode context:(unint64_t)self0 options:(unint64_t)self1;
- (PKPaymentOfferInstallmentCriteriaEligibilityConfiguration)initWithTransaction:(id)transaction;
@end

@implementation PKPaymentOfferInstallmentCriteriaEligibilityConfiguration

- (PKPaymentOfferInstallmentCriteriaEligibilityConfiguration)initWithAmount:(id)amount currencyCode:(id)code merchantCountryCode:(id)countryCode deviceRegion:(id)region supportedNetworks:(id)networks merchantCapabilities:(unint64_t)capabilities payLaterSuppressionMode:(int64_t)mode context:(unint64_t)self0 options:(unint64_t)self1
{
  amountCopy = amount;
  codeCopy = code;
  countryCodeCopy = countryCode;
  regionCopy = region;
  networksCopy = networks;
  v26.receiver = self;
  v26.super_class = PKPaymentOfferInstallmentCriteriaEligibilityConfiguration;
  v22 = [(PKPaymentOfferInstallmentCriteriaEligibilityConfiguration *)&v26 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_amount, amount);
    objc_storeStrong(&v23->_currencyCode, code);
    objc_storeStrong(&v23->_merchantCountryCode, countryCode);
    objc_storeStrong(&v23->_supportedNetworks, networks);
    v23->_merchantCapabilities = capabilities;
    v23->_payLaterSuppressionMode = mode;
    v23->_deviceRegion = regionCopy;
    v23->_context = context;
    v23->_options = options;
  }

  return v23;
}

- (PKPaymentOfferInstallmentCriteriaEligibilityConfiguration)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  merchant = [transactionCopy merchant];
  amount = [transactionCopy amount];
  currencyCode = [transactionCopy currencyCode];

  rawCountry = [merchant rawCountry];
  v9 = PKCurrentRegion();
  v10 = [(PKPaymentOfferInstallmentCriteriaEligibilityConfiguration *)self initWithAmount:amount currencyCode:currencyCode merchantCountryCode:rawCountry deviceRegion:v9 supportedNetworks:0 merchantCapabilities:0 payLaterSuppressionMode:0 context:3 options:0];

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