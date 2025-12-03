@interface ICASFolderSnapshotData
- (ICASFolderSnapshotData)initWithFolderSnapshotSummary:(id)summary;
- (id)toDict;
@end

@implementation ICASFolderSnapshotData

- (ICASFolderSnapshotData)initWithFolderSnapshotSummary:(id)summary
{
  summaryCopy = summary;
  v9.receiver = self;
  v9.super_class = ICASFolderSnapshotData;
  v6 = [(ICASFolderSnapshotData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_folderSnapshotSummary, summary);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"folderSnapshotSummary";
  folderSnapshotSummary = [(ICASFolderSnapshotData *)self folderSnapshotSummary];
  if (folderSnapshotSummary)
  {
    folderSnapshotSummary2 = [(ICASFolderSnapshotData *)self folderSnapshotSummary];
  }

  else
  {
    folderSnapshotSummary2 = objc_opt_new();
  }

  v5 = folderSnapshotSummary2;
  v10[0] = folderSnapshotSummary2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end