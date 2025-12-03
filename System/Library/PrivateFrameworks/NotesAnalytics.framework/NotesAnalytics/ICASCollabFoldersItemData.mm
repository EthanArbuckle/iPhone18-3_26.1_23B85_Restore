@interface ICASCollabFoldersItemData
- (ICASCollabFoldersItemData)initWithTotalFoldersCollabRootReadOnlyCount:(id)count totalFoldersCollabSubfolderReadOnlyCount:(id)onlyCount totalFoldersCollabRootReadWriteJoinedCount:(id)joinedCount totalFoldersCollabSubfolderReadWriteJoinedCount:(id)writeJoinedCount totalFoldersNotCollabCount:(id)collabCount totalFoldersCollabRootOwnedCount:(id)ownedCount totalFoldersCollabSubfolderOwnedCount:(id)subfolderOwnedCount;
- (id)toDict;
@end

@implementation ICASCollabFoldersItemData

- (ICASCollabFoldersItemData)initWithTotalFoldersCollabRootReadOnlyCount:(id)count totalFoldersCollabSubfolderReadOnlyCount:(id)onlyCount totalFoldersCollabRootReadWriteJoinedCount:(id)joinedCount totalFoldersCollabSubfolderReadWriteJoinedCount:(id)writeJoinedCount totalFoldersNotCollabCount:(id)collabCount totalFoldersCollabRootOwnedCount:(id)ownedCount totalFoldersCollabSubfolderOwnedCount:(id)subfolderOwnedCount
{
  countCopy = count;
  onlyCountCopy = onlyCount;
  joinedCountCopy = joinedCount;
  writeJoinedCountCopy = writeJoinedCount;
  collabCountCopy = collabCount;
  ownedCountCopy = ownedCount;
  subfolderOwnedCountCopy = subfolderOwnedCount;
  v26.receiver = self;
  v26.super_class = ICASCollabFoldersItemData;
  v18 = [(ICASCollabFoldersItemData *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_totalFoldersCollabRootReadOnlyCount, count);
    objc_storeStrong(&v19->_totalFoldersCollabSubfolderReadOnlyCount, onlyCount);
    objc_storeStrong(&v19->_totalFoldersCollabRootReadWriteJoinedCount, joinedCount);
    objc_storeStrong(&v19->_totalFoldersCollabSubfolderReadWriteJoinedCount, writeJoinedCount);
    objc_storeStrong(&v19->_totalFoldersNotCollabCount, collabCount);
    objc_storeStrong(&v19->_totalFoldersCollabRootOwnedCount, ownedCount);
    objc_storeStrong(&v19->_totalFoldersCollabSubfolderOwnedCount, subfolderOwnedCount);
  }

  return v19;
}

- (id)toDict
{
  v28[7] = *MEMORY[0x277D85DE8];
  v27[0] = @"totalFoldersCollabRootReadOnlyCount";
  totalFoldersCollabRootReadOnlyCount = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootReadOnlyCount];
  if (totalFoldersCollabRootReadOnlyCount)
  {
    totalFoldersCollabRootReadOnlyCount2 = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootReadOnlyCount];
  }

  else
  {
    totalFoldersCollabRootReadOnlyCount2 = objc_opt_new();
  }

  v25 = totalFoldersCollabRootReadOnlyCount2;
  v28[0] = totalFoldersCollabRootReadOnlyCount2;
  v27[1] = @"totalFoldersCollabSubfolderReadOnlyCount";
  totalFoldersCollabSubfolderReadOnlyCount = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderReadOnlyCount];
  if (totalFoldersCollabSubfolderReadOnlyCount)
  {
    totalFoldersCollabSubfolderReadOnlyCount2 = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderReadOnlyCount];
  }

  else
  {
    totalFoldersCollabSubfolderReadOnlyCount2 = objc_opt_new();
  }

  v23 = totalFoldersCollabSubfolderReadOnlyCount2;
  v28[1] = totalFoldersCollabSubfolderReadOnlyCount2;
  v27[2] = @"totalFoldersCollabRootReadWriteJoinedCount";
  totalFoldersCollabRootReadWriteJoinedCount = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootReadWriteJoinedCount];
  if (totalFoldersCollabRootReadWriteJoinedCount)
  {
    totalFoldersCollabRootReadWriteJoinedCount2 = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootReadWriteJoinedCount];
  }

  else
  {
    totalFoldersCollabRootReadWriteJoinedCount2 = objc_opt_new();
  }

  v6 = totalFoldersCollabRootReadWriteJoinedCount2;
  v28[2] = totalFoldersCollabRootReadWriteJoinedCount2;
  v27[3] = @"totalFoldersCollabSubfolderReadWriteJoinedCount";
  totalFoldersCollabSubfolderReadWriteJoinedCount = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderReadWriteJoinedCount];
  if (totalFoldersCollabSubfolderReadWriteJoinedCount)
  {
    totalFoldersCollabSubfolderReadWriteJoinedCount2 = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderReadWriteJoinedCount];
  }

  else
  {
    totalFoldersCollabSubfolderReadWriteJoinedCount2 = objc_opt_new();
  }

  v9 = totalFoldersCollabSubfolderReadWriteJoinedCount2;
  v28[3] = totalFoldersCollabSubfolderReadWriteJoinedCount2;
  v27[4] = @"totalFoldersNotCollabCount";
  totalFoldersNotCollabCount = [(ICASCollabFoldersItemData *)self totalFoldersNotCollabCount];
  if (totalFoldersNotCollabCount)
  {
    totalFoldersNotCollabCount2 = [(ICASCollabFoldersItemData *)self totalFoldersNotCollabCount];
  }

  else
  {
    totalFoldersNotCollabCount2 = objc_opt_new();
  }

  v12 = totalFoldersNotCollabCount2;
  v28[4] = totalFoldersNotCollabCount2;
  v27[5] = @"totalFoldersCollabRootOwnedCount";
  totalFoldersCollabRootOwnedCount = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootOwnedCount];
  if (totalFoldersCollabRootOwnedCount)
  {
    totalFoldersCollabRootOwnedCount2 = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootOwnedCount];
  }

  else
  {
    totalFoldersCollabRootOwnedCount2 = objc_opt_new();
  }

  v15 = totalFoldersCollabRootOwnedCount2;
  v28[5] = totalFoldersCollabRootOwnedCount2;
  v27[6] = @"totalFoldersCollabSubfolderOwnedCount";
  totalFoldersCollabSubfolderOwnedCount = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderOwnedCount];
  if (totalFoldersCollabSubfolderOwnedCount)
  {
    totalFoldersCollabSubfolderOwnedCount2 = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderOwnedCount];
  }

  else
  {
    totalFoldersCollabSubfolderOwnedCount2 = objc_opt_new();
  }

  v18 = totalFoldersCollabSubfolderOwnedCount2;
  v28[6] = totalFoldersCollabSubfolderOwnedCount2;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end