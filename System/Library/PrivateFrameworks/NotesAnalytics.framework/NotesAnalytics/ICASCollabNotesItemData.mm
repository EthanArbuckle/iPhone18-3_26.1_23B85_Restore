@interface ICASCollabNotesItemData
- (ICASCollabNotesItemData)initWithTotalNotesCollabRootReadOnlyCount:(id)count totalNotesCollabThruFolderReadOnlyCount:(id)onlyCount totalNotesCollabRootReadWriteJoinedCount:(id)joinedCount totalNotesCollabThruFolderReadWriteJoinedCount:(id)writeJoinedCount totalNotesNotCollabCount:(id)collabCount totalNotesCollabRootOwnedCount:(id)ownedCount totalNotesCollabThruFolderOwnedCount:(id)folderOwnedCount;
- (id)toDict;
@end

@implementation ICASCollabNotesItemData

- (ICASCollabNotesItemData)initWithTotalNotesCollabRootReadOnlyCount:(id)count totalNotesCollabThruFolderReadOnlyCount:(id)onlyCount totalNotesCollabRootReadWriteJoinedCount:(id)joinedCount totalNotesCollabThruFolderReadWriteJoinedCount:(id)writeJoinedCount totalNotesNotCollabCount:(id)collabCount totalNotesCollabRootOwnedCount:(id)ownedCount totalNotesCollabThruFolderOwnedCount:(id)folderOwnedCount
{
  countCopy = count;
  onlyCountCopy = onlyCount;
  joinedCountCopy = joinedCount;
  writeJoinedCountCopy = writeJoinedCount;
  collabCountCopy = collabCount;
  ownedCountCopy = ownedCount;
  folderOwnedCountCopy = folderOwnedCount;
  v26.receiver = self;
  v26.super_class = ICASCollabNotesItemData;
  v18 = [(ICASCollabNotesItemData *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_totalNotesCollabRootReadOnlyCount, count);
    objc_storeStrong(&v19->_totalNotesCollabThruFolderReadOnlyCount, onlyCount);
    objc_storeStrong(&v19->_totalNotesCollabRootReadWriteJoinedCount, joinedCount);
    objc_storeStrong(&v19->_totalNotesCollabThruFolderReadWriteJoinedCount, writeJoinedCount);
    objc_storeStrong(&v19->_totalNotesNotCollabCount, collabCount);
    objc_storeStrong(&v19->_totalNotesCollabRootOwnedCount, ownedCount);
    objc_storeStrong(&v19->_totalNotesCollabThruFolderOwnedCount, folderOwnedCount);
  }

  return v19;
}

- (id)toDict
{
  v28[7] = *MEMORY[0x277D85DE8];
  v27[0] = @"totalNotesCollabRootReadOnlyCount";
  totalNotesCollabRootReadOnlyCount = [(ICASCollabNotesItemData *)self totalNotesCollabRootReadOnlyCount];
  if (totalNotesCollabRootReadOnlyCount)
  {
    totalNotesCollabRootReadOnlyCount2 = [(ICASCollabNotesItemData *)self totalNotesCollabRootReadOnlyCount];
  }

  else
  {
    totalNotesCollabRootReadOnlyCount2 = objc_opt_new();
  }

  v25 = totalNotesCollabRootReadOnlyCount2;
  v28[0] = totalNotesCollabRootReadOnlyCount2;
  v27[1] = @"totalNotesCollabThruFolderReadOnlyCount";
  totalNotesCollabThruFolderReadOnlyCount = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderReadOnlyCount];
  if (totalNotesCollabThruFolderReadOnlyCount)
  {
    totalNotesCollabThruFolderReadOnlyCount2 = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderReadOnlyCount];
  }

  else
  {
    totalNotesCollabThruFolderReadOnlyCount2 = objc_opt_new();
  }

  v23 = totalNotesCollabThruFolderReadOnlyCount2;
  v28[1] = totalNotesCollabThruFolderReadOnlyCount2;
  v27[2] = @"totalNotesCollabRootReadWriteJoinedCount";
  totalNotesCollabRootReadWriteJoinedCount = [(ICASCollabNotesItemData *)self totalNotesCollabRootReadWriteJoinedCount];
  if (totalNotesCollabRootReadWriteJoinedCount)
  {
    totalNotesCollabRootReadWriteJoinedCount2 = [(ICASCollabNotesItemData *)self totalNotesCollabRootReadWriteJoinedCount];
  }

  else
  {
    totalNotesCollabRootReadWriteJoinedCount2 = objc_opt_new();
  }

  v6 = totalNotesCollabRootReadWriteJoinedCount2;
  v28[2] = totalNotesCollabRootReadWriteJoinedCount2;
  v27[3] = @"totalNotesCollabThruFolderReadWriteJoinedCount";
  totalNotesCollabThruFolderReadWriteJoinedCount = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderReadWriteJoinedCount];
  if (totalNotesCollabThruFolderReadWriteJoinedCount)
  {
    totalNotesCollabThruFolderReadWriteJoinedCount2 = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderReadWriteJoinedCount];
  }

  else
  {
    totalNotesCollabThruFolderReadWriteJoinedCount2 = objc_opt_new();
  }

  v9 = totalNotesCollabThruFolderReadWriteJoinedCount2;
  v28[3] = totalNotesCollabThruFolderReadWriteJoinedCount2;
  v27[4] = @"totalNotesNotCollabCount";
  totalNotesNotCollabCount = [(ICASCollabNotesItemData *)self totalNotesNotCollabCount];
  if (totalNotesNotCollabCount)
  {
    totalNotesNotCollabCount2 = [(ICASCollabNotesItemData *)self totalNotesNotCollabCount];
  }

  else
  {
    totalNotesNotCollabCount2 = objc_opt_new();
  }

  v12 = totalNotesNotCollabCount2;
  v28[4] = totalNotesNotCollabCount2;
  v27[5] = @"totalNotesCollabRootOwnedCount";
  totalNotesCollabRootOwnedCount = [(ICASCollabNotesItemData *)self totalNotesCollabRootOwnedCount];
  if (totalNotesCollabRootOwnedCount)
  {
    totalNotesCollabRootOwnedCount2 = [(ICASCollabNotesItemData *)self totalNotesCollabRootOwnedCount];
  }

  else
  {
    totalNotesCollabRootOwnedCount2 = objc_opt_new();
  }

  v15 = totalNotesCollabRootOwnedCount2;
  v28[5] = totalNotesCollabRootOwnedCount2;
  v27[6] = @"totalNotesCollabThruFolderOwnedCount";
  totalNotesCollabThruFolderOwnedCount = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderOwnedCount];
  if (totalNotesCollabThruFolderOwnedCount)
  {
    totalNotesCollabThruFolderOwnedCount2 = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderOwnedCount];
  }

  else
  {
    totalNotesCollabThruFolderOwnedCount2 = objc_opt_new();
  }

  v18 = totalNotesCollabThruFolderOwnedCount2;
  v28[6] = totalNotesCollabThruFolderOwnedCount2;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end