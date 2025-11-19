@interface ICASFolderSnapshotItemData
- (ICASFolderSnapshotItemData)initWithFolderID:(id)a3 collaborationStatus:(id)a4 collaborationType:(id)a5 countOfInvitees:(id)a6 countOfAcceptances:(id)a7 directNoteCount:(id)a8 totalNoteCount:(id)a9 folderType:(id)a10 folderLabelType:(id)a11;
- (id)toDict;
@end

@implementation ICASFolderSnapshotItemData

- (ICASFolderSnapshotItemData)initWithFolderID:(id)a3 collaborationStatus:(id)a4 collaborationType:(id)a5 countOfInvitees:(id)a6 countOfAcceptances:(id)a7 directNoteCount:(id)a8 totalNoteCount:(id)a9 folderType:(id)a10 folderLabelType:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = ICASFolderSnapshotItemData;
  v19 = [(ICASFolderSnapshotItemData *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_folderID, a3);
    objc_storeStrong(&v20->_collaborationStatus, a4);
    objc_storeStrong(&v20->_collaborationType, a5);
    objc_storeStrong(&v20->_countOfInvitees, a6);
    objc_storeStrong(&v20->_countOfAcceptances, a7);
    objc_storeStrong(&v20->_directNoteCount, a8);
    objc_storeStrong(&v20->_totalNoteCount, a9);
    objc_storeStrong(&v20->_folderType, a10);
    objc_storeStrong(&v20->_folderLabelType, a11);
  }

  return v20;
}

- (id)toDict
{
  v34[9] = *MEMORY[0x277D85DE8];
  v33[0] = @"folderID";
  v32 = [(ICASFolderSnapshotItemData *)self folderID];
  if (v32)
  {
    v3 = [(ICASFolderSnapshotItemData *)self folderID];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v31 = v3;
  v34[0] = v3;
  v33[1] = @"collaborationStatus";
  v30 = [(ICASFolderSnapshotItemData *)self collaborationStatus];
  if (v30)
  {
    v4 = [(ICASFolderSnapshotItemData *)self collaborationStatus];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v29 = v4;
  v34[1] = v4;
  v33[2] = @"collaborationType";
  v28 = [(ICASFolderSnapshotItemData *)self collaborationType];
  if (v28)
  {
    v5 = [(ICASFolderSnapshotItemData *)self collaborationType];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v27 = v5;
  v34[2] = v5;
  v33[3] = @"countOfInvitees";
  v26 = [(ICASFolderSnapshotItemData *)self countOfInvitees];
  if (v26)
  {
    v6 = [(ICASFolderSnapshotItemData *)self countOfInvitees];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v25 = v6;
  v34[3] = v6;
  v33[4] = @"countOfAcceptances";
  v24 = [(ICASFolderSnapshotItemData *)self countOfAcceptances];
  if (v24)
  {
    v7 = [(ICASFolderSnapshotItemData *)self countOfAcceptances];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v34[4] = v7;
  v33[5] = @"directNoteCount";
  v9 = [(ICASFolderSnapshotItemData *)self directNoteCount];
  if (v9)
  {
    v10 = [(ICASFolderSnapshotItemData *)self directNoteCount];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v34[5] = v10;
  v33[6] = @"totalNoteCount";
  v12 = [(ICASFolderSnapshotItemData *)self totalNoteCount];
  if (v12)
  {
    v13 = [(ICASFolderSnapshotItemData *)self totalNoteCount];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v34[6] = v13;
  v33[7] = @"folderType";
  v15 = [(ICASFolderSnapshotItemData *)self folderType];
  if (v15)
  {
    v16 = [(ICASFolderSnapshotItemData *)self folderType];
  }

  else
  {
    v16 = objc_opt_new();
  }

  v17 = v16;
  v34[7] = v16;
  v33[8] = @"folderLabelType";
  v18 = [(ICASFolderSnapshotItemData *)self folderLabelType];
  if (v18)
  {
    v19 = [(ICASFolderSnapshotItemData *)self folderLabelType];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  v34[8] = v19;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:9];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end