@interface ICASCollabNotesItemData
- (ICASCollabNotesItemData)initWithTotalNotesCollabRootReadOnlyCount:(id)a3 totalNotesCollabThruFolderReadOnlyCount:(id)a4 totalNotesCollabRootReadWriteJoinedCount:(id)a5 totalNotesCollabThruFolderReadWriteJoinedCount:(id)a6 totalNotesNotCollabCount:(id)a7 totalNotesCollabRootOwnedCount:(id)a8 totalNotesCollabThruFolderOwnedCount:(id)a9;
- (id)toDict;
@end

@implementation ICASCollabNotesItemData

- (ICASCollabNotesItemData)initWithTotalNotesCollabRootReadOnlyCount:(id)a3 totalNotesCollabThruFolderReadOnlyCount:(id)a4 totalNotesCollabRootReadWriteJoinedCount:(id)a5 totalNotesCollabThruFolderReadWriteJoinedCount:(id)a6 totalNotesNotCollabCount:(id)a7 totalNotesCollabRootOwnedCount:(id)a8 totalNotesCollabThruFolderOwnedCount:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = ICASCollabNotesItemData;
  v18 = [(ICASCollabNotesItemData *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_totalNotesCollabRootReadOnlyCount, a3);
    objc_storeStrong(&v19->_totalNotesCollabThruFolderReadOnlyCount, a4);
    objc_storeStrong(&v19->_totalNotesCollabRootReadWriteJoinedCount, a5);
    objc_storeStrong(&v19->_totalNotesCollabThruFolderReadWriteJoinedCount, a6);
    objc_storeStrong(&v19->_totalNotesNotCollabCount, a7);
    objc_storeStrong(&v19->_totalNotesCollabRootOwnedCount, a8);
    objc_storeStrong(&v19->_totalNotesCollabThruFolderOwnedCount, a9);
  }

  return v19;
}

- (id)toDict
{
  v28[7] = *MEMORY[0x277D85DE8];
  v27[0] = @"totalNotesCollabRootReadOnlyCount";
  v26 = [(ICASCollabNotesItemData *)self totalNotesCollabRootReadOnlyCount];
  if (v26)
  {
    v3 = [(ICASCollabNotesItemData *)self totalNotesCollabRootReadOnlyCount];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v25 = v3;
  v28[0] = v3;
  v27[1] = @"totalNotesCollabThruFolderReadOnlyCount";
  v24 = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderReadOnlyCount];
  if (v24)
  {
    v4 = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderReadOnlyCount];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v23 = v4;
  v28[1] = v4;
  v27[2] = @"totalNotesCollabRootReadWriteJoinedCount";
  v22 = [(ICASCollabNotesItemData *)self totalNotesCollabRootReadWriteJoinedCount];
  if (v22)
  {
    v5 = [(ICASCollabNotesItemData *)self totalNotesCollabRootReadWriteJoinedCount];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  v28[2] = v5;
  v27[3] = @"totalNotesCollabThruFolderReadWriteJoinedCount";
  v7 = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderReadWriteJoinedCount];
  if (v7)
  {
    v8 = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderReadWriteJoinedCount];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v28[3] = v8;
  v27[4] = @"totalNotesNotCollabCount";
  v10 = [(ICASCollabNotesItemData *)self totalNotesNotCollabCount];
  if (v10)
  {
    v11 = [(ICASCollabNotesItemData *)self totalNotesNotCollabCount];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  v28[4] = v11;
  v27[5] = @"totalNotesCollabRootOwnedCount";
  v13 = [(ICASCollabNotesItemData *)self totalNotesCollabRootOwnedCount];
  if (v13)
  {
    v14 = [(ICASCollabNotesItemData *)self totalNotesCollabRootOwnedCount];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;
  v28[5] = v14;
  v27[6] = @"totalNotesCollabThruFolderOwnedCount";
  v16 = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderOwnedCount];
  if (v16)
  {
    v17 = [(ICASCollabNotesItemData *)self totalNotesCollabThruFolderOwnedCount];
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