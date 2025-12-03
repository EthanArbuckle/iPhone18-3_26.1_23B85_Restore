@interface ICASFolderData
- (ICASFolderData)initWithFolderID:(id)d folderType:(id)type folderLabelType:(id)labelType subFolderLevel:(id)level collaborationStatus:(id)status collaborationType:(id)collaborationType;
- (id)toDict;
@end

@implementation ICASFolderData

- (ICASFolderData)initWithFolderID:(id)d folderType:(id)type folderLabelType:(id)labelType subFolderLevel:(id)level collaborationStatus:(id)status collaborationType:(id)collaborationType
{
  dCopy = d;
  typeCopy = type;
  labelTypeCopy = labelType;
  levelCopy = level;
  statusCopy = status;
  collaborationTypeCopy = collaborationType;
  v24.receiver = self;
  v24.super_class = ICASFolderData;
  v18 = [(ICASFolderData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_folderID, d);
    objc_storeStrong(&v19->_folderType, type);
    objc_storeStrong(&v19->_folderLabelType, labelType);
    objc_storeStrong(&v19->_subFolderLevel, level);
    objc_storeStrong(&v19->_collaborationStatus, status);
    objc_storeStrong(&v19->_collaborationType, collaborationType);
  }

  return v19;
}

- (id)toDict
{
  v26[6] = *MEMORY[0x277D85DE8];
  v25[0] = @"folderID";
  folderID = [(ICASFolderData *)self folderID];
  if (folderID)
  {
    folderID2 = [(ICASFolderData *)self folderID];
  }

  else
  {
    folderID2 = objc_opt_new();
  }

  v23 = folderID2;
  v26[0] = folderID2;
  v25[1] = @"folderType";
  folderType = [(ICASFolderData *)self folderType];
  if (folderType)
  {
    folderType2 = [(ICASFolderData *)self folderType];
  }

  else
  {
    folderType2 = objc_opt_new();
  }

  v5 = folderType2;
  v26[1] = folderType2;
  v25[2] = @"folderLabelType";
  folderLabelType = [(ICASFolderData *)self folderLabelType];
  if (folderLabelType)
  {
    folderLabelType2 = [(ICASFolderData *)self folderLabelType];
  }

  else
  {
    folderLabelType2 = objc_opt_new();
  }

  v8 = folderLabelType2;
  v26[2] = folderLabelType2;
  v25[3] = @"subFolderLevel";
  subFolderLevel = [(ICASFolderData *)self subFolderLevel];
  if (subFolderLevel)
  {
    subFolderLevel2 = [(ICASFolderData *)self subFolderLevel];
  }

  else
  {
    subFolderLevel2 = objc_opt_new();
  }

  v11 = subFolderLevel2;
  v26[3] = subFolderLevel2;
  v25[4] = @"collaborationStatus";
  collaborationStatus = [(ICASFolderData *)self collaborationStatus];
  if (collaborationStatus)
  {
    collaborationStatus2 = [(ICASFolderData *)self collaborationStatus];
  }

  else
  {
    collaborationStatus2 = objc_opt_new();
  }

  v14 = collaborationStatus2;
  v26[4] = collaborationStatus2;
  v25[5] = @"collaborationType";
  collaborationType = [(ICASFolderData *)self collaborationType];
  if (collaborationType)
  {
    collaborationType2 = [(ICASFolderData *)self collaborationType];
  }

  else
  {
    collaborationType2 = objc_opt_new();
  }

  v17 = collaborationType2;
  v26[5] = collaborationType2;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end