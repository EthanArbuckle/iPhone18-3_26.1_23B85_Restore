@interface HMDCameraClipUploaderFactory
- (id)createAddSignificantEventOperationForClipModelID:(id)d localZone:(id)zone significantEvent:(id)event;
- (id)createCreateClipOperationForClipModelID:(id)d localZone:(id)zone targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)manager;
- (id)createCreateClipWithSignificantEventOperationForClipModelID:(id)d localZone:(id)zone significantEvent:(id)event targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)manager;
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

- (id)createAddSignificantEventOperationForClipModelID:(id)d localZone:(id)zone significantEvent:(id)event
{
  eventCopy = event;
  zoneCopy = zone;
  dCopy = d;
  v10 = [[HMDCameraClipAddSignificantEventOperation alloc] initWithClipModelID:dCopy localZone:zoneCopy significantEvent:eventCopy];

  return v10;
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

- (id)createCreateClipWithSignificantEventOperationForClipModelID:(id)d localZone:(id)zone significantEvent:(id)event targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)manager
{
  managerCopy = manager;
  dateCopy = date;
  eventCopy = event;
  zoneCopy = zone;
  dCopy = d;
  v20 = [[HMDCameraClipCreateClipWithSignificantEventOperation alloc] initWithClipModelID:dCopy localZone:zoneCopy significantEvent:eventCopy targetFragmentDuration:dateCopy clipStartDate:quality quality:managerCopy encryptionManager:duration];

  return v20;
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