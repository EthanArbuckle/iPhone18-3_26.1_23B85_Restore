@interface ICASMiniSnapshotAccountItemData
- (ICASMiniSnapshotAccountItemData)initWithCountofNotes:(id)a3 counfOfFolders:(id)a4 countOfAttachments:(id)a5 privateAccountID:(id)a6;
- (id)toDict;
@end

@implementation ICASMiniSnapshotAccountItemData

- (ICASMiniSnapshotAccountItemData)initWithCountofNotes:(id)a3 counfOfFolders:(id)a4 countOfAttachments:(id)a5 privateAccountID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICASMiniSnapshotAccountItemData;
  v15 = [(ICASMiniSnapshotAccountItemData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_countofNotes, a3);
    objc_storeStrong(&v16->_counfOfFolders, a4);
    objc_storeStrong(&v16->_countOfAttachments, a5);
    objc_storeStrong(&v16->_privateAccountID, a6);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"countofNotes";
  v3 = [(ICASMiniSnapshotAccountItemData *)self countofNotes];
  if (v3)
  {
    v4 = [(ICASMiniSnapshotAccountItemData *)self countofNotes];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v19[0] = v4;
  v18[1] = @"counfOfFolders";
  v6 = [(ICASMiniSnapshotAccountItemData *)self counfOfFolders];
  if (v6)
  {
    v7 = [(ICASMiniSnapshotAccountItemData *)self counfOfFolders];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v19[1] = v7;
  v18[2] = @"countOfAttachments";
  v9 = [(ICASMiniSnapshotAccountItemData *)self countOfAttachments];
  if (v9)
  {
    v10 = [(ICASMiniSnapshotAccountItemData *)self countOfAttachments];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v19[2] = v10;
  v18[3] = @"privateAccountID";
  v12 = [(ICASMiniSnapshotAccountItemData *)self privateAccountID];
  if (v12)
  {
    v13 = [(ICASMiniSnapshotAccountItemData *)self privateAccountID];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v19[3] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end