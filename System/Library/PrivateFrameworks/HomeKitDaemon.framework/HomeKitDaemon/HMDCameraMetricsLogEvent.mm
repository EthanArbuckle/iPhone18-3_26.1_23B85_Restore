@interface HMDCameraMetricsLogEvent
- (HMDAccessory)accessory;
- (HMDCameraMetricsLogEvent)initWithSessionID:(id)d cameraAccessory:(id)accessory isLocal:(BOOL)local;
@end

@implementation HMDCameraMetricsLogEvent

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDCameraMetricsLogEvent)initWithSessionID:(id)d cameraAccessory:(id)accessory isLocal:(BOOL)local
{
  dCopy = d;
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  uuid = [home uuid];
  v15.receiver = self;
  v15.super_class = HMDCameraMetricsLogEvent;
  v13 = [(HMMHomeLogEvent *)&v15 initWithHomeUUID:uuid];

  if (v13)
  {
    objc_storeStrong(&v13->_sessionID, d);
    objc_storeWeak(&v13->_accessory, accessoryCopy);
    v13->_isLocal = local;
  }

  return v13;
}

@end