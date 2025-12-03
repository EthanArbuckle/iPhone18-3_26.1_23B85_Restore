@interface HMDAccessoryFirmwareUpdatePolicyServiceConfiguration
- (HMDAccessoryFirmwareUpdatePolicyServiceConfiguration)initWithType:(id)type category:(id)category criteria:(id)criteria;
@end

@implementation HMDAccessoryFirmwareUpdatePolicyServiceConfiguration

- (HMDAccessoryFirmwareUpdatePolicyServiceConfiguration)initWithType:(id)type category:(id)category criteria:(id)criteria
{
  typeCopy = type;
  categoryCopy = category;
  criteriaCopy = criteria;
  v15.receiver = self;
  v15.super_class = HMDAccessoryFirmwareUpdatePolicyServiceConfiguration;
  v12 = [(HMDAccessoryFirmwareUpdatePolicyServiceConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, type);
    objc_storeStrong(&v13->_category, category);
    objc_storeStrong(&v13->_criteria, criteria);
  }

  return v13;
}

@end