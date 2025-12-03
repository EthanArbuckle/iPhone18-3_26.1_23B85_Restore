@interface HMDCompositeSettingPrivileges
- (HMDCompositeSettingPrivileges)initWithMinReadUserPrivilege:(unint64_t)privilege;
@end

@implementation HMDCompositeSettingPrivileges

- (HMDCompositeSettingPrivileges)initWithMinReadUserPrivilege:(unint64_t)privilege
{
  v5.receiver = self;
  v5.super_class = HMDCompositeSettingPrivileges;
  result = [(HMDCompositeSettingPrivileges *)&v5 init];
  if (result)
  {
    result->_minReadUserPrivilege = privilege;
  }

  return result;
}

@end