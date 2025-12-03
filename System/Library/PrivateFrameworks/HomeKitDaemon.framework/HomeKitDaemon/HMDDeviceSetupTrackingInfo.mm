@interface HMDDeviceSetupTrackingInfo
- (HMDDeviceSetupTrackingInfo)initWithIdentifier:(id)identifier startTime:(unint64_t)time endTime:(unint64_t)endTime role:(int64_t)role accessoryUUID:(id)d accessoryCategory:(id)category accessoryIDSIdentifier:(id)sIdentifier setupClientBundleID:(id)self0;
@end

@implementation HMDDeviceSetupTrackingInfo

- (HMDDeviceSetupTrackingInfo)initWithIdentifier:(id)identifier startTime:(unint64_t)time endTime:(unint64_t)endTime role:(int64_t)role accessoryUUID:(id)d accessoryCategory:(id)category accessoryIDSIdentifier:(id)sIdentifier setupClientBundleID:(id)self0
{
  identifierCopy = identifier;
  dCopy = d;
  categoryCopy = category;
  sIdentifierCopy = sIdentifier;
  iDCopy = iD;
  v25.receiver = self;
  v25.super_class = HMDDeviceSetupTrackingInfo;
  v18 = [(HMDDeviceSetupTrackingInfo *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    v19->_startTime = time;
    v19->_endTime = endTime;
    v19->_role = role;
    objc_storeStrong(&v19->_accessoryUUID, d);
    objc_storeStrong(&v19->_accessoryCategory, category);
    objc_storeStrong(&v19->_accessoryIDSIdentifier, sIdentifier);
    objc_storeStrong(&v19->_setupClientBundleID, iD);
  }

  return v19;
}

@end