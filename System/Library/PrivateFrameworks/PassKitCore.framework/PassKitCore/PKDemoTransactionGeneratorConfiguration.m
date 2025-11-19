@interface PKDemoTransactionGeneratorConfiguration
- (PKDemoTransactionGeneratorConfiguration)init;
@end

@implementation PKDemoTransactionGeneratorConfiguration

- (PKDemoTransactionGeneratorConfiguration)init
{
  v5.receiver = self;
  v5.super_class = PKDemoTransactionGeneratorConfiguration;
  v2 = [(PKDemoTransactionGeneratorConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_demoMerchant = -1;
    v2->_demoPerson = -1;
    v2->_redemptionType = PKDemoRewardsRedemptionType();
  }

  return v3;
}

@end