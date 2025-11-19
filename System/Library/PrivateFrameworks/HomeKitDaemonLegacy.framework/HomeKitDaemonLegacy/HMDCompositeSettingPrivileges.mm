@interface HMDCompositeSettingPrivileges
- (HMDCompositeSettingPrivileges)initWithMinReadUserPrivilege:(unint64_t)a3;
@end

@implementation HMDCompositeSettingPrivileges

- (HMDCompositeSettingPrivileges)initWithMinReadUserPrivilege:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDCompositeSettingPrivileges;
  result = [(HMDCompositeSettingPrivileges *)&v5 init];
  if (result)
  {
    result->_minReadUserPrivilege = a3;
  }

  return result;
}

@end