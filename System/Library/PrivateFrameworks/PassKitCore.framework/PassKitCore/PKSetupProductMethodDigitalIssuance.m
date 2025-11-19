@interface PKSetupProductMethodDigitalIssuance
- (PKSetupProductMethodDigitalIssuance)init;
@end

@implementation PKSetupProductMethodDigitalIssuance

- (PKSetupProductMethodDigitalIssuance)init
{
  v3.receiver = self;
  v3.super_class = PKSetupProductMethodDigitalIssuance;
  return [(PKSetupProductMethod *)&v3 initWithType:2];
}

@end