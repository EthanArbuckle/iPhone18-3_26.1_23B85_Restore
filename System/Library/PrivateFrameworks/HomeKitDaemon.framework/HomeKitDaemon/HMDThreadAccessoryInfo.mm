@interface HMDThreadAccessoryInfo
- (HMDThreadAccessoryInfo)initWithName:(id)name ipAddress:(id)address isMatter:(BOOL)matter isBatteryPowered:(BOOL)powered;
@end

@implementation HMDThreadAccessoryInfo

- (HMDThreadAccessoryInfo)initWithName:(id)name ipAddress:(id)address isMatter:(BOOL)matter isBatteryPowered:(BOOL)powered
{
  nameCopy = name;
  addressCopy = address;
  v17.receiver = self;
  v17.super_class = HMDThreadAccessoryInfo;
  v13 = [(HMDThreadAccessoryInfo *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v14->_ipAddress, address);
    v14->_isMatter = matter;
    v14->_isBatteryPowered = powered;
    v14->_lock._os_unfair_lock_opaque = 0;
    v14->_isThreadAccessoryInfoValid = 0;
    threadAccessoryInfo = v14->_threadAccessoryInfo;
    v14->_threadAccessoryInfo = 0;
  }

  return v14;
}

@end