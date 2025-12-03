@interface HMDCameraRecordingSessionFactory
- (double)recordingExtensionDuration;
- (id)createSignificantEventManagerWithWorkQueue:(id)queue faceClassificationResolver:(id)resolver logIdentifier:(id)identifier;
- (id)createTimelapseFragmentManagerWithLogIdentifier:(id)identifier;
- (id)createUploaderWithClipUUID:(id)d startDate:(id)date targetFragmentDuration:(double)duration quality:(int64_t)quality localZone:(id)zone workQueue:(id)queue logIdentifier:(id)identifier;
- (id)createVideoAnalyzerWithConfiguration:(id)configuration identifier:(id)identifier;
@end

@implementation HMDCameraRecordingSessionFactory

- (id)createUploaderWithClipUUID:(id)d startDate:(id)date targetFragmentDuration:(double)duration quality:(int64_t)quality localZone:(id)zone workQueue:(id)queue logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queueCopy = queue;
  zoneCopy = zone;
  dateCopy = date;
  dCopy = d;
  v20 = [[HMDCameraClipUploader alloc] initWithClipUUID:dCopy startDate:dateCopy targetFragmentDuration:quality quality:zoneCopy localZone:queueCopy workQueue:identifierCopy logIdentifier:duration];

  return v20;
}

- (id)createTimelapseFragmentManagerWithLogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HMDCameraRecordingSessionVariantFragmentManager alloc] initWithLogIdentifier:identifierCopy];

  return v4;
}

- (id)createSignificantEventManagerWithWorkQueue:(id)queue faceClassificationResolver:(id)resolver logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  resolverCopy = resolver;
  queueCopy = queue;
  v10 = [[HMDCameraRecordingSessionSignificantEventManager alloc] initWithWorkQueue:queueCopy faceClassificationResolver:resolverCopy logIdentifier:identifierCopy];

  return v10;
}

- (id)createVideoAnalyzerWithConfiguration:(id)configuration identifier:(id)identifier
{
  v6 = 0;
  v4 = [MEMORY[0x277D14DD0] analyzerWithConfiguration:configuration identifier:identifier error:&v6];

  return v4;
}

- (double)recordingExtensionDuration
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"cameraRecordingExtensionDuration"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

@end