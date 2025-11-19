@interface HMDBackingStoreResidentUpdateResult
- (HMDBackingStoreResidentUpdateResult)initWithAddedResidentDevices:(id)a3 deletedResidentDevices:(id)a4 reachabilityUpdates:(id)a5;
@end

@implementation HMDBackingStoreResidentUpdateResult

- (HMDBackingStoreResidentUpdateResult)initWithAddedResidentDevices:(id)a3 deletedResidentDevices:(id)a4 reachabilityUpdates:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreResidentUpdateResult;
  v11 = [(HMDBackingStoreResidentUpdateResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HMDBackingStoreResidentUpdateResult *)v11 setAddedResidentDevices:v8];
    [(HMDBackingStoreResidentUpdateResult *)v12 setDeletedResidentDevices:v9];
    [(HMDBackingStoreResidentUpdateResult *)v12 setReachabilityUpdates:v10];
  }

  return v12;
}

@end