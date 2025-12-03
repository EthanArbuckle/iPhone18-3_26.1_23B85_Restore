@interface PKAccountCardAvailabilityInfo
- (PKAccountCardAvailabilityInfo)initWithAccountState:(unint64_t)state accountType:(unint64_t)type supportedFeatures:(id)features;
@end

@implementation PKAccountCardAvailabilityInfo

- (PKAccountCardAvailabilityInfo)initWithAccountState:(unint64_t)state accountType:(unint64_t)type supportedFeatures:(id)features
{
  featuresCopy = features;
  v13.receiver = self;
  v13.super_class = PKAccountCardAvailabilityInfo;
  v10 = [(PKAccountCardAvailabilityInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_accountState = state;
    v10->_accountType = type;
    objc_storeStrong(&v10->_supportedFeatures, features);
  }

  return v11;
}

@end