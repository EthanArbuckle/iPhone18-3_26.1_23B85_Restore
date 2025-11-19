@interface PKAccountCardAvailabilityInfo
- (PKAccountCardAvailabilityInfo)initWithAccountState:(unint64_t)a3 accountType:(unint64_t)a4 supportedFeatures:(id)a5;
@end

@implementation PKAccountCardAvailabilityInfo

- (PKAccountCardAvailabilityInfo)initWithAccountState:(unint64_t)a3 accountType:(unint64_t)a4 supportedFeatures:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PKAccountCardAvailabilityInfo;
  v10 = [(PKAccountCardAvailabilityInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_accountState = a3;
    v10->_accountType = a4;
    objc_storeStrong(&v10->_supportedFeatures, a5);
  }

  return v11;
}

@end