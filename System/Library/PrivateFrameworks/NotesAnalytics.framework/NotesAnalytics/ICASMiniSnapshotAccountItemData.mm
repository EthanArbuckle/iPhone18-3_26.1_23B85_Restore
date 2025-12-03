@interface ICASMiniSnapshotAccountItemData
- (ICASMiniSnapshotAccountItemData)initWithCountofNotes:(id)notes counfOfFolders:(id)folders countOfAttachments:(id)attachments privateAccountID:(id)d;
- (id)toDict;
@end

@implementation ICASMiniSnapshotAccountItemData

- (ICASMiniSnapshotAccountItemData)initWithCountofNotes:(id)notes counfOfFolders:(id)folders countOfAttachments:(id)attachments privateAccountID:(id)d
{
  notesCopy = notes;
  foldersCopy = folders;
  attachmentsCopy = attachments;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = ICASMiniSnapshotAccountItemData;
  v15 = [(ICASMiniSnapshotAccountItemData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_countofNotes, notes);
    objc_storeStrong(&v16->_counfOfFolders, folders);
    objc_storeStrong(&v16->_countOfAttachments, attachments);
    objc_storeStrong(&v16->_privateAccountID, d);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"countofNotes";
  countofNotes = [(ICASMiniSnapshotAccountItemData *)self countofNotes];
  if (countofNotes)
  {
    countofNotes2 = [(ICASMiniSnapshotAccountItemData *)self countofNotes];
  }

  else
  {
    countofNotes2 = objc_opt_new();
  }

  v5 = countofNotes2;
  v19[0] = countofNotes2;
  v18[1] = @"counfOfFolders";
  counfOfFolders = [(ICASMiniSnapshotAccountItemData *)self counfOfFolders];
  if (counfOfFolders)
  {
    counfOfFolders2 = [(ICASMiniSnapshotAccountItemData *)self counfOfFolders];
  }

  else
  {
    counfOfFolders2 = objc_opt_new();
  }

  v8 = counfOfFolders2;
  v19[1] = counfOfFolders2;
  v18[2] = @"countOfAttachments";
  countOfAttachments = [(ICASMiniSnapshotAccountItemData *)self countOfAttachments];
  if (countOfAttachments)
  {
    countOfAttachments2 = [(ICASMiniSnapshotAccountItemData *)self countOfAttachments];
  }

  else
  {
    countOfAttachments2 = objc_opt_new();
  }

  v11 = countOfAttachments2;
  v19[2] = countOfAttachments2;
  v18[3] = @"privateAccountID";
  privateAccountID = [(ICASMiniSnapshotAccountItemData *)self privateAccountID];
  if (privateAccountID)
  {
    privateAccountID2 = [(ICASMiniSnapshotAccountItemData *)self privateAccountID];
  }

  else
  {
    privateAccountID2 = objc_opt_new();
  }

  v14 = privateAccountID2;
  v19[3] = privateAccountID2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end