@interface HMDCameraRecordingSessionFactory
- (double)recordingExtensionDuration;
- (id)createSignificantEventManagerWithWorkQueue:(id)a3 faceClassificationResolver:(id)a4 logIdentifier:(id)a5;
- (id)createTimelapseFragmentManagerWithLogIdentifier:(id)a3;
- (id)createUploaderWithClipUUID:(id)a3 startDate:(id)a4 targetFragmentDuration:(double)a5 quality:(int64_t)a6 localZone:(id)a7 workQueue:(id)a8 logIdentifier:(id)a9;
- (id)createVideoAnalyzerWithConfiguration:(id)a3 identifier:(id)a4;
@end

@implementation HMDCameraRecordingSessionFactory

- (id)createUploaderWithClipUUID:(id)a3 startDate:(id)a4 targetFragmentDuration:(double)a5 quality:(int64_t)a6 localZone:(id)a7 workQueue:(id)a8 logIdentifier:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a4;
  v19 = a3;
  v20 = [[HMDCameraClipUploader alloc] initWithClipUUID:v19 startDate:v18 targetFragmentDuration:a6 quality:v17 localZone:v16 workQueue:v15 logIdentifier:a5];

  return v20;
}

- (id)createTimelapseFragmentManagerWithLogIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[HMDCameraRecordingSessionVariantFragmentManager alloc] initWithLogIdentifier:v3];

  return v4;
}

- (id)createSignificantEventManagerWithWorkQueue:(id)a3 faceClassificationResolver:(id)a4 logIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDCameraRecordingSessionSignificantEventManager alloc] initWithWorkQueue:v9 faceClassificationResolver:v8 logIdentifier:v7];

  return v10;
}

- (id)createVideoAnalyzerWithConfiguration:(id)a3 identifier:(id)a4
{
  v6 = 0;
  v4 = [MEMORY[0x277D14DD0] analyzerWithConfiguration:a3 identifier:a4 error:&v6];

  return v4;
}

- (double)recordingExtensionDuration
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"cameraRecordingExtensionDuration"];
  v4 = [v3 numberValue];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

@end