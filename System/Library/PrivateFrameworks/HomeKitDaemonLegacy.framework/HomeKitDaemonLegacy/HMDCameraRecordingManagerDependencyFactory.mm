@interface HMDCameraRecordingManagerDependencyFactory
- (HMDFeaturesDataSource)featuresDataSource;
- (id)createBulkSendSessionInitiatorWithWorkQueue:(id)queue accessory:(id)accessory;
- (id)createBulkSendSessionReaderWithWorkQueue:(id)queue session:(id)session readTimeout:(double)timeout logIdentifier:(id)identifier;
- (id)createLoadBalancingAttemptWithLocalResponseTimeout:(double)timeout logIdentifier:(id)identifier;
- (id)createRecordingSessionRetryContextWithWorkQueue:(id)queue homePresenceByPairingIdentity:(id)identity;
- (id)createRecordingSessionWithWorkQueue:(id)queue camera:(id)camera hapAccessory:(id)accessory home:(id)home localZone:(id)zone configuredFragmentDuration:(double)duration timelineManager:(id)manager homePresenceByPairingIdentity:(id)self0;
- (id)createSessionNotificationTrigger:(id)trigger workQueue:(id)queue;
- (id)createSettingsControl:(id)control accessory:(id)accessory managementService:(id)service;
- (id)createTimelineManagerWithWorkQueue:(id)queue fragmentDuration:(double)duration fragmentCreationReferenceDate:(id)date logIdentifier:(id)identifier;
- (id)createTimerWithTimeInterval:(double)interval;
@end

@implementation HMDCameraRecordingManagerDependencyFactory

- (id)createRecordingSessionRetryContextWithWorkQueue:(id)queue homePresenceByPairingIdentity:(id)identity
{
  identityCopy = identity;
  queueCopy = queue;
  v7 = [[HMDCameraRecordingSessionRetryContext alloc] initWithWorkQueue:queueCopy homePresenceByPairingIdentity:identityCopy];

  return v7;
}

- (id)createTimerWithTimeInterval:(double)interval
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:interval];

  return v3;
}

- (id)createBulkSendSessionReaderWithWorkQueue:(id)queue session:(id)session readTimeout:(double)timeout logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sessionCopy = session;
  queueCopy = queue;
  v12 = [[HMDCameraRecordingBulkSendSessionReader alloc] initWithWorkQueue:queueCopy session:sessionCopy readTimeout:identifierCopy logIdentifier:timeout];

  return v12;
}

- (id)createBulkSendSessionInitiatorWithWorkQueue:(id)queue accessory:(id)accessory
{
  accessoryCopy = accessory;
  queueCopy = queue;
  v7 = [[HMDCameraRecordingBulkSendSessionInitiator alloc] initWithWorkQueue:queueCopy accessory:accessoryCopy];

  return v7;
}

- (id)createSessionNotificationTrigger:(id)trigger workQueue:(id)queue
{
  queueCopy = queue;
  triggerCopy = trigger;
  v7 = [[HMDCameraRecordingSessionNotificationTrigger alloc] initWithCamera:triggerCopy workQueue:queueCopy];

  return v7;
}

- (id)createRecordingSessionWithWorkQueue:(id)queue camera:(id)camera hapAccessory:(id)accessory home:(id)home localZone:(id)zone configuredFragmentDuration:(double)duration timelineManager:(id)manager homePresenceByPairingIdentity:(id)self0
{
  identityCopy = identity;
  managerCopy = manager;
  zoneCopy = zone;
  homeCopy = home;
  accessoryCopy = accessory;
  cameraCopy = camera;
  queueCopy = queue;
  v24 = [[HMDCameraRecordingSession alloc] initWithWorkQueue:queueCopy camera:cameraCopy hapAccessory:accessoryCopy home:homeCopy localZone:zoneCopy configuredFragmentDuration:managerCopy timelineManager:duration homePresenceByPairingIdentity:identityCopy];

  return v24;
}

- (id)createLoadBalancingAttemptWithLocalResponseTimeout:(double)timeout logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [[HMDCameraRecordingLoadBalancingAttempt alloc] initWithLocalResponseTimeout:identifierCopy logIdentifier:timeout];

  return v6;
}

- (id)createTimelineManagerWithWorkQueue:(id)queue fragmentDuration:(double)duration fragmentCreationReferenceDate:(id)date logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dateCopy = date;
  queueCopy = queue;
  v12 = [[HMDCameraRecordingSessionTimelineManager alloc] initWithWorkQueue:queueCopy fragmentDuration:dateCopy fragmentCreationReferenceDate:identifierCopy logIdentifier:duration];

  return v12;
}

- (id)createSettingsControl:(id)control accessory:(id)accessory managementService:(id)service
{
  serviceCopy = service;
  accessoryCopy = accessory;
  controlCopy = control;
  v10 = [[HMDCameraRecordingSettingsControl alloc] initWithWorkQueue:controlCopy accessory:accessoryCopy recordingManagementService:serviceCopy];

  return v10;
}

- (HMDFeaturesDataSource)featuresDataSource
{
  v2 = objc_alloc_init(HMDFeaturesDataSource);

  return v2;
}

@end