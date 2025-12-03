@interface ICASFolderSnapshotItemData
- (ICASFolderSnapshotItemData)initWithFolderID:(id)d collaborationStatus:(id)status collaborationType:(id)type countOfInvitees:(id)invitees countOfAcceptances:(id)acceptances directNoteCount:(id)count totalNoteCount:(id)noteCount folderType:(id)self0 folderLabelType:(id)self1;
- (id)toDict;
@end

@implementation ICASFolderSnapshotItemData

- (ICASFolderSnapshotItemData)initWithFolderID:(id)d collaborationStatus:(id)status collaborationType:(id)type countOfInvitees:(id)invitees countOfAcceptances:(id)acceptances directNoteCount:(id)count totalNoteCount:(id)noteCount folderType:(id)self0 folderLabelType:(id)self1
{
  dCopy = d;
  statusCopy = status;
  typeCopy = type;
  inviteesCopy = invitees;
  acceptancesCopy = acceptances;
  countCopy = count;
  noteCountCopy = noteCount;
  folderTypeCopy = folderType;
  labelTypeCopy = labelType;
  v30.receiver = self;
  v30.super_class = ICASFolderSnapshotItemData;
  v19 = [(ICASFolderSnapshotItemData *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_folderID, d);
    objc_storeStrong(&v20->_collaborationStatus, status);
    objc_storeStrong(&v20->_collaborationType, type);
    objc_storeStrong(&v20->_countOfInvitees, invitees);
    objc_storeStrong(&v20->_countOfAcceptances, acceptances);
    objc_storeStrong(&v20->_directNoteCount, count);
    objc_storeStrong(&v20->_totalNoteCount, noteCount);
    objc_storeStrong(&v20->_folderType, folderType);
    objc_storeStrong(&v20->_folderLabelType, labelType);
  }

  return v20;
}

- (id)toDict
{
  v34[9] = *MEMORY[0x277D85DE8];
  v33[0] = @"folderID";
  folderID = [(ICASFolderSnapshotItemData *)self folderID];
  if (folderID)
  {
    folderID2 = [(ICASFolderSnapshotItemData *)self folderID];
  }

  else
  {
    folderID2 = objc_opt_new();
  }

  v31 = folderID2;
  v34[0] = folderID2;
  v33[1] = @"collaborationStatus";
  collaborationStatus = [(ICASFolderSnapshotItemData *)self collaborationStatus];
  if (collaborationStatus)
  {
    collaborationStatus2 = [(ICASFolderSnapshotItemData *)self collaborationStatus];
  }

  else
  {
    collaborationStatus2 = objc_opt_new();
  }

  v29 = collaborationStatus2;
  v34[1] = collaborationStatus2;
  v33[2] = @"collaborationType";
  collaborationType = [(ICASFolderSnapshotItemData *)self collaborationType];
  if (collaborationType)
  {
    collaborationType2 = [(ICASFolderSnapshotItemData *)self collaborationType];
  }

  else
  {
    collaborationType2 = objc_opt_new();
  }

  v27 = collaborationType2;
  v34[2] = collaborationType2;
  v33[3] = @"countOfInvitees";
  countOfInvitees = [(ICASFolderSnapshotItemData *)self countOfInvitees];
  if (countOfInvitees)
  {
    countOfInvitees2 = [(ICASFolderSnapshotItemData *)self countOfInvitees];
  }

  else
  {
    countOfInvitees2 = objc_opt_new();
  }

  v25 = countOfInvitees2;
  v34[3] = countOfInvitees2;
  v33[4] = @"countOfAcceptances";
  countOfAcceptances = [(ICASFolderSnapshotItemData *)self countOfAcceptances];
  if (countOfAcceptances)
  {
    countOfAcceptances2 = [(ICASFolderSnapshotItemData *)self countOfAcceptances];
  }

  else
  {
    countOfAcceptances2 = objc_opt_new();
  }

  v8 = countOfAcceptances2;
  v34[4] = countOfAcceptances2;
  v33[5] = @"directNoteCount";
  directNoteCount = [(ICASFolderSnapshotItemData *)self directNoteCount];
  if (directNoteCount)
  {
    directNoteCount2 = [(ICASFolderSnapshotItemData *)self directNoteCount];
  }

  else
  {
    directNoteCount2 = objc_opt_new();
  }

  v11 = directNoteCount2;
  v34[5] = directNoteCount2;
  v33[6] = @"totalNoteCount";
  totalNoteCount = [(ICASFolderSnapshotItemData *)self totalNoteCount];
  if (totalNoteCount)
  {
    totalNoteCount2 = [(ICASFolderSnapshotItemData *)self totalNoteCount];
  }

  else
  {
    totalNoteCount2 = objc_opt_new();
  }

  v14 = totalNoteCount2;
  v34[6] = totalNoteCount2;
  v33[7] = @"folderType";
  folderType = [(ICASFolderSnapshotItemData *)self folderType];
  if (folderType)
  {
    folderType2 = [(ICASFolderSnapshotItemData *)self folderType];
  }

  else
  {
    folderType2 = objc_opt_new();
  }

  v17 = folderType2;
  v34[7] = folderType2;
  v33[8] = @"folderLabelType";
  folderLabelType = [(ICASFolderSnapshotItemData *)self folderLabelType];
  if (folderLabelType)
  {
    folderLabelType2 = [(ICASFolderSnapshotItemData *)self folderLabelType];
  }

  else
  {
    folderLabelType2 = objc_opt_new();
  }

  v20 = folderLabelType2;
  v34[8] = folderLabelType2;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:9];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end