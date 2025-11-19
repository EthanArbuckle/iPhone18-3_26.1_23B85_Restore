@interface HMDAccessoryBulletinRegistrationInfo
- (id)description;
@end

@implementation HMDAccessoryBulletinRegistrationInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HMDAccessoryBulletinRegistrationInfo *)self accessoryUUID];
  v7 = [(HMDAccessoryBulletinRegistrationInfo *)self serviceInstanceID];
  if ([(HMDAccessoryBulletinRegistrationInfo *)self enabled])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(HMDAccessoryBulletinRegistrationInfo *)self predicate];
  v10 = [v3 stringWithFormat:@"<%@: accessory=%@, service=%lld, enabled=%@, predicate=%@>", v5, v6, v7, v8, v9];

  return v10;
}

@end