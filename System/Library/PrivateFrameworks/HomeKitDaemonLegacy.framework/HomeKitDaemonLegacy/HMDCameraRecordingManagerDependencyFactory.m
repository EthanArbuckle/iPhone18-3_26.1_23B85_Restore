@interface HMDCameraRecordingManagerDependencyFactory
- (HMDFeaturesDataSource)featuresDataSource;
- (id)createBulkSendSessionInitiatorWithWorkQueue:(id)a3 accessory:(id)a4;
- (id)createBulkSendSessionReaderWithWorkQueue:(id)a3 session:(id)a4 readTimeout:(double)a5 logIdentifier:(id)a6;
- (id)createLoadBalancingAttemptWithLocalResponseTimeout:(double)a3 logIdentifier:(id)a4;
- (id)createRecordingSessionRetryContextWithWorkQueue:(id)a3 homePresenceByPairingIdentity:(id)a4;
- (id)createRecordingSessionWithWorkQueue:(id)a3 camera:(id)a4 hapAccessory:(id)a5 home:(id)a6 localZone:(id)a7 configuredFragmentDuration:(double)a8 timelineManager:(id)a9 homePresenceByPairingIdentity:(id)a10;
- (id)createSessionNotificationTrigger:(id)a3 workQueue:(id)a4;
- (id)createSettingsControl:(id)a3 accessory:(id)a4 managementService:(id)a5;
- (id)createTimelineManagerWithWorkQueue:(id)a3 fragmentDuration:(double)a4 fragmentCreationReferenceDate:(id)a5 logIdentifier:(id)a6;
- (id)createTimerWithTimeInterval:(double)a3;
@end

@implementation HMDCameraRecordingManagerDependencyFactory

- (id)createRecordingSessionRetryContextWithWorkQueue:(id)a3 homePresenceByPairingIdentity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMDCameraRecordingSessionRetryContext alloc] initWithWorkQueue:v6 homePresenceByPairingIdentity:v5];

  return v7;
}

- (id)createTimerWithTimeInterval:(double)a3
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a3];

  return v3;
}

- (id)createBulkSendSessionReaderWithWorkQueue:(id)a3 session:(id)a4 readTimeout:(double)a5 logIdentifier:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[HMDCameraRecordingBulkSendSessionReader alloc] initWithWorkQueue:v11 session:v10 readTimeout:v9 logIdentifier:a5];

  return v12;
}

- (id)createBulkSendSessionInitiatorWithWorkQueue:(id)a3 accessory:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMDCameraRecordingBulkSendSessionInitiator alloc] initWithWorkQueue:v6 accessory:v5];

  return v7;
}

- (id)createSessionNotificationTrigger:(id)a3 workQueue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMDCameraRecordingSessionNotificationTrigger alloc] initWithCamera:v6 workQueue:v5];

  return v7;
}

- (id)createRecordingSessionWithWorkQueue:(id)a3 camera:(id)a4 hapAccessory:(id)a5 home:(id)a6 localZone:(id)a7 configuredFragmentDuration:(double)a8 timelineManager:(id)a9 homePresenceByPairingIdentity:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [[HMDCameraRecordingSession alloc] initWithWorkQueue:v23 camera:v22 hapAccessory:v21 home:v20 localZone:v19 configuredFragmentDuration:v18 timelineManager:a8 homePresenceByPairingIdentity:v17];

  return v24;
}

- (id)createLoadBalancingAttemptWithLocalResponseTimeout:(double)a3 logIdentifier:(id)a4
{
  v5 = a4;
  v6 = [[HMDCameraRecordingLoadBalancingAttempt alloc] initWithLocalResponseTimeout:v5 logIdentifier:a3];

  return v6;
}

- (id)createTimelineManagerWithWorkQueue:(id)a3 fragmentDuration:(double)a4 fragmentCreationReferenceDate:(id)a5 logIdentifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [[HMDCameraRecordingSessionTimelineManager alloc] initWithWorkQueue:v11 fragmentDuration:v10 fragmentCreationReferenceDate:v9 logIdentifier:a4];

  return v12;
}

- (id)createSettingsControl:(id)a3 accessory:(id)a4 managementService:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDCameraRecordingSettingsControl alloc] initWithWorkQueue:v9 accessory:v8 recordingManagementService:v7];

  return v10;
}

- (HMDFeaturesDataSource)featuresDataSource
{
  v2 = objc_alloc_init(HMDFeaturesDataSource);

  return v2;
}

@end