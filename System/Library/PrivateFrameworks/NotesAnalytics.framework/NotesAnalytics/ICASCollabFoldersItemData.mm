@interface ICASCollabFoldersItemData
- (ICASCollabFoldersItemData)initWithTotalFoldersCollabRootReadOnlyCount:(id)a3 totalFoldersCollabSubfolderReadOnlyCount:(id)a4 totalFoldersCollabRootReadWriteJoinedCount:(id)a5 totalFoldersCollabSubfolderReadWriteJoinedCount:(id)a6 totalFoldersNotCollabCount:(id)a7 totalFoldersCollabRootOwnedCount:(id)a8 totalFoldersCollabSubfolderOwnedCount:(id)a9;
- (id)toDict;
@end

@implementation ICASCollabFoldersItemData

- (ICASCollabFoldersItemData)initWithTotalFoldersCollabRootReadOnlyCount:(id)a3 totalFoldersCollabSubfolderReadOnlyCount:(id)a4 totalFoldersCollabRootReadWriteJoinedCount:(id)a5 totalFoldersCollabSubfolderReadWriteJoinedCount:(id)a6 totalFoldersNotCollabCount:(id)a7 totalFoldersCollabRootOwnedCount:(id)a8 totalFoldersCollabSubfolderOwnedCount:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = ICASCollabFoldersItemData;
  v18 = [(ICASCollabFoldersItemData *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_totalFoldersCollabRootReadOnlyCount, a3);
    objc_storeStrong(&v19->_totalFoldersCollabSubfolderReadOnlyCount, a4);
    objc_storeStrong(&v19->_totalFoldersCollabRootReadWriteJoinedCount, a5);
    objc_storeStrong(&v19->_totalFoldersCollabSubfolderReadWriteJoinedCount, a6);
    objc_storeStrong(&v19->_totalFoldersNotCollabCount, a7);
    objc_storeStrong(&v19->_totalFoldersCollabRootOwnedCount, a8);
    objc_storeStrong(&v19->_totalFoldersCollabSubfolderOwnedCount, a9);
  }

  return v19;
}

- (id)toDict
{
  v28[7] = *MEMORY[0x277D85DE8];
  v27[0] = @"totalFoldersCollabRootReadOnlyCount";
  v26 = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootReadOnlyCount];
  if (v26)
  {
    v3 = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootReadOnlyCount];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v25 = v3;
  v28[0] = v3;
  v27[1] = @"totalFoldersCollabSubfolderReadOnlyCount";
  v24 = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderReadOnlyCount];
  if (v24)
  {
    v4 = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderReadOnlyCount];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v23 = v4;
  v28[1] = v4;
  v27[2] = @"totalFoldersCollabRootReadWriteJoinedCount";
  v22 = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootReadWriteJoinedCount];
  if (v22)
  {
    v5 = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootReadWriteJoinedCount];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  v28[2] = v5;
  v27[3] = @"totalFoldersCollabSubfolderReadWriteJoinedCount";
  v7 = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderReadWriteJoinedCount];
  if (v7)
  {
    v8 = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderReadWriteJoinedCount];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v28[3] = v8;
  v27[4] = @"totalFoldersNotCollabCount";
  v10 = [(ICASCollabFoldersItemData *)self totalFoldersNotCollabCount];
  if (v10)
  {
    v11 = [(ICASCollabFoldersItemData *)self totalFoldersNotCollabCount];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  v28[4] = v11;
  v27[5] = @"totalFoldersCollabRootOwnedCount";
  v13 = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootOwnedCount];
  if (v13)
  {
    v14 = [(ICASCollabFoldersItemData *)self totalFoldersCollabRootOwnedCount];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;
  v28[5] = v14;
  v27[6] = @"totalFoldersCollabSubfolderOwnedCount";
  v16 = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderOwnedCount];
  if (v16)
  {
    v17 = [(ICASCollabFoldersItemData *)self totalFoldersCollabSubfolderOwnedCount];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = v17;
  v28[6] = v17;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end