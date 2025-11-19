@interface HMDThreadAccessoryInfo
- (HMDThreadAccessoryInfo)initWithName:(id)a3 ipAddress:(id)a4 isMatter:(BOOL)a5 isBatteryPowered:(BOOL)a6;
@end

@implementation HMDThreadAccessoryInfo

- (HMDThreadAccessoryInfo)initWithName:(id)a3 ipAddress:(id)a4 isMatter:(BOOL)a5 isBatteryPowered:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = HMDThreadAccessoryInfo;
  v13 = [(HMDThreadAccessoryInfo *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, a3);
    objc_storeStrong(&v14->_ipAddress, a4);
    v14->_isMatter = a5;
    v14->_isBatteryPowered = a6;
    v14->_lock._os_unfair_lock_opaque = 0;
    v14->_isThreadAccessoryInfoValid = 0;
    threadAccessoryInfo = v14->_threadAccessoryInfo;
    v14->_threadAccessoryInfo = 0;
  }

  return v14;
}

@end