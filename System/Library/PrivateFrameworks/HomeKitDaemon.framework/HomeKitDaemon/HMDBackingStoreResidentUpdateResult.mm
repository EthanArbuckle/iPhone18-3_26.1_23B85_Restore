@interface HMDBackingStoreResidentUpdateResult
- (HMDBackingStoreResidentUpdateResult)initWithAddedResidentDevices:(id)devices deletedResidentDevices:(id)residentDevices reachabilityUpdates:(id)updates;
@end

@implementation HMDBackingStoreResidentUpdateResult

- (HMDBackingStoreResidentUpdateResult)initWithAddedResidentDevices:(id)devices deletedResidentDevices:(id)residentDevices reachabilityUpdates:(id)updates
{
  devicesCopy = devices;
  residentDevicesCopy = residentDevices;
  updatesCopy = updates;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreResidentUpdateResult;
  v11 = [(HMDBackingStoreResidentUpdateResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HMDBackingStoreResidentUpdateResult *)v11 setAddedResidentDevices:devicesCopy];
    [(HMDBackingStoreResidentUpdateResult *)v12 setDeletedResidentDevices:residentDevicesCopy];
    [(HMDBackingStoreResidentUpdateResult *)v12 setReachabilityUpdates:updatesCopy];
  }

  return v12;
}

@end