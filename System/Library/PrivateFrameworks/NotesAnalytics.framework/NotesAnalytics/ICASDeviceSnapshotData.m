@interface ICASDeviceSnapshotData
- (ICASDeviceSnapshotData)initWithUserStartMonth:(id)a3 userStartYear:(id)a4 saltVersion:(id)a5 accountTypeSummary:(id)a6 collabFoldersSummary:(id)a7 totalCountOfPinnedNotes:(id)a8 deviceSnapshotSummary:(id)a9 userSnapshotSummary:(id)a10;
- (id)toDict;
@end

@implementation ICASDeviceSnapshotData

- (ICASDeviceSnapshotData)initWithUserStartMonth:(id)a3 userStartYear:(id)a4 saltVersion:(id)a5 accountTypeSummary:(id)a6 collabFoldersSummary:(id)a7 totalCountOfPinnedNotes:(id)a8 deviceSnapshotSummary:(id)a9 userSnapshotSummary:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = ICASDeviceSnapshotData;
  v19 = [(ICASDeviceSnapshotData *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_userStartMonth, a3);
    objc_storeStrong(&v20->_userStartYear, a4);
    objc_storeStrong(&v20->_saltVersion, a5);
    objc_storeStrong(&v20->_accountTypeSummary, a6);
    objc_storeStrong(&v20->_collabFoldersSummary, a7);
    objc_storeStrong(&v20->_totalCountOfPinnedNotes, a8);
    objc_storeStrong(&v20->_deviceSnapshotSummary, a9);
    objc_storeStrong(&v20->_userSnapshotSummary, a10);
  }

  return v20;
}

- (id)toDict
{
  v31[8] = *MEMORY[0x277D85DE8];
  v30[0] = @"userStartMonth";
  v29 = [(ICASDeviceSnapshotData *)self userStartMonth];
  if (v29)
  {
    v3 = [(ICASDeviceSnapshotData *)self userStartMonth];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v28 = v3;
  v31[0] = v3;
  v30[1] = @"userStartYear";
  v27 = [(ICASDeviceSnapshotData *)self userStartYear];
  if (v27)
  {
    v4 = [(ICASDeviceSnapshotData *)self userStartYear];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v26 = v4;
  v31[1] = v4;
  v30[2] = @"saltVersion";
  v25 = [(ICASDeviceSnapshotData *)self saltVersion];
  if (v25)
  {
    v5 = [(ICASDeviceSnapshotData *)self saltVersion];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v24 = v5;
  v31[2] = v5;
  v30[3] = @"accountTypeSummary";
  v23 = [(ICASDeviceSnapshotData *)self accountTypeSummary];
  if (v23)
  {
    v6 = [(ICASDeviceSnapshotData *)self accountTypeSummary];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  v31[3] = v6;
  v30[4] = @"collabFoldersSummary";
  v8 = [(ICASDeviceSnapshotData *)self collabFoldersSummary];
  if (v8)
  {
    v9 = [(ICASDeviceSnapshotData *)self collabFoldersSummary];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v31[4] = v9;
  v30[5] = @"totalCountOfPinnedNotes";
  v11 = [(ICASDeviceSnapshotData *)self totalCountOfPinnedNotes];
  if (v11)
  {
    v12 = [(ICASDeviceSnapshotData *)self totalCountOfPinnedNotes];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v31[5] = v12;
  v30[6] = @"deviceSnapshotSummary";
  v14 = [(ICASDeviceSnapshotData *)self deviceSnapshotSummary];
  if (v14)
  {
    v15 = [(ICASDeviceSnapshotData *)self deviceSnapshotSummary];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;
  v31[6] = v15;
  v30[7] = @"userSnapshotSummary";
  v17 = [(ICASDeviceSnapshotData *)self userSnapshotSummary];
  if (v17)
  {
    v18 = [(ICASDeviceSnapshotData *)self userSnapshotSummary];
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = v18;
  v31[7] = v18;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:8];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end