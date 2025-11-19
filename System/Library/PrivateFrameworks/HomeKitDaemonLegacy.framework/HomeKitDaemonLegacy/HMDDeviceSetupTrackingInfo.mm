@interface HMDDeviceSetupTrackingInfo
- (HMDDeviceSetupTrackingInfo)initWithIdentifier:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 role:(int64_t)a6 accessoryUUID:(id)a7 accessoryCategory:(id)a8 accessoryIDSIdentifier:(id)a9 setupClientBundleID:(id)a10;
@end

@implementation HMDDeviceSetupTrackingInfo

- (HMDDeviceSetupTrackingInfo)initWithIdentifier:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 role:(int64_t)a6 accessoryUUID:(id)a7 accessoryCategory:(id)a8 accessoryIDSIdentifier:(id)a9 setupClientBundleID:(id)a10
{
  v24 = a3;
  v23 = a7;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v25.receiver = self;
  v25.super_class = HMDDeviceSetupTrackingInfo;
  v18 = [(HMDDeviceSetupTrackingInfo *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    v19->_startTime = a4;
    v19->_endTime = a5;
    v19->_role = a6;
    objc_storeStrong(&v19->_accessoryUUID, a7);
    objc_storeStrong(&v19->_accessoryCategory, a8);
    objc_storeStrong(&v19->_accessoryIDSIdentifier, a9);
    objc_storeStrong(&v19->_setupClientBundleID, a10);
  }

  return v19;
}

@end