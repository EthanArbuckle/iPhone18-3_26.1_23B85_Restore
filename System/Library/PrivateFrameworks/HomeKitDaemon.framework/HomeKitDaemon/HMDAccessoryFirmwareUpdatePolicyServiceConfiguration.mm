@interface HMDAccessoryFirmwareUpdatePolicyServiceConfiguration
- (HMDAccessoryFirmwareUpdatePolicyServiceConfiguration)initWithType:(id)a3 category:(id)a4 criteria:(id)a5;
@end

@implementation HMDAccessoryFirmwareUpdatePolicyServiceConfiguration

- (HMDAccessoryFirmwareUpdatePolicyServiceConfiguration)initWithType:(id)a3 category:(id)a4 criteria:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDAccessoryFirmwareUpdatePolicyServiceConfiguration;
  v12 = [(HMDAccessoryFirmwareUpdatePolicyServiceConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, a3);
    objc_storeStrong(&v13->_category, a4);
    objc_storeStrong(&v13->_criteria, a5);
  }

  return v13;
}

@end