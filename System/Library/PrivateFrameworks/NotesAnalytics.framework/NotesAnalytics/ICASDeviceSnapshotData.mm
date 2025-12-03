@interface ICASDeviceSnapshotData
- (ICASDeviceSnapshotData)initWithUserStartMonth:(id)month userStartYear:(id)year saltVersion:(id)version accountTypeSummary:(id)summary collabFoldersSummary:(id)foldersSummary totalCountOfPinnedNotes:(id)notes deviceSnapshotSummary:(id)snapshotSummary userSnapshotSummary:(id)self0;
- (id)toDict;
@end

@implementation ICASDeviceSnapshotData

- (ICASDeviceSnapshotData)initWithUserStartMonth:(id)month userStartYear:(id)year saltVersion:(id)version accountTypeSummary:(id)summary collabFoldersSummary:(id)foldersSummary totalCountOfPinnedNotes:(id)notes deviceSnapshotSummary:(id)snapshotSummary userSnapshotSummary:(id)self0
{
  monthCopy = month;
  yearCopy = year;
  versionCopy = version;
  summaryCopy = summary;
  foldersSummaryCopy = foldersSummary;
  notesCopy = notes;
  snapshotSummaryCopy = snapshotSummary;
  userSnapshotSummaryCopy = userSnapshotSummary;
  v28.receiver = self;
  v28.super_class = ICASDeviceSnapshotData;
  v19 = [(ICASDeviceSnapshotData *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_userStartMonth, month);
    objc_storeStrong(&v20->_userStartYear, year);
    objc_storeStrong(&v20->_saltVersion, version);
    objc_storeStrong(&v20->_accountTypeSummary, summary);
    objc_storeStrong(&v20->_collabFoldersSummary, foldersSummary);
    objc_storeStrong(&v20->_totalCountOfPinnedNotes, notes);
    objc_storeStrong(&v20->_deviceSnapshotSummary, snapshotSummary);
    objc_storeStrong(&v20->_userSnapshotSummary, userSnapshotSummary);
  }

  return v20;
}

- (id)toDict
{
  v31[8] = *MEMORY[0x277D85DE8];
  v30[0] = @"userStartMonth";
  userStartMonth = [(ICASDeviceSnapshotData *)self userStartMonth];
  if (userStartMonth)
  {
    userStartMonth2 = [(ICASDeviceSnapshotData *)self userStartMonth];
  }

  else
  {
    userStartMonth2 = objc_opt_new();
  }

  v28 = userStartMonth2;
  v31[0] = userStartMonth2;
  v30[1] = @"userStartYear";
  userStartYear = [(ICASDeviceSnapshotData *)self userStartYear];
  if (userStartYear)
  {
    userStartYear2 = [(ICASDeviceSnapshotData *)self userStartYear];
  }

  else
  {
    userStartYear2 = objc_opt_new();
  }

  v26 = userStartYear2;
  v31[1] = userStartYear2;
  v30[2] = @"saltVersion";
  saltVersion = [(ICASDeviceSnapshotData *)self saltVersion];
  if (saltVersion)
  {
    saltVersion2 = [(ICASDeviceSnapshotData *)self saltVersion];
  }

  else
  {
    saltVersion2 = objc_opt_new();
  }

  v24 = saltVersion2;
  v31[2] = saltVersion2;
  v30[3] = @"accountTypeSummary";
  accountTypeSummary = [(ICASDeviceSnapshotData *)self accountTypeSummary];
  if (accountTypeSummary)
  {
    accountTypeSummary2 = [(ICASDeviceSnapshotData *)self accountTypeSummary];
  }

  else
  {
    accountTypeSummary2 = objc_opt_new();
  }

  v7 = accountTypeSummary2;
  v31[3] = accountTypeSummary2;
  v30[4] = @"collabFoldersSummary";
  collabFoldersSummary = [(ICASDeviceSnapshotData *)self collabFoldersSummary];
  if (collabFoldersSummary)
  {
    collabFoldersSummary2 = [(ICASDeviceSnapshotData *)self collabFoldersSummary];
  }

  else
  {
    collabFoldersSummary2 = objc_opt_new();
  }

  v10 = collabFoldersSummary2;
  v31[4] = collabFoldersSummary2;
  v30[5] = @"totalCountOfPinnedNotes";
  totalCountOfPinnedNotes = [(ICASDeviceSnapshotData *)self totalCountOfPinnedNotes];
  if (totalCountOfPinnedNotes)
  {
    totalCountOfPinnedNotes2 = [(ICASDeviceSnapshotData *)self totalCountOfPinnedNotes];
  }

  else
  {
    totalCountOfPinnedNotes2 = objc_opt_new();
  }

  v13 = totalCountOfPinnedNotes2;
  v31[5] = totalCountOfPinnedNotes2;
  v30[6] = @"deviceSnapshotSummary";
  deviceSnapshotSummary = [(ICASDeviceSnapshotData *)self deviceSnapshotSummary];
  if (deviceSnapshotSummary)
  {
    deviceSnapshotSummary2 = [(ICASDeviceSnapshotData *)self deviceSnapshotSummary];
  }

  else
  {
    deviceSnapshotSummary2 = objc_opt_new();
  }

  v16 = deviceSnapshotSummary2;
  v31[6] = deviceSnapshotSummary2;
  v30[7] = @"userSnapshotSummary";
  userSnapshotSummary = [(ICASDeviceSnapshotData *)self userSnapshotSummary];
  if (userSnapshotSummary)
  {
    userSnapshotSummary2 = [(ICASDeviceSnapshotData *)self userSnapshotSummary];
  }

  else
  {
    userSnapshotSummary2 = objc_opt_new();
  }

  v19 = userSnapshotSummary2;
  v31[7] = userSnapshotSummary2;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:8];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end