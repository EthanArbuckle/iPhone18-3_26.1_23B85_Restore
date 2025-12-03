@interface HMDAccessoryBulletinRegistrationInfo
- (id)description;
@end

@implementation HMDAccessoryBulletinRegistrationInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  accessoryUUID = [(HMDAccessoryBulletinRegistrationInfo *)self accessoryUUID];
  serviceInstanceID = [(HMDAccessoryBulletinRegistrationInfo *)self serviceInstanceID];
  if ([(HMDAccessoryBulletinRegistrationInfo *)self enabled])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  predicate = [(HMDAccessoryBulletinRegistrationInfo *)self predicate];
  v10 = [v3 stringWithFormat:@"<%@: accessory=%@, service=%lld, enabled=%@, predicate=%@>", v5, accessoryUUID, serviceInstanceID, v8, predicate];

  return v10;
}

@end