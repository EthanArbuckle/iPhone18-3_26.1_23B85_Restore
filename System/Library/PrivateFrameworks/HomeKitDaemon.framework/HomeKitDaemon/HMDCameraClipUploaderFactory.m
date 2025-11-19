@interface HMDCameraClipUploaderFactory
- (id)createAddSignificantEventOperationForClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5;
- (id)createCreateClipOperationForClipModelID:(id)a3 localZone:(id)a4 targetFragmentDuration:(double)a5 clipStartDate:(id)a6 quality:(int64_t)a7 encryptionManager:(id)a8;
- (id)createCreateClipWithSignificantEventOperationForClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 targetFragmentDuration:(double)a6 clipStartDate:(id)a7 quality:(int64_t)a8 encryptionManager:(id)a9;
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

- (id)createAddSignificantEventOperationForClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDCameraClipAddSignificantEventOperation alloc] initWithClipModelID:v9 localZone:v8 significantEvent:v7];

  return v10;
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

- (id)createCreateClipWithSignificantEventOperationForClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 targetFragmentDuration:(double)a6 clipStartDate:(id)a7 quality:(int64_t)a8 encryptionManager:(id)a9
{
  v15 = a9;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[HMDCameraClipCreateClipWithSignificantEventOperation alloc] initWithClipModelID:v19 localZone:v18 significantEvent:v17 targetFragmentDuration:v16 clipStartDate:a8 quality:v15 encryptionManager:a6];

  return v20;
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