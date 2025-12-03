@interface ICASDeviceSnapshotItemData
- (ICASDeviceSnapshotItemData)initWithDeviceModel:(id)model devicePlatform:(id)platform bioAuthEnabled:(id)enabled localNotesEnabled:(id)notesEnabled osVersion:(id)version deviceID:(id)d audioTranscriptEnabled:(id)transcriptEnabled audioSummaryEnabled:(id)self0 mathTextEnabled:(id)self1 mathHandwritingEnabled:(id)self2;
- (id)toDict;
@end

@implementation ICASDeviceSnapshotItemData

- (ICASDeviceSnapshotItemData)initWithDeviceModel:(id)model devicePlatform:(id)platform bioAuthEnabled:(id)enabled localNotesEnabled:(id)notesEnabled osVersion:(id)version deviceID:(id)d audioTranscriptEnabled:(id)transcriptEnabled audioSummaryEnabled:(id)self0 mathTextEnabled:(id)self1 mathHandwritingEnabled:(id)self2
{
  modelCopy = model;
  obj = platform;
  platformCopy = platform;
  enabledCopy = enabled;
  enabledCopy2 = enabled;
  notesEnabledCopy = notesEnabled;
  versionCopy = version;
  versionCopy2 = version;
  dCopy = d;
  dCopy2 = d;
  transcriptEnabledCopy = transcriptEnabled;
  summaryEnabledCopy = summaryEnabled;
  textEnabledCopy = textEnabled;
  handwritingEnabledCopy = handwritingEnabled;
  v36.receiver = self;
  v36.super_class = ICASDeviceSnapshotItemData;
  v23 = [(ICASDeviceSnapshotItemData *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_deviceModel, model);
    objc_storeStrong(&v24->_devicePlatform, obj);
    objc_storeStrong(&v24->_bioAuthEnabled, enabledCopy);
    objc_storeStrong(&v24->_localNotesEnabled, notesEnabled);
    objc_storeStrong(&v24->_osVersion, versionCopy);
    objc_storeStrong(&v24->_deviceID, dCopy);
    objc_storeStrong(&v24->_audioTranscriptEnabled, transcriptEnabled);
    objc_storeStrong(&v24->_audioSummaryEnabled, summaryEnabled);
    objc_storeStrong(&v24->_mathTextEnabled, textEnabled);
    objc_storeStrong(&v24->_mathHandwritingEnabled, handwritingEnabled);
  }

  return v24;
}

- (id)toDict
{
  v37[10] = *MEMORY[0x277D85DE8];
  v36[0] = @"deviceModel";
  deviceModel = [(ICASDeviceSnapshotItemData *)self deviceModel];
  if (deviceModel)
  {
    deviceModel2 = [(ICASDeviceSnapshotItemData *)self deviceModel];
  }

  else
  {
    deviceModel2 = objc_opt_new();
  }

  v34 = deviceModel2;
  v37[0] = deviceModel2;
  v36[1] = @"devicePlatform";
  devicePlatform = [(ICASDeviceSnapshotItemData *)self devicePlatform];
  if (devicePlatform)
  {
    devicePlatform2 = [(ICASDeviceSnapshotItemData *)self devicePlatform];
  }

  else
  {
    devicePlatform2 = objc_opt_new();
  }

  v32 = devicePlatform2;
  v37[1] = devicePlatform2;
  v36[2] = @"bioAuthEnabled";
  bioAuthEnabled = [(ICASDeviceSnapshotItemData *)self bioAuthEnabled];
  if (bioAuthEnabled)
  {
    bioAuthEnabled2 = [(ICASDeviceSnapshotItemData *)self bioAuthEnabled];
  }

  else
  {
    bioAuthEnabled2 = objc_opt_new();
  }

  v30 = bioAuthEnabled2;
  v37[2] = bioAuthEnabled2;
  v36[3] = @"localNotesEnabled";
  localNotesEnabled = [(ICASDeviceSnapshotItemData *)self localNotesEnabled];
  if (localNotesEnabled)
  {
    localNotesEnabled2 = [(ICASDeviceSnapshotItemData *)self localNotesEnabled];
  }

  else
  {
    localNotesEnabled2 = objc_opt_new();
  }

  v28 = localNotesEnabled2;
  v37[3] = localNotesEnabled2;
  v36[4] = @"osVersion";
  osVersion = [(ICASDeviceSnapshotItemData *)self osVersion];
  if (osVersion)
  {
    osVersion2 = [(ICASDeviceSnapshotItemData *)self osVersion];
  }

  else
  {
    osVersion2 = objc_opt_new();
  }

  v26 = osVersion2;
  v37[4] = osVersion2;
  v36[5] = @"deviceID";
  deviceID = [(ICASDeviceSnapshotItemData *)self deviceID];
  if (deviceID)
  {
    deviceID2 = [(ICASDeviceSnapshotItemData *)self deviceID];
  }

  else
  {
    deviceID2 = objc_opt_new();
  }

  v9 = deviceID2;
  v37[5] = deviceID2;
  v36[6] = @"audioTranscriptEnabled";
  audioTranscriptEnabled = [(ICASDeviceSnapshotItemData *)self audioTranscriptEnabled];
  if (audioTranscriptEnabled)
  {
    audioTranscriptEnabled2 = [(ICASDeviceSnapshotItemData *)self audioTranscriptEnabled];
  }

  else
  {
    audioTranscriptEnabled2 = objc_opt_new();
  }

  v12 = audioTranscriptEnabled2;
  v37[6] = audioTranscriptEnabled2;
  v36[7] = @"audioSummaryEnabled";
  audioSummaryEnabled = [(ICASDeviceSnapshotItemData *)self audioSummaryEnabled];
  if (audioSummaryEnabled)
  {
    audioSummaryEnabled2 = [(ICASDeviceSnapshotItemData *)self audioSummaryEnabled];
  }

  else
  {
    audioSummaryEnabled2 = objc_opt_new();
  }

  v15 = audioSummaryEnabled2;
  v37[7] = audioSummaryEnabled2;
  v36[8] = @"mathTextEnabled";
  mathTextEnabled = [(ICASDeviceSnapshotItemData *)self mathTextEnabled];
  if (mathTextEnabled)
  {
    mathTextEnabled2 = [(ICASDeviceSnapshotItemData *)self mathTextEnabled];
  }

  else
  {
    mathTextEnabled2 = objc_opt_new();
  }

  v18 = mathTextEnabled2;
  v37[8] = mathTextEnabled2;
  v36[9] = @"mathHandwritingEnabled";
  mathHandwritingEnabled = [(ICASDeviceSnapshotItemData *)self mathHandwritingEnabled];
  if (mathHandwritingEnabled)
  {
    mathHandwritingEnabled2 = [(ICASDeviceSnapshotItemData *)self mathHandwritingEnabled];
  }

  else
  {
    mathHandwritingEnabled2 = objc_opt_new();
  }

  v21 = mathHandwritingEnabled2;
  v37[9] = mathHandwritingEnabled2;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:10];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end