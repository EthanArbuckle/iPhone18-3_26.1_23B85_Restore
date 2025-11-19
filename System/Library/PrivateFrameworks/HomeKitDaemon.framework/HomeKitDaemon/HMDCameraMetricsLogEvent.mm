@interface HMDCameraMetricsLogEvent
- (HMDAccessory)accessory;
- (HMDCameraMetricsLogEvent)initWithSessionID:(id)a3 cameraAccessory:(id)a4 isLocal:(BOOL)a5;
@end

@implementation HMDCameraMetricsLogEvent

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDCameraMetricsLogEvent)initWithSessionID:(id)a3 cameraAccessory:(id)a4 isLocal:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 home];
  v12 = [v11 uuid];
  v15.receiver = self;
  v15.super_class = HMDCameraMetricsLogEvent;
  v13 = [(HMMHomeLogEvent *)&v15 initWithHomeUUID:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_sessionID, a3);
    objc_storeWeak(&v13->_accessory, v10);
    v13->_isLocal = a5;
  }

  return v13;
}

@end