@interface ICASDeviceSnapshotItemData
- (ICASDeviceSnapshotItemData)initWithDeviceModel:(id)a3 devicePlatform:(id)a4 bioAuthEnabled:(id)a5 localNotesEnabled:(id)a6 osVersion:(id)a7 deviceID:(id)a8 audioTranscriptEnabled:(id)a9 audioSummaryEnabled:(id)a10 mathTextEnabled:(id)a11 mathHandwritingEnabled:(id)a12;
- (id)toDict;
@end

@implementation ICASDeviceSnapshotItemData

- (ICASDeviceSnapshotItemData)initWithDeviceModel:(id)a3 devicePlatform:(id)a4 bioAuthEnabled:(id)a5 localNotesEnabled:(id)a6 osVersion:(id)a7 deviceID:(id)a8 audioTranscriptEnabled:(id)a9 audioSummaryEnabled:(id)a10 mathTextEnabled:(id)a11 mathHandwritingEnabled:(id)a12
{
  v35 = a3;
  obj = a4;
  v34 = a4;
  v27 = a5;
  v33 = a5;
  v32 = a6;
  v28 = a7;
  v31 = a7;
  v29 = a8;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v36.receiver = self;
  v36.super_class = ICASDeviceSnapshotItemData;
  v23 = [(ICASDeviceSnapshotItemData *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_deviceModel, a3);
    objc_storeStrong(&v24->_devicePlatform, obj);
    objc_storeStrong(&v24->_bioAuthEnabled, v27);
    objc_storeStrong(&v24->_localNotesEnabled, a6);
    objc_storeStrong(&v24->_osVersion, v28);
    objc_storeStrong(&v24->_deviceID, v29);
    objc_storeStrong(&v24->_audioTranscriptEnabled, a9);
    objc_storeStrong(&v24->_audioSummaryEnabled, a10);
    objc_storeStrong(&v24->_mathTextEnabled, a11);
    objc_storeStrong(&v24->_mathHandwritingEnabled, a12);
  }

  return v24;
}

- (id)toDict
{
  v37[10] = *MEMORY[0x277D85DE8];
  v36[0] = @"deviceModel";
  v35 = [(ICASDeviceSnapshotItemData *)self deviceModel];
  if (v35)
  {
    v3 = [(ICASDeviceSnapshotItemData *)self deviceModel];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v34 = v3;
  v37[0] = v3;
  v36[1] = @"devicePlatform";
  v33 = [(ICASDeviceSnapshotItemData *)self devicePlatform];
  if (v33)
  {
    v4 = [(ICASDeviceSnapshotItemData *)self devicePlatform];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v32 = v4;
  v37[1] = v4;
  v36[2] = @"bioAuthEnabled";
  v31 = [(ICASDeviceSnapshotItemData *)self bioAuthEnabled];
  if (v31)
  {
    v5 = [(ICASDeviceSnapshotItemData *)self bioAuthEnabled];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v30 = v5;
  v37[2] = v5;
  v36[3] = @"localNotesEnabled";
  v29 = [(ICASDeviceSnapshotItemData *)self localNotesEnabled];
  if (v29)
  {
    v6 = [(ICASDeviceSnapshotItemData *)self localNotesEnabled];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v28 = v6;
  v37[3] = v6;
  v36[4] = @"osVersion";
  v27 = [(ICASDeviceSnapshotItemData *)self osVersion];
  if (v27)
  {
    v7 = [(ICASDeviceSnapshotItemData *)self osVersion];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v26 = v7;
  v37[4] = v7;
  v36[5] = @"deviceID";
  v25 = [(ICASDeviceSnapshotItemData *)self deviceID];
  if (v25)
  {
    v8 = [(ICASDeviceSnapshotItemData *)self deviceID];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v37[5] = v8;
  v36[6] = @"audioTranscriptEnabled";
  v10 = [(ICASDeviceSnapshotItemData *)self audioTranscriptEnabled];
  if (v10)
  {
    v11 = [(ICASDeviceSnapshotItemData *)self audioTranscriptEnabled];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  v37[6] = v11;
  v36[7] = @"audioSummaryEnabled";
  v13 = [(ICASDeviceSnapshotItemData *)self audioSummaryEnabled];
  if (v13)
  {
    v14 = [(ICASDeviceSnapshotItemData *)self audioSummaryEnabled];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;
  v37[7] = v14;
  v36[8] = @"mathTextEnabled";
  v16 = [(ICASDeviceSnapshotItemData *)self mathTextEnabled];
  if (v16)
  {
    v17 = [(ICASDeviceSnapshotItemData *)self mathTextEnabled];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = v17;
  v37[8] = v17;
  v36[9] = @"mathHandwritingEnabled";
  v19 = [(ICASDeviceSnapshotItemData *)self mathHandwritingEnabled];
  if (v19)
  {
    v20 = [(ICASDeviceSnapshotItemData *)self mathHandwritingEnabled];
  }

  else
  {
    v20 = objc_opt_new();
  }

  v21 = v20;
  v37[9] = v20;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:10];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end