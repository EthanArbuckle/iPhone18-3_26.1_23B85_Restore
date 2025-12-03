@interface HMDCameraClipUploaderFactory
- (id)createAddSignificantEventOperationForClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity;
- (id)createCreateClipOperationForClipModelID:(id)d localZone:(id)zone targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)manager;
- (id)createCreateClipWithSignificantEventOperationForClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)self0;
- (id)createFinalizeClipOperationForModelID:(id)d localZone:(id)zone;
- (id)createUploadVideoSegmentOperationForModelID:(id)d localZone:(id)zone data:(id)data metadata:(id)metadata encryptionManager:(id)manager;
@end

@implementation HMDCameraClipUploaderFactory

- (id)createFinalizeClipOperationForModelID:(id)d localZone:(id)zone
{
  zoneCopy = zone;
  dCopy = d;
  v7 = [(HMDCameraClipOperation *)[HMDCameraClipFinalizeClipOperation alloc] initWithClipModelID:dCopy localZone:zoneCopy];

  return v7;
}

- (id)createAddSignificantEventOperationForClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity
{
  identityCopy = identity;
  eventCopy = event;
  zoneCopy = zone;
  dCopy = d;
  v13 = [[HMDCameraClipAddSignificantEventOperation alloc] initWithClipModelID:dCopy localZone:zoneCopy significantEvent:eventCopy homePresenceByPairingIdentity:identityCopy];

  return v13;
}

- (id)createUploadVideoSegmentOperationForModelID:(id)d localZone:(id)zone data:(id)data metadata:(id)metadata encryptionManager:(id)manager
{
  managerCopy = manager;
  metadataCopy = metadata;
  dataCopy = data;
  zoneCopy = zone;
  dCopy = d;
  v16 = [(HMDCameraClipAppendStreamingAssetOperation *)[HMDCameraClipUploadVideoSegmentOperation alloc] initWithClipModelID:dCopy localZone:zoneCopy data:dataCopy metadata:metadataCopy encryptionManager:managerCopy];

  return v16;
}

- (id)createCreateClipWithSignificantEventOperationForClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)self0
{
  managerCopy = manager;
  dateCopy = date;
  identityCopy = identity;
  eventCopy = event;
  zoneCopy = zone;
  dCopy = d;
  v23 = [[HMDCameraClipCreateClipWithSignificantEventOperation alloc] initWithClipModelID:dCopy localZone:zoneCopy significantEvent:eventCopy homePresenceByPairingIdentity:identityCopy targetFragmentDuration:dateCopy clipStartDate:quality quality:duration encryptionManager:managerCopy];

  return v23;
}

- (id)createCreateClipOperationForClipModelID:(id)d localZone:(id)zone targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)manager
{
  managerCopy = manager;
  dateCopy = date;
  zoneCopy = zone;
  dCopy = d;
  v17 = [[HMDCameraClipCreateClipOperation alloc] initWithClipModelID:dCopy localZone:zoneCopy targetFragmentDuration:dateCopy clipStartDate:quality quality:managerCopy encryptionManager:duration];

  return v17;
}

@end