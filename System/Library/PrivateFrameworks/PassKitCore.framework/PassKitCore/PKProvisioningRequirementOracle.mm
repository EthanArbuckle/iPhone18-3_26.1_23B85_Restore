@interface PKProvisioningRequirementOracle
- (PKProvisioningRequirementOracle)init;
@end

@implementation PKProvisioningRequirementOracle

- (PKProvisioningRequirementOracle)init
{
  v6.receiver = self;
  v6.super_class = PKProvisioningRequirementOracle;
  v2 = [(PKProvisioningRequirementOracle *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_PKProvisioningRequirementOracle);
    underlying = v2->_underlying;
    v2->_underlying = v3;
  }

  return v2;
}

@end