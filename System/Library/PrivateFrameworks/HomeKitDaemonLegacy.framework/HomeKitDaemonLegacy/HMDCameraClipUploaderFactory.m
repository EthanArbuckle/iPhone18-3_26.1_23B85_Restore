@interface HMDCameraClipUploaderFactory
- (id)createAddSignificantEventOperationForClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 homePresenceByPairingIdentity:(id)a6;
- (id)createCreateClipOperationForClipModelID:(id)a3 localZone:(id)a4 targetFragmentDuration:(double)a5 clipStartDate:(id)a6 quality:(int64_t)a7 encryptionManager:(id)a8;
- (id)createCreateClipWithSignificantEventOperationForClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 homePresenceByPairingIdentity:(id)a6 targetFragmentDuration:(double)a7 clipStartDate:(id)a8 quality:(int64_t)a9 encryptionManager:(id)a10;
- (id)createFinalizeClipOperationForModelID:(id)a3 localZone:(id)a4;
- (id)createUploadVideoSegmentOperationForModelID:(id)a3 localZone:(id)a4 data:(id)a5 metadata:(id)a6 encryptionManager:(id)a7;
@end

@implementation HMDCameraClipUploaderFactory

- (id)createFinalizeClipOperationForModelID:(id)a3 localZone:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(HMDCameraClipOperation *)[HMDCameraClipFinalizeClipOperation alloc] initWithClipModelID:v6 localZone:v5];

  return v7;
}

- (id)createAddSignificantEventOperationForClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 homePresenceByPairingIdentity:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[HMDCameraClipAddSignificantEventOperation alloc] initWithClipModelID:v12 localZone:v11 significantEvent:v10 homePresenceByPairingIdentity:v9];

  return v13;
}

- (id)createUploadVideoSegmentOperationForModelID:(id)a3 localZone:(id)a4 data:(id)a5 metadata:(id)a6 encryptionManager:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(HMDCameraClipAppendStreamingAssetOperation *)[HMDCameraClipUploadVideoSegmentOperation alloc] initWithClipModelID:v15 localZone:v14 data:v13 metadata:v12 encryptionManager:v11];

  return v16;
}

- (id)createCreateClipWithSignificantEventOperationForClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 homePresenceByPairingIdentity:(id)a6 targetFragmentDuration:(double)a7 clipStartDate:(id)a8 quality:(int64_t)a9 encryptionManager:(id)a10
{
  v17 = a10;
  v18 = a8;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[HMDCameraClipCreateClipWithSignificantEventOperation alloc] initWithClipModelID:v22 localZone:v21 significantEvent:v20 homePresenceByPairingIdentity:v19 targetFragmentDuration:v18 clipStartDate:a9 quality:a7 encryptionManager:v17];

  return v23;
}

- (id)createCreateClipOperationForClipModelID:(id)a3 localZone:(id)a4 targetFragmentDuration:(double)a5 clipStartDate:(id)a6 quality:(int64_t)a7 encryptionManager:(id)a8
{
  v13 = a8;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [[HMDCameraClipCreateClipOperation alloc] initWithClipModelID:v16 localZone:v15 targetFragmentDuration:v14 clipStartDate:a7 quality:v13 encryptionManager:a5];

  return v17;
}

@end